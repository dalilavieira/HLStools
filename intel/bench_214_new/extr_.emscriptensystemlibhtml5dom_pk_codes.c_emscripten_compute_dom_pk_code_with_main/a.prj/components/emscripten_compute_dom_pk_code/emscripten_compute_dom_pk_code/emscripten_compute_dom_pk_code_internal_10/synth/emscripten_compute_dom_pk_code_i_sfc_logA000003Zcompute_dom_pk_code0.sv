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

// SystemVerilog created from emscripten_compute_dom_pk_code_i_sfc_logA000003Zcompute_dom_pk_code0
// SystemVerilog created on Sun May 24 21:16:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_i_sfc_logA000003Zcompute_dom_pk_code0 (
    input wire [63:0] in_intel_reserved_ffwd_100_0,
    input wire [63:0] in_intel_reserved_ffwd_101_0,
    input wire [63:0] in_intel_reserved_ffwd_102_0,
    input wire [63:0] in_intel_reserved_ffwd_103_0,
    input wire [63:0] in_intel_reserved_ffwd_104_0,
    input wire [63:0] in_intel_reserved_ffwd_105_0,
    input wire [63:0] in_intel_reserved_ffwd_106_0,
    input wire [63:0] in_intel_reserved_ffwd_107_0,
    input wire [63:0] in_intel_reserved_ffwd_108_0,
    input wire [63:0] in_intel_reserved_ffwd_109_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_110_0,
    input wire [63:0] in_intel_reserved_ffwd_111_0,
    input wire [63:0] in_intel_reserved_ffwd_112_0,
    input wire [63:0] in_intel_reserved_ffwd_113_0,
    input wire [63:0] in_intel_reserved_ffwd_114_0,
    input wire [63:0] in_intel_reserved_ffwd_115_0,
    input wire [63:0] in_intel_reserved_ffwd_116_0,
    input wire [63:0] in_intel_reserved_ffwd_117_0,
    input wire [63:0] in_intel_reserved_ffwd_118_0,
    input wire [63:0] in_intel_reserved_ffwd_119_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_120_0,
    input wire [63:0] in_intel_reserved_ffwd_121_0,
    input wire [63:0] in_intel_reserved_ffwd_122_0,
    input wire [63:0] in_intel_reserved_ffwd_123_0,
    input wire [63:0] in_intel_reserved_ffwd_124_0,
    input wire [63:0] in_intel_reserved_ffwd_125_0,
    input wire [63:0] in_intel_reserved_ffwd_126_0,
    input wire [63:0] in_intel_reserved_ffwd_127_0,
    input wire [63:0] in_intel_reserved_ffwd_128_0,
    input wire [63:0] in_intel_reserved_ffwd_129_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_130_0,
    input wire [63:0] in_intel_reserved_ffwd_131_0,
    input wire [63:0] in_intel_reserved_ffwd_132_0,
    input wire [63:0] in_intel_reserved_ffwd_133_0,
    input wire [63:0] in_intel_reserved_ffwd_134_0,
    input wire [63:0] in_intel_reserved_ffwd_135_0,
    input wire [63:0] in_intel_reserved_ffwd_136_0,
    input wire [63:0] in_intel_reserved_ffwd_137_0,
    input wire [63:0] in_intel_reserved_ffwd_138_0,
    input wire [63:0] in_intel_reserved_ffwd_139_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [63:0] in_intel_reserved_ffwd_140_0,
    input wire [63:0] in_intel_reserved_ffwd_141_0,
    input wire [63:0] in_intel_reserved_ffwd_142_0,
    input wire [63:0] in_intel_reserved_ffwd_143_0,
    input wire [63:0] in_intel_reserved_ffwd_144_0,
    input wire [63:0] in_intel_reserved_ffwd_145_0,
    input wire [63:0] in_intel_reserved_ffwd_146_0,
    input wire [63:0] in_intel_reserved_ffwd_147_0,
    input wire [63:0] in_intel_reserved_ffwd_148_0,
    input wire [63:0] in_intel_reserved_ffwd_149_0,
    input wire [63:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_150_0,
    input wire [63:0] in_intel_reserved_ffwd_151_0,
    input wire [63:0] in_intel_reserved_ffwd_152_0,
    input wire [63:0] in_intel_reserved_ffwd_153_0,
    input wire [63:0] in_intel_reserved_ffwd_154_0,
    input wire [0:0] in_intel_reserved_ffwd_155_0,
    input wire [0:0] in_intel_reserved_ffwd_157_0,
    input wire [0:0] in_intel_reserved_ffwd_158_0,
    input wire [31:0] in_intel_reserved_ffwd_159_0,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_20_0,
    input wire [63:0] in_intel_reserved_ffwd_21_0,
    input wire [63:0] in_intel_reserved_ffwd_22_0,
    input wire [63:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_25_0,
    input wire [63:0] in_intel_reserved_ffwd_26_0,
    input wire [63:0] in_intel_reserved_ffwd_27_0,
    input wire [63:0] in_intel_reserved_ffwd_28_0,
    input wire [63:0] in_intel_reserved_ffwd_29_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_30_0,
    input wire [63:0] in_intel_reserved_ffwd_31_0,
    input wire [63:0] in_intel_reserved_ffwd_32_0,
    input wire [63:0] in_intel_reserved_ffwd_33_0,
    input wire [63:0] in_intel_reserved_ffwd_34_0,
    input wire [63:0] in_intel_reserved_ffwd_35_0,
    input wire [63:0] in_intel_reserved_ffwd_36_0,
    input wire [63:0] in_intel_reserved_ffwd_37_0,
    input wire [63:0] in_intel_reserved_ffwd_38_0,
    input wire [63:0] in_intel_reserved_ffwd_39_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_40_0,
    input wire [63:0] in_intel_reserved_ffwd_41_0,
    input wire [63:0] in_intel_reserved_ffwd_42_0,
    input wire [63:0] in_intel_reserved_ffwd_43_0,
    input wire [63:0] in_intel_reserved_ffwd_44_0,
    input wire [63:0] in_intel_reserved_ffwd_45_0,
    input wire [63:0] in_intel_reserved_ffwd_46_0,
    input wire [63:0] in_intel_reserved_ffwd_47_0,
    input wire [63:0] in_intel_reserved_ffwd_48_0,
    input wire [63:0] in_intel_reserved_ffwd_49_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_50_0,
    input wire [63:0] in_intel_reserved_ffwd_51_0,
    input wire [63:0] in_intel_reserved_ffwd_52_0,
    input wire [63:0] in_intel_reserved_ffwd_53_0,
    input wire [63:0] in_intel_reserved_ffwd_54_0,
    input wire [63:0] in_intel_reserved_ffwd_55_0,
    input wire [63:0] in_intel_reserved_ffwd_56_0,
    input wire [63:0] in_intel_reserved_ffwd_57_0,
    input wire [63:0] in_intel_reserved_ffwd_58_0,
    input wire [63:0] in_intel_reserved_ffwd_59_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_60_0,
    input wire [63:0] in_intel_reserved_ffwd_61_0,
    input wire [63:0] in_intel_reserved_ffwd_62_0,
    input wire [63:0] in_intel_reserved_ffwd_63_0,
    input wire [63:0] in_intel_reserved_ffwd_64_0,
    input wire [63:0] in_intel_reserved_ffwd_65_0,
    input wire [63:0] in_intel_reserved_ffwd_66_0,
    input wire [63:0] in_intel_reserved_ffwd_67_0,
    input wire [63:0] in_intel_reserved_ffwd_68_0,
    input wire [63:0] in_intel_reserved_ffwd_69_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_70_0,
    input wire [63:0] in_intel_reserved_ffwd_71_0,
    input wire [63:0] in_intel_reserved_ffwd_72_0,
    input wire [63:0] in_intel_reserved_ffwd_73_0,
    input wire [63:0] in_intel_reserved_ffwd_74_0,
    input wire [63:0] in_intel_reserved_ffwd_75_0,
    input wire [63:0] in_intel_reserved_ffwd_76_0,
    input wire [63:0] in_intel_reserved_ffwd_77_0,
    input wire [63:0] in_intel_reserved_ffwd_78_0,
    input wire [63:0] in_intel_reserved_ffwd_79_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_80_0,
    input wire [63:0] in_intel_reserved_ffwd_81_0,
    input wire [63:0] in_intel_reserved_ffwd_82_0,
    input wire [63:0] in_intel_reserved_ffwd_83_0,
    input wire [63:0] in_intel_reserved_ffwd_84_0,
    input wire [63:0] in_intel_reserved_ffwd_85_0,
    input wire [63:0] in_intel_reserved_ffwd_86_0,
    input wire [63:0] in_intel_reserved_ffwd_87_0,
    input wire [63:0] in_intel_reserved_ffwd_88_0,
    input wire [63:0] in_intel_reserved_ffwd_89_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_90_0,
    input wire [63:0] in_intel_reserved_ffwd_91_0,
    input wire [63:0] in_intel_reserved_ffwd_92_0,
    input wire [63:0] in_intel_reserved_ffwd_93_0,
    input wire [63:0] in_intel_reserved_ffwd_94_0,
    input wire [63:0] in_intel_reserved_ffwd_95_0,
    input wire [63:0] in_intel_reserved_ffwd_96_0,
    input wire [63:0] in_intel_reserved_ffwd_97_0,
    input wire [63:0] in_intel_reserved_ffwd_98_0,
    input wire [63:0] in_intel_reserved_ffwd_99_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi391_0_tpl,
    output wire [0:0] out_c0_exi391_1_tpl,
    output wire [31:0] out_c0_exi391_2_tpl,
    output wire [0:0] out_c0_exi391_3_tpl,
    output wire [0:0] out_c0_exi391_4_tpl,
    output wire [0:0] out_c0_exi391_5_tpl,
    output wire [63:0] out_c0_exi391_6_tpl,
    output wire [0:0] out_c0_exi391_7_tpl,
    output wire [63:0] out_c0_exi391_8_tpl,
    output wire [0:0] out_c0_exi391_9_tpl,
    output wire [63:0] out_c0_exi391_10_tpl,
    output wire [0:0] out_c0_exi391_11_tpl,
    output wire [63:0] out_c0_exi391_12_tpl,
    output wire [0:0] out_c0_exi391_13_tpl,
    output wire [0:0] out_c0_exi391_14_tpl,
    output wire [63:0] out_c0_exi391_15_tpl,
    output wire [0:0] out_c0_exi391_16_tpl,
    output wire [63:0] out_c0_exi391_17_tpl,
    output wire [0:0] out_c0_exi391_18_tpl,
    output wire [63:0] out_c0_exi391_19_tpl,
    output wire [0:0] out_c0_exi391_20_tpl,
    output wire [63:0] out_c0_exi391_21_tpl,
    output wire [0:0] out_c0_exi391_22_tpl,
    output wire [63:0] out_c0_exi391_23_tpl,
    output wire [0:0] out_c0_exi391_24_tpl,
    output wire [63:0] out_c0_exi391_25_tpl,
    output wire [0:0] out_c0_exi391_26_tpl,
    output wire [63:0] out_c0_exi391_27_tpl,
    output wire [0:0] out_c0_exi391_28_tpl,
    output wire [63:0] out_c0_exi391_29_tpl,
    output wire [0:0] out_c0_exi391_30_tpl,
    output wire [63:0] out_c0_exi391_31_tpl,
    output wire [0:0] out_c0_exi391_32_tpl,
    output wire [63:0] out_c0_exi391_33_tpl,
    output wire [0:0] out_c0_exi391_34_tpl,
    output wire [63:0] out_c0_exi391_35_tpl,
    output wire [0:0] out_c0_exi391_36_tpl,
    output wire [63:0] out_c0_exi391_37_tpl,
    output wire [0:0] out_c0_exi391_38_tpl,
    output wire [63:0] out_c0_exi391_39_tpl,
    output wire [0:0] out_c0_exi391_40_tpl,
    output wire [63:0] out_c0_exi391_41_tpl,
    output wire [0:0] out_c0_exi391_42_tpl,
    output wire [63:0] out_c0_exi391_43_tpl,
    output wire [0:0] out_c0_exi391_44_tpl,
    output wire [63:0] out_c0_exi391_45_tpl,
    output wire [0:0] out_c0_exi391_46_tpl,
    output wire [63:0] out_c0_exi391_47_tpl,
    output wire [0:0] out_c0_exi391_48_tpl,
    output wire [63:0] out_c0_exi391_49_tpl,
    output wire [0:0] out_c0_exi391_50_tpl,
    output wire [63:0] out_c0_exi391_51_tpl,
    output wire [0:0] out_c0_exi391_52_tpl,
    output wire [63:0] out_c0_exi391_53_tpl,
    output wire [0:0] out_c0_exi391_54_tpl,
    output wire [63:0] out_c0_exi391_55_tpl,
    output wire [0:0] out_c0_exi391_56_tpl,
    output wire [63:0] out_c0_exi391_57_tpl,
    output wire [0:0] out_c0_exi391_58_tpl,
    output wire [63:0] out_c0_exi391_59_tpl,
    output wire [0:0] out_c0_exi391_60_tpl,
    output wire [63:0] out_c0_exi391_61_tpl,
    output wire [0:0] out_c0_exi391_62_tpl,
    output wire [63:0] out_c0_exi391_63_tpl,
    output wire [0:0] out_c0_exi391_64_tpl,
    output wire [63:0] out_c0_exi391_65_tpl,
    output wire [0:0] out_c0_exi391_66_tpl,
    output wire [63:0] out_c0_exi391_67_tpl,
    output wire [0:0] out_c0_exi391_68_tpl,
    output wire [63:0] out_c0_exi391_69_tpl,
    output wire [0:0] out_c0_exi391_70_tpl,
    output wire [63:0] out_c0_exi391_71_tpl,
    output wire [0:0] out_c0_exi391_72_tpl,
    output wire [63:0] out_c0_exi391_73_tpl,
    output wire [0:0] out_c0_exi391_74_tpl,
    output wire [63:0] out_c0_exi391_75_tpl,
    output wire [0:0] out_c0_exi391_76_tpl,
    output wire [63:0] out_c0_exi391_77_tpl,
    output wire [0:0] out_c0_exi391_78_tpl,
    output wire [63:0] out_c0_exi391_79_tpl,
    output wire [0:0] out_c0_exi391_80_tpl,
    output wire [63:0] out_c0_exi391_81_tpl,
    output wire [0:0] out_c0_exi391_82_tpl,
    output wire [63:0] out_c0_exi391_83_tpl,
    output wire [0:0] out_c0_exi391_84_tpl,
    output wire [63:0] out_c0_exi391_85_tpl,
    output wire [0:0] out_c0_exi391_86_tpl,
    output wire [63:0] out_c0_exi391_87_tpl,
    output wire [0:0] out_c0_exi391_88_tpl,
    output wire [63:0] out_c0_exi391_89_tpl,
    output wire [0:0] out_c0_exi391_90_tpl,
    output wire [63:0] out_c0_exi391_91_tpl,
    output wire [0:0] out_c0_exi391_92_tpl,
    output wire [63:0] out_c0_exi391_93_tpl,
    output wire [0:0] out_c0_exi391_94_tpl,
    output wire [63:0] out_c0_exi391_95_tpl,
    output wire [0:0] out_c0_exi391_96_tpl,
    output wire [63:0] out_c0_exi391_97_tpl,
    output wire [0:0] out_c0_exi391_98_tpl,
    output wire [63:0] out_c0_exi391_99_tpl,
    output wire [0:0] out_c0_exi391_100_tpl,
    output wire [63:0] out_c0_exi391_101_tpl,
    output wire [0:0] out_c0_exi391_102_tpl,
    output wire [63:0] out_c0_exi391_103_tpl,
    output wire [0:0] out_c0_exi391_104_tpl,
    output wire [63:0] out_c0_exi391_105_tpl,
    output wire [0:0] out_c0_exi391_106_tpl,
    output wire [63:0] out_c0_exi391_107_tpl,
    output wire [0:0] out_c0_exi391_108_tpl,
    output wire [63:0] out_c0_exi391_109_tpl,
    output wire [0:0] out_c0_exi391_110_tpl,
    output wire [0:0] out_c0_exi391_111_tpl,
    output wire [63:0] out_c0_exi391_112_tpl,
    output wire [0:0] out_c0_exi391_113_tpl,
    output wire [0:0] out_c0_exi391_114_tpl,
    output wire [63:0] out_c0_exi391_115_tpl,
    output wire [0:0] out_c0_exi391_116_tpl,
    output wire [0:0] out_c0_exi391_117_tpl,
    output wire [63:0] out_c0_exi391_118_tpl,
    output wire [0:0] out_c0_exi391_119_tpl,
    output wire [0:0] out_c0_exi391_120_tpl,
    output wire [63:0] out_c0_exi391_121_tpl,
    output wire [0:0] out_c0_exi391_122_tpl,
    output wire [0:0] out_c0_exi391_123_tpl,
    output wire [63:0] out_c0_exi391_124_tpl,
    output wire [0:0] out_c0_exi391_125_tpl,
    output wire [0:0] out_c0_exi391_126_tpl,
    output wire [63:0] out_c0_exi391_127_tpl,
    output wire [0:0] out_c0_exi391_128_tpl,
    output wire [0:0] out_c0_exi391_129_tpl,
    output wire [63:0] out_c0_exi391_130_tpl,
    output wire [0:0] out_c0_exi391_131_tpl,
    output wire [0:0] out_c0_exi391_132_tpl,
    output wire [63:0] out_c0_exi391_133_tpl,
    output wire [0:0] out_c0_exi391_134_tpl,
    output wire [0:0] out_c0_exi391_135_tpl,
    output wire [63:0] out_c0_exi391_136_tpl,
    output wire [0:0] out_c0_exi391_137_tpl,
    output wire [0:0] out_c0_exi391_138_tpl,
    output wire [63:0] out_c0_exi391_139_tpl,
    output wire [0:0] out_c0_exi391_140_tpl,
    output wire [0:0] out_c0_exi391_141_tpl,
    output wire [63:0] out_c0_exi391_142_tpl,
    output wire [0:0] out_c0_exi391_143_tpl,
    output wire [0:0] out_c0_exi391_144_tpl,
    output wire [63:0] out_c0_exi391_145_tpl,
    output wire [0:0] out_c0_exi391_146_tpl,
    output wire [0:0] out_c0_exi391_147_tpl,
    output wire [63:0] out_c0_exi391_148_tpl,
    output wire [0:0] out_c0_exi391_149_tpl,
    output wire [0:0] out_c0_exi391_150_tpl,
    output wire [63:0] out_c0_exi391_151_tpl,
    output wire [0:0] out_c0_exi391_152_tpl,
    output wire [0:0] out_c0_exi391_153_tpl,
    output wire [63:0] out_c0_exi391_154_tpl,
    output wire [0:0] out_c0_exi391_155_tpl,
    output wire [0:0] out_c0_exi391_156_tpl,
    output wire [63:0] out_c0_exi391_157_tpl,
    output wire [0:0] out_c0_exi391_158_tpl,
    output wire [0:0] out_c0_exi391_159_tpl,
    output wire [63:0] out_c0_exi391_160_tpl,
    output wire [0:0] out_c0_exi391_161_tpl,
    output wire [63:0] out_c0_exi391_162_tpl,
    output wire [0:0] out_c0_exi391_163_tpl,
    output wire [63:0] out_c0_exi391_164_tpl,
    output wire [0:0] out_c0_exi391_165_tpl,
    output wire [63:0] out_c0_exi391_166_tpl,
    output wire [0:0] out_c0_exi391_167_tpl,
    output wire [0:0] out_c0_exi391_168_tpl,
    output wire [63:0] out_c0_exi391_169_tpl,
    output wire [0:0] out_c0_exi391_170_tpl,
    output wire [0:0] out_c0_exi391_171_tpl,
    output wire [63:0] out_c0_exi391_172_tpl,
    output wire [0:0] out_c0_exi391_173_tpl,
    output wire [0:0] out_c0_exi391_174_tpl,
    output wire [63:0] out_c0_exi391_175_tpl,
    output wire [0:0] out_c0_exi391_176_tpl,
    output wire [0:0] out_c0_exi391_177_tpl,
    output wire [63:0] out_c0_exi391_178_tpl,
    output wire [0:0] out_c0_exi391_179_tpl,
    output wire [0:0] out_c0_exi391_180_tpl,
    output wire [63:0] out_c0_exi391_181_tpl,
    output wire [0:0] out_c0_exi391_182_tpl,
    output wire [0:0] out_c0_exi391_183_tpl,
    output wire [63:0] out_c0_exi391_184_tpl,
    output wire [0:0] out_c0_exi391_185_tpl,
    output wire [0:0] out_c0_exi391_186_tpl,
    output wire [63:0] out_c0_exi391_187_tpl,
    output wire [0:0] out_c0_exi391_188_tpl,
    output wire [0:0] out_c0_exi391_189_tpl,
    output wire [63:0] out_c0_exi391_190_tpl,
    output wire [0:0] out_c0_exi391_191_tpl,
    output wire [0:0] out_c0_exi391_192_tpl,
    output wire [63:0] out_c0_exi391_193_tpl,
    output wire [0:0] out_c0_exi391_194_tpl,
    output wire [0:0] out_c0_exi391_195_tpl,
    output wire [63:0] out_c0_exi391_196_tpl,
    output wire [0:0] out_c0_exi391_197_tpl,
    output wire [0:0] out_c0_exi391_198_tpl,
    output wire [63:0] out_c0_exi391_199_tpl,
    output wire [0:0] out_c0_exi391_200_tpl,
    output wire [63:0] out_c0_exi391_201_tpl,
    output wire [0:0] out_c0_exi391_202_tpl,
    output wire [63:0] out_c0_exi391_203_tpl,
    output wire [0:0] out_c0_exi391_204_tpl,
    output wire [63:0] out_c0_exi391_205_tpl,
    output wire [0:0] out_c0_exi391_206_tpl,
    output wire [0:0] out_c0_exi391_207_tpl,
    output wire [63:0] out_c0_exi391_208_tpl,
    output wire [0:0] out_c0_exi391_209_tpl,
    output wire [0:0] out_c0_exi391_210_tpl,
    output wire [63:0] out_c0_exi391_211_tpl,
    output wire [0:0] out_c0_exi391_212_tpl,
    output wire [0:0] out_c0_exi391_213_tpl,
    output wire [63:0] out_c0_exi391_214_tpl,
    output wire [0:0] out_c0_exi391_215_tpl,
    output wire [0:0] out_c0_exi391_216_tpl,
    output wire [63:0] out_c0_exi391_217_tpl,
    output wire [0:0] out_c0_exi391_218_tpl,
    output wire [0:0] out_c0_exi391_219_tpl,
    output wire [63:0] out_c0_exi391_220_tpl,
    output wire [0:0] out_c0_exi391_221_tpl,
    output wire [0:0] out_c0_exi391_222_tpl,
    output wire [63:0] out_c0_exi391_223_tpl,
    output wire [0:0] out_c0_exi391_224_tpl,
    output wire [0:0] out_c0_exi391_225_tpl,
    output wire [63:0] out_c0_exi391_226_tpl,
    output wire [0:0] out_c0_exi391_227_tpl,
    output wire [0:0] out_c0_exi391_228_tpl,
    output wire [63:0] out_c0_exi391_229_tpl,
    output wire [0:0] out_c0_exi391_230_tpl,
    output wire [0:0] out_c0_exi391_231_tpl,
    output wire [63:0] out_c0_exi391_232_tpl,
    output wire [0:0] out_c0_exi391_233_tpl,
    output wire [0:0] out_c0_exi391_234_tpl,
    output wire [63:0] out_c0_exi391_235_tpl,
    output wire [0:0] out_c0_exi391_236_tpl,
    output wire [63:0] out_c0_exi391_237_tpl,
    output wire [0:0] out_c0_exi391_238_tpl,
    output wire [63:0] out_c0_exi391_239_tpl,
    output wire [0:0] out_c0_exi391_240_tpl,
    output wire [63:0] out_c0_exi391_241_tpl,
    output wire [0:0] out_c0_exi391_242_tpl,
    output wire [63:0] out_c0_exi391_243_tpl,
    output wire [0:0] out_c0_exi391_244_tpl,
    output wire [63:0] out_c0_exi391_245_tpl,
    output wire [0:0] out_c0_exi391_246_tpl,
    output wire [63:0] out_c0_exi391_247_tpl,
    output wire [0:0] out_c0_exi391_248_tpl,
    output wire [63:0] out_c0_exi391_249_tpl,
    output wire [0:0] out_c0_exi391_250_tpl,
    output wire [63:0] out_c0_exi391_251_tpl,
    output wire [0:0] out_c0_exi391_252_tpl,
    output wire [0:0] out_c0_exi391_253_tpl,
    output wire [63:0] out_c0_exi391_254_tpl,
    output wire [0:0] out_c0_exi391_255_tpl,
    output wire [0:0] out_c0_exi391_256_tpl,
    output wire [63:0] out_c0_exi391_257_tpl,
    output wire [0:0] out_c0_exi391_258_tpl,
    output wire [0:0] out_c0_exi391_259_tpl,
    output wire [63:0] out_c0_exi391_260_tpl,
    output wire [0:0] out_c0_exi391_261_tpl,
    output wire [0:0] out_c0_exi391_262_tpl,
    output wire [63:0] out_c0_exi391_263_tpl,
    output wire [0:0] out_c0_exi391_264_tpl,
    output wire [0:0] out_c0_exi391_265_tpl,
    output wire [63:0] out_c0_exi391_266_tpl,
    output wire [0:0] out_c0_exi391_267_tpl,
    output wire [0:0] out_c0_exi391_268_tpl,
    output wire [63:0] out_c0_exi391_269_tpl,
    output wire [0:0] out_c0_exi391_270_tpl,
    output wire [63:0] out_c0_exi391_271_tpl,
    output wire [0:0] out_c0_exi391_272_tpl,
    output wire [63:0] out_c0_exi391_273_tpl,
    output wire [0:0] out_c0_exi391_274_tpl,
    output wire [63:0] out_c0_exi391_275_tpl,
    output wire [0:0] out_c0_exi391_276_tpl,
    output wire [63:0] out_c0_exi391_277_tpl,
    output wire [0:0] out_c0_exi391_278_tpl,
    output wire [63:0] out_c0_exi391_279_tpl,
    output wire [0:0] out_c0_exi391_280_tpl,
    output wire [63:0] out_c0_exi391_281_tpl,
    output wire [0:0] out_c0_exi391_282_tpl,
    output wire [0:0] out_c0_exi391_283_tpl,
    output wire [63:0] out_c0_exi391_284_tpl,
    output wire [0:0] out_c0_exi391_285_tpl,
    output wire [0:0] out_c0_exi391_286_tpl,
    output wire [63:0] out_c0_exi391_287_tpl,
    output wire [0:0] out_c0_exi391_288_tpl,
    output wire [0:0] out_c0_exi391_289_tpl,
    output wire [63:0] out_c0_exi391_290_tpl,
    output wire [0:0] out_c0_exi391_291_tpl,
    output wire [0:0] out_c0_exi391_292_tpl,
    output wire [63:0] out_c0_exi391_293_tpl,
    output wire [0:0] out_c0_exi391_294_tpl,
    output wire [0:0] out_c0_exi391_295_tpl,
    output wire [63:0] out_c0_exi391_296_tpl,
    output wire [0:0] out_c0_exi391_297_tpl,
    output wire [0:0] out_c0_exi391_298_tpl,
    output wire [63:0] out_c0_exi391_299_tpl,
    output wire [0:0] out_c0_exi391_300_tpl,
    output wire [0:0] out_c0_exi391_301_tpl,
    output wire [63:0] out_c0_exi391_302_tpl,
    output wire [0:0] out_c0_exi391_303_tpl,
    output wire [0:0] out_c0_exi391_304_tpl,
    output wire [63:0] out_c0_exi391_305_tpl,
    output wire [0:0] out_c0_exi391_306_tpl,
    output wire [0:0] out_c0_exi391_307_tpl,
    output wire [63:0] out_c0_exi391_308_tpl,
    output wire [0:0] out_c0_exi391_309_tpl,
    output wire [63:0] out_c0_exi391_310_tpl,
    output wire [0:0] out_c0_exi391_311_tpl,
    output wire [63:0] out_c0_exi391_312_tpl,
    output wire [0:0] out_c0_exi391_313_tpl,
    output wire [63:0] out_c0_exi391_314_tpl,
    output wire [0:0] out_c0_exi391_315_tpl,
    output wire [63:0] out_c0_exi391_316_tpl,
    output wire [0:0] out_c0_exi391_317_tpl,
    output wire [0:0] out_c0_exi391_318_tpl,
    output wire [63:0] out_c0_exi391_319_tpl,
    output wire [0:0] out_c0_exi391_320_tpl,
    output wire [0:0] out_c0_exi391_321_tpl,
    output wire [63:0] out_c0_exi391_322_tpl,
    output wire [0:0] out_c0_exi391_323_tpl,
    output wire [0:0] out_c0_exi391_324_tpl,
    output wire [63:0] out_c0_exi391_325_tpl,
    output wire [0:0] out_c0_exi391_326_tpl,
    output wire [0:0] out_c0_exi391_327_tpl,
    output wire [63:0] out_c0_exi391_328_tpl,
    output wire [0:0] out_c0_exi391_329_tpl,
    output wire [0:0] out_c0_exi391_330_tpl,
    output wire [63:0] out_c0_exi391_331_tpl,
    output wire [0:0] out_c0_exi391_332_tpl,
    output wire [0:0] out_c0_exi391_333_tpl,
    output wire [63:0] out_c0_exi391_334_tpl,
    output wire [0:0] out_c0_exi391_335_tpl,
    output wire [0:0] out_c0_exi391_336_tpl,
    output wire [63:0] out_c0_exi391_337_tpl,
    output wire [0:0] out_c0_exi391_338_tpl,
    output wire [0:0] out_c0_exi391_339_tpl,
    output wire [63:0] out_c0_exi391_340_tpl,
    output wire [0:0] out_c0_exi391_341_tpl,
    output wire [0:0] out_c0_exi391_342_tpl,
    output wire [63:0] out_c0_exi391_343_tpl,
    output wire [0:0] out_c0_exi391_344_tpl,
    output wire [0:0] out_c0_exi391_345_tpl,
    output wire [63:0] out_c0_exi391_346_tpl,
    output wire [0:0] out_c0_exi391_347_tpl,
    output wire [63:0] out_c0_exi391_348_tpl,
    output wire [0:0] out_c0_exi391_349_tpl,
    output wire [63:0] out_c0_exi391_350_tpl,
    output wire [0:0] out_c0_exi391_351_tpl,
    output wire [63:0] out_c0_exi391_352_tpl,
    output wire [0:0] out_c0_exi391_353_tpl,
    output wire [63:0] out_c0_exi391_354_tpl,
    output wire [0:0] out_c0_exi391_355_tpl,
    output wire [63:0] out_c0_exi391_356_tpl,
    output wire [0:0] out_c0_exi391_357_tpl,
    output wire [0:0] out_c0_exi391_358_tpl,
    output wire [63:0] out_c0_exi391_359_tpl,
    output wire [0:0] out_c0_exi391_360_tpl,
    output wire [0:0] out_c0_exi391_361_tpl,
    output wire [63:0] out_c0_exi391_362_tpl,
    output wire [0:0] out_c0_exi391_363_tpl,
    output wire [0:0] out_c0_exi391_364_tpl,
    output wire [63:0] out_c0_exi391_365_tpl,
    output wire [0:0] out_c0_exi391_366_tpl,
    output wire [0:0] out_c0_exi391_367_tpl,
    output wire [63:0] out_c0_exi391_368_tpl,
    output wire [0:0] out_c0_exi391_369_tpl,
    output wire [0:0] out_c0_exi391_370_tpl,
    output wire [63:0] out_c0_exi391_371_tpl,
    output wire [0:0] out_c0_exi391_372_tpl,
    output wire [0:0] out_c0_exi391_373_tpl,
    output wire [63:0] out_c0_exi391_374_tpl,
    output wire [0:0] out_c0_exi391_375_tpl,
    output wire [0:0] out_c0_exi391_376_tpl,
    output wire [63:0] out_c0_exi391_377_tpl,
    output wire [0:0] out_c0_exi391_378_tpl,
    output wire [0:0] out_c0_exi391_379_tpl,
    output wire [63:0] out_c0_exi391_380_tpl,
    output wire [0:0] out_c0_exi391_381_tpl,
    output wire [0:0] out_c0_exi391_382_tpl,
    output wire [63:0] out_c0_exi391_383_tpl,
    output wire [0:0] out_c0_exi391_384_tpl,
    output wire [0:0] out_c0_exi391_385_tpl,
    output wire [63:0] out_c0_exi391_386_tpl,
    output wire [31:0] out_c0_exi391_387_tpl,
    output wire [31:0] out_c0_exi391_388_tpl,
    output wire [31:0] out_c0_exi391_389_tpl,
    output wire [31:0] out_c0_exi391_390_tpl,
    output wire [31:0] out_c0_exi391_391_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_emscripten_compute_dom_pk_code1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_01187_q;
    wire [0:0] i_acl_2342_v_emscripten_compute_dom_pk_code517_s;
    reg [0:0] i_acl_2342_v_emscripten_compute_dom_pk_code517_q;
    wire [0:0] i_acl_2343_v_emscripten_compute_dom_pk_code518_s;
    reg [0:0] i_acl_2343_v_emscripten_compute_dom_pk_code518_q;
    wire [0:0] i_acl_2344_emscripten_compute_dom_pk_code520_q;
    wire [0:0] i_acl_2344_v_emscripten_compute_dom_pk_code519_s;
    reg [0:0] i_acl_2344_v_emscripten_compute_dom_pk_code519_q;
    wire [0:0] i_acl_2345_emscripten_compute_dom_pk_code522_q;
    wire [0:0] i_acl_2345_v_emscripten_compute_dom_pk_code521_s;
    reg [0:0] i_acl_2345_v_emscripten_compute_dom_pk_code521_q;
    wire [0:0] i_acl_2346_emscripten_compute_dom_pk_code524_q;
    wire [0:0] i_acl_2346_v_emscripten_compute_dom_pk_code523_s;
    reg [0:0] i_acl_2346_v_emscripten_compute_dom_pk_code523_q;
    wire [0:0] i_acl_2347_emscripten_compute_dom_pk_code525_q;
    wire [0:0] i_acl_2348_emscripten_compute_dom_pk_code526_s;
    reg [0:0] i_acl_2348_emscripten_compute_dom_pk_code526_q;
    wire [0:0] i_acl_2349_emscripten_compute_dom_pk_code527_s;
    reg [0:0] i_acl_2349_emscripten_compute_dom_pk_code527_q;
    wire [0:0] i_acl_2350_v_emscripten_compute_dom_pk_code528_s;
    reg [0:0] i_acl_2350_v_emscripten_compute_dom_pk_code528_q;
    wire [0:0] i_acl_2351_v_emscripten_compute_dom_pk_code529_s;
    reg [0:0] i_acl_2351_v_emscripten_compute_dom_pk_code529_q;
    wire [0:0] i_acl_2352_v_emscripten_compute_dom_pk_code530_s;
    reg [0:0] i_acl_2352_v_emscripten_compute_dom_pk_code530_q;
    wire [0:0] i_acl_2353_v_emscripten_compute_dom_pk_code531_s;
    reg [0:0] i_acl_2353_v_emscripten_compute_dom_pk_code531_q;
    wire [0:0] i_acl_2354_v_emscripten_compute_dom_pk_code532_s;
    reg [0:0] i_acl_2354_v_emscripten_compute_dom_pk_code532_q;
    wire [0:0] i_acl_2355_v_emscripten_compute_dom_pk_code533_s;
    reg [0:0] i_acl_2355_v_emscripten_compute_dom_pk_code533_q;
    wire [0:0] i_acl_2356_v_emscripten_compute_dom_pk_code534_s;
    reg [0:0] i_acl_2356_v_emscripten_compute_dom_pk_code534_q;
    wire [0:0] i_acl_2357_v_emscripten_compute_dom_pk_code535_s;
    reg [0:0] i_acl_2357_v_emscripten_compute_dom_pk_code535_q;
    wire [0:0] i_acl_2358_emscripten_compute_dom_pk_code537_q;
    wire [0:0] i_acl_2358_v_emscripten_compute_dom_pk_code536_s;
    reg [0:0] i_acl_2358_v_emscripten_compute_dom_pk_code536_q;
    wire [0:0] i_acl_2359_emscripten_compute_dom_pk_code538_s;
    reg [0:0] i_acl_2359_emscripten_compute_dom_pk_code538_q;
    wire [0:0] i_acl_2360_v_emscripten_compute_dom_pk_code539_s;
    reg [0:0] i_acl_2360_v_emscripten_compute_dom_pk_code539_q;
    wire [0:0] i_acl_2361_v_emscripten_compute_dom_pk_code540_s;
    reg [0:0] i_acl_2361_v_emscripten_compute_dom_pk_code540_q;
    wire [0:0] i_acl_2362_v_emscripten_compute_dom_pk_code541_s;
    reg [0:0] i_acl_2362_v_emscripten_compute_dom_pk_code541_q;
    wire [0:0] i_acl_2363_emscripten_compute_dom_pk_code543_q;
    wire [0:0] i_acl_2363_v_emscripten_compute_dom_pk_code542_s;
    reg [0:0] i_acl_2363_v_emscripten_compute_dom_pk_code542_q;
    wire [0:0] i_acl_2364_emscripten_compute_dom_pk_code545_q;
    wire [0:0] i_acl_2364_v_emscripten_compute_dom_pk_code544_s;
    reg [0:0] i_acl_2364_v_emscripten_compute_dom_pk_code544_q;
    wire [0:0] i_acl_2365_emscripten_compute_dom_pk_code546_q;
    wire [0:0] i_acl_2366_emscripten_compute_dom_pk_code547_s;
    reg [0:0] i_acl_2366_emscripten_compute_dom_pk_code547_q;
    wire [0:0] i_acl_2367_emscripten_compute_dom_pk_code548_s;
    reg [0:0] i_acl_2367_emscripten_compute_dom_pk_code548_q;
    wire [0:0] i_acl_2368_emscripten_compute_dom_pk_code549_s;
    reg [0:0] i_acl_2368_emscripten_compute_dom_pk_code549_q;
    wire [0:0] i_acl_2369_v_emscripten_compute_dom_pk_code550_s;
    reg [0:0] i_acl_2369_v_emscripten_compute_dom_pk_code550_q;
    wire [0:0] i_acl_2370_emscripten_compute_dom_pk_code552_q;
    wire [0:0] i_acl_2370_v_emscripten_compute_dom_pk_code551_s;
    reg [0:0] i_acl_2370_v_emscripten_compute_dom_pk_code551_q;
    wire [0:0] i_acl_2371_emscripten_compute_dom_pk_code553_qi;
    reg [0:0] i_acl_2371_emscripten_compute_dom_pk_code553_q;
    wire [0:0] i_acl_2372_emscripten_compute_dom_pk_code555_q;
    wire [0:0] i_acl_2373_emscripten_compute_dom_pk_code556_s;
    reg [0:0] i_acl_2373_emscripten_compute_dom_pk_code556_q;
    wire [0:0] i_acl_2374_emscripten_compute_dom_pk_code557_s;
    reg [0:0] i_acl_2374_emscripten_compute_dom_pk_code557_q;
    wire [0:0] i_acl_2375_v_emscripten_compute_dom_pk_code558_s;
    reg [0:0] i_acl_2375_v_emscripten_compute_dom_pk_code558_q;
    wire [0:0] i_acl_2376_v_emscripten_compute_dom_pk_code559_s;
    reg [0:0] i_acl_2376_v_emscripten_compute_dom_pk_code559_q;
    wire [0:0] i_acl_2377_v_emscripten_compute_dom_pk_code560_s;
    reg [0:0] i_acl_2377_v_emscripten_compute_dom_pk_code560_q;
    wire [0:0] i_acl_2378_v_emscripten_compute_dom_pk_code561_s;
    reg [0:0] i_acl_2378_v_emscripten_compute_dom_pk_code561_q;
    wire [0:0] i_acl_2379_v_emscripten_compute_dom_pk_code562_s;
    reg [0:0] i_acl_2379_v_emscripten_compute_dom_pk_code562_q;
    wire [0:0] i_acl_2380_v_emscripten_compute_dom_pk_code563_s;
    reg [0:0] i_acl_2380_v_emscripten_compute_dom_pk_code563_q;
    wire [0:0] i_acl_2381_v_emscripten_compute_dom_pk_code564_s;
    reg [0:0] i_acl_2381_v_emscripten_compute_dom_pk_code564_q;
    wire [0:0] i_acl_2382_v_emscripten_compute_dom_pk_code565_s;
    reg [0:0] i_acl_2382_v_emscripten_compute_dom_pk_code565_q;
    wire [0:0] i_acl_2383_v_emscripten_compute_dom_pk_code566_s;
    reg [0:0] i_acl_2383_v_emscripten_compute_dom_pk_code566_q;
    wire [0:0] i_acl_2384_v_emscripten_compute_dom_pk_code567_s;
    reg [0:0] i_acl_2384_v_emscripten_compute_dom_pk_code567_q;
    wire [0:0] i_acl_2385_v_emscripten_compute_dom_pk_code568_s;
    reg [0:0] i_acl_2385_v_emscripten_compute_dom_pk_code568_q;
    wire [0:0] i_acl_2386_v_emscripten_compute_dom_pk_code569_s;
    reg [0:0] i_acl_2386_v_emscripten_compute_dom_pk_code569_q;
    wire [0:0] i_acl_2387_v_emscripten_compute_dom_pk_code570_s;
    reg [0:0] i_acl_2387_v_emscripten_compute_dom_pk_code570_q;
    wire [0:0] i_acl_2388_v_emscripten_compute_dom_pk_code571_s;
    reg [0:0] i_acl_2388_v_emscripten_compute_dom_pk_code571_q;
    wire [0:0] i_acl_2389_v_emscripten_compute_dom_pk_code572_s;
    reg [0:0] i_acl_2389_v_emscripten_compute_dom_pk_code572_q;
    wire [0:0] i_acl_2390_v_emscripten_compute_dom_pk_code573_s;
    reg [0:0] i_acl_2390_v_emscripten_compute_dom_pk_code573_q;
    wire [0:0] i_acl_2391_v_emscripten_compute_dom_pk_code574_s;
    reg [0:0] i_acl_2391_v_emscripten_compute_dom_pk_code574_q;
    wire [0:0] i_acl_2392_emscripten_compute_dom_pk_code576_q;
    wire [0:0] i_acl_2392_v_emscripten_compute_dom_pk_code575_s;
    reg [0:0] i_acl_2392_v_emscripten_compute_dom_pk_code575_q;
    wire [0:0] i_acl_2393_emscripten_compute_dom_pk_code577_q;
    wire [0:0] i_acl_2397_emscripten_compute_dom_pk_code578_s;
    reg [0:0] i_acl_2397_emscripten_compute_dom_pk_code578_q;
    wire [0:0] i_acl_2398_emscripten_compute_dom_pk_code579_s;
    reg [0:0] i_acl_2398_emscripten_compute_dom_pk_code579_q;
    wire [0:0] i_acl_2399_v_emscripten_compute_dom_pk_code580_s;
    reg [0:0] i_acl_2399_v_emscripten_compute_dom_pk_code580_q;
    wire [0:0] i_acl_2400_emscripten_compute_dom_pk_code582_q;
    wire [0:0] i_acl_2400_v_emscripten_compute_dom_pk_code581_s;
    reg [0:0] i_acl_2400_v_emscripten_compute_dom_pk_code581_q;
    wire [0:0] i_acl_2401_emscripten_compute_dom_pk_code583_qi;
    reg [0:0] i_acl_2401_emscripten_compute_dom_pk_code583_q;
    wire [0:0] i_acl_2402_emscripten_compute_dom_pk_code585_q;
    wire [0:0] i_acl_2403_emscripten_compute_dom_pk_code587_q;
    wire [0:0] i_acl_2403_v_emscripten_compute_dom_pk_code586_s;
    reg [0:0] i_acl_2403_v_emscripten_compute_dom_pk_code586_q;
    wire [0:0] i_acl_2404_emscripten_compute_dom_pk_code588_q;
    wire [0:0] i_acl_2405_emscripten_compute_dom_pk_code589_s;
    reg [0:0] i_acl_2405_emscripten_compute_dom_pk_code589_q;
    wire [0:0] i_acl_2406_emscripten_compute_dom_pk_code590_s;
    reg [0:0] i_acl_2406_emscripten_compute_dom_pk_code590_q;
    wire [0:0] i_acl_2407_v_emscripten_compute_dom_pk_code591_s;
    reg [0:0] i_acl_2407_v_emscripten_compute_dom_pk_code591_q;
    wire [0:0] i_acl_2408_v_emscripten_compute_dom_pk_code592_s;
    reg [0:0] i_acl_2408_v_emscripten_compute_dom_pk_code592_q;
    wire [0:0] i_acl_2409_v_emscripten_compute_dom_pk_code593_s;
    reg [0:0] i_acl_2409_v_emscripten_compute_dom_pk_code593_q;
    wire [0:0] i_acl_2410_emscripten_compute_dom_pk_code595_q;
    wire [0:0] i_acl_2410_v_emscripten_compute_dom_pk_code594_s;
    reg [0:0] i_acl_2410_v_emscripten_compute_dom_pk_code594_q;
    wire [0:0] i_acl_2411_emscripten_compute_dom_pk_code596_s;
    reg [0:0] i_acl_2411_emscripten_compute_dom_pk_code596_q;
    wire [0:0] i_acl_2412_emscripten_compute_dom_pk_code597_s;
    reg [0:0] i_acl_2412_emscripten_compute_dom_pk_code597_q;
    wire [0:0] i_acl_2413_v_emscripten_compute_dom_pk_code598_s;
    reg [0:0] i_acl_2413_v_emscripten_compute_dom_pk_code598_q;
    wire [0:0] i_acl_2414_v_emscripten_compute_dom_pk_code599_s;
    reg [0:0] i_acl_2414_v_emscripten_compute_dom_pk_code599_q;
    wire [0:0] i_acl_2415_v_emscripten_compute_dom_pk_code600_s;
    reg [0:0] i_acl_2415_v_emscripten_compute_dom_pk_code600_q;
    wire [0:0] i_acl_2416_v_emscripten_compute_dom_pk_code601_s;
    reg [0:0] i_acl_2416_v_emscripten_compute_dom_pk_code601_q;
    wire [0:0] i_acl_2417_v_emscripten_compute_dom_pk_code602_s;
    reg [0:0] i_acl_2417_v_emscripten_compute_dom_pk_code602_q;
    wire [0:0] i_acl_2418_v_emscripten_compute_dom_pk_code603_s;
    reg [0:0] i_acl_2418_v_emscripten_compute_dom_pk_code603_q;
    wire [0:0] i_acl_2419_v_emscripten_compute_dom_pk_code604_s;
    reg [0:0] i_acl_2419_v_emscripten_compute_dom_pk_code604_q;
    wire [0:0] i_acl_2420_v_emscripten_compute_dom_pk_code605_s;
    reg [0:0] i_acl_2420_v_emscripten_compute_dom_pk_code605_q;
    wire [0:0] i_acl_2421_emscripten_compute_dom_pk_code607_q;
    wire [0:0] i_acl_2421_v_emscripten_compute_dom_pk_code606_s;
    reg [0:0] i_acl_2421_v_emscripten_compute_dom_pk_code606_q;
    wire [0:0] i_acl_2422_v_emscripten_compute_dom_pk_code608_s;
    reg [0:0] i_acl_2422_v_emscripten_compute_dom_pk_code608_q;
    wire [0:0] i_acl_2423_v_emscripten_compute_dom_pk_code609_s;
    reg [0:0] i_acl_2423_v_emscripten_compute_dom_pk_code609_q;
    wire [0:0] i_acl_2424_v_emscripten_compute_dom_pk_code610_s;
    reg [0:0] i_acl_2424_v_emscripten_compute_dom_pk_code610_q;
    wire [0:0] i_acl_2425_emscripten_compute_dom_pk_code612_q;
    wire [0:0] i_acl_2425_v_emscripten_compute_dom_pk_code611_s;
    reg [0:0] i_acl_2425_v_emscripten_compute_dom_pk_code611_q;
    wire [0:0] i_acl_2426_emscripten_compute_dom_pk_code613_q;
    wire [0:0] i_acl_2427_emscripten_compute_dom_pk_code614_q;
    wire [0:0] i_acl_2428_emscripten_compute_dom_pk_code615_s;
    reg [0:0] i_acl_2428_emscripten_compute_dom_pk_code615_q;
    wire [0:0] i_acl_2429_emscripten_compute_dom_pk_code616_s;
    reg [0:0] i_acl_2429_emscripten_compute_dom_pk_code616_q;
    wire [0:0] i_acl_2430_emscripten_compute_dom_pk_code617_s;
    reg [0:0] i_acl_2430_emscripten_compute_dom_pk_code617_q;
    wire [0:0] i_acl_2431_emscripten_compute_dom_pk_code618_s;
    reg [0:0] i_acl_2431_emscripten_compute_dom_pk_code618_q;
    wire [0:0] i_acl_2432_v_emscripten_compute_dom_pk_code619_s;
    reg [0:0] i_acl_2432_v_emscripten_compute_dom_pk_code619_q;
    wire [0:0] i_acl_2433_v_emscripten_compute_dom_pk_code620_s;
    reg [0:0] i_acl_2433_v_emscripten_compute_dom_pk_code620_q;
    wire [0:0] i_acl_2434_v_emscripten_compute_dom_pk_code621_s;
    reg [0:0] i_acl_2434_v_emscripten_compute_dom_pk_code621_q;
    wire [0:0] i_acl_2435_v_emscripten_compute_dom_pk_code622_s;
    reg [0:0] i_acl_2435_v_emscripten_compute_dom_pk_code622_q;
    wire [0:0] i_acl_2436_demorgan_emscripten_compute_dom_pk_code623_q;
    wire [0:0] i_acl_2436_emscripten_compute_dom_pk_code624_q;
    wire [0:0] i_acl_2437_emscripten_compute_dom_pk_code625_q;
    wire [0:0] i_acl_2438_emscripten_compute_dom_pk_code626_q;
    wire [0:0] i_acl_2439_emscripten_compute_dom_pk_code628_q;
    wire [0:0] i_acl_2439_v_emscripten_compute_dom_pk_code627_s;
    reg [0:0] i_acl_2439_v_emscripten_compute_dom_pk_code627_q;
    wire [0:0] i_acl_2440_emscripten_compute_dom_pk_code629_q;
    wire [0:0] i_acl_2442_emscripten_compute_dom_pk_code630_s;
    reg [0:0] i_acl_2442_emscripten_compute_dom_pk_code630_q;
    wire [0:0] i_acl_2443_emscripten_compute_dom_pk_code631_s;
    reg [0:0] i_acl_2443_emscripten_compute_dom_pk_code631_q;
    wire [0:0] i_acl_2444_v_emscripten_compute_dom_pk_code632_s;
    reg [0:0] i_acl_2444_v_emscripten_compute_dom_pk_code632_q;
    wire [0:0] i_acl_2445_v_emscripten_compute_dom_pk_code633_s;
    reg [0:0] i_acl_2445_v_emscripten_compute_dom_pk_code633_q;
    wire [0:0] i_acl_2446_v_emscripten_compute_dom_pk_code634_s;
    reg [0:0] i_acl_2446_v_emscripten_compute_dom_pk_code634_q;
    wire [0:0] i_acl_2447_emscripten_compute_dom_pk_code636_q;
    wire [0:0] i_acl_2447_v_emscripten_compute_dom_pk_code635_s;
    reg [0:0] i_acl_2447_v_emscripten_compute_dom_pk_code635_q;
    wire [0:0] i_acl_2448_emscripten_compute_dom_pk_code637_qi;
    reg [0:0] i_acl_2448_emscripten_compute_dom_pk_code637_q;
    wire [0:0] i_acl_2451_emscripten_compute_dom_pk_code638_s;
    reg [0:0] i_acl_2451_emscripten_compute_dom_pk_code638_q;
    wire [0:0] i_acl_2452_emscripten_compute_dom_pk_code639_q;
    wire [0:0] i_acl_2456_emscripten_compute_dom_pk_code640_s;
    reg [0:0] i_acl_2456_emscripten_compute_dom_pk_code640_q;
    wire [0:0] i_acl_2457_emscripten_compute_dom_pk_code641_s;
    reg [0:0] i_acl_2457_emscripten_compute_dom_pk_code641_q;
    wire [0:0] i_acl_2458_emscripten_compute_dom_pk_code642_s;
    reg [0:0] i_acl_2458_emscripten_compute_dom_pk_code642_q;
    wire [0:0] i_acl_2459_emscripten_compute_dom_pk_code643_s;
    reg [0:0] i_acl_2459_emscripten_compute_dom_pk_code643_q;
    wire [0:0] i_acl_2500_emscripten_compute_dom_pk_code658_qi;
    reg [0:0] i_acl_2500_emscripten_compute_dom_pk_code658_q;
    wire [0:0] i_acl_3130_emscripten_compute_dom_pk_code809_qi;
    reg [0:0] i_acl_3130_emscripten_compute_dom_pk_code809_q;
    wire [0:0] i_acl_3166_emscripten_compute_dom_pk_code819_q;
    wire [0:0] i_acl_3178_emscripten_compute_dom_pk_code823_q;
    wire [0:0] i_acl_3189_emscripten_compute_dom_pk_code827_q;
    wire [0:0] i_acl_3201_emscripten_compute_dom_pk_code831_q;
    wire [0:0] i_acl_3224_emscripten_compute_dom_pk_code838_q;
    wire [0:0] i_acl_3236_emscripten_compute_dom_pk_code842_q;
    wire [0:0] i_acl_3247_emscripten_compute_dom_pk_code846_q;
    wire [0:0] i_acl_3259_emscripten_compute_dom_pk_code850_q;
    wire [0:0] i_acl_3271_emscripten_compute_dom_pk_code854_q;
    wire [0:0] i_acl_3281_emscripten_compute_dom_pk_code858_q;
    wire [0:0] i_acl_3305_emscripten_compute_dom_pk_code865_q;
    wire [0:0] i_acl_3316_emscripten_compute_dom_pk_code869_q;
    wire [0:0] i_acl_3367_emscripten_compute_dom_pk_code882_q;
    wire [0:0] i_acl_3376_emscripten_compute_dom_pk_code886_q;
    wire [0:0] i_acl_3388_emscripten_compute_dom_pk_code890_q;
    wire [0:0] i_acl_3399_emscripten_compute_dom_pk_code894_q;
    wire [0:0] i_acl_3423_emscripten_compute_dom_pk_code901_q;
    wire [0:0] i_acl_3435_emscripten_compute_dom_pk_code905_q;
    wire [0:0] i_acl_3447_emscripten_compute_dom_pk_code909_q;
    wire [0:0] i_acl_3482_emscripten_compute_dom_pk_code919_qi;
    reg [0:0] i_acl_3482_emscripten_compute_dom_pk_code919_q;
    wire [0:0] i_acl_3532_emscripten_compute_dom_pk_code932_q;
    wire [0:0] i_acl_3555_emscripten_compute_dom_pk_code939_qi;
    reg [0:0] i_acl_3555_emscripten_compute_dom_pk_code939_q;
    wire [0:0] i_acl_3577_emscripten_compute_dom_pk_code946_q;
    wire [0:0] i_acl_3588_emscripten_compute_dom_pk_code950_q;
    wire [0:0] i_acl_3600_emscripten_compute_dom_pk_code954_q;
    wire [0:0] i_acl_3612_emscripten_compute_dom_pk_code958_q;
    wire [0:0] i_acl_3622_emscripten_compute_dom_pk_code962_q;
    wire [0:0] i_acl_3634_emscripten_compute_dom_pk_code966_q;
    wire [0:0] i_acl_3745_emscripten_compute_dom_pk_code994_q;
    wire [0:0] i_acl_3759_emscripten_compute_dom_pk_code998_q;
    wire [0:0] i_acl_3769_emscripten_compute_dom_pk_code1002_q;
    wire [0:0] i_acl_3780_emscripten_compute_dom_pk_code1006_q;
    wire [0:0] i_acl_3791_emscripten_compute_dom_pk_code1010_q;
    wire [0:0] i_acl_3804_emscripten_compute_dom_pk_code1014_q;
    wire [0:0] i_acl_3888_emscripten_compute_dom_pk_code1036_q;
    wire [0:0] i_acl_3899_emscripten_compute_dom_pk_code1040_q;
    wire [0:0] i_acl_3912_emscripten_compute_dom_pk_code1044_q;
    wire [0:0] i_acl_3921_emscripten_compute_dom_pk_code1048_q;
    wire [0:0] i_acl_3933_emscripten_compute_dom_pk_code1052_q;
    wire [0:0] i_acl_3944_emscripten_compute_dom_pk_code1056_q;
    wire [0:0] i_acl_3957_emscripten_compute_dom_pk_code1060_q;
    wire [0:0] i_acl_3973_emscripten_compute_dom_pk_code1064_q;
    wire [0:0] i_acl_3979_emscripten_compute_dom_pk_code1068_q;
    wire [0:0] i_acl_4038_emscripten_compute_dom_pk_code1084_q;
    wire [0:0] i_acl_4050_emscripten_compute_dom_pk_code1088_q;
    wire [0:0] i_acl_4063_emscripten_compute_dom_pk_code1092_q;
    wire [0:0] i_acl_4072_emscripten_compute_dom_pk_code1096_q;
    wire [0:0] i_acl_4083_emscripten_compute_dom_pk_code1100_q;
    wire [0:0] i_acl_4099_emscripten_compute_dom_pk_code1104_q;
    wire [0:0] i_acl_4105_emscripten_compute_dom_pk_code1108_q;
    wire [0:0] i_acl_4118_emscripten_compute_dom_pk_code1112_q;
    wire [0:0] i_acl_4129_emscripten_compute_dom_pk_code1116_q;
    wire [0:0] i_acl_4139_emscripten_compute_dom_pk_code1120_q;
    wire [0:0] i_acl_4212_emscripten_compute_dom_pk_code1139_qi;
    reg [0:0] i_acl_4212_emscripten_compute_dom_pk_code1139_q;
    wire [0:0] i_acl_4237_emscripten_compute_dom_pk_code1146_q;
    wire [0:0] i_acl_4247_emscripten_compute_dom_pk_code1150_q;
    wire [0:0] i_acl_4259_emscripten_compute_dom_pk_code1154_q;
    wire [0:0] i_acl_4270_emscripten_compute_dom_pk_code1158_q;
    wire [0:0] i_acl_4285_emscripten_compute_dom_pk_code1162_q;
    wire [0:0] i_acl_4297_emscripten_compute_dom_pk_code1166_q;
    wire [0:0] i_acl_4304_emscripten_compute_dom_pk_code1170_q;
    wire [0:0] i_and2468_emscripten_compute_dom_pk_code649_q;
    wire [0:0] i_and2481_emscripten_compute_dom_pk_code652_q;
    wire [0:0] i_and2493_emscripten_compute_dom_pk_code655_q;
    wire [0:0] i_and2505_emscripten_compute_dom_pk_code659_q;
    wire [0:0] i_and2517_emscripten_compute_dom_pk_code662_q;
    wire [0:0] i_and2529_emscripten_compute_dom_pk_code665_q;
    wire [0:0] i_and2541_emscripten_compute_dom_pk_code668_q;
    wire [0:0] i_and2553_emscripten_compute_dom_pk_code671_qi;
    reg [0:0] i_and2553_emscripten_compute_dom_pk_code671_q;
    wire [0:0] i_and2565_emscripten_compute_dom_pk_code674_q;
    wire [0:0] i_and2578_emscripten_compute_dom_pk_code677_q;
    wire [0:0] i_and2590_emscripten_compute_dom_pk_code680_q;
    wire [0:0] i_and2602_emscripten_compute_dom_pk_code683_q;
    wire [0:0] i_and2615_emscripten_compute_dom_pk_code686_q;
    wire [0:0] i_and2627_emscripten_compute_dom_pk_code689_q;
    wire [0:0] i_and2639_emscripten_compute_dom_pk_code692_q;
    wire [0:0] i_and2652_emscripten_compute_dom_pk_code695_q;
    wire [0:0] i_and2664_emscripten_compute_dom_pk_code698_q;
    wire [0:0] i_and2677_emscripten_compute_dom_pk_code701_q;
    wire [0:0] i_and2689_emscripten_compute_dom_pk_code704_q;
    wire [0:0] i_and2702_emscripten_compute_dom_pk_code707_qi;
    reg [0:0] i_and2702_emscripten_compute_dom_pk_code707_q;
    wire [0:0] i_and2715_emscripten_compute_dom_pk_code710_q;
    wire [0:0] i_and2728_emscripten_compute_dom_pk_code713_q;
    wire [0:0] i_and2740_emscripten_compute_dom_pk_code716_q;
    wire [0:0] i_and2752_emscripten_compute_dom_pk_code719_q;
    wire [0:0] i_and2764_emscripten_compute_dom_pk_code722_q;
    wire [0:0] i_and2777_emscripten_compute_dom_pk_code725_q;
    wire [0:0] i_and2789_emscripten_compute_dom_pk_code728_qi;
    reg [0:0] i_and2789_emscripten_compute_dom_pk_code728_q;
    wire [0:0] i_and2802_emscripten_compute_dom_pk_code731_q;
    wire [0:0] i_and2814_emscripten_compute_dom_pk_code734_q;
    wire [0:0] i_and2827_emscripten_compute_dom_pk_code737_q;
    wire [0:0] i_and2840_emscripten_compute_dom_pk_code740_qi;
    reg [0:0] i_and2840_emscripten_compute_dom_pk_code740_q;
    wire [0:0] i_and2852_emscripten_compute_dom_pk_code743_q;
    wire [0:0] i_and2864_emscripten_compute_dom_pk_code744_q;
    wire [0:0] i_and2876_emscripten_compute_dom_pk_code748_q;
    wire [0:0] i_and2888_emscripten_compute_dom_pk_code749_q;
    wire [0:0] i_and2900_emscripten_compute_dom_pk_code753_q;
    wire [0:0] i_and2912_emscripten_compute_dom_pk_code756_qi;
    reg [0:0] i_and2912_emscripten_compute_dom_pk_code756_q;
    wire [0:0] i_and2924_emscripten_compute_dom_pk_code759_q;
    wire [0:0] i_and2936_emscripten_compute_dom_pk_code762_qi;
    reg [0:0] i_and2936_emscripten_compute_dom_pk_code762_q;
    wire [0:0] i_and2948_emscripten_compute_dom_pk_code765_q;
    wire [0:0] i_and2960_emscripten_compute_dom_pk_code766_q;
    wire [0:0] i_and2973_emscripten_compute_dom_pk_code770_q;
    wire [0:0] i_and2985_emscripten_compute_dom_pk_code773_q;
    wire [0:0] i_and2998_emscripten_compute_dom_pk_code776_qi;
    reg [0:0] i_and2998_emscripten_compute_dom_pk_code776_q;
    wire [0:0] i_and3010_emscripten_compute_dom_pk_code779_q;
    wire [0:0] i_and3023_emscripten_compute_dom_pk_code782_q;
    wire [0:0] i_and3036_emscripten_compute_dom_pk_code785_q;
    wire [0:0] i_and3048_emscripten_compute_dom_pk_code788_q;
    wire [0:0] i_and3061_emscripten_compute_dom_pk_code791_qi;
    reg [0:0] i_and3061_emscripten_compute_dom_pk_code791_q;
    wire [0:0] i_and3074_emscripten_compute_dom_pk_code794_q;
    wire [0:0] i_and3087_emscripten_compute_dom_pk_code797_q;
    wire [0:0] i_and3099_emscripten_compute_dom_pk_code800_q;
    wire [0:0] i_and3112_emscripten_compute_dom_pk_code803_qi;
    reg [0:0] i_and3112_emscripten_compute_dom_pk_code803_q;
    wire [0:0] i_and3125_emscripten_compute_dom_pk_code806_qi;
    reg [0:0] i_and3125_emscripten_compute_dom_pk_code806_q;
    wire [0:0] i_and3136_emscripten_compute_dom_pk_code810_q;
    wire [0:0] i_and3149_emscripten_compute_dom_pk_code813_q;
    wire [0:0] i_and3161_emscripten_compute_dom_pk_code816_q;
    wire [0:0] i_and3173_emscripten_compute_dom_pk_code820_q;
    wire [0:0] i_and3184_emscripten_compute_dom_pk_code824_q;
    wire [0:0] i_and3195_emscripten_compute_dom_pk_code828_q;
    wire [0:0] i_and3206_emscripten_compute_dom_pk_code832_q;
    wire [0:0] i_and3219_emscripten_compute_dom_pk_code835_q;
    wire [0:0] i_and3231_emscripten_compute_dom_pk_code839_q;
    wire [0:0] i_and3242_emscripten_compute_dom_pk_code843_q;
    wire [0:0] i_and3253_emscripten_compute_dom_pk_code847_q;
    wire [0:0] i_and3264_emscripten_compute_dom_pk_code851_q;
    wire [0:0] i_and3276_emscripten_compute_dom_pk_code855_q;
    wire [0:0] i_and3288_emscripten_compute_dom_pk_code859_q;
    wire [0:0] i_and3300_emscripten_compute_dom_pk_code862_q;
    wire [0:0] i_and3311_emscripten_compute_dom_pk_code866_q;
    wire [0:0] i_and3322_emscripten_compute_dom_pk_code870_q;
    wire [0:0] i_and3335_emscripten_compute_dom_pk_code873_q;
    wire [0:0] i_and3347_emscripten_compute_dom_pk_code876_q;
    wire [0:0] i_and3360_emscripten_compute_dom_pk_code879_q;
    wire [0:0] i_and3371_emscripten_compute_dom_pk_code883_q;
    wire [0:0] i_and3383_emscripten_compute_dom_pk_code887_q;
    wire [0:0] i_and3394_emscripten_compute_dom_pk_code891_q;
    wire [0:0] i_and3405_emscripten_compute_dom_pk_code895_q;
    wire [0:0] i_and3418_emscripten_compute_dom_pk_code898_q;
    wire [0:0] i_and3429_emscripten_compute_dom_pk_code902_q;
    wire [0:0] i_and3440_emscripten_compute_dom_pk_code906_q;
    wire [0:0] i_and3452_emscripten_compute_dom_pk_code910_q;
    wire [0:0] i_and3464_emscripten_compute_dom_pk_code913_q;
    wire [0:0] i_and3477_emscripten_compute_dom_pk_code916_q;
    wire [0:0] i_and3489_emscripten_compute_dom_pk_code920_q;
    wire [0:0] i_and3501_emscripten_compute_dom_pk_code923_q;
    wire [0:0] i_and3513_emscripten_compute_dom_pk_code926_q;
    wire [0:0] i_and3525_emscripten_compute_dom_pk_code929_q;
    wire [0:0] i_and3536_emscripten_compute_dom_pk_code933_q;
    wire [0:0] i_and3548_emscripten_compute_dom_pk_code936_q;
    wire [0:0] i_and3559_emscripten_compute_dom_pk_code940_q;
    wire [0:0] i_and3572_emscripten_compute_dom_pk_code943_q;
    wire [0:0] i_and3583_emscripten_compute_dom_pk_code947_q;
    wire [0:0] i_and3594_emscripten_compute_dom_pk_code951_q;
    wire [0:0] i_and3605_emscripten_compute_dom_pk_code955_q;
    wire [0:0] i_and3617_emscripten_compute_dom_pk_code959_q;
    wire [0:0] i_and3629_emscripten_compute_dom_pk_code963_q;
    wire [0:0] i_and3640_emscripten_compute_dom_pk_code967_q;
    wire [0:0] i_and3653_emscripten_compute_dom_pk_code970_qi;
    reg [0:0] i_and3653_emscripten_compute_dom_pk_code970_q;
    wire [0:0] i_and3665_emscripten_compute_dom_pk_code973_q;
    wire [0:0] i_and3678_emscripten_compute_dom_pk_code976_q;
    wire [0:0] i_and3690_emscripten_compute_dom_pk_code979_q;
    wire [0:0] i_and3703_emscripten_compute_dom_pk_code982_q;
    wire [0:0] i_and3715_emscripten_compute_dom_pk_code985_q;
    wire [0:0] i_and3728_emscripten_compute_dom_pk_code988_q;
    wire [0:0] i_and3740_emscripten_compute_dom_pk_code991_q;
    wire [0:0] i_and3752_emscripten_compute_dom_pk_code995_q;
    wire [0:0] i_and3764_emscripten_compute_dom_pk_code999_q;
    wire [0:0] i_and3775_emscripten_compute_dom_pk_code1003_q;
    wire [0:0] i_and3786_emscripten_compute_dom_pk_code1007_q;
    wire [0:0] i_and3798_emscripten_compute_dom_pk_code1011_q;
    wire [0:0] i_and3809_emscripten_compute_dom_pk_code1015_q;
    wire [0:0] i_and3821_emscripten_compute_dom_pk_code1018_q;
    wire [0:0] i_and3833_emscripten_compute_dom_pk_code1021_qi;
    reg [0:0] i_and3833_emscripten_compute_dom_pk_code1021_q;
    wire [0:0] i_and3846_emscripten_compute_dom_pk_code1024_q;
    wire [0:0] i_and3859_emscripten_compute_dom_pk_code1027_qi;
    reg [0:0] i_and3859_emscripten_compute_dom_pk_code1027_q;
    wire [0:0] i_and3871_emscripten_compute_dom_pk_code1030_q;
    wire [0:0] i_and3883_emscripten_compute_dom_pk_code1033_q;
    wire [0:0] i_and3894_emscripten_compute_dom_pk_code1037_q;
    wire [0:0] i_and3905_emscripten_compute_dom_pk_code1041_q;
    wire [0:0] i_and3916_emscripten_compute_dom_pk_code1045_q;
    wire [0:0] i_and3928_emscripten_compute_dom_pk_code1049_q;
    wire [0:0] i_and3939_emscripten_compute_dom_pk_code1053_q;
    wire [0:0] i_and3950_emscripten_compute_dom_pk_code1057_q;
    wire [0:0] i_and3962_emscripten_compute_dom_pk_code1061_q;
    wire [0:0] i_and3974_emscripten_compute_dom_pk_code1065_q;
    wire [0:0] i_and3985_emscripten_compute_dom_pk_code1069_q;
    wire [0:0] i_and3997_emscripten_compute_dom_pk_code1072_q;
    wire [0:0] i_and4009_emscripten_compute_dom_pk_code1075_q;
    wire [0:0] i_and4021_emscripten_compute_dom_pk_code1078_qi;
    reg [0:0] i_and4021_emscripten_compute_dom_pk_code1078_q;
    wire [0:0] i_and4033_emscripten_compute_dom_pk_code1081_q;
    wire [0:0] i_and4044_emscripten_compute_dom_pk_code1085_q;
    wire [0:0] i_and4055_emscripten_compute_dom_pk_code1089_q;
    wire [0:0] i_and4067_emscripten_compute_dom_pk_code1093_q;
    wire [0:0] i_and4078_emscripten_compute_dom_pk_code1097_q;
    wire [0:0] i_and4089_emscripten_compute_dom_pk_code1101_q;
    wire [0:0] i_and4100_emscripten_compute_dom_pk_code1105_q;
    wire [0:0] i_and4112_emscripten_compute_dom_pk_code1109_q;
    wire [0:0] i_and4123_emscripten_compute_dom_pk_code1113_q;
    wire [0:0] i_and4134_emscripten_compute_dom_pk_code1117_q;
    wire [0:0] i_and4145_emscripten_compute_dom_pk_code1121_q;
    wire [0:0] i_and4157_emscripten_compute_dom_pk_code1124_qi;
    reg [0:0] i_and4157_emscripten_compute_dom_pk_code1124_q;
    wire [0:0] i_and4169_emscripten_compute_dom_pk_code1127_q;
    wire [0:0] i_and4182_emscripten_compute_dom_pk_code1130_qi;
    reg [0:0] i_and4182_emscripten_compute_dom_pk_code1130_q;
    wire [0:0] i_and4195_emscripten_compute_dom_pk_code1133_qi;
    reg [0:0] i_and4195_emscripten_compute_dom_pk_code1133_q;
    wire [0:0] i_and4207_emscripten_compute_dom_pk_code1136_q;
    wire [0:0] i_and4218_emscripten_compute_dom_pk_code1140_q;
    wire [0:0] i_and4230_emscripten_compute_dom_pk_code1143_q;
    wire [0:0] i_and4242_emscripten_compute_dom_pk_code1147_q;
    wire [0:0] i_and4254_emscripten_compute_dom_pk_code1151_q;
    wire [0:0] i_and4265_emscripten_compute_dom_pk_code1155_q;
    wire [0:0] i_and4276_emscripten_compute_dom_pk_code1159_q;
    wire [0:0] i_and4287_emscripten_compute_dom_pk_code1163_q;
    wire [0:0] i_and4299_emscripten_compute_dom_pk_code1167_q;
    wire [0:0] i_and4311_emscripten_compute_dom_pk_code1171_q;
    wire [0:0] i_and4323_emscripten_compute_dom_pk_code1174_q;
    wire [0:0] i_and4335_emscripten_compute_dom_pk_code645_q;
    wire [0:0] i_and_emscripten_compute_dom_pk_code644_q;
    wire [0:0] i_demorgan_emscripten_compute_dom_pk_code646_q;
    wire [0:0] i_do_directly_while_end_select_emscripten_compute_dom_pk_code6_q;
    wire [0:0] i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool14314_emscripten_compute_dom_pk_code5_out_dest_data_out_157_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool312_emscripten_compute_dom_pk_code3_out_dest_data_out_155_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code167_emscripten_compute_dom_pk_code1_out_dest_data_out_158_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code8_out_dest_data_out_158_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_emscripten_compute_dom_pk_code_1315_emscripten_compute_dom_pk_code9_out_dest_data_out_159_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_0158_emscripten_compute_dom_pk_code1173_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_1159_emscripten_compute_dom_pk_code1169_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_2160_emscripten_compute_dom_pk_code1165_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_3161_emscripten_compute_dom_pk_code1161_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_4162_emscripten_compute_dom_pk_code1157_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_5163_emscripten_compute_dom_pk_code1153_out_dest_data_out_6_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_6164_emscripten_compute_dom_pk_code1149_out_dest_data_out_7_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_7165_emscripten_compute_dom_pk_code1145_out_dest_data_out_8_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_8166_emscripten_compute_dom_pk_code1142_out_dest_data_out_9_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_9167_emscripten_compute_dom_pk_code1138_out_dest_data_out_10_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_a168_emscripten_compute_dom_pk_code1071_out_dest_data_out_11_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_left169_emscripten_compute_dom_pk_code978_out_dest_data_out_12_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_right170_emscripten_compute_dom_pk_code736_out_dest_data_out_13_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_down171_emscripten_compute_dom_pk_code709_out_dest_data_out_14_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_left172_emscripten_compute_dom_pk_code718_out_dest_data_out_15_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_right173_emscripten_compute_dom_pk_code715_out_dest_data_out_16_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_up174_emscripten_compute_dom_pk_code724_out_dest_data_out_17_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_down175_emscripten_compute_dom_pk_code752_out_dest_data_out_18_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_mute176_emscripten_compute_dom_pk_code769_out_dest_data_out_19_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_up177_emscripten_compute_dom_pk_code747_out_dest_data_out_20_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_b178_emscripten_compute_dom_pk_code1005_out_dest_data_out_21_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backquote179_emscripten_compute_dom_pk_code1029_out_dest_data_out_22_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backslash180_emscripten_compute_dom_pk_code1023_out_dest_data_out_23_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backspace181_emscripten_compute_dom_pk_code1129_out_dest_data_out_24_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_left182_emscripten_compute_dom_pk_code1083_out_dest_data_out_25_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_right183_emscripten_compute_dom_pk_code1080_out_dest_data_out_26_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_back184_emscripten_compute_dom_pk_code664_out_dest_data_out_27_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_favorites185_emscripten_compute_dom_pk_code676_out_dest_data_out_28_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_forward186_emscripten_compute_dom_pk_code667_out_dest_data_out_29_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_home187_emscripten_compute_dom_pk_code742_out_dest_data_out_30_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_refresh188_emscripten_compute_dom_pk_code673_out_dest_data_out_31_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_search189_emscripten_compute_dom_pk_code679_out_dest_data_out_32_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_stop190_emscripten_compute_dom_pk_code670_out_dest_data_out_33_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_c191_emscripten_compute_dom_pk_code1013_out_dest_data_out_34_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_caps_lock192_emscripten_compute_dom_pk_code972_out_dest_data_out_35_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_comma193_emscripten_compute_dom_pk_code993_out_dest_data_out_36_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_context_menu194_emscripten_compute_dom_pk_code685_out_dest_data_out_37_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_left195_emscripten_compute_dom_pk_code1074_out_dest_data_out_38_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_right196_emscripten_compute_dom_pk_code772_out_dest_data_out_39_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_convert197_emscripten_compute_dom_pk_code802_out_dest_data_out_40_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_copy198_emscripten_compute_dom_pk_code781_out_dest_data_out_41_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_cut199_emscripten_compute_dom_pk_code784_out_dest_data_out_42_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_d200_emscripten_compute_dom_pk_code1063_out_dest_data_out_43_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_delete201_emscripten_compute_dom_pk_code700_out_dest_data_out_44_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_e202_emscripten_compute_dom_pk_code1115_out_dest_data_out_45_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_eject203_emscripten_compute_dom_pk_code755_out_dest_data_out_46_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_end204_emscripten_compute_dom_pk_code712_out_dest_data_out_47_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_enter205_emscripten_compute_dom_pk_code1077_out_dest_data_out_48_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_equal206_emscripten_compute_dom_pk_code1132_out_dest_data_out_49_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_escape207_emscripten_compute_dom_pk_code1176_out_dest_data_out_50_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f10210_emscripten_compute_dom_pk_code935_out_dest_data_out_53_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f11211_emscripten_compute_dom_pk_code872_out_dest_data_out_54_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f1209_emscripten_compute_dom_pk_code969_out_dest_data_out_52_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f12212_emscripten_compute_dom_pk_code868_out_dest_data_out_55_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f13213_emscripten_compute_dom_pk_code861_out_dest_data_out_56_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f14214_emscripten_compute_dom_pk_code857_out_dest_data_out_57_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f15215_emscripten_compute_dom_pk_code853_out_dest_data_out_58_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f16216_emscripten_compute_dom_pk_code849_out_dest_data_out_59_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f17217_emscripten_compute_dom_pk_code845_out_dest_data_out_60_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f18218_emscripten_compute_dom_pk_code841_out_dest_data_out_61_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f19219_emscripten_compute_dom_pk_code837_out_dest_data_out_62_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f20221_emscripten_compute_dom_pk_code834_out_dest_data_out_64_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f208_emscripten_compute_dom_pk_code1059_out_dest_data_out_51_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f21222_emscripten_compute_dom_pk_code830_out_dest_data_out_65_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f2220_emscripten_compute_dom_pk_code965_out_dest_data_out_63_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f22223_emscripten_compute_dom_pk_code826_out_dest_data_out_66_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f23224_emscripten_compute_dom_pk_code822_out_dest_data_out_67_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f24225_emscripten_compute_dom_pk_code805_out_dest_data_out_68_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f3226_emscripten_compute_dom_pk_code961_out_dest_data_out_69_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f4227_emscripten_compute_dom_pk_code957_out_dest_data_out_70_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f5228_emscripten_compute_dom_pk_code953_out_dest_data_out_71_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f6229_emscripten_compute_dom_pk_code949_out_dest_data_out_72_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f7230_emscripten_compute_dom_pk_code945_out_dest_data_out_73_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f8231_emscripten_compute_dom_pk_code942_out_dest_data_out_74_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f9232_emscripten_compute_dom_pk_code938_out_dest_data_out_75_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_g233_emscripten_compute_dom_pk_code1055_out_dest_data_out_76_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_h234_emscripten_compute_dom_pk_code1051_out_dest_data_out_77_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_help235_emscripten_compute_dom_pk_code733_out_dest_data_out_78_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_home236_emscripten_compute_dom_pk_code727_out_dest_data_out_79_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_i237_emscripten_compute_dom_pk_code1095_out_dest_data_out_80_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_insert238_emscripten_compute_dom_pk_code703_out_dest_data_out_81_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_backslash239_emscripten_compute_dom_pk_code875_out_dest_data_out_82_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_ro240_emscripten_compute_dom_pk_code808_out_dest_data_out_83_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_yen241_emscripten_compute_dom_pk_code796_out_dest_data_out_84_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_j242_emscripten_compute_dom_pk_code1047_out_dest_data_out_85_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_k243_emscripten_compute_dom_pk_code1043_out_dest_data_out_86_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_kana_mode244_emscripten_compute_dom_pk_code818_out_dest_data_out_87_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_l245_emscripten_compute_dom_pk_code1039_out_dest_data_out_88_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_1246_emscripten_compute_dom_pk_code812_out_dest_data_out_89_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_2247_emscripten_compute_dom_pk_code815_out_dest_data_out_90_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_1248_emscripten_compute_dom_pk_code661_out_dest_data_out_91_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_2249_emscripten_compute_dom_pk_code764_out_dest_data_out_92_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_mail250_emscripten_compute_dom_pk_code657_out_dest_data_out_93_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_media_player251_emscripten_compute_dom_pk_code654_out_dest_data_out_94_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_m252_emscripten_compute_dom_pk_code997_out_dest_data_out_95_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_play_pause253_emscripten_compute_dom_pk_code761_out_dest_data_out_96_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_select254_emscripten_compute_dom_pk_code651_out_dest_data_out_97_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_stop255_emscripten_compute_dom_pk_code758_out_dest_data_out_98_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_next256_emscripten_compute_dom_pk_code778_out_dest_data_out_99_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_previous257_emscripten_compute_dom_pk_code787_out_dest_data_out_100_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_left258_emscripten_compute_dom_pk_code697_out_dest_data_out_101_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_right259_emscripten_compute_dom_pk_code691_out_dest_data_out_102_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_minus260_emscripten_compute_dom_pk_code1135_out_dest_data_out_103_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_n261_emscripten_compute_dom_pk_code1001_out_dest_data_out_104_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_non_convert262_emscripten_compute_dom_pk_code799_out_dest_data_out_105_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_num_lock281_emscripten_compute_dom_pk_code730_out_dest_data_out_124_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_0263_emscripten_compute_dom_pk_code885_out_dest_data_out_106_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_1264_emscripten_compute_dom_pk_code897_out_dest_data_out_107_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_2265_emscripten_compute_dom_pk_code893_out_dest_data_out_108_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_3266_emscripten_compute_dom_pk_code889_out_dest_data_out_109_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_4267_emscripten_compute_dom_pk_code912_out_dest_data_out_110_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_5268_emscripten_compute_dom_pk_code908_out_dest_data_out_111_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_6269_emscripten_compute_dom_pk_code904_out_dest_data_out_112_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_7270_emscripten_compute_dom_pk_code925_out_dest_data_out_113_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_8271_emscripten_compute_dom_pk_code922_out_dest_data_out_114_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_9272_emscripten_compute_dom_pk_code918_out_dest_data_out_115_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_add273_emscripten_compute_dom_pk_code900_out_dest_data_out_116_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_comma274_emscripten_compute_dom_pk_code793_out_dest_data_out_117_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_decimal275_emscripten_compute_dom_pk_code881_out_dest_data_out_118_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_divide276_emscripten_compute_dom_pk_code739_out_dest_data_out_119_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_enter277_emscripten_compute_dom_pk_code775_out_dest_data_out_120_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_equal278_emscripten_compute_dom_pk_code864_out_dest_data_out_121_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_multiply279_emscripten_compute_dom_pk_code981_out_dest_data_out_122_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_subtract280_emscripten_compute_dom_pk_code915_out_dest_data_out_123_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_o282_emscripten_compute_dom_pk_code1091_out_dest_data_out_125_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_left283_emscripten_compute_dom_pk_code694_out_dest_data_out_126_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_right284_emscripten_compute_dom_pk_code688_out_dest_data_out_127_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_p285_emscripten_compute_dom_pk_code1087_out_dest_data_out_128_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_down286_emscripten_compute_dom_pk_code706_out_dest_data_out_129_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_up287_emscripten_compute_dom_pk_code721_out_dest_data_out_130_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_paste288_emscripten_compute_dom_pk_code790_out_dest_data_out_131_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_pause289_emscripten_compute_dom_pk_code931_out_dest_data_out_132_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_period290_emscripten_compute_dom_pk_code990_out_dest_data_out_133_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_power291_emscripten_compute_dom_pk_code682_out_dest_data_out_134_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_print_screen292_emscripten_compute_dom_pk_code878_out_dest_data_out_135_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_q293_emscripten_compute_dom_pk_code1123_out_dest_data_out_136_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_quote294_emscripten_compute_dom_pk_code1032_out_dest_data_out_137_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_r295_emscripten_compute_dom_pk_code1111_out_dest_data_out_138_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_s296_emscripten_compute_dom_pk_code1067_out_dest_data_out_139_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_scroll_lock297_emscripten_compute_dom_pk_code928_out_dest_data_out_140_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_semicolon298_emscripten_compute_dom_pk_code1035_out_dest_data_out_141_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_left299_emscripten_compute_dom_pk_code1026_out_dest_data_out_142_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_right300_emscripten_compute_dom_pk_code984_out_dest_data_out_143_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_slash301_emscripten_compute_dom_pk_code987_out_dest_data_out_144_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_space302_emscripten_compute_dom_pk_code975_out_dest_data_out_145_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_t303_emscripten_compute_dom_pk_code1107_out_dest_data_out_146_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_tab304_emscripten_compute_dom_pk_code1126_out_dest_data_out_147_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_u305_emscripten_compute_dom_pk_code1099_out_dest_data_out_148_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_unknown306_emscripten_compute_dom_pk_code648_out_dest_data_out_149_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_v307_emscripten_compute_dom_pk_code1009_out_dest_data_out_150_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_w308_emscripten_compute_dom_pk_code1119_out_dest_data_out_151_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_x309_emscripten_compute_dom_pk_code1017_out_dest_data_out_152_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_y310_emscripten_compute_dom_pk_code1103_out_dest_data_out_153_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_z311_emscripten_compute_dom_pk_code1020_out_dest_data_out_154_0;
    wire [0:0] i_not_emscripten_compute_dom_pk_code2_q;
    wire [0:0] i_not_pivot129_emscripten_compute_dom_pk_code554_q;
    wire [0:0] i_not_pivot273_emscripten_compute_dom_pk_code584_q;
    wire [0:0] i_not_tobool_emscripten_compute_dom_pk_code4_q;
    wire [33:0] i_pivot101_emscripten_compute_dom_pk_code167_a;
    wire [33:0] i_pivot101_emscripten_compute_dom_pk_code167_b;
    logic [33:0] i_pivot101_emscripten_compute_dom_pk_code167_o;
    wire [0:0] i_pivot101_emscripten_compute_dom_pk_code167_c;
    wire [33:0] i_pivot103_emscripten_compute_dom_pk_code67_a;
    wire [33:0] i_pivot103_emscripten_compute_dom_pk_code67_b;
    logic [33:0] i_pivot103_emscripten_compute_dom_pk_code67_o;
    wire [0:0] i_pivot103_emscripten_compute_dom_pk_code67_c;
    wire [33:0] i_pivot105_emscripten_compute_dom_pk_code31_a;
    wire [33:0] i_pivot105_emscripten_compute_dom_pk_code31_b;
    logic [33:0] i_pivot105_emscripten_compute_dom_pk_code31_o;
    wire [0:0] i_pivot105_emscripten_compute_dom_pk_code31_c;
    wire [33:0] i_pivot107_emscripten_compute_dom_pk_code386_a;
    wire [33:0] i_pivot107_emscripten_compute_dom_pk_code386_b;
    logic [33:0] i_pivot107_emscripten_compute_dom_pk_code386_o;
    wire [0:0] i_pivot107_emscripten_compute_dom_pk_code386_c;
    wire [33:0] i_pivot109_emscripten_compute_dom_pk_code392_a;
    wire [33:0] i_pivot109_emscripten_compute_dom_pk_code392_b;
    logic [33:0] i_pivot109_emscripten_compute_dom_pk_code392_o;
    wire [0:0] i_pivot109_emscripten_compute_dom_pk_code392_c;
    wire [33:0] i_pivot111_emscripten_compute_dom_pk_code384_a;
    wire [33:0] i_pivot111_emscripten_compute_dom_pk_code384_b;
    logic [33:0] i_pivot111_emscripten_compute_dom_pk_code384_o;
    wire [0:0] i_pivot111_emscripten_compute_dom_pk_code384_c;
    wire [33:0] i_pivot113_emscripten_compute_dom_pk_code161_a;
    wire [33:0] i_pivot113_emscripten_compute_dom_pk_code161_b;
    logic [33:0] i_pivot113_emscripten_compute_dom_pk_code161_o;
    wire [0:0] i_pivot113_emscripten_compute_dom_pk_code161_c;
    wire [33:0] i_pivot115_emscripten_compute_dom_pk_code390_a;
    wire [33:0] i_pivot115_emscripten_compute_dom_pk_code390_b;
    logic [33:0] i_pivot115_emscripten_compute_dom_pk_code390_o;
    wire [0:0] i_pivot115_emscripten_compute_dom_pk_code390_c;
    wire [33:0] i_pivot11_emscripten_compute_dom_pk_code73_a;
    wire [33:0] i_pivot11_emscripten_compute_dom_pk_code73_b;
    logic [33:0] i_pivot11_emscripten_compute_dom_pk_code73_o;
    wire [0:0] i_pivot11_emscripten_compute_dom_pk_code73_c;
    wire [33:0] i_pivot123_emscripten_compute_dom_pk_code143_a;
    wire [33:0] i_pivot123_emscripten_compute_dom_pk_code143_b;
    logic [33:0] i_pivot123_emscripten_compute_dom_pk_code143_o;
    wire [0:0] i_pivot123_emscripten_compute_dom_pk_code143_c;
    wire [33:0] i_pivot125_emscripten_compute_dom_pk_code169_a;
    wire [33:0] i_pivot125_emscripten_compute_dom_pk_code169_b;
    logic [33:0] i_pivot125_emscripten_compute_dom_pk_code169_o;
    wire [0:0] i_pivot125_emscripten_compute_dom_pk_code169_c;
    wire [33:0] i_pivot127_emscripten_compute_dom_pk_code165_a;
    wire [33:0] i_pivot127_emscripten_compute_dom_pk_code165_b;
    logic [33:0] i_pivot127_emscripten_compute_dom_pk_code165_o;
    wire [0:0] i_pivot127_emscripten_compute_dom_pk_code165_c;
    wire [33:0] i_pivot129_emscripten_compute_dom_pk_code65_a;
    wire [33:0] i_pivot129_emscripten_compute_dom_pk_code65_b;
    logic [33:0] i_pivot129_emscripten_compute_dom_pk_code65_o;
    wire [0:0] i_pivot129_emscripten_compute_dom_pk_code65_c;
    wire [33:0] i_pivot131_emscripten_compute_dom_pk_code29_a;
    wire [33:0] i_pivot131_emscripten_compute_dom_pk_code29_b;
    logic [33:0] i_pivot131_emscripten_compute_dom_pk_code29_o;
    wire [0:0] i_pivot131_emscripten_compute_dom_pk_code29_c;
    wire [33:0] i_pivot133_emscripten_compute_dom_pk_code17_a;
    wire [33:0] i_pivot133_emscripten_compute_dom_pk_code17_b;
    logic [33:0] i_pivot133_emscripten_compute_dom_pk_code17_o;
    wire [0:0] i_pivot133_emscripten_compute_dom_pk_code17_c;
    wire [33:0] i_pivot139_emscripten_compute_dom_pk_code171_a;
    wire [33:0] i_pivot139_emscripten_compute_dom_pk_code171_b;
    logic [33:0] i_pivot139_emscripten_compute_dom_pk_code171_o;
    wire [0:0] i_pivot139_emscripten_compute_dom_pk_code171_c;
    wire [33:0] i_pivot145_emscripten_compute_dom_pk_code211_a;
    wire [33:0] i_pivot145_emscripten_compute_dom_pk_code211_b;
    logic [33:0] i_pivot145_emscripten_compute_dom_pk_code211_o;
    wire [0:0] i_pivot145_emscripten_compute_dom_pk_code211_c;
    wire [33:0] i_pivot147_emscripten_compute_dom_pk_code83_a;
    wire [33:0] i_pivot147_emscripten_compute_dom_pk_code83_b;
    logic [33:0] i_pivot147_emscripten_compute_dom_pk_code83_o;
    wire [0:0] i_pivot147_emscripten_compute_dom_pk_code83_c;
    wire [33:0] i_pivot153_emscripten_compute_dom_pk_code207_a;
    wire [33:0] i_pivot153_emscripten_compute_dom_pk_code207_b;
    logic [33:0] i_pivot153_emscripten_compute_dom_pk_code207_o;
    wire [0:0] i_pivot153_emscripten_compute_dom_pk_code207_c;
    wire [33:0] i_pivot161_emscripten_compute_dom_pk_code141_a;
    wire [33:0] i_pivot161_emscripten_compute_dom_pk_code141_b;
    logic [33:0] i_pivot161_emscripten_compute_dom_pk_code141_o;
    wire [0:0] i_pivot161_emscripten_compute_dom_pk_code141_c;
    wire [33:0] i_pivot163_emscripten_compute_dom_pk_code129_a;
    wire [33:0] i_pivot163_emscripten_compute_dom_pk_code129_b;
    logic [33:0] i_pivot163_emscripten_compute_dom_pk_code129_o;
    wire [0:0] i_pivot163_emscripten_compute_dom_pk_code129_c;
    wire [33:0] i_pivot165_emscripten_compute_dom_pk_code79_a;
    wire [33:0] i_pivot165_emscripten_compute_dom_pk_code79_b;
    logic [33:0] i_pivot165_emscripten_compute_dom_pk_code79_o;
    wire [0:0] i_pivot165_emscripten_compute_dom_pk_code79_c;
    wire [33:0] i_pivot167_emscripten_compute_dom_pk_code37_a;
    wire [33:0] i_pivot167_emscripten_compute_dom_pk_code37_b;
    logic [33:0] i_pivot167_emscripten_compute_dom_pk_code37_o;
    wire [0:0] i_pivot167_emscripten_compute_dom_pk_code37_c;
    wire [33:0] i_pivot173_emscripten_compute_dom_pk_code109_a;
    wire [33:0] i_pivot173_emscripten_compute_dom_pk_code109_b;
    logic [33:0] i_pivot173_emscripten_compute_dom_pk_code109_o;
    wire [0:0] i_pivot173_emscripten_compute_dom_pk_code109_c;
    wire [33:0] i_pivot17_emscripten_compute_dom_pk_code199_a;
    wire [33:0] i_pivot17_emscripten_compute_dom_pk_code199_b;
    logic [33:0] i_pivot17_emscripten_compute_dom_pk_code199_o;
    wire [0:0] i_pivot17_emscripten_compute_dom_pk_code199_c;
    wire [33:0] i_pivot181_emscripten_compute_dom_pk_code197_a;
    wire [33:0] i_pivot181_emscripten_compute_dom_pk_code197_b;
    logic [33:0] i_pivot181_emscripten_compute_dom_pk_code197_o;
    wire [0:0] i_pivot181_emscripten_compute_dom_pk_code197_c;
    wire [33:0] i_pivot183_emscripten_compute_dom_pk_code127_a;
    wire [33:0] i_pivot183_emscripten_compute_dom_pk_code127_b;
    logic [33:0] i_pivot183_emscripten_compute_dom_pk_code127_o;
    wire [0:0] i_pivot183_emscripten_compute_dom_pk_code127_c;
    wire [33:0] i_pivot185_emscripten_compute_dom_pk_code53_a;
    wire [33:0] i_pivot185_emscripten_compute_dom_pk_code53_b;
    logic [33:0] i_pivot185_emscripten_compute_dom_pk_code53_o;
    wire [0:0] i_pivot185_emscripten_compute_dom_pk_code53_c;
    wire [33:0] i_pivot191_emscripten_compute_dom_pk_code201_a;
    wire [33:0] i_pivot191_emscripten_compute_dom_pk_code201_b;
    logic [33:0] i_pivot191_emscripten_compute_dom_pk_code201_o;
    wire [0:0] i_pivot191_emscripten_compute_dom_pk_code201_c;
    wire [33:0] i_pivot199_emscripten_compute_dom_pk_code145_a;
    wire [33:0] i_pivot199_emscripten_compute_dom_pk_code145_b;
    logic [33:0] i_pivot199_emscripten_compute_dom_pk_code145_o;
    wire [0:0] i_pivot199_emscripten_compute_dom_pk_code145_c;
    wire [33:0] i_pivot201_emscripten_compute_dom_pk_code131_a;
    wire [33:0] i_pivot201_emscripten_compute_dom_pk_code131_b;
    logic [33:0] i_pivot201_emscripten_compute_dom_pk_code131_o;
    wire [0:0] i_pivot201_emscripten_compute_dom_pk_code131_c;
    wire [33:0] i_pivot203_emscripten_compute_dom_pk_code77_a;
    wire [33:0] i_pivot203_emscripten_compute_dom_pk_code77_b;
    logic [33:0] i_pivot203_emscripten_compute_dom_pk_code77_o;
    wire [0:0] i_pivot203_emscripten_compute_dom_pk_code77_c;
    wire [33:0] i_pivot205_emscripten_compute_dom_pk_code35_a;
    wire [33:0] i_pivot205_emscripten_compute_dom_pk_code35_b;
    logic [33:0] i_pivot205_emscripten_compute_dom_pk_code35_o;
    wire [0:0] i_pivot205_emscripten_compute_dom_pk_code35_c;
    wire [33:0] i_pivot207_emscripten_compute_dom_pk_code19_a;
    wire [33:0] i_pivot207_emscripten_compute_dom_pk_code19_b;
    logic [33:0] i_pivot207_emscripten_compute_dom_pk_code19_o;
    wire [0:0] i_pivot207_emscripten_compute_dom_pk_code19_c;
    wire [33:0] i_pivot211_emscripten_compute_dom_pk_code465_a;
    wire [33:0] i_pivot211_emscripten_compute_dom_pk_code465_b;
    logic [33:0] i_pivot211_emscripten_compute_dom_pk_code465_o;
    wire [0:0] i_pivot211_emscripten_compute_dom_pk_code465_c;
    wire [33:0] i_pivot213_emscripten_compute_dom_pk_code463_a;
    wire [33:0] i_pivot213_emscripten_compute_dom_pk_code463_b;
    logic [33:0] i_pivot213_emscripten_compute_dom_pk_code463_o;
    wire [0:0] i_pivot213_emscripten_compute_dom_pk_code463_c;
    wire [33:0] i_pivot215_emscripten_compute_dom_pk_code442_a;
    wire [33:0] i_pivot215_emscripten_compute_dom_pk_code442_b;
    logic [33:0] i_pivot215_emscripten_compute_dom_pk_code442_o;
    wire [0:0] i_pivot215_emscripten_compute_dom_pk_code442_c;
    wire [33:0] i_pivot217_emscripten_compute_dom_pk_code205_a;
    wire [33:0] i_pivot217_emscripten_compute_dom_pk_code205_b;
    logic [33:0] i_pivot217_emscripten_compute_dom_pk_code205_o;
    wire [0:0] i_pivot217_emscripten_compute_dom_pk_code205_c;
    wire [33:0] i_pivot219_emscripten_compute_dom_pk_code485_a;
    wire [33:0] i_pivot219_emscripten_compute_dom_pk_code485_b;
    logic [33:0] i_pivot219_emscripten_compute_dom_pk_code485_o;
    wire [0:0] i_pivot219_emscripten_compute_dom_pk_code485_c;
    wire [33:0] i_pivot221_emscripten_compute_dom_pk_code477_a;
    wire [33:0] i_pivot221_emscripten_compute_dom_pk_code477_b;
    logic [33:0] i_pivot221_emscripten_compute_dom_pk_code477_o;
    wire [0:0] i_pivot221_emscripten_compute_dom_pk_code477_c;
    wire [33:0] i_pivot223_emscripten_compute_dom_pk_code461_a;
    wire [33:0] i_pivot223_emscripten_compute_dom_pk_code461_b;
    logic [33:0] i_pivot223_emscripten_compute_dom_pk_code461_o;
    wire [0:0] i_pivot223_emscripten_compute_dom_pk_code461_c;
    wire [33:0] i_pivot225_emscripten_compute_dom_pk_code217_a;
    wire [33:0] i_pivot225_emscripten_compute_dom_pk_code217_b;
    logic [33:0] i_pivot225_emscripten_compute_dom_pk_code217_o;
    wire [0:0] i_pivot225_emscripten_compute_dom_pk_code217_c;
    wire [33:0] i_pivot227_emscripten_compute_dom_pk_code87_a;
    wire [33:0] i_pivot227_emscripten_compute_dom_pk_code87_b;
    logic [33:0] i_pivot227_emscripten_compute_dom_pk_code87_o;
    wire [0:0] i_pivot227_emscripten_compute_dom_pk_code87_c;
    wire [33:0] i_pivot229_emscripten_compute_dom_pk_code459_a;
    wire [33:0] i_pivot229_emscripten_compute_dom_pk_code459_b;
    logic [33:0] i_pivot229_emscripten_compute_dom_pk_code459_o;
    wire [0:0] i_pivot229_emscripten_compute_dom_pk_code459_c;
    wire [33:0] i_pivot231_emscripten_compute_dom_pk_code440_a;
    wire [33:0] i_pivot231_emscripten_compute_dom_pk_code440_b;
    logic [33:0] i_pivot231_emscripten_compute_dom_pk_code440_o;
    wire [0:0] i_pivot231_emscripten_compute_dom_pk_code440_c;
    wire [33:0] i_pivot233_emscripten_compute_dom_pk_code457_a;
    wire [33:0] i_pivot233_emscripten_compute_dom_pk_code457_b;
    logic [33:0] i_pivot233_emscripten_compute_dom_pk_code457_o;
    wire [0:0] i_pivot233_emscripten_compute_dom_pk_code457_c;
    wire [33:0] i_pivot235_emscripten_compute_dom_pk_code203_a;
    wire [33:0] i_pivot235_emscripten_compute_dom_pk_code203_b;
    logic [33:0] i_pivot235_emscripten_compute_dom_pk_code203_o;
    wire [0:0] i_pivot235_emscripten_compute_dom_pk_code203_c;
    wire [33:0] i_pivot237_emscripten_compute_dom_pk_code475_a;
    wire [33:0] i_pivot237_emscripten_compute_dom_pk_code475_b;
    logic [33:0] i_pivot237_emscripten_compute_dom_pk_code475_o;
    wire [0:0] i_pivot237_emscripten_compute_dom_pk_code475_c;
    wire [33:0] i_pivot239_emscripten_compute_dom_pk_code483_a;
    wire [33:0] i_pivot239_emscripten_compute_dom_pk_code483_b;
    logic [33:0] i_pivot239_emscripten_compute_dom_pk_code483_o;
    wire [0:0] i_pivot239_emscripten_compute_dom_pk_code483_c;
    wire [33:0] i_pivot23_emscripten_compute_dom_pk_code229_a;
    wire [33:0] i_pivot23_emscripten_compute_dom_pk_code229_b;
    logic [33:0] i_pivot23_emscripten_compute_dom_pk_code229_o;
    wire [0:0] i_pivot23_emscripten_compute_dom_pk_code229_c;
    wire [33:0] i_pivot241_emscripten_compute_dom_pk_code489_a;
    wire [33:0] i_pivot241_emscripten_compute_dom_pk_code489_b;
    logic [33:0] i_pivot241_emscripten_compute_dom_pk_code489_o;
    wire [0:0] i_pivot241_emscripten_compute_dom_pk_code489_c;
    wire [33:0] i_pivot243_emscripten_compute_dom_pk_code221_a;
    wire [33:0] i_pivot243_emscripten_compute_dom_pk_code221_b;
    logic [33:0] i_pivot243_emscripten_compute_dom_pk_code221_o;
    wire [0:0] i_pivot243_emscripten_compute_dom_pk_code221_c;
    wire [33:0] i_pivot245_emscripten_compute_dom_pk_code91_a;
    wire [33:0] i_pivot245_emscripten_compute_dom_pk_code91_b;
    logic [33:0] i_pivot245_emscripten_compute_dom_pk_code91_o;
    wire [0:0] i_pivot245_emscripten_compute_dom_pk_code91_c;
    wire [33:0] i_pivot247_emscripten_compute_dom_pk_code43_a;
    wire [33:0] i_pivot247_emscripten_compute_dom_pk_code43_b;
    logic [33:0] i_pivot247_emscripten_compute_dom_pk_code43_o;
    wire [0:0] i_pivot247_emscripten_compute_dom_pk_code43_c;
    wire [33:0] i_pivot249_emscripten_compute_dom_pk_code21_a;
    wire [33:0] i_pivot249_emscripten_compute_dom_pk_code21_b;
    logic [33:0] i_pivot249_emscripten_compute_dom_pk_code21_o;
    wire [0:0] i_pivot249_emscripten_compute_dom_pk_code21_c;
    wire [33:0] i_pivot251_emscripten_compute_dom_pk_code13_a;
    wire [33:0] i_pivot251_emscripten_compute_dom_pk_code13_b;
    logic [33:0] i_pivot251_emscripten_compute_dom_pk_code13_o;
    wire [0:0] i_pivot251_emscripten_compute_dom_pk_code13_c;
    wire [33:0] i_pivot253_emscripten_compute_dom_pk_code481_a;
    wire [33:0] i_pivot253_emscripten_compute_dom_pk_code481_b;
    logic [33:0] i_pivot253_emscripten_compute_dom_pk_code481_o;
    wire [0:0] i_pivot253_emscripten_compute_dom_pk_code481_c;
    wire [33:0] i_pivot255_emscripten_compute_dom_pk_code487_a;
    wire [33:0] i_pivot255_emscripten_compute_dom_pk_code487_b;
    logic [33:0] i_pivot255_emscripten_compute_dom_pk_code487_o;
    wire [0:0] i_pivot255_emscripten_compute_dom_pk_code487_c;
    wire [33:0] i_pivot257_emscripten_compute_dom_pk_code219_a;
    wire [33:0] i_pivot257_emscripten_compute_dom_pk_code219_b;
    logic [33:0] i_pivot257_emscripten_compute_dom_pk_code219_o;
    wire [0:0] i_pivot257_emscripten_compute_dom_pk_code219_c;
    wire [33:0] i_pivot259_emscripten_compute_dom_pk_code479_a;
    wire [33:0] i_pivot259_emscripten_compute_dom_pk_code479_b;
    logic [33:0] i_pivot259_emscripten_compute_dom_pk_code479_o;
    wire [0:0] i_pivot259_emscripten_compute_dom_pk_code479_c;
    wire [33:0] i_pivot25_emscripten_compute_dom_pk_code351_a;
    wire [33:0] i_pivot25_emscripten_compute_dom_pk_code351_b;
    logic [33:0] i_pivot25_emscripten_compute_dom_pk_code351_o;
    wire [0:0] i_pivot25_emscripten_compute_dom_pk_code351_c;
    wire [33:0] i_pivot267_emscripten_compute_dom_pk_code121_a;
    wire [33:0] i_pivot267_emscripten_compute_dom_pk_code121_b;
    logic [33:0] i_pivot267_emscripten_compute_dom_pk_code121_o;
    wire [0:0] i_pivot267_emscripten_compute_dom_pk_code121_c;
    wire [33:0] i_pivot269_emscripten_compute_dom_pk_code193_a;
    wire [33:0] i_pivot269_emscripten_compute_dom_pk_code193_b;
    logic [33:0] i_pivot269_emscripten_compute_dom_pk_code193_o;
    wire [0:0] i_pivot269_emscripten_compute_dom_pk_code193_c;
    wire [33:0] i_pivot271_emscripten_compute_dom_pk_code215_a;
    wire [33:0] i_pivot271_emscripten_compute_dom_pk_code215_b;
    logic [33:0] i_pivot271_emscripten_compute_dom_pk_code215_o;
    wire [0:0] i_pivot271_emscripten_compute_dom_pk_code215_c;
    wire [33:0] i_pivot273_emscripten_compute_dom_pk_code89_a;
    wire [33:0] i_pivot273_emscripten_compute_dom_pk_code89_b;
    logic [33:0] i_pivot273_emscripten_compute_dom_pk_code89_o;
    wire [0:0] i_pivot273_emscripten_compute_dom_pk_code89_c;
    wire [33:0] i_pivot279_emscripten_compute_dom_pk_code225_a;
    wire [33:0] i_pivot279_emscripten_compute_dom_pk_code225_b;
    logic [33:0] i_pivot279_emscripten_compute_dom_pk_code225_o;
    wire [0:0] i_pivot279_emscripten_compute_dom_pk_code225_c;
    wire [33:0] i_pivot27_emscripten_compute_dom_pk_code151_a;
    wire [33:0] i_pivot27_emscripten_compute_dom_pk_code151_b;
    logic [33:0] i_pivot27_emscripten_compute_dom_pk_code151_o;
    wire [0:0] i_pivot27_emscripten_compute_dom_pk_code151_c;
    wire [33:0] i_pivot285_emscripten_compute_dom_pk_code247_a;
    wire [33:0] i_pivot285_emscripten_compute_dom_pk_code247_b;
    logic [33:0] i_pivot285_emscripten_compute_dom_pk_code247_o;
    wire [0:0] i_pivot285_emscripten_compute_dom_pk_code247_c;
    wire [33:0] i_pivot287_emscripten_compute_dom_pk_code195_a;
    wire [33:0] i_pivot287_emscripten_compute_dom_pk_code195_b;
    logic [33:0] i_pivot287_emscripten_compute_dom_pk_code195_o;
    wire [0:0] i_pivot287_emscripten_compute_dom_pk_code195_c;
    wire [33:0] i_pivot289_emscripten_compute_dom_pk_code95_a;
    wire [33:0] i_pivot289_emscripten_compute_dom_pk_code95_b;
    logic [33:0] i_pivot289_emscripten_compute_dom_pk_code95_o;
    wire [0:0] i_pivot289_emscripten_compute_dom_pk_code95_c;
    wire [33:0] i_pivot295_emscripten_compute_dom_pk_code137_a;
    wire [33:0] i_pivot295_emscripten_compute_dom_pk_code137_b;
    logic [33:0] i_pivot295_emscripten_compute_dom_pk_code137_o;
    wire [0:0] i_pivot295_emscripten_compute_dom_pk_code137_c;
    wire [33:0] i_pivot29_emscripten_compute_dom_pk_code59_a;
    wire [33:0] i_pivot29_emscripten_compute_dom_pk_code59_b;
    logic [33:0] i_pivot29_emscripten_compute_dom_pk_code59_o;
    wire [0:0] i_pivot29_emscripten_compute_dom_pk_code59_c;
    wire [33:0] i_pivot303_emscripten_compute_dom_pk_code163_a;
    wire [33:0] i_pivot303_emscripten_compute_dom_pk_code163_b;
    logic [33:0] i_pivot303_emscripten_compute_dom_pk_code163_o;
    wire [0:0] i_pivot303_emscripten_compute_dom_pk_code163_c;
    wire [33:0] i_pivot305_emscripten_compute_dom_pk_code117_a;
    wire [33:0] i_pivot305_emscripten_compute_dom_pk_code117_b;
    logic [33:0] i_pivot305_emscripten_compute_dom_pk_code117_o;
    wire [0:0] i_pivot305_emscripten_compute_dom_pk_code117_c;
    wire [33:0] i_pivot307_emscripten_compute_dom_pk_code57_a;
    wire [33:0] i_pivot307_emscripten_compute_dom_pk_code57_b;
    logic [33:0] i_pivot307_emscripten_compute_dom_pk_code57_o;
    wire [0:0] i_pivot307_emscripten_compute_dom_pk_code57_c;
    wire [33:0] i_pivot309_emscripten_compute_dom_pk_code45_a;
    wire [33:0] i_pivot309_emscripten_compute_dom_pk_code45_b;
    logic [33:0] i_pivot309_emscripten_compute_dom_pk_code45_o;
    wire [0:0] i_pivot309_emscripten_compute_dom_pk_code45_c;
    wire [33:0] i_pivot311_emscripten_compute_dom_pk_code41_a;
    wire [33:0] i_pivot311_emscripten_compute_dom_pk_code41_b;
    logic [33:0] i_pivot311_emscripten_compute_dom_pk_code41_o;
    wire [0:0] i_pivot311_emscripten_compute_dom_pk_code41_c;
    wire [33:0] i_pivot317_emscripten_compute_dom_pk_code135_a;
    wire [33:0] i_pivot317_emscripten_compute_dom_pk_code135_b;
    logic [33:0] i_pivot317_emscripten_compute_dom_pk_code135_o;
    wire [0:0] i_pivot317_emscripten_compute_dom_pk_code135_c;
    wire [33:0] i_pivot325_emscripten_compute_dom_pk_code111_a;
    wire [33:0] i_pivot325_emscripten_compute_dom_pk_code111_b;
    logic [33:0] i_pivot325_emscripten_compute_dom_pk_code111_o;
    wire [0:0] i_pivot325_emscripten_compute_dom_pk_code111_c;
    wire [33:0] i_pivot327_emscripten_compute_dom_pk_code105_a;
    wire [33:0] i_pivot327_emscripten_compute_dom_pk_code105_b;
    logic [33:0] i_pivot327_emscripten_compute_dom_pk_code105_o;
    wire [0:0] i_pivot327_emscripten_compute_dom_pk_code105_c;
    wire [33:0] i_pivot329_emscripten_compute_dom_pk_code55_a;
    wire [33:0] i_pivot329_emscripten_compute_dom_pk_code55_b;
    logic [33:0] i_pivot329_emscripten_compute_dom_pk_code55_o;
    wire [0:0] i_pivot329_emscripten_compute_dom_pk_code55_c;
    wire [33:0] i_pivot335_emscripten_compute_dom_pk_code213_a;
    wire [33:0] i_pivot335_emscripten_compute_dom_pk_code213_b;
    logic [33:0] i_pivot335_emscripten_compute_dom_pk_code213_o;
    wire [0:0] i_pivot335_emscripten_compute_dom_pk_code213_c;
    wire [33:0] i_pivot343_emscripten_compute_dom_pk_code125_a;
    wire [33:0] i_pivot343_emscripten_compute_dom_pk_code125_b;
    logic [33:0] i_pivot343_emscripten_compute_dom_pk_code125_o;
    wire [0:0] i_pivot343_emscripten_compute_dom_pk_code125_c;
    wire [33:0] i_pivot345_emscripten_compute_dom_pk_code107_a;
    wire [33:0] i_pivot345_emscripten_compute_dom_pk_code107_b;
    logic [33:0] i_pivot345_emscripten_compute_dom_pk_code107_o;
    wire [0:0] i_pivot345_emscripten_compute_dom_pk_code107_c;
    wire [33:0] i_pivot347_emscripten_compute_dom_pk_code85_a;
    wire [33:0] i_pivot347_emscripten_compute_dom_pk_code85_b;
    logic [33:0] i_pivot347_emscripten_compute_dom_pk_code85_o;
    wire [0:0] i_pivot347_emscripten_compute_dom_pk_code85_c;
    wire [33:0] i_pivot349_emscripten_compute_dom_pk_code39_a;
    wire [33:0] i_pivot349_emscripten_compute_dom_pk_code39_b;
    logic [33:0] i_pivot349_emscripten_compute_dom_pk_code39_o;
    wire [0:0] i_pivot349_emscripten_compute_dom_pk_code39_c;
    wire [33:0] i_pivot355_emscripten_compute_dom_pk_code187_a;
    wire [33:0] i_pivot355_emscripten_compute_dom_pk_code187_b;
    logic [33:0] i_pivot355_emscripten_compute_dom_pk_code187_o;
    wire [0:0] i_pivot355_emscripten_compute_dom_pk_code187_c;
    wire [33:0] i_pivot35_emscripten_compute_dom_pk_code209_a;
    wire [33:0] i_pivot35_emscripten_compute_dom_pk_code209_b;
    logic [33:0] i_pivot35_emscripten_compute_dom_pk_code209_o;
    wire [0:0] i_pivot35_emscripten_compute_dom_pk_code209_c;
    wire [33:0] i_pivot363_emscripten_compute_dom_pk_code149_a;
    wire [33:0] i_pivot363_emscripten_compute_dom_pk_code149_b;
    logic [33:0] i_pivot363_emscripten_compute_dom_pk_code149_o;
    wire [0:0] i_pivot363_emscripten_compute_dom_pk_code149_c;
    wire [33:0] i_pivot365_emscripten_compute_dom_pk_code113_a;
    wire [33:0] i_pivot365_emscripten_compute_dom_pk_code113_b;
    logic [33:0] i_pivot365_emscripten_compute_dom_pk_code113_o;
    wire [0:0] i_pivot365_emscripten_compute_dom_pk_code113_c;
    wire [33:0] i_pivot367_emscripten_compute_dom_pk_code75_a;
    wire [33:0] i_pivot367_emscripten_compute_dom_pk_code75_b;
    logic [33:0] i_pivot367_emscripten_compute_dom_pk_code75_o;
    wire [0:0] i_pivot367_emscripten_compute_dom_pk_code75_c;
    wire [33:0] i_pivot371_emscripten_compute_dom_pk_code501_a;
    wire [33:0] i_pivot371_emscripten_compute_dom_pk_code501_b;
    logic [33:0] i_pivot371_emscripten_compute_dom_pk_code501_o;
    wire [0:0] i_pivot371_emscripten_compute_dom_pk_code501_c;
    wire [33:0] i_pivot375_emscripten_compute_dom_pk_code511_a;
    wire [33:0] i_pivot375_emscripten_compute_dom_pk_code511_b;
    logic [33:0] i_pivot375_emscripten_compute_dom_pk_code511_o;
    wire [0:0] i_pivot375_emscripten_compute_dom_pk_code511_c;
    wire [33:0] i_pivot377_emscripten_compute_dom_pk_code237_a;
    wire [33:0] i_pivot377_emscripten_compute_dom_pk_code237_b;
    logic [33:0] i_pivot377_emscripten_compute_dom_pk_code237_o;
    wire [0:0] i_pivot377_emscripten_compute_dom_pk_code237_c;
    wire [33:0] i_pivot379_emscripten_compute_dom_pk_code231_a;
    wire [33:0] i_pivot379_emscripten_compute_dom_pk_code231_b;
    logic [33:0] i_pivot379_emscripten_compute_dom_pk_code231_o;
    wire [0:0] i_pivot379_emscripten_compute_dom_pk_code231_c;
    wire [33:0] i_pivot381_emscripten_compute_dom_pk_code97_a;
    wire [33:0] i_pivot381_emscripten_compute_dom_pk_code97_b;
    logic [33:0] i_pivot381_emscripten_compute_dom_pk_code97_o;
    wire [0:0] i_pivot381_emscripten_compute_dom_pk_code97_c;
    wire [33:0] i_pivot383_emscripten_compute_dom_pk_code47_a;
    wire [33:0] i_pivot383_emscripten_compute_dom_pk_code47_b;
    logic [33:0] i_pivot383_emscripten_compute_dom_pk_code47_o;
    wire [0:0] i_pivot383_emscripten_compute_dom_pk_code47_c;
    wire [33:0] i_pivot385_emscripten_compute_dom_pk_code23_a;
    wire [33:0] i_pivot385_emscripten_compute_dom_pk_code23_b;
    logic [33:0] i_pivot385_emscripten_compute_dom_pk_code23_o;
    wire [0:0] i_pivot385_emscripten_compute_dom_pk_code23_c;
    wire [33:0] i_pivot387_emscripten_compute_dom_pk_code509_a;
    wire [33:0] i_pivot387_emscripten_compute_dom_pk_code509_b;
    logic [33:0] i_pivot387_emscripten_compute_dom_pk_code509_o;
    wire [0:0] i_pivot387_emscripten_compute_dom_pk_code509_c;
    wire [33:0] i_pivot389_emscripten_compute_dom_pk_code505_a;
    wire [33:0] i_pivot389_emscripten_compute_dom_pk_code505_b;
    logic [33:0] i_pivot389_emscripten_compute_dom_pk_code505_o;
    wire [0:0] i_pivot389_emscripten_compute_dom_pk_code505_c;
    wire [33:0] i_pivot391_emscripten_compute_dom_pk_code507_a;
    wire [33:0] i_pivot391_emscripten_compute_dom_pk_code507_b;
    logic [33:0] i_pivot391_emscripten_compute_dom_pk_code507_o;
    wire [0:0] i_pivot391_emscripten_compute_dom_pk_code507_c;
    wire [33:0] i_pivot393_emscripten_compute_dom_pk_code235_a;
    wire [33:0] i_pivot393_emscripten_compute_dom_pk_code235_b;
    logic [33:0] i_pivot393_emscripten_compute_dom_pk_code235_o;
    wire [0:0] i_pivot393_emscripten_compute_dom_pk_code235_c;
    wire [33:0] i_pivot399_emscripten_compute_dom_pk_code233_a;
    wire [33:0] i_pivot399_emscripten_compute_dom_pk_code233_b;
    logic [33:0] i_pivot399_emscripten_compute_dom_pk_code233_o;
    wire [0:0] i_pivot399_emscripten_compute_dom_pk_code233_c;
    wire [33:0] i_pivot407_emscripten_compute_dom_pk_code191_a;
    wire [33:0] i_pivot407_emscripten_compute_dom_pk_code191_b;
    logic [33:0] i_pivot407_emscripten_compute_dom_pk_code191_o;
    wire [0:0] i_pivot407_emscripten_compute_dom_pk_code191_c;
    wire [33:0] i_pivot409_emscripten_compute_dom_pk_code119_a;
    wire [33:0] i_pivot409_emscripten_compute_dom_pk_code119_b;
    logic [33:0] i_pivot409_emscripten_compute_dom_pk_code119_o;
    wire [0:0] i_pivot409_emscripten_compute_dom_pk_code119_c;
    wire [33:0] i_pivot411_emscripten_compute_dom_pk_code99_a;
    wire [33:0] i_pivot411_emscripten_compute_dom_pk_code99_b;
    logic [33:0] i_pivot411_emscripten_compute_dom_pk_code99_o;
    wire [0:0] i_pivot411_emscripten_compute_dom_pk_code99_c;
    wire [33:0] i_pivot413_emscripten_compute_dom_pk_code101_a;
    wire [33:0] i_pivot413_emscripten_compute_dom_pk_code101_b;
    logic [33:0] i_pivot413_emscripten_compute_dom_pk_code101_o;
    wire [0:0] i_pivot413_emscripten_compute_dom_pk_code101_c;
    wire [33:0] i_pivot417_emscripten_compute_dom_pk_code412_a;
    wire [33:0] i_pivot417_emscripten_compute_dom_pk_code412_b;
    logic [33:0] i_pivot417_emscripten_compute_dom_pk_code412_o;
    wire [0:0] i_pivot417_emscripten_compute_dom_pk_code412_c;
    wire [33:0] i_pivot419_emscripten_compute_dom_pk_code420_a;
    wire [33:0] i_pivot419_emscripten_compute_dom_pk_code420_b;
    logic [33:0] i_pivot419_emscripten_compute_dom_pk_code420_o;
    wire [0:0] i_pivot419_emscripten_compute_dom_pk_code420_c;
    wire [33:0] i_pivot421_emscripten_compute_dom_pk_code422_a;
    wire [33:0] i_pivot421_emscripten_compute_dom_pk_code422_b;
    logic [33:0] i_pivot421_emscripten_compute_dom_pk_code422_o;
    wire [0:0] i_pivot421_emscripten_compute_dom_pk_code422_c;
    wire [33:0] i_pivot423_emscripten_compute_dom_pk_code181_a;
    wire [33:0] i_pivot423_emscripten_compute_dom_pk_code181_b;
    logic [33:0] i_pivot423_emscripten_compute_dom_pk_code181_o;
    wire [0:0] i_pivot423_emscripten_compute_dom_pk_code181_c;
    wire [33:0] i_pivot425_emscripten_compute_dom_pk_code418_a;
    wire [33:0] i_pivot425_emscripten_compute_dom_pk_code418_b;
    logic [33:0] i_pivot425_emscripten_compute_dom_pk_code418_o;
    wire [0:0] i_pivot425_emscripten_compute_dom_pk_code418_c;
    wire [33:0] i_pivot431_emscripten_compute_dom_pk_code177_a;
    wire [33:0] i_pivot431_emscripten_compute_dom_pk_code177_b;
    logic [33:0] i_pivot431_emscripten_compute_dom_pk_code177_o;
    wire [0:0] i_pivot431_emscripten_compute_dom_pk_code177_c;
    wire [33:0] i_pivot433_emscripten_compute_dom_pk_code416_a;
    wire [33:0] i_pivot433_emscripten_compute_dom_pk_code416_b;
    logic [33:0] i_pivot433_emscripten_compute_dom_pk_code416_o;
    wire [0:0] i_pivot433_emscripten_compute_dom_pk_code416_c;
    wire [33:0] i_pivot435_emscripten_compute_dom_pk_code179_a;
    wire [33:0] i_pivot435_emscripten_compute_dom_pk_code179_b;
    logic [33:0] i_pivot435_emscripten_compute_dom_pk_code179_o;
    wire [0:0] i_pivot435_emscripten_compute_dom_pk_code179_c;
    wire [33:0] i_pivot437_emscripten_compute_dom_pk_code71_a;
    wire [33:0] i_pivot437_emscripten_compute_dom_pk_code71_b;
    logic [33:0] i_pivot437_emscripten_compute_dom_pk_code71_o;
    wire [0:0] i_pivot437_emscripten_compute_dom_pk_code71_c;
    wire [33:0] i_pivot439_emscripten_compute_dom_pk_code49_a;
    wire [33:0] i_pivot439_emscripten_compute_dom_pk_code49_b;
    logic [33:0] i_pivot439_emscripten_compute_dom_pk_code49_o;
    wire [0:0] i_pivot439_emscripten_compute_dom_pk_code49_c;
    wire [33:0] i_pivot43_emscripten_compute_dom_pk_code227_a;
    wire [33:0] i_pivot43_emscripten_compute_dom_pk_code227_b;
    logic [33:0] i_pivot43_emscripten_compute_dom_pk_code227_o;
    wire [0:0] i_pivot43_emscripten_compute_dom_pk_code227_c;
    wire [33:0] i_pivot445_emscripten_compute_dom_pk_code159_a;
    wire [33:0] i_pivot445_emscripten_compute_dom_pk_code159_b;
    logic [33:0] i_pivot445_emscripten_compute_dom_pk_code159_o;
    wire [0:0] i_pivot445_emscripten_compute_dom_pk_code159_c;
    wire [33:0] i_pivot453_emscripten_compute_dom_pk_code139_a;
    wire [33:0] i_pivot453_emscripten_compute_dom_pk_code139_b;
    logic [33:0] i_pivot453_emscripten_compute_dom_pk_code139_o;
    wire [0:0] i_pivot453_emscripten_compute_dom_pk_code139_c;
    wire [33:0] i_pivot455_emscripten_compute_dom_pk_code223_a;
    wire [33:0] i_pivot455_emscripten_compute_dom_pk_code223_b;
    logic [33:0] i_pivot455_emscripten_compute_dom_pk_code223_o;
    wire [0:0] i_pivot455_emscripten_compute_dom_pk_code223_c;
    wire [33:0] i_pivot457_emscripten_compute_dom_pk_code93_a;
    wire [33:0] i_pivot457_emscripten_compute_dom_pk_code93_b;
    logic [33:0] i_pivot457_emscripten_compute_dom_pk_code93_o;
    wire [0:0] i_pivot457_emscripten_compute_dom_pk_code93_c;
    wire [33:0] i_pivot459_emscripten_compute_dom_pk_code361_a;
    wire [33:0] i_pivot459_emscripten_compute_dom_pk_code361_b;
    logic [33:0] i_pivot459_emscripten_compute_dom_pk_code361_o;
    wire [0:0] i_pivot459_emscripten_compute_dom_pk_code361_c;
    wire [33:0] i_pivot45_emscripten_compute_dom_pk_code133_a;
    wire [33:0] i_pivot45_emscripten_compute_dom_pk_code133_b;
    logic [33:0] i_pivot45_emscripten_compute_dom_pk_code133_o;
    wire [0:0] i_pivot45_emscripten_compute_dom_pk_code133_c;
    wire [33:0] i_pivot463_emscripten_compute_dom_pk_code357_a;
    wire [33:0] i_pivot463_emscripten_compute_dom_pk_code357_b;
    logic [33:0] i_pivot463_emscripten_compute_dom_pk_code357_o;
    wire [0:0] i_pivot463_emscripten_compute_dom_pk_code357_c;
    wire [33:0] i_pivot465_emscripten_compute_dom_pk_code359_a;
    wire [33:0] i_pivot465_emscripten_compute_dom_pk_code359_b;
    logic [33:0] i_pivot465_emscripten_compute_dom_pk_code359_o;
    wire [0:0] i_pivot465_emscripten_compute_dom_pk_code359_c;
    wire [33:0] i_pivot467_emscripten_compute_dom_pk_code155_a;
    wire [33:0] i_pivot467_emscripten_compute_dom_pk_code155_b;
    logic [33:0] i_pivot467_emscripten_compute_dom_pk_code155_o;
    wire [0:0] i_pivot467_emscripten_compute_dom_pk_code155_c;
    wire [33:0] i_pivot469_emscripten_compute_dom_pk_code63_a;
    wire [33:0] i_pivot469_emscripten_compute_dom_pk_code63_b;
    logic [33:0] i_pivot469_emscripten_compute_dom_pk_code63_o;
    wire [0:0] i_pivot469_emscripten_compute_dom_pk_code63_c;
    wire [33:0] i_pivot471_emscripten_compute_dom_pk_code407_a;
    wire [33:0] i_pivot471_emscripten_compute_dom_pk_code407_b;
    logic [33:0] i_pivot471_emscripten_compute_dom_pk_code407_o;
    wire [0:0] i_pivot471_emscripten_compute_dom_pk_code407_c;
    wire [33:0] i_pivot473_emscripten_compute_dom_pk_code372_a;
    wire [33:0] i_pivot473_emscripten_compute_dom_pk_code372_b;
    logic [33:0] i_pivot473_emscripten_compute_dom_pk_code372_o;
    wire [0:0] i_pivot473_emscripten_compute_dom_pk_code372_c;
    wire [33:0] i_pivot475_emscripten_compute_dom_pk_code376_a;
    wire [33:0] i_pivot475_emscripten_compute_dom_pk_code376_b;
    logic [33:0] i_pivot475_emscripten_compute_dom_pk_code376_o;
    wire [0:0] i_pivot475_emscripten_compute_dom_pk_code376_c;
    wire [33:0] i_pivot477_emscripten_compute_dom_pk_code175_a;
    wire [33:0] i_pivot477_emscripten_compute_dom_pk_code175_b;
    logic [33:0] i_pivot477_emscripten_compute_dom_pk_code175_o;
    wire [0:0] i_pivot477_emscripten_compute_dom_pk_code175_c;
    wire [33:0] i_pivot479_emscripten_compute_dom_pk_code370_a;
    wire [33:0] i_pivot479_emscripten_compute_dom_pk_code370_b;
    logic [33:0] i_pivot479_emscripten_compute_dom_pk_code370_o;
    wire [0:0] i_pivot479_emscripten_compute_dom_pk_code370_c;
    wire [33:0] i_pivot47_emscripten_compute_dom_pk_code81_a;
    wire [33:0] i_pivot47_emscripten_compute_dom_pk_code81_b;
    logic [33:0] i_pivot47_emscripten_compute_dom_pk_code81_o;
    wire [0:0] i_pivot47_emscripten_compute_dom_pk_code81_c;
    wire [33:0] i_pivot483_emscripten_compute_dom_pk_code366_a;
    wire [33:0] i_pivot483_emscripten_compute_dom_pk_code366_b;
    logic [33:0] i_pivot483_emscripten_compute_dom_pk_code366_o;
    wire [0:0] i_pivot483_emscripten_compute_dom_pk_code366_c;
    wire [33:0] i_pivot485_emscripten_compute_dom_pk_code368_a;
    wire [33:0] i_pivot485_emscripten_compute_dom_pk_code368_b;
    logic [33:0] i_pivot485_emscripten_compute_dom_pk_code368_o;
    wire [0:0] i_pivot485_emscripten_compute_dom_pk_code368_c;
    wire [33:0] i_pivot487_emscripten_compute_dom_pk_code157_a;
    wire [33:0] i_pivot487_emscripten_compute_dom_pk_code157_b;
    logic [33:0] i_pivot487_emscripten_compute_dom_pk_code157_o;
    wire [0:0] i_pivot487_emscripten_compute_dom_pk_code157_c;
    wire [33:0] i_pivot489_emscripten_compute_dom_pk_code69_a;
    wire [33:0] i_pivot489_emscripten_compute_dom_pk_code69_b;
    logic [33:0] i_pivot489_emscripten_compute_dom_pk_code69_o;
    wire [0:0] i_pivot489_emscripten_compute_dom_pk_code69_c;
    wire [33:0] i_pivot491_emscripten_compute_dom_pk_code33_a;
    wire [33:0] i_pivot491_emscripten_compute_dom_pk_code33_b;
    logic [33:0] i_pivot491_emscripten_compute_dom_pk_code33_o;
    wire [0:0] i_pivot491_emscripten_compute_dom_pk_code33_c;
    wire [33:0] i_pivot493_emscripten_compute_dom_pk_code25_a;
    wire [33:0] i_pivot493_emscripten_compute_dom_pk_code25_b;
    logic [33:0] i_pivot493_emscripten_compute_dom_pk_code25_o;
    wire [0:0] i_pivot493_emscripten_compute_dom_pk_code25_c;
    wire [33:0] i_pivot495_emscripten_compute_dom_pk_code15_a;
    wire [33:0] i_pivot495_emscripten_compute_dom_pk_code15_b;
    logic [33:0] i_pivot495_emscripten_compute_dom_pk_code15_o;
    wire [0:0] i_pivot495_emscripten_compute_dom_pk_code15_c;
    wire [33:0] i_pivot497_emscripten_compute_dom_pk_code11_a;
    wire [33:0] i_pivot497_emscripten_compute_dom_pk_code11_b;
    logic [33:0] i_pivot497_emscripten_compute_dom_pk_code11_o;
    wire [0:0] i_pivot497_emscripten_compute_dom_pk_code11_c;
    wire [33:0] i_pivot53_emscripten_compute_dom_pk_code239_a;
    wire [33:0] i_pivot53_emscripten_compute_dom_pk_code239_b;
    logic [33:0] i_pivot53_emscripten_compute_dom_pk_code239_o;
    wire [0:0] i_pivot53_emscripten_compute_dom_pk_code239_c;
    wire [33:0] i_pivot61_emscripten_compute_dom_pk_code183_a;
    wire [33:0] i_pivot61_emscripten_compute_dom_pk_code183_b;
    logic [33:0] i_pivot61_emscripten_compute_dom_pk_code183_o;
    wire [0:0] i_pivot61_emscripten_compute_dom_pk_code183_c;
    wire [33:0] i_pivot63_emscripten_compute_dom_pk_code123_a;
    wire [33:0] i_pivot63_emscripten_compute_dom_pk_code123_b;
    logic [33:0] i_pivot63_emscripten_compute_dom_pk_code123_o;
    wire [0:0] i_pivot63_emscripten_compute_dom_pk_code123_c;
    wire [33:0] i_pivot65_emscripten_compute_dom_pk_code103_a;
    wire [33:0] i_pivot65_emscripten_compute_dom_pk_code103_b;
    logic [33:0] i_pivot65_emscripten_compute_dom_pk_code103_o;
    wire [0:0] i_pivot65_emscripten_compute_dom_pk_code103_c;
    wire [33:0] i_pivot67_emscripten_compute_dom_pk_code51_a;
    wire [33:0] i_pivot67_emscripten_compute_dom_pk_code51_b;
    logic [33:0] i_pivot67_emscripten_compute_dom_pk_code51_o;
    wire [0:0] i_pivot67_emscripten_compute_dom_pk_code51_c;
    wire [33:0] i_pivot69_emscripten_compute_dom_pk_code27_a;
    wire [33:0] i_pivot69_emscripten_compute_dom_pk_code27_b;
    logic [33:0] i_pivot69_emscripten_compute_dom_pk_code27_o;
    wire [0:0] i_pivot69_emscripten_compute_dom_pk_code27_c;
    wire [33:0] i_pivot75_emscripten_compute_dom_pk_code153_a;
    wire [33:0] i_pivot75_emscripten_compute_dom_pk_code153_b;
    logic [33:0] i_pivot75_emscripten_compute_dom_pk_code153_o;
    wire [0:0] i_pivot75_emscripten_compute_dom_pk_code153_c;
    wire [33:0] i_pivot83_emscripten_compute_dom_pk_code189_a;
    wire [33:0] i_pivot83_emscripten_compute_dom_pk_code189_b;
    logic [33:0] i_pivot83_emscripten_compute_dom_pk_code189_o;
    wire [0:0] i_pivot83_emscripten_compute_dom_pk_code189_c;
    wire [33:0] i_pivot85_emscripten_compute_dom_pk_code115_a;
    wire [33:0] i_pivot85_emscripten_compute_dom_pk_code115_b;
    logic [33:0] i_pivot85_emscripten_compute_dom_pk_code115_o;
    wire [0:0] i_pivot85_emscripten_compute_dom_pk_code115_c;
    wire [33:0] i_pivot87_emscripten_compute_dom_pk_code61_a;
    wire [33:0] i_pivot87_emscripten_compute_dom_pk_code61_b;
    logic [33:0] i_pivot87_emscripten_compute_dom_pk_code61_o;
    wire [0:0] i_pivot87_emscripten_compute_dom_pk_code61_c;
    wire [33:0] i_pivot93_emscripten_compute_dom_pk_code147_a;
    wire [33:0] i_pivot93_emscripten_compute_dom_pk_code147_b;
    logic [33:0] i_pivot93_emscripten_compute_dom_pk_code147_o;
    wire [0:0] i_pivot93_emscripten_compute_dom_pk_code147_c;
    wire [33:0] i_pivot99_emscripten_compute_dom_pk_code399_a;
    wire [33:0] i_pivot99_emscripten_compute_dom_pk_code399_b;
    logic [33:0] i_pivot99_emscripten_compute_dom_pk_code399_o;
    wire [0:0] i_pivot99_emscripten_compute_dom_pk_code399_c;
    wire [33:0] i_pivot9_emscripten_compute_dom_pk_code185_a;
    wire [33:0] i_pivot9_emscripten_compute_dom_pk_code185_b;
    logic [33:0] i_pivot9_emscripten_compute_dom_pk_code185_o;
    wire [0:0] i_pivot9_emscripten_compute_dom_pk_code185_c;
    wire [33:0] i_pivot_emscripten_compute_dom_pk_code173_a;
    wire [33:0] i_pivot_emscripten_compute_dom_pk_code173_b;
    logic [33:0] i_pivot_emscripten_compute_dom_pk_code173_o;
    wire [0:0] i_pivot_emscripten_compute_dom_pk_code173_c;
    wire [5:0] i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_const_31_q;
    wire [31:0] i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_join_q;
    wire [25:0] i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_select_25_b;
    wire [8:0] i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_const_31_q;
    wire [31:0] i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_join_q;
    wire [22:0] i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_select_22_b;
    wire [26:0] i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_const_31_q;
    wire [31:0] i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_join_q;
    wire [4:0] i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_select_4_b;
    wire [29:0] i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_const_31_q;
    wire [31:0] i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_join_q;
    wire [1:0] i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_select_1_b;
    wire [2:0] i_sel_shr_emscripten_compute_dom_pk_code1177_vt_const_31_q;
    wire [31:0] i_sel_shr_emscripten_compute_dom_pk_code1177_vt_join_q;
    wire [28:0] i_sel_shr_emscripten_compute_dom_pk_code1177_vt_select_28_b;
    wire [0:0] i_select2341_emscripten_compute_dom_pk_code10_s;
    reg [31:0] i_select2341_emscripten_compute_dom_pk_code10_q;
    wire [0:0] i_switchleaf117_emscripten_compute_dom_pk_code401_q;
    wire [0:0] i_switchleaf119_emscripten_compute_dom_pk_code265_q;
    wire [0:0] i_switchleaf121_emscripten_compute_dom_pk_code340_q;
    wire [0:0] i_switchleaf135_emscripten_compute_dom_pk_code380_q;
    wire [0:0] i_switchleaf137_emscripten_compute_dom_pk_code403_q;
    wire [0:0] i_switchleaf13_emscripten_compute_dom_pk_code434_q;
    wire [0:0] i_switchleaf141_emscripten_compute_dom_pk_code471_q;
    wire [0:0] i_switchleaf143_emscripten_compute_dom_pk_code263_q;
    wire [0:0] i_switchleaf149_emscripten_compute_dom_pk_code467_q;
    wire [0:0] i_switchleaf151_emscripten_compute_dom_pk_code320_q;
    wire [0:0] i_switchleaf155_emscripten_compute_dom_pk_code308_q;
    wire [0:0] i_switchleaf157_emscripten_compute_dom_pk_code324_q;
    wire [0:0] i_switchleaf159_emscripten_compute_dom_pk_code334_q;
    wire [0:0] i_switchleaf15_emscripten_compute_dom_pk_code453_q;
    wire [0:0] i_switchleaf169_emscripten_compute_dom_pk_code255_q;
    wire [0:0] i_switchleaf171_emscripten_compute_dom_pk_code251_q;
    wire [0:0] i_switchleaf175_emscripten_compute_dom_pk_code306_q;
    wire [0:0] i_switchleaf177_emscripten_compute_dom_pk_code378_q;
    wire [0:0] i_switchleaf179_emscripten_compute_dom_pk_code449_q;
    wire [0:0] i_switchleaf187_emscripten_compute_dom_pk_code455_q;
    wire [0:0] i_switchleaf189_emscripten_compute_dom_pk_code322_q;
    wire [0:0] i_switchleaf193_emscripten_compute_dom_pk_code310_q;
    wire [0:0] i_switchleaf195_emscripten_compute_dom_pk_code328_q;
    wire [0:0] i_switchleaf197_emscripten_compute_dom_pk_code342_q;
    wire [0:0] i_switchleaf19_emscripten_compute_dom_pk_code353_q;
    wire [0:0] i_switchleaf209_emscripten_compute_dom_pk_code330_qi;
    reg [0:0] i_switchleaf209_emscripten_compute_dom_pk_code330_q;
    wire [0:0] i_switchleaf21_emscripten_compute_dom_pk_code497_q;
    wire [0:0] i_switchleaf261_emscripten_compute_dom_pk_code444_q;
    wire [0:0] i_switchleaf263_emscripten_compute_dom_pk_code296_q;
    wire [0:0] i_switchleaf265_emscripten_compute_dom_pk_code291_q;
    wire [0:0] i_switchleaf275_emscripten_compute_dom_pk_code316_q;
    wire [0:0] i_switchleaf277_emscripten_compute_dom_pk_code493_q;
    wire [0:0] i_switchleaf281_emscripten_compute_dom_pk_code446_q;
    wire [0:0] i_switchleaf281_not_emscripten_compute_dom_pk_code448_q;
    wire [0:0] i_switchleaf283_emscripten_compute_dom_pk_code451_q;
    wire [0:0] i_switchleaf291_emscripten_compute_dom_pk_code318_q;
    wire [0:0] i_switchleaf293_emscripten_compute_dom_pk_code245_q;
    wire [0:0] i_switchleaf297_emscripten_compute_dom_pk_code285_q;
    wire [0:0] i_switchleaf299_emscripten_compute_dom_pk_code279_q;
    wire [0:0] i_switchleaf301_emscripten_compute_dom_pk_code388_q;
    wire [0:0] i_switchleaf313_emscripten_compute_dom_pk_code314_q;
    wire [0:0] i_switchleaf315_emscripten_compute_dom_pk_code267_q;
    wire [0:0] i_switchleaf319_emscripten_compute_dom_pk_code241_q;
    wire [0:0] i_switchleaf31_emscripten_compute_dom_pk_code438_q;
    wire [0:0] i_switchleaf321_emscripten_compute_dom_pk_code243_q;
    wire [0:0] i_switchleaf323_emscripten_compute_dom_pk_code259_q;
    wire [0:0] i_switchleaf331_emscripten_compute_dom_pk_code473_q;
    wire [0:0] i_switchleaf333_emscripten_compute_dom_pk_code253_q;
    wire [0:0] i_switchleaf337_emscripten_compute_dom_pk_code249_q;
    wire [0:0] i_switchleaf339_emscripten_compute_dom_pk_code302_q;
    wire [0:0] i_switchleaf33_emscripten_compute_dom_pk_code469_q;
    wire [0:0] i_switchleaf341_emscripten_compute_dom_pk_code283_q;
    wire [0:0] i_switchleaf351_emscripten_compute_dom_pk_code430_q;
    wire [0:0] i_switchleaf353_emscripten_compute_dom_pk_code394_q;
    wire [0:0] i_switchleaf357_emscripten_compute_dom_pk_code269_q;
    wire [0:0] i_switchleaf359_emscripten_compute_dom_pk_code349_q;
    wire [0:0] i_switchleaf361_emscripten_compute_dom_pk_code275_q;
    wire [0:0] i_switchleaf369_emscripten_compute_dom_pk_code513_q;
    wire [0:0] i_switchleaf373_emscripten_compute_dom_pk_code499_q;
    wire [0:0] i_switchleaf37_emscripten_compute_dom_pk_code312_q;
    wire [0:0] i_switchleaf395_emscripten_compute_dom_pk_code503_q;
    wire [0:0] i_switchleaf397_emscripten_compute_dom_pk_code273_q;
    wire [0:0] i_switchleaf39_emscripten_compute_dom_pk_code495_q;
    wire [0:0] i_switchleaf3_emscripten_compute_dom_pk_code405_q;
    wire [0:0] i_switchleaf401_emscripten_compute_dom_pk_code287_q;
    wire [0:0] i_switchleaf403_emscripten_compute_dom_pk_code436_q;
    wire [0:0] i_switchleaf405_emscripten_compute_dom_pk_code300_q;
    wire [0:0] i_switchleaf415_emscripten_compute_dom_pk_code409_q;
    wire [0:0] i_switchleaf415_not_emscripten_compute_dom_pk_code411_q;
    wire [0:0] i_switchleaf41_emscripten_compute_dom_pk_code382_q;
    wire [0:0] i_switchleaf427_emscripten_compute_dom_pk_code414_q;
    wire [0:0] i_switchleaf429_emscripten_compute_dom_pk_code338_q;
    wire [0:0] i_switchleaf441_emscripten_compute_dom_pk_code326_q;
    wire [0:0] i_switchleaf443_emscripten_compute_dom_pk_code374_q;
    wire [0:0] i_switchleaf447_emscripten_compute_dom_pk_code491_q;
    wire [0:0] i_switchleaf449_emscripten_compute_dom_pk_code332_q;
    wire [0:0] i_switchleaf451_emscripten_compute_dom_pk_code281_q;
    wire [0:0] i_switchleaf461_emscripten_compute_dom_pk_code346_q;
    wire [0:0] i_switchleaf461_not_emscripten_compute_dom_pk_code348_q;
    wire [0:0] i_switchleaf481_emscripten_compute_dom_pk_code363_qi;
    reg [0:0] i_switchleaf481_emscripten_compute_dom_pk_code363_q;
    wire [0:0] i_switchleaf481_not_emscripten_compute_dom_pk_code365_q;
    wire [0:0] i_switchleaf49_emscripten_compute_dom_pk_code515_q;
    wire [0:0] i_switchleaf51_emscripten_compute_dom_pk_code257_q;
    wire [0:0] i_switchleaf55_emscripten_compute_dom_pk_code298_q;
    wire [0:0] i_switchleaf57_emscripten_compute_dom_pk_code424_q;
    wire [0:0] i_switchleaf59_emscripten_compute_dom_pk_code271_q;
    wire [0:0] i_switchleaf5_emscripten_compute_dom_pk_code261_q;
    wire [0:0] i_switchleaf71_emscripten_compute_dom_pk_code355_q;
    wire [0:0] i_switchleaf73_emscripten_compute_dom_pk_code304_q;
    wire [0:0] i_switchleaf77_emscripten_compute_dom_pk_code277_q;
    wire [0:0] i_switchleaf79_emscripten_compute_dom_pk_code432_q;
    wire [0:0] i_switchleaf7_emscripten_compute_dom_pk_code426_q;
    wire [0:0] i_switchleaf81_emscripten_compute_dom_pk_code428_q;
    wire [0:0] i_switchleaf89_emscripten_compute_dom_pk_code289_q;
    wire [0:0] i_switchleaf91_emscripten_compute_dom_pk_code344_q;
    wire [0:0] i_switchleaf95_emscripten_compute_dom_pk_code293_q;
    wire [0:0] i_switchleaf95_not_emscripten_compute_dom_pk_code295_q;
    wire [0:0] i_switchleaf97_emscripten_compute_dom_pk_code396_q;
    wire [0:0] i_switchleaf97_not_emscripten_compute_dom_pk_code398_q;
    wire [0:0] i_switchleaf_emscripten_compute_dom_pk_code336_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1000_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1004_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1008_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1012_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1016_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1019_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1022_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1025_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1028_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1031_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1034_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1038_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1042_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1046_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1050_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1054_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1058_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1062_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1066_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1070_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1073_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1076_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1079_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1082_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1086_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1090_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1094_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1098_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1102_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1106_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1110_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1114_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1118_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1122_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1125_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1128_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1131_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1134_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1137_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1141_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1144_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1148_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1152_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1156_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1160_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1164_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1168_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1172_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code1175_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code647_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code650_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code653_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code656_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code660_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code663_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code666_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code669_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code672_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code675_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code678_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code681_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code684_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code687_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code690_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code693_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code696_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code699_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code702_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code705_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code708_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code711_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code714_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code717_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code720_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code723_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code726_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code729_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code732_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code735_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code738_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code741_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code745_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code746_qi;
    reg [0:0] i_unnamed_emscripten_compute_dom_pk_code746_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code750_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code751_qi;
    reg [0:0] i_unnamed_emscripten_compute_dom_pk_code751_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code754_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code757_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code760_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code763_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code767_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code768_qi;
    reg [0:0] i_unnamed_emscripten_compute_dom_pk_code768_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code771_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code774_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code777_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code780_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code783_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code786_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code789_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code792_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code795_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code798_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code801_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code804_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code807_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code811_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code814_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code817_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code821_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code825_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code829_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code833_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code836_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code840_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code844_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code848_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code852_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code856_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code860_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code863_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code867_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code871_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code874_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code877_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code880_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code884_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code888_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code892_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code896_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code899_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code903_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code907_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code911_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code914_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code917_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code921_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code924_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code927_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code930_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code934_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code937_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code941_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code944_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code948_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code952_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code956_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code960_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code964_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code968_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code971_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code974_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code977_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code980_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code983_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code986_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code989_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code992_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code996_q;
    wire [31:0] c_i32_10636724401238_recast_x_q;
    wire [31:0] c_i32_11649618901213_recast_x_q;
    wire [31:0] c_i32_11672765281259_recast_x_q;
    wire [31:0] c_i32_11717891961202_recast_x_q;
    wire [31:0] c_i32_11751411071191_recast_x_q;
    wire [31:0] c_i32_11884447881274_recast_x_q;
    wire [31:0] c_i32_11915163571244_recast_x_q;
    wire [31:0] c_i32_11986044201234_recast_x_q;
    wire [31:0] c_i32_12284271361289_recast_x_q;
    wire [31:0] c_i32_12284335951225_recast_x_q;
    wire [31:0] c_i32_12284393651236_recast_x_q;
    wire [31:0] c_i32_12899613401245_recast_x_q;
    wire [31:0] c_i32_15617731011302_recast_x_q;
    wire [31:0] c_i32_15668906411206_recast_x_q;
    wire [31:0] c_i32_15878002281276_recast_x_q;
    wire [31:0] c_i32_17303730041220_recast_x_q;
    wire [31:0] c_i32_17303978151239_recast_x_q;
    wire [31:0] c_i32_17303990201257_recast_x_q;
    wire [31:0] c_i32_17304274371231_recast_x_q;
    wire [31:0] c_i32_17304822561340_recast_x_q;
    wire [31:0] c_i32_17304822571298_recast_x_q;
    wire [31:0] c_i32_17304822641301_recast_x_q;
    wire [31:0] c_i32_17304822651344_recast_x_q;
    wire [31:0] c_i32_17304822661190_recast_x_q;
    wire [31:0] c_i32_17304822671343_recast_x_q;
    wire [31:0] c_i32_17304822681300_recast_x_q;
    wire [31:0] c_i32_17304822691342_recast_x_q;
    wire [31:0] c_i32_17304822701341_recast_x_q;
    wire [31:0] c_i32_17304822711233_recast_x_q;
    wire [31:0] c_i32_17305285251299_recast_x_q;
    wire [31:0] c_i32_17311708321232_recast_x_q;
    wire [31:0] c_i32_17311976521242_recast_x_q;
    wire [31:0] c_i32_17444980441208_recast_x_q;
    wire [31:0] c_i32_17864341321296_recast_x_q;
    wire [31:0] c_i32_18238142851278_recast_x_q;
    wire [31:0] c_i32_18306837321249_recast_x_q;
    wire [31:0] c_i32_18306965401223_recast_x_q;
    wire [31:0] c_i32_18306975181287_recast_x_q;
    wire [31:0] c_i32_18307067511196_recast_x_q;
    wire [31:0] c_i32_18307282371297_recast_x_q;
    wire [31:0] c_i32_18307284461306_recast_x_q;
    wire [31:0] c_i32_18307284471258_recast_x_q;
    wire [31:0] c_i32_18307672191282_recast_x_q;
    wire [31:0] c_i32_18307716561212_recast_x_q;
    wire [31:0] c_i32_18307735791275_recast_x_q;
    wire [31:0] c_i32_18307750221219_recast_x_q;
    wire [31:0] c_i32_18307780591269_recast_x_q;
    wire [31:0] c_i32_18307782271304_recast_x_q;
    wire [31:0] c_i32_1864686641192_recast_x_q;
    wire [31:0] c_i32_1893340761237_recast_x_q;
    wire [31:0] c_i32_19034745601207_recast_x_q;
    wire [31:0] c_i32_19034745611320_recast_x_q;
    wire [31:0] c_i32_19034745691273_recast_x_q;
    wire [31:0] c_i32_19034745701324_recast_x_q;
    wire [31:0] c_i32_19034745711323_recast_x_q;
    wire [31:0] c_i32_19034745721218_recast_x_q;
    wire [31:0] c_i32_19034745731322_recast_x_q;
    wire [31:0] c_i32_19034745741272_recast_x_q;
    wire [31:0] c_i32_19034745751321_recast_x_q;
    wire [31:0] c_i32_19390550411271_recast_x_q;
    wire [31:0] c_i32_19390642741195_recast_x_q;
    wire [31:0] c_i32_19390780601262_recast_x_q;
    wire [31:0] c_i32_20729246421229_recast_x_q;
    wire [31:0] c_i32_20729253321294_recast_x_q;
    wire [31:0] c_i32_20729256601252_recast_x_q;
    wire [31:0] c_i32_20729261201214_recast_x_q;
    wire [31:0] c_i32_20729261211308_recast_x_q;
    wire [31:0] c_i32_20729261221260_recast_x_q;
    wire [31:0] c_i32_20729261231307_recast_x_q;
    wire [31:0] c_i32_20729261241305_recast_x_q;
    wire [31:0] c_i32_20729261281199_recast_x_q;
    wire [31:0] c_i32_20729261291319_recast_x_q;
    wire [31:0] c_i32_20729261301270_recast_x_q;
    wire [31:0] c_i32_20729261311313_recast_x_q;
    wire [31:0] c_i32_20729261321312_recast_x_q;
    wire [31:0] c_i32_20729261331217_recast_x_q;
    wire [31:0] c_i32_20729261341311_recast_x_q;
    wire [31:0] c_i32_20729261351261_recast_x_q;
    wire [31:0] c_i32_20729261361310_recast_x_q;
    wire [31:0] c_i32_20729261371309_recast_x_q;
    wire [31:0] c_i32_2192344361247_recast_x_q;
    wire [31:0] c_i32_312272831253_recast_x_q;
    wire [31:0] c_i32_3594501281209_recast_x_q;
    wire [31:0] c_i32_3645707221222_recast_x_q;
    wire [31:0] c_i32_3645759871286_recast_x_q;
    wire [31:0] c_i32_3816254001246_recast_x_q;
    wire [31:0] c_i32_5310654601201_recast_x_q;
    wire [31:0] c_i32_5359145471288_recast_x_q;
    wire [31:0] c_i32_5550409001224_recast_x_q;
    wire [31:0] c_i32_6491723641281_recast_x_q;
    wire [31:0] c_i32_6547787821200_recast_x_q;
    wire [31:0] c_i32_7091658371283_recast_x_q;
    wire [31:0] c_i32_7091711021221_recast_x_q;
    wire [31:0] c_i32_7184633561248_recast_x_q;
    wire [31:0] c_i32_7191104441255_recast_x_q;
    wire [31:0] c_i32_7440490731193_recast_x_q;
    wire [31:0] c_i32_7440535691331_recast_x_q;
    wire [31:0] c_i32_7440535701285_recast_x_q;
    wire [31:0] c_i32_7440535711326_recast_x_q;
    wire [31:0] c_i32_7440535721330_recast_x_q;
    wire [31:0] c_i32_7440535731226_recast_x_q;
    wire [31:0] c_i32_7440535741337_recast_x_q;
    wire [31:0] c_i32_7440535751291_recast_x_q;
    wire [31:0] c_i32_7440535761329_recast_x_q;
    wire [31:0] c_i32_7440535771333_recast_x_q;
    wire [31:0] c_i32_7440535781204_recast_x_q;
    wire [31:0] c_i32_7440535791328_recast_x_q;
    wire [31:0] c_i32_7440535801284_recast_x_q;
    wire [31:0] c_i32_7440535811327_recast_x_q;
    wire [31:0] c_i32_7440535821325_recast_x_q;
    wire [31:0] c_i32_7440535831228_recast_x_q;
    wire [31:0] c_i32_7440535841332_recast_x_q;
    wire [31:0] c_i32_7440535851293_recast_x_q;
    wire [31:0] c_i32_7440535861339_recast_x_q;
    wire [31:0] c_i32_7440535871336_recast_x_q;
    wire [31:0] c_i32_7440535881188_recast_x_q;
    wire [31:0] c_i32_7440535891335_recast_x_q;
    wire [31:0] c_i32_7440535901292_recast_x_q;
    wire [31:0] c_i32_7440535911338_recast_x_q;
    wire [31:0] c_i32_7440535921227_recast_x_q;
    wire [31:0] c_i32_7440535931334_recast_x_q;
    wire [31:0] c_i32_7440535941290_recast_x_q;
    wire [31:0] c_i32_7440542321279_recast_x_q;
    wire [31:0] c_i32_7440545971243_recast_x_q;
    wire [31:0] c_i32_7568125971203_recast_x_q;
    wire [31:0] c_i32_8401000371268_recast_x_q;
    wire [31:0] c_i32_8704426101189_recast_x_q;
    wire [31:0] c_i32_9184943891295_recast_x_q;
    wire [31:0] c_i32_9184963121230_recast_x_q;
    wire [31:0] c_i32_9185007491280_recast_x_q;
    wire [31:0] c_i32_9192175221254_recast_x_q;
    wire [31:0] c_i32_9195193641267_recast_x_q;
    wire [31:0] c_i32_9202573131265_recast_x_q;
    wire [31:0] c_i32_9202573141316_recast_x_q;
    wire [31:0] c_i32_9202573151215_recast_x_q;
    wire [31:0] c_i32_9202573161317_recast_x_q;
    wire [31:0] c_i32_9202573171314_recast_x_q;
    wire [31:0] c_i32_9202573181263_recast_x_q;
    wire [31:0] c_i32_9202573191315_recast_x_q;
    wire [31:0] c_i32_9202573201197_recast_x_q;
    wire [31:0] c_i32_9202573271318_recast_x_q;
    wire [31:0] c_i32_9202573281266_recast_x_q;
    wire [31:0] c_i32_9202874291216_recast_x_q;
    wire [31:0] c_i32_9208624201256_recast_x_q;
    wire [31:0] c_i32_9209306721198_recast_x_q;
    wire [31:0] c_i32_9213978761277_recast_x_q;
    wire [31:0] c_i32_9237161531303_recast_x_q;
    wire [31:0] c_i32_9237161541205_recast_x_q;
    wire [31:0] c_i32_9237194041251_recast_x_q;
    wire [31:0] c_i32_9327835001211_recast_x_q;
    wire [31:0] c_i32_9327881261241_recast_x_q;
    wire [31:0] c_i32_9402850681264_recast_x_q;
    wire [31:0] c_i32_9586277121194_recast_x_q;
    wire [31:0] c_i32_9628711641250_recast_x_q;
    wire [31:0] c_i32_9674602601210_recast_x_q;
    wire [31:0] c_i32_9675265461235_recast_x_q;
    wire [31:0] c_i32_9789277481240_recast_x_q;
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
    wire [29:0] rightShiftStage0Idx1Rng2_uid1960_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1Pad2_uid1961_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [31:0] rightShiftStage0Idx1_uid1962_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [27:0] rightShiftStage1Idx1Rng4_uid1965_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [3:0] rightShiftStage1Idx1Pad4_uid1966_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid1967_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1973_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1975_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [23:0] rightShiftStage1Idx1Rng8_uid1978_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [7:0] rightShiftStage1Idx1Pad8_uid1979_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid1980_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid1991_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1993_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [23:0] rightShiftStage2Idx1Rng8_uid1996_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1998_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1Rng16_uid2001_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [15:0] rightShiftStage3Idx1Pad16_uid2002_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [31:0] rightShiftStage3Idx1_uid2003_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [23:0] rightShiftStage2Idx1Rng8_uid2019_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid2021_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1Rng16_uid2024_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid2026_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q;
    reg [0:0] redist0_sync_together1509_in_i_valid_1_q;
    reg [0:0] redist1_sync_together1509_in_i_valid_2_q;
    reg [0:0] redist2_i_switchleaf_emscripten_compute_dom_pk_code336_q_1_q;
    reg [0:0] redist3_i_switchleaf97_emscripten_compute_dom_pk_code396_q_1_q;
    reg [0:0] redist4_i_switchleaf91_emscripten_compute_dom_pk_code344_q_1_q;
    reg [0:0] redist5_i_switchleaf89_emscripten_compute_dom_pk_code289_q_1_q;
    reg [0:0] redist6_i_switchleaf81_emscripten_compute_dom_pk_code428_q_1_q;
    reg [0:0] redist7_i_switchleaf7_emscripten_compute_dom_pk_code426_q_1_q;
    reg [0:0] redist8_i_switchleaf79_emscripten_compute_dom_pk_code432_q_1_q;
    reg [0:0] redist9_i_switchleaf77_emscripten_compute_dom_pk_code277_q_1_q;
    reg [0:0] redist10_i_switchleaf71_emscripten_compute_dom_pk_code355_q_1_q;
    reg [0:0] redist11_i_switchleaf5_emscripten_compute_dom_pk_code261_q_1_q;
    reg [0:0] redist12_i_switchleaf59_emscripten_compute_dom_pk_code271_q_1_q;
    reg [0:0] redist13_i_switchleaf55_emscripten_compute_dom_pk_code298_q_1_q;
    reg [0:0] redist14_i_switchleaf51_emscripten_compute_dom_pk_code257_q_1_q;
    reg [0:0] redist15_i_switchleaf49_emscripten_compute_dom_pk_code515_q_1_q;
    reg [0:0] redist16_i_switchleaf451_emscripten_compute_dom_pk_code281_q_1_q;
    reg [0:0] redist17_i_switchleaf449_emscripten_compute_dom_pk_code332_q_1_q;
    reg [0:0] redist18_i_switchleaf443_emscripten_compute_dom_pk_code374_q_1_q;
    reg [0:0] redist19_i_switchleaf441_emscripten_compute_dom_pk_code326_q_1_q;
    reg [0:0] redist20_i_switchleaf427_emscripten_compute_dom_pk_code414_q_1_q;
    reg [0:0] redist21_i_switchleaf41_emscripten_compute_dom_pk_code382_q_1_q;
    reg [0:0] redist22_i_switchleaf415_emscripten_compute_dom_pk_code409_q_1_q;
    reg [0:0] redist23_i_switchleaf405_emscripten_compute_dom_pk_code300_q_1_q;
    reg [0:0] redist24_i_switchleaf403_emscripten_compute_dom_pk_code436_q_1_q;
    reg [0:0] redist25_i_switchleaf401_emscripten_compute_dom_pk_code287_q_1_q;
    reg [0:0] redist26_i_switchleaf3_emscripten_compute_dom_pk_code405_q_1_q;
    reg [0:0] redist27_i_switchleaf397_emscripten_compute_dom_pk_code273_q_1_q;
    reg [0:0] redist28_i_switchleaf395_emscripten_compute_dom_pk_code503_q_1_q;
    reg [0:0] redist29_i_switchleaf37_emscripten_compute_dom_pk_code312_q_1_q;
    reg [0:0] redist30_i_switchleaf373_emscripten_compute_dom_pk_code499_q_1_q;
    reg [0:0] redist31_i_switchleaf369_emscripten_compute_dom_pk_code513_q_1_q;
    reg [0:0] redist32_i_switchleaf361_emscripten_compute_dom_pk_code275_q_1_q;
    reg [0:0] redist33_i_switchleaf357_emscripten_compute_dom_pk_code269_q_1_q;
    reg [0:0] redist34_i_switchleaf353_emscripten_compute_dom_pk_code394_q_1_q;
    reg [0:0] redist35_i_switchleaf351_emscripten_compute_dom_pk_code430_q_1_q;
    reg [0:0] redist36_i_switchleaf341_emscripten_compute_dom_pk_code283_q_1_q;
    reg [0:0] redist37_i_switchleaf33_emscripten_compute_dom_pk_code469_q_1_q;
    reg [0:0] redist38_i_switchleaf337_emscripten_compute_dom_pk_code249_q_1_q;
    reg [0:0] redist39_i_switchleaf333_emscripten_compute_dom_pk_code253_q_1_q;
    reg [0:0] redist40_i_switchleaf331_emscripten_compute_dom_pk_code473_q_1_q;
    reg [0:0] redist41_i_switchleaf323_emscripten_compute_dom_pk_code259_q_1_q;
    reg [0:0] redist42_i_switchleaf321_emscripten_compute_dom_pk_code243_q_1_q;
    reg [0:0] redist43_i_switchleaf31_emscripten_compute_dom_pk_code438_q_1_q;
    reg [0:0] redist44_i_switchleaf319_emscripten_compute_dom_pk_code241_q_1_q;
    reg [0:0] redist45_i_switchleaf315_emscripten_compute_dom_pk_code267_q_1_q;
    reg [0:0] redist46_i_switchleaf301_emscripten_compute_dom_pk_code388_q_1_q;
    reg [0:0] redist47_i_switchleaf297_emscripten_compute_dom_pk_code285_q_1_q;
    reg [0:0] redist48_i_switchleaf293_emscripten_compute_dom_pk_code245_q_1_q;
    reg [0:0] redist49_i_switchleaf277_emscripten_compute_dom_pk_code493_q_1_q;
    reg [0:0] redist50_i_switchleaf275_emscripten_compute_dom_pk_code316_q_1_q;
    reg [0:0] redist51_i_switchleaf265_emscripten_compute_dom_pk_code291_q_1_q;
    reg [0:0] redist52_i_switchleaf263_emscripten_compute_dom_pk_code296_q_1_q;
    reg [0:0] redist53_i_switchleaf261_emscripten_compute_dom_pk_code444_q_1_q;
    reg [0:0] redist54_i_switchleaf19_emscripten_compute_dom_pk_code353_q_1_q;
    reg [0:0] redist55_i_switchleaf197_emscripten_compute_dom_pk_code342_q_1_q;
    reg [0:0] redist56_i_switchleaf187_emscripten_compute_dom_pk_code455_q_1_q;
    reg [0:0] redist57_i_switchleaf179_emscripten_compute_dom_pk_code449_q_1_q;
    reg [0:0] redist58_i_switchleaf177_emscripten_compute_dom_pk_code378_q_1_q;
    reg [0:0] redist59_i_switchleaf171_emscripten_compute_dom_pk_code251_q_1_q;
    reg [0:0] redist60_i_switchleaf15_emscripten_compute_dom_pk_code453_q_1_q;
    reg [0:0] redist61_i_switchleaf159_emscripten_compute_dom_pk_code334_q_1_q;
    reg [0:0] redist62_i_switchleaf157_emscripten_compute_dom_pk_code324_q_1_q;
    reg [0:0] redist63_i_switchleaf149_emscripten_compute_dom_pk_code467_q_1_q;
    reg [0:0] redist64_i_switchleaf143_emscripten_compute_dom_pk_code263_q_1_q;
    reg [0:0] redist65_i_switchleaf13_emscripten_compute_dom_pk_code434_q_1_q;
    reg [0:0] redist66_i_switchleaf137_emscripten_compute_dom_pk_code403_q_1_q;
    reg [0:0] redist67_i_switchleaf135_emscripten_compute_dom_pk_code380_q_1_q;
    reg [0:0] redist68_i_switchleaf121_emscripten_compute_dom_pk_code340_q_1_q;
    reg [0:0] redist69_i_switchleaf119_emscripten_compute_dom_pk_code265_q_1_q;
    reg [0:0] redist70_i_switchleaf117_emscripten_compute_dom_pk_code401_q_1_q;
    reg [31:0] redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q;
    reg [31:0] redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q;
    reg [0:0] redist73_i_pivot463_emscripten_compute_dom_pk_code357_c_1_q;
    reg [0:0] redist74_i_pivot439_emscripten_compute_dom_pk_code49_c_1_q;
    reg [0:0] redist75_i_pivot437_emscripten_compute_dom_pk_code71_c_1_q;
    reg [0:0] redist76_i_pivot433_emscripten_compute_dom_pk_code416_c_1_q;
    reg [0:0] redist77_i_pivot423_emscripten_compute_dom_pk_code181_c_1_q;
    reg [0:0] redist78_i_pivot377_emscripten_compute_dom_pk_code237_c_1_q;
    reg [0:0] redist79_i_pivot309_emscripten_compute_dom_pk_code45_c_1_q;
    reg [0:0] redist80_i_pivot271_emscripten_compute_dom_pk_code215_c_1_q;
    reg [0:0] redist81_i_pivot127_emscripten_compute_dom_pk_code165_c_1_q;
    reg [0:0] redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // redist0_sync_together1509_in_i_valid_1(DELAY,2042)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together1509_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together1509_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together1509_in_i_valid_2(DELAY,2043)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together1509_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together1509_in_i_valid_2_q <= $unsigned(redist0_sync_together1509_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,1792)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_const_31(CONSTANT,689)
    assign i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // rightShiftStage3Idx1Pad16_uid2002_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(CONSTANT,2001)
    assign rightShiftStage3Idx1Pad16_uid2002_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage3Idx1Rng16_uid2024_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,2023)@3
    assign rightShiftStage3Idx1Rng16_uid2024_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_b = rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q[31:16];

    // rightShiftStage3Idx1_uid2026_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,2025)@3
    assign rightShiftStage3Idx1_uid2026_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage3Idx1Pad16_uid2002_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage3Idx1Rng16_uid2024_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage1Idx1Pad8_uid1979_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x(CONSTANT,1978)
    assign rightShiftStage1Idx1Pad8_uid1979_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage2Idx1Rng8_uid2019_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,2018)@3
    assign rightShiftStage2Idx1Rng8_uid2019_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_b = rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q[31:8];

    // rightShiftStage2Idx1_uid2021_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,2020)@3
    assign rightShiftStage2Idx1_uid2021_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage1Idx1Pad8_uid1979_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage2Idx1Rng8_uid2019_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage1Idx1Pad4_uid1966_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(CONSTANT,1965)
    assign rightShiftStage1Idx1Pad4_uid1966_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage1Idx1Rng4_uid1965_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,1964)@3
    assign rightShiftStage1Idx1Rng4_uid1965_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_b = rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q[31:4];

    // rightShiftStage1Idx1_uid1967_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,1966)@3
    assign rightShiftStage1Idx1_uid1967_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage1Idx1Pad4_uid1966_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage1Idx1Rng4_uid1965_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage0Idx1Pad2_uid1961_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(CONSTANT,1960)
    assign rightShiftStage0Idx1Pad2_uid1961_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = $unsigned(2'b00);

    // rightShiftStage0Idx1Rng2_uid1960_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,1959)@3
    assign rightShiftStage0Idx1Rng2_uid1960_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_b = redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31:2];

    // rightShiftStage0Idx1_uid1962_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,1961)@3
    assign rightShiftStage0Idx1_uid1962_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage0Idx1Pad2_uid1961_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage0Idx1Rng2_uid1960_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(MUX,1963)@3
    assign rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s or redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q or rightShiftStage0Idx1_uid1962_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q;
            1'b1 : rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage0Idx1_uid1962_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x(MUX,1968)@3
    assign rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s or rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q or rightShiftStage1Idx1_uid1967_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage0_uid1964_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage1Idx1_uid1967_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x(MUX,2022)@3
    assign rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s or rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q or rightShiftStage2Idx1_uid2021_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage2Idx1_uid2021_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x(MUX,2027)@3
    assign rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s or rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q or rightShiftStage3Idx1_uid2026_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage2_uid2023_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage3Idx1_uid2026_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_select_1(BITSELECT,691)@3
    assign i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_select_1_b = rightShiftStage3_uid2028_i_sel_shr5835_emscripten_compute_dom_pk_code0_shift_x_q[1:0];

    // i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_join(BITJOIN,690)@3
    assign i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_join_q = {i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_const_31_q, i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_select_1_b};

    // i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_const_31(CONSTANT,686)
    assign i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_const_31_q = $unsigned(27'b000000000000000000000000000);

    // rightShiftStage3Idx1Rng16_uid2001_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,2000)@3
    assign rightShiftStage3Idx1Rng16_uid2001_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b = rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q[31:16];

    // rightShiftStage3Idx1_uid2003_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,2002)@3
    assign rightShiftStage3Idx1_uid2003_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage3Idx1Pad16_uid2002_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage3Idx1Rng16_uid2001_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage2Idx1Rng8_uid1996_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,1995)@3
    assign rightShiftStage2Idx1Rng8_uid1996_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b = rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q[31:8];

    // rightShiftStage2Idx1_uid1998_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,1997)@3
    assign rightShiftStage2Idx1_uid1998_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage1Idx1Pad8_uid1979_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage2Idx1Rng8_uid1996_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid1991_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,1990)@3
    assign rightShiftStage1Idx1Rng2_uid1991_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b = rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid1993_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,1992)@3
    assign rightShiftStage1Idx1_uid1993_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage0Idx1Pad2_uid1961_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage1Idx1Rng2_uid1991_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1973_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,1972)@3
    assign rightShiftStage0Idx1Rng1_uid1973_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_b = redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31:1];

    // rightShiftStage0Idx1_uid1975_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,1974)@3
    assign rightShiftStage0Idx1_uid1975_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1973_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x(MUX,1976)@3
    assign rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s or redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q or rightShiftStage0Idx1_uid1975_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q;
            1'b1 : rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage0Idx1_uid1975_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(MUX,1994)@3
    assign rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s or rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q or rightShiftStage1Idx1_uid1993_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage1Idx1_uid1993_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(MUX,1999)@3
    assign rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s or rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q or rightShiftStage2Idx1_uid1998_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage2Idx1_uid1998_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x(MUX,2004)@3
    assign rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s or rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q or rightShiftStage3Idx1_uid2003_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage2_uid2000_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage3Idx1_uid2003_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_select_4(BITSELECT,688)@3
    assign i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_select_4_b = rightShiftStage3_uid2005_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q[4:0];

    // i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_join(BITJOIN,687)@3
    assign i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_join_q = {i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_const_31_q, i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_select_4_b};

    // i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_const_31(CONSTANT,683)
    assign i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_const_31_q = $unsigned(9'b000000000);

    // rightShiftStage1Idx1Rng8_uid1978_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,1977)@3
    assign rightShiftStage1Idx1Rng8_uid1978_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_b = rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q[31:8];

    // rightShiftStage1Idx1_uid1980_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,1979)@3
    assign rightShiftStage1Idx1_uid1980_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = {rightShiftStage1Idx1Pad8_uid1979_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q, rightShiftStage1Idx1Rng8_uid1978_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_b};

    // rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x(MUX,1981)@3
    assign rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s or rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q or rightShiftStage1Idx1_uid1980_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage0_uid1977_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage1Idx1_uid1980_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_select_22(BITSELECT,685)@3
    assign i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_select_22_b = rightShiftStage1_uid1982_i_sel_shr5006_emscripten_compute_dom_pk_code0_shift_x_q[22:0];

    // i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_join(BITJOIN,684)@3
    assign i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_join_q = {i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_const_31_q, i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_select_22_b};

    // i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_const_31(CONSTANT,680)
    assign i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_const_31_q = $unsigned(6'b000000);

    // i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_select_25(BITSELECT,682)@3
    assign i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_select_25_b = rightShiftStage1_uid1969_i_sel_shr4809_emscripten_compute_dom_pk_code0_shift_x_q[25:0];

    // i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_join(BITJOIN,681)@3
    assign i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_join_q = {i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_const_31_q, i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_select_25_b};

    // i_sel_shr_emscripten_compute_dom_pk_code1177_vt_const_31(CONSTANT,692)
    assign i_sel_shr_emscripten_compute_dom_pk_code1177_vt_const_31_q = $unsigned(3'b000);

    // i_sel_shr_emscripten_compute_dom_pk_code1177_vt_select_28(BITSELECT,694)@3
    assign i_sel_shr_emscripten_compute_dom_pk_code1177_vt_select_28_b = rightShiftStage1_uid1995_i_sel_shr5805_emscripten_compute_dom_pk_code0_shift_x_q[28:0];

    // i_sel_shr_emscripten_compute_dom_pk_code1177_vt_join(BITJOIN,693)@3
    assign i_sel_shr_emscripten_compute_dom_pk_code1177_vt_join_q = {i_sel_shr_emscripten_compute_dom_pk_code1177_vt_const_31_q, i_sel_shr_emscripten_compute_dom_pk_code1177_vt_select_28_b};

    // valid_fanout_reg159(REG,1951)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg159_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg159_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // enable_stall_connector_not_enable(LOGICAL,2125)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_escape207_emscripten_compute_dom_pk_code1176(BLACKBOX,415)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z2_dom_pk_escape207_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_escape207_emscripten_compute_dom_pk_code1176 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg159_q),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_escape207_emscripten_compute_dom_pk_code1176_out_dest_data_out_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1175(LOGICAL,844)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1175_q = i_and4323_emscripten_compute_dom_pk_code1174_q ^ VCC_q;

    // c_i32_17304274371231_recast_x(CONSTANT,1381)
    assign c_i32_17304274371231_recast_x_q = $unsigned(32'b01100111001001000011101000101101);

    // c_i32_01187(CONSTANT,4)
    assign c_i32_01187_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,1797)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_reduction_emscripten_compute_dom_pk_code_1315_emscripten_compute_dom_pk_code9(BLACKBOX,365)@1
    emscripten_compute_dom_pk_code_i_llvm_fpA000168Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_dest_i32_reduction_emscripten_compute_dom_pk_code_1315_emscripten_compute_dom_pk_code9 (
        .in_intel_reserved_ffwd_159_0(in_intel_reserved_ffwd_159_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_159_0(i_llvm_fpga_ffwd_dest_i32_reduction_emscripten_compute_dom_pk_code_1315_emscripten_compute_dom_pk_code9_out_dest_data_out_159_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,1796)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code8(BLACKBOX,364)@1
    emscripten_compute_dom_pk_code_i_llvm_fpA000167Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code8 (
        .in_intel_reserved_ffwd_158_0(in_intel_reserved_ffwd_158_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_158_0(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code8_out_dest_data_out_158_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select2341_emscripten_compute_dom_pk_code10(MUX,695)@1
    assign i_select2341_emscripten_compute_dom_pk_code10_s = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code8_out_dest_data_out_158_0;
    always @(i_select2341_emscripten_compute_dom_pk_code10_s or i_llvm_fpga_ffwd_dest_i32_reduction_emscripten_compute_dom_pk_code_1315_emscripten_compute_dom_pk_code9_out_dest_data_out_159_0 or c_i32_01187_q)
    begin
        unique case (i_select2341_emscripten_compute_dom_pk_code10_s)
            1'b0 : i_select2341_emscripten_compute_dom_pk_code10_q = i_llvm_fpga_ffwd_dest_i32_reduction_emscripten_compute_dom_pk_code_1315_emscripten_compute_dom_pk_code9_out_dest_data_out_159_0;
            1'b1 : i_select2341_emscripten_compute_dom_pk_code10_q = c_i32_01187_q;
            default : i_select2341_emscripten_compute_dom_pk_code10_q = 32'b0;
        endcase
    end

    // redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1(DELAY,2113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q <= $unsigned(i_select2341_emscripten_compute_dom_pk_code10_q);
        end
    end

    // i_switchleaf369_emscripten_compute_dom_pk_code513(LOGICAL,753)@2
    assign i_switchleaf369_emscripten_compute_dom_pk_code513_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17304274371231_recast_x_q ? 1'b1 : 1'b0);

    // redist31_i_switchleaf369_emscripten_compute_dom_pk_code513_q_1(DELAY,2073)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_switchleaf369_emscripten_compute_dom_pk_code513_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist31_i_switchleaf369_emscripten_compute_dom_pk_code513_q_1_q <= $unsigned(i_switchleaf369_emscripten_compute_dom_pk_code513_q);
        end
    end

    // i_and4323_emscripten_compute_dom_pk_code1174(LOGICAL,355)@3
    assign i_and4323_emscripten_compute_dom_pk_code1174_q = redist31_i_switchleaf369_emscripten_compute_dom_pk_code513_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg158(REG,1950)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg158_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg158_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_0158_emscripten_compute_dom_pk_code1173(BLACKBOX,366)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_0158_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_0158_emscripten_compute_dom_pk_code1173 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg158_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_0158_emscripten_compute_dom_pk_code1173_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1172(LOGICAL,843)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1172_q = i_and4311_emscripten_compute_dom_pk_code1171_q ^ VCC_q;

    // c_i32_17304822651344_recast_x(CONSTANT,1385)
    assign c_i32_17304822651344_recast_x_q = $unsigned(32'b01100111001001010001000001011001);

    // i_pivot375_emscripten_compute_dom_pk_code511(COMPARE,616)@3
    assign i_pivot375_emscripten_compute_dom_pk_code511_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot375_emscripten_compute_dom_pk_code511_b = $unsigned({{2{c_i32_17304822651344_recast_x_q[31]}}, c_i32_17304822651344_recast_x_q});
    assign i_pivot375_emscripten_compute_dom_pk_code511_o = $unsigned($signed(i_pivot375_emscripten_compute_dom_pk_code511_a) - $signed(i_pivot375_emscripten_compute_dom_pk_code511_b));
    assign i_pivot375_emscripten_compute_dom_pk_code511_c[0] = i_pivot375_emscripten_compute_dom_pk_code511_o[33];

    // c_i32_17304822641301_recast_x(CONSTANT,1384)
    assign c_i32_17304822641301_recast_x_q = $unsigned(32'b01100111001001010001000001011000);

    // i_pivot377_emscripten_compute_dom_pk_code237(COMPARE,617)@2
    assign i_pivot377_emscripten_compute_dom_pk_code237_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot377_emscripten_compute_dom_pk_code237_b = $unsigned({{2{c_i32_17304822641301_recast_x_q[31]}}, c_i32_17304822641301_recast_x_q});
    assign i_pivot377_emscripten_compute_dom_pk_code237_o = $unsigned($signed(i_pivot377_emscripten_compute_dom_pk_code237_a) - $signed(i_pivot377_emscripten_compute_dom_pk_code237_b));
    assign i_pivot377_emscripten_compute_dom_pk_code237_c[0] = i_pivot377_emscripten_compute_dom_pk_code237_o[33];

    // redist78_i_pivot377_emscripten_compute_dom_pk_code237_c_1(DELAY,2120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_pivot377_emscripten_compute_dom_pk_code237_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist78_i_pivot377_emscripten_compute_dom_pk_code237_c_1_q <= $unsigned(i_pivot377_emscripten_compute_dom_pk_code237_c);
        end
    end

    // i_acl_4304_emscripten_compute_dom_pk_code1170(LOGICAL,199)@3
    assign i_acl_4304_emscripten_compute_dom_pk_code1170_q = redist78_i_pivot377_emscripten_compute_dom_pk_code237_c_1_q ^ i_pivot375_emscripten_compute_dom_pk_code511_c;

    // i_and4311_emscripten_compute_dom_pk_code1171(LOGICAL,354)@3
    assign i_and4311_emscripten_compute_dom_pk_code1171_q = i_acl_4304_emscripten_compute_dom_pk_code1170_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg157(REG,1949)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg157_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg157_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_1159_emscripten_compute_dom_pk_code1169(BLACKBOX,367)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_1159_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_1159_emscripten_compute_dom_pk_code1169 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg157_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_1159_emscripten_compute_dom_pk_code1169_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1168(LOGICAL,842)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1168_q = i_and4299_emscripten_compute_dom_pk_code1167_q ^ VCC_q;

    // c_i32_17304822661190_recast_x(CONSTANT,1386)
    assign c_i32_17304822661190_recast_x_q = $unsigned(32'b01100111001001010001000001011010);

    // i_pivot495_emscripten_compute_dom_pk_code15(COMPARE,664)@2 + 1
    assign i_pivot495_emscripten_compute_dom_pk_code15_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot495_emscripten_compute_dom_pk_code15_b = $unsigned({{2{c_i32_17304822661190_recast_x_q[31]}}, c_i32_17304822661190_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot495_emscripten_compute_dom_pk_code15_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot495_emscripten_compute_dom_pk_code15_o <= $unsigned($signed(i_pivot495_emscripten_compute_dom_pk_code15_a) - $signed(i_pivot495_emscripten_compute_dom_pk_code15_b));
        end
    end
    assign i_pivot495_emscripten_compute_dom_pk_code15_c[0] = i_pivot495_emscripten_compute_dom_pk_code15_o[33];

    // i_acl_4297_emscripten_compute_dom_pk_code1166(LOGICAL,198)@3
    assign i_acl_4297_emscripten_compute_dom_pk_code1166_q = i_pivot375_emscripten_compute_dom_pk_code511_c ^ i_pivot495_emscripten_compute_dom_pk_code15_c;

    // i_and4299_emscripten_compute_dom_pk_code1167(LOGICAL,353)@3
    assign i_and4299_emscripten_compute_dom_pk_code1167_q = i_acl_4297_emscripten_compute_dom_pk_code1166_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg156(REG,1948)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg156_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg156_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_2160_emscripten_compute_dom_pk_code1165(BLACKBOX,368)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_2160_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_2160_emscripten_compute_dom_pk_code1165 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg156_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_2160_emscripten_compute_dom_pk_code1165_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1164(LOGICAL,841)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1164_q = i_and4287_emscripten_compute_dom_pk_code1163_q ^ VCC_q;

    // c_i32_17304822671343_recast_x(CONSTANT,1387)
    assign c_i32_17304822671343_recast_x_q = $unsigned(32'b01100111001001010001000001011011);

    // i_pivot387_emscripten_compute_dom_pk_code509(COMPARE,622)@3
    assign i_pivot387_emscripten_compute_dom_pk_code509_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot387_emscripten_compute_dom_pk_code509_b = $unsigned({{2{c_i32_17304822671343_recast_x_q[31]}}, c_i32_17304822671343_recast_x_q});
    assign i_pivot387_emscripten_compute_dom_pk_code509_o = $unsigned($signed(i_pivot387_emscripten_compute_dom_pk_code509_a) - $signed(i_pivot387_emscripten_compute_dom_pk_code509_b));
    assign i_pivot387_emscripten_compute_dom_pk_code509_c[0] = i_pivot387_emscripten_compute_dom_pk_code509_o[33];

    // i_acl_4285_emscripten_compute_dom_pk_code1162(LOGICAL,197)@3
    assign i_acl_4285_emscripten_compute_dom_pk_code1162_q = i_pivot495_emscripten_compute_dom_pk_code15_c ^ i_pivot387_emscripten_compute_dom_pk_code509_c;

    // i_and4287_emscripten_compute_dom_pk_code1163(LOGICAL,352)@3
    assign i_and4287_emscripten_compute_dom_pk_code1163_q = i_acl_4285_emscripten_compute_dom_pk_code1162_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg155(REG,1947)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg155_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg155_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_3161_emscripten_compute_dom_pk_code1161(BLACKBOX,369)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_3161_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_3161_emscripten_compute_dom_pk_code1161 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg155_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_3161_emscripten_compute_dom_pk_code1161_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1160(LOGICAL,840)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1160_q = i_and4276_emscripten_compute_dom_pk_code1159_q ^ VCC_q;

    // c_i32_17304822681300_recast_x(CONSTANT,1388)
    assign c_i32_17304822681300_recast_x_q = $unsigned(32'b01100111001001010001000001011100);

    // i_pivot393_emscripten_compute_dom_pk_code235(COMPARE,625)@3
    assign i_pivot393_emscripten_compute_dom_pk_code235_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot393_emscripten_compute_dom_pk_code235_b = $unsigned({{2{c_i32_17304822681300_recast_x_q[31]}}, c_i32_17304822681300_recast_x_q});
    assign i_pivot393_emscripten_compute_dom_pk_code235_o = $unsigned($signed(i_pivot393_emscripten_compute_dom_pk_code235_a) - $signed(i_pivot393_emscripten_compute_dom_pk_code235_b));
    assign i_pivot393_emscripten_compute_dom_pk_code235_c[0] = i_pivot393_emscripten_compute_dom_pk_code235_o[33];

    // i_acl_4270_emscripten_compute_dom_pk_code1158(LOGICAL,196)@3
    assign i_acl_4270_emscripten_compute_dom_pk_code1158_q = i_pivot387_emscripten_compute_dom_pk_code509_c ^ i_pivot393_emscripten_compute_dom_pk_code235_c;

    // i_and4276_emscripten_compute_dom_pk_code1159(LOGICAL,351)@3
    assign i_and4276_emscripten_compute_dom_pk_code1159_q = i_acl_4270_emscripten_compute_dom_pk_code1158_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg154(REG,1946)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg154_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg154_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_4162_emscripten_compute_dom_pk_code1157(BLACKBOX,370)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_4162_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_4162_emscripten_compute_dom_pk_code1157 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg154_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_4162_emscripten_compute_dom_pk_code1157_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1156(LOGICAL,839)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1156_q = i_and4265_emscripten_compute_dom_pk_code1155_q ^ VCC_q;

    // c_i32_17304822691342_recast_x(CONSTANT,1389)
    assign c_i32_17304822691342_recast_x_q = $unsigned(32'b01100111001001010001000001011101);

    // i_pivot391_emscripten_compute_dom_pk_code507(COMPARE,624)@3
    assign i_pivot391_emscripten_compute_dom_pk_code507_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot391_emscripten_compute_dom_pk_code507_b = $unsigned({{2{c_i32_17304822691342_recast_x_q[31]}}, c_i32_17304822691342_recast_x_q});
    assign i_pivot391_emscripten_compute_dom_pk_code507_o = $unsigned($signed(i_pivot391_emscripten_compute_dom_pk_code507_a) - $signed(i_pivot391_emscripten_compute_dom_pk_code507_b));
    assign i_pivot391_emscripten_compute_dom_pk_code507_c[0] = i_pivot391_emscripten_compute_dom_pk_code507_o[33];

    // i_acl_4259_emscripten_compute_dom_pk_code1154(LOGICAL,195)@3
    assign i_acl_4259_emscripten_compute_dom_pk_code1154_q = i_pivot393_emscripten_compute_dom_pk_code235_c ^ i_pivot391_emscripten_compute_dom_pk_code507_c;

    // i_and4265_emscripten_compute_dom_pk_code1155(LOGICAL,350)@3
    assign i_and4265_emscripten_compute_dom_pk_code1155_q = i_acl_4259_emscripten_compute_dom_pk_code1154_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg153(REG,1945)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg153_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg153_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_5163_emscripten_compute_dom_pk_code1153(BLACKBOX,371)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_5163_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_5163_emscripten_compute_dom_pk_code1153 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg153_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_5163_emscripten_compute_dom_pk_code1153_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1152(LOGICAL,838)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1152_q = i_and4254_emscripten_compute_dom_pk_code1151_q ^ VCC_q;

    // c_i32_17304822701341_recast_x(CONSTANT,1390)
    assign c_i32_17304822701341_recast_x_q = $unsigned(32'b01100111001001010001000001011110);

    // i_pivot389_emscripten_compute_dom_pk_code505(COMPARE,623)@3
    assign i_pivot389_emscripten_compute_dom_pk_code505_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot389_emscripten_compute_dom_pk_code505_b = $unsigned({{2{c_i32_17304822701341_recast_x_q[31]}}, c_i32_17304822701341_recast_x_q});
    assign i_pivot389_emscripten_compute_dom_pk_code505_o = $unsigned($signed(i_pivot389_emscripten_compute_dom_pk_code505_a) - $signed(i_pivot389_emscripten_compute_dom_pk_code505_b));
    assign i_pivot389_emscripten_compute_dom_pk_code505_c[0] = i_pivot389_emscripten_compute_dom_pk_code505_o[33];

    // i_acl_4247_emscripten_compute_dom_pk_code1150(LOGICAL,194)@3
    assign i_acl_4247_emscripten_compute_dom_pk_code1150_q = i_pivot391_emscripten_compute_dom_pk_code507_c ^ i_pivot389_emscripten_compute_dom_pk_code505_c;

    // i_and4254_emscripten_compute_dom_pk_code1151(LOGICAL,349)@3
    assign i_and4254_emscripten_compute_dom_pk_code1151_q = i_acl_4247_emscripten_compute_dom_pk_code1150_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg152(REG,1944)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg152_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg152_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_6164_emscripten_compute_dom_pk_code1149(BLACKBOX,372)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_6164_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_6164_emscripten_compute_dom_pk_code1149 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg152_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_6164_emscripten_compute_dom_pk_code1149_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1148(LOGICAL,837)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1148_q = i_and4242_emscripten_compute_dom_pk_code1147_q ^ VCC_q;

    // c_i32_17304822711233_recast_x(CONSTANT,1391)
    assign c_i32_17304822711233_recast_x_q = $unsigned(32'b01100111001001010001000001011111);

    // i_pivot413_emscripten_compute_dom_pk_code101(COMPARE,630)@2 + 1
    assign i_pivot413_emscripten_compute_dom_pk_code101_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot413_emscripten_compute_dom_pk_code101_b = $unsigned({{2{c_i32_17304822711233_recast_x_q[31]}}, c_i32_17304822711233_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot413_emscripten_compute_dom_pk_code101_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot413_emscripten_compute_dom_pk_code101_o <= $unsigned($signed(i_pivot413_emscripten_compute_dom_pk_code101_a) - $signed(i_pivot413_emscripten_compute_dom_pk_code101_b));
        end
    end
    assign i_pivot413_emscripten_compute_dom_pk_code101_c[0] = i_pivot413_emscripten_compute_dom_pk_code101_o[33];

    // i_acl_4237_emscripten_compute_dom_pk_code1146(LOGICAL,193)@3
    assign i_acl_4237_emscripten_compute_dom_pk_code1146_q = i_pivot389_emscripten_compute_dom_pk_code505_c ^ i_pivot413_emscripten_compute_dom_pk_code101_c;

    // i_and4242_emscripten_compute_dom_pk_code1147(LOGICAL,348)@3
    assign i_and4242_emscripten_compute_dom_pk_code1147_q = i_acl_4237_emscripten_compute_dom_pk_code1146_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg151(REG,1943)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg151_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg151_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_7165_emscripten_compute_dom_pk_code1145(BLACKBOX,373)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_7165_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_7165_emscripten_compute_dom_pk_code1145 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg151_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_7165_emscripten_compute_dom_pk_code1145_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1144(LOGICAL,836)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1144_q = i_and4230_emscripten_compute_dom_pk_code1143_q ^ VCC_q;

    // i_switchleaf395_emscripten_compute_dom_pk_code503(LOGICAL,756)@2
    assign i_switchleaf395_emscripten_compute_dom_pk_code503_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17304822711233_recast_x_q ? 1'b1 : 1'b0);

    // redist28_i_switchleaf395_emscripten_compute_dom_pk_code503_q_1(DELAY,2070)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_switchleaf395_emscripten_compute_dom_pk_code503_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist28_i_switchleaf395_emscripten_compute_dom_pk_code503_q_1_q <= $unsigned(i_switchleaf395_emscripten_compute_dom_pk_code503_q);
        end
    end

    // i_and4230_emscripten_compute_dom_pk_code1143(LOGICAL,347)@3
    assign i_and4230_emscripten_compute_dom_pk_code1143_q = redist28_i_switchleaf395_emscripten_compute_dom_pk_code503_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg150(REG,1942)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg150_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg150_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_8166_emscripten_compute_dom_pk_code1142(BLACKBOX,374)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_8166_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_8166_emscripten_compute_dom_pk_code1142 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg150_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_8166_emscripten_compute_dom_pk_code1142_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1141(LOGICAL,835)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1141_q = i_and4218_emscripten_compute_dom_pk_code1140_q ^ VCC_q;

    // c_i32_17304822571298_recast_x(CONSTANT,1383)
    assign c_i32_17304822571298_recast_x_q = $unsigned(32'b01100111001001010001000001010001);

    // i_pivot379_emscripten_compute_dom_pk_code231(COMPARE,618)@2
    assign i_pivot379_emscripten_compute_dom_pk_code231_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot379_emscripten_compute_dom_pk_code231_b = $unsigned({{2{c_i32_17304822571298_recast_x_q[31]}}, c_i32_17304822571298_recast_x_q});
    assign i_pivot379_emscripten_compute_dom_pk_code231_o = $unsigned($signed(i_pivot379_emscripten_compute_dom_pk_code231_a) - $signed(i_pivot379_emscripten_compute_dom_pk_code231_b));
    assign i_pivot379_emscripten_compute_dom_pk_code231_c[0] = i_pivot379_emscripten_compute_dom_pk_code231_o[33];

    // c_i32_17304822561340_recast_x(CONSTANT,1382)
    assign c_i32_17304822561340_recast_x_q = $unsigned(32'b01100111001001010001000001010000);

    // i_pivot371_emscripten_compute_dom_pk_code501(COMPARE,615)@2
    assign i_pivot371_emscripten_compute_dom_pk_code501_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot371_emscripten_compute_dom_pk_code501_b = $unsigned({{2{c_i32_17304822561340_recast_x_q[31]}}, c_i32_17304822561340_recast_x_q});
    assign i_pivot371_emscripten_compute_dom_pk_code501_o = $unsigned($signed(i_pivot371_emscripten_compute_dom_pk_code501_a) - $signed(i_pivot371_emscripten_compute_dom_pk_code501_b));
    assign i_pivot371_emscripten_compute_dom_pk_code501_c[0] = i_pivot371_emscripten_compute_dom_pk_code501_o[33];

    // i_acl_4212_emscripten_compute_dom_pk_code1139(LOGICAL,192)@2 + 1
    assign i_acl_4212_emscripten_compute_dom_pk_code1139_qi = i_pivot371_emscripten_compute_dom_pk_code501_c ^ i_pivot379_emscripten_compute_dom_pk_code231_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_4212_emscripten_compute_dom_pk_code1139_delay ( .xin(i_acl_4212_emscripten_compute_dom_pk_code1139_qi), .xout(i_acl_4212_emscripten_compute_dom_pk_code1139_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_and4218_emscripten_compute_dom_pk_code1140(LOGICAL,346)@3
    assign i_and4218_emscripten_compute_dom_pk_code1140_q = i_acl_4212_emscripten_compute_dom_pk_code1139_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg149(REG,1941)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg149_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg149_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_9167_emscripten_compute_dom_pk_code1138(BLACKBOX,375)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_9167_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_9167_emscripten_compute_dom_pk_code1138 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg149_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_9167_emscripten_compute_dom_pk_code1138_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_switchleaf373_emscripten_compute_dom_pk_code499(LOGICAL,754)@2
    assign i_switchleaf373_emscripten_compute_dom_pk_code499_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17304822571298_recast_x_q ? 1'b1 : 1'b0);

    // redist30_i_switchleaf373_emscripten_compute_dom_pk_code499_q_1(DELAY,2072)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_switchleaf373_emscripten_compute_dom_pk_code499_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist30_i_switchleaf373_emscripten_compute_dom_pk_code499_q_1_q <= $unsigned(i_switchleaf373_emscripten_compute_dom_pk_code499_q);
        end
    end

    // i_and4207_emscripten_compute_dom_pk_code1136(LOGICAL,345)@3
    assign i_and4207_emscripten_compute_dom_pk_code1136_q = redist30_i_switchleaf373_emscripten_compute_dom_pk_code499_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1137(LOGICAL,834)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1137_q = i_and4207_emscripten_compute_dom_pk_code1136_q ^ VCC_q;

    // valid_fanout_reg148(REG,1940)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg148_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg148_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_minus260_emscripten_compute_dom_pk_code1135(BLACKBOX,468)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_minus260_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_minus260_emscripten_compute_dom_pk_code1135 (
        .in_intel_reserved_ffwd_103_0(in_intel_reserved_ffwd_103_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg148_q),
        .out_dest_data_out_103_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_minus260_emscripten_compute_dom_pk_code1135_out_dest_data_out_103_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,1793)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(redist0_sync_together1509_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code167_emscripten_compute_dom_pk_code1(BLACKBOX,363)@2
    emscripten_compute_dom_pk_code_i_llvm_fpA000166Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code167_emscripten_compute_dom_pk_code1 (
        .in_intel_reserved_ffwd_158_0(in_intel_reserved_ffwd_158_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_158_0(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code167_emscripten_compute_dom_pk_code1_out_dest_data_out_158_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_not_emscripten_compute_dom_pk_code2(LOGICAL,520)@2
    assign i_not_emscripten_compute_dom_pk_code2_q = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code167_emscripten_compute_dom_pk_code1_out_dest_data_out_158_0 ^ VCC_q;

    // valid_fanout_reg2(REG,1794)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist0_sync_together1509_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_tobool312_emscripten_compute_dom_pk_code3(BLACKBOX,362)@2
    emscripten_compute_dom_pk_code_i_llvm_fpga_ffwd_dest_i1_tobool312_0 thei_llvm_fpga_ffwd_dest_i1_tobool312_emscripten_compute_dom_pk_code3 (
        .in_intel_reserved_ffwd_155_0(in_intel_reserved_ffwd_155_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_155_0(i_llvm_fpga_ffwd_dest_i1_tobool312_emscripten_compute_dom_pk_code3_out_dest_data_out_155_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_not_tobool_emscripten_compute_dom_pk_code4(LOGICAL,523)@2
    assign i_not_tobool_emscripten_compute_dom_pk_code4_q = i_llvm_fpga_ffwd_dest_i1_tobool312_emscripten_compute_dom_pk_code3_out_dest_data_out_155_0 ^ VCC_q;

    // valid_fanout_reg3(REG,1795)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together1509_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_tobool14314_emscripten_compute_dom_pk_code5(BLACKBOX,361)@2
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zest_i1_tobool14314_0 thei_llvm_fpga_ffwd_dest_i1_tobool14314_emscripten_compute_dom_pk_code5 (
        .in_intel_reserved_ffwd_157_0(in_intel_reserved_ffwd_157_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_157_0(i_llvm_fpga_ffwd_dest_i1_tobool14314_emscripten_compute_dom_pk_code5_out_dest_data_out_157_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_do_directly_while_end_select_emscripten_compute_dom_pk_code6(LOGICAL,359)@2
    assign i_do_directly_while_end_select_emscripten_compute_dom_pk_code6_q = i_llvm_fpga_ffwd_dest_i1_tobool14314_emscripten_compute_dom_pk_code5_out_dest_data_out_157_0 & i_not_tobool_emscripten_compute_dom_pk_code4_q;

    // i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7(LOGICAL,360)@2
    assign i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q = i_do_directly_while_end_select_emscripten_compute_dom_pk_code6_q | i_not_emscripten_compute_dom_pk_code2_q;

    // c_i32_18307282371297_recast_x(CONSTANT,1402)
    assign c_i32_18307282371297_recast_x_q = $unsigned(32'b10010010111000010100110111010011);

    // i_switchleaf21_emscripten_compute_dom_pk_code497(LOGICAL,722)@2
    assign i_switchleaf21_emscripten_compute_dom_pk_code497_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307282371297_recast_x_q ? 1'b1 : 1'b0);

    // i_and4195_emscripten_compute_dom_pk_code1133(LOGICAL,344)@2 + 1
    assign i_and4195_emscripten_compute_dom_pk_code1133_qi = i_switchleaf21_emscripten_compute_dom_pk_code497_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and4195_emscripten_compute_dom_pk_code1133_delay ( .xin(i_and4195_emscripten_compute_dom_pk_code1133_qi), .xout(i_and4195_emscripten_compute_dom_pk_code1133_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code1134(LOGICAL,833)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1134_q = i_and4195_emscripten_compute_dom_pk_code1133_q ^ VCC_q;

    // valid_fanout_reg147(REG,1939)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg147_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg147_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_equal206_emscripten_compute_dom_pk_code1132(BLACKBOX,414)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_equal206_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_equal206_emscripten_compute_dom_pk_code1132 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg147_q),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_equal206_emscripten_compute_dom_pk_code1132_out_dest_data_out_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18306837321249_recast_x(CONSTANT,1398)
    assign c_i32_18306837321249_recast_x_q = $unsigned(32'b10010010111000011111101110101100);

    // i_switchleaf39_emscripten_compute_dom_pk_code495(LOGICAL,758)@2
    assign i_switchleaf39_emscripten_compute_dom_pk_code495_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18306837321249_recast_x_q ? 1'b1 : 1'b0);

    // i_and4182_emscripten_compute_dom_pk_code1130(LOGICAL,343)@2 + 1
    assign i_and4182_emscripten_compute_dom_pk_code1130_qi = i_switchleaf39_emscripten_compute_dom_pk_code495_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and4182_emscripten_compute_dom_pk_code1130_delay ( .xin(i_and4182_emscripten_compute_dom_pk_code1130_qi), .xout(i_and4182_emscripten_compute_dom_pk_code1130_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code1131(LOGICAL,832)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1131_q = i_and4182_emscripten_compute_dom_pk_code1130_q ^ VCC_q;

    // valid_fanout_reg146(REG,1938)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg146_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg146_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backspace181_emscripten_compute_dom_pk_code1129(BLACKBOX,389)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_backspace181_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backspace181_emscripten_compute_dom_pk_code1129 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg146_q),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backspace181_emscripten_compute_dom_pk_code1129_out_dest_data_out_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9184943891295_recast_x(CONSTANT,1490)
    assign c_i32_9184943891295_recast_x_q = $unsigned(32'b00110110101111110001110010110101);

    // i_switchleaf277_emscripten_compute_dom_pk_code493(LOGICAL,727)@2
    assign i_switchleaf277_emscripten_compute_dom_pk_code493_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9184943891295_recast_x_q ? 1'b1 : 1'b0);

    // redist49_i_switchleaf277_emscripten_compute_dom_pk_code493_q_1(DELAY,2091)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_switchleaf277_emscripten_compute_dom_pk_code493_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist49_i_switchleaf277_emscripten_compute_dom_pk_code493_q_1_q <= $unsigned(i_switchleaf277_emscripten_compute_dom_pk_code493_q);
        end
    end

    // i_and4169_emscripten_compute_dom_pk_code1127(LOGICAL,342)@3
    assign i_and4169_emscripten_compute_dom_pk_code1127_q = redist49_i_switchleaf277_emscripten_compute_dom_pk_code493_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1128(LOGICAL,831)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1128_q = i_and4169_emscripten_compute_dom_pk_code1127_q ^ VCC_q;

    // valid_fanout_reg145(REG,1937)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg145_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg145_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_tab304_emscripten_compute_dom_pk_code1126(BLACKBOX,512)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_tab304_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_tab304_emscripten_compute_dom_pk_code1126 (
        .in_intel_reserved_ffwd_147_0(in_intel_reserved_ffwd_147_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg145_q),
        .out_dest_data_out_147_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_tab304_emscripten_compute_dom_pk_code1126_out_dest_data_out_147_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_20729246421229_recast_x(CONSTANT,1425)
    assign c_i32_20729246421229_recast_x_q = $unsigned(32'b01111011100011100101000111100010);

    // i_switchleaf447_emscripten_compute_dom_pk_code491(LOGICAL,770)@2
    assign i_switchleaf447_emscripten_compute_dom_pk_code491_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_20729246421229_recast_x_q ? 1'b1 : 1'b0);

    // i_and4157_emscripten_compute_dom_pk_code1124(LOGICAL,341)@2 + 1
    assign i_and4157_emscripten_compute_dom_pk_code1124_qi = i_switchleaf447_emscripten_compute_dom_pk_code491_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and4157_emscripten_compute_dom_pk_code1124_delay ( .xin(i_and4157_emscripten_compute_dom_pk_code1124_qi), .xout(i_and4157_emscripten_compute_dom_pk_code1124_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code1125(LOGICAL,830)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1125_q = i_and4157_emscripten_compute_dom_pk_code1124_q ^ VCC_q;

    // valid_fanout_reg144(REG,1936)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg144_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg144_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_q293_emscripten_compute_dom_pk_code1123(BLACKBOX,501)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_q293_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_q293_emscripten_compute_dom_pk_code1123 (
        .in_intel_reserved_ffwd_136_0(in_intel_reserved_ffwd_136_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg144_q),
        .out_dest_data_out_136_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_q293_emscripten_compute_dom_pk_code1123_out_dest_data_out_136_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1122(LOGICAL,829)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1122_q = i_and4145_emscripten_compute_dom_pk_code1121_q ^ VCC_q;

    // c_i32_7440535861339_recast_x(CONSTANT,1476)
    assign c_i32_7440535861339_recast_x_q = $unsigned(32'b00101100010110010101101101010010);

    // i_pivot241_emscripten_compute_dom_pk_code489(COMPARE,574)@3
    assign i_pivot241_emscripten_compute_dom_pk_code489_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot241_emscripten_compute_dom_pk_code489_b = $unsigned({{2{c_i32_7440535861339_recast_x_q[31]}}, c_i32_7440535861339_recast_x_q});
    assign i_pivot241_emscripten_compute_dom_pk_code489_o = $unsigned($signed(i_pivot241_emscripten_compute_dom_pk_code489_a) - $signed(i_pivot241_emscripten_compute_dom_pk_code489_b));
    assign i_pivot241_emscripten_compute_dom_pk_code489_c[0] = i_pivot241_emscripten_compute_dom_pk_code489_o[33];

    // c_i32_7440535851293_recast_x(CONSTANT,1475)
    assign c_i32_7440535851293_recast_x_q = $unsigned(32'b00101100010110010101101101010001);

    // i_pivot243_emscripten_compute_dom_pk_code221(COMPARE,575)@3
    assign i_pivot243_emscripten_compute_dom_pk_code221_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot243_emscripten_compute_dom_pk_code221_b = $unsigned({{2{c_i32_7440535851293_recast_x_q[31]}}, c_i32_7440535851293_recast_x_q});
    assign i_pivot243_emscripten_compute_dom_pk_code221_o = $unsigned($signed(i_pivot243_emscripten_compute_dom_pk_code221_a) - $signed(i_pivot243_emscripten_compute_dom_pk_code221_b));
    assign i_pivot243_emscripten_compute_dom_pk_code221_c[0] = i_pivot243_emscripten_compute_dom_pk_code221_o[33];

    // i_acl_4139_emscripten_compute_dom_pk_code1120(LOGICAL,191)@3
    assign i_acl_4139_emscripten_compute_dom_pk_code1120_q = i_pivot243_emscripten_compute_dom_pk_code221_c ^ i_pivot241_emscripten_compute_dom_pk_code489_c;

    // i_and4145_emscripten_compute_dom_pk_code1121(LOGICAL,340)@3
    assign i_and4145_emscripten_compute_dom_pk_code1121_q = i_acl_4139_emscripten_compute_dom_pk_code1120_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg143(REG,1935)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg143_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg143_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_w308_emscripten_compute_dom_pk_code1119(BLACKBOX,516)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_w308_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_w308_emscripten_compute_dom_pk_code1119 (
        .in_intel_reserved_ffwd_151_0(in_intel_reserved_ffwd_151_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg143_q),
        .out_dest_data_out_151_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_w308_emscripten_compute_dom_pk_code1119_out_dest_data_out_151_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1118(LOGICAL,828)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1118_q = i_and4134_emscripten_compute_dom_pk_code1117_q ^ VCC_q;

    // c_i32_7440535921227_recast_x(CONSTANT,1482)
    assign c_i32_7440535921227_recast_x_q = $unsigned(32'b00101100010110010101101101011000);

    // i_pivot273_emscripten_compute_dom_pk_code89(COMPARE,588)@2 + 1
    assign i_pivot273_emscripten_compute_dom_pk_code89_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot273_emscripten_compute_dom_pk_code89_b = $unsigned({{2{c_i32_7440535921227_recast_x_q[31]}}, c_i32_7440535921227_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot273_emscripten_compute_dom_pk_code89_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot273_emscripten_compute_dom_pk_code89_o <= $unsigned($signed(i_pivot273_emscripten_compute_dom_pk_code89_a) - $signed(i_pivot273_emscripten_compute_dom_pk_code89_b));
        end
    end
    assign i_pivot273_emscripten_compute_dom_pk_code89_c[0] = i_pivot273_emscripten_compute_dom_pk_code89_o[33];

    // c_i32_7440535911338_recast_x(CONSTANT,1481)
    assign c_i32_7440535911338_recast_x_q = $unsigned(32'b00101100010110010101101101010111);

    // i_pivot255_emscripten_compute_dom_pk_code487(COMPARE,581)@3
    assign i_pivot255_emscripten_compute_dom_pk_code487_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot255_emscripten_compute_dom_pk_code487_b = $unsigned({{2{c_i32_7440535911338_recast_x_q[31]}}, c_i32_7440535911338_recast_x_q});
    assign i_pivot255_emscripten_compute_dom_pk_code487_o = $unsigned($signed(i_pivot255_emscripten_compute_dom_pk_code487_a) - $signed(i_pivot255_emscripten_compute_dom_pk_code487_b));
    assign i_pivot255_emscripten_compute_dom_pk_code487_c[0] = i_pivot255_emscripten_compute_dom_pk_code487_o[33];

    // i_acl_4129_emscripten_compute_dom_pk_code1116(LOGICAL,190)@3
    assign i_acl_4129_emscripten_compute_dom_pk_code1116_q = i_pivot255_emscripten_compute_dom_pk_code487_c ^ i_pivot273_emscripten_compute_dom_pk_code89_c;

    // i_and4134_emscripten_compute_dom_pk_code1117(LOGICAL,339)@3
    assign i_and4134_emscripten_compute_dom_pk_code1117_q = i_acl_4129_emscripten_compute_dom_pk_code1116_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg142(REG,1934)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg142_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg142_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_e202_emscripten_compute_dom_pk_code1115(BLACKBOX,410)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_e202_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_e202_emscripten_compute_dom_pk_code1115 (
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg142_q),
        .out_dest_data_out_45_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_e202_emscripten_compute_dom_pk_code1115_out_dest_data_out_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1114(LOGICAL,827)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1114_q = i_and4123_emscripten_compute_dom_pk_code1113_q ^ VCC_q;

    // c_i32_7440535741337_recast_x(CONSTANT,1464)
    assign c_i32_7440535741337_recast_x_q = $unsigned(32'b00101100010110010101101101000110);

    // i_pivot219_emscripten_compute_dom_pk_code485(COMPARE,562)@3
    assign i_pivot219_emscripten_compute_dom_pk_code485_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot219_emscripten_compute_dom_pk_code485_b = $unsigned({{2{c_i32_7440535741337_recast_x_q[31]}}, c_i32_7440535741337_recast_x_q});
    assign i_pivot219_emscripten_compute_dom_pk_code485_o = $unsigned($signed(i_pivot219_emscripten_compute_dom_pk_code485_a) - $signed(i_pivot219_emscripten_compute_dom_pk_code485_b));
    assign i_pivot219_emscripten_compute_dom_pk_code485_c[0] = i_pivot219_emscripten_compute_dom_pk_code485_o[33];

    // c_i32_7440535731226_recast_x(CONSTANT,1463)
    assign c_i32_7440535731226_recast_x_q = $unsigned(32'b00101100010110010101101101000101);

    // i_pivot227_emscripten_compute_dom_pk_code87(COMPARE,566)@3
    assign i_pivot227_emscripten_compute_dom_pk_code87_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot227_emscripten_compute_dom_pk_code87_b = $unsigned({{2{c_i32_7440535731226_recast_x_q[31]}}, c_i32_7440535731226_recast_x_q});
    assign i_pivot227_emscripten_compute_dom_pk_code87_o = $unsigned($signed(i_pivot227_emscripten_compute_dom_pk_code87_a) - $signed(i_pivot227_emscripten_compute_dom_pk_code87_b));
    assign i_pivot227_emscripten_compute_dom_pk_code87_c[0] = i_pivot227_emscripten_compute_dom_pk_code87_o[33];

    // i_acl_4118_emscripten_compute_dom_pk_code1112(LOGICAL,189)@3
    assign i_acl_4118_emscripten_compute_dom_pk_code1112_q = i_pivot227_emscripten_compute_dom_pk_code87_c ^ i_pivot219_emscripten_compute_dom_pk_code485_c;

    // i_and4123_emscripten_compute_dom_pk_code1113(LOGICAL,338)@3
    assign i_and4123_emscripten_compute_dom_pk_code1113_q = i_acl_4118_emscripten_compute_dom_pk_code1112_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg141(REG,1933)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg141_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg141_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_r295_emscripten_compute_dom_pk_code1111(BLACKBOX,503)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_r295_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_r295_emscripten_compute_dom_pk_code1111 (
        .in_intel_reserved_ffwd_138_0(in_intel_reserved_ffwd_138_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg141_q),
        .out_dest_data_out_138_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_r295_emscripten_compute_dom_pk_code1111_out_dest_data_out_138_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1110(LOGICAL,826)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1110_q = i_and4112_emscripten_compute_dom_pk_code1109_q ^ VCC_q;

    // c_i32_7440535871336_recast_x(CONSTANT,1477)
    assign c_i32_7440535871336_recast_x_q = $unsigned(32'b00101100010110010101101101010011);

    // i_pivot239_emscripten_compute_dom_pk_code483(COMPARE,572)@3
    assign i_pivot239_emscripten_compute_dom_pk_code483_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot239_emscripten_compute_dom_pk_code483_b = $unsigned({{2{c_i32_7440535871336_recast_x_q[31]}}, c_i32_7440535871336_recast_x_q});
    assign i_pivot239_emscripten_compute_dom_pk_code483_o = $unsigned($signed(i_pivot239_emscripten_compute_dom_pk_code483_a) - $signed(i_pivot239_emscripten_compute_dom_pk_code483_b));
    assign i_pivot239_emscripten_compute_dom_pk_code483_c[0] = i_pivot239_emscripten_compute_dom_pk_code483_o[33];

    // i_acl_4105_emscripten_compute_dom_pk_code1108(LOGICAL,188)@3
    assign i_acl_4105_emscripten_compute_dom_pk_code1108_q = i_pivot241_emscripten_compute_dom_pk_code489_c ^ i_pivot239_emscripten_compute_dom_pk_code483_c;

    // i_and4112_emscripten_compute_dom_pk_code1109(LOGICAL,337)@3
    assign i_and4112_emscripten_compute_dom_pk_code1109_q = i_acl_4105_emscripten_compute_dom_pk_code1108_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg140(REG,1932)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg140_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg140_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_t303_emscripten_compute_dom_pk_code1107(BLACKBOX,511)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_t303_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_t303_emscripten_compute_dom_pk_code1107 (
        .in_intel_reserved_ffwd_146_0(in_intel_reserved_ffwd_146_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg140_q),
        .out_dest_data_out_146_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_t303_emscripten_compute_dom_pk_code1107_out_dest_data_out_146_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1106(LOGICAL,825)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1106_q = i_and4100_emscripten_compute_dom_pk_code1105_q ^ VCC_q;

    // c_i32_7440535891335_recast_x(CONSTANT,1479)
    assign c_i32_7440535891335_recast_x_q = $unsigned(32'b00101100010110010101101101010101);

    // i_pivot253_emscripten_compute_dom_pk_code481(COMPARE,580)@3
    assign i_pivot253_emscripten_compute_dom_pk_code481_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot253_emscripten_compute_dom_pk_code481_b = $unsigned({{2{c_i32_7440535891335_recast_x_q[31]}}, c_i32_7440535891335_recast_x_q});
    assign i_pivot253_emscripten_compute_dom_pk_code481_o = $unsigned($signed(i_pivot253_emscripten_compute_dom_pk_code481_a) - $signed(i_pivot253_emscripten_compute_dom_pk_code481_b));
    assign i_pivot253_emscripten_compute_dom_pk_code481_c[0] = i_pivot253_emscripten_compute_dom_pk_code481_o[33];

    // c_i32_7440535881188_recast_x(CONSTANT,1478)
    assign c_i32_7440535881188_recast_x_q = $unsigned(32'b00101100010110010101101101010100);

    // i_pivot497_emscripten_compute_dom_pk_code11(COMPARE,665)@3
    assign i_pivot497_emscripten_compute_dom_pk_code11_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot497_emscripten_compute_dom_pk_code11_b = $unsigned({{2{c_i32_7440535881188_recast_x_q[31]}}, c_i32_7440535881188_recast_x_q});
    assign i_pivot497_emscripten_compute_dom_pk_code11_o = $unsigned($signed(i_pivot497_emscripten_compute_dom_pk_code11_a) - $signed(i_pivot497_emscripten_compute_dom_pk_code11_b));
    assign i_pivot497_emscripten_compute_dom_pk_code11_c[0] = i_pivot497_emscripten_compute_dom_pk_code11_o[33];

    // i_acl_4099_emscripten_compute_dom_pk_code1104(LOGICAL,187)@3
    assign i_acl_4099_emscripten_compute_dom_pk_code1104_q = i_pivot497_emscripten_compute_dom_pk_code11_c ^ i_pivot253_emscripten_compute_dom_pk_code481_c;

    // i_and4100_emscripten_compute_dom_pk_code1105(LOGICAL,336)@3
    assign i_and4100_emscripten_compute_dom_pk_code1105_q = i_acl_4099_emscripten_compute_dom_pk_code1104_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg139(REG,1931)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg139_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg139_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_y310_emscripten_compute_dom_pk_code1103(BLACKBOX,518)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_y310_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_y310_emscripten_compute_dom_pk_code1103 (
        .in_intel_reserved_ffwd_153_0(in_intel_reserved_ffwd_153_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg139_q),
        .out_dest_data_out_153_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_y310_emscripten_compute_dom_pk_code1103_out_dest_data_out_153_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1102(LOGICAL,824)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1102_q = i_and4089_emscripten_compute_dom_pk_code1101_q ^ VCC_q;

    // c_i32_7440535941290_recast_x(CONSTANT,1484)
    assign c_i32_7440535941290_recast_x_q = $unsigned(32'b00101100010110010101101101011010);

    // i_pivot271_emscripten_compute_dom_pk_code215(COMPARE,587)@2
    assign i_pivot271_emscripten_compute_dom_pk_code215_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot271_emscripten_compute_dom_pk_code215_b = $unsigned({{2{c_i32_7440535941290_recast_x_q[31]}}, c_i32_7440535941290_recast_x_q});
    assign i_pivot271_emscripten_compute_dom_pk_code215_o = $unsigned($signed(i_pivot271_emscripten_compute_dom_pk_code215_a) - $signed(i_pivot271_emscripten_compute_dom_pk_code215_b));
    assign i_pivot271_emscripten_compute_dom_pk_code215_c[0] = i_pivot271_emscripten_compute_dom_pk_code215_o[33];

    // redist80_i_pivot271_emscripten_compute_dom_pk_code215_c_1(DELAY,2122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_pivot271_emscripten_compute_dom_pk_code215_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist80_i_pivot271_emscripten_compute_dom_pk_code215_c_1_q <= $unsigned(i_pivot271_emscripten_compute_dom_pk_code215_c);
        end
    end

    // c_i32_7440535931334_recast_x(CONSTANT,1483)
    assign c_i32_7440535931334_recast_x_q = $unsigned(32'b00101100010110010101101101011001);

    // i_pivot259_emscripten_compute_dom_pk_code479(COMPARE,583)@3
    assign i_pivot259_emscripten_compute_dom_pk_code479_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot259_emscripten_compute_dom_pk_code479_b = $unsigned({{2{c_i32_7440535931334_recast_x_q[31]}}, c_i32_7440535931334_recast_x_q});
    assign i_pivot259_emscripten_compute_dom_pk_code479_o = $unsigned($signed(i_pivot259_emscripten_compute_dom_pk_code479_a) - $signed(i_pivot259_emscripten_compute_dom_pk_code479_b));
    assign i_pivot259_emscripten_compute_dom_pk_code479_c[0] = i_pivot259_emscripten_compute_dom_pk_code479_o[33];

    // i_acl_4083_emscripten_compute_dom_pk_code1100(LOGICAL,186)@3
    assign i_acl_4083_emscripten_compute_dom_pk_code1100_q = i_pivot259_emscripten_compute_dom_pk_code479_c ^ redist80_i_pivot271_emscripten_compute_dom_pk_code215_c_1_q;

    // i_and4089_emscripten_compute_dom_pk_code1101(LOGICAL,335)@3
    assign i_and4089_emscripten_compute_dom_pk_code1101_q = i_acl_4083_emscripten_compute_dom_pk_code1100_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg138(REG,1930)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg138_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg138_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_u305_emscripten_compute_dom_pk_code1099(BLACKBOX,513)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_u305_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_u305_emscripten_compute_dom_pk_code1099 (
        .in_intel_reserved_ffwd_148_0(in_intel_reserved_ffwd_148_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg138_q),
        .out_dest_data_out_148_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_u305_emscripten_compute_dom_pk_code1099_out_dest_data_out_148_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1098(LOGICAL,823)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1098_q = i_and4078_emscripten_compute_dom_pk_code1097_q ^ VCC_q;

    // c_i32_7440535901292_recast_x(CONSTANT,1480)
    assign c_i32_7440535901292_recast_x_q = $unsigned(32'b00101100010110010101101101010110);

    // i_pivot257_emscripten_compute_dom_pk_code219(COMPARE,582)@3
    assign i_pivot257_emscripten_compute_dom_pk_code219_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot257_emscripten_compute_dom_pk_code219_b = $unsigned({{2{c_i32_7440535901292_recast_x_q[31]}}, c_i32_7440535901292_recast_x_q});
    assign i_pivot257_emscripten_compute_dom_pk_code219_o = $unsigned($signed(i_pivot257_emscripten_compute_dom_pk_code219_a) - $signed(i_pivot257_emscripten_compute_dom_pk_code219_b));
    assign i_pivot257_emscripten_compute_dom_pk_code219_c[0] = i_pivot257_emscripten_compute_dom_pk_code219_o[33];

    // i_acl_4072_emscripten_compute_dom_pk_code1096(LOGICAL,185)@3
    assign i_acl_4072_emscripten_compute_dom_pk_code1096_q = i_pivot253_emscripten_compute_dom_pk_code481_c ^ i_pivot257_emscripten_compute_dom_pk_code219_c;

    // i_and4078_emscripten_compute_dom_pk_code1097(LOGICAL,334)@3
    assign i_and4078_emscripten_compute_dom_pk_code1097_q = i_acl_4072_emscripten_compute_dom_pk_code1096_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg137(REG,1929)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg137_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg137_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_i237_emscripten_compute_dom_pk_code1095(BLACKBOX,445)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_i237_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_i237_emscripten_compute_dom_pk_code1095 (
        .in_intel_reserved_ffwd_80_0(in_intel_reserved_ffwd_80_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg137_q),
        .out_dest_data_out_80_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_i237_emscripten_compute_dom_pk_code1095_out_dest_data_out_80_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1094(LOGICAL,822)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1094_q = i_and4067_emscripten_compute_dom_pk_code1093_q ^ VCC_q;

    // c_i32_7440535781204_recast_x(CONSTANT,1468)
    assign c_i32_7440535781204_recast_x_q = $unsigned(32'b00101100010110010101101101001010);

    // i_pivot247_emscripten_compute_dom_pk_code43(COMPARE,577)@3
    assign i_pivot247_emscripten_compute_dom_pk_code43_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot247_emscripten_compute_dom_pk_code43_b = $unsigned({{2{c_i32_7440535781204_recast_x_q[31]}}, c_i32_7440535781204_recast_x_q});
    assign i_pivot247_emscripten_compute_dom_pk_code43_o = $unsigned($signed(i_pivot247_emscripten_compute_dom_pk_code43_a) - $signed(i_pivot247_emscripten_compute_dom_pk_code43_b));
    assign i_pivot247_emscripten_compute_dom_pk_code43_c[0] = i_pivot247_emscripten_compute_dom_pk_code43_o[33];

    // c_i32_7440535771333_recast_x(CONSTANT,1467)
    assign c_i32_7440535771333_recast_x_q = $unsigned(32'b00101100010110010101101101001001);

    // i_pivot221_emscripten_compute_dom_pk_code477(COMPARE,563)@3
    assign i_pivot221_emscripten_compute_dom_pk_code477_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot221_emscripten_compute_dom_pk_code477_b = $unsigned({{2{c_i32_7440535771333_recast_x_q[31]}}, c_i32_7440535771333_recast_x_q});
    assign i_pivot221_emscripten_compute_dom_pk_code477_o = $unsigned($signed(i_pivot221_emscripten_compute_dom_pk_code477_a) - $signed(i_pivot221_emscripten_compute_dom_pk_code477_b));
    assign i_pivot221_emscripten_compute_dom_pk_code477_c[0] = i_pivot221_emscripten_compute_dom_pk_code477_o[33];

    // i_acl_4063_emscripten_compute_dom_pk_code1092(LOGICAL,184)@3
    assign i_acl_4063_emscripten_compute_dom_pk_code1092_q = i_pivot221_emscripten_compute_dom_pk_code477_c ^ i_pivot247_emscripten_compute_dom_pk_code43_c;

    // i_and4067_emscripten_compute_dom_pk_code1093(LOGICAL,333)@3
    assign i_and4067_emscripten_compute_dom_pk_code1093_q = i_acl_4063_emscripten_compute_dom_pk_code1092_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg136(REG,1928)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg136_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg136_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_o282_emscripten_compute_dom_pk_code1091(BLACKBOX,490)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_o282_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_o282_emscripten_compute_dom_pk_code1091 (
        .in_intel_reserved_ffwd_125_0(in_intel_reserved_ffwd_125_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg136_q),
        .out_dest_data_out_125_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_o282_emscripten_compute_dom_pk_code1091_out_dest_data_out_125_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1090(LOGICAL,821)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1090_q = i_and4055_emscripten_compute_dom_pk_code1089_q ^ VCC_q;

    // c_i32_7440535841332_recast_x(CONSTANT,1474)
    assign c_i32_7440535841332_recast_x_q = $unsigned(32'b00101100010110010101101101010000);

    // i_pivot237_emscripten_compute_dom_pk_code475(COMPARE,571)@3
    assign i_pivot237_emscripten_compute_dom_pk_code475_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot237_emscripten_compute_dom_pk_code475_b = $unsigned({{2{c_i32_7440535841332_recast_x_q[31]}}, c_i32_7440535841332_recast_x_q});
    assign i_pivot237_emscripten_compute_dom_pk_code475_o = $unsigned($signed(i_pivot237_emscripten_compute_dom_pk_code475_a) - $signed(i_pivot237_emscripten_compute_dom_pk_code475_b));
    assign i_pivot237_emscripten_compute_dom_pk_code475_c[0] = i_pivot237_emscripten_compute_dom_pk_code475_o[33];

    // c_i32_7440535831228_recast_x(CONSTANT,1473)
    assign c_i32_7440535831228_recast_x_q = $unsigned(32'b00101100010110010101101101001111);

    // i_pivot245_emscripten_compute_dom_pk_code91(COMPARE,576)@3
    assign i_pivot245_emscripten_compute_dom_pk_code91_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot245_emscripten_compute_dom_pk_code91_b = $unsigned({{2{c_i32_7440535831228_recast_x_q[31]}}, c_i32_7440535831228_recast_x_q});
    assign i_pivot245_emscripten_compute_dom_pk_code91_o = $unsigned($signed(i_pivot245_emscripten_compute_dom_pk_code91_a) - $signed(i_pivot245_emscripten_compute_dom_pk_code91_b));
    assign i_pivot245_emscripten_compute_dom_pk_code91_c[0] = i_pivot245_emscripten_compute_dom_pk_code91_o[33];

    // i_acl_4050_emscripten_compute_dom_pk_code1088(LOGICAL,183)@3
    assign i_acl_4050_emscripten_compute_dom_pk_code1088_q = i_pivot245_emscripten_compute_dom_pk_code91_c ^ i_pivot237_emscripten_compute_dom_pk_code475_c;

    // i_and4055_emscripten_compute_dom_pk_code1089(LOGICAL,332)@3
    assign i_and4055_emscripten_compute_dom_pk_code1089_q = i_acl_4050_emscripten_compute_dom_pk_code1088_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg135(REG,1927)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg135_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg135_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_p285_emscripten_compute_dom_pk_code1087(BLACKBOX,493)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_p285_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_p285_emscripten_compute_dom_pk_code1087 (
        .in_intel_reserved_ffwd_128_0(in_intel_reserved_ffwd_128_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg135_q),
        .out_dest_data_out_128_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_p285_emscripten_compute_dom_pk_code1087_out_dest_data_out_128_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1086(LOGICAL,820)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1086_q = i_and4044_emscripten_compute_dom_pk_code1085_q ^ VCC_q;

    // i_acl_4038_emscripten_compute_dom_pk_code1084(LOGICAL,182)@3
    assign i_acl_4038_emscripten_compute_dom_pk_code1084_q = i_pivot237_emscripten_compute_dom_pk_code475_c ^ i_pivot243_emscripten_compute_dom_pk_code221_c;

    // i_and4044_emscripten_compute_dom_pk_code1085(LOGICAL,331)@3
    assign i_and4044_emscripten_compute_dom_pk_code1085_q = i_acl_4038_emscripten_compute_dom_pk_code1084_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg134(REG,1926)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg134_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg134_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_left182_emscripten_compute_dom_pk_code1083(BLACKBOX,390)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_bracket_left182_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_left182_emscripten_compute_dom_pk_code1083 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg134_q),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_left182_emscripten_compute_dom_pk_code1083_out_dest_data_out_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11717891961202_recast_x(CONSTANT,1366)
    assign c_i32_11717891961202_recast_x_q = $unsigned(32'b01000101110110000001010110001100);

    // i_switchleaf331_emscripten_compute_dom_pk_code473(LOGICAL,742)@2
    assign i_switchleaf331_emscripten_compute_dom_pk_code473_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_11717891961202_recast_x_q ? 1'b1 : 1'b0);

    // redist40_i_switchleaf331_emscripten_compute_dom_pk_code473_q_1(DELAY,2082)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_switchleaf331_emscripten_compute_dom_pk_code473_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist40_i_switchleaf331_emscripten_compute_dom_pk_code473_q_1_q <= $unsigned(i_switchleaf331_emscripten_compute_dom_pk_code473_q);
        end
    end

    // i_and4033_emscripten_compute_dom_pk_code1081(LOGICAL,330)@3
    assign i_and4033_emscripten_compute_dom_pk_code1081_q = redist40_i_switchleaf331_emscripten_compute_dom_pk_code473_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1082(LOGICAL,819)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1082_q = i_and4033_emscripten_compute_dom_pk_code1081_q ^ VCC_q;

    // valid_fanout_reg133(REG,1925)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg133_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg133_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_right183_emscripten_compute_dom_pk_code1080(BLACKBOX,391)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zk_bracket_right183_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_right183_emscripten_compute_dom_pk_code1080 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg133_q),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_right183_emscripten_compute_dom_pk_code1080_out_dest_data_out_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5550409001224_recast_x(CONSTANT,1451)
    assign c_i32_5550409001224_recast_x_q = $unsigned(32'b11011110111010101011111101111100);

    // i_switchleaf141_emscripten_compute_dom_pk_code471(LOGICAL,702)@2
    assign i_switchleaf141_emscripten_compute_dom_pk_code471_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_5550409001224_recast_x_q ? 1'b1 : 1'b0);

    // i_and4021_emscripten_compute_dom_pk_code1078(LOGICAL,329)@2 + 1
    assign i_and4021_emscripten_compute_dom_pk_code1078_qi = i_switchleaf141_emscripten_compute_dom_pk_code471_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and4021_emscripten_compute_dom_pk_code1078_delay ( .xin(i_and4021_emscripten_compute_dom_pk_code1078_qi), .xout(i_and4021_emscripten_compute_dom_pk_code1078_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code1079(LOGICAL,818)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1079_q = i_and4021_emscripten_compute_dom_pk_code1078_q ^ VCC_q;

    // valid_fanout_reg132(REG,1924)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg132_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg132_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_enter205_emscripten_compute_dom_pk_code1077(BLACKBOX,413)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_enter205_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_enter205_emscripten_compute_dom_pk_code1077 (
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg132_q),
        .out_dest_data_out_48_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_enter205_emscripten_compute_dom_pk_code1077_out_dest_data_out_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18306975181287_recast_x(CONSTANT,1400)
    assign c_i32_18306975181287_recast_x_q = $unsigned(32'b10010010111000011100010111010010);

    // i_switchleaf33_emscripten_compute_dom_pk_code469(LOGICAL,746)@2
    assign i_switchleaf33_emscripten_compute_dom_pk_code469_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18306975181287_recast_x_q ? 1'b1 : 1'b0);

    // redist37_i_switchleaf33_emscripten_compute_dom_pk_code469_q_1(DELAY,2079)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_switchleaf33_emscripten_compute_dom_pk_code469_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist37_i_switchleaf33_emscripten_compute_dom_pk_code469_q_1_q <= $unsigned(i_switchleaf33_emscripten_compute_dom_pk_code469_q);
        end
    end

    // i_and4009_emscripten_compute_dom_pk_code1075(LOGICAL,328)@3
    assign i_and4009_emscripten_compute_dom_pk_code1075_q = redist37_i_switchleaf33_emscripten_compute_dom_pk_code469_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1076(LOGICAL,817)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1076_q = i_and4009_emscripten_compute_dom_pk_code1075_q ^ VCC_q;

    // valid_fanout_reg131(REG,1923)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg131_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg131_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_left195_emscripten_compute_dom_pk_code1074(BLACKBOX,403)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_control_left195_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_left195_emscripten_compute_dom_pk_code1074 (
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg131_q),
        .out_dest_data_out_38_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_left195_emscripten_compute_dom_pk_code1074_out_dest_data_out_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5310654601201_recast_x(CONSTANT,1449)
    assign c_i32_5310654601201_recast_x_q = $unsigned(32'b11100000010110001001010110001100);

    // i_switchleaf149_emscripten_compute_dom_pk_code467(LOGICAL,704)@2
    assign i_switchleaf149_emscripten_compute_dom_pk_code467_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_5310654601201_recast_x_q ? 1'b1 : 1'b0);

    // redist63_i_switchleaf149_emscripten_compute_dom_pk_code467_q_1(DELAY,2105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_switchleaf149_emscripten_compute_dom_pk_code467_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist63_i_switchleaf149_emscripten_compute_dom_pk_code467_q_1_q <= $unsigned(i_switchleaf149_emscripten_compute_dom_pk_code467_q);
        end
    end

    // i_and3997_emscripten_compute_dom_pk_code1072(LOGICAL,327)@3
    assign i_and3997_emscripten_compute_dom_pk_code1072_q = redist63_i_switchleaf149_emscripten_compute_dom_pk_code467_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1073(LOGICAL,816)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1073_q = i_and3997_emscripten_compute_dom_pk_code1072_q ^ VCC_q;

    // valid_fanout_reg130(REG,1922)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg130_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg130_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_a168_emscripten_compute_dom_pk_code1071(BLACKBOX,376)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_a168_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_a168_emscripten_compute_dom_pk_code1071 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg130_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_a168_emscripten_compute_dom_pk_code1071_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1070(LOGICAL,815)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1070_q = i_and3985_emscripten_compute_dom_pk_code1069_q ^ VCC_q;

    // c_i32_7440535701285_recast_x(CONSTANT,1460)
    assign c_i32_7440535701285_recast_x_q = $unsigned(32'b00101100010110010101101101000010);

    // i_pivot217_emscripten_compute_dom_pk_code205(COMPARE,561)@3
    assign i_pivot217_emscripten_compute_dom_pk_code205_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot217_emscripten_compute_dom_pk_code205_b = $unsigned({{2{c_i32_7440535701285_recast_x_q[31]}}, c_i32_7440535701285_recast_x_q});
    assign i_pivot217_emscripten_compute_dom_pk_code205_o = $unsigned($signed(i_pivot217_emscripten_compute_dom_pk_code205_a) - $signed(i_pivot217_emscripten_compute_dom_pk_code205_b));
    assign i_pivot217_emscripten_compute_dom_pk_code205_c[0] = i_pivot217_emscripten_compute_dom_pk_code205_o[33];

    // c_i32_7440535691331_recast_x(CONSTANT,1459)
    assign c_i32_7440535691331_recast_x_q = $unsigned(32'b00101100010110010101101101000001);

    // i_pivot211_emscripten_compute_dom_pk_code465(COMPARE,558)@2 + 1
    assign i_pivot211_emscripten_compute_dom_pk_code465_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot211_emscripten_compute_dom_pk_code465_b = $unsigned({{2{c_i32_7440535691331_recast_x_q[31]}}, c_i32_7440535691331_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot211_emscripten_compute_dom_pk_code465_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot211_emscripten_compute_dom_pk_code465_o <= $unsigned($signed(i_pivot211_emscripten_compute_dom_pk_code465_a) - $signed(i_pivot211_emscripten_compute_dom_pk_code465_b));
        end
    end
    assign i_pivot211_emscripten_compute_dom_pk_code465_c[0] = i_pivot211_emscripten_compute_dom_pk_code465_o[33];

    // i_acl_3979_emscripten_compute_dom_pk_code1068(LOGICAL,181)@3
    assign i_acl_3979_emscripten_compute_dom_pk_code1068_q = i_pivot211_emscripten_compute_dom_pk_code465_c ^ i_pivot217_emscripten_compute_dom_pk_code205_c;

    // i_and3985_emscripten_compute_dom_pk_code1069(LOGICAL,326)@3
    assign i_and3985_emscripten_compute_dom_pk_code1069_q = i_acl_3979_emscripten_compute_dom_pk_code1068_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg129(REG,1921)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg129_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg129_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_s296_emscripten_compute_dom_pk_code1067(BLACKBOX,504)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_s296_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_s296_emscripten_compute_dom_pk_code1067 (
        .in_intel_reserved_ffwd_139_0(in_intel_reserved_ffwd_139_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg129_q),
        .out_dest_data_out_139_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_s296_emscripten_compute_dom_pk_code1067_out_dest_data_out_139_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1066(LOGICAL,814)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1066_q = i_and3974_emscripten_compute_dom_pk_code1065_q ^ VCC_q;

    // i_acl_3973_emscripten_compute_dom_pk_code1064(LOGICAL,180)@3
    assign i_acl_3973_emscripten_compute_dom_pk_code1064_q = i_pivot239_emscripten_compute_dom_pk_code483_c ^ i_pivot497_emscripten_compute_dom_pk_code11_c;

    // i_and3974_emscripten_compute_dom_pk_code1065(LOGICAL,325)@3
    assign i_and3974_emscripten_compute_dom_pk_code1065_q = i_acl_3973_emscripten_compute_dom_pk_code1064_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg128(REG,1920)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg128_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg128_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_d200_emscripten_compute_dom_pk_code1063(BLACKBOX,408)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_d200_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_d200_emscripten_compute_dom_pk_code1063 (
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg128_q),
        .out_dest_data_out_43_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_d200_emscripten_compute_dom_pk_code1063_out_dest_data_out_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1062(LOGICAL,813)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1062_q = i_and3962_emscripten_compute_dom_pk_code1061_q ^ VCC_q;

    // c_i32_7440535721330_recast_x(CONSTANT,1462)
    assign c_i32_7440535721330_recast_x_q = $unsigned(32'b00101100010110010101101101000100);

    // i_pivot213_emscripten_compute_dom_pk_code463(COMPARE,559)@3
    assign i_pivot213_emscripten_compute_dom_pk_code463_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot213_emscripten_compute_dom_pk_code463_b = $unsigned({{2{c_i32_7440535721330_recast_x_q[31]}}, c_i32_7440535721330_recast_x_q});
    assign i_pivot213_emscripten_compute_dom_pk_code463_o = $unsigned($signed(i_pivot213_emscripten_compute_dom_pk_code463_a) - $signed(i_pivot213_emscripten_compute_dom_pk_code463_b));
    assign i_pivot213_emscripten_compute_dom_pk_code463_c[0] = i_pivot213_emscripten_compute_dom_pk_code463_o[33];

    // i_acl_3957_emscripten_compute_dom_pk_code1060(LOGICAL,179)@3
    assign i_acl_3957_emscripten_compute_dom_pk_code1060_q = i_pivot213_emscripten_compute_dom_pk_code463_c ^ i_pivot227_emscripten_compute_dom_pk_code87_c;

    // i_and3962_emscripten_compute_dom_pk_code1061(LOGICAL,324)@3
    assign i_and3962_emscripten_compute_dom_pk_code1061_q = i_acl_3957_emscripten_compute_dom_pk_code1060_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg127(REG,1919)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg127_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg127_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f208_emscripten_compute_dom_pk_code1059(BLACKBOX,428)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_f208_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f208_emscripten_compute_dom_pk_code1059 (
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg127_q),
        .out_dest_data_out_51_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f208_emscripten_compute_dom_pk_code1059_out_dest_data_out_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1058(LOGICAL,812)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1058_q = i_and3950_emscripten_compute_dom_pk_code1057_q ^ VCC_q;

    // c_i32_7440535751291_recast_x(CONSTANT,1465)
    assign c_i32_7440535751291_recast_x_q = $unsigned(32'b00101100010110010101101101000111);

    // i_pivot225_emscripten_compute_dom_pk_code217(COMPARE,565)@3
    assign i_pivot225_emscripten_compute_dom_pk_code217_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot225_emscripten_compute_dom_pk_code217_b = $unsigned({{2{c_i32_7440535751291_recast_x_q[31]}}, c_i32_7440535751291_recast_x_q});
    assign i_pivot225_emscripten_compute_dom_pk_code217_o = $unsigned($signed(i_pivot225_emscripten_compute_dom_pk_code217_a) - $signed(i_pivot225_emscripten_compute_dom_pk_code217_b));
    assign i_pivot225_emscripten_compute_dom_pk_code217_c[0] = i_pivot225_emscripten_compute_dom_pk_code217_o[33];

    // i_acl_3944_emscripten_compute_dom_pk_code1056(LOGICAL,178)@3
    assign i_acl_3944_emscripten_compute_dom_pk_code1056_q = i_pivot219_emscripten_compute_dom_pk_code485_c ^ i_pivot225_emscripten_compute_dom_pk_code217_c;

    // i_and3950_emscripten_compute_dom_pk_code1057(LOGICAL,323)@3
    assign i_and3950_emscripten_compute_dom_pk_code1057_q = i_acl_3944_emscripten_compute_dom_pk_code1056_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg126(REG,1918)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg126_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg126_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_g233_emscripten_compute_dom_pk_code1055(BLACKBOX,441)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_g233_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_g233_emscripten_compute_dom_pk_code1055 (
        .in_intel_reserved_ffwd_76_0(in_intel_reserved_ffwd_76_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg126_q),
        .out_dest_data_out_76_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_g233_emscripten_compute_dom_pk_code1055_out_dest_data_out_76_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1054(LOGICAL,811)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1054_q = i_and3939_emscripten_compute_dom_pk_code1053_q ^ VCC_q;

    // c_i32_7440535761329_recast_x(CONSTANT,1466)
    assign c_i32_7440535761329_recast_x_q = $unsigned(32'b00101100010110010101101101001000);

    // i_pivot223_emscripten_compute_dom_pk_code461(COMPARE,564)@3
    assign i_pivot223_emscripten_compute_dom_pk_code461_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot223_emscripten_compute_dom_pk_code461_b = $unsigned({{2{c_i32_7440535761329_recast_x_q[31]}}, c_i32_7440535761329_recast_x_q});
    assign i_pivot223_emscripten_compute_dom_pk_code461_o = $unsigned($signed(i_pivot223_emscripten_compute_dom_pk_code461_a) - $signed(i_pivot223_emscripten_compute_dom_pk_code461_b));
    assign i_pivot223_emscripten_compute_dom_pk_code461_c[0] = i_pivot223_emscripten_compute_dom_pk_code461_o[33];

    // i_acl_3933_emscripten_compute_dom_pk_code1052(LOGICAL,177)@3
    assign i_acl_3933_emscripten_compute_dom_pk_code1052_q = i_pivot225_emscripten_compute_dom_pk_code217_c ^ i_pivot223_emscripten_compute_dom_pk_code461_c;

    // i_and3939_emscripten_compute_dom_pk_code1053(LOGICAL,322)@3
    assign i_and3939_emscripten_compute_dom_pk_code1053_q = i_acl_3933_emscripten_compute_dom_pk_code1052_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg125(REG,1917)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg125_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg125_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_h234_emscripten_compute_dom_pk_code1051(BLACKBOX,442)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_h234_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_h234_emscripten_compute_dom_pk_code1051 (
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg125_q),
        .out_dest_data_out_77_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_h234_emscripten_compute_dom_pk_code1051_out_dest_data_out_77_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1050(LOGICAL,810)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1050_q = i_and3928_emscripten_compute_dom_pk_code1049_q ^ VCC_q;

    // i_acl_3921_emscripten_compute_dom_pk_code1048(LOGICAL,176)@3
    assign i_acl_3921_emscripten_compute_dom_pk_code1048_q = i_pivot223_emscripten_compute_dom_pk_code461_c ^ i_pivot221_emscripten_compute_dom_pk_code477_c;

    // i_and3928_emscripten_compute_dom_pk_code1049(LOGICAL,321)@3
    assign i_and3928_emscripten_compute_dom_pk_code1049_q = i_acl_3921_emscripten_compute_dom_pk_code1048_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg124(REG,1916)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg124_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg124_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_j242_emscripten_compute_dom_pk_code1047(BLACKBOX,450)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_j242_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_j242_emscripten_compute_dom_pk_code1047 (
        .in_intel_reserved_ffwd_85_0(in_intel_reserved_ffwd_85_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg124_q),
        .out_dest_data_out_85_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_j242_emscripten_compute_dom_pk_code1047_out_dest_data_out_85_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1046(LOGICAL,809)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1046_q = i_and3916_emscripten_compute_dom_pk_code1045_q ^ VCC_q;

    // c_i32_7440535791328_recast_x(CONSTANT,1469)
    assign c_i32_7440535791328_recast_x_q = $unsigned(32'b00101100010110010101101101001011);

    // i_pivot229_emscripten_compute_dom_pk_code459(COMPARE,567)@3
    assign i_pivot229_emscripten_compute_dom_pk_code459_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot229_emscripten_compute_dom_pk_code459_b = $unsigned({{2{c_i32_7440535791328_recast_x_q[31]}}, c_i32_7440535791328_recast_x_q});
    assign i_pivot229_emscripten_compute_dom_pk_code459_o = $unsigned($signed(i_pivot229_emscripten_compute_dom_pk_code459_a) - $signed(i_pivot229_emscripten_compute_dom_pk_code459_b));
    assign i_pivot229_emscripten_compute_dom_pk_code459_c[0] = i_pivot229_emscripten_compute_dom_pk_code459_o[33];

    // i_acl_3912_emscripten_compute_dom_pk_code1044(LOGICAL,175)@3
    assign i_acl_3912_emscripten_compute_dom_pk_code1044_q = i_pivot247_emscripten_compute_dom_pk_code43_c ^ i_pivot229_emscripten_compute_dom_pk_code459_c;

    // i_and3916_emscripten_compute_dom_pk_code1045(LOGICAL,320)@3
    assign i_and3916_emscripten_compute_dom_pk_code1045_q = i_acl_3912_emscripten_compute_dom_pk_code1044_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg123(REG,1915)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg123_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg123_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_k243_emscripten_compute_dom_pk_code1043(BLACKBOX,451)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_k243_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_k243_emscripten_compute_dom_pk_code1043 (
        .in_intel_reserved_ffwd_86_0(in_intel_reserved_ffwd_86_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg123_q),
        .out_dest_data_out_86_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_k243_emscripten_compute_dom_pk_code1043_out_dest_data_out_86_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1042(LOGICAL,808)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1042_q = i_and3905_emscripten_compute_dom_pk_code1041_q ^ VCC_q;

    // c_i32_7440535801284_recast_x(CONSTANT,1470)
    assign c_i32_7440535801284_recast_x_q = $unsigned(32'b00101100010110010101101101001100);

    // i_pivot235_emscripten_compute_dom_pk_code203(COMPARE,570)@3
    assign i_pivot235_emscripten_compute_dom_pk_code203_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot235_emscripten_compute_dom_pk_code203_b = $unsigned({{2{c_i32_7440535801284_recast_x_q[31]}}, c_i32_7440535801284_recast_x_q});
    assign i_pivot235_emscripten_compute_dom_pk_code203_o = $unsigned($signed(i_pivot235_emscripten_compute_dom_pk_code203_a) - $signed(i_pivot235_emscripten_compute_dom_pk_code203_b));
    assign i_pivot235_emscripten_compute_dom_pk_code203_c[0] = i_pivot235_emscripten_compute_dom_pk_code203_o[33];

    // i_acl_3899_emscripten_compute_dom_pk_code1040(LOGICAL,174)@3
    assign i_acl_3899_emscripten_compute_dom_pk_code1040_q = i_pivot229_emscripten_compute_dom_pk_code459_c ^ i_pivot235_emscripten_compute_dom_pk_code203_c;

    // i_and3905_emscripten_compute_dom_pk_code1041(LOGICAL,319)@3
    assign i_and3905_emscripten_compute_dom_pk_code1041_q = i_acl_3899_emscripten_compute_dom_pk_code1040_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg122(REG,1914)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg122_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg122_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_l245_emscripten_compute_dom_pk_code1039(BLACKBOX,453)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_l245_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_l245_emscripten_compute_dom_pk_code1039 (
        .in_intel_reserved_ffwd_88_0(in_intel_reserved_ffwd_88_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg122_q),
        .out_dest_data_out_88_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_l245_emscripten_compute_dom_pk_code1039_out_dest_data_out_88_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1038(LOGICAL,807)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1038_q = i_and3894_emscripten_compute_dom_pk_code1037_q ^ VCC_q;

    // c_i32_7440535811327_recast_x(CONSTANT,1471)
    assign c_i32_7440535811327_recast_x_q = $unsigned(32'b00101100010110010101101101001101);

    // i_pivot233_emscripten_compute_dom_pk_code457(COMPARE,569)@3
    assign i_pivot233_emscripten_compute_dom_pk_code457_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot233_emscripten_compute_dom_pk_code457_b = $unsigned({{2{c_i32_7440535811327_recast_x_q[31]}}, c_i32_7440535811327_recast_x_q});
    assign i_pivot233_emscripten_compute_dom_pk_code457_o = $unsigned($signed(i_pivot233_emscripten_compute_dom_pk_code457_a) - $signed(i_pivot233_emscripten_compute_dom_pk_code457_b));
    assign i_pivot233_emscripten_compute_dom_pk_code457_c[0] = i_pivot233_emscripten_compute_dom_pk_code457_o[33];

    // i_acl_3888_emscripten_compute_dom_pk_code1036(LOGICAL,173)@3
    assign i_acl_3888_emscripten_compute_dom_pk_code1036_q = i_pivot235_emscripten_compute_dom_pk_code203_c ^ i_pivot233_emscripten_compute_dom_pk_code457_c;

    // i_and3894_emscripten_compute_dom_pk_code1037(LOGICAL,318)@3
    assign i_and3894_emscripten_compute_dom_pk_code1037_q = i_acl_3888_emscripten_compute_dom_pk_code1036_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg121(REG,1913)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg121_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg121_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_semicolon298_emscripten_compute_dom_pk_code1035(BLACKBOX,506)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_semicolon298_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_semicolon298_emscripten_compute_dom_pk_code1035 (
        .in_intel_reserved_ffwd_141_0(in_intel_reserved_ffwd_141_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg121_q),
        .out_dest_data_out_141_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_semicolon298_emscripten_compute_dom_pk_code1035_out_dest_data_out_141_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6547787821200_recast_x(CONSTANT,1453)
    assign c_i32_6547787821200_recast_x_q = $unsigned(32'b00100111000001110010000110011110);

    // i_switchleaf187_emscripten_compute_dom_pk_code455(LOGICAL,715)@2
    assign i_switchleaf187_emscripten_compute_dom_pk_code455_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_6547787821200_recast_x_q ? 1'b1 : 1'b0);

    // redist56_i_switchleaf187_emscripten_compute_dom_pk_code455_q_1(DELAY,2098)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_switchleaf187_emscripten_compute_dom_pk_code455_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist56_i_switchleaf187_emscripten_compute_dom_pk_code455_q_1_q <= $unsigned(i_switchleaf187_emscripten_compute_dom_pk_code455_q);
        end
    end

    // i_and3883_emscripten_compute_dom_pk_code1033(LOGICAL,317)@3
    assign i_and3883_emscripten_compute_dom_pk_code1033_q = redist56_i_switchleaf187_emscripten_compute_dom_pk_code455_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1034(LOGICAL,806)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1034_q = i_and3883_emscripten_compute_dom_pk_code1033_q ^ VCC_q;

    // valid_fanout_reg120(REG,1912)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg120_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg120_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_quote294_emscripten_compute_dom_pk_code1032(BLACKBOX,502)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_quote294_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_quote294_emscripten_compute_dom_pk_code1032 (
        .in_intel_reserved_ffwd_137_0(in_intel_reserved_ffwd_137_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg120_q),
        .out_dest_data_out_137_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_quote294_emscripten_compute_dom_pk_code1032_out_dest_data_out_137_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18307672191282_recast_x(CONSTANT,1405)
    assign c_i32_18307672191282_recast_x_q = $unsigned(32'b10010010111000001011010110001101);

    // i_switchleaf15_emscripten_compute_dom_pk_code453(LOGICAL,709)@2
    assign i_switchleaf15_emscripten_compute_dom_pk_code453_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307672191282_recast_x_q ? 1'b1 : 1'b0);

    // redist60_i_switchleaf15_emscripten_compute_dom_pk_code453_q_1(DELAY,2102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_switchleaf15_emscripten_compute_dom_pk_code453_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist60_i_switchleaf15_emscripten_compute_dom_pk_code453_q_1_q <= $unsigned(i_switchleaf15_emscripten_compute_dom_pk_code453_q);
        end
    end

    // i_and3871_emscripten_compute_dom_pk_code1030(LOGICAL,316)@3
    assign i_and3871_emscripten_compute_dom_pk_code1030_q = redist60_i_switchleaf15_emscripten_compute_dom_pk_code453_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1031(LOGICAL,805)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1031_q = i_and3871_emscripten_compute_dom_pk_code1030_q ^ VCC_q;

    // valid_fanout_reg119(REG,1911)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg119_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg119_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backquote179_emscripten_compute_dom_pk_code1029(BLACKBOX,387)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_backquote179_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backquote179_emscripten_compute_dom_pk_code1029 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg119_q),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backquote179_emscripten_compute_dom_pk_code1029_out_dest_data_out_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9185007491280_recast_x(CONSTANT,1492)
    assign c_i32_9185007491280_recast_x_q = $unsigned(32'b00110110101111110011010110001101);

    // i_switchleaf283_emscripten_compute_dom_pk_code451(LOGICAL,730)@2
    assign i_switchleaf283_emscripten_compute_dom_pk_code451_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9185007491280_recast_x_q ? 1'b1 : 1'b0);

    // i_and3859_emscripten_compute_dom_pk_code1027(LOGICAL,315)@2 + 1
    assign i_and3859_emscripten_compute_dom_pk_code1027_qi = i_switchleaf283_emscripten_compute_dom_pk_code451_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and3859_emscripten_compute_dom_pk_code1027_delay ( .xin(i_and3859_emscripten_compute_dom_pk_code1027_qi), .xout(i_and3859_emscripten_compute_dom_pk_code1027_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code1028(LOGICAL,804)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1028_q = i_and3859_emscripten_compute_dom_pk_code1027_q ^ VCC_q;

    // valid_fanout_reg118(REG,1910)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg118_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg118_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_left299_emscripten_compute_dom_pk_code1026(BLACKBOX,507)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zm_pk_shift_left299_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_left299_emscripten_compute_dom_pk_code1026 (
        .in_intel_reserved_ffwd_142_0(in_intel_reserved_ffwd_142_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg118_q),
        .out_dest_data_out_142_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_left299_emscripten_compute_dom_pk_code1026_out_dest_data_out_142_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6491723641281_recast_x(CONSTANT,1452)
    assign c_i32_6491723641281_recast_x_q = $unsigned(32'b00100110101100011001010110001100);

    // i_switchleaf179_emscripten_compute_dom_pk_code449(LOGICAL,714)@2
    assign i_switchleaf179_emscripten_compute_dom_pk_code449_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_6491723641281_recast_x_q ? 1'b1 : 1'b0);

    // redist57_i_switchleaf179_emscripten_compute_dom_pk_code449_q_1(DELAY,2099)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_switchleaf179_emscripten_compute_dom_pk_code449_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist57_i_switchleaf179_emscripten_compute_dom_pk_code449_q_1_q <= $unsigned(i_switchleaf179_emscripten_compute_dom_pk_code449_q);
        end
    end

    // i_and3846_emscripten_compute_dom_pk_code1024(LOGICAL,314)@3
    assign i_and3846_emscripten_compute_dom_pk_code1024_q = redist57_i_switchleaf179_emscripten_compute_dom_pk_code449_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1025(LOGICAL,803)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1025_q = i_and3846_emscripten_compute_dom_pk_code1024_q ^ VCC_q;

    // valid_fanout_reg117(REG,1909)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg117_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg117_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backslash180_emscripten_compute_dom_pk_code1023(BLACKBOX,388)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_backslash180_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backslash180_emscripten_compute_dom_pk_code1023 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg117_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backslash180_emscripten_compute_dom_pk_code1023_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9184963121230_recast_x(CONSTANT,1491)
    assign c_i32_9184963121230_recast_x_q = $unsigned(32'b00110110101111110010010000111000);

    // i_switchleaf281_emscripten_compute_dom_pk_code446(LOGICAL,728)@2
    assign i_switchleaf281_emscripten_compute_dom_pk_code446_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9184963121230_recast_x_q ? 1'b1 : 1'b0);

    // i_and3833_emscripten_compute_dom_pk_code1021(LOGICAL,313)@2 + 1
    assign i_and3833_emscripten_compute_dom_pk_code1021_qi = i_switchleaf281_emscripten_compute_dom_pk_code446_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and3833_emscripten_compute_dom_pk_code1021_delay ( .xin(i_and3833_emscripten_compute_dom_pk_code1021_qi), .xout(i_and3833_emscripten_compute_dom_pk_code1021_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code1022(LOGICAL,802)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1022_q = i_and3833_emscripten_compute_dom_pk_code1021_q ^ VCC_q;

    // valid_fanout_reg116(REG,1908)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg116_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg116_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_z311_emscripten_compute_dom_pk_code1020(BLACKBOX,519)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_z311_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_z311_emscripten_compute_dom_pk_code1020 (
        .in_intel_reserved_ffwd_154_0(in_intel_reserved_ffwd_154_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg116_q),
        .out_dest_data_out_154_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_z311_emscripten_compute_dom_pk_code1020_out_dest_data_out_154_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_switchleaf261_emscripten_compute_dom_pk_code444(LOGICAL,723)@2
    assign i_switchleaf261_emscripten_compute_dom_pk_code444_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7440535941290_recast_x_q ? 1'b1 : 1'b0);

    // redist53_i_switchleaf261_emscripten_compute_dom_pk_code444_q_1(DELAY,2095)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_switchleaf261_emscripten_compute_dom_pk_code444_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist53_i_switchleaf261_emscripten_compute_dom_pk_code444_q_1_q <= $unsigned(i_switchleaf261_emscripten_compute_dom_pk_code444_q);
        end
    end

    // i_and3821_emscripten_compute_dom_pk_code1018(LOGICAL,312)@3
    assign i_and3821_emscripten_compute_dom_pk_code1018_q = redist53_i_switchleaf261_emscripten_compute_dom_pk_code444_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code1019(LOGICAL,801)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1019_q = i_and3821_emscripten_compute_dom_pk_code1018_q ^ VCC_q;

    // valid_fanout_reg115(REG,1907)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg115_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg115_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_x309_emscripten_compute_dom_pk_code1017(BLACKBOX,517)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_x309_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_x309_emscripten_compute_dom_pk_code1017 (
        .in_intel_reserved_ffwd_152_0(in_intel_reserved_ffwd_152_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg115_q),
        .out_dest_data_out_152_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_x309_emscripten_compute_dom_pk_code1017_out_dest_data_out_152_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1016(LOGICAL,800)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1016_q = i_and3809_emscripten_compute_dom_pk_code1015_q ^ VCC_q;

    // i_acl_3804_emscripten_compute_dom_pk_code1014(LOGICAL,172)@3
    assign i_acl_3804_emscripten_compute_dom_pk_code1014_q = i_pivot273_emscripten_compute_dom_pk_code89_c ^ i_pivot259_emscripten_compute_dom_pk_code479_c;

    // i_and3809_emscripten_compute_dom_pk_code1015(LOGICAL,311)@3
    assign i_and3809_emscripten_compute_dom_pk_code1015_q = i_acl_3804_emscripten_compute_dom_pk_code1014_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg114(REG,1906)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg114_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg114_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_c191_emscripten_compute_dom_pk_code1013(BLACKBOX,399)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_c191_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_c191_emscripten_compute_dom_pk_code1013 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg114_q),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_c191_emscripten_compute_dom_pk_code1013_out_dest_data_out_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1012(LOGICAL,799)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1012_q = i_and3798_emscripten_compute_dom_pk_code1011_q ^ VCC_q;

    // c_i32_7440535711326_recast_x(CONSTANT,1461)
    assign c_i32_7440535711326_recast_x_q = $unsigned(32'b00101100010110010101101101000011);

    // i_pivot215_emscripten_compute_dom_pk_code442(COMPARE,560)@3
    assign i_pivot215_emscripten_compute_dom_pk_code442_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot215_emscripten_compute_dom_pk_code442_b = $unsigned({{2{c_i32_7440535711326_recast_x_q[31]}}, c_i32_7440535711326_recast_x_q});
    assign i_pivot215_emscripten_compute_dom_pk_code442_o = $unsigned($signed(i_pivot215_emscripten_compute_dom_pk_code442_a) - $signed(i_pivot215_emscripten_compute_dom_pk_code442_b));
    assign i_pivot215_emscripten_compute_dom_pk_code442_c[0] = i_pivot215_emscripten_compute_dom_pk_code442_o[33];

    // i_acl_3791_emscripten_compute_dom_pk_code1010(LOGICAL,171)@3
    assign i_acl_3791_emscripten_compute_dom_pk_code1010_q = i_pivot215_emscripten_compute_dom_pk_code442_c ^ i_pivot213_emscripten_compute_dom_pk_code463_c;

    // i_and3798_emscripten_compute_dom_pk_code1011(LOGICAL,310)@3
    assign i_and3798_emscripten_compute_dom_pk_code1011_q = i_acl_3791_emscripten_compute_dom_pk_code1010_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg113(REG,1905)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg113_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg113_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_v307_emscripten_compute_dom_pk_code1009(BLACKBOX,515)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_v307_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_v307_emscripten_compute_dom_pk_code1009 (
        .in_intel_reserved_ffwd_150_0(in_intel_reserved_ffwd_150_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg113_q),
        .out_dest_data_out_150_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_v307_emscripten_compute_dom_pk_code1009_out_dest_data_out_150_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1008(LOGICAL,798)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1008_q = i_and3786_emscripten_compute_dom_pk_code1007_q ^ VCC_q;

    // i_acl_3780_emscripten_compute_dom_pk_code1006(LOGICAL,170)@3
    assign i_acl_3780_emscripten_compute_dom_pk_code1006_q = i_pivot257_emscripten_compute_dom_pk_code219_c ^ i_pivot255_emscripten_compute_dom_pk_code487_c;

    // i_and3786_emscripten_compute_dom_pk_code1007(LOGICAL,309)@3
    assign i_and3786_emscripten_compute_dom_pk_code1007_q = i_acl_3780_emscripten_compute_dom_pk_code1006_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg112(REG,1904)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg112_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg112_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_b178_emscripten_compute_dom_pk_code1005(BLACKBOX,386)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_b178_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_b178_emscripten_compute_dom_pk_code1005 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg112_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_b178_emscripten_compute_dom_pk_code1005_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1004(LOGICAL,797)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1004_q = i_and3775_emscripten_compute_dom_pk_code1003_q ^ VCC_q;

    // i_acl_3769_emscripten_compute_dom_pk_code1002(LOGICAL,169)@3
    assign i_acl_3769_emscripten_compute_dom_pk_code1002_q = i_pivot217_emscripten_compute_dom_pk_code205_c ^ i_pivot215_emscripten_compute_dom_pk_code442_c;

    // i_and3775_emscripten_compute_dom_pk_code1003(LOGICAL,308)@3
    assign i_and3775_emscripten_compute_dom_pk_code1003_q = i_acl_3769_emscripten_compute_dom_pk_code1002_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg111(REG,1903)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg111_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg111_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_n261_emscripten_compute_dom_pk_code1001(BLACKBOX,469)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_n261_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_n261_emscripten_compute_dom_pk_code1001 (
        .in_intel_reserved_ffwd_104_0(in_intel_reserved_ffwd_104_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg111_q),
        .out_dest_data_out_104_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_n261_emscripten_compute_dom_pk_code1001_out_dest_data_out_104_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code1000(LOGICAL,796)@3
    assign i_unnamed_emscripten_compute_dom_pk_code1000_q = i_and3764_emscripten_compute_dom_pk_code999_q ^ VCC_q;

    // c_i32_7440535821325_recast_x(CONSTANT,1472)
    assign c_i32_7440535821325_recast_x_q = $unsigned(32'b00101100010110010101101101001110);

    // i_pivot231_emscripten_compute_dom_pk_code440(COMPARE,568)@3
    assign i_pivot231_emscripten_compute_dom_pk_code440_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot231_emscripten_compute_dom_pk_code440_b = $unsigned({{2{c_i32_7440535821325_recast_x_q[31]}}, c_i32_7440535821325_recast_x_q});
    assign i_pivot231_emscripten_compute_dom_pk_code440_o = $unsigned($signed(i_pivot231_emscripten_compute_dom_pk_code440_a) - $signed(i_pivot231_emscripten_compute_dom_pk_code440_b));
    assign i_pivot231_emscripten_compute_dom_pk_code440_c[0] = i_pivot231_emscripten_compute_dom_pk_code440_o[33];

    // i_acl_3759_emscripten_compute_dom_pk_code998(LOGICAL,168)@3
    assign i_acl_3759_emscripten_compute_dom_pk_code998_q = i_pivot231_emscripten_compute_dom_pk_code440_c ^ i_pivot245_emscripten_compute_dom_pk_code91_c;

    // i_and3764_emscripten_compute_dom_pk_code999(LOGICAL,307)@3
    assign i_and3764_emscripten_compute_dom_pk_code999_q = i_acl_3759_emscripten_compute_dom_pk_code998_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg110(REG,1902)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg110_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg110_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_m252_emscripten_compute_dom_pk_code997(BLACKBOX,460)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z024i32_dom_pk_m252_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_m252_emscripten_compute_dom_pk_code997 (
        .in_intel_reserved_ffwd_95_0(in_intel_reserved_ffwd_95_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg110_q),
        .out_dest_data_out_95_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_m252_emscripten_compute_dom_pk_code997_out_dest_data_out_95_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code996(LOGICAL,952)@3
    assign i_unnamed_emscripten_compute_dom_pk_code996_q = i_and3752_emscripten_compute_dom_pk_code995_q ^ VCC_q;

    // i_acl_3745_emscripten_compute_dom_pk_code994(LOGICAL,167)@3
    assign i_acl_3745_emscripten_compute_dom_pk_code994_q = i_pivot233_emscripten_compute_dom_pk_code457_c ^ i_pivot231_emscripten_compute_dom_pk_code440_c;

    // i_and3752_emscripten_compute_dom_pk_code995(LOGICAL,306)@3
    assign i_and3752_emscripten_compute_dom_pk_code995_q = i_acl_3745_emscripten_compute_dom_pk_code994_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg109(REG,1901)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg109_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg109_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_comma193_emscripten_compute_dom_pk_code993(BLACKBOX,401)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_comma193_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_comma193_emscripten_compute_dom_pk_code993 (
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg109_q),
        .out_dest_data_out_36_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_comma193_emscripten_compute_dom_pk_code993_out_dest_data_out_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18307067511196_recast_x(CONSTANT,1401)
    assign c_i32_18307067511196_recast_x_q = $unsigned(32'b10010010111000011010000111000001);

    // i_switchleaf31_emscripten_compute_dom_pk_code438(LOGICAL,739)@2
    assign i_switchleaf31_emscripten_compute_dom_pk_code438_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307067511196_recast_x_q ? 1'b1 : 1'b0);

    // redist43_i_switchleaf31_emscripten_compute_dom_pk_code438_q_1(DELAY,2085)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_switchleaf31_emscripten_compute_dom_pk_code438_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist43_i_switchleaf31_emscripten_compute_dom_pk_code438_q_1_q <= $unsigned(i_switchleaf31_emscripten_compute_dom_pk_code438_q);
        end
    end

    // i_and3740_emscripten_compute_dom_pk_code991(LOGICAL,305)@3
    assign i_and3740_emscripten_compute_dom_pk_code991_q = redist43_i_switchleaf31_emscripten_compute_dom_pk_code438_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code992(LOGICAL,951)@3
    assign i_unnamed_emscripten_compute_dom_pk_code992_q = i_and3740_emscripten_compute_dom_pk_code991_q ^ VCC_q;

    // valid_fanout_reg108(REG,1900)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg108_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg108_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_period290_emscripten_compute_dom_pk_code990(BLACKBOX,498)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z2_dom_pk_period290_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_period290_emscripten_compute_dom_pk_code990 (
        .in_intel_reserved_ffwd_133_0(in_intel_reserved_ffwd_133_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg108_q),
        .out_dest_data_out_133_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_period290_emscripten_compute_dom_pk_code990_out_dest_data_out_133_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17311976521242_recast_x(CONSTANT,1394)
    assign c_i32_17311976521242_recast_x_q = $unsigned(32'b01100111001011111111101011010100);

    // i_switchleaf403_emscripten_compute_dom_pk_code436(LOGICAL,761)@2
    assign i_switchleaf403_emscripten_compute_dom_pk_code436_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17311976521242_recast_x_q ? 1'b1 : 1'b0);

    // redist24_i_switchleaf403_emscripten_compute_dom_pk_code436_q_1(DELAY,2066)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_switchleaf403_emscripten_compute_dom_pk_code436_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist24_i_switchleaf403_emscripten_compute_dom_pk_code436_q_1_q <= $unsigned(i_switchleaf403_emscripten_compute_dom_pk_code436_q);
        end
    end

    // i_and3728_emscripten_compute_dom_pk_code988(LOGICAL,304)@3
    assign i_and3728_emscripten_compute_dom_pk_code988_q = redist24_i_switchleaf403_emscripten_compute_dom_pk_code436_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code989(LOGICAL,950)@3
    assign i_unnamed_emscripten_compute_dom_pk_code989_q = i_and3728_emscripten_compute_dom_pk_code988_q ^ VCC_q;

    // valid_fanout_reg107(REG,1899)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg107_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg107_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_slash301_emscripten_compute_dom_pk_code987(BLACKBOX,509)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_slash301_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_slash301_emscripten_compute_dom_pk_code987 (
        .in_intel_reserved_ffwd_144_0(in_intel_reserved_ffwd_144_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg107_q),
        .out_dest_data_out_144_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_slash301_emscripten_compute_dom_pk_code987_out_dest_data_out_144_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18307716561212_recast_x(CONSTANT,1406)
    assign c_i32_18307716561212_recast_x_q = $unsigned(32'b10010010111000001010010000111000);

    // i_switchleaf13_emscripten_compute_dom_pk_code434(LOGICAL,701)@2
    assign i_switchleaf13_emscripten_compute_dom_pk_code434_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307716561212_recast_x_q ? 1'b1 : 1'b0);

    // redist65_i_switchleaf13_emscripten_compute_dom_pk_code434_q_1(DELAY,2107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_switchleaf13_emscripten_compute_dom_pk_code434_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist65_i_switchleaf13_emscripten_compute_dom_pk_code434_q_1_q <= $unsigned(i_switchleaf13_emscripten_compute_dom_pk_code434_q);
        end
    end

    // i_and3715_emscripten_compute_dom_pk_code985(LOGICAL,303)@3
    assign i_and3715_emscripten_compute_dom_pk_code985_q = redist65_i_switchleaf13_emscripten_compute_dom_pk_code434_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code986(LOGICAL,949)@3
    assign i_unnamed_emscripten_compute_dom_pk_code986_q = i_and3715_emscripten_compute_dom_pk_code985_q ^ VCC_q;

    // valid_fanout_reg106(REG,1898)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg106_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg106_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_right300_emscripten_compute_dom_pk_code984(BLACKBOX,508)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_pk_shift_right300_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_right300_emscripten_compute_dom_pk_code984 (
        .in_intel_reserved_ffwd_143_0(in_intel_reserved_ffwd_143_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg106_q),
        .out_dest_data_out_143_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_right300_emscripten_compute_dom_pk_code984_out_dest_data_out_143_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9789277481240_recast_x(CONSTANT,1519)
    assign c_i32_9789277481240_recast_x_q = $unsigned(32'b11000101101001101011111101111100);

    // i_switchleaf79_emscripten_compute_dom_pk_code432(LOGICAL,786)@2
    assign i_switchleaf79_emscripten_compute_dom_pk_code432_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9789277481240_recast_x_q ? 1'b1 : 1'b0);

    // redist8_i_switchleaf79_emscripten_compute_dom_pk_code432_q_1(DELAY,2050)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_switchleaf79_emscripten_compute_dom_pk_code432_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_switchleaf79_emscripten_compute_dom_pk_code432_q_1_q <= $unsigned(i_switchleaf79_emscripten_compute_dom_pk_code432_q);
        end
    end

    // i_and3703_emscripten_compute_dom_pk_code982(LOGICAL,302)@3
    assign i_and3703_emscripten_compute_dom_pk_code982_q = redist8_i_switchleaf79_emscripten_compute_dom_pk_code432_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code983(LOGICAL,948)@3
    assign i_unnamed_emscripten_compute_dom_pk_code983_q = i_and3703_emscripten_compute_dom_pk_code982_q ^ VCC_q;

    // valid_fanout_reg105(REG,1897)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg105_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg105_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_multiply279_emscripten_compute_dom_pk_code981(BLACKBOX,488)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Znumpad_multiply279_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_multiply279_emscripten_compute_dom_pk_code981 (
        .in_intel_reserved_ffwd_122_0(in_intel_reserved_ffwd_122_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg105_q),
        .out_dest_data_out_122_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_multiply279_emscripten_compute_dom_pk_code981_out_dest_data_out_122_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_15668906411206_recast_x(CONSTANT,1376)
    assign c_i32_15668906411206_recast_x_q = $unsigned(32'b01011101011001001101101010010001);

    // i_switchleaf351_emscripten_compute_dom_pk_code430(LOGICAL,748)@2
    assign i_switchleaf351_emscripten_compute_dom_pk_code430_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_15668906411206_recast_x_q ? 1'b1 : 1'b0);

    // redist35_i_switchleaf351_emscripten_compute_dom_pk_code430_q_1(DELAY,2077)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_switchleaf351_emscripten_compute_dom_pk_code430_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist35_i_switchleaf351_emscripten_compute_dom_pk_code430_q_1_q <= $unsigned(i_switchleaf351_emscripten_compute_dom_pk_code430_q);
        end
    end

    // i_and3690_emscripten_compute_dom_pk_code979(LOGICAL,301)@3
    assign i_and3690_emscripten_compute_dom_pk_code979_q = redist35_i_switchleaf351_emscripten_compute_dom_pk_code430_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code980(LOGICAL,947)@3
    assign i_unnamed_emscripten_compute_dom_pk_code980_q = i_and3690_emscripten_compute_dom_pk_code979_q ^ VCC_q;

    // valid_fanout_reg104(REG,1896)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg104_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg104_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_left169_emscripten_compute_dom_pk_code978(BLACKBOX,377)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_alt_left169_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_left169_emscripten_compute_dom_pk_code978 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg104_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_left169_emscripten_compute_dom_pk_code978_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9213978761277_recast_x(CONSTANT,1508)
    assign c_i32_9213978761277_recast_x_q = $unsigned(32'b11001001000101001001010110001100);

    // i_switchleaf81_emscripten_compute_dom_pk_code428(LOGICAL,788)@2
    assign i_switchleaf81_emscripten_compute_dom_pk_code428_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9213978761277_recast_x_q ? 1'b1 : 1'b0);

    // redist6_i_switchleaf81_emscripten_compute_dom_pk_code428_q_1(DELAY,2048)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_switchleaf81_emscripten_compute_dom_pk_code428_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_switchleaf81_emscripten_compute_dom_pk_code428_q_1_q <= $unsigned(i_switchleaf81_emscripten_compute_dom_pk_code428_q);
        end
    end

    // i_and3678_emscripten_compute_dom_pk_code976(LOGICAL,300)@3
    assign i_and3678_emscripten_compute_dom_pk_code976_q = redist6_i_switchleaf81_emscripten_compute_dom_pk_code428_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code977(LOGICAL,946)@3
    assign i_unnamed_emscripten_compute_dom_pk_code977_q = i_and3678_emscripten_compute_dom_pk_code976_q ^ VCC_q;

    // valid_fanout_reg103(REG,1895)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg103_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg103_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_space302_emscripten_compute_dom_pk_code975(BLACKBOX,510)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_space302_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_space302_emscripten_compute_dom_pk_code975 (
        .in_intel_reserved_ffwd_145_0(in_intel_reserved_ffwd_145_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg103_q),
        .out_dest_data_out_145_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_space302_emscripten_compute_dom_pk_code975_out_dest_data_out_145_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18307735791275_recast_x(CONSTANT,1407)
    assign c_i32_18307735791275_recast_x_q = $unsigned(32'b10010010111000001001110010110101);

    // i_switchleaf7_emscripten_compute_dom_pk_code426(LOGICAL,787)@2
    assign i_switchleaf7_emscripten_compute_dom_pk_code426_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307735791275_recast_x_q ? 1'b1 : 1'b0);

    // redist7_i_switchleaf7_emscripten_compute_dom_pk_code426_q_1(DELAY,2049)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_switchleaf7_emscripten_compute_dom_pk_code426_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_switchleaf7_emscripten_compute_dom_pk_code426_q_1_q <= $unsigned(i_switchleaf7_emscripten_compute_dom_pk_code426_q);
        end
    end

    // i_and3665_emscripten_compute_dom_pk_code973(LOGICAL,299)@3
    assign i_and3665_emscripten_compute_dom_pk_code973_q = redist7_i_switchleaf7_emscripten_compute_dom_pk_code426_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code974(LOGICAL,945)@3
    assign i_unnamed_emscripten_compute_dom_pk_code974_q = i_and3665_emscripten_compute_dom_pk_code973_q ^ VCC_q;

    // valid_fanout_reg102(REG,1894)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg102_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg102_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_caps_lock192_emscripten_compute_dom_pk_code972(BLACKBOX,400)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_caps_lock192_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_caps_lock192_emscripten_compute_dom_pk_code972 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg102_q),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_caps_lock192_emscripten_compute_dom_pk_code972_out_dest_data_out_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11915163571244_recast_x(CONSTANT,1369)
    assign c_i32_11915163571244_recast_x_q = $unsigned(32'b10111000111110101110011100111011);

    // i_switchleaf57_emscripten_compute_dom_pk_code424(LOGICAL,780)@2
    assign i_switchleaf57_emscripten_compute_dom_pk_code424_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_11915163571244_recast_x_q ? 1'b1 : 1'b0);

    // i_and3653_emscripten_compute_dom_pk_code970(LOGICAL,298)@2 + 1
    assign i_and3653_emscripten_compute_dom_pk_code970_qi = i_switchleaf57_emscripten_compute_dom_pk_code424_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and3653_emscripten_compute_dom_pk_code970_delay ( .xin(i_and3653_emscripten_compute_dom_pk_code970_qi), .xout(i_and3653_emscripten_compute_dom_pk_code970_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code971(LOGICAL,944)@3
    assign i_unnamed_emscripten_compute_dom_pk_code971_q = i_and3653_emscripten_compute_dom_pk_code970_q ^ VCC_q;

    // valid_fanout_reg101(REG,1893)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg101_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg101_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f1209_emscripten_compute_dom_pk_code969(BLACKBOX,418)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f1209_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f1209_emscripten_compute_dom_pk_code969 (
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg101_q),
        .out_dest_data_out_52_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f1209_emscripten_compute_dom_pk_code969_out_dest_data_out_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code968(LOGICAL,943)@3
    assign i_unnamed_emscripten_compute_dom_pk_code968_q = i_and3640_emscripten_compute_dom_pk_code967_q ^ VCC_q;

    // c_i32_19034745701324_recast_x(CONSTANT,1416)
    assign c_i32_19034745701324_recast_x_q = $unsigned(32'b01110001011101001011011110001010);

    // i_pivot421_emscripten_compute_dom_pk_code422(COMPARE,633)@3
    assign i_pivot421_emscripten_compute_dom_pk_code422_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot421_emscripten_compute_dom_pk_code422_b = $unsigned({{2{c_i32_19034745701324_recast_x_q[31]}}, c_i32_19034745701324_recast_x_q});
    assign i_pivot421_emscripten_compute_dom_pk_code422_o = $unsigned($signed(i_pivot421_emscripten_compute_dom_pk_code422_a) - $signed(i_pivot421_emscripten_compute_dom_pk_code422_b));
    assign i_pivot421_emscripten_compute_dom_pk_code422_c[0] = i_pivot421_emscripten_compute_dom_pk_code422_o[33];

    // c_i32_19034745691273_recast_x(CONSTANT,1415)
    assign c_i32_19034745691273_recast_x_q = $unsigned(32'b01110001011101001011011110001001);

    // i_pivot423_emscripten_compute_dom_pk_code181(COMPARE,634)@2
    assign i_pivot423_emscripten_compute_dom_pk_code181_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot423_emscripten_compute_dom_pk_code181_b = $unsigned({{2{c_i32_19034745691273_recast_x_q[31]}}, c_i32_19034745691273_recast_x_q});
    assign i_pivot423_emscripten_compute_dom_pk_code181_o = $unsigned($signed(i_pivot423_emscripten_compute_dom_pk_code181_a) - $signed(i_pivot423_emscripten_compute_dom_pk_code181_b));
    assign i_pivot423_emscripten_compute_dom_pk_code181_c[0] = i_pivot423_emscripten_compute_dom_pk_code181_o[33];

    // redist77_i_pivot423_emscripten_compute_dom_pk_code181_c_1(DELAY,2119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_pivot423_emscripten_compute_dom_pk_code181_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist77_i_pivot423_emscripten_compute_dom_pk_code181_c_1_q <= $unsigned(i_pivot423_emscripten_compute_dom_pk_code181_c);
        end
    end

    // i_acl_3634_emscripten_compute_dom_pk_code966(LOGICAL,166)@3
    assign i_acl_3634_emscripten_compute_dom_pk_code966_q = redist77_i_pivot423_emscripten_compute_dom_pk_code181_c_1_q ^ i_pivot421_emscripten_compute_dom_pk_code422_c;

    // i_and3640_emscripten_compute_dom_pk_code967(LOGICAL,297)@3
    assign i_and3640_emscripten_compute_dom_pk_code967_q = i_acl_3634_emscripten_compute_dom_pk_code966_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg100(REG,1892)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg100_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg100_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f2220_emscripten_compute_dom_pk_code965(BLACKBOX,430)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f2220_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f2220_emscripten_compute_dom_pk_code965 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg100_q),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f2220_emscripten_compute_dom_pk_code965_out_dest_data_out_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code964(LOGICAL,942)@3
    assign i_unnamed_emscripten_compute_dom_pk_code964_q = i_and3629_emscripten_compute_dom_pk_code963_q ^ VCC_q;

    // c_i32_19034745711323_recast_x(CONSTANT,1417)
    assign c_i32_19034745711323_recast_x_q = $unsigned(32'b01110001011101001011011110001011);

    // i_pivot419_emscripten_compute_dom_pk_code420(COMPARE,632)@3
    assign i_pivot419_emscripten_compute_dom_pk_code420_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot419_emscripten_compute_dom_pk_code420_b = $unsigned({{2{c_i32_19034745711323_recast_x_q[31]}}, c_i32_19034745711323_recast_x_q});
    assign i_pivot419_emscripten_compute_dom_pk_code420_o = $unsigned($signed(i_pivot419_emscripten_compute_dom_pk_code420_a) - $signed(i_pivot419_emscripten_compute_dom_pk_code420_b));
    assign i_pivot419_emscripten_compute_dom_pk_code420_c[0] = i_pivot419_emscripten_compute_dom_pk_code420_o[33];

    // i_acl_3622_emscripten_compute_dom_pk_code962(LOGICAL,165)@3
    assign i_acl_3622_emscripten_compute_dom_pk_code962_q = i_pivot421_emscripten_compute_dom_pk_code422_c ^ i_pivot419_emscripten_compute_dom_pk_code420_c;

    // i_and3629_emscripten_compute_dom_pk_code963(LOGICAL,296)@3
    assign i_and3629_emscripten_compute_dom_pk_code963_q = i_acl_3622_emscripten_compute_dom_pk_code962_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg99(REG,1891)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg99_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg99_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f3226_emscripten_compute_dom_pk_code961(BLACKBOX,434)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f3226_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f3226_emscripten_compute_dom_pk_code961 (
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg99_q),
        .out_dest_data_out_69_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f3226_emscripten_compute_dom_pk_code961_out_dest_data_out_69_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code960(LOGICAL,941)@3
    assign i_unnamed_emscripten_compute_dom_pk_code960_q = i_and3617_emscripten_compute_dom_pk_code959_q ^ VCC_q;

    // c_i32_19034745721218_recast_x(CONSTANT,1418)
    assign c_i32_19034745721218_recast_x_q = $unsigned(32'b01110001011101001011011110001100);

    // i_pivot437_emscripten_compute_dom_pk_code71(COMPARE,639)@2
    assign i_pivot437_emscripten_compute_dom_pk_code71_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot437_emscripten_compute_dom_pk_code71_b = $unsigned({{2{c_i32_19034745721218_recast_x_q[31]}}, c_i32_19034745721218_recast_x_q});
    assign i_pivot437_emscripten_compute_dom_pk_code71_o = $unsigned($signed(i_pivot437_emscripten_compute_dom_pk_code71_a) - $signed(i_pivot437_emscripten_compute_dom_pk_code71_b));
    assign i_pivot437_emscripten_compute_dom_pk_code71_c[0] = i_pivot437_emscripten_compute_dom_pk_code71_o[33];

    // redist75_i_pivot437_emscripten_compute_dom_pk_code71_c_1(DELAY,2117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_pivot437_emscripten_compute_dom_pk_code71_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist75_i_pivot437_emscripten_compute_dom_pk_code71_c_1_q <= $unsigned(i_pivot437_emscripten_compute_dom_pk_code71_c);
        end
    end

    // i_acl_3612_emscripten_compute_dom_pk_code958(LOGICAL,164)@3
    assign i_acl_3612_emscripten_compute_dom_pk_code958_q = i_pivot419_emscripten_compute_dom_pk_code420_c ^ redist75_i_pivot437_emscripten_compute_dom_pk_code71_c_1_q;

    // i_and3617_emscripten_compute_dom_pk_code959(LOGICAL,295)@3
    assign i_and3617_emscripten_compute_dom_pk_code959_q = i_acl_3612_emscripten_compute_dom_pk_code958_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg98(REG,1890)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg98_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg98_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f4227_emscripten_compute_dom_pk_code957(BLACKBOX,435)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f4227_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f4227_emscripten_compute_dom_pk_code957 (
        .in_intel_reserved_ffwd_70_0(in_intel_reserved_ffwd_70_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg98_q),
        .out_dest_data_out_70_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f4227_emscripten_compute_dom_pk_code957_out_dest_data_out_70_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code956(LOGICAL,940)@3
    assign i_unnamed_emscripten_compute_dom_pk_code956_q = i_and3605_emscripten_compute_dom_pk_code955_q ^ VCC_q;

    // c_i32_19034745731322_recast_x(CONSTANT,1419)
    assign c_i32_19034745731322_recast_x_q = $unsigned(32'b01110001011101001011011110001101);

    // i_pivot425_emscripten_compute_dom_pk_code418(COMPARE,635)@3
    assign i_pivot425_emscripten_compute_dom_pk_code418_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot425_emscripten_compute_dom_pk_code418_b = $unsigned({{2{c_i32_19034745731322_recast_x_q[31]}}, c_i32_19034745731322_recast_x_q});
    assign i_pivot425_emscripten_compute_dom_pk_code418_o = $unsigned($signed(i_pivot425_emscripten_compute_dom_pk_code418_a) - $signed(i_pivot425_emscripten_compute_dom_pk_code418_b));
    assign i_pivot425_emscripten_compute_dom_pk_code418_c[0] = i_pivot425_emscripten_compute_dom_pk_code418_o[33];

    // i_acl_3600_emscripten_compute_dom_pk_code954(LOGICAL,163)@3
    assign i_acl_3600_emscripten_compute_dom_pk_code954_q = redist75_i_pivot437_emscripten_compute_dom_pk_code71_c_1_q ^ i_pivot425_emscripten_compute_dom_pk_code418_c;

    // i_and3605_emscripten_compute_dom_pk_code955(LOGICAL,294)@3
    assign i_and3605_emscripten_compute_dom_pk_code955_q = i_acl_3600_emscripten_compute_dom_pk_code954_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg97(REG,1889)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg97_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg97_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f5228_emscripten_compute_dom_pk_code953(BLACKBOX,436)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f5228_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f5228_emscripten_compute_dom_pk_code953 (
        .in_intel_reserved_ffwd_71_0(in_intel_reserved_ffwd_71_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg97_q),
        .out_dest_data_out_71_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f5228_emscripten_compute_dom_pk_code953_out_dest_data_out_71_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code952(LOGICAL,939)@3
    assign i_unnamed_emscripten_compute_dom_pk_code952_q = i_and3594_emscripten_compute_dom_pk_code951_q ^ VCC_q;

    // c_i32_19034745741272_recast_x(CONSTANT,1420)
    assign c_i32_19034745741272_recast_x_q = $unsigned(32'b01110001011101001011011110001110);

    // i_pivot435_emscripten_compute_dom_pk_code179(COMPARE,638)@3
    assign i_pivot435_emscripten_compute_dom_pk_code179_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot435_emscripten_compute_dom_pk_code179_b = $unsigned({{2{c_i32_19034745741272_recast_x_q[31]}}, c_i32_19034745741272_recast_x_q});
    assign i_pivot435_emscripten_compute_dom_pk_code179_o = $unsigned($signed(i_pivot435_emscripten_compute_dom_pk_code179_a) - $signed(i_pivot435_emscripten_compute_dom_pk_code179_b));
    assign i_pivot435_emscripten_compute_dom_pk_code179_c[0] = i_pivot435_emscripten_compute_dom_pk_code179_o[33];

    // i_acl_3588_emscripten_compute_dom_pk_code950(LOGICAL,162)@3
    assign i_acl_3588_emscripten_compute_dom_pk_code950_q = i_pivot425_emscripten_compute_dom_pk_code418_c ^ i_pivot435_emscripten_compute_dom_pk_code179_c;

    // i_and3594_emscripten_compute_dom_pk_code951(LOGICAL,293)@3
    assign i_and3594_emscripten_compute_dom_pk_code951_q = i_acl_3588_emscripten_compute_dom_pk_code950_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg96(REG,1888)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg96_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg96_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f6229_emscripten_compute_dom_pk_code949(BLACKBOX,437)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f6229_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f6229_emscripten_compute_dom_pk_code949 (
        .in_intel_reserved_ffwd_72_0(in_intel_reserved_ffwd_72_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg96_q),
        .out_dest_data_out_72_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f6229_emscripten_compute_dom_pk_code949_out_dest_data_out_72_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code948(LOGICAL,938)@3
    assign i_unnamed_emscripten_compute_dom_pk_code948_q = i_and3583_emscripten_compute_dom_pk_code947_q ^ VCC_q;

    // c_i32_19034745751321_recast_x(CONSTANT,1421)
    assign c_i32_19034745751321_recast_x_q = $unsigned(32'b01110001011101001011011110001111);

    // i_pivot433_emscripten_compute_dom_pk_code416(COMPARE,637)@2
    assign i_pivot433_emscripten_compute_dom_pk_code416_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot433_emscripten_compute_dom_pk_code416_b = $unsigned({{2{c_i32_19034745751321_recast_x_q[31]}}, c_i32_19034745751321_recast_x_q});
    assign i_pivot433_emscripten_compute_dom_pk_code416_o = $unsigned($signed(i_pivot433_emscripten_compute_dom_pk_code416_a) - $signed(i_pivot433_emscripten_compute_dom_pk_code416_b));
    assign i_pivot433_emscripten_compute_dom_pk_code416_c[0] = i_pivot433_emscripten_compute_dom_pk_code416_o[33];

    // redist76_i_pivot433_emscripten_compute_dom_pk_code416_c_1(DELAY,2118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_pivot433_emscripten_compute_dom_pk_code416_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist76_i_pivot433_emscripten_compute_dom_pk_code416_c_1_q <= $unsigned(i_pivot433_emscripten_compute_dom_pk_code416_c);
        end
    end

    // i_acl_3577_emscripten_compute_dom_pk_code946(LOGICAL,161)@3
    assign i_acl_3577_emscripten_compute_dom_pk_code946_q = i_pivot435_emscripten_compute_dom_pk_code179_c ^ redist76_i_pivot433_emscripten_compute_dom_pk_code416_c_1_q;

    // i_and3583_emscripten_compute_dom_pk_code947(LOGICAL,292)@3
    assign i_and3583_emscripten_compute_dom_pk_code947_q = i_acl_3577_emscripten_compute_dom_pk_code946_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg95(REG,1887)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg95_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg95_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f7230_emscripten_compute_dom_pk_code945(BLACKBOX,438)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f7230_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f7230_emscripten_compute_dom_pk_code945 (
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg95_q),
        .out_dest_data_out_73_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f7230_emscripten_compute_dom_pk_code945_out_dest_data_out_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code944(LOGICAL,937)@3
    assign i_unnamed_emscripten_compute_dom_pk_code944_q = i_and3572_emscripten_compute_dom_pk_code943_q ^ VCC_q;

    // i_switchleaf427_emscripten_compute_dom_pk_code414(LOGICAL,766)@2
    assign i_switchleaf427_emscripten_compute_dom_pk_code414_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_19034745751321_recast_x_q ? 1'b1 : 1'b0);

    // redist20_i_switchleaf427_emscripten_compute_dom_pk_code414_q_1(DELAY,2062)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_switchleaf427_emscripten_compute_dom_pk_code414_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_switchleaf427_emscripten_compute_dom_pk_code414_q_1_q <= $unsigned(i_switchleaf427_emscripten_compute_dom_pk_code414_q);
        end
    end

    // i_and3572_emscripten_compute_dom_pk_code943(LOGICAL,291)@3
    assign i_and3572_emscripten_compute_dom_pk_code943_q = redist20_i_switchleaf427_emscripten_compute_dom_pk_code414_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg94(REG,1886)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg94_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg94_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f8231_emscripten_compute_dom_pk_code942(BLACKBOX,439)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f8231_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f8231_emscripten_compute_dom_pk_code942 (
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg94_q),
        .out_dest_data_out_74_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f8231_emscripten_compute_dom_pk_code942_out_dest_data_out_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code941(LOGICAL,936)@3
    assign i_unnamed_emscripten_compute_dom_pk_code941_q = i_and3559_emscripten_compute_dom_pk_code940_q ^ VCC_q;

    // c_i32_19034745611320_recast_x(CONSTANT,1414)
    assign c_i32_19034745611320_recast_x_q = $unsigned(32'b01110001011101001011011110000001);

    // i_pivot417_emscripten_compute_dom_pk_code412(COMPARE,631)@2
    assign i_pivot417_emscripten_compute_dom_pk_code412_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot417_emscripten_compute_dom_pk_code412_b = $unsigned({{2{c_i32_19034745611320_recast_x_q[31]}}, c_i32_19034745611320_recast_x_q});
    assign i_pivot417_emscripten_compute_dom_pk_code412_o = $unsigned($signed(i_pivot417_emscripten_compute_dom_pk_code412_a) - $signed(i_pivot417_emscripten_compute_dom_pk_code412_b));
    assign i_pivot417_emscripten_compute_dom_pk_code412_c[0] = i_pivot417_emscripten_compute_dom_pk_code412_o[33];

    // c_i32_19034745601207_recast_x(CONSTANT,1413)
    assign c_i32_19034745601207_recast_x_q = $unsigned(32'b01110001011101001011011110000000);

    // i_pivot439_emscripten_compute_dom_pk_code49(COMPARE,640)@2
    assign i_pivot439_emscripten_compute_dom_pk_code49_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot439_emscripten_compute_dom_pk_code49_b = $unsigned({{2{c_i32_19034745601207_recast_x_q[31]}}, c_i32_19034745601207_recast_x_q});
    assign i_pivot439_emscripten_compute_dom_pk_code49_o = $unsigned($signed(i_pivot439_emscripten_compute_dom_pk_code49_a) - $signed(i_pivot439_emscripten_compute_dom_pk_code49_b));
    assign i_pivot439_emscripten_compute_dom_pk_code49_c[0] = i_pivot439_emscripten_compute_dom_pk_code49_o[33];

    // i_acl_3555_emscripten_compute_dom_pk_code939(LOGICAL,160)@2 + 1
    assign i_acl_3555_emscripten_compute_dom_pk_code939_qi = i_pivot439_emscripten_compute_dom_pk_code49_c ^ i_pivot417_emscripten_compute_dom_pk_code412_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3555_emscripten_compute_dom_pk_code939_delay ( .xin(i_acl_3555_emscripten_compute_dom_pk_code939_qi), .xout(i_acl_3555_emscripten_compute_dom_pk_code939_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_and3559_emscripten_compute_dom_pk_code940(LOGICAL,290)@3
    assign i_and3559_emscripten_compute_dom_pk_code940_q = i_acl_3555_emscripten_compute_dom_pk_code939_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg93(REG,1885)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg93_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg93_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f9232_emscripten_compute_dom_pk_code938(BLACKBOX,440)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z24i32_dom_pk_f9232_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f9232_emscripten_compute_dom_pk_code938 (
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg93_q),
        .out_dest_data_out_75_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f9232_emscripten_compute_dom_pk_code938_out_dest_data_out_75_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code937(LOGICAL,935)@3
    assign i_unnamed_emscripten_compute_dom_pk_code937_q = i_and3548_emscripten_compute_dom_pk_code936_q ^ VCC_q;

    // i_switchleaf415_emscripten_compute_dom_pk_code409(LOGICAL,763)@2
    assign i_switchleaf415_emscripten_compute_dom_pk_code409_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_19034745611320_recast_x_q ? 1'b1 : 1'b0);

    // redist22_i_switchleaf415_emscripten_compute_dom_pk_code409_q_1(DELAY,2064)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_switchleaf415_emscripten_compute_dom_pk_code409_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist22_i_switchleaf415_emscripten_compute_dom_pk_code409_q_1_q <= $unsigned(i_switchleaf415_emscripten_compute_dom_pk_code409_q);
        end
    end

    // i_and3548_emscripten_compute_dom_pk_code936(LOGICAL,289)@3
    assign i_and3548_emscripten_compute_dom_pk_code936_q = redist22_i_switchleaf415_emscripten_compute_dom_pk_code409_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg92(REG,1884)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg92_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg92_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f10210_emscripten_compute_dom_pk_code935(BLACKBOX,416)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f10210_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f10210_emscripten_compute_dom_pk_code935 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg92_q),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f10210_emscripten_compute_dom_pk_code935_out_dest_data_out_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code934(LOGICAL,934)@3
    assign i_unnamed_emscripten_compute_dom_pk_code934_q = i_and3536_emscripten_compute_dom_pk_code933_q ^ VCC_q;

    // c_i32_20729261291319_recast_x(CONSTANT,1434)
    assign c_i32_20729261291319_recast_x_q = $unsigned(32'b01111011100011100101011110110001);

    // i_pivot471_emscripten_compute_dom_pk_code407(COMPARE,652)@3
    assign i_pivot471_emscripten_compute_dom_pk_code407_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot471_emscripten_compute_dom_pk_code407_b = $unsigned({{2{c_i32_20729261291319_recast_x_q[31]}}, c_i32_20729261291319_recast_x_q});
    assign i_pivot471_emscripten_compute_dom_pk_code407_o = $unsigned($signed(i_pivot471_emscripten_compute_dom_pk_code407_a) - $signed(i_pivot471_emscripten_compute_dom_pk_code407_b));
    assign i_pivot471_emscripten_compute_dom_pk_code407_c[0] = i_pivot471_emscripten_compute_dom_pk_code407_o[33];

    // c_i32_20729261281199_recast_x(CONSTANT,1433)
    assign c_i32_20729261281199_recast_x_q = $unsigned(32'b01111011100011100101011110110000);

    // i_pivot491_emscripten_compute_dom_pk_code33(COMPARE,662)@2 + 1
    assign i_pivot491_emscripten_compute_dom_pk_code33_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot491_emscripten_compute_dom_pk_code33_b = $unsigned({{2{c_i32_20729261281199_recast_x_q[31]}}, c_i32_20729261281199_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot491_emscripten_compute_dom_pk_code33_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot491_emscripten_compute_dom_pk_code33_o <= $unsigned($signed(i_pivot491_emscripten_compute_dom_pk_code33_a) - $signed(i_pivot491_emscripten_compute_dom_pk_code33_b));
        end
    end
    assign i_pivot491_emscripten_compute_dom_pk_code33_c[0] = i_pivot491_emscripten_compute_dom_pk_code33_o[33];

    // i_acl_3532_emscripten_compute_dom_pk_code932(LOGICAL,159)@3
    assign i_acl_3532_emscripten_compute_dom_pk_code932_q = i_pivot491_emscripten_compute_dom_pk_code33_c ^ i_pivot471_emscripten_compute_dom_pk_code407_c;

    // i_and3536_emscripten_compute_dom_pk_code933(LOGICAL,288)@3
    assign i_and3536_emscripten_compute_dom_pk_code933_q = i_acl_3532_emscripten_compute_dom_pk_code932_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg91(REG,1883)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg91_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg91_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_pause289_emscripten_compute_dom_pk_code931(BLACKBOX,497)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_pause289_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_pause289_emscripten_compute_dom_pk_code931 (
        .in_intel_reserved_ffwd_132_0(in_intel_reserved_ffwd_132_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg91_q),
        .out_dest_data_out_132_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_pause289_emscripten_compute_dom_pk_code931_out_dest_data_out_132_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18307780591269_recast_x(CONSTANT,1409)
    assign c_i32_18307780591269_recast_x_q = $unsigned(32'b10010010111000001000101100110101);

    // i_switchleaf3_emscripten_compute_dom_pk_code405(LOGICAL,759)@2
    assign i_switchleaf3_emscripten_compute_dom_pk_code405_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307780591269_recast_x_q ? 1'b1 : 1'b0);

    // redist26_i_switchleaf3_emscripten_compute_dom_pk_code405_q_1(DELAY,2068)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_switchleaf3_emscripten_compute_dom_pk_code405_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist26_i_switchleaf3_emscripten_compute_dom_pk_code405_q_1_q <= $unsigned(i_switchleaf3_emscripten_compute_dom_pk_code405_q);
        end
    end

    // i_and3525_emscripten_compute_dom_pk_code929(LOGICAL,287)@3
    assign i_and3525_emscripten_compute_dom_pk_code929_q = redist26_i_switchleaf3_emscripten_compute_dom_pk_code405_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code930(LOGICAL,933)@3
    assign i_unnamed_emscripten_compute_dom_pk_code930_q = i_and3525_emscripten_compute_dom_pk_code929_q ^ VCC_q;

    // valid_fanout_reg90(REG,1882)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg90_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg90_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_scroll_lock297_emscripten_compute_dom_pk_code928(BLACKBOX,505)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_pk_scroll_lock297_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_scroll_lock297_emscripten_compute_dom_pk_code928 (
        .in_intel_reserved_ffwd_140_0(in_intel_reserved_ffwd_140_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg90_q),
        .out_dest_data_out_140_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_scroll_lock297_emscripten_compute_dom_pk_code928_out_dest_data_out_140_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8401000371268_recast_x(CONSTANT,1488)
    assign c_i32_8401000371268_recast_x_q = $unsigned(32'b11001101111011010001011100111011);

    // i_switchleaf137_emscripten_compute_dom_pk_code403(LOGICAL,700)@2
    assign i_switchleaf137_emscripten_compute_dom_pk_code403_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_8401000371268_recast_x_q ? 1'b1 : 1'b0);

    // redist66_i_switchleaf137_emscripten_compute_dom_pk_code403_q_1(DELAY,2108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_switchleaf137_emscripten_compute_dom_pk_code403_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist66_i_switchleaf137_emscripten_compute_dom_pk_code403_q_1_q <= $unsigned(i_switchleaf137_emscripten_compute_dom_pk_code403_q);
        end
    end

    // i_and3513_emscripten_compute_dom_pk_code926(LOGICAL,286)@3
    assign i_and3513_emscripten_compute_dom_pk_code926_q = redist66_i_switchleaf137_emscripten_compute_dom_pk_code403_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code927(LOGICAL,932)@3
    assign i_unnamed_emscripten_compute_dom_pk_code927_q = i_and3513_emscripten_compute_dom_pk_code926_q ^ VCC_q;

    // valid_fanout_reg89(REG,1881)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg89_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg89_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_7270_emscripten_compute_dom_pk_code925(BLACKBOX,479)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_7270_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_7270_emscripten_compute_dom_pk_code925 (
        .in_intel_reserved_ffwd_113_0(in_intel_reserved_ffwd_113_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg89_q),
        .out_dest_data_out_113_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_7270_emscripten_compute_dom_pk_code925_out_dest_data_out_113_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9202573131265_recast_x(CONSTANT,1495)
    assign c_i32_9202573131265_recast_x_q = $unsigned(32'b11001001001001011111110011011111);

    // i_switchleaf117_emscripten_compute_dom_pk_code401(LOGICAL,696)@2
    assign i_switchleaf117_emscripten_compute_dom_pk_code401_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9202573131265_recast_x_q ? 1'b1 : 1'b0);

    // redist70_i_switchleaf117_emscripten_compute_dom_pk_code401_q_1(DELAY,2112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_switchleaf117_emscripten_compute_dom_pk_code401_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist70_i_switchleaf117_emscripten_compute_dom_pk_code401_q_1_q <= $unsigned(i_switchleaf117_emscripten_compute_dom_pk_code401_q);
        end
    end

    // i_and3501_emscripten_compute_dom_pk_code923(LOGICAL,285)@3
    assign i_and3501_emscripten_compute_dom_pk_code923_q = redist70_i_switchleaf117_emscripten_compute_dom_pk_code401_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code924(LOGICAL,931)@3
    assign i_unnamed_emscripten_compute_dom_pk_code924_q = i_and3501_emscripten_compute_dom_pk_code923_q ^ VCC_q;

    // valid_fanout_reg88(REG,1880)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg88_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg88_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_8271_emscripten_compute_dom_pk_code922(BLACKBOX,480)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_8271_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_8271_emscripten_compute_dom_pk_code922 (
        .in_intel_reserved_ffwd_114_0(in_intel_reserved_ffwd_114_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg88_q),
        .out_dest_data_out_114_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_8271_emscripten_compute_dom_pk_code922_out_dest_data_out_114_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code921(LOGICAL,930)@3
    assign i_unnamed_emscripten_compute_dom_pk_code921_q = i_and3489_emscripten_compute_dom_pk_code920_q ^ VCC_q;

    // c_i32_9202573271318_recast_x(CONSTANT,1503)
    assign c_i32_9202573271318_recast_x_q = $unsigned(32'b11001001001001011111110011010001);

    // i_pivot99_emscripten_compute_dom_pk_code399(COMPARE,677)@2
    assign i_pivot99_emscripten_compute_dom_pk_code399_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot99_emscripten_compute_dom_pk_code399_b = $unsigned({{2{c_i32_9202573271318_recast_x_q[31]}}, c_i32_9202573271318_recast_x_q});
    assign i_pivot99_emscripten_compute_dom_pk_code399_o = $unsigned($signed(i_pivot99_emscripten_compute_dom_pk_code399_a) - $signed(i_pivot99_emscripten_compute_dom_pk_code399_b));
    assign i_pivot99_emscripten_compute_dom_pk_code399_c[0] = i_pivot99_emscripten_compute_dom_pk_code399_o[33];

    // c_i32_9202573281266_recast_x(CONSTANT,1504)
    assign c_i32_9202573281266_recast_x_q = $unsigned(32'b11001001001001011111110011010000);

    // i_pivot101_emscripten_compute_dom_pk_code167(COMPARE,524)@2
    assign i_pivot101_emscripten_compute_dom_pk_code167_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot101_emscripten_compute_dom_pk_code167_b = $unsigned({{2{c_i32_9202573281266_recast_x_q[31]}}, c_i32_9202573281266_recast_x_q});
    assign i_pivot101_emscripten_compute_dom_pk_code167_o = $unsigned($signed(i_pivot101_emscripten_compute_dom_pk_code167_a) - $signed(i_pivot101_emscripten_compute_dom_pk_code167_b));
    assign i_pivot101_emscripten_compute_dom_pk_code167_c[0] = i_pivot101_emscripten_compute_dom_pk_code167_o[33];

    // i_acl_3482_emscripten_compute_dom_pk_code919(LOGICAL,158)@2 + 1
    assign i_acl_3482_emscripten_compute_dom_pk_code919_qi = i_pivot101_emscripten_compute_dom_pk_code167_c ^ i_pivot99_emscripten_compute_dom_pk_code399_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3482_emscripten_compute_dom_pk_code919_delay ( .xin(i_acl_3482_emscripten_compute_dom_pk_code919_qi), .xout(i_acl_3482_emscripten_compute_dom_pk_code919_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_and3489_emscripten_compute_dom_pk_code920(LOGICAL,284)@3
    assign i_and3489_emscripten_compute_dom_pk_code920_q = i_acl_3482_emscripten_compute_dom_pk_code919_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg87(REG,1879)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg87_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg87_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_9272_emscripten_compute_dom_pk_code918(BLACKBOX,481)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_9272_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_9272_emscripten_compute_dom_pk_code918 (
        .in_intel_reserved_ffwd_115_0(in_intel_reserved_ffwd_115_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg87_q),
        .out_dest_data_out_115_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_9272_emscripten_compute_dom_pk_code918_out_dest_data_out_115_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code917(LOGICAL,929)@3
    assign i_unnamed_emscripten_compute_dom_pk_code917_q = i_and3477_emscripten_compute_dom_pk_code916_q ^ VCC_q;

    // i_switchleaf97_emscripten_compute_dom_pk_code396(LOGICAL,793)@2
    assign i_switchleaf97_emscripten_compute_dom_pk_code396_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9202573271318_recast_x_q ? 1'b1 : 1'b0);

    // redist3_i_switchleaf97_emscripten_compute_dom_pk_code396_q_1(DELAY,2045)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_switchleaf97_emscripten_compute_dom_pk_code396_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_switchleaf97_emscripten_compute_dom_pk_code396_q_1_q <= $unsigned(i_switchleaf97_emscripten_compute_dom_pk_code396_q);
        end
    end

    // i_and3477_emscripten_compute_dom_pk_code916(LOGICAL,283)@3
    assign i_and3477_emscripten_compute_dom_pk_code916_q = redist3_i_switchleaf97_emscripten_compute_dom_pk_code396_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg86(REG,1878)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg86_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg86_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_subtract280_emscripten_compute_dom_pk_code915(BLACKBOX,489)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Znumpad_subtract280_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_subtract280_emscripten_compute_dom_pk_code915 (
        .in_intel_reserved_ffwd_123_0(in_intel_reserved_ffwd_123_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg86_q),
        .out_dest_data_out_123_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_subtract280_emscripten_compute_dom_pk_code915_out_dest_data_out_123_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code914(LOGICAL,928)@3
    assign i_unnamed_emscripten_compute_dom_pk_code914_q = i_and3464_emscripten_compute_dom_pk_code913_q ^ VCC_q;

    // c_i32_15878002281276_recast_x(CONSTANT,1377)
    assign c_i32_15878002281276_recast_x_q = $unsigned(32'b01011110101000111110100010100100);

    // i_switchleaf353_emscripten_compute_dom_pk_code394(LOGICAL,749)@2
    assign i_switchleaf353_emscripten_compute_dom_pk_code394_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_15878002281276_recast_x_q ? 1'b1 : 1'b0);

    // redist34_i_switchleaf353_emscripten_compute_dom_pk_code394_q_1(DELAY,2076)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_switchleaf353_emscripten_compute_dom_pk_code394_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist34_i_switchleaf353_emscripten_compute_dom_pk_code394_q_1_q <= $unsigned(i_switchleaf353_emscripten_compute_dom_pk_code394_q);
        end
    end

    // i_and3464_emscripten_compute_dom_pk_code913(LOGICAL,282)@3
    assign i_and3464_emscripten_compute_dom_pk_code913_q = redist34_i_switchleaf353_emscripten_compute_dom_pk_code394_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg85(REG,1877)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg85_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg85_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_4267_emscripten_compute_dom_pk_code912(BLACKBOX,476)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_4267_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_4267_emscripten_compute_dom_pk_code912 (
        .in_intel_reserved_ffwd_110_0(in_intel_reserved_ffwd_110_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg85_q),
        .out_dest_data_out_110_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_4267_emscripten_compute_dom_pk_code912_out_dest_data_out_110_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code911(LOGICAL,927)@3
    assign i_unnamed_emscripten_compute_dom_pk_code911_q = i_and3452_emscripten_compute_dom_pk_code910_q ^ VCC_q;

    // c_i32_9202573151215_recast_x(CONSTANT,1497)
    assign c_i32_9202573151215_recast_x_q = $unsigned(32'b11001001001001011111110011011101);

    // i_pivot129_emscripten_compute_dom_pk_code65(COMPARE,536)@2 + 1
    assign i_pivot129_emscripten_compute_dom_pk_code65_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot129_emscripten_compute_dom_pk_code65_b = $unsigned({{2{c_i32_9202573151215_recast_x_q[31]}}, c_i32_9202573151215_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot129_emscripten_compute_dom_pk_code65_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot129_emscripten_compute_dom_pk_code65_o <= $unsigned($signed(i_pivot129_emscripten_compute_dom_pk_code65_a) - $signed(i_pivot129_emscripten_compute_dom_pk_code65_b));
        end
    end
    assign i_pivot129_emscripten_compute_dom_pk_code65_c[0] = i_pivot129_emscripten_compute_dom_pk_code65_o[33];

    // c_i32_9202573161317_recast_x(CONSTANT,1498)
    assign c_i32_9202573161317_recast_x_q = $unsigned(32'b11001001001001011111110011011100);

    // i_pivot109_emscripten_compute_dom_pk_code392(COMPARE,528)@3
    assign i_pivot109_emscripten_compute_dom_pk_code392_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot109_emscripten_compute_dom_pk_code392_b = $unsigned({{2{c_i32_9202573161317_recast_x_q[31]}}, c_i32_9202573161317_recast_x_q});
    assign i_pivot109_emscripten_compute_dom_pk_code392_o = $unsigned($signed(i_pivot109_emscripten_compute_dom_pk_code392_a) - $signed(i_pivot109_emscripten_compute_dom_pk_code392_b));
    assign i_pivot109_emscripten_compute_dom_pk_code392_c[0] = i_pivot109_emscripten_compute_dom_pk_code392_o[33];

    // i_acl_3447_emscripten_compute_dom_pk_code909(LOGICAL,157)@3
    assign i_acl_3447_emscripten_compute_dom_pk_code909_q = i_pivot109_emscripten_compute_dom_pk_code392_c ^ i_pivot129_emscripten_compute_dom_pk_code65_c;

    // i_and3452_emscripten_compute_dom_pk_code910(LOGICAL,281)@3
    assign i_and3452_emscripten_compute_dom_pk_code910_q = i_acl_3447_emscripten_compute_dom_pk_code909_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg84(REG,1876)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg84_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg84_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_5268_emscripten_compute_dom_pk_code908(BLACKBOX,477)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_5268_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_5268_emscripten_compute_dom_pk_code908 (
        .in_intel_reserved_ffwd_111_0(in_intel_reserved_ffwd_111_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg84_q),
        .out_dest_data_out_111_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_5268_emscripten_compute_dom_pk_code908_out_dest_data_out_111_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code907(LOGICAL,926)@3
    assign i_unnamed_emscripten_compute_dom_pk_code907_q = i_and3440_emscripten_compute_dom_pk_code906_q ^ VCC_q;

    // c_i32_9202573141316_recast_x(CONSTANT,1496)
    assign c_i32_9202573141316_recast_x_q = $unsigned(32'b11001001001001011111110011011110);

    // i_pivot115_emscripten_compute_dom_pk_code390(COMPARE,531)@3
    assign i_pivot115_emscripten_compute_dom_pk_code390_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot115_emscripten_compute_dom_pk_code390_b = $unsigned({{2{c_i32_9202573141316_recast_x_q[31]}}, c_i32_9202573141316_recast_x_q});
    assign i_pivot115_emscripten_compute_dom_pk_code390_o = $unsigned($signed(i_pivot115_emscripten_compute_dom_pk_code390_a) - $signed(i_pivot115_emscripten_compute_dom_pk_code390_b));
    assign i_pivot115_emscripten_compute_dom_pk_code390_c[0] = i_pivot115_emscripten_compute_dom_pk_code390_o[33];

    // i_acl_3435_emscripten_compute_dom_pk_code905(LOGICAL,156)@3
    assign i_acl_3435_emscripten_compute_dom_pk_code905_q = i_pivot129_emscripten_compute_dom_pk_code65_c ^ i_pivot115_emscripten_compute_dom_pk_code390_c;

    // i_and3440_emscripten_compute_dom_pk_code906(LOGICAL,280)@3
    assign i_and3440_emscripten_compute_dom_pk_code906_q = i_acl_3435_emscripten_compute_dom_pk_code905_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg83(REG,1875)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg83_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg83_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_6269_emscripten_compute_dom_pk_code904(BLACKBOX,478)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_6269_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_6269_emscripten_compute_dom_pk_code904 (
        .in_intel_reserved_ffwd_112_0(in_intel_reserved_ffwd_112_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg83_q),
        .out_dest_data_out_112_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_6269_emscripten_compute_dom_pk_code904_out_dest_data_out_112_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code903(LOGICAL,925)@3
    assign i_unnamed_emscripten_compute_dom_pk_code903_q = i_and3429_emscripten_compute_dom_pk_code902_q ^ VCC_q;

    // i_pivot127_emscripten_compute_dom_pk_code165(COMPARE,535)@2
    assign i_pivot127_emscripten_compute_dom_pk_code165_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot127_emscripten_compute_dom_pk_code165_b = $unsigned({{2{c_i32_9202573131265_recast_x_q[31]}}, c_i32_9202573131265_recast_x_q});
    assign i_pivot127_emscripten_compute_dom_pk_code165_o = $unsigned($signed(i_pivot127_emscripten_compute_dom_pk_code165_a) - $signed(i_pivot127_emscripten_compute_dom_pk_code165_b));
    assign i_pivot127_emscripten_compute_dom_pk_code165_c[0] = i_pivot127_emscripten_compute_dom_pk_code165_o[33];

    // redist81_i_pivot127_emscripten_compute_dom_pk_code165_c_1(DELAY,2123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_pivot127_emscripten_compute_dom_pk_code165_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist81_i_pivot127_emscripten_compute_dom_pk_code165_c_1_q <= $unsigned(i_pivot127_emscripten_compute_dom_pk_code165_c);
        end
    end

    // i_acl_3423_emscripten_compute_dom_pk_code901(LOGICAL,155)@3
    assign i_acl_3423_emscripten_compute_dom_pk_code901_q = i_pivot115_emscripten_compute_dom_pk_code390_c ^ redist81_i_pivot127_emscripten_compute_dom_pk_code165_c_1_q;

    // i_and3429_emscripten_compute_dom_pk_code902(LOGICAL,279)@3
    assign i_and3429_emscripten_compute_dom_pk_code902_q = i_acl_3423_emscripten_compute_dom_pk_code901_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg82(REG,1874)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg82_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg82_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_add273_emscripten_compute_dom_pk_code900(BLACKBOX,482)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zm_pk_numpad_add273_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_add273_emscripten_compute_dom_pk_code900 (
        .in_intel_reserved_ffwd_116_0(in_intel_reserved_ffwd_116_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg82_q),
        .out_dest_data_out_116_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_add273_emscripten_compute_dom_pk_code900_out_dest_data_out_116_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code899(LOGICAL,924)@3
    assign i_unnamed_emscripten_compute_dom_pk_code899_q = i_and3418_emscripten_compute_dom_pk_code898_q ^ VCC_q;

    // c_i32_9402850681264_recast_x(CONSTANT,1514)
    assign c_i32_9402850681264_recast_x_q = $unsigned(32'b00111000000010111001110010001100);

    // i_switchleaf301_emscripten_compute_dom_pk_code388(LOGICAL,735)@2
    assign i_switchleaf301_emscripten_compute_dom_pk_code388_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9402850681264_recast_x_q ? 1'b1 : 1'b0);

    // redist46_i_switchleaf301_emscripten_compute_dom_pk_code388_q_1(DELAY,2088)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_switchleaf301_emscripten_compute_dom_pk_code388_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist46_i_switchleaf301_emscripten_compute_dom_pk_code388_q_1_q <= $unsigned(i_switchleaf301_emscripten_compute_dom_pk_code388_q);
        end
    end

    // i_and3418_emscripten_compute_dom_pk_code898(LOGICAL,278)@3
    assign i_and3418_emscripten_compute_dom_pk_code898_q = redist46_i_switchleaf301_emscripten_compute_dom_pk_code388_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg81(REG,1873)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg81_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg81_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_1264_emscripten_compute_dom_pk_code897(BLACKBOX,473)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_1264_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_1264_emscripten_compute_dom_pk_code897 (
        .in_intel_reserved_ffwd_107_0(in_intel_reserved_ffwd_107_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg81_q),
        .out_dest_data_out_107_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_1264_emscripten_compute_dom_pk_code897_out_dest_data_out_107_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code896(LOGICAL,923)@3
    assign i_unnamed_emscripten_compute_dom_pk_code896_q = i_and3405_emscripten_compute_dom_pk_code895_q ^ VCC_q;

    // c_i32_9202573181263_recast_x(CONSTANT,1500)
    assign c_i32_9202573181263_recast_x_q = $unsigned(32'b11001001001001011111110011011010);

    // i_pivot113_emscripten_compute_dom_pk_code161(COMPARE,530)@3
    assign i_pivot113_emscripten_compute_dom_pk_code161_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot113_emscripten_compute_dom_pk_code161_b = $unsigned({{2{c_i32_9202573181263_recast_x_q[31]}}, c_i32_9202573181263_recast_x_q});
    assign i_pivot113_emscripten_compute_dom_pk_code161_o = $unsigned($signed(i_pivot113_emscripten_compute_dom_pk_code161_a) - $signed(i_pivot113_emscripten_compute_dom_pk_code161_b));
    assign i_pivot113_emscripten_compute_dom_pk_code161_c[0] = i_pivot113_emscripten_compute_dom_pk_code161_o[33];

    // c_i32_9202573191315_recast_x(CONSTANT,1501)
    assign c_i32_9202573191315_recast_x_q = $unsigned(32'b11001001001001011111110011011001);

    // i_pivot107_emscripten_compute_dom_pk_code386(COMPARE,527)@3
    assign i_pivot107_emscripten_compute_dom_pk_code386_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot107_emscripten_compute_dom_pk_code386_b = $unsigned({{2{c_i32_9202573191315_recast_x_q[31]}}, c_i32_9202573191315_recast_x_q});
    assign i_pivot107_emscripten_compute_dom_pk_code386_o = $unsigned($signed(i_pivot107_emscripten_compute_dom_pk_code386_a) - $signed(i_pivot107_emscripten_compute_dom_pk_code386_b));
    assign i_pivot107_emscripten_compute_dom_pk_code386_c[0] = i_pivot107_emscripten_compute_dom_pk_code386_o[33];

    // i_acl_3399_emscripten_compute_dom_pk_code894(LOGICAL,154)@3
    assign i_acl_3399_emscripten_compute_dom_pk_code894_q = i_pivot107_emscripten_compute_dom_pk_code386_c ^ i_pivot113_emscripten_compute_dom_pk_code161_c;

    // i_and3405_emscripten_compute_dom_pk_code895(LOGICAL,277)@3
    assign i_and3405_emscripten_compute_dom_pk_code895_q = i_acl_3399_emscripten_compute_dom_pk_code894_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg80(REG,1872)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg80_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg80_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_2265_emscripten_compute_dom_pk_code893(BLACKBOX,474)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_2265_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_2265_emscripten_compute_dom_pk_code893 (
        .in_intel_reserved_ffwd_108_0(in_intel_reserved_ffwd_108_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg80_q),
        .out_dest_data_out_108_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_2265_emscripten_compute_dom_pk_code893_out_dest_data_out_108_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code892(LOGICAL,922)@3
    assign i_unnamed_emscripten_compute_dom_pk_code892_q = i_and3394_emscripten_compute_dom_pk_code891_q ^ VCC_q;

    // c_i32_9202573171314_recast_x(CONSTANT,1499)
    assign c_i32_9202573171314_recast_x_q = $unsigned(32'b11001001001001011111110011011011);

    // i_pivot111_emscripten_compute_dom_pk_code384(COMPARE,529)@3
    assign i_pivot111_emscripten_compute_dom_pk_code384_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot111_emscripten_compute_dom_pk_code384_b = $unsigned({{2{c_i32_9202573171314_recast_x_q[31]}}, c_i32_9202573171314_recast_x_q});
    assign i_pivot111_emscripten_compute_dom_pk_code384_o = $unsigned($signed(i_pivot111_emscripten_compute_dom_pk_code384_a) - $signed(i_pivot111_emscripten_compute_dom_pk_code384_b));
    assign i_pivot111_emscripten_compute_dom_pk_code384_c[0] = i_pivot111_emscripten_compute_dom_pk_code384_o[33];

    // i_acl_3388_emscripten_compute_dom_pk_code890(LOGICAL,153)@3
    assign i_acl_3388_emscripten_compute_dom_pk_code890_q = i_pivot113_emscripten_compute_dom_pk_code161_c ^ i_pivot111_emscripten_compute_dom_pk_code384_c;

    // i_and3394_emscripten_compute_dom_pk_code891(LOGICAL,276)@3
    assign i_and3394_emscripten_compute_dom_pk_code891_q = i_acl_3388_emscripten_compute_dom_pk_code890_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg79(REG,1871)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg79_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg79_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_3266_emscripten_compute_dom_pk_code889(BLACKBOX,475)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_3266_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_3266_emscripten_compute_dom_pk_code889 (
        .in_intel_reserved_ffwd_109_0(in_intel_reserved_ffwd_109_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg79_q),
        .out_dest_data_out_109_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_3266_emscripten_compute_dom_pk_code889_out_dest_data_out_109_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code888(LOGICAL,921)@3
    assign i_unnamed_emscripten_compute_dom_pk_code888_q = i_and3383_emscripten_compute_dom_pk_code887_q ^ VCC_q;

    // i_acl_3376_emscripten_compute_dom_pk_code886(LOGICAL,152)@3
    assign i_acl_3376_emscripten_compute_dom_pk_code886_q = i_pivot111_emscripten_compute_dom_pk_code384_c ^ i_pivot109_emscripten_compute_dom_pk_code392_c;

    // i_and3383_emscripten_compute_dom_pk_code887(LOGICAL,275)@3
    assign i_and3383_emscripten_compute_dom_pk_code887_q = i_acl_3376_emscripten_compute_dom_pk_code886_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg78(REG,1870)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg78_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg78_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_0263_emscripten_compute_dom_pk_code885(BLACKBOX,472)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_numpad_0263_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_0263_emscripten_compute_dom_pk_code885 (
        .in_intel_reserved_ffwd_106_0(in_intel_reserved_ffwd_106_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg78_q),
        .out_dest_data_out_106_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_0263_emscripten_compute_dom_pk_code885_out_dest_data_out_106_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code884(LOGICAL,920)@3
    assign i_unnamed_emscripten_compute_dom_pk_code884_q = i_and3371_emscripten_compute_dom_pk_code883_q ^ VCC_q;

    // c_i32_9202573201197_recast_x(CONSTANT,1502)
    assign c_i32_9202573201197_recast_x_q = $unsigned(32'b11001001001001011111110011011000);

    // i_pivot131_emscripten_compute_dom_pk_code29(COMPARE,537)@2 + 1
    assign i_pivot131_emscripten_compute_dom_pk_code29_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot131_emscripten_compute_dom_pk_code29_b = $unsigned({{2{c_i32_9202573201197_recast_x_q[31]}}, c_i32_9202573201197_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot131_emscripten_compute_dom_pk_code29_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot131_emscripten_compute_dom_pk_code29_o <= $unsigned($signed(i_pivot131_emscripten_compute_dom_pk_code29_a) - $signed(i_pivot131_emscripten_compute_dom_pk_code29_b));
        end
    end
    assign i_pivot131_emscripten_compute_dom_pk_code29_c[0] = i_pivot131_emscripten_compute_dom_pk_code29_o[33];

    // i_acl_3367_emscripten_compute_dom_pk_code882(LOGICAL,151)@3
    assign i_acl_3367_emscripten_compute_dom_pk_code882_q = i_pivot131_emscripten_compute_dom_pk_code29_c ^ i_pivot107_emscripten_compute_dom_pk_code386_c;

    // i_and3371_emscripten_compute_dom_pk_code883(LOGICAL,274)@3
    assign i_and3371_emscripten_compute_dom_pk_code883_q = i_acl_3367_emscripten_compute_dom_pk_code882_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg77(REG,1869)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg77_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg77_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_decimal275_emscripten_compute_dom_pk_code881(BLACKBOX,484)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_numpad_decimal275_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_decimal275_emscripten_compute_dom_pk_code881 (
        .in_intel_reserved_ffwd_118_0(in_intel_reserved_ffwd_118_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg77_q),
        .out_dest_data_out_118_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_decimal275_emscripten_compute_dom_pk_code881_out_dest_data_out_118_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17864341321296_recast_x(CONSTANT,1396)
    assign c_i32_17864341321296_recast_x_q = $unsigned(32'b10010101100001010010110110101100);

    // i_switchleaf41_emscripten_compute_dom_pk_code382(LOGICAL,765)@2
    assign i_switchleaf41_emscripten_compute_dom_pk_code382_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17864341321296_recast_x_q ? 1'b1 : 1'b0);

    // redist21_i_switchleaf41_emscripten_compute_dom_pk_code382_q_1(DELAY,2063)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_switchleaf41_emscripten_compute_dom_pk_code382_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist21_i_switchleaf41_emscripten_compute_dom_pk_code382_q_1_q <= $unsigned(i_switchleaf41_emscripten_compute_dom_pk_code382_q);
        end
    end

    // i_and3360_emscripten_compute_dom_pk_code879(LOGICAL,273)@3
    assign i_and3360_emscripten_compute_dom_pk_code879_q = redist21_i_switchleaf41_emscripten_compute_dom_pk_code382_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code880(LOGICAL,919)@3
    assign i_unnamed_emscripten_compute_dom_pk_code880_q = i_and3360_emscripten_compute_dom_pk_code879_q ^ VCC_q;

    // valid_fanout_reg76(REG,1868)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg76_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg76_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_print_screen292_emscripten_compute_dom_pk_code878(BLACKBOX,500)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_print_screen292_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_print_screen292_emscripten_compute_dom_pk_code878 (
        .in_intel_reserved_ffwd_135_0(in_intel_reserved_ffwd_135_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg76_q),
        .out_dest_data_out_135_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_print_screen292_emscripten_compute_dom_pk_code878_out_dest_data_out_135_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8704426101189_recast_x(CONSTANT,1489)
    assign c_i32_8704426101189_recast_x_q = $unsigned(32'b11001100000111100001100110001110);

    // i_switchleaf135_emscripten_compute_dom_pk_code380(LOGICAL,699)@2
    assign i_switchleaf135_emscripten_compute_dom_pk_code380_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_8704426101189_recast_x_q ? 1'b1 : 1'b0);

    // redist67_i_switchleaf135_emscripten_compute_dom_pk_code380_q_1(DELAY,2109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_switchleaf135_emscripten_compute_dom_pk_code380_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist67_i_switchleaf135_emscripten_compute_dom_pk_code380_q_1_q <= $unsigned(i_switchleaf135_emscripten_compute_dom_pk_code380_q);
        end
    end

    // i_and3347_emscripten_compute_dom_pk_code876(LOGICAL,272)@3
    assign i_and3347_emscripten_compute_dom_pk_code876_q = redist67_i_switchleaf135_emscripten_compute_dom_pk_code380_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code877(LOGICAL,918)@3
    assign i_unnamed_emscripten_compute_dom_pk_code877_q = i_and3347_emscripten_compute_dom_pk_code876_q ^ VCC_q;

    // valid_fanout_reg75(REG,1867)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg75_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg75_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_backslash239_emscripten_compute_dom_pk_code875(BLACKBOX,447)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_intl_backslash239_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_backslash239_emscripten_compute_dom_pk_code875 (
        .in_intel_reserved_ffwd_82_0(in_intel_reserved_ffwd_82_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg75_q),
        .out_dest_data_out_82_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_backslash239_emscripten_compute_dom_pk_code875_out_dest_data_out_82_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3816254001246_recast_x(CONSTANT,1448)
    assign c_i32_3816254001246_recast_x_q = $unsigned(32'b00010110101111110010010000111000);

    // i_switchleaf177_emscripten_compute_dom_pk_code378(LOGICAL,713)@2
    assign i_switchleaf177_emscripten_compute_dom_pk_code378_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_3816254001246_recast_x_q ? 1'b1 : 1'b0);

    // redist58_i_switchleaf177_emscripten_compute_dom_pk_code378_q_1(DELAY,2100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_switchleaf177_emscripten_compute_dom_pk_code378_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist58_i_switchleaf177_emscripten_compute_dom_pk_code378_q_1_q <= $unsigned(i_switchleaf177_emscripten_compute_dom_pk_code378_q);
        end
    end

    // i_and3335_emscripten_compute_dom_pk_code873(LOGICAL,271)@3
    assign i_and3335_emscripten_compute_dom_pk_code873_q = redist58_i_switchleaf177_emscripten_compute_dom_pk_code378_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code874(LOGICAL,917)@3
    assign i_unnamed_emscripten_compute_dom_pk_code874_q = i_and3335_emscripten_compute_dom_pk_code873_q ^ VCC_q;

    // valid_fanout_reg74(REG,1866)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg74_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg74_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f11211_emscripten_compute_dom_pk_code872(BLACKBOX,417)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f11211_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f11211_emscripten_compute_dom_pk_code872 (
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg74_q),
        .out_dest_data_out_54_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f11211_emscripten_compute_dom_pk_code872_out_dest_data_out_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code871(LOGICAL,916)@3
    assign i_unnamed_emscripten_compute_dom_pk_code871_q = i_and3322_emscripten_compute_dom_pk_code870_q ^ VCC_q;

    // c_i32_20729261301270_recast_x(CONSTANT,1435)
    assign c_i32_20729261301270_recast_x_q = $unsigned(32'b01111011100011100101011110110010);

    // i_pivot477_emscripten_compute_dom_pk_code175(COMPARE,655)@3
    assign i_pivot477_emscripten_compute_dom_pk_code175_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot477_emscripten_compute_dom_pk_code175_b = $unsigned({{2{c_i32_20729261301270_recast_x_q[31]}}, c_i32_20729261301270_recast_x_q});
    assign i_pivot477_emscripten_compute_dom_pk_code175_o = $unsigned($signed(i_pivot477_emscripten_compute_dom_pk_code175_a) - $signed(i_pivot477_emscripten_compute_dom_pk_code175_b));
    assign i_pivot477_emscripten_compute_dom_pk_code175_c[0] = i_pivot477_emscripten_compute_dom_pk_code175_o[33];

    // i_acl_3316_emscripten_compute_dom_pk_code869(LOGICAL,150)@3
    assign i_acl_3316_emscripten_compute_dom_pk_code869_q = i_pivot471_emscripten_compute_dom_pk_code407_c ^ i_pivot477_emscripten_compute_dom_pk_code175_c;

    // i_and3322_emscripten_compute_dom_pk_code870(LOGICAL,270)@3
    assign i_and3322_emscripten_compute_dom_pk_code870_q = i_acl_3316_emscripten_compute_dom_pk_code869_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg73(REG,1865)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg73_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg73_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f12212_emscripten_compute_dom_pk_code868(BLACKBOX,419)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f12212_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f12212_emscripten_compute_dom_pk_code868 (
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg73_q),
        .out_dest_data_out_55_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f12212_emscripten_compute_dom_pk_code868_out_dest_data_out_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code867(LOGICAL,915)@3
    assign i_unnamed_emscripten_compute_dom_pk_code867_q = i_and3311_emscripten_compute_dom_pk_code866_q ^ VCC_q;

    // c_i32_20729261311313_recast_x(CONSTANT,1436)
    assign c_i32_20729261311313_recast_x_q = $unsigned(32'b01111011100011100101011110110011);

    // i_pivot475_emscripten_compute_dom_pk_code376(COMPARE,654)@3
    assign i_pivot475_emscripten_compute_dom_pk_code376_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot475_emscripten_compute_dom_pk_code376_b = $unsigned({{2{c_i32_20729261311313_recast_x_q[31]}}, c_i32_20729261311313_recast_x_q});
    assign i_pivot475_emscripten_compute_dom_pk_code376_o = $unsigned($signed(i_pivot475_emscripten_compute_dom_pk_code376_a) - $signed(i_pivot475_emscripten_compute_dom_pk_code376_b));
    assign i_pivot475_emscripten_compute_dom_pk_code376_c[0] = i_pivot475_emscripten_compute_dom_pk_code376_o[33];

    // i_acl_3305_emscripten_compute_dom_pk_code865(LOGICAL,149)@3
    assign i_acl_3305_emscripten_compute_dom_pk_code865_q = i_pivot477_emscripten_compute_dom_pk_code175_c ^ i_pivot475_emscripten_compute_dom_pk_code376_c;

    // i_and3311_emscripten_compute_dom_pk_code866(LOGICAL,269)@3
    assign i_and3311_emscripten_compute_dom_pk_code866_q = i_acl_3305_emscripten_compute_dom_pk_code865_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg72(REG,1864)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg72_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg72_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_equal278_emscripten_compute_dom_pk_code864(BLACKBOX,487)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_numpad_equal278_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_equal278_emscripten_compute_dom_pk_code864 (
        .in_intel_reserved_ffwd_121_0(in_intel_reserved_ffwd_121_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg72_q),
        .out_dest_data_out_121_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_equal278_emscripten_compute_dom_pk_code864_out_dest_data_out_121_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code863(LOGICAL,914)@3
    assign i_unnamed_emscripten_compute_dom_pk_code863_q = i_and3300_emscripten_compute_dom_pk_code862_q ^ VCC_q;

    // c_i32_19390780601262_recast_x(CONSTANT,1424)
    assign c_i32_19390780601262_recast_x_q = $unsigned(32'b01110011100100111111101110101100);

    // i_switchleaf443_emscripten_compute_dom_pk_code374(LOGICAL,769)@2
    assign i_switchleaf443_emscripten_compute_dom_pk_code374_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_19390780601262_recast_x_q ? 1'b1 : 1'b0);

    // redist18_i_switchleaf443_emscripten_compute_dom_pk_code374_q_1(DELAY,2060)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_switchleaf443_emscripten_compute_dom_pk_code374_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_switchleaf443_emscripten_compute_dom_pk_code374_q_1_q <= $unsigned(i_switchleaf443_emscripten_compute_dom_pk_code374_q);
        end
    end

    // i_and3300_emscripten_compute_dom_pk_code862(LOGICAL,268)@3
    assign i_and3300_emscripten_compute_dom_pk_code862_q = redist18_i_switchleaf443_emscripten_compute_dom_pk_code374_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg71(REG,1863)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg71_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg71_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f13213_emscripten_compute_dom_pk_code861(BLACKBOX,420)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f13213_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f13213_emscripten_compute_dom_pk_code861 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg71_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f13213_emscripten_compute_dom_pk_code861_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code860(LOGICAL,913)@3
    assign i_unnamed_emscripten_compute_dom_pk_code860_q = i_and3288_emscripten_compute_dom_pk_code859_q ^ VCC_q;

    // c_i32_20729261321312_recast_x(CONSTANT,1437)
    assign c_i32_20729261321312_recast_x_q = $unsigned(32'b01111011100011100101011110110100);

    // i_pivot473_emscripten_compute_dom_pk_code372(COMPARE,653)@3
    assign i_pivot473_emscripten_compute_dom_pk_code372_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot473_emscripten_compute_dom_pk_code372_b = $unsigned({{2{c_i32_20729261321312_recast_x_q[31]}}, c_i32_20729261321312_recast_x_q});
    assign i_pivot473_emscripten_compute_dom_pk_code372_o = $unsigned($signed(i_pivot473_emscripten_compute_dom_pk_code372_a) - $signed(i_pivot473_emscripten_compute_dom_pk_code372_b));
    assign i_pivot473_emscripten_compute_dom_pk_code372_c[0] = i_pivot473_emscripten_compute_dom_pk_code372_o[33];

    // i_acl_3281_emscripten_compute_dom_pk_code858(LOGICAL,148)@3
    assign i_acl_3281_emscripten_compute_dom_pk_code858_q = i_pivot475_emscripten_compute_dom_pk_code376_c ^ i_pivot473_emscripten_compute_dom_pk_code372_c;

    // i_and3288_emscripten_compute_dom_pk_code859(LOGICAL,267)@3
    assign i_and3288_emscripten_compute_dom_pk_code859_q = i_acl_3281_emscripten_compute_dom_pk_code858_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg70(REG,1862)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg70_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg70_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f14214_emscripten_compute_dom_pk_code857(BLACKBOX,421)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f14214_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f14214_emscripten_compute_dom_pk_code857 (
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg70_q),
        .out_dest_data_out_57_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f14214_emscripten_compute_dom_pk_code857_out_dest_data_out_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code856(LOGICAL,912)@3
    assign i_unnamed_emscripten_compute_dom_pk_code856_q = i_and3276_emscripten_compute_dom_pk_code855_q ^ VCC_q;

    // c_i32_20729261331217_recast_x(CONSTANT,1438)
    assign c_i32_20729261331217_recast_x_q = $unsigned(32'b01111011100011100101011110110101);

    // i_pivot489_emscripten_compute_dom_pk_code69(COMPARE,661)@3
    assign i_pivot489_emscripten_compute_dom_pk_code69_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot489_emscripten_compute_dom_pk_code69_b = $unsigned({{2{c_i32_20729261331217_recast_x_q[31]}}, c_i32_20729261331217_recast_x_q});
    assign i_pivot489_emscripten_compute_dom_pk_code69_o = $unsigned($signed(i_pivot489_emscripten_compute_dom_pk_code69_a) - $signed(i_pivot489_emscripten_compute_dom_pk_code69_b));
    assign i_pivot489_emscripten_compute_dom_pk_code69_c[0] = i_pivot489_emscripten_compute_dom_pk_code69_o[33];

    // i_acl_3271_emscripten_compute_dom_pk_code854(LOGICAL,147)@3
    assign i_acl_3271_emscripten_compute_dom_pk_code854_q = i_pivot473_emscripten_compute_dom_pk_code372_c ^ i_pivot489_emscripten_compute_dom_pk_code69_c;

    // i_and3276_emscripten_compute_dom_pk_code855(LOGICAL,266)@3
    assign i_and3276_emscripten_compute_dom_pk_code855_q = i_acl_3271_emscripten_compute_dom_pk_code854_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg69(REG,1861)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg69_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg69_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f15215_emscripten_compute_dom_pk_code853(BLACKBOX,422)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f15215_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f15215_emscripten_compute_dom_pk_code853 (
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg69_q),
        .out_dest_data_out_58_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f15215_emscripten_compute_dom_pk_code853_out_dest_data_out_58_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code852(LOGICAL,911)@3
    assign i_unnamed_emscripten_compute_dom_pk_code852_q = i_and3264_emscripten_compute_dom_pk_code851_q ^ VCC_q;

    // c_i32_20729261341311_recast_x(CONSTANT,1439)
    assign c_i32_20729261341311_recast_x_q = $unsigned(32'b01111011100011100101011110110110);

    // i_pivot479_emscripten_compute_dom_pk_code370(COMPARE,656)@3
    assign i_pivot479_emscripten_compute_dom_pk_code370_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot479_emscripten_compute_dom_pk_code370_b = $unsigned({{2{c_i32_20729261341311_recast_x_q[31]}}, c_i32_20729261341311_recast_x_q});
    assign i_pivot479_emscripten_compute_dom_pk_code370_o = $unsigned($signed(i_pivot479_emscripten_compute_dom_pk_code370_a) - $signed(i_pivot479_emscripten_compute_dom_pk_code370_b));
    assign i_pivot479_emscripten_compute_dom_pk_code370_c[0] = i_pivot479_emscripten_compute_dom_pk_code370_o[33];

    // i_acl_3259_emscripten_compute_dom_pk_code850(LOGICAL,146)@3
    assign i_acl_3259_emscripten_compute_dom_pk_code850_q = i_pivot489_emscripten_compute_dom_pk_code69_c ^ i_pivot479_emscripten_compute_dom_pk_code370_c;

    // i_and3264_emscripten_compute_dom_pk_code851(LOGICAL,265)@3
    assign i_and3264_emscripten_compute_dom_pk_code851_q = i_acl_3259_emscripten_compute_dom_pk_code850_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg68(REG,1860)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg68_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg68_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f16216_emscripten_compute_dom_pk_code849(BLACKBOX,423)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f16216_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f16216_emscripten_compute_dom_pk_code849 (
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg68_q),
        .out_dest_data_out_59_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f16216_emscripten_compute_dom_pk_code849_out_dest_data_out_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code848(LOGICAL,910)@3
    assign i_unnamed_emscripten_compute_dom_pk_code848_q = i_and3253_emscripten_compute_dom_pk_code847_q ^ VCC_q;

    // c_i32_20729261351261_recast_x(CONSTANT,1440)
    assign c_i32_20729261351261_recast_x_q = $unsigned(32'b01111011100011100101011110110111);

    // i_pivot487_emscripten_compute_dom_pk_code157(COMPARE,660)@3
    assign i_pivot487_emscripten_compute_dom_pk_code157_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot487_emscripten_compute_dom_pk_code157_b = $unsigned({{2{c_i32_20729261351261_recast_x_q[31]}}, c_i32_20729261351261_recast_x_q});
    assign i_pivot487_emscripten_compute_dom_pk_code157_o = $unsigned($signed(i_pivot487_emscripten_compute_dom_pk_code157_a) - $signed(i_pivot487_emscripten_compute_dom_pk_code157_b));
    assign i_pivot487_emscripten_compute_dom_pk_code157_c[0] = i_pivot487_emscripten_compute_dom_pk_code157_o[33];

    // i_acl_3247_emscripten_compute_dom_pk_code846(LOGICAL,145)@3
    assign i_acl_3247_emscripten_compute_dom_pk_code846_q = i_pivot479_emscripten_compute_dom_pk_code370_c ^ i_pivot487_emscripten_compute_dom_pk_code157_c;

    // i_and3253_emscripten_compute_dom_pk_code847(LOGICAL,264)@3
    assign i_and3253_emscripten_compute_dom_pk_code847_q = i_acl_3247_emscripten_compute_dom_pk_code846_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg67(REG,1859)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg67_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg67_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f17217_emscripten_compute_dom_pk_code845(BLACKBOX,424)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f17217_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f17217_emscripten_compute_dom_pk_code845 (
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg67_q),
        .out_dest_data_out_60_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f17217_emscripten_compute_dom_pk_code845_out_dest_data_out_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code844(LOGICAL,909)@3
    assign i_unnamed_emscripten_compute_dom_pk_code844_q = i_and3242_emscripten_compute_dom_pk_code843_q ^ VCC_q;

    // c_i32_20729261361310_recast_x(CONSTANT,1441)
    assign c_i32_20729261361310_recast_x_q = $unsigned(32'b01111011100011100101011110111000);

    // i_pivot485_emscripten_compute_dom_pk_code368(COMPARE,659)@3
    assign i_pivot485_emscripten_compute_dom_pk_code368_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot485_emscripten_compute_dom_pk_code368_b = $unsigned({{2{c_i32_20729261361310_recast_x_q[31]}}, c_i32_20729261361310_recast_x_q});
    assign i_pivot485_emscripten_compute_dom_pk_code368_o = $unsigned($signed(i_pivot485_emscripten_compute_dom_pk_code368_a) - $signed(i_pivot485_emscripten_compute_dom_pk_code368_b));
    assign i_pivot485_emscripten_compute_dom_pk_code368_c[0] = i_pivot485_emscripten_compute_dom_pk_code368_o[33];

    // i_acl_3236_emscripten_compute_dom_pk_code842(LOGICAL,144)@3
    assign i_acl_3236_emscripten_compute_dom_pk_code842_q = i_pivot487_emscripten_compute_dom_pk_code157_c ^ i_pivot485_emscripten_compute_dom_pk_code368_c;

    // i_and3242_emscripten_compute_dom_pk_code843(LOGICAL,263)@3
    assign i_and3242_emscripten_compute_dom_pk_code843_q = i_acl_3236_emscripten_compute_dom_pk_code842_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg66(REG,1858)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg66_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg66_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f18218_emscripten_compute_dom_pk_code841(BLACKBOX,425)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f18218_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f18218_emscripten_compute_dom_pk_code841 (
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg66_q),
        .out_dest_data_out_61_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f18218_emscripten_compute_dom_pk_code841_out_dest_data_out_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code840(LOGICAL,908)@3
    assign i_unnamed_emscripten_compute_dom_pk_code840_q = i_and3231_emscripten_compute_dom_pk_code839_q ^ VCC_q;

    // c_i32_20729261371309_recast_x(CONSTANT,1442)
    assign c_i32_20729261371309_recast_x_q = $unsigned(32'b01111011100011100101011110111001);

    // i_pivot483_emscripten_compute_dom_pk_code366(COMPARE,658)@2 + 1
    assign i_pivot483_emscripten_compute_dom_pk_code366_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot483_emscripten_compute_dom_pk_code366_b = $unsigned({{2{c_i32_20729261371309_recast_x_q[31]}}, c_i32_20729261371309_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot483_emscripten_compute_dom_pk_code366_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot483_emscripten_compute_dom_pk_code366_o <= $unsigned($signed(i_pivot483_emscripten_compute_dom_pk_code366_a) - $signed(i_pivot483_emscripten_compute_dom_pk_code366_b));
        end
    end
    assign i_pivot483_emscripten_compute_dom_pk_code366_c[0] = i_pivot483_emscripten_compute_dom_pk_code366_o[33];

    // i_acl_3224_emscripten_compute_dom_pk_code838(LOGICAL,143)@3
    assign i_acl_3224_emscripten_compute_dom_pk_code838_q = i_pivot485_emscripten_compute_dom_pk_code368_c ^ i_pivot483_emscripten_compute_dom_pk_code366_c;

    // i_and3231_emscripten_compute_dom_pk_code839(LOGICAL,262)@3
    assign i_and3231_emscripten_compute_dom_pk_code839_q = i_acl_3224_emscripten_compute_dom_pk_code838_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg65(REG,1857)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg65_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg65_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f19219_emscripten_compute_dom_pk_code837(BLACKBOX,426)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f19219_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f19219_emscripten_compute_dom_pk_code837 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f19219_emscripten_compute_dom_pk_code837_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code836(LOGICAL,907)@3
    assign i_unnamed_emscripten_compute_dom_pk_code836_q = i_and3219_emscripten_compute_dom_pk_code835_q ^ VCC_q;

    // i_switchleaf481_emscripten_compute_dom_pk_code363(LOGICAL,775)@2 + 1
    assign i_switchleaf481_emscripten_compute_dom_pk_code363_qi = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_20729261371309_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_switchleaf481_emscripten_compute_dom_pk_code363_delay ( .xin(i_switchleaf481_emscripten_compute_dom_pk_code363_qi), .xout(i_switchleaf481_emscripten_compute_dom_pk_code363_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_and3219_emscripten_compute_dom_pk_code835(LOGICAL,261)@3
    assign i_and3219_emscripten_compute_dom_pk_code835_q = i_switchleaf481_emscripten_compute_dom_pk_code363_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg64(REG,1856)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg64_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg64_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f20221_emscripten_compute_dom_pk_code834(BLACKBOX,427)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f20221_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f20221_emscripten_compute_dom_pk_code834 (
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_dest_data_out_64_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f20221_emscripten_compute_dom_pk_code834_out_dest_data_out_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code833(LOGICAL,906)@3
    assign i_unnamed_emscripten_compute_dom_pk_code833_q = i_and3206_emscripten_compute_dom_pk_code832_q ^ VCC_q;

    // c_i32_20729261211308_recast_x(CONSTANT,1429)
    assign c_i32_20729261211308_recast_x_q = $unsigned(32'b01111011100011100101011110101001);

    // i_pivot459_emscripten_compute_dom_pk_code361(COMPARE,646)@3
    assign i_pivot459_emscripten_compute_dom_pk_code361_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot459_emscripten_compute_dom_pk_code361_b = $unsigned({{2{c_i32_20729261211308_recast_x_q[31]}}, c_i32_20729261211308_recast_x_q});
    assign i_pivot459_emscripten_compute_dom_pk_code361_o = $unsigned($signed(i_pivot459_emscripten_compute_dom_pk_code361_a) - $signed(i_pivot459_emscripten_compute_dom_pk_code361_b));
    assign i_pivot459_emscripten_compute_dom_pk_code361_c[0] = i_pivot459_emscripten_compute_dom_pk_code361_o[33];

    // c_i32_20729261201214_recast_x(CONSTANT,1428)
    assign c_i32_20729261201214_recast_x_q = $unsigned(32'b01111011100011100101011110101000);

    // i_pivot469_emscripten_compute_dom_pk_code63(COMPARE,651)@2 + 1
    assign i_pivot469_emscripten_compute_dom_pk_code63_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot469_emscripten_compute_dom_pk_code63_b = $unsigned({{2{c_i32_20729261201214_recast_x_q[31]}}, c_i32_20729261201214_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot469_emscripten_compute_dom_pk_code63_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot469_emscripten_compute_dom_pk_code63_o <= $unsigned($signed(i_pivot469_emscripten_compute_dom_pk_code63_a) - $signed(i_pivot469_emscripten_compute_dom_pk_code63_b));
        end
    end
    assign i_pivot469_emscripten_compute_dom_pk_code63_c[0] = i_pivot469_emscripten_compute_dom_pk_code63_o[33];

    // i_acl_3201_emscripten_compute_dom_pk_code831(LOGICAL,142)@3
    assign i_acl_3201_emscripten_compute_dom_pk_code831_q = i_pivot469_emscripten_compute_dom_pk_code63_c ^ i_pivot459_emscripten_compute_dom_pk_code361_c;

    // i_and3206_emscripten_compute_dom_pk_code832(LOGICAL,260)@3
    assign i_and3206_emscripten_compute_dom_pk_code832_q = i_acl_3201_emscripten_compute_dom_pk_code831_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg63(REG,1855)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg63_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg63_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f21222_emscripten_compute_dom_pk_code830(BLACKBOX,429)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f21222_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f21222_emscripten_compute_dom_pk_code830 (
        .in_intel_reserved_ffwd_65_0(in_intel_reserved_ffwd_65_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_dest_data_out_65_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f21222_emscripten_compute_dom_pk_code830_out_dest_data_out_65_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code829(LOGICAL,905)@3
    assign i_unnamed_emscripten_compute_dom_pk_code829_q = i_and3195_emscripten_compute_dom_pk_code828_q ^ VCC_q;

    // c_i32_20729261221260_recast_x(CONSTANT,1430)
    assign c_i32_20729261221260_recast_x_q = $unsigned(32'b01111011100011100101011110101010);

    // i_pivot467_emscripten_compute_dom_pk_code155(COMPARE,650)@3
    assign i_pivot467_emscripten_compute_dom_pk_code155_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot467_emscripten_compute_dom_pk_code155_b = $unsigned({{2{c_i32_20729261221260_recast_x_q[31]}}, c_i32_20729261221260_recast_x_q});
    assign i_pivot467_emscripten_compute_dom_pk_code155_o = $unsigned($signed(i_pivot467_emscripten_compute_dom_pk_code155_a) - $signed(i_pivot467_emscripten_compute_dom_pk_code155_b));
    assign i_pivot467_emscripten_compute_dom_pk_code155_c[0] = i_pivot467_emscripten_compute_dom_pk_code155_o[33];

    // i_acl_3189_emscripten_compute_dom_pk_code827(LOGICAL,141)@3
    assign i_acl_3189_emscripten_compute_dom_pk_code827_q = i_pivot459_emscripten_compute_dom_pk_code361_c ^ i_pivot467_emscripten_compute_dom_pk_code155_c;

    // i_and3195_emscripten_compute_dom_pk_code828(LOGICAL,259)@3
    assign i_and3195_emscripten_compute_dom_pk_code828_q = i_acl_3189_emscripten_compute_dom_pk_code827_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg62(REG,1854)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg62_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg62_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f22223_emscripten_compute_dom_pk_code826(BLACKBOX,431)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f22223_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f22223_emscripten_compute_dom_pk_code826 (
        .in_intel_reserved_ffwd_66_0(in_intel_reserved_ffwd_66_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_dest_data_out_66_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f22223_emscripten_compute_dom_pk_code826_out_dest_data_out_66_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code825(LOGICAL,904)@3
    assign i_unnamed_emscripten_compute_dom_pk_code825_q = i_and3184_emscripten_compute_dom_pk_code824_q ^ VCC_q;

    // c_i32_20729261231307_recast_x(CONSTANT,1431)
    assign c_i32_20729261231307_recast_x_q = $unsigned(32'b01111011100011100101011110101011);

    // i_pivot465_emscripten_compute_dom_pk_code359(COMPARE,649)@3
    assign i_pivot465_emscripten_compute_dom_pk_code359_a = $unsigned({{2{redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q[31]}}, redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q});
    assign i_pivot465_emscripten_compute_dom_pk_code359_b = $unsigned({{2{c_i32_20729261231307_recast_x_q[31]}}, c_i32_20729261231307_recast_x_q});
    assign i_pivot465_emscripten_compute_dom_pk_code359_o = $unsigned($signed(i_pivot465_emscripten_compute_dom_pk_code359_a) - $signed(i_pivot465_emscripten_compute_dom_pk_code359_b));
    assign i_pivot465_emscripten_compute_dom_pk_code359_c[0] = i_pivot465_emscripten_compute_dom_pk_code359_o[33];

    // i_acl_3178_emscripten_compute_dom_pk_code823(LOGICAL,140)@3
    assign i_acl_3178_emscripten_compute_dom_pk_code823_q = i_pivot467_emscripten_compute_dom_pk_code155_c ^ i_pivot465_emscripten_compute_dom_pk_code359_c;

    // i_and3184_emscripten_compute_dom_pk_code824(LOGICAL,258)@3
    assign i_and3184_emscripten_compute_dom_pk_code824_q = i_acl_3178_emscripten_compute_dom_pk_code823_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg61(REG,1853)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg61_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f23224_emscripten_compute_dom_pk_code822(BLACKBOX,432)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f23224_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f23224_emscripten_compute_dom_pk_code822 (
        .in_intel_reserved_ffwd_67_0(in_intel_reserved_ffwd_67_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_dest_data_out_67_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f23224_emscripten_compute_dom_pk_code822_out_dest_data_out_67_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code821(LOGICAL,903)@3
    assign i_unnamed_emscripten_compute_dom_pk_code821_q = i_and3173_emscripten_compute_dom_pk_code820_q ^ VCC_q;

    // c_i32_20729261241305_recast_x(CONSTANT,1432)
    assign c_i32_20729261241305_recast_x_q = $unsigned(32'b01111011100011100101011110101100);

    // i_pivot463_emscripten_compute_dom_pk_code357(COMPARE,648)@2
    assign i_pivot463_emscripten_compute_dom_pk_code357_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot463_emscripten_compute_dom_pk_code357_b = $unsigned({{2{c_i32_20729261241305_recast_x_q[31]}}, c_i32_20729261241305_recast_x_q});
    assign i_pivot463_emscripten_compute_dom_pk_code357_o = $unsigned($signed(i_pivot463_emscripten_compute_dom_pk_code357_a) - $signed(i_pivot463_emscripten_compute_dom_pk_code357_b));
    assign i_pivot463_emscripten_compute_dom_pk_code357_c[0] = i_pivot463_emscripten_compute_dom_pk_code357_o[33];

    // redist73_i_pivot463_emscripten_compute_dom_pk_code357_c_1(DELAY,2115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_pivot463_emscripten_compute_dom_pk_code357_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist73_i_pivot463_emscripten_compute_dom_pk_code357_c_1_q <= $unsigned(i_pivot463_emscripten_compute_dom_pk_code357_c);
        end
    end

    // i_acl_3166_emscripten_compute_dom_pk_code819(LOGICAL,139)@3
    assign i_acl_3166_emscripten_compute_dom_pk_code819_q = i_pivot465_emscripten_compute_dom_pk_code359_c ^ redist73_i_pivot463_emscripten_compute_dom_pk_code357_c_1_q;

    // i_and3173_emscripten_compute_dom_pk_code820(LOGICAL,257)@3
    assign i_and3173_emscripten_compute_dom_pk_code820_q = i_acl_3166_emscripten_compute_dom_pk_code819_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg60(REG,1852)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg60_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_kana_mode244_emscripten_compute_dom_pk_code818(BLACKBOX,452)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_kana_mode244_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_kana_mode244_emscripten_compute_dom_pk_code818 (
        .in_intel_reserved_ffwd_87_0(in_intel_reserved_ffwd_87_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_dest_data_out_87_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_kana_mode244_emscripten_compute_dom_pk_code818_out_dest_data_out_87_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code817(LOGICAL,902)@3
    assign i_unnamed_emscripten_compute_dom_pk_code817_q = i_and3161_emscripten_compute_dom_pk_code816_q ^ VCC_q;

    // c_i32_11751411071191_recast_x(CONSTANT,1367)
    assign c_i32_11751411071191_recast_x_q = $unsigned(32'b10111001111101001100010100001101);

    // i_switchleaf71_emscripten_compute_dom_pk_code355(LOGICAL,783)@2
    assign i_switchleaf71_emscripten_compute_dom_pk_code355_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_11751411071191_recast_x_q ? 1'b1 : 1'b0);

    // redist10_i_switchleaf71_emscripten_compute_dom_pk_code355_q_1(DELAY,2052)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_switchleaf71_emscripten_compute_dom_pk_code355_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_switchleaf71_emscripten_compute_dom_pk_code355_q_1_q <= $unsigned(i_switchleaf71_emscripten_compute_dom_pk_code355_q);
        end
    end

    // i_and3161_emscripten_compute_dom_pk_code816(LOGICAL,256)@3
    assign i_and3161_emscripten_compute_dom_pk_code816_q = redist10_i_switchleaf71_emscripten_compute_dom_pk_code355_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg59(REG,1851)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg59_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_2247_emscripten_compute_dom_pk_code815(BLACKBOX,455)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z2_dom_pk_lang_2247_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_2247_emscripten_compute_dom_pk_code815 (
        .in_intel_reserved_ffwd_90_0(in_intel_reserved_ffwd_90_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_dest_data_out_90_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_2247_emscripten_compute_dom_pk_code815_out_dest_data_out_90_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code814(LOGICAL,901)@3
    assign i_unnamed_emscripten_compute_dom_pk_code814_q = i_and3149_emscripten_compute_dom_pk_code813_q ^ VCC_q;

    // c_i32_18307284461306_recast_x(CONSTANT,1403)
    assign c_i32_18307284461306_recast_x_q = $unsigned(32'b10010010111000010100110100000010);

    // i_switchleaf19_emscripten_compute_dom_pk_code353(LOGICAL,720)@2
    assign i_switchleaf19_emscripten_compute_dom_pk_code353_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307284461306_recast_x_q ? 1'b1 : 1'b0);

    // redist54_i_switchleaf19_emscripten_compute_dom_pk_code353_q_1(DELAY,2096)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_switchleaf19_emscripten_compute_dom_pk_code353_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist54_i_switchleaf19_emscripten_compute_dom_pk_code353_q_1_q <= $unsigned(i_switchleaf19_emscripten_compute_dom_pk_code353_q);
        end
    end

    // i_and3149_emscripten_compute_dom_pk_code813(LOGICAL,255)@3
    assign i_and3149_emscripten_compute_dom_pk_code813_q = redist54_i_switchleaf19_emscripten_compute_dom_pk_code353_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg58(REG,1850)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg58_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_1246_emscripten_compute_dom_pk_code812(BLACKBOX,454)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z2_dom_pk_lang_1246_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_1246_emscripten_compute_dom_pk_code812 (
        .in_intel_reserved_ffwd_89_0(in_intel_reserved_ffwd_89_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_dest_data_out_89_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_1246_emscripten_compute_dom_pk_code812_out_dest_data_out_89_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code811(LOGICAL,900)@3
    assign i_unnamed_emscripten_compute_dom_pk_code811_q = i_and3136_emscripten_compute_dom_pk_code810_q ^ VCC_q;

    // i_pivot25_emscripten_compute_dom_pk_code351(COMPARE,584)@2
    assign i_pivot25_emscripten_compute_dom_pk_code351_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot25_emscripten_compute_dom_pk_code351_b = $unsigned({{2{c_i32_18307284461306_recast_x_q[31]}}, c_i32_18307284461306_recast_x_q});
    assign i_pivot25_emscripten_compute_dom_pk_code351_o = $unsigned($signed(i_pivot25_emscripten_compute_dom_pk_code351_a) - $signed(i_pivot25_emscripten_compute_dom_pk_code351_b));
    assign i_pivot25_emscripten_compute_dom_pk_code351_c[0] = i_pivot25_emscripten_compute_dom_pk_code351_o[33];

    // c_i32_18307284471258_recast_x(CONSTANT,1404)
    assign c_i32_18307284471258_recast_x_q = $unsigned(32'b10010010111000010100110100000001);

    // i_pivot27_emscripten_compute_dom_pk_code151(COMPARE,590)@2
    assign i_pivot27_emscripten_compute_dom_pk_code151_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot27_emscripten_compute_dom_pk_code151_b = $unsigned({{2{c_i32_18307284471258_recast_x_q[31]}}, c_i32_18307284471258_recast_x_q});
    assign i_pivot27_emscripten_compute_dom_pk_code151_o = $unsigned($signed(i_pivot27_emscripten_compute_dom_pk_code151_a) - $signed(i_pivot27_emscripten_compute_dom_pk_code151_b));
    assign i_pivot27_emscripten_compute_dom_pk_code151_c[0] = i_pivot27_emscripten_compute_dom_pk_code151_o[33];

    // i_acl_3130_emscripten_compute_dom_pk_code809(LOGICAL,138)@2 + 1
    assign i_acl_3130_emscripten_compute_dom_pk_code809_qi = i_pivot27_emscripten_compute_dom_pk_code151_c ^ i_pivot25_emscripten_compute_dom_pk_code351_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3130_emscripten_compute_dom_pk_code809_delay ( .xin(i_acl_3130_emscripten_compute_dom_pk_code809_qi), .xout(i_acl_3130_emscripten_compute_dom_pk_code809_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_and3136_emscripten_compute_dom_pk_code810(LOGICAL,254)@3
    assign i_and3136_emscripten_compute_dom_pk_code810_q = i_acl_3130_emscripten_compute_dom_pk_code809_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg57(REG,1849)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg57_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_ro240_emscripten_compute_dom_pk_code808(BLACKBOX,448)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_dom_pk_intl_ro240_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_ro240_emscripten_compute_dom_pk_code808 (
        .in_intel_reserved_ffwd_83_0(in_intel_reserved_ffwd_83_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_dest_data_out_83_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_ro240_emscripten_compute_dom_pk_code808_out_dest_data_out_83_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17303978151239_recast_x(CONSTANT,1379)
    assign c_i32_17303978151239_recast_x_q = $unsigned(32'b01100111001000111100011001110111);

    // i_switchleaf359_emscripten_compute_dom_pk_code349(LOGICAL,751)@2
    assign i_switchleaf359_emscripten_compute_dom_pk_code349_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17303978151239_recast_x_q ? 1'b1 : 1'b0);

    // i_and3125_emscripten_compute_dom_pk_code806(LOGICAL,253)@2 + 1
    assign i_and3125_emscripten_compute_dom_pk_code806_qi = i_switchleaf359_emscripten_compute_dom_pk_code349_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and3125_emscripten_compute_dom_pk_code806_delay ( .xin(i_and3125_emscripten_compute_dom_pk_code806_qi), .xout(i_and3125_emscripten_compute_dom_pk_code806_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code807(LOGICAL,899)@3
    assign i_unnamed_emscripten_compute_dom_pk_code807_q = i_and3125_emscripten_compute_dom_pk_code806_q ^ VCC_q;

    // valid_fanout_reg56(REG,1848)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg56_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f24225_emscripten_compute_dom_pk_code805(BLACKBOX,433)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_f24225_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f24225_emscripten_compute_dom_pk_code805 (
        .in_intel_reserved_ffwd_68_0(in_intel_reserved_ffwd_68_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_dest_data_out_68_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f24225_emscripten_compute_dom_pk_code805_out_dest_data_out_68_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_switchleaf461_emscripten_compute_dom_pk_code346(LOGICAL,773)@2
    assign i_switchleaf461_emscripten_compute_dom_pk_code346_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_20729261241305_recast_x_q ? 1'b1 : 1'b0);

    // i_and3112_emscripten_compute_dom_pk_code803(LOGICAL,252)@2 + 1
    assign i_and3112_emscripten_compute_dom_pk_code803_qi = i_switchleaf461_emscripten_compute_dom_pk_code346_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and3112_emscripten_compute_dom_pk_code803_delay ( .xin(i_and3112_emscripten_compute_dom_pk_code803_qi), .xout(i_and3112_emscripten_compute_dom_pk_code803_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code804(LOGICAL,898)@3
    assign i_unnamed_emscripten_compute_dom_pk_code804_q = i_and3112_emscripten_compute_dom_pk_code803_q ^ VCC_q;

    // valid_fanout_reg55(REG,1847)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg55_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_convert197_emscripten_compute_dom_pk_code802(BLACKBOX,405)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_dom_pk_convert197_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_convert197_emscripten_compute_dom_pk_code802 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_convert197_emscripten_compute_dom_pk_code802_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9208624201256_recast_x(CONSTANT,1506)
    assign c_i32_9208624201256_recast_x_q = $unsigned(32'b11001001000111001100000100101100);

    // i_switchleaf91_emscripten_compute_dom_pk_code344(LOGICAL,790)@2
    assign i_switchleaf91_emscripten_compute_dom_pk_code344_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9208624201256_recast_x_q ? 1'b1 : 1'b0);

    // redist4_i_switchleaf91_emscripten_compute_dom_pk_code344_q_1(DELAY,2046)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_switchleaf91_emscripten_compute_dom_pk_code344_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_switchleaf91_emscripten_compute_dom_pk_code344_q_1_q <= $unsigned(i_switchleaf91_emscripten_compute_dom_pk_code344_q);
        end
    end

    // i_and3099_emscripten_compute_dom_pk_code800(LOGICAL,251)@3
    assign i_and3099_emscripten_compute_dom_pk_code800_q = redist4_i_switchleaf91_emscripten_compute_dom_pk_code344_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code801(LOGICAL,897)@3
    assign i_unnamed_emscripten_compute_dom_pk_code801_q = i_and3099_emscripten_compute_dom_pk_code800_q ^ VCC_q;

    // valid_fanout_reg54(REG,1846)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg54_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_non_convert262_emscripten_compute_dom_pk_code799(BLACKBOX,470)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_pk_non_convert262_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_non_convert262_emscripten_compute_dom_pk_code799 (
        .in_intel_reserved_ffwd_105_0(in_intel_reserved_ffwd_105_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_dest_data_out_105_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_non_convert262_emscripten_compute_dom_pk_code799_out_dest_data_out_105_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7191104441255_recast_x(CONSTANT,1457)
    assign c_i32_7191104441255_recast_x_q = $unsigned(32'b00101010110111001100000100101100);

    // i_switchleaf197_emscripten_compute_dom_pk_code342(LOGICAL,719)@2
    assign i_switchleaf197_emscripten_compute_dom_pk_code342_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7191104441255_recast_x_q ? 1'b1 : 1'b0);

    // redist55_i_switchleaf197_emscripten_compute_dom_pk_code342_q_1(DELAY,2097)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_switchleaf197_emscripten_compute_dom_pk_code342_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist55_i_switchleaf197_emscripten_compute_dom_pk_code342_q_1_q <= $unsigned(i_switchleaf197_emscripten_compute_dom_pk_code342_q);
        end
    end

    // i_and3087_emscripten_compute_dom_pk_code797(LOGICAL,250)@3
    assign i_and3087_emscripten_compute_dom_pk_code797_q = redist55_i_switchleaf197_emscripten_compute_dom_pk_code342_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code798(LOGICAL,896)@3
    assign i_unnamed_emscripten_compute_dom_pk_code798_q = i_and3087_emscripten_compute_dom_pk_code797_q ^ VCC_q;

    // valid_fanout_reg53(REG,1845)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg53_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_yen241_emscripten_compute_dom_pk_code796(BLACKBOX,449)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_intl_yen241_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_yen241_emscripten_compute_dom_pk_code796 (
        .in_intel_reserved_ffwd_84_0(in_intel_reserved_ffwd_84_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_dest_data_out_84_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_yen241_emscripten_compute_dom_pk_code796_out_dest_data_out_84_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9192175221254_recast_x(CONSTANT,1493)
    assign c_i32_9192175221254_recast_x_q = $unsigned(32'b11001001001101011101101010001110);

    // i_switchleaf121_emscripten_compute_dom_pk_code340(LOGICAL,698)@2
    assign i_switchleaf121_emscripten_compute_dom_pk_code340_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9192175221254_recast_x_q ? 1'b1 : 1'b0);

    // redist68_i_switchleaf121_emscripten_compute_dom_pk_code340_q_1(DELAY,2110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_switchleaf121_emscripten_compute_dom_pk_code340_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist68_i_switchleaf121_emscripten_compute_dom_pk_code340_q_1_q <= $unsigned(i_switchleaf121_emscripten_compute_dom_pk_code340_q);
        end
    end

    // i_and3074_emscripten_compute_dom_pk_code794(LOGICAL,249)@3
    assign i_and3074_emscripten_compute_dom_pk_code794_q = redist68_i_switchleaf121_emscripten_compute_dom_pk_code340_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code795(LOGICAL,895)@3
    assign i_unnamed_emscripten_compute_dom_pk_code795_q = i_and3074_emscripten_compute_dom_pk_code794_q ^ VCC_q;

    // valid_fanout_reg52(REG,1844)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg52_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_comma274_emscripten_compute_dom_pk_code793(BLACKBOX,483)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_numpad_comma274_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_comma274_emscripten_compute_dom_pk_code793 (
        .in_intel_reserved_ffwd_117_0(in_intel_reserved_ffwd_117_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_dest_data_out_117_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_comma274_emscripten_compute_dom_pk_code793_out_dest_data_out_117_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_19390550411271_recast_x(CONSTANT,1422)
    assign c_i32_19390550411271_recast_x_q = $unsigned(32'b01110011100100111010000111000001);

    // i_switchleaf429_emscripten_compute_dom_pk_code338(LOGICAL,767)@2
    assign i_switchleaf429_emscripten_compute_dom_pk_code338_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_19390550411271_recast_x_q ? 1'b1 : 1'b0);

    // i_and3061_emscripten_compute_dom_pk_code791(LOGICAL,248)@2 + 1
    assign i_and3061_emscripten_compute_dom_pk_code791_qi = i_switchleaf429_emscripten_compute_dom_pk_code338_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and3061_emscripten_compute_dom_pk_code791_delay ( .xin(i_and3061_emscripten_compute_dom_pk_code791_qi), .xout(i_and3061_emscripten_compute_dom_pk_code791_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code792(LOGICAL,894)@3
    assign i_unnamed_emscripten_compute_dom_pk_code792_q = i_and3061_emscripten_compute_dom_pk_code791_q ^ VCC_q;

    // valid_fanout_reg51(REG,1843)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg51_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_paste288_emscripten_compute_dom_pk_code790(BLACKBOX,496)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_paste288_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_paste288_emscripten_compute_dom_pk_code790 (
        .in_intel_reserved_ffwd_131_0(in_intel_reserved_ffwd_131_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_dest_data_out_131_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_paste288_emscripten_compute_dom_pk_code790_out_dest_data_out_131_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18307782271304_recast_x(CONSTANT,1410)
    assign c_i32_18307782271304_recast_x_q = $unsigned(32'b10010010111000001000101010001101);

    // i_switchleaf_emscripten_compute_dom_pk_code336(LOGICAL,795)@2
    assign i_switchleaf_emscripten_compute_dom_pk_code336_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307782271304_recast_x_q ? 1'b1 : 1'b0);

    // redist2_i_switchleaf_emscripten_compute_dom_pk_code336_q_1(DELAY,2044)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_switchleaf_emscripten_compute_dom_pk_code336_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_switchleaf_emscripten_compute_dom_pk_code336_q_1_q <= $unsigned(i_switchleaf_emscripten_compute_dom_pk_code336_q);
        end
    end

    // i_and3048_emscripten_compute_dom_pk_code788(LOGICAL,247)@3
    assign i_and3048_emscripten_compute_dom_pk_code788_q = redist2_i_switchleaf_emscripten_compute_dom_pk_code336_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code789(LOGICAL,893)@3
    assign i_unnamed_emscripten_compute_dom_pk_code789_q = i_and3048_emscripten_compute_dom_pk_code788_q ^ VCC_q;

    // valid_fanout_reg50(REG,1842)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg50_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_previous257_emscripten_compute_dom_pk_code787(BLACKBOX,465)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_track_previous257_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_previous257_emscripten_compute_dom_pk_code787 (
        .in_intel_reserved_ffwd_100_0(in_intel_reserved_ffwd_100_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_dest_data_out_100_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_previous257_emscripten_compute_dom_pk_code787_out_dest_data_out_100_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_312272831253_recast_x(CONSTANT,1444)
    assign c_i32_312272831253_recast_x_q = $unsigned(32'b00000001110111000111110110010011);

    // i_switchleaf159_emscripten_compute_dom_pk_code334(LOGICAL,708)@2
    assign i_switchleaf159_emscripten_compute_dom_pk_code334_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_312272831253_recast_x_q ? 1'b1 : 1'b0);

    // redist61_i_switchleaf159_emscripten_compute_dom_pk_code334_q_1(DELAY,2103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_switchleaf159_emscripten_compute_dom_pk_code334_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist61_i_switchleaf159_emscripten_compute_dom_pk_code334_q_1_q <= $unsigned(i_switchleaf159_emscripten_compute_dom_pk_code334_q);
        end
    end

    // i_and3036_emscripten_compute_dom_pk_code785(LOGICAL,246)@3
    assign i_and3036_emscripten_compute_dom_pk_code785_q = redist61_i_switchleaf159_emscripten_compute_dom_pk_code334_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code786(LOGICAL,892)@3
    assign i_unnamed_emscripten_compute_dom_pk_code786_q = i_and3036_emscripten_compute_dom_pk_code785_q ^ VCC_q;

    // valid_fanout_reg49(REG,1841)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg49_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_cut199_emscripten_compute_dom_pk_code784(BLACKBOX,407)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_cut199_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_cut199_emscripten_compute_dom_pk_code784 (
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_dest_data_out_42_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_cut199_emscripten_compute_dom_pk_code784_out_dest_data_out_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_20729253321294_recast_x(CONSTANT,1426)
    assign c_i32_20729253321294_recast_x_q = $unsigned(32'b01111011100011100101010010010100);

    // i_switchleaf449_emscripten_compute_dom_pk_code332(LOGICAL,771)@2
    assign i_switchleaf449_emscripten_compute_dom_pk_code332_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_20729253321294_recast_x_q ? 1'b1 : 1'b0);

    // redist17_i_switchleaf449_emscripten_compute_dom_pk_code332_q_1(DELAY,2059)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_switchleaf449_emscripten_compute_dom_pk_code332_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_switchleaf449_emscripten_compute_dom_pk_code332_q_1_q <= $unsigned(i_switchleaf449_emscripten_compute_dom_pk_code332_q);
        end
    end

    // i_and3023_emscripten_compute_dom_pk_code782(LOGICAL,245)@3
    assign i_and3023_emscripten_compute_dom_pk_code782_q = redist17_i_switchleaf449_emscripten_compute_dom_pk_code332_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code783(LOGICAL,891)@3
    assign i_unnamed_emscripten_compute_dom_pk_code783_q = i_and3023_emscripten_compute_dom_pk_code782_q ^ VCC_q;

    // valid_fanout_reg48(REG,1840)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg48_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_copy198_emscripten_compute_dom_pk_code781(BLACKBOX,406)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zi32_dom_pk_copy198_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_copy198_emscripten_compute_dom_pk_code781 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_copy198_emscripten_compute_dom_pk_code781_out_dest_data_out_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7440490731193_recast_x(CONSTANT,1458)
    assign c_i32_7440490731193_recast_x_q = $unsigned(32'b00101100010110010100100110110001);

    // i_switchleaf209_emscripten_compute_dom_pk_code330(LOGICAL,721)@2 + 1
    assign i_switchleaf209_emscripten_compute_dom_pk_code330_qi = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7440490731193_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_switchleaf209_emscripten_compute_dom_pk_code330_delay ( .xin(i_switchleaf209_emscripten_compute_dom_pk_code330_qi), .xout(i_switchleaf209_emscripten_compute_dom_pk_code330_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_and3010_emscripten_compute_dom_pk_code779(LOGICAL,244)@3
    assign i_and3010_emscripten_compute_dom_pk_code779_q = i_switchleaf209_emscripten_compute_dom_pk_code330_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code780(LOGICAL,890)@3
    assign i_unnamed_emscripten_compute_dom_pk_code780_q = i_and3010_emscripten_compute_dom_pk_code779_q ^ VCC_q;

    // valid_fanout_reg47(REG,1839)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg47_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_next256_emscripten_compute_dom_pk_code778(BLACKBOX,464)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zedia_track_next256_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_next256_emscripten_compute_dom_pk_code778 (
        .in_intel_reserved_ffwd_99_0(in_intel_reserved_ffwd_99_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_dest_data_out_99_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_next256_emscripten_compute_dom_pk_code778_out_dest_data_out_99_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7184633561248_recast_x(CONSTANT,1456)
    assign c_i32_7184633561248_recast_x_q = $unsigned(32'b00101010110100101110000101111100);

    // i_switchleaf195_emscripten_compute_dom_pk_code328(LOGICAL,718)@2
    assign i_switchleaf195_emscripten_compute_dom_pk_code328_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7184633561248_recast_x_q ? 1'b1 : 1'b0);

    // i_and2998_emscripten_compute_dom_pk_code776(LOGICAL,243)@2 + 1
    assign i_and2998_emscripten_compute_dom_pk_code776_qi = i_switchleaf195_emscripten_compute_dom_pk_code328_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and2998_emscripten_compute_dom_pk_code776_delay ( .xin(i_and2998_emscripten_compute_dom_pk_code776_qi), .xout(i_and2998_emscripten_compute_dom_pk_code776_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code777(LOGICAL,889)@3
    assign i_unnamed_emscripten_compute_dom_pk_code777_q = i_and2998_emscripten_compute_dom_pk_code776_q ^ VCC_q;

    // valid_fanout_reg46(REG,1838)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg46_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_enter277_emscripten_compute_dom_pk_code775(BLACKBOX,486)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_numpad_enter277_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_enter277_emscripten_compute_dom_pk_code775 (
        .in_intel_reserved_ffwd_120_0(in_intel_reserved_ffwd_120_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_dest_data_out_120_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_enter277_emscripten_compute_dom_pk_code775_out_dest_data_out_120_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_19390642741195_recast_x(CONSTANT,1423)
    assign c_i32_19390642741195_recast_x_q = $unsigned(32'b01110011100100111100010111010010);

    // i_switchleaf441_emscripten_compute_dom_pk_code326(LOGICAL,768)@2
    assign i_switchleaf441_emscripten_compute_dom_pk_code326_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_19390642741195_recast_x_q ? 1'b1 : 1'b0);

    // redist19_i_switchleaf441_emscripten_compute_dom_pk_code326_q_1(DELAY,2061)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_switchleaf441_emscripten_compute_dom_pk_code326_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_switchleaf441_emscripten_compute_dom_pk_code326_q_1_q <= $unsigned(i_switchleaf441_emscripten_compute_dom_pk_code326_q);
        end
    end

    // i_and2985_emscripten_compute_dom_pk_code773(LOGICAL,242)@3
    assign i_and2985_emscripten_compute_dom_pk_code773_q = redist19_i_switchleaf441_emscripten_compute_dom_pk_code326_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code774(LOGICAL,888)@3
    assign i_unnamed_emscripten_compute_dom_pk_code774_q = i_and2985_emscripten_compute_dom_pk_code773_q ^ VCC_q;

    // valid_fanout_reg45(REG,1837)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg45_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_right196_emscripten_compute_dom_pk_code772(BLACKBOX,404)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zk_control_right196_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_right196_emscripten_compute_dom_pk_code772 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_right196_emscripten_compute_dom_pk_code772_out_dest_data_out_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2192344361247_recast_x(CONSTANT,1443)
    assign c_i32_2192344361247_recast_x_q = $unsigned(32'b11110010111011101011111101111100);

    // i_switchleaf157_emscripten_compute_dom_pk_code324(LOGICAL,707)@2
    assign i_switchleaf157_emscripten_compute_dom_pk_code324_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_2192344361247_recast_x_q ? 1'b1 : 1'b0);

    // redist62_i_switchleaf157_emscripten_compute_dom_pk_code324_q_1(DELAY,2104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_switchleaf157_emscripten_compute_dom_pk_code324_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist62_i_switchleaf157_emscripten_compute_dom_pk_code324_q_1_q <= $unsigned(i_switchleaf157_emscripten_compute_dom_pk_code324_q);
        end
    end

    // i_and2973_emscripten_compute_dom_pk_code770(LOGICAL,241)@3
    assign i_and2973_emscripten_compute_dom_pk_code770_q = redist62_i_switchleaf157_emscripten_compute_dom_pk_code324_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code771(LOGICAL,887)@3
    assign i_unnamed_emscripten_compute_dom_pk_code771_q = i_and2973_emscripten_compute_dom_pk_code770_q ^ VCC_q;

    // valid_fanout_reg44(REG,1836)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg44_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_mute176_emscripten_compute_dom_pk_code769(BLACKBOX,384)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdio_volume_mute176_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_mute176_emscripten_compute_dom_pk_code769 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_mute176_emscripten_compute_dom_pk_code769_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7091658371283_recast_x(CONSTANT,1454)
    assign c_i32_7091658371283_recast_x_q = $unsigned(32'b00101010010001010000001100001101);

    // i_switchleaf189_emscripten_compute_dom_pk_code322(LOGICAL,716)@2
    assign i_switchleaf189_emscripten_compute_dom_pk_code322_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7091658371283_recast_x_q ? 1'b1 : 1'b0);

    // i_and2960_emscripten_compute_dom_pk_code766(LOGICAL,240)@2
    assign i_and2960_emscripten_compute_dom_pk_code766_q = i_switchleaf189_emscripten_compute_dom_pk_code322_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;

    // i_unnamed_emscripten_compute_dom_pk_code767(LOGICAL,885)@2
    assign i_unnamed_emscripten_compute_dom_pk_code767_q = i_and2960_emscripten_compute_dom_pk_code766_q ^ VCC_q;

    // c_i32_3645759871286_recast_x(CONSTANT,1447)
    assign c_i32_3645759871286_recast_x_q = $unsigned(32'b11101010010001010000001100001101);

    // i_switchleaf151_emscripten_compute_dom_pk_code320(LOGICAL,705)@2
    assign i_switchleaf151_emscripten_compute_dom_pk_code320_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_3645759871286_recast_x_q ? 1'b1 : 1'b0);

    // i_and2948_emscripten_compute_dom_pk_code765(LOGICAL,239)@2
    assign i_and2948_emscripten_compute_dom_pk_code765_q = i_switchleaf151_emscripten_compute_dom_pk_code320_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;

    // i_unnamed_emscripten_compute_dom_pk_code768(LOGICAL,886)@2 + 1
    assign i_unnamed_emscripten_compute_dom_pk_code768_qi = i_and2948_emscripten_compute_dom_pk_code765_q ^ i_unnamed_emscripten_compute_dom_pk_code767_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_compute_dom_pk_code768_delay ( .xin(i_unnamed_emscripten_compute_dom_pk_code768_qi), .xout(i_unnamed_emscripten_compute_dom_pk_code768_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // valid_fanout_reg43(REG,1835)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg43_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_2249_emscripten_compute_dom_pk_code764(BLACKBOX,457)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_launch_app_2249_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_2249_emscripten_compute_dom_pk_code764 (
        .in_intel_reserved_ffwd_92_0(in_intel_reserved_ffwd_92_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_dest_data_out_92_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_2249_emscripten_compute_dom_pk_code764_out_dest_data_out_92_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9237161541205_recast_x(CONSTANT,1510)
    assign c_i32_9237161541205_recast_x_q = $unsigned(32'b00110111000011101100101000111010);

    // i_switchleaf291_emscripten_compute_dom_pk_code318(LOGICAL,731)@2
    assign i_switchleaf291_emscripten_compute_dom_pk_code318_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9237161541205_recast_x_q ? 1'b1 : 1'b0);

    // i_and2936_emscripten_compute_dom_pk_code762(LOGICAL,238)@2 + 1
    assign i_and2936_emscripten_compute_dom_pk_code762_qi = i_switchleaf291_emscripten_compute_dom_pk_code318_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and2936_emscripten_compute_dom_pk_code762_delay ( .xin(i_and2936_emscripten_compute_dom_pk_code762_qi), .xout(i_and2936_emscripten_compute_dom_pk_code762_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code763(LOGICAL,884)@3
    assign i_unnamed_emscripten_compute_dom_pk_code763_q = i_and2936_emscripten_compute_dom_pk_code762_q ^ VCC_q;

    // valid_fanout_reg42(REG,1834)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg42_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_play_pause253_emscripten_compute_dom_pk_code761(BLACKBOX,461)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zedia_play_pause253_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_play_pause253_emscripten_compute_dom_pk_code761 (
        .in_intel_reserved_ffwd_96_0(in_intel_reserved_ffwd_96_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_dest_data_out_96_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_play_pause253_emscripten_compute_dom_pk_code761_out_dest_data_out_96_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7568125971203_recast_x(CONSTANT,1487)
    assign c_i32_7568125971203_recast_x_q = $unsigned(32'b00101101000111000000101100110101);

    // i_switchleaf275_emscripten_compute_dom_pk_code316(LOGICAL,726)@2
    assign i_switchleaf275_emscripten_compute_dom_pk_code316_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7568125971203_recast_x_q ? 1'b1 : 1'b0);

    // redist50_i_switchleaf275_emscripten_compute_dom_pk_code316_q_1(DELAY,2092)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_switchleaf275_emscripten_compute_dom_pk_code316_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist50_i_switchleaf275_emscripten_compute_dom_pk_code316_q_1_q <= $unsigned(i_switchleaf275_emscripten_compute_dom_pk_code316_q);
        end
    end

    // i_and2924_emscripten_compute_dom_pk_code759(LOGICAL,237)@3
    assign i_and2924_emscripten_compute_dom_pk_code759_q = redist50_i_switchleaf275_emscripten_compute_dom_pk_code316_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code760(LOGICAL,883)@3
    assign i_unnamed_emscripten_compute_dom_pk_code760_q = i_and2924_emscripten_compute_dom_pk_code759_q ^ VCC_q;

    // valid_fanout_reg41(REG,1833)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg41_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_stop255_emscripten_compute_dom_pk_code758(BLACKBOX,463)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zm_pk_media_stop255_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_stop255_emscripten_compute_dom_pk_code758 (
        .in_intel_reserved_ffwd_98_0(in_intel_reserved_ffwd_98_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_dest_data_out_98_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_stop255_emscripten_compute_dom_pk_code758_out_dest_data_out_98_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9586277121194_recast_x(CONSTANT,1515)
    assign c_i32_9586277121194_recast_x_q = $unsigned(32'b00111001001000110111111110000000);

    // i_switchleaf313_emscripten_compute_dom_pk_code314(LOGICAL,736)@2
    assign i_switchleaf313_emscripten_compute_dom_pk_code314_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9586277121194_recast_x_q ? 1'b1 : 1'b0);

    // i_and2912_emscripten_compute_dom_pk_code756(LOGICAL,236)@2 + 1
    assign i_and2912_emscripten_compute_dom_pk_code756_qi = i_switchleaf313_emscripten_compute_dom_pk_code314_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and2912_emscripten_compute_dom_pk_code756_delay ( .xin(i_and2912_emscripten_compute_dom_pk_code756_qi), .xout(i_and2912_emscripten_compute_dom_pk_code756_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code757(LOGICAL,882)@3
    assign i_unnamed_emscripten_compute_dom_pk_code757_q = i_and2912_emscripten_compute_dom_pk_code756_q ^ VCC_q;

    // valid_fanout_reg40(REG,1832)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg40_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_eject203_emscripten_compute_dom_pk_code755(BLACKBOX,411)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_eject203_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_eject203_emscripten_compute_dom_pk_code755 (
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_dest_data_out_46_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_eject203_emscripten_compute_dom_pk_code755_out_dest_data_out_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18306965401223_recast_x(CONSTANT,1399)
    assign c_i32_18306965401223_recast_x_q = $unsigned(32'b10010010111000011100100110100100);

    // i_switchleaf37_emscripten_compute_dom_pk_code312(LOGICAL,755)@2
    assign i_switchleaf37_emscripten_compute_dom_pk_code312_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18306965401223_recast_x_q ? 1'b1 : 1'b0);

    // redist29_i_switchleaf37_emscripten_compute_dom_pk_code312_q_1(DELAY,2071)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_switchleaf37_emscripten_compute_dom_pk_code312_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist29_i_switchleaf37_emscripten_compute_dom_pk_code312_q_1_q <= $unsigned(i_switchleaf37_emscripten_compute_dom_pk_code312_q);
        end
    end

    // i_and2900_emscripten_compute_dom_pk_code753(LOGICAL,235)@3
    assign i_and2900_emscripten_compute_dom_pk_code753_q = redist29_i_switchleaf37_emscripten_compute_dom_pk_code312_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code754(LOGICAL,881)@3
    assign i_unnamed_emscripten_compute_dom_pk_code754_q = i_and2900_emscripten_compute_dom_pk_code753_q ^ VCC_q;

    // valid_fanout_reg39(REG,1831)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg39_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_down175_emscripten_compute_dom_pk_code752(BLACKBOX,383)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdio_volume_down175_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_down175_emscripten_compute_dom_pk_code752 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_down175_emscripten_compute_dom_pk_code752_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7091711021221_recast_x(CONSTANT,1455)
    assign c_i32_7091711021221_recast_x_q = $unsigned(32'b00101010010001010001011110011110);

    // i_switchleaf193_emscripten_compute_dom_pk_code310(LOGICAL,717)@2
    assign i_switchleaf193_emscripten_compute_dom_pk_code310_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7091711021221_recast_x_q ? 1'b1 : 1'b0);

    // i_and2888_emscripten_compute_dom_pk_code749(LOGICAL,234)@2
    assign i_and2888_emscripten_compute_dom_pk_code749_q = i_switchleaf193_emscripten_compute_dom_pk_code310_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;

    // i_unnamed_emscripten_compute_dom_pk_code750(LOGICAL,879)@2
    assign i_unnamed_emscripten_compute_dom_pk_code750_q = i_and2888_emscripten_compute_dom_pk_code749_q ^ VCC_q;

    // c_i32_3645707221222_recast_x(CONSTANT,1446)
    assign c_i32_3645707221222_recast_x_q = $unsigned(32'b11101010010001010001011110011110);

    // i_switchleaf155_emscripten_compute_dom_pk_code308(LOGICAL,706)@2
    assign i_switchleaf155_emscripten_compute_dom_pk_code308_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_3645707221222_recast_x_q ? 1'b1 : 1'b0);

    // i_and2876_emscripten_compute_dom_pk_code748(LOGICAL,233)@2
    assign i_and2876_emscripten_compute_dom_pk_code748_q = i_switchleaf155_emscripten_compute_dom_pk_code308_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;

    // i_unnamed_emscripten_compute_dom_pk_code751(LOGICAL,880)@2 + 1
    assign i_unnamed_emscripten_compute_dom_pk_code751_qi = i_and2876_emscripten_compute_dom_pk_code748_q ^ i_unnamed_emscripten_compute_dom_pk_code750_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_compute_dom_pk_code751_delay ( .xin(i_unnamed_emscripten_compute_dom_pk_code751_qi), .xout(i_unnamed_emscripten_compute_dom_pk_code751_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // valid_fanout_reg38(REG,1830)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg38_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_up177_emscripten_compute_dom_pk_code747(BLACKBOX,385)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zaudio_volume_up177_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_up177_emscripten_compute_dom_pk_code747 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_up177_emscripten_compute_dom_pk_code747_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3594501281209_recast_x(CONSTANT,1445)
    assign c_i32_3594501281209_recast_x_q = $unsigned(32'b00010101011011001100011000010000);

    // i_switchleaf175_emscripten_compute_dom_pk_code306(LOGICAL,712)@2
    assign i_switchleaf175_emscripten_compute_dom_pk_code306_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_3594501281209_recast_x_q ? 1'b1 : 1'b0);

    // i_and2864_emscripten_compute_dom_pk_code744(LOGICAL,232)@2
    assign i_and2864_emscripten_compute_dom_pk_code744_q = i_switchleaf175_emscripten_compute_dom_pk_code306_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;

    // i_unnamed_emscripten_compute_dom_pk_code745(LOGICAL,877)@2
    assign i_unnamed_emscripten_compute_dom_pk_code745_q = i_and2864_emscripten_compute_dom_pk_code744_q ^ VCC_q;

    // c_i32_11672765281259_recast_x(CONSTANT,1365)
    assign c_i32_11672765281259_recast_x_q = $unsigned(32'b10111010011011001100011000010000);

    // i_switchleaf73_emscripten_compute_dom_pk_code304(LOGICAL,784)@2
    assign i_switchleaf73_emscripten_compute_dom_pk_code304_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_11672765281259_recast_x_q ? 1'b1 : 1'b0);

    // i_and2852_emscripten_compute_dom_pk_code743(LOGICAL,231)@2
    assign i_and2852_emscripten_compute_dom_pk_code743_q = i_switchleaf73_emscripten_compute_dom_pk_code304_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;

    // i_unnamed_emscripten_compute_dom_pk_code746(LOGICAL,878)@2 + 1
    assign i_unnamed_emscripten_compute_dom_pk_code746_qi = i_and2852_emscripten_compute_dom_pk_code743_q ^ i_unnamed_emscripten_compute_dom_pk_code745_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_compute_dom_pk_code746_delay ( .xin(i_unnamed_emscripten_compute_dom_pk_code746_qi), .xout(i_unnamed_emscripten_compute_dom_pk_code746_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // valid_fanout_reg37(REG,1829)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg37_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_home187_emscripten_compute_dom_pk_code742(BLACKBOX,395)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_browser_home187_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_home187_emscripten_compute_dom_pk_code742 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_home187_emscripten_compute_dom_pk_code742_out_dest_data_out_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_12284393651236_recast_x(CONSTANT,1373)
    assign c_i32_12284393651236_recast_x_q = $unsigned(32'b01001001001110000111111101000101);

    // i_switchleaf339_emscripten_compute_dom_pk_code302(LOGICAL,745)@2
    assign i_switchleaf339_emscripten_compute_dom_pk_code302_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_12284393651236_recast_x_q ? 1'b1 : 1'b0);

    // i_and2840_emscripten_compute_dom_pk_code740(LOGICAL,230)@2 + 1
    assign i_and2840_emscripten_compute_dom_pk_code740_qi = i_switchleaf339_emscripten_compute_dom_pk_code302_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and2840_emscripten_compute_dom_pk_code740_delay ( .xin(i_and2840_emscripten_compute_dom_pk_code740_qi), .xout(i_and2840_emscripten_compute_dom_pk_code740_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code741(LOGICAL,876)@3
    assign i_unnamed_emscripten_compute_dom_pk_code741_q = i_and2840_emscripten_compute_dom_pk_code740_q ^ VCC_q;

    // valid_fanout_reg36(REG,1828)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg36_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_divide276_emscripten_compute_dom_pk_code739(BLACKBOX,485)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zk_numpad_divide276_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_divide276_emscripten_compute_dom_pk_code739 (
        .in_intel_reserved_ffwd_119_0(in_intel_reserved_ffwd_119_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_dest_data_out_119_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_divide276_emscripten_compute_dom_pk_code739_out_dest_data_out_119_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18238142851278_recast_x(CONSTANT,1397)
    assign c_i32_18238142851278_recast_x_q = $unsigned(32'b01101100101101010011001010001101);

    // i_switchleaf405_emscripten_compute_dom_pk_code300(LOGICAL,762)@2
    assign i_switchleaf405_emscripten_compute_dom_pk_code300_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18238142851278_recast_x_q ? 1'b1 : 1'b0);

    // redist23_i_switchleaf405_emscripten_compute_dom_pk_code300_q_1(DELAY,2065)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_switchleaf405_emscripten_compute_dom_pk_code300_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist23_i_switchleaf405_emscripten_compute_dom_pk_code300_q_1_q <= $unsigned(i_switchleaf405_emscripten_compute_dom_pk_code300_q);
        end
    end

    // i_and2827_emscripten_compute_dom_pk_code737(LOGICAL,229)@3
    assign i_and2827_emscripten_compute_dom_pk_code737_q = redist23_i_switchleaf405_emscripten_compute_dom_pk_code300_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code738(LOGICAL,875)@3
    assign i_unnamed_emscripten_compute_dom_pk_code738_q = i_and2827_emscripten_compute_dom_pk_code737_q ^ VCC_q;

    // valid_fanout_reg35(REG,1827)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg35_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_right170_emscripten_compute_dom_pk_code736(BLACKBOX,378)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_alt_right170_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_right170_emscripten_compute_dom_pk_code736 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_right170_emscripten_compute_dom_pk_code736_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11986044201234_recast_x(CONSTANT,1370)
    assign c_i32_11986044201234_recast_x_q = $unsigned(32'b10111000100011101011111101111100);

    // i_switchleaf55_emscripten_compute_dom_pk_code298(LOGICAL,779)@2
    assign i_switchleaf55_emscripten_compute_dom_pk_code298_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_11986044201234_recast_x_q ? 1'b1 : 1'b0);

    // redist13_i_switchleaf55_emscripten_compute_dom_pk_code298_q_1(DELAY,2055)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_switchleaf55_emscripten_compute_dom_pk_code298_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_switchleaf55_emscripten_compute_dom_pk_code298_q_1_q <= $unsigned(i_switchleaf55_emscripten_compute_dom_pk_code298_q);
        end
    end

    // i_and2814_emscripten_compute_dom_pk_code734(LOGICAL,228)@3
    assign i_and2814_emscripten_compute_dom_pk_code734_q = redist13_i_switchleaf55_emscripten_compute_dom_pk_code298_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code735(LOGICAL,874)@3
    assign i_unnamed_emscripten_compute_dom_pk_code735_q = i_and2814_emscripten_compute_dom_pk_code734_q ^ VCC_q;

    // valid_fanout_reg34(REG,1826)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg34_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_help235_emscripten_compute_dom_pk_code733(BLACKBOX,443)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zi32_dom_pk_help235_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_help235_emscripten_compute_dom_pk_code733 (
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_dest_data_out_78_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_help235_emscripten_compute_dom_pk_code733_out_dest_data_out_78_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7440542321279_recast_x(CONSTANT,1485)
    assign c_i32_7440542321279_recast_x_q = $unsigned(32'b00101100010110010101110111011000);

    // i_switchleaf263_emscripten_compute_dom_pk_code296(LOGICAL,724)@2
    assign i_switchleaf263_emscripten_compute_dom_pk_code296_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7440542321279_recast_x_q ? 1'b1 : 1'b0);

    // redist52_i_switchleaf263_emscripten_compute_dom_pk_code296_q_1(DELAY,2094)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_switchleaf263_emscripten_compute_dom_pk_code296_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist52_i_switchleaf263_emscripten_compute_dom_pk_code296_q_1_q <= $unsigned(i_switchleaf263_emscripten_compute_dom_pk_code296_q);
        end
    end

    // i_and2802_emscripten_compute_dom_pk_code731(LOGICAL,227)@3
    assign i_and2802_emscripten_compute_dom_pk_code731_q = redist52_i_switchleaf263_emscripten_compute_dom_pk_code296_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code732(LOGICAL,873)@3
    assign i_unnamed_emscripten_compute_dom_pk_code732_q = i_and2802_emscripten_compute_dom_pk_code731_q ^ VCC_q;

    // valid_fanout_reg33(REG,1825)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg33_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_num_lock281_emscripten_compute_dom_pk_code730(BLACKBOX,471)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_num_lock281_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_num_lock281_emscripten_compute_dom_pk_code730 (
        .in_intel_reserved_ffwd_124_0(in_intel_reserved_ffwd_124_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_dest_data_out_124_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_num_lock281_emscripten_compute_dom_pk_code730_out_dest_data_out_124_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9202874291216_recast_x(CONSTANT,1505)
    assign c_i32_9202874291216_recast_x_q = $unsigned(32'b11001001001001011000011100111011);

    // i_switchleaf95_emscripten_compute_dom_pk_code293(LOGICAL,791)@2
    assign i_switchleaf95_emscripten_compute_dom_pk_code293_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9202874291216_recast_x_q ? 1'b1 : 1'b0);

    // i_and2789_emscripten_compute_dom_pk_code728(LOGICAL,226)@2 + 1
    assign i_and2789_emscripten_compute_dom_pk_code728_qi = i_switchleaf95_emscripten_compute_dom_pk_code293_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and2789_emscripten_compute_dom_pk_code728_delay ( .xin(i_and2789_emscripten_compute_dom_pk_code728_qi), .xout(i_and2789_emscripten_compute_dom_pk_code728_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code729(LOGICAL,872)@3
    assign i_unnamed_emscripten_compute_dom_pk_code729_q = i_and2789_emscripten_compute_dom_pk_code728_q ^ VCC_q;

    // valid_fanout_reg32(REG,1824)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg32_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_home236_emscripten_compute_dom_pk_code727(BLACKBOX,444)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zi32_dom_pk_home236_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_home236_emscripten_compute_dom_pk_code727 (
        .in_intel_reserved_ffwd_79_0(in_intel_reserved_ffwd_79_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_dest_data_out_79_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_home236_emscripten_compute_dom_pk_code727_out_dest_data_out_79_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7440545971243_recast_x(CONSTANT,1486)
    assign c_i32_7440545971243_recast_x_q = $unsigned(32'b00101100010110010101111101000101);

    // i_switchleaf265_emscripten_compute_dom_pk_code291(LOGICAL,725)@2
    assign i_switchleaf265_emscripten_compute_dom_pk_code291_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_7440545971243_recast_x_q ? 1'b1 : 1'b0);

    // redist51_i_switchleaf265_emscripten_compute_dom_pk_code291_q_1(DELAY,2093)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_switchleaf265_emscripten_compute_dom_pk_code291_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist51_i_switchleaf265_emscripten_compute_dom_pk_code291_q_1_q <= $unsigned(i_switchleaf265_emscripten_compute_dom_pk_code291_q);
        end
    end

    // i_and2777_emscripten_compute_dom_pk_code725(LOGICAL,225)@3
    assign i_and2777_emscripten_compute_dom_pk_code725_q = redist51_i_switchleaf265_emscripten_compute_dom_pk_code291_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code726(LOGICAL,871)@3
    assign i_unnamed_emscripten_compute_dom_pk_code726_q = i_and2777_emscripten_compute_dom_pk_code725_q ^ VCC_q;

    // valid_fanout_reg31(REG,1823)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg31_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_up174_emscripten_compute_dom_pk_code724(BLACKBOX,382)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_arrow_up174_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_up174_emscripten_compute_dom_pk_code724 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_up174_emscripten_compute_dom_pk_code724_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9209306721198_recast_x(CONSTANT,1507)
    assign c_i32_9209306721198_recast_x_q = $unsigned(32'b11001001000110111011011010010000);

    // i_switchleaf89_emscripten_compute_dom_pk_code289(LOGICAL,789)@2
    assign i_switchleaf89_emscripten_compute_dom_pk_code289_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9209306721198_recast_x_q ? 1'b1 : 1'b0);

    // redist5_i_switchleaf89_emscripten_compute_dom_pk_code289_q_1(DELAY,2047)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_switchleaf89_emscripten_compute_dom_pk_code289_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_i_switchleaf89_emscripten_compute_dom_pk_code289_q_1_q <= $unsigned(i_switchleaf89_emscripten_compute_dom_pk_code289_q);
        end
    end

    // i_and2764_emscripten_compute_dom_pk_code722(LOGICAL,224)@3
    assign i_and2764_emscripten_compute_dom_pk_code722_q = redist5_i_switchleaf89_emscripten_compute_dom_pk_code289_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code723(LOGICAL,870)@3
    assign i_unnamed_emscripten_compute_dom_pk_code723_q = i_and2764_emscripten_compute_dom_pk_code722_q ^ VCC_q;

    // valid_fanout_reg30(REG,1822)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg30_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_up287_emscripten_compute_dom_pk_code721(BLACKBOX,495)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_dom_pk_page_up287_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_up287_emscripten_compute_dom_pk_code721 (
        .in_intel_reserved_ffwd_130_0(in_intel_reserved_ffwd_130_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_dest_data_out_130_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_up287_emscripten_compute_dom_pk_code721_out_dest_data_out_130_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17311708321232_recast_x(CONSTANT,1393)
    assign c_i32_17311708321232_recast_x_q = $unsigned(32'b01100111001011111001001000010000);

    // i_switchleaf401_emscripten_compute_dom_pk_code287(LOGICAL,760)@2
    assign i_switchleaf401_emscripten_compute_dom_pk_code287_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17311708321232_recast_x_q ? 1'b1 : 1'b0);

    // redist25_i_switchleaf401_emscripten_compute_dom_pk_code287_q_1(DELAY,2067)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_switchleaf401_emscripten_compute_dom_pk_code287_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist25_i_switchleaf401_emscripten_compute_dom_pk_code287_q_1_q <= $unsigned(i_switchleaf401_emscripten_compute_dom_pk_code287_q);
        end
    end

    // i_and2752_emscripten_compute_dom_pk_code719(LOGICAL,223)@3
    assign i_and2752_emscripten_compute_dom_pk_code719_q = redist25_i_switchleaf401_emscripten_compute_dom_pk_code287_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code720(LOGICAL,869)@3
    assign i_unnamed_emscripten_compute_dom_pk_code720_q = i_and2752_emscripten_compute_dom_pk_code719_q ^ VCC_q;

    // valid_fanout_reg29(REG,1821)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg29_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_left172_emscripten_compute_dom_pk_code718(BLACKBOX,380)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zm_pk_arrow_left172_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_left172_emscripten_compute_dom_pk_code718 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_left172_emscripten_compute_dom_pk_code718_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9327835001211_recast_x(CONSTANT,1512)
    assign c_i32_9327835001211_recast_x_q = $unsigned(32'b00110111100110010010010110001100);

    // i_switchleaf297_emscripten_compute_dom_pk_code285(LOGICAL,733)@2
    assign i_switchleaf297_emscripten_compute_dom_pk_code285_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9327835001211_recast_x_q ? 1'b1 : 1'b0);

    // redist47_i_switchleaf297_emscripten_compute_dom_pk_code285_q_1(DELAY,2089)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_switchleaf297_emscripten_compute_dom_pk_code285_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist47_i_switchleaf297_emscripten_compute_dom_pk_code285_q_1_q <= $unsigned(i_switchleaf297_emscripten_compute_dom_pk_code285_q);
        end
    end

    // i_and2740_emscripten_compute_dom_pk_code716(LOGICAL,222)@3
    assign i_and2740_emscripten_compute_dom_pk_code716_q = redist47_i_switchleaf297_emscripten_compute_dom_pk_code285_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code717(LOGICAL,868)@3
    assign i_unnamed_emscripten_compute_dom_pk_code717_q = i_and2740_emscripten_compute_dom_pk_code716_q ^ VCC_q;

    // valid_fanout_reg28(REG,1820)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg28_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_right173_emscripten_compute_dom_pk_code715(BLACKBOX,381)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_pk_arrow_right173_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_right173_emscripten_compute_dom_pk_code715 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_right173_emscripten_compute_dom_pk_code715_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_12899613401245_recast_x(CONSTANT,1374)
    assign c_i32_12899613401245_recast_x_q = $unsigned(32'b01001100111000110011111101111100);

    // i_switchleaf341_emscripten_compute_dom_pk_code283(LOGICAL,747)@2
    assign i_switchleaf341_emscripten_compute_dom_pk_code283_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_12899613401245_recast_x_q ? 1'b1 : 1'b0);

    // redist36_i_switchleaf341_emscripten_compute_dom_pk_code283_q_1(DELAY,2078)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_switchleaf341_emscripten_compute_dom_pk_code283_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist36_i_switchleaf341_emscripten_compute_dom_pk_code283_q_1_q <= $unsigned(i_switchleaf341_emscripten_compute_dom_pk_code283_q);
        end
    end

    // i_and2728_emscripten_compute_dom_pk_code713(LOGICAL,221)@3
    assign i_and2728_emscripten_compute_dom_pk_code713_q = redist36_i_switchleaf341_emscripten_compute_dom_pk_code283_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code714(LOGICAL,867)@3
    assign i_unnamed_emscripten_compute_dom_pk_code714_q = i_and2728_emscripten_compute_dom_pk_code713_q ^ VCC_q;

    // valid_fanout_reg27(REG,1819)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg27_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_end204_emscripten_compute_dom_pk_code712(BLACKBOX,412)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z4i32_dom_pk_end204_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_end204_emscripten_compute_dom_pk_code712 (
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_dest_data_out_47_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_end204_emscripten_compute_dom_pk_code712_out_dest_data_out_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_20729256601252_recast_x(CONSTANT,1427)
    assign c_i32_20729256601252_recast_x_q = $unsigned(32'b01111011100011100101010111011100);

    // i_switchleaf451_emscripten_compute_dom_pk_code281(LOGICAL,772)@2
    assign i_switchleaf451_emscripten_compute_dom_pk_code281_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_20729256601252_recast_x_q ? 1'b1 : 1'b0);

    // redist16_i_switchleaf451_emscripten_compute_dom_pk_code281_q_1(DELAY,2058)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_switchleaf451_emscripten_compute_dom_pk_code281_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_switchleaf451_emscripten_compute_dom_pk_code281_q_1_q <= $unsigned(i_switchleaf451_emscripten_compute_dom_pk_code281_q);
        end
    end

    // i_and2715_emscripten_compute_dom_pk_code710(LOGICAL,220)@3
    assign i_and2715_emscripten_compute_dom_pk_code710_q = redist16_i_switchleaf451_emscripten_compute_dom_pk_code281_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code711(LOGICAL,866)@3
    assign i_unnamed_emscripten_compute_dom_pk_code711_q = i_and2715_emscripten_compute_dom_pk_code710_q ^ VCC_q;

    // valid_fanout_reg26(REG,1818)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg26_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_down171_emscripten_compute_dom_pk_code709(BLACKBOX,379)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zm_pk_arrow_down171_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_down171_emscripten_compute_dom_pk_code709 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_down171_emscripten_compute_dom_pk_code709_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9327881261241_recast_x(CONSTANT,1513)
    assign c_i32_9327881261241_recast_x_q = $unsigned(32'b00110111100110010011011110011110);

    // i_switchleaf299_emscripten_compute_dom_pk_code279(LOGICAL,734)@2
    assign i_switchleaf299_emscripten_compute_dom_pk_code279_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9327881261241_recast_x_q ? 1'b1 : 1'b0);

    // i_and2702_emscripten_compute_dom_pk_code707(LOGICAL,219)@2 + 1
    assign i_and2702_emscripten_compute_dom_pk_code707_qi = i_switchleaf299_emscripten_compute_dom_pk_code279_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and2702_emscripten_compute_dom_pk_code707_delay ( .xin(i_and2702_emscripten_compute_dom_pk_code707_qi), .xout(i_and2702_emscripten_compute_dom_pk_code707_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code708(LOGICAL,865)@3
    assign i_unnamed_emscripten_compute_dom_pk_code708_q = i_and2702_emscripten_compute_dom_pk_code707_q ^ VCC_q;

    // valid_fanout_reg25(REG,1817)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg25_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_down286_emscripten_compute_dom_pk_code706(BLACKBOX,494)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_page_down286_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_down286_emscripten_compute_dom_pk_code706 (
        .in_intel_reserved_ffwd_129_0(in_intel_reserved_ffwd_129_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dest_data_out_129_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_down286_emscripten_compute_dom_pk_code706_out_dest_data_out_129_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11649618901213_recast_x(CONSTANT,1364)
    assign c_i32_11649618901213_recast_x_q = $unsigned(32'b10111010100100000001011110011110);

    // i_switchleaf77_emscripten_compute_dom_pk_code277(LOGICAL,785)@2
    assign i_switchleaf77_emscripten_compute_dom_pk_code277_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_11649618901213_recast_x_q ? 1'b1 : 1'b0);

    // redist9_i_switchleaf77_emscripten_compute_dom_pk_code277_q_1(DELAY,2051)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_switchleaf77_emscripten_compute_dom_pk_code277_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_switchleaf77_emscripten_compute_dom_pk_code277_q_1_q <= $unsigned(i_switchleaf77_emscripten_compute_dom_pk_code277_q);
        end
    end

    // i_and2689_emscripten_compute_dom_pk_code704(LOGICAL,218)@3
    assign i_and2689_emscripten_compute_dom_pk_code704_q = redist9_i_switchleaf77_emscripten_compute_dom_pk_code277_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code705(LOGICAL,864)@3
    assign i_unnamed_emscripten_compute_dom_pk_code705_q = i_and2689_emscripten_compute_dom_pk_code704_q ^ VCC_q;

    // valid_fanout_reg24(REG,1816)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg24_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_insert238_emscripten_compute_dom_pk_code703(BLACKBOX,446)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z2_dom_pk_insert238_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_insert238_emscripten_compute_dom_pk_code703 (
        .in_intel_reserved_ffwd_81_0(in_intel_reserved_ffwd_81_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_81_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_insert238_emscripten_compute_dom_pk_code703_out_dest_data_out_81_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17303990201257_recast_x(CONSTANT,1380)
    assign c_i32_17303990201257_recast_x_q = $unsigned(32'b01100111001000111100101100101100);

    // i_switchleaf361_emscripten_compute_dom_pk_code275(LOGICAL,752)@2
    assign i_switchleaf361_emscripten_compute_dom_pk_code275_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17303990201257_recast_x_q ? 1'b1 : 1'b0);

    // redist32_i_switchleaf361_emscripten_compute_dom_pk_code275_q_1(DELAY,2074)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_switchleaf361_emscripten_compute_dom_pk_code275_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist32_i_switchleaf361_emscripten_compute_dom_pk_code275_q_1_q <= $unsigned(i_switchleaf361_emscripten_compute_dom_pk_code275_q);
        end
    end

    // i_and2677_emscripten_compute_dom_pk_code701(LOGICAL,217)@3
    assign i_and2677_emscripten_compute_dom_pk_code701_q = redist32_i_switchleaf361_emscripten_compute_dom_pk_code275_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code702(LOGICAL,863)@3
    assign i_unnamed_emscripten_compute_dom_pk_code702_q = i_and2677_emscripten_compute_dom_pk_code701_q ^ VCC_q;

    // valid_fanout_reg23(REG,1815)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg23_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_delete201_emscripten_compute_dom_pk_code700(BLACKBOX,409)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z2_dom_pk_delete201_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_delete201_emscripten_compute_dom_pk_code700 (
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dest_data_out_44_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_delete201_emscripten_compute_dom_pk_code700_out_dest_data_out_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17305285251299_recast_x(CONSTANT,1392)
    assign c_i32_17305285251299_recast_x_q = $unsigned(32'b01100111001001011100010100001101);

    // i_switchleaf397_emscripten_compute_dom_pk_code273(LOGICAL,757)@2
    assign i_switchleaf397_emscripten_compute_dom_pk_code273_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17305285251299_recast_x_q ? 1'b1 : 1'b0);

    // redist27_i_switchleaf397_emscripten_compute_dom_pk_code273_q_1(DELAY,2069)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_switchleaf397_emscripten_compute_dom_pk_code273_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist27_i_switchleaf397_emscripten_compute_dom_pk_code273_q_1_q <= $unsigned(i_switchleaf397_emscripten_compute_dom_pk_code273_q);
        end
    end

    // i_and2664_emscripten_compute_dom_pk_code698(LOGICAL,216)@3
    assign i_and2664_emscripten_compute_dom_pk_code698_q = redist27_i_switchleaf397_emscripten_compute_dom_pk_code273_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code699(LOGICAL,862)@3
    assign i_unnamed_emscripten_compute_dom_pk_code699_q = i_and2664_emscripten_compute_dom_pk_code698_q ^ VCC_q;

    // valid_fanout_reg22(REG,1814)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg22_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_left258_emscripten_compute_dom_pk_code697(BLACKBOX,466)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zom_pk_meta_left258_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_left258_emscripten_compute_dom_pk_code697 (
        .in_intel_reserved_ffwd_101_0(in_intel_reserved_ffwd_101_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_101_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_left258_emscripten_compute_dom_pk_code697_out_dest_data_out_101_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11884447881274_recast_x(CONSTANT,1368)
    assign c_i32_11884447881274_recast_x_q = $unsigned(32'b10111001001010011100010110001100);

    // i_switchleaf59_emscripten_compute_dom_pk_code271(LOGICAL,781)@2
    assign i_switchleaf59_emscripten_compute_dom_pk_code271_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_11884447881274_recast_x_q ? 1'b1 : 1'b0);

    // redist12_i_switchleaf59_emscripten_compute_dom_pk_code271_q_1(DELAY,2054)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_switchleaf59_emscripten_compute_dom_pk_code271_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_switchleaf59_emscripten_compute_dom_pk_code271_q_1_q <= $unsigned(i_switchleaf59_emscripten_compute_dom_pk_code271_q);
        end
    end

    // i_and2652_emscripten_compute_dom_pk_code695(LOGICAL,215)@3
    assign i_and2652_emscripten_compute_dom_pk_code695_q = redist12_i_switchleaf59_emscripten_compute_dom_pk_code271_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code696(LOGICAL,861)@3
    assign i_unnamed_emscripten_compute_dom_pk_code696_q = i_and2652_emscripten_compute_dom_pk_code695_q ^ VCC_q;

    // valid_fanout_reg21(REG,1813)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg21_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_left283_emscripten_compute_dom_pk_code694(BLACKBOX,491)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_dom_pk_os_left283_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_left283_emscripten_compute_dom_pk_code694 (
        .in_intel_reserved_ffwd_126_0(in_intel_reserved_ffwd_126_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_126_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_left283_emscripten_compute_dom_pk_code694_out_dest_data_out_126_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17303730041220_recast_x(CONSTANT,1378)
    assign c_i32_17303730041220_recast_x_q = $unsigned(32'b01100111001000110110010110001100);

    // i_switchleaf357_emscripten_compute_dom_pk_code269(LOGICAL,750)@2
    assign i_switchleaf357_emscripten_compute_dom_pk_code269_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17303730041220_recast_x_q ? 1'b1 : 1'b0);

    // redist33_i_switchleaf357_emscripten_compute_dom_pk_code269_q_1(DELAY,2075)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_switchleaf357_emscripten_compute_dom_pk_code269_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist33_i_switchleaf357_emscripten_compute_dom_pk_code269_q_1_q <= $unsigned(i_switchleaf357_emscripten_compute_dom_pk_code269_q);
        end
    end

    // i_and2639_emscripten_compute_dom_pk_code692(LOGICAL,214)@3
    assign i_and2639_emscripten_compute_dom_pk_code692_q = redist33_i_switchleaf357_emscripten_compute_dom_pk_code269_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code693(LOGICAL,860)@3
    assign i_unnamed_emscripten_compute_dom_pk_code693_q = i_and2639_emscripten_compute_dom_pk_code692_q ^ VCC_q;

    // valid_fanout_reg20(REG,1812)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg20_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_right259_emscripten_compute_dom_pk_code691(BLACKBOX,467)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zm_pk_meta_right259_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_right259_emscripten_compute_dom_pk_code691 (
        .in_intel_reserved_ffwd_102_0(in_intel_reserved_ffwd_102_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_102_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_right259_emscripten_compute_dom_pk_code691_out_dest_data_out_102_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9628711641250_recast_x(CONSTANT,1516)
    assign c_i32_9628711641250_recast_x_q = $unsigned(32'b00111001011001000011111101111100);

    // i_switchleaf315_emscripten_compute_dom_pk_code267(LOGICAL,737)@2
    assign i_switchleaf315_emscripten_compute_dom_pk_code267_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9628711641250_recast_x_q ? 1'b1 : 1'b0);

    // redist45_i_switchleaf315_emscripten_compute_dom_pk_code267_q_1(DELAY,2087)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_switchleaf315_emscripten_compute_dom_pk_code267_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist45_i_switchleaf315_emscripten_compute_dom_pk_code267_q_1_q <= $unsigned(i_switchleaf315_emscripten_compute_dom_pk_code267_q);
        end
    end

    // i_and2627_emscripten_compute_dom_pk_code689(LOGICAL,213)@3
    assign i_and2627_emscripten_compute_dom_pk_code689_q = redist45_i_switchleaf315_emscripten_compute_dom_pk_code267_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code690(LOGICAL,859)@3
    assign i_unnamed_emscripten_compute_dom_pk_code690_q = i_and2627_emscripten_compute_dom_pk_code689_q ^ VCC_q;

    // valid_fanout_reg19(REG,1811)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg19_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_right284_emscripten_compute_dom_pk_code688(BLACKBOX,492)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zdom_pk_os_right284_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_right284_emscripten_compute_dom_pk_code688 (
        .in_intel_reserved_ffwd_127_0(in_intel_reserved_ffwd_127_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_127_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_right284_emscripten_compute_dom_pk_code688_out_dest_data_out_127_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9195193641267_recast_x(CONSTANT,1494)
    assign c_i32_9195193641267_recast_x_q = $unsigned(32'b11001001001100010011111101111100);

    // i_switchleaf119_emscripten_compute_dom_pk_code265(LOGICAL,697)@2
    assign i_switchleaf119_emscripten_compute_dom_pk_code265_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9195193641267_recast_x_q ? 1'b1 : 1'b0);

    // redist69_i_switchleaf119_emscripten_compute_dom_pk_code265_q_1(DELAY,2111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_switchleaf119_emscripten_compute_dom_pk_code265_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist69_i_switchleaf119_emscripten_compute_dom_pk_code265_q_1_q <= $unsigned(i_switchleaf119_emscripten_compute_dom_pk_code265_q);
        end
    end

    // i_and2615_emscripten_compute_dom_pk_code686(LOGICAL,212)@3
    assign i_and2615_emscripten_compute_dom_pk_code686_q = redist69_i_switchleaf119_emscripten_compute_dom_pk_code265_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code687(LOGICAL,858)@3
    assign i_unnamed_emscripten_compute_dom_pk_code687_q = i_and2615_emscripten_compute_dom_pk_code686_q ^ VCC_q;

    // valid_fanout_reg18(REG,1810)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg18_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_context_menu194_emscripten_compute_dom_pk_code685(BLACKBOX,402)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_context_menu194_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_context_menu194_emscripten_compute_dom_pk_code685 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_context_menu194_emscripten_compute_dom_pk_code685_out_dest_data_out_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5359145471288_recast_x(CONSTANT,1450)
    assign c_i32_5359145471288_recast_x_q = $unsigned(32'b11100000000011101001011111001101);

    // i_switchleaf143_emscripten_compute_dom_pk_code263(LOGICAL,703)@2
    assign i_switchleaf143_emscripten_compute_dom_pk_code263_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_5359145471288_recast_x_q ? 1'b1 : 1'b0);

    // redist64_i_switchleaf143_emscripten_compute_dom_pk_code263_q_1(DELAY,2106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_switchleaf143_emscripten_compute_dom_pk_code263_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist64_i_switchleaf143_emscripten_compute_dom_pk_code263_q_1_q <= $unsigned(i_switchleaf143_emscripten_compute_dom_pk_code263_q);
        end
    end

    // i_and2602_emscripten_compute_dom_pk_code683(LOGICAL,211)@3
    assign i_and2602_emscripten_compute_dom_pk_code683_q = redist64_i_switchleaf143_emscripten_compute_dom_pk_code263_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code684(LOGICAL,857)@3
    assign i_unnamed_emscripten_compute_dom_pk_code684_q = i_and2602_emscripten_compute_dom_pk_code683_q ^ VCC_q;

    // valid_fanout_reg17(REG,1809)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg17_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_power291_emscripten_compute_dom_pk_code682(BLACKBOX,499)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z32_dom_pk_power291_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_power291_emscripten_compute_dom_pk_code682 (
        .in_intel_reserved_ffwd_134_0(in_intel_reserved_ffwd_134_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_134_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_power291_emscripten_compute_dom_pk_code682_out_dest_data_out_134_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18307750221219_recast_x(CONSTANT,1408)
    assign c_i32_18307750221219_recast_x_q = $unsigned(32'b10010010111000001001011100010010);

    // i_switchleaf5_emscripten_compute_dom_pk_code261(LOGICAL,782)@2
    assign i_switchleaf5_emscripten_compute_dom_pk_code261_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_18307750221219_recast_x_q ? 1'b1 : 1'b0);

    // redist11_i_switchleaf5_emscripten_compute_dom_pk_code261_q_1(DELAY,2053)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_switchleaf5_emscripten_compute_dom_pk_code261_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_switchleaf5_emscripten_compute_dom_pk_code261_q_1_q <= $unsigned(i_switchleaf5_emscripten_compute_dom_pk_code261_q);
        end
    end

    // i_and2590_emscripten_compute_dom_pk_code680(LOGICAL,210)@3
    assign i_and2590_emscripten_compute_dom_pk_code680_q = redist11_i_switchleaf5_emscripten_compute_dom_pk_code261_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code681(LOGICAL,856)@3
    assign i_unnamed_emscripten_compute_dom_pk_code681_q = i_and2590_emscripten_compute_dom_pk_code680_q ^ VCC_q;

    // valid_fanout_reg16(REG,1808)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg16_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_search189_emscripten_compute_dom_pk_code679(BLACKBOX,397)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_browser_search189_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_search189_emscripten_compute_dom_pk_code679 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_search189_emscripten_compute_dom_pk_code679_out_dest_data_out_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_10636724401238_recast_x(CONSTANT,1363)
    assign c_i32_10636724401238_recast_x_q = $unsigned(32'b00111111011001100101101001111000);

    // i_switchleaf323_emscripten_compute_dom_pk_code259(LOGICAL,741)@2
    assign i_switchleaf323_emscripten_compute_dom_pk_code259_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_10636724401238_recast_x_q ? 1'b1 : 1'b0);

    // redist41_i_switchleaf323_emscripten_compute_dom_pk_code259_q_1(DELAY,2083)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_switchleaf323_emscripten_compute_dom_pk_code259_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist41_i_switchleaf323_emscripten_compute_dom_pk_code259_q_1_q <= $unsigned(i_switchleaf323_emscripten_compute_dom_pk_code259_q);
        end
    end

    // i_and2578_emscripten_compute_dom_pk_code677(LOGICAL,209)@3
    assign i_and2578_emscripten_compute_dom_pk_code677_q = redist41_i_switchleaf323_emscripten_compute_dom_pk_code259_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code678(LOGICAL,855)@3
    assign i_unnamed_emscripten_compute_dom_pk_code678_q = i_and2578_emscripten_compute_dom_pk_code677_q ^ VCC_q;

    // valid_fanout_reg15(REG,1807)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg15_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_favorites185_emscripten_compute_dom_pk_code676(BLACKBOX,393)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zowser_favorites185_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_favorites185_emscripten_compute_dom_pk_code676 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_favorites185_emscripten_compute_dom_pk_code676_out_dest_data_out_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_15617731011302_recast_x(CONSTANT,1375)
    assign c_i32_15617731011302_recast_x_q = $unsigned(32'b10100010111010010011101111010011);

    // i_switchleaf51_emscripten_compute_dom_pk_code257(LOGICAL,778)@2
    assign i_switchleaf51_emscripten_compute_dom_pk_code257_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_15617731011302_recast_x_q ? 1'b1 : 1'b0);

    // redist14_i_switchleaf51_emscripten_compute_dom_pk_code257_q_1(DELAY,2056)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_switchleaf51_emscripten_compute_dom_pk_code257_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_switchleaf51_emscripten_compute_dom_pk_code257_q_1_q <= $unsigned(i_switchleaf51_emscripten_compute_dom_pk_code257_q);
        end
    end

    // i_and2565_emscripten_compute_dom_pk_code674(LOGICAL,208)@3
    assign i_and2565_emscripten_compute_dom_pk_code674_q = redist14_i_switchleaf51_emscripten_compute_dom_pk_code257_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code675(LOGICAL,854)@3
    assign i_unnamed_emscripten_compute_dom_pk_code675_q = i_and2565_emscripten_compute_dom_pk_code674_q ^ VCC_q;

    // valid_fanout_reg14(REG,1806)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg14_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_refresh188_emscripten_compute_dom_pk_code673(BLACKBOX,396)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zbrowser_refresh188_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_refresh188_emscripten_compute_dom_pk_code673 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_refresh188_emscripten_compute_dom_pk_code673_out_dest_data_out_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_1864686641192_recast_x(CONSTANT,1411)
    assign c_i32_1864686641192_recast_x_q = $unsigned(32'b00001011000111010100100100111000);

    // i_switchleaf169_emscripten_compute_dom_pk_code255(LOGICAL,710)@2
    assign i_switchleaf169_emscripten_compute_dom_pk_code255_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_1864686641192_recast_x_q ? 1'b1 : 1'b0);

    // i_and2553_emscripten_compute_dom_pk_code671(LOGICAL,207)@2 + 1
    assign i_and2553_emscripten_compute_dom_pk_code671_qi = i_switchleaf169_emscripten_compute_dom_pk_code255_q & i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_and2553_emscripten_compute_dom_pk_code671_delay ( .xin(i_and2553_emscripten_compute_dom_pk_code671_qi), .xout(i_and2553_emscripten_compute_dom_pk_code671_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_emscripten_compute_dom_pk_code672(LOGICAL,853)@3
    assign i_unnamed_emscripten_compute_dom_pk_code672_q = i_and2553_emscripten_compute_dom_pk_code671_q ^ VCC_q;

    // valid_fanout_reg13(REG,1805)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_stop190_emscripten_compute_dom_pk_code670(BLACKBOX,398)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_browser_stop190_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_stop190_emscripten_compute_dom_pk_code670 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_stop190_emscripten_compute_dom_pk_code670_out_dest_data_out_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_12284271361289_recast_x(CONSTANT,1371)
    assign c_i32_12284271361289_recast_x_q = $unsigned(32'b01001001001110000100111110000000);

    // i_switchleaf333_emscripten_compute_dom_pk_code253(LOGICAL,743)@2
    assign i_switchleaf333_emscripten_compute_dom_pk_code253_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_12284271361289_recast_x_q ? 1'b1 : 1'b0);

    // redist39_i_switchleaf333_emscripten_compute_dom_pk_code253_q_1(DELAY,2081)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_switchleaf333_emscripten_compute_dom_pk_code253_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist39_i_switchleaf333_emscripten_compute_dom_pk_code253_q_1_q <= $unsigned(i_switchleaf333_emscripten_compute_dom_pk_code253_q);
        end
    end

    // i_and2541_emscripten_compute_dom_pk_code668(LOGICAL,206)@3
    assign i_and2541_emscripten_compute_dom_pk_code668_q = redist39_i_switchleaf333_emscripten_compute_dom_pk_code253_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code669(LOGICAL,852)@3
    assign i_unnamed_emscripten_compute_dom_pk_code669_q = i_and2541_emscripten_compute_dom_pk_code668_q ^ VCC_q;

    // valid_fanout_reg12(REG,1804)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_forward186_emscripten_compute_dom_pk_code667(BLACKBOX,394)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zbrowser_forward186_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_forward186_emscripten_compute_dom_pk_code667 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_forward186_emscripten_compute_dom_pk_code667_out_dest_data_out_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_1893340761237_recast_x(CONSTANT,1412)
    assign c_i32_1893340761237_recast_x_q = $unsigned(32'b00001011010010010000001000111100);

    // i_switchleaf171_emscripten_compute_dom_pk_code251(LOGICAL,711)@2
    assign i_switchleaf171_emscripten_compute_dom_pk_code251_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_1893340761237_recast_x_q ? 1'b1 : 1'b0);

    // redist59_i_switchleaf171_emscripten_compute_dom_pk_code251_q_1(DELAY,2101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_switchleaf171_emscripten_compute_dom_pk_code251_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist59_i_switchleaf171_emscripten_compute_dom_pk_code251_q_1_q <= $unsigned(i_switchleaf171_emscripten_compute_dom_pk_code251_q);
        end
    end

    // i_and2529_emscripten_compute_dom_pk_code665(LOGICAL,205)@3
    assign i_and2529_emscripten_compute_dom_pk_code665_q = redist59_i_switchleaf171_emscripten_compute_dom_pk_code251_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code666(LOGICAL,851)@3
    assign i_unnamed_emscripten_compute_dom_pk_code666_q = i_and2529_emscripten_compute_dom_pk_code665_q ^ VCC_q;

    // valid_fanout_reg11(REG,1803)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_back184_emscripten_compute_dom_pk_code664(BLACKBOX,392)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_browser_back184_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_back184_emscripten_compute_dom_pk_code664 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_back184_emscripten_compute_dom_pk_code664_out_dest_data_out_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_12284335951225_recast_x(CONSTANT,1372)
    assign c_i32_12284335951225_recast_x_q = $unsigned(32'b01001001001110000110100010111011);

    // i_switchleaf337_emscripten_compute_dom_pk_code249(LOGICAL,744)@2
    assign i_switchleaf337_emscripten_compute_dom_pk_code249_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_12284335951225_recast_x_q ? 1'b1 : 1'b0);

    // redist38_i_switchleaf337_emscripten_compute_dom_pk_code249_q_1(DELAY,2080)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_switchleaf337_emscripten_compute_dom_pk_code249_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist38_i_switchleaf337_emscripten_compute_dom_pk_code249_q_1_q <= $unsigned(i_switchleaf337_emscripten_compute_dom_pk_code249_q);
        end
    end

    // i_and2517_emscripten_compute_dom_pk_code662(LOGICAL,204)@3
    assign i_and2517_emscripten_compute_dom_pk_code662_q = redist38_i_switchleaf337_emscripten_compute_dom_pk_code249_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code663(LOGICAL,850)@3
    assign i_unnamed_emscripten_compute_dom_pk_code663_q = i_and2517_emscripten_compute_dom_pk_code662_q ^ VCC_q;

    // valid_fanout_reg10(REG,1802)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_1248_emscripten_compute_dom_pk_code661(BLACKBOX,456)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_launch_app_1248_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_1248_emscripten_compute_dom_pk_code661 (
        .in_intel_reserved_ffwd_91_0(in_intel_reserved_ffwd_91_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_91_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_1248_emscripten_compute_dom_pk_code661_out_dest_data_out_91_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code660(LOGICAL,849)@3
    assign i_unnamed_emscripten_compute_dom_pk_code660_q = i_and2505_emscripten_compute_dom_pk_code659_q ^ VCC_q;

    // i_pivot309_emscripten_compute_dom_pk_code45(COMPARE,599)@2
    assign i_pivot309_emscripten_compute_dom_pk_code45_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot309_emscripten_compute_dom_pk_code45_b = $unsigned({{2{c_i32_9237161541205_recast_x_q[31]}}, c_i32_9237161541205_recast_x_q});
    assign i_pivot309_emscripten_compute_dom_pk_code45_o = $unsigned($signed(i_pivot309_emscripten_compute_dom_pk_code45_a) - $signed(i_pivot309_emscripten_compute_dom_pk_code45_b));
    assign i_pivot309_emscripten_compute_dom_pk_code45_c[0] = i_pivot309_emscripten_compute_dom_pk_code45_o[33];

    // c_i32_9237161531303_recast_x(CONSTANT,1509)
    assign c_i32_9237161531303_recast_x_q = $unsigned(32'b00110111000011101100101000111001);

    // i_pivot285_emscripten_compute_dom_pk_code247(COMPARE,591)@2
    assign i_pivot285_emscripten_compute_dom_pk_code247_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot285_emscripten_compute_dom_pk_code247_b = $unsigned({{2{c_i32_9237161531303_recast_x_q[31]}}, c_i32_9237161531303_recast_x_q});
    assign i_pivot285_emscripten_compute_dom_pk_code247_o = $unsigned($signed(i_pivot285_emscripten_compute_dom_pk_code247_a) - $signed(i_pivot285_emscripten_compute_dom_pk_code247_b));
    assign i_pivot285_emscripten_compute_dom_pk_code247_c[0] = i_pivot285_emscripten_compute_dom_pk_code247_o[33];

    // i_acl_2500_emscripten_compute_dom_pk_code658(LOGICAL,137)@2 + 1
    assign i_acl_2500_emscripten_compute_dom_pk_code658_qi = i_pivot285_emscripten_compute_dom_pk_code247_c ^ i_pivot309_emscripten_compute_dom_pk_code45_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2500_emscripten_compute_dom_pk_code658_delay ( .xin(i_acl_2500_emscripten_compute_dom_pk_code658_qi), .xout(i_acl_2500_emscripten_compute_dom_pk_code658_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_and2505_emscripten_compute_dom_pk_code659(LOGICAL,203)@3
    assign i_and2505_emscripten_compute_dom_pk_code659_q = i_acl_2500_emscripten_compute_dom_pk_code658_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // valid_fanout_reg9(REG,1801)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_mail250_emscripten_compute_dom_pk_code657(BLACKBOX,458)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_pk_launch_mail250_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_mail250_emscripten_compute_dom_pk_code657 (
        .in_intel_reserved_ffwd_93_0(in_intel_reserved_ffwd_93_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_93_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_mail250_emscripten_compute_dom_pk_code657_out_dest_data_out_93_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9237194041251_recast_x(CONSTANT,1511)
    assign c_i32_9237194041251_recast_x_q = $unsigned(32'b00110111000011101101011011101100);

    // i_switchleaf293_emscripten_compute_dom_pk_code245(LOGICAL,732)@2
    assign i_switchleaf293_emscripten_compute_dom_pk_code245_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9237194041251_recast_x_q ? 1'b1 : 1'b0);

    // redist48_i_switchleaf293_emscripten_compute_dom_pk_code245_q_1(DELAY,2090)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_switchleaf293_emscripten_compute_dom_pk_code245_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist48_i_switchleaf293_emscripten_compute_dom_pk_code245_q_1_q <= $unsigned(i_switchleaf293_emscripten_compute_dom_pk_code245_q);
        end
    end

    // i_and2493_emscripten_compute_dom_pk_code655(LOGICAL,202)@3
    assign i_and2493_emscripten_compute_dom_pk_code655_q = redist48_i_switchleaf293_emscripten_compute_dom_pk_code245_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code656(LOGICAL,848)@3
    assign i_unnamed_emscripten_compute_dom_pk_code656_q = i_and2493_emscripten_compute_dom_pk_code655_q ^ VCC_q;

    // valid_fanout_reg8(REG,1800)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_media_player251_emscripten_compute_dom_pk_code654(BLACKBOX,459)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zch_media_player251_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_media_player251_emscripten_compute_dom_pk_code654 (
        .in_intel_reserved_ffwd_94_0(in_intel_reserved_ffwd_94_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_94_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_media_player251_emscripten_compute_dom_pk_code654_out_dest_data_out_94_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9675265461235_recast_x(CONSTANT,1518)
    assign c_i32_9675265461235_recast_x_q = $unsigned(32'b00111001101010110100100010010010);

    // i_switchleaf321_emscripten_compute_dom_pk_code243(LOGICAL,740)@2
    assign i_switchleaf321_emscripten_compute_dom_pk_code243_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9675265461235_recast_x_q ? 1'b1 : 1'b0);

    // redist42_i_switchleaf321_emscripten_compute_dom_pk_code243_q_1(DELAY,2084)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_switchleaf321_emscripten_compute_dom_pk_code243_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist42_i_switchleaf321_emscripten_compute_dom_pk_code243_q_1_q <= $unsigned(i_switchleaf321_emscripten_compute_dom_pk_code243_q);
        end
    end

    // i_and2481_emscripten_compute_dom_pk_code652(LOGICAL,201)@3
    assign i_and2481_emscripten_compute_dom_pk_code652_q = redist42_i_switchleaf321_emscripten_compute_dom_pk_code243_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code653(LOGICAL,847)@3
    assign i_unnamed_emscripten_compute_dom_pk_code653_q = i_and2481_emscripten_compute_dom_pk_code652_q ^ VCC_q;

    // valid_fanout_reg7(REG,1799)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_select254_emscripten_compute_dom_pk_code651(BLACKBOX,462)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zpk_media_select254_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_select254_emscripten_compute_dom_pk_code651 (
        .in_intel_reserved_ffwd_97_0(in_intel_reserved_ffwd_97_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_97_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_select254_emscripten_compute_dom_pk_code651_out_dest_data_out_97_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9674602601210_recast_x(CONSTANT,1517)
    assign c_i32_9674602601210_recast_x_q = $unsigned(32'b00111001101010100100010110100100);

    // i_switchleaf319_emscripten_compute_dom_pk_code241(LOGICAL,738)@2
    assign i_switchleaf319_emscripten_compute_dom_pk_code241_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_9674602601210_recast_x_q ? 1'b1 : 1'b0);

    // redist44_i_switchleaf319_emscripten_compute_dom_pk_code241_q_1(DELAY,2086)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_switchleaf319_emscripten_compute_dom_pk_code241_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist44_i_switchleaf319_emscripten_compute_dom_pk_code241_q_1_q <= $unsigned(i_switchleaf319_emscripten_compute_dom_pk_code241_q);
        end
    end

    // i_and2468_emscripten_compute_dom_pk_code649(LOGICAL,200)@3
    assign i_and2468_emscripten_compute_dom_pk_code649_q = redist44_i_switchleaf319_emscripten_compute_dom_pk_code241_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_unnamed_emscripten_compute_dom_pk_code650(LOGICAL,846)@3
    assign i_unnamed_emscripten_compute_dom_pk_code650_q = i_and2468_emscripten_compute_dom_pk_code649_q ^ VCC_q;

    // valid_fanout_reg6(REG,1798)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together1509_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_unknown306_emscripten_compute_dom_pk_code648(BLACKBOX,514)@3
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_dom_pk_unknown306_0 thei_llvm_fpga_ffwd_dest_p1024i32_dom_pk_unknown306_emscripten_compute_dom_pk_code648 (
        .in_intel_reserved_ffwd_149_0(in_intel_reserved_ffwd_149_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_149_0(i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_unknown306_emscripten_compute_dom_pk_code648_out_dest_data_out_149_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_demorgan_emscripten_compute_dom_pk_code646(LOGICAL,358)@3
    assign i_demorgan_emscripten_compute_dom_pk_code646_q = i_and_emscripten_compute_dom_pk_code644_q | i_and4335_emscripten_compute_dom_pk_code645_q;

    // i_unnamed_emscripten_compute_dom_pk_code647(LOGICAL,845)@3
    assign i_unnamed_emscripten_compute_dom_pk_code647_q = i_demorgan_emscripten_compute_dom_pk_code646_q ^ VCC_q;

    // c_i32_17444980441208_recast_x(CONSTANT,1395)
    assign c_i32_17444980441208_recast_x_q = $unsigned(32'b10011000000001010001001010000100);

    // i_switchleaf49_emscripten_compute_dom_pk_code515(LOGICAL,777)@2
    assign i_switchleaf49_emscripten_compute_dom_pk_code515_q = $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q == c_i32_17444980441208_recast_x_q ? 1'b1 : 1'b0);

    // redist15_i_switchleaf49_emscripten_compute_dom_pk_code515_q_1(DELAY,2057)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_switchleaf49_emscripten_compute_dom_pk_code515_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_switchleaf49_emscripten_compute_dom_pk_code515_q_1_q <= $unsigned(i_switchleaf49_emscripten_compute_dom_pk_code515_q);
        end
    end

    // i_and4335_emscripten_compute_dom_pk_code645(LOGICAL,356)@3
    assign i_and4335_emscripten_compute_dom_pk_code645_q = redist15_i_switchleaf49_emscripten_compute_dom_pk_code515_q_1_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // i_pivot_emscripten_compute_dom_pk_code173(COMPARE,679)@2
    assign i_pivot_emscripten_compute_dom_pk_code173_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot_emscripten_compute_dom_pk_code173_b = $unsigned({{2{c_i32_18307780591269_recast_x_q[31]}}, c_i32_18307780591269_recast_x_q});
    assign i_pivot_emscripten_compute_dom_pk_code173_o = $unsigned($signed(i_pivot_emscripten_compute_dom_pk_code173_a) - $signed(i_pivot_emscripten_compute_dom_pk_code173_b));
    assign i_pivot_emscripten_compute_dom_pk_code173_c[0] = i_pivot_emscripten_compute_dom_pk_code173_o[33];

    // i_acl_2342_v_emscripten_compute_dom_pk_code517(MUX,12)@2
    assign i_acl_2342_v_emscripten_compute_dom_pk_code517_s = i_pivot_emscripten_compute_dom_pk_code173_c;
    always @(i_acl_2342_v_emscripten_compute_dom_pk_code517_s or i_switchleaf3_emscripten_compute_dom_pk_code405_q or i_switchleaf_emscripten_compute_dom_pk_code336_q)
    begin
        unique case (i_acl_2342_v_emscripten_compute_dom_pk_code517_s)
            1'b0 : i_acl_2342_v_emscripten_compute_dom_pk_code517_q = i_switchleaf3_emscripten_compute_dom_pk_code405_q;
            1'b1 : i_acl_2342_v_emscripten_compute_dom_pk_code517_q = i_switchleaf_emscripten_compute_dom_pk_code336_q;
            default : i_acl_2342_v_emscripten_compute_dom_pk_code517_q = 1'b0;
        endcase
    end

    // i_pivot9_emscripten_compute_dom_pk_code185(COMPARE,678)@2
    assign i_pivot9_emscripten_compute_dom_pk_code185_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot9_emscripten_compute_dom_pk_code185_b = $unsigned({{2{c_i32_18307735791275_recast_x_q[31]}}, c_i32_18307735791275_recast_x_q});
    assign i_pivot9_emscripten_compute_dom_pk_code185_o = $unsigned($signed(i_pivot9_emscripten_compute_dom_pk_code185_a) - $signed(i_pivot9_emscripten_compute_dom_pk_code185_b));
    assign i_pivot9_emscripten_compute_dom_pk_code185_c[0] = i_pivot9_emscripten_compute_dom_pk_code185_o[33];

    // i_acl_2343_v_emscripten_compute_dom_pk_code518(MUX,13)@2
    assign i_acl_2343_v_emscripten_compute_dom_pk_code518_s = i_pivot9_emscripten_compute_dom_pk_code185_c;
    always @(i_acl_2343_v_emscripten_compute_dom_pk_code518_s or i_switchleaf7_emscripten_compute_dom_pk_code426_q or i_switchleaf5_emscripten_compute_dom_pk_code261_q)
    begin
        unique case (i_acl_2343_v_emscripten_compute_dom_pk_code518_s)
            1'b0 : i_acl_2343_v_emscripten_compute_dom_pk_code518_q = i_switchleaf7_emscripten_compute_dom_pk_code426_q;
            1'b1 : i_acl_2343_v_emscripten_compute_dom_pk_code518_q = i_switchleaf5_emscripten_compute_dom_pk_code261_q;
            default : i_acl_2343_v_emscripten_compute_dom_pk_code518_q = 1'b0;
        endcase
    end

    // i_pivot11_emscripten_compute_dom_pk_code73(COMPARE,532)@2
    assign i_pivot11_emscripten_compute_dom_pk_code73_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot11_emscripten_compute_dom_pk_code73_b = $unsigned({{2{c_i32_18307750221219_recast_x_q[31]}}, c_i32_18307750221219_recast_x_q});
    assign i_pivot11_emscripten_compute_dom_pk_code73_o = $unsigned($signed(i_pivot11_emscripten_compute_dom_pk_code73_a) - $signed(i_pivot11_emscripten_compute_dom_pk_code73_b));
    assign i_pivot11_emscripten_compute_dom_pk_code73_c[0] = i_pivot11_emscripten_compute_dom_pk_code73_o[33];

    // i_acl_2344_v_emscripten_compute_dom_pk_code519(MUX,15)@2
    assign i_acl_2344_v_emscripten_compute_dom_pk_code519_s = i_pivot11_emscripten_compute_dom_pk_code73_c;
    always @(i_acl_2344_v_emscripten_compute_dom_pk_code519_s or i_acl_2343_v_emscripten_compute_dom_pk_code518_q or i_acl_2342_v_emscripten_compute_dom_pk_code517_q)
    begin
        unique case (i_acl_2344_v_emscripten_compute_dom_pk_code519_s)
            1'b0 : i_acl_2344_v_emscripten_compute_dom_pk_code519_q = i_acl_2343_v_emscripten_compute_dom_pk_code518_q;
            1'b1 : i_acl_2344_v_emscripten_compute_dom_pk_code519_q = i_acl_2342_v_emscripten_compute_dom_pk_code517_q;
            default : i_acl_2344_v_emscripten_compute_dom_pk_code519_q = 1'b0;
        endcase
    end

    // i_acl_2344_emscripten_compute_dom_pk_code520(LOGICAL,14)@2
    assign i_acl_2344_emscripten_compute_dom_pk_code520_q = i_acl_2344_v_emscripten_compute_dom_pk_code519_q ^ VCC_q;

    // i_pivot17_emscripten_compute_dom_pk_code199(COMPARE,548)@2
    assign i_pivot17_emscripten_compute_dom_pk_code199_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot17_emscripten_compute_dom_pk_code199_b = $unsigned({{2{c_i32_18307672191282_recast_x_q[31]}}, c_i32_18307672191282_recast_x_q});
    assign i_pivot17_emscripten_compute_dom_pk_code199_o = $unsigned($signed(i_pivot17_emscripten_compute_dom_pk_code199_a) - $signed(i_pivot17_emscripten_compute_dom_pk_code199_b));
    assign i_pivot17_emscripten_compute_dom_pk_code199_c[0] = i_pivot17_emscripten_compute_dom_pk_code199_o[33];

    // i_acl_2345_v_emscripten_compute_dom_pk_code521(MUX,17)@2
    assign i_acl_2345_v_emscripten_compute_dom_pk_code521_s = i_pivot17_emscripten_compute_dom_pk_code199_c;
    always @(i_acl_2345_v_emscripten_compute_dom_pk_code521_s or i_switchleaf15_emscripten_compute_dom_pk_code453_q or i_switchleaf13_emscripten_compute_dom_pk_code434_q)
    begin
        unique case (i_acl_2345_v_emscripten_compute_dom_pk_code521_s)
            1'b0 : i_acl_2345_v_emscripten_compute_dom_pk_code521_q = i_switchleaf15_emscripten_compute_dom_pk_code453_q;
            1'b1 : i_acl_2345_v_emscripten_compute_dom_pk_code521_q = i_switchleaf13_emscripten_compute_dom_pk_code434_q;
            default : i_acl_2345_v_emscripten_compute_dom_pk_code521_q = 1'b0;
        endcase
    end

    // i_acl_2345_emscripten_compute_dom_pk_code522(LOGICAL,16)@2
    assign i_acl_2345_emscripten_compute_dom_pk_code522_q = i_acl_2345_v_emscripten_compute_dom_pk_code521_q ^ VCC_q;

    // i_pivot23_emscripten_compute_dom_pk_code229(COMPARE,573)@1 + 1
    assign i_pivot23_emscripten_compute_dom_pk_code229_a = $unsigned({{2{i_select2341_emscripten_compute_dom_pk_code10_q[31]}}, i_select2341_emscripten_compute_dom_pk_code10_q});
    assign i_pivot23_emscripten_compute_dom_pk_code229_b = $unsigned({{2{c_i32_18307282371297_recast_x_q[31]}}, c_i32_18307282371297_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot23_emscripten_compute_dom_pk_code229_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot23_emscripten_compute_dom_pk_code229_o <= $unsigned($signed(i_pivot23_emscripten_compute_dom_pk_code229_a) - $signed(i_pivot23_emscripten_compute_dom_pk_code229_b));
        end
    end
    assign i_pivot23_emscripten_compute_dom_pk_code229_c[0] = i_pivot23_emscripten_compute_dom_pk_code229_o[33];

    // i_acl_2346_v_emscripten_compute_dom_pk_code523(MUX,19)@2
    assign i_acl_2346_v_emscripten_compute_dom_pk_code523_s = i_pivot23_emscripten_compute_dom_pk_code229_c;
    always @(i_acl_2346_v_emscripten_compute_dom_pk_code523_s or i_switchleaf21_emscripten_compute_dom_pk_code497_q or i_switchleaf19_emscripten_compute_dom_pk_code353_q)
    begin
        unique case (i_acl_2346_v_emscripten_compute_dom_pk_code523_s)
            1'b0 : i_acl_2346_v_emscripten_compute_dom_pk_code523_q = i_switchleaf21_emscripten_compute_dom_pk_code497_q;
            1'b1 : i_acl_2346_v_emscripten_compute_dom_pk_code523_q = i_switchleaf19_emscripten_compute_dom_pk_code353_q;
            default : i_acl_2346_v_emscripten_compute_dom_pk_code523_q = 1'b0;
        endcase
    end

    // i_acl_2346_emscripten_compute_dom_pk_code524(LOGICAL,18)@2
    assign i_acl_2346_emscripten_compute_dom_pk_code524_q = i_acl_2346_v_emscripten_compute_dom_pk_code523_q ^ VCC_q;

    // i_acl_2347_emscripten_compute_dom_pk_code525(LOGICAL,20)@2
    assign i_acl_2347_emscripten_compute_dom_pk_code525_q = i_pivot25_emscripten_compute_dom_pk_code351_c ^ i_acl_2346_emscripten_compute_dom_pk_code524_q;

    // i_acl_2348_emscripten_compute_dom_pk_code526(MUX,21)@2
    assign i_acl_2348_emscripten_compute_dom_pk_code526_s = i_pivot27_emscripten_compute_dom_pk_code151_c;
    always @(i_acl_2348_emscripten_compute_dom_pk_code526_s or i_acl_2347_emscripten_compute_dom_pk_code525_q or i_acl_2345_emscripten_compute_dom_pk_code522_q)
    begin
        unique case (i_acl_2348_emscripten_compute_dom_pk_code526_s)
            1'b0 : i_acl_2348_emscripten_compute_dom_pk_code526_q = i_acl_2347_emscripten_compute_dom_pk_code525_q;
            1'b1 : i_acl_2348_emscripten_compute_dom_pk_code526_q = i_acl_2345_emscripten_compute_dom_pk_code522_q;
            default : i_acl_2348_emscripten_compute_dom_pk_code526_q = 1'b0;
        endcase
    end

    // i_pivot29_emscripten_compute_dom_pk_code59(COMPARE,595)@2
    assign i_pivot29_emscripten_compute_dom_pk_code59_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot29_emscripten_compute_dom_pk_code59_b = $unsigned({{2{c_i32_18307716561212_recast_x_q[31]}}, c_i32_18307716561212_recast_x_q});
    assign i_pivot29_emscripten_compute_dom_pk_code59_o = $unsigned($signed(i_pivot29_emscripten_compute_dom_pk_code59_a) - $signed(i_pivot29_emscripten_compute_dom_pk_code59_b));
    assign i_pivot29_emscripten_compute_dom_pk_code59_c[0] = i_pivot29_emscripten_compute_dom_pk_code59_o[33];

    // i_acl_2349_emscripten_compute_dom_pk_code527(MUX,22)@2 + 1
    assign i_acl_2349_emscripten_compute_dom_pk_code527_s = i_pivot29_emscripten_compute_dom_pk_code59_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2349_emscripten_compute_dom_pk_code527_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2349_emscripten_compute_dom_pk_code527_s)
                1'b0 : i_acl_2349_emscripten_compute_dom_pk_code527_q <= i_acl_2348_emscripten_compute_dom_pk_code526_q;
                1'b1 : i_acl_2349_emscripten_compute_dom_pk_code527_q <= i_acl_2344_emscripten_compute_dom_pk_code520_q;
                default : i_acl_2349_emscripten_compute_dom_pk_code527_q <= 1'b0;
            endcase
        end
    end

    // i_pivot35_emscripten_compute_dom_pk_code209(COMPARE,611)@2
    assign i_pivot35_emscripten_compute_dom_pk_code209_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot35_emscripten_compute_dom_pk_code209_b = $unsigned({{2{c_i32_18306975181287_recast_x_q[31]}}, c_i32_18306975181287_recast_x_q});
    assign i_pivot35_emscripten_compute_dom_pk_code209_o = $unsigned($signed(i_pivot35_emscripten_compute_dom_pk_code209_a) - $signed(i_pivot35_emscripten_compute_dom_pk_code209_b));
    assign i_pivot35_emscripten_compute_dom_pk_code209_c[0] = i_pivot35_emscripten_compute_dom_pk_code209_o[33];

    // i_acl_2350_v_emscripten_compute_dom_pk_code528(MUX,23)@2
    assign i_acl_2350_v_emscripten_compute_dom_pk_code528_s = i_pivot35_emscripten_compute_dom_pk_code209_c;
    always @(i_acl_2350_v_emscripten_compute_dom_pk_code528_s or i_switchleaf33_emscripten_compute_dom_pk_code469_q or i_switchleaf31_emscripten_compute_dom_pk_code438_q)
    begin
        unique case (i_acl_2350_v_emscripten_compute_dom_pk_code528_s)
            1'b0 : i_acl_2350_v_emscripten_compute_dom_pk_code528_q = i_switchleaf33_emscripten_compute_dom_pk_code469_q;
            1'b1 : i_acl_2350_v_emscripten_compute_dom_pk_code528_q = i_switchleaf31_emscripten_compute_dom_pk_code438_q;
            default : i_acl_2350_v_emscripten_compute_dom_pk_code528_q = 1'b0;
        endcase
    end

    // i_pivot43_emscripten_compute_dom_pk_code227(COMPARE,641)@2
    assign i_pivot43_emscripten_compute_dom_pk_code227_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot43_emscripten_compute_dom_pk_code227_b = $unsigned({{2{c_i32_17864341321296_recast_x_q[31]}}, c_i32_17864341321296_recast_x_q});
    assign i_pivot43_emscripten_compute_dom_pk_code227_o = $unsigned($signed(i_pivot43_emscripten_compute_dom_pk_code227_a) - $signed(i_pivot43_emscripten_compute_dom_pk_code227_b));
    assign i_pivot43_emscripten_compute_dom_pk_code227_c[0] = i_pivot43_emscripten_compute_dom_pk_code227_o[33];

    // i_acl_2351_v_emscripten_compute_dom_pk_code529(MUX,24)@2
    assign i_acl_2351_v_emscripten_compute_dom_pk_code529_s = i_pivot43_emscripten_compute_dom_pk_code227_c;
    always @(i_acl_2351_v_emscripten_compute_dom_pk_code529_s or i_switchleaf41_emscripten_compute_dom_pk_code382_q or i_switchleaf39_emscripten_compute_dom_pk_code495_q)
    begin
        unique case (i_acl_2351_v_emscripten_compute_dom_pk_code529_s)
            1'b0 : i_acl_2351_v_emscripten_compute_dom_pk_code529_q = i_switchleaf41_emscripten_compute_dom_pk_code382_q;
            1'b1 : i_acl_2351_v_emscripten_compute_dom_pk_code529_q = i_switchleaf39_emscripten_compute_dom_pk_code495_q;
            default : i_acl_2351_v_emscripten_compute_dom_pk_code529_q = 1'b0;
        endcase
    end

    // i_pivot45_emscripten_compute_dom_pk_code133(COMPARE,647)@2
    assign i_pivot45_emscripten_compute_dom_pk_code133_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot45_emscripten_compute_dom_pk_code133_b = $unsigned({{2{c_i32_18306837321249_recast_x_q[31]}}, c_i32_18306837321249_recast_x_q});
    assign i_pivot45_emscripten_compute_dom_pk_code133_o = $unsigned($signed(i_pivot45_emscripten_compute_dom_pk_code133_a) - $signed(i_pivot45_emscripten_compute_dom_pk_code133_b));
    assign i_pivot45_emscripten_compute_dom_pk_code133_c[0] = i_pivot45_emscripten_compute_dom_pk_code133_o[33];

    // i_acl_2352_v_emscripten_compute_dom_pk_code530(MUX,25)@2
    assign i_acl_2352_v_emscripten_compute_dom_pk_code530_s = i_pivot45_emscripten_compute_dom_pk_code133_c;
    always @(i_acl_2352_v_emscripten_compute_dom_pk_code530_s or i_acl_2351_v_emscripten_compute_dom_pk_code529_q or i_switchleaf37_emscripten_compute_dom_pk_code312_q)
    begin
        unique case (i_acl_2352_v_emscripten_compute_dom_pk_code530_s)
            1'b0 : i_acl_2352_v_emscripten_compute_dom_pk_code530_q = i_acl_2351_v_emscripten_compute_dom_pk_code529_q;
            1'b1 : i_acl_2352_v_emscripten_compute_dom_pk_code530_q = i_switchleaf37_emscripten_compute_dom_pk_code312_q;
            default : i_acl_2352_v_emscripten_compute_dom_pk_code530_q = 1'b0;
        endcase
    end

    // i_pivot47_emscripten_compute_dom_pk_code81(COMPARE,657)@2
    assign i_pivot47_emscripten_compute_dom_pk_code81_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot47_emscripten_compute_dom_pk_code81_b = $unsigned({{2{c_i32_18306965401223_recast_x_q[31]}}, c_i32_18306965401223_recast_x_q});
    assign i_pivot47_emscripten_compute_dom_pk_code81_o = $unsigned($signed(i_pivot47_emscripten_compute_dom_pk_code81_a) - $signed(i_pivot47_emscripten_compute_dom_pk_code81_b));
    assign i_pivot47_emscripten_compute_dom_pk_code81_c[0] = i_pivot47_emscripten_compute_dom_pk_code81_o[33];

    // i_acl_2353_v_emscripten_compute_dom_pk_code531(MUX,26)@2 + 1
    assign i_acl_2353_v_emscripten_compute_dom_pk_code531_s = i_pivot47_emscripten_compute_dom_pk_code81_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2353_v_emscripten_compute_dom_pk_code531_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2353_v_emscripten_compute_dom_pk_code531_s)
                1'b0 : i_acl_2353_v_emscripten_compute_dom_pk_code531_q <= i_acl_2352_v_emscripten_compute_dom_pk_code530_q;
                1'b1 : i_acl_2353_v_emscripten_compute_dom_pk_code531_q <= i_acl_2350_v_emscripten_compute_dom_pk_code528_q;
                default : i_acl_2353_v_emscripten_compute_dom_pk_code531_q <= 1'b0;
            endcase
        end
    end

    // i_pivot53_emscripten_compute_dom_pk_code239(COMPARE,666)@2
    assign i_pivot53_emscripten_compute_dom_pk_code239_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot53_emscripten_compute_dom_pk_code239_b = $unsigned({{2{c_i32_15617731011302_recast_x_q[31]}}, c_i32_15617731011302_recast_x_q});
    assign i_pivot53_emscripten_compute_dom_pk_code239_o = $unsigned($signed(i_pivot53_emscripten_compute_dom_pk_code239_a) - $signed(i_pivot53_emscripten_compute_dom_pk_code239_b));
    assign i_pivot53_emscripten_compute_dom_pk_code239_c[0] = i_pivot53_emscripten_compute_dom_pk_code239_o[33];

    // i_acl_2354_v_emscripten_compute_dom_pk_code532(MUX,27)@2
    assign i_acl_2354_v_emscripten_compute_dom_pk_code532_s = i_pivot53_emscripten_compute_dom_pk_code239_c;
    always @(i_acl_2354_v_emscripten_compute_dom_pk_code532_s or i_switchleaf51_emscripten_compute_dom_pk_code257_q or i_switchleaf49_emscripten_compute_dom_pk_code515_q)
    begin
        unique case (i_acl_2354_v_emscripten_compute_dom_pk_code532_s)
            1'b0 : i_acl_2354_v_emscripten_compute_dom_pk_code532_q = i_switchleaf51_emscripten_compute_dom_pk_code257_q;
            1'b1 : i_acl_2354_v_emscripten_compute_dom_pk_code532_q = i_switchleaf49_emscripten_compute_dom_pk_code515_q;
            default : i_acl_2354_v_emscripten_compute_dom_pk_code532_q = 1'b0;
        endcase
    end

    // i_pivot61_emscripten_compute_dom_pk_code183(COMPARE,667)@2
    assign i_pivot61_emscripten_compute_dom_pk_code183_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot61_emscripten_compute_dom_pk_code183_b = $unsigned({{2{c_i32_11884447881274_recast_x_q[31]}}, c_i32_11884447881274_recast_x_q});
    assign i_pivot61_emscripten_compute_dom_pk_code183_o = $unsigned($signed(i_pivot61_emscripten_compute_dom_pk_code183_a) - $signed(i_pivot61_emscripten_compute_dom_pk_code183_b));
    assign i_pivot61_emscripten_compute_dom_pk_code183_c[0] = i_pivot61_emscripten_compute_dom_pk_code183_o[33];

    // i_acl_2355_v_emscripten_compute_dom_pk_code533(MUX,28)@2
    assign i_acl_2355_v_emscripten_compute_dom_pk_code533_s = i_pivot61_emscripten_compute_dom_pk_code183_c;
    always @(i_acl_2355_v_emscripten_compute_dom_pk_code533_s or i_switchleaf59_emscripten_compute_dom_pk_code271_q or i_switchleaf57_emscripten_compute_dom_pk_code424_q)
    begin
        unique case (i_acl_2355_v_emscripten_compute_dom_pk_code533_s)
            1'b0 : i_acl_2355_v_emscripten_compute_dom_pk_code533_q = i_switchleaf59_emscripten_compute_dom_pk_code271_q;
            1'b1 : i_acl_2355_v_emscripten_compute_dom_pk_code533_q = i_switchleaf57_emscripten_compute_dom_pk_code424_q;
            default : i_acl_2355_v_emscripten_compute_dom_pk_code533_q = 1'b0;
        endcase
    end

    // i_pivot63_emscripten_compute_dom_pk_code123(COMPARE,668)@2
    assign i_pivot63_emscripten_compute_dom_pk_code123_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot63_emscripten_compute_dom_pk_code123_b = $unsigned({{2{c_i32_11915163571244_recast_x_q[31]}}, c_i32_11915163571244_recast_x_q});
    assign i_pivot63_emscripten_compute_dom_pk_code123_o = $unsigned($signed(i_pivot63_emscripten_compute_dom_pk_code123_a) - $signed(i_pivot63_emscripten_compute_dom_pk_code123_b));
    assign i_pivot63_emscripten_compute_dom_pk_code123_c[0] = i_pivot63_emscripten_compute_dom_pk_code123_o[33];

    // i_acl_2356_v_emscripten_compute_dom_pk_code534(MUX,29)@2
    assign i_acl_2356_v_emscripten_compute_dom_pk_code534_s = i_pivot63_emscripten_compute_dom_pk_code123_c;
    always @(i_acl_2356_v_emscripten_compute_dom_pk_code534_s or i_acl_2355_v_emscripten_compute_dom_pk_code533_q or i_switchleaf55_emscripten_compute_dom_pk_code298_q)
    begin
        unique case (i_acl_2356_v_emscripten_compute_dom_pk_code534_s)
            1'b0 : i_acl_2356_v_emscripten_compute_dom_pk_code534_q = i_acl_2355_v_emscripten_compute_dom_pk_code533_q;
            1'b1 : i_acl_2356_v_emscripten_compute_dom_pk_code534_q = i_switchleaf55_emscripten_compute_dom_pk_code298_q;
            default : i_acl_2356_v_emscripten_compute_dom_pk_code534_q = 1'b0;
        endcase
    end

    // i_pivot65_emscripten_compute_dom_pk_code103(COMPARE,669)@2
    assign i_pivot65_emscripten_compute_dom_pk_code103_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot65_emscripten_compute_dom_pk_code103_b = $unsigned({{2{c_i32_11986044201234_recast_x_q[31]}}, c_i32_11986044201234_recast_x_q});
    assign i_pivot65_emscripten_compute_dom_pk_code103_o = $unsigned($signed(i_pivot65_emscripten_compute_dom_pk_code103_a) - $signed(i_pivot65_emscripten_compute_dom_pk_code103_b));
    assign i_pivot65_emscripten_compute_dom_pk_code103_c[0] = i_pivot65_emscripten_compute_dom_pk_code103_o[33];

    // i_acl_2357_v_emscripten_compute_dom_pk_code535(MUX,30)@2 + 1
    assign i_acl_2357_v_emscripten_compute_dom_pk_code535_s = i_pivot65_emscripten_compute_dom_pk_code103_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2357_v_emscripten_compute_dom_pk_code535_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2357_v_emscripten_compute_dom_pk_code535_s)
                1'b0 : i_acl_2357_v_emscripten_compute_dom_pk_code535_q <= i_acl_2356_v_emscripten_compute_dom_pk_code534_q;
                1'b1 : i_acl_2357_v_emscripten_compute_dom_pk_code535_q <= i_acl_2354_v_emscripten_compute_dom_pk_code532_q;
                default : i_acl_2357_v_emscripten_compute_dom_pk_code535_q <= 1'b0;
            endcase
        end
    end

    // i_pivot67_emscripten_compute_dom_pk_code51(COMPARE,670)@2 + 1
    assign i_pivot67_emscripten_compute_dom_pk_code51_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot67_emscripten_compute_dom_pk_code51_b = $unsigned({{2{c_i32_17444980441208_recast_x_q[31]}}, c_i32_17444980441208_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot67_emscripten_compute_dom_pk_code51_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot67_emscripten_compute_dom_pk_code51_o <= $unsigned($signed(i_pivot67_emscripten_compute_dom_pk_code51_a) - $signed(i_pivot67_emscripten_compute_dom_pk_code51_b));
        end
    end
    assign i_pivot67_emscripten_compute_dom_pk_code51_c[0] = i_pivot67_emscripten_compute_dom_pk_code51_o[33];

    // i_acl_2358_v_emscripten_compute_dom_pk_code536(MUX,32)@3
    assign i_acl_2358_v_emscripten_compute_dom_pk_code536_s = i_pivot67_emscripten_compute_dom_pk_code51_c;
    always @(i_acl_2358_v_emscripten_compute_dom_pk_code536_s or i_acl_2357_v_emscripten_compute_dom_pk_code535_q or i_acl_2353_v_emscripten_compute_dom_pk_code531_q)
    begin
        unique case (i_acl_2358_v_emscripten_compute_dom_pk_code536_s)
            1'b0 : i_acl_2358_v_emscripten_compute_dom_pk_code536_q = i_acl_2357_v_emscripten_compute_dom_pk_code535_q;
            1'b1 : i_acl_2358_v_emscripten_compute_dom_pk_code536_q = i_acl_2353_v_emscripten_compute_dom_pk_code531_q;
            default : i_acl_2358_v_emscripten_compute_dom_pk_code536_q = 1'b0;
        endcase
    end

    // i_acl_2358_emscripten_compute_dom_pk_code537(LOGICAL,31)@3
    assign i_acl_2358_emscripten_compute_dom_pk_code537_q = i_acl_2358_v_emscripten_compute_dom_pk_code536_q ^ VCC_q;

    // i_pivot69_emscripten_compute_dom_pk_code27(COMPARE,671)@2 + 1
    assign i_pivot69_emscripten_compute_dom_pk_code27_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot69_emscripten_compute_dom_pk_code27_b = $unsigned({{2{c_i32_18307067511196_recast_x_q[31]}}, c_i32_18307067511196_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot69_emscripten_compute_dom_pk_code27_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot69_emscripten_compute_dom_pk_code27_o <= $unsigned($signed(i_pivot69_emscripten_compute_dom_pk_code27_a) - $signed(i_pivot69_emscripten_compute_dom_pk_code27_b));
        end
    end
    assign i_pivot69_emscripten_compute_dom_pk_code27_c[0] = i_pivot69_emscripten_compute_dom_pk_code27_o[33];

    // i_acl_2359_emscripten_compute_dom_pk_code538(MUX,33)@3
    assign i_acl_2359_emscripten_compute_dom_pk_code538_s = i_pivot69_emscripten_compute_dom_pk_code27_c;
    always @(i_acl_2359_emscripten_compute_dom_pk_code538_s or i_acl_2358_emscripten_compute_dom_pk_code537_q or i_acl_2349_emscripten_compute_dom_pk_code527_q)
    begin
        unique case (i_acl_2359_emscripten_compute_dom_pk_code538_s)
            1'b0 : i_acl_2359_emscripten_compute_dom_pk_code538_q = i_acl_2358_emscripten_compute_dom_pk_code537_q;
            1'b1 : i_acl_2359_emscripten_compute_dom_pk_code538_q = i_acl_2349_emscripten_compute_dom_pk_code527_q;
            default : i_acl_2359_emscripten_compute_dom_pk_code538_q = 1'b0;
        endcase
    end

    // i_pivot75_emscripten_compute_dom_pk_code153(COMPARE,672)@2
    assign i_pivot75_emscripten_compute_dom_pk_code153_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot75_emscripten_compute_dom_pk_code153_b = $unsigned({{2{c_i32_11672765281259_recast_x_q[31]}}, c_i32_11672765281259_recast_x_q});
    assign i_pivot75_emscripten_compute_dom_pk_code153_o = $unsigned($signed(i_pivot75_emscripten_compute_dom_pk_code153_a) - $signed(i_pivot75_emscripten_compute_dom_pk_code153_b));
    assign i_pivot75_emscripten_compute_dom_pk_code153_c[0] = i_pivot75_emscripten_compute_dom_pk_code153_o[33];

    // i_acl_2360_v_emscripten_compute_dom_pk_code539(MUX,34)@2
    assign i_acl_2360_v_emscripten_compute_dom_pk_code539_s = i_pivot75_emscripten_compute_dom_pk_code153_c;
    always @(i_acl_2360_v_emscripten_compute_dom_pk_code539_s or i_switchleaf73_emscripten_compute_dom_pk_code304_q or i_switchleaf71_emscripten_compute_dom_pk_code355_q)
    begin
        unique case (i_acl_2360_v_emscripten_compute_dom_pk_code539_s)
            1'b0 : i_acl_2360_v_emscripten_compute_dom_pk_code539_q = i_switchleaf73_emscripten_compute_dom_pk_code304_q;
            1'b1 : i_acl_2360_v_emscripten_compute_dom_pk_code539_q = i_switchleaf71_emscripten_compute_dom_pk_code355_q;
            default : i_acl_2360_v_emscripten_compute_dom_pk_code539_q = 1'b0;
        endcase
    end

    // i_pivot83_emscripten_compute_dom_pk_code189(COMPARE,673)@2
    assign i_pivot83_emscripten_compute_dom_pk_code189_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot83_emscripten_compute_dom_pk_code189_b = $unsigned({{2{c_i32_9213978761277_recast_x_q[31]}}, c_i32_9213978761277_recast_x_q});
    assign i_pivot83_emscripten_compute_dom_pk_code189_o = $unsigned($signed(i_pivot83_emscripten_compute_dom_pk_code189_a) - $signed(i_pivot83_emscripten_compute_dom_pk_code189_b));
    assign i_pivot83_emscripten_compute_dom_pk_code189_c[0] = i_pivot83_emscripten_compute_dom_pk_code189_o[33];

    // i_acl_2361_v_emscripten_compute_dom_pk_code540(MUX,35)@2
    assign i_acl_2361_v_emscripten_compute_dom_pk_code540_s = i_pivot83_emscripten_compute_dom_pk_code189_c;
    always @(i_acl_2361_v_emscripten_compute_dom_pk_code540_s or i_switchleaf81_emscripten_compute_dom_pk_code428_q or i_switchleaf79_emscripten_compute_dom_pk_code432_q)
    begin
        unique case (i_acl_2361_v_emscripten_compute_dom_pk_code540_s)
            1'b0 : i_acl_2361_v_emscripten_compute_dom_pk_code540_q = i_switchleaf81_emscripten_compute_dom_pk_code428_q;
            1'b1 : i_acl_2361_v_emscripten_compute_dom_pk_code540_q = i_switchleaf79_emscripten_compute_dom_pk_code432_q;
            default : i_acl_2361_v_emscripten_compute_dom_pk_code540_q = 1'b0;
        endcase
    end

    // i_pivot85_emscripten_compute_dom_pk_code115(COMPARE,674)@2
    assign i_pivot85_emscripten_compute_dom_pk_code115_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot85_emscripten_compute_dom_pk_code115_b = $unsigned({{2{c_i32_9789277481240_recast_x_q[31]}}, c_i32_9789277481240_recast_x_q});
    assign i_pivot85_emscripten_compute_dom_pk_code115_o = $unsigned($signed(i_pivot85_emscripten_compute_dom_pk_code115_a) - $signed(i_pivot85_emscripten_compute_dom_pk_code115_b));
    assign i_pivot85_emscripten_compute_dom_pk_code115_c[0] = i_pivot85_emscripten_compute_dom_pk_code115_o[33];

    // i_acl_2362_v_emscripten_compute_dom_pk_code541(MUX,36)@2
    assign i_acl_2362_v_emscripten_compute_dom_pk_code541_s = i_pivot85_emscripten_compute_dom_pk_code115_c;
    always @(i_acl_2362_v_emscripten_compute_dom_pk_code541_s or i_acl_2361_v_emscripten_compute_dom_pk_code540_q or i_switchleaf77_emscripten_compute_dom_pk_code277_q)
    begin
        unique case (i_acl_2362_v_emscripten_compute_dom_pk_code541_s)
            1'b0 : i_acl_2362_v_emscripten_compute_dom_pk_code541_q = i_acl_2361_v_emscripten_compute_dom_pk_code540_q;
            1'b1 : i_acl_2362_v_emscripten_compute_dom_pk_code541_q = i_switchleaf77_emscripten_compute_dom_pk_code277_q;
            default : i_acl_2362_v_emscripten_compute_dom_pk_code541_q = 1'b0;
        endcase
    end

    // i_pivot87_emscripten_compute_dom_pk_code61(COMPARE,675)@2
    assign i_pivot87_emscripten_compute_dom_pk_code61_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot87_emscripten_compute_dom_pk_code61_b = $unsigned({{2{c_i32_11649618901213_recast_x_q[31]}}, c_i32_11649618901213_recast_x_q});
    assign i_pivot87_emscripten_compute_dom_pk_code61_o = $unsigned($signed(i_pivot87_emscripten_compute_dom_pk_code61_a) - $signed(i_pivot87_emscripten_compute_dom_pk_code61_b));
    assign i_pivot87_emscripten_compute_dom_pk_code61_c[0] = i_pivot87_emscripten_compute_dom_pk_code61_o[33];

    // i_acl_2363_v_emscripten_compute_dom_pk_code542(MUX,38)@2 + 1
    assign i_acl_2363_v_emscripten_compute_dom_pk_code542_s = i_pivot87_emscripten_compute_dom_pk_code61_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2363_v_emscripten_compute_dom_pk_code542_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2363_v_emscripten_compute_dom_pk_code542_s)
                1'b0 : i_acl_2363_v_emscripten_compute_dom_pk_code542_q <= i_acl_2362_v_emscripten_compute_dom_pk_code541_q;
                1'b1 : i_acl_2363_v_emscripten_compute_dom_pk_code542_q <= i_acl_2360_v_emscripten_compute_dom_pk_code539_q;
                default : i_acl_2363_v_emscripten_compute_dom_pk_code542_q <= 1'b0;
            endcase
        end
    end

    // i_acl_2363_emscripten_compute_dom_pk_code543(LOGICAL,37)@3
    assign i_acl_2363_emscripten_compute_dom_pk_code543_q = i_acl_2363_v_emscripten_compute_dom_pk_code542_q ^ VCC_q;

    // i_pivot93_emscripten_compute_dom_pk_code147(COMPARE,676)@2
    assign i_pivot93_emscripten_compute_dom_pk_code147_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot93_emscripten_compute_dom_pk_code147_b = $unsigned({{2{c_i32_9208624201256_recast_x_q[31]}}, c_i32_9208624201256_recast_x_q});
    assign i_pivot93_emscripten_compute_dom_pk_code147_o = $unsigned($signed(i_pivot93_emscripten_compute_dom_pk_code147_a) - $signed(i_pivot93_emscripten_compute_dom_pk_code147_b));
    assign i_pivot93_emscripten_compute_dom_pk_code147_c[0] = i_pivot93_emscripten_compute_dom_pk_code147_o[33];

    // i_acl_2364_v_emscripten_compute_dom_pk_code544(MUX,40)@2
    assign i_acl_2364_v_emscripten_compute_dom_pk_code544_s = i_pivot93_emscripten_compute_dom_pk_code147_c;
    always @(i_acl_2364_v_emscripten_compute_dom_pk_code544_s or i_switchleaf91_emscripten_compute_dom_pk_code344_q or i_switchleaf89_emscripten_compute_dom_pk_code289_q)
    begin
        unique case (i_acl_2364_v_emscripten_compute_dom_pk_code544_s)
            1'b0 : i_acl_2364_v_emscripten_compute_dom_pk_code544_q = i_switchleaf91_emscripten_compute_dom_pk_code344_q;
            1'b1 : i_acl_2364_v_emscripten_compute_dom_pk_code544_q = i_switchleaf89_emscripten_compute_dom_pk_code289_q;
            default : i_acl_2364_v_emscripten_compute_dom_pk_code544_q = 1'b0;
        endcase
    end

    // i_acl_2364_emscripten_compute_dom_pk_code545(LOGICAL,39)@2
    assign i_acl_2364_emscripten_compute_dom_pk_code545_q = i_acl_2364_v_emscripten_compute_dom_pk_code544_q ^ VCC_q;

    // i_switchleaf95_not_emscripten_compute_dom_pk_code295(LOGICAL,792)@2
    assign i_switchleaf95_not_emscripten_compute_dom_pk_code295_q = i_switchleaf95_emscripten_compute_dom_pk_code293_q ^ VCC_q;

    // i_switchleaf97_not_emscripten_compute_dom_pk_code398(LOGICAL,794)@2
    assign i_switchleaf97_not_emscripten_compute_dom_pk_code398_q = i_switchleaf97_emscripten_compute_dom_pk_code396_q ^ VCC_q;

    // i_acl_2365_emscripten_compute_dom_pk_code546(LOGICAL,41)@2
    assign i_acl_2365_emscripten_compute_dom_pk_code546_q = i_pivot99_emscripten_compute_dom_pk_code399_c ^ i_switchleaf97_not_emscripten_compute_dom_pk_code398_q;

    // i_acl_2366_emscripten_compute_dom_pk_code547(MUX,42)@2
    assign i_acl_2366_emscripten_compute_dom_pk_code547_s = i_pivot101_emscripten_compute_dom_pk_code167_c;
    always @(i_acl_2366_emscripten_compute_dom_pk_code547_s or i_acl_2365_emscripten_compute_dom_pk_code546_q or i_switchleaf95_not_emscripten_compute_dom_pk_code295_q)
    begin
        unique case (i_acl_2366_emscripten_compute_dom_pk_code547_s)
            1'b0 : i_acl_2366_emscripten_compute_dom_pk_code547_q = i_acl_2365_emscripten_compute_dom_pk_code546_q;
            1'b1 : i_acl_2366_emscripten_compute_dom_pk_code547_q = i_switchleaf95_not_emscripten_compute_dom_pk_code295_q;
            default : i_acl_2366_emscripten_compute_dom_pk_code547_q = 1'b0;
        endcase
    end

    // i_pivot103_emscripten_compute_dom_pk_code67(COMPARE,525)@2
    assign i_pivot103_emscripten_compute_dom_pk_code67_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot103_emscripten_compute_dom_pk_code67_b = $unsigned({{2{c_i32_9202874291216_recast_x_q[31]}}, c_i32_9202874291216_recast_x_q});
    assign i_pivot103_emscripten_compute_dom_pk_code67_o = $unsigned($signed(i_pivot103_emscripten_compute_dom_pk_code67_a) - $signed(i_pivot103_emscripten_compute_dom_pk_code67_b));
    assign i_pivot103_emscripten_compute_dom_pk_code67_c[0] = i_pivot103_emscripten_compute_dom_pk_code67_o[33];

    // i_acl_2367_emscripten_compute_dom_pk_code548(MUX,43)@2 + 1
    assign i_acl_2367_emscripten_compute_dom_pk_code548_s = i_pivot103_emscripten_compute_dom_pk_code67_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2367_emscripten_compute_dom_pk_code548_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2367_emscripten_compute_dom_pk_code548_s)
                1'b0 : i_acl_2367_emscripten_compute_dom_pk_code548_q <= i_acl_2366_emscripten_compute_dom_pk_code547_q;
                1'b1 : i_acl_2367_emscripten_compute_dom_pk_code548_q <= i_acl_2364_emscripten_compute_dom_pk_code545_q;
                default : i_acl_2367_emscripten_compute_dom_pk_code548_q <= 1'b0;
            endcase
        end
    end

    // i_pivot105_emscripten_compute_dom_pk_code31(COMPARE,526)@2 + 1
    assign i_pivot105_emscripten_compute_dom_pk_code31_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot105_emscripten_compute_dom_pk_code31_b = $unsigned({{2{c_i32_9209306721198_recast_x_q[31]}}, c_i32_9209306721198_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot105_emscripten_compute_dom_pk_code31_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot105_emscripten_compute_dom_pk_code31_o <= $unsigned($signed(i_pivot105_emscripten_compute_dom_pk_code31_a) - $signed(i_pivot105_emscripten_compute_dom_pk_code31_b));
        end
    end
    assign i_pivot105_emscripten_compute_dom_pk_code31_c[0] = i_pivot105_emscripten_compute_dom_pk_code31_o[33];

    // i_acl_2368_emscripten_compute_dom_pk_code549(MUX,44)@3
    assign i_acl_2368_emscripten_compute_dom_pk_code549_s = i_pivot105_emscripten_compute_dom_pk_code31_c;
    always @(i_acl_2368_emscripten_compute_dom_pk_code549_s or i_acl_2367_emscripten_compute_dom_pk_code548_q or i_acl_2363_emscripten_compute_dom_pk_code543_q)
    begin
        unique case (i_acl_2368_emscripten_compute_dom_pk_code549_s)
            1'b0 : i_acl_2368_emscripten_compute_dom_pk_code549_q = i_acl_2367_emscripten_compute_dom_pk_code548_q;
            1'b1 : i_acl_2368_emscripten_compute_dom_pk_code549_q = i_acl_2363_emscripten_compute_dom_pk_code543_q;
            default : i_acl_2368_emscripten_compute_dom_pk_code549_q = 1'b0;
        endcase
    end

    // i_not_pivot129_emscripten_compute_dom_pk_code554(LOGICAL,521)@3
    assign i_not_pivot129_emscripten_compute_dom_pk_code554_q = i_pivot129_emscripten_compute_dom_pk_code65_c ^ VCC_q;

    // i_pivot123_emscripten_compute_dom_pk_code143(COMPARE,533)@2
    assign i_pivot123_emscripten_compute_dom_pk_code143_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot123_emscripten_compute_dom_pk_code143_b = $unsigned({{2{c_i32_9192175221254_recast_x_q[31]}}, c_i32_9192175221254_recast_x_q});
    assign i_pivot123_emscripten_compute_dom_pk_code143_o = $unsigned($signed(i_pivot123_emscripten_compute_dom_pk_code143_a) - $signed(i_pivot123_emscripten_compute_dom_pk_code143_b));
    assign i_pivot123_emscripten_compute_dom_pk_code143_c[0] = i_pivot123_emscripten_compute_dom_pk_code143_o[33];

    // i_acl_2369_v_emscripten_compute_dom_pk_code550(MUX,45)@2
    assign i_acl_2369_v_emscripten_compute_dom_pk_code550_s = i_pivot123_emscripten_compute_dom_pk_code143_c;
    always @(i_acl_2369_v_emscripten_compute_dom_pk_code550_s or i_switchleaf121_emscripten_compute_dom_pk_code340_q or i_switchleaf119_emscripten_compute_dom_pk_code265_q)
    begin
        unique case (i_acl_2369_v_emscripten_compute_dom_pk_code550_s)
            1'b0 : i_acl_2369_v_emscripten_compute_dom_pk_code550_q = i_switchleaf121_emscripten_compute_dom_pk_code340_q;
            1'b1 : i_acl_2369_v_emscripten_compute_dom_pk_code550_q = i_switchleaf119_emscripten_compute_dom_pk_code265_q;
            default : i_acl_2369_v_emscripten_compute_dom_pk_code550_q = 1'b0;
        endcase
    end

    // i_pivot125_emscripten_compute_dom_pk_code169(COMPARE,534)@2
    assign i_pivot125_emscripten_compute_dom_pk_code169_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot125_emscripten_compute_dom_pk_code169_b = $unsigned({{2{c_i32_9195193641267_recast_x_q[31]}}, c_i32_9195193641267_recast_x_q});
    assign i_pivot125_emscripten_compute_dom_pk_code169_o = $unsigned($signed(i_pivot125_emscripten_compute_dom_pk_code169_a) - $signed(i_pivot125_emscripten_compute_dom_pk_code169_b));
    assign i_pivot125_emscripten_compute_dom_pk_code169_c[0] = i_pivot125_emscripten_compute_dom_pk_code169_o[33];

    // i_acl_2370_v_emscripten_compute_dom_pk_code551(MUX,47)@2
    assign i_acl_2370_v_emscripten_compute_dom_pk_code551_s = i_pivot125_emscripten_compute_dom_pk_code169_c;
    always @(i_acl_2370_v_emscripten_compute_dom_pk_code551_s or i_acl_2369_v_emscripten_compute_dom_pk_code550_q or i_switchleaf117_emscripten_compute_dom_pk_code401_q)
    begin
        unique case (i_acl_2370_v_emscripten_compute_dom_pk_code551_s)
            1'b0 : i_acl_2370_v_emscripten_compute_dom_pk_code551_q = i_acl_2369_v_emscripten_compute_dom_pk_code550_q;
            1'b1 : i_acl_2370_v_emscripten_compute_dom_pk_code551_q = i_switchleaf117_emscripten_compute_dom_pk_code401_q;
            default : i_acl_2370_v_emscripten_compute_dom_pk_code551_q = 1'b0;
        endcase
    end

    // i_acl_2370_emscripten_compute_dom_pk_code552(LOGICAL,46)@2
    assign i_acl_2370_emscripten_compute_dom_pk_code552_q = i_acl_2370_v_emscripten_compute_dom_pk_code551_q ^ VCC_q;

    // i_acl_2371_emscripten_compute_dom_pk_code553(LOGICAL,48)@2 + 1
    assign i_acl_2371_emscripten_compute_dom_pk_code553_qi = i_pivot127_emscripten_compute_dom_pk_code165_c ^ i_acl_2370_emscripten_compute_dom_pk_code552_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2371_emscripten_compute_dom_pk_code553_delay ( .xin(i_acl_2371_emscripten_compute_dom_pk_code553_qi), .xout(i_acl_2371_emscripten_compute_dom_pk_code553_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_acl_2372_emscripten_compute_dom_pk_code555(LOGICAL,49)@3
    assign i_acl_2372_emscripten_compute_dom_pk_code555_q = i_acl_2371_emscripten_compute_dom_pk_code553_q & i_not_pivot129_emscripten_compute_dom_pk_code554_q;

    // i_acl_2373_emscripten_compute_dom_pk_code556(MUX,50)@3
    assign i_acl_2373_emscripten_compute_dom_pk_code556_s = i_pivot131_emscripten_compute_dom_pk_code29_c;
    always @(i_acl_2373_emscripten_compute_dom_pk_code556_s or i_acl_2372_emscripten_compute_dom_pk_code555_q or i_acl_2368_emscripten_compute_dom_pk_code549_q)
    begin
        unique case (i_acl_2373_emscripten_compute_dom_pk_code556_s)
            1'b0 : i_acl_2373_emscripten_compute_dom_pk_code556_q = i_acl_2372_emscripten_compute_dom_pk_code555_q;
            1'b1 : i_acl_2373_emscripten_compute_dom_pk_code556_q = i_acl_2368_emscripten_compute_dom_pk_code549_q;
            default : i_acl_2373_emscripten_compute_dom_pk_code556_q = 1'b0;
        endcase
    end

    // i_pivot133_emscripten_compute_dom_pk_code17(COMPARE,538)@2 + 1
    assign i_pivot133_emscripten_compute_dom_pk_code17_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot133_emscripten_compute_dom_pk_code17_b = $unsigned({{2{c_i32_11751411071191_recast_x_q[31]}}, c_i32_11751411071191_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot133_emscripten_compute_dom_pk_code17_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot133_emscripten_compute_dom_pk_code17_o <= $unsigned($signed(i_pivot133_emscripten_compute_dom_pk_code17_a) - $signed(i_pivot133_emscripten_compute_dom_pk_code17_b));
        end
    end
    assign i_pivot133_emscripten_compute_dom_pk_code17_c[0] = i_pivot133_emscripten_compute_dom_pk_code17_o[33];

    // i_acl_2374_emscripten_compute_dom_pk_code557(MUX,51)@3
    assign i_acl_2374_emscripten_compute_dom_pk_code557_s = i_pivot133_emscripten_compute_dom_pk_code17_c;
    always @(i_acl_2374_emscripten_compute_dom_pk_code557_s or i_acl_2373_emscripten_compute_dom_pk_code556_q or i_acl_2359_emscripten_compute_dom_pk_code538_q)
    begin
        unique case (i_acl_2374_emscripten_compute_dom_pk_code557_s)
            1'b0 : i_acl_2374_emscripten_compute_dom_pk_code557_q = i_acl_2373_emscripten_compute_dom_pk_code556_q;
            1'b1 : i_acl_2374_emscripten_compute_dom_pk_code557_q = i_acl_2359_emscripten_compute_dom_pk_code538_q;
            default : i_acl_2374_emscripten_compute_dom_pk_code557_q = 1'b0;
        endcase
    end

    // i_pivot139_emscripten_compute_dom_pk_code171(COMPARE,539)@2
    assign i_pivot139_emscripten_compute_dom_pk_code171_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot139_emscripten_compute_dom_pk_code171_b = $unsigned({{2{c_i32_8401000371268_recast_x_q[31]}}, c_i32_8401000371268_recast_x_q});
    assign i_pivot139_emscripten_compute_dom_pk_code171_o = $unsigned($signed(i_pivot139_emscripten_compute_dom_pk_code171_a) - $signed(i_pivot139_emscripten_compute_dom_pk_code171_b));
    assign i_pivot139_emscripten_compute_dom_pk_code171_c[0] = i_pivot139_emscripten_compute_dom_pk_code171_o[33];

    // i_acl_2375_v_emscripten_compute_dom_pk_code558(MUX,52)@2
    assign i_acl_2375_v_emscripten_compute_dom_pk_code558_s = i_pivot139_emscripten_compute_dom_pk_code171_c;
    always @(i_acl_2375_v_emscripten_compute_dom_pk_code558_s or i_switchleaf137_emscripten_compute_dom_pk_code403_q or i_switchleaf135_emscripten_compute_dom_pk_code380_q)
    begin
        unique case (i_acl_2375_v_emscripten_compute_dom_pk_code558_s)
            1'b0 : i_acl_2375_v_emscripten_compute_dom_pk_code558_q = i_switchleaf137_emscripten_compute_dom_pk_code403_q;
            1'b1 : i_acl_2375_v_emscripten_compute_dom_pk_code558_q = i_switchleaf135_emscripten_compute_dom_pk_code380_q;
            default : i_acl_2375_v_emscripten_compute_dom_pk_code558_q = 1'b0;
        endcase
    end

    // i_pivot145_emscripten_compute_dom_pk_code211(COMPARE,540)@2
    assign i_pivot145_emscripten_compute_dom_pk_code211_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot145_emscripten_compute_dom_pk_code211_b = $unsigned({{2{c_i32_5359145471288_recast_x_q[31]}}, c_i32_5359145471288_recast_x_q});
    assign i_pivot145_emscripten_compute_dom_pk_code211_o = $unsigned($signed(i_pivot145_emscripten_compute_dom_pk_code211_a) - $signed(i_pivot145_emscripten_compute_dom_pk_code211_b));
    assign i_pivot145_emscripten_compute_dom_pk_code211_c[0] = i_pivot145_emscripten_compute_dom_pk_code211_o[33];

    // i_acl_2376_v_emscripten_compute_dom_pk_code559(MUX,53)@2
    assign i_acl_2376_v_emscripten_compute_dom_pk_code559_s = i_pivot145_emscripten_compute_dom_pk_code211_c;
    always @(i_acl_2376_v_emscripten_compute_dom_pk_code559_s or i_switchleaf143_emscripten_compute_dom_pk_code263_q or i_switchleaf141_emscripten_compute_dom_pk_code471_q)
    begin
        unique case (i_acl_2376_v_emscripten_compute_dom_pk_code559_s)
            1'b0 : i_acl_2376_v_emscripten_compute_dom_pk_code559_q = i_switchleaf143_emscripten_compute_dom_pk_code263_q;
            1'b1 : i_acl_2376_v_emscripten_compute_dom_pk_code559_q = i_switchleaf141_emscripten_compute_dom_pk_code471_q;
            default : i_acl_2376_v_emscripten_compute_dom_pk_code559_q = 1'b0;
        endcase
    end

    // i_pivot147_emscripten_compute_dom_pk_code83(COMPARE,541)@2
    assign i_pivot147_emscripten_compute_dom_pk_code83_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot147_emscripten_compute_dom_pk_code83_b = $unsigned({{2{c_i32_5550409001224_recast_x_q[31]}}, c_i32_5550409001224_recast_x_q});
    assign i_pivot147_emscripten_compute_dom_pk_code83_o = $unsigned($signed(i_pivot147_emscripten_compute_dom_pk_code83_a) - $signed(i_pivot147_emscripten_compute_dom_pk_code83_b));
    assign i_pivot147_emscripten_compute_dom_pk_code83_c[0] = i_pivot147_emscripten_compute_dom_pk_code83_o[33];

    // i_acl_2377_v_emscripten_compute_dom_pk_code560(MUX,54)@2
    assign i_acl_2377_v_emscripten_compute_dom_pk_code560_s = i_pivot147_emscripten_compute_dom_pk_code83_c;
    always @(i_acl_2377_v_emscripten_compute_dom_pk_code560_s or i_acl_2376_v_emscripten_compute_dom_pk_code559_q or i_acl_2375_v_emscripten_compute_dom_pk_code558_q)
    begin
        unique case (i_acl_2377_v_emscripten_compute_dom_pk_code560_s)
            1'b0 : i_acl_2377_v_emscripten_compute_dom_pk_code560_q = i_acl_2376_v_emscripten_compute_dom_pk_code559_q;
            1'b1 : i_acl_2377_v_emscripten_compute_dom_pk_code560_q = i_acl_2375_v_emscripten_compute_dom_pk_code558_q;
            default : i_acl_2377_v_emscripten_compute_dom_pk_code560_q = 1'b0;
        endcase
    end

    // i_pivot153_emscripten_compute_dom_pk_code207(COMPARE,542)@2
    assign i_pivot153_emscripten_compute_dom_pk_code207_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot153_emscripten_compute_dom_pk_code207_b = $unsigned({{2{c_i32_3645759871286_recast_x_q[31]}}, c_i32_3645759871286_recast_x_q});
    assign i_pivot153_emscripten_compute_dom_pk_code207_o = $unsigned($signed(i_pivot153_emscripten_compute_dom_pk_code207_a) - $signed(i_pivot153_emscripten_compute_dom_pk_code207_b));
    assign i_pivot153_emscripten_compute_dom_pk_code207_c[0] = i_pivot153_emscripten_compute_dom_pk_code207_o[33];

    // i_acl_2378_v_emscripten_compute_dom_pk_code561(MUX,55)@2
    assign i_acl_2378_v_emscripten_compute_dom_pk_code561_s = i_pivot153_emscripten_compute_dom_pk_code207_c;
    always @(i_acl_2378_v_emscripten_compute_dom_pk_code561_s or i_switchleaf151_emscripten_compute_dom_pk_code320_q or i_switchleaf149_emscripten_compute_dom_pk_code467_q)
    begin
        unique case (i_acl_2378_v_emscripten_compute_dom_pk_code561_s)
            1'b0 : i_acl_2378_v_emscripten_compute_dom_pk_code561_q = i_switchleaf151_emscripten_compute_dom_pk_code320_q;
            1'b1 : i_acl_2378_v_emscripten_compute_dom_pk_code561_q = i_switchleaf149_emscripten_compute_dom_pk_code467_q;
            default : i_acl_2378_v_emscripten_compute_dom_pk_code561_q = 1'b0;
        endcase
    end

    // i_pivot161_emscripten_compute_dom_pk_code141(COMPARE,543)@1 + 1
    assign i_pivot161_emscripten_compute_dom_pk_code141_a = $unsigned({{2{i_select2341_emscripten_compute_dom_pk_code10_q[31]}}, i_select2341_emscripten_compute_dom_pk_code10_q});
    assign i_pivot161_emscripten_compute_dom_pk_code141_b = $unsigned({{2{c_i32_312272831253_recast_x_q[31]}}, c_i32_312272831253_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot161_emscripten_compute_dom_pk_code141_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot161_emscripten_compute_dom_pk_code141_o <= $unsigned($signed(i_pivot161_emscripten_compute_dom_pk_code141_a) - $signed(i_pivot161_emscripten_compute_dom_pk_code141_b));
        end
    end
    assign i_pivot161_emscripten_compute_dom_pk_code141_c[0] = i_pivot161_emscripten_compute_dom_pk_code141_o[33];

    // i_acl_2379_v_emscripten_compute_dom_pk_code562(MUX,56)@2
    assign i_acl_2379_v_emscripten_compute_dom_pk_code562_s = i_pivot161_emscripten_compute_dom_pk_code141_c;
    always @(i_acl_2379_v_emscripten_compute_dom_pk_code562_s or i_switchleaf159_emscripten_compute_dom_pk_code334_q or i_switchleaf157_emscripten_compute_dom_pk_code324_q)
    begin
        unique case (i_acl_2379_v_emscripten_compute_dom_pk_code562_s)
            1'b0 : i_acl_2379_v_emscripten_compute_dom_pk_code562_q = i_switchleaf159_emscripten_compute_dom_pk_code334_q;
            1'b1 : i_acl_2379_v_emscripten_compute_dom_pk_code562_q = i_switchleaf157_emscripten_compute_dom_pk_code324_q;
            default : i_acl_2379_v_emscripten_compute_dom_pk_code562_q = 1'b0;
        endcase
    end

    // i_pivot163_emscripten_compute_dom_pk_code129(COMPARE,544)@2
    assign i_pivot163_emscripten_compute_dom_pk_code129_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot163_emscripten_compute_dom_pk_code129_b = $unsigned({{2{c_i32_2192344361247_recast_x_q[31]}}, c_i32_2192344361247_recast_x_q});
    assign i_pivot163_emscripten_compute_dom_pk_code129_o = $unsigned($signed(i_pivot163_emscripten_compute_dom_pk_code129_a) - $signed(i_pivot163_emscripten_compute_dom_pk_code129_b));
    assign i_pivot163_emscripten_compute_dom_pk_code129_c[0] = i_pivot163_emscripten_compute_dom_pk_code129_o[33];

    // i_acl_2380_v_emscripten_compute_dom_pk_code563(MUX,57)@2
    assign i_acl_2380_v_emscripten_compute_dom_pk_code563_s = i_pivot163_emscripten_compute_dom_pk_code129_c;
    always @(i_acl_2380_v_emscripten_compute_dom_pk_code563_s or i_acl_2379_v_emscripten_compute_dom_pk_code562_q or i_switchleaf155_emscripten_compute_dom_pk_code308_q)
    begin
        unique case (i_acl_2380_v_emscripten_compute_dom_pk_code563_s)
            1'b0 : i_acl_2380_v_emscripten_compute_dom_pk_code563_q = i_acl_2379_v_emscripten_compute_dom_pk_code562_q;
            1'b1 : i_acl_2380_v_emscripten_compute_dom_pk_code563_q = i_switchleaf155_emscripten_compute_dom_pk_code308_q;
            default : i_acl_2380_v_emscripten_compute_dom_pk_code563_q = 1'b0;
        endcase
    end

    // i_pivot165_emscripten_compute_dom_pk_code79(COMPARE,545)@2
    assign i_pivot165_emscripten_compute_dom_pk_code79_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot165_emscripten_compute_dom_pk_code79_b = $unsigned({{2{c_i32_3645707221222_recast_x_q[31]}}, c_i32_3645707221222_recast_x_q});
    assign i_pivot165_emscripten_compute_dom_pk_code79_o = $unsigned($signed(i_pivot165_emscripten_compute_dom_pk_code79_a) - $signed(i_pivot165_emscripten_compute_dom_pk_code79_b));
    assign i_pivot165_emscripten_compute_dom_pk_code79_c[0] = i_pivot165_emscripten_compute_dom_pk_code79_o[33];

    // i_acl_2381_v_emscripten_compute_dom_pk_code564(MUX,58)@2
    assign i_acl_2381_v_emscripten_compute_dom_pk_code564_s = i_pivot165_emscripten_compute_dom_pk_code79_c;
    always @(i_acl_2381_v_emscripten_compute_dom_pk_code564_s or i_acl_2380_v_emscripten_compute_dom_pk_code563_q or i_acl_2378_v_emscripten_compute_dom_pk_code561_q)
    begin
        unique case (i_acl_2381_v_emscripten_compute_dom_pk_code564_s)
            1'b0 : i_acl_2381_v_emscripten_compute_dom_pk_code564_q = i_acl_2380_v_emscripten_compute_dom_pk_code563_q;
            1'b1 : i_acl_2381_v_emscripten_compute_dom_pk_code564_q = i_acl_2378_v_emscripten_compute_dom_pk_code561_q;
            default : i_acl_2381_v_emscripten_compute_dom_pk_code564_q = 1'b0;
        endcase
    end

    // i_pivot167_emscripten_compute_dom_pk_code37(COMPARE,546)@2
    assign i_pivot167_emscripten_compute_dom_pk_code37_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot167_emscripten_compute_dom_pk_code37_b = $unsigned({{2{c_i32_5310654601201_recast_x_q[31]}}, c_i32_5310654601201_recast_x_q});
    assign i_pivot167_emscripten_compute_dom_pk_code37_o = $unsigned($signed(i_pivot167_emscripten_compute_dom_pk_code37_a) - $signed(i_pivot167_emscripten_compute_dom_pk_code37_b));
    assign i_pivot167_emscripten_compute_dom_pk_code37_c[0] = i_pivot167_emscripten_compute_dom_pk_code37_o[33];

    // i_acl_2382_v_emscripten_compute_dom_pk_code565(MUX,59)@2 + 1
    assign i_acl_2382_v_emscripten_compute_dom_pk_code565_s = i_pivot167_emscripten_compute_dom_pk_code37_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2382_v_emscripten_compute_dom_pk_code565_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2382_v_emscripten_compute_dom_pk_code565_s)
                1'b0 : i_acl_2382_v_emscripten_compute_dom_pk_code565_q <= i_acl_2381_v_emscripten_compute_dom_pk_code564_q;
                1'b1 : i_acl_2382_v_emscripten_compute_dom_pk_code565_q <= i_acl_2377_v_emscripten_compute_dom_pk_code560_q;
                default : i_acl_2382_v_emscripten_compute_dom_pk_code565_q <= 1'b0;
            endcase
        end
    end

    // i_pivot173_emscripten_compute_dom_pk_code109(COMPARE,547)@2
    assign i_pivot173_emscripten_compute_dom_pk_code109_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot173_emscripten_compute_dom_pk_code109_b = $unsigned({{2{c_i32_1893340761237_recast_x_q[31]}}, c_i32_1893340761237_recast_x_q});
    assign i_pivot173_emscripten_compute_dom_pk_code109_o = $unsigned($signed(i_pivot173_emscripten_compute_dom_pk_code109_a) - $signed(i_pivot173_emscripten_compute_dom_pk_code109_b));
    assign i_pivot173_emscripten_compute_dom_pk_code109_c[0] = i_pivot173_emscripten_compute_dom_pk_code109_o[33];

    // i_acl_2383_v_emscripten_compute_dom_pk_code566(MUX,60)@2
    assign i_acl_2383_v_emscripten_compute_dom_pk_code566_s = i_pivot173_emscripten_compute_dom_pk_code109_c;
    always @(i_acl_2383_v_emscripten_compute_dom_pk_code566_s or i_switchleaf171_emscripten_compute_dom_pk_code251_q or i_switchleaf169_emscripten_compute_dom_pk_code255_q)
    begin
        unique case (i_acl_2383_v_emscripten_compute_dom_pk_code566_s)
            1'b0 : i_acl_2383_v_emscripten_compute_dom_pk_code566_q = i_switchleaf171_emscripten_compute_dom_pk_code251_q;
            1'b1 : i_acl_2383_v_emscripten_compute_dom_pk_code566_q = i_switchleaf169_emscripten_compute_dom_pk_code255_q;
            default : i_acl_2383_v_emscripten_compute_dom_pk_code566_q = 1'b0;
        endcase
    end

    // i_pivot181_emscripten_compute_dom_pk_code197(COMPARE,549)@2
    assign i_pivot181_emscripten_compute_dom_pk_code197_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot181_emscripten_compute_dom_pk_code197_b = $unsigned({{2{c_i32_6491723641281_recast_x_q[31]}}, c_i32_6491723641281_recast_x_q});
    assign i_pivot181_emscripten_compute_dom_pk_code197_o = $unsigned($signed(i_pivot181_emscripten_compute_dom_pk_code197_a) - $signed(i_pivot181_emscripten_compute_dom_pk_code197_b));
    assign i_pivot181_emscripten_compute_dom_pk_code197_c[0] = i_pivot181_emscripten_compute_dom_pk_code197_o[33];

    // i_acl_2384_v_emscripten_compute_dom_pk_code567(MUX,61)@2
    assign i_acl_2384_v_emscripten_compute_dom_pk_code567_s = i_pivot181_emscripten_compute_dom_pk_code197_c;
    always @(i_acl_2384_v_emscripten_compute_dom_pk_code567_s or i_switchleaf179_emscripten_compute_dom_pk_code449_q or i_switchleaf177_emscripten_compute_dom_pk_code378_q)
    begin
        unique case (i_acl_2384_v_emscripten_compute_dom_pk_code567_s)
            1'b0 : i_acl_2384_v_emscripten_compute_dom_pk_code567_q = i_switchleaf179_emscripten_compute_dom_pk_code449_q;
            1'b1 : i_acl_2384_v_emscripten_compute_dom_pk_code567_q = i_switchleaf177_emscripten_compute_dom_pk_code378_q;
            default : i_acl_2384_v_emscripten_compute_dom_pk_code567_q = 1'b0;
        endcase
    end

    // i_pivot183_emscripten_compute_dom_pk_code127(COMPARE,550)@2
    assign i_pivot183_emscripten_compute_dom_pk_code127_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot183_emscripten_compute_dom_pk_code127_b = $unsigned({{2{c_i32_3816254001246_recast_x_q[31]}}, c_i32_3816254001246_recast_x_q});
    assign i_pivot183_emscripten_compute_dom_pk_code127_o = $unsigned($signed(i_pivot183_emscripten_compute_dom_pk_code127_a) - $signed(i_pivot183_emscripten_compute_dom_pk_code127_b));
    assign i_pivot183_emscripten_compute_dom_pk_code127_c[0] = i_pivot183_emscripten_compute_dom_pk_code127_o[33];

    // i_acl_2385_v_emscripten_compute_dom_pk_code568(MUX,62)@2
    assign i_acl_2385_v_emscripten_compute_dom_pk_code568_s = i_pivot183_emscripten_compute_dom_pk_code127_c;
    always @(i_acl_2385_v_emscripten_compute_dom_pk_code568_s or i_acl_2384_v_emscripten_compute_dom_pk_code567_q or i_switchleaf175_emscripten_compute_dom_pk_code306_q)
    begin
        unique case (i_acl_2385_v_emscripten_compute_dom_pk_code568_s)
            1'b0 : i_acl_2385_v_emscripten_compute_dom_pk_code568_q = i_acl_2384_v_emscripten_compute_dom_pk_code567_q;
            1'b1 : i_acl_2385_v_emscripten_compute_dom_pk_code568_q = i_switchleaf175_emscripten_compute_dom_pk_code306_q;
            default : i_acl_2385_v_emscripten_compute_dom_pk_code568_q = 1'b0;
        endcase
    end

    // i_pivot185_emscripten_compute_dom_pk_code53(COMPARE,551)@2
    assign i_pivot185_emscripten_compute_dom_pk_code53_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot185_emscripten_compute_dom_pk_code53_b = $unsigned({{2{c_i32_3594501281209_recast_x_q[31]}}, c_i32_3594501281209_recast_x_q});
    assign i_pivot185_emscripten_compute_dom_pk_code53_o = $unsigned($signed(i_pivot185_emscripten_compute_dom_pk_code53_a) - $signed(i_pivot185_emscripten_compute_dom_pk_code53_b));
    assign i_pivot185_emscripten_compute_dom_pk_code53_c[0] = i_pivot185_emscripten_compute_dom_pk_code53_o[33];

    // i_acl_2386_v_emscripten_compute_dom_pk_code569(MUX,63)@2 + 1
    assign i_acl_2386_v_emscripten_compute_dom_pk_code569_s = i_pivot185_emscripten_compute_dom_pk_code53_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2386_v_emscripten_compute_dom_pk_code569_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2386_v_emscripten_compute_dom_pk_code569_s)
                1'b0 : i_acl_2386_v_emscripten_compute_dom_pk_code569_q <= i_acl_2385_v_emscripten_compute_dom_pk_code568_q;
                1'b1 : i_acl_2386_v_emscripten_compute_dom_pk_code569_q <= i_acl_2383_v_emscripten_compute_dom_pk_code566_q;
                default : i_acl_2386_v_emscripten_compute_dom_pk_code569_q <= 1'b0;
            endcase
        end
    end

    // i_pivot191_emscripten_compute_dom_pk_code201(COMPARE,552)@2
    assign i_pivot191_emscripten_compute_dom_pk_code201_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot191_emscripten_compute_dom_pk_code201_b = $unsigned({{2{c_i32_7091658371283_recast_x_q[31]}}, c_i32_7091658371283_recast_x_q});
    assign i_pivot191_emscripten_compute_dom_pk_code201_o = $unsigned($signed(i_pivot191_emscripten_compute_dom_pk_code201_a) - $signed(i_pivot191_emscripten_compute_dom_pk_code201_b));
    assign i_pivot191_emscripten_compute_dom_pk_code201_c[0] = i_pivot191_emscripten_compute_dom_pk_code201_o[33];

    // i_acl_2387_v_emscripten_compute_dom_pk_code570(MUX,64)@2
    assign i_acl_2387_v_emscripten_compute_dom_pk_code570_s = i_pivot191_emscripten_compute_dom_pk_code201_c;
    always @(i_acl_2387_v_emscripten_compute_dom_pk_code570_s or i_switchleaf189_emscripten_compute_dom_pk_code322_q or i_switchleaf187_emscripten_compute_dom_pk_code455_q)
    begin
        unique case (i_acl_2387_v_emscripten_compute_dom_pk_code570_s)
            1'b0 : i_acl_2387_v_emscripten_compute_dom_pk_code570_q = i_switchleaf189_emscripten_compute_dom_pk_code322_q;
            1'b1 : i_acl_2387_v_emscripten_compute_dom_pk_code570_q = i_switchleaf187_emscripten_compute_dom_pk_code455_q;
            default : i_acl_2387_v_emscripten_compute_dom_pk_code570_q = 1'b0;
        endcase
    end

    // i_pivot199_emscripten_compute_dom_pk_code145(COMPARE,553)@2
    assign i_pivot199_emscripten_compute_dom_pk_code145_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot199_emscripten_compute_dom_pk_code145_b = $unsigned({{2{c_i32_7191104441255_recast_x_q[31]}}, c_i32_7191104441255_recast_x_q});
    assign i_pivot199_emscripten_compute_dom_pk_code145_o = $unsigned($signed(i_pivot199_emscripten_compute_dom_pk_code145_a) - $signed(i_pivot199_emscripten_compute_dom_pk_code145_b));
    assign i_pivot199_emscripten_compute_dom_pk_code145_c[0] = i_pivot199_emscripten_compute_dom_pk_code145_o[33];

    // i_acl_2388_v_emscripten_compute_dom_pk_code571(MUX,65)@2
    assign i_acl_2388_v_emscripten_compute_dom_pk_code571_s = i_pivot199_emscripten_compute_dom_pk_code145_c;
    always @(i_acl_2388_v_emscripten_compute_dom_pk_code571_s or i_switchleaf197_emscripten_compute_dom_pk_code342_q or i_switchleaf195_emscripten_compute_dom_pk_code328_q)
    begin
        unique case (i_acl_2388_v_emscripten_compute_dom_pk_code571_s)
            1'b0 : i_acl_2388_v_emscripten_compute_dom_pk_code571_q = i_switchleaf197_emscripten_compute_dom_pk_code342_q;
            1'b1 : i_acl_2388_v_emscripten_compute_dom_pk_code571_q = i_switchleaf195_emscripten_compute_dom_pk_code328_q;
            default : i_acl_2388_v_emscripten_compute_dom_pk_code571_q = 1'b0;
        endcase
    end

    // i_pivot201_emscripten_compute_dom_pk_code131(COMPARE,554)@2
    assign i_pivot201_emscripten_compute_dom_pk_code131_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot201_emscripten_compute_dom_pk_code131_b = $unsigned({{2{c_i32_7184633561248_recast_x_q[31]}}, c_i32_7184633561248_recast_x_q});
    assign i_pivot201_emscripten_compute_dom_pk_code131_o = $unsigned($signed(i_pivot201_emscripten_compute_dom_pk_code131_a) - $signed(i_pivot201_emscripten_compute_dom_pk_code131_b));
    assign i_pivot201_emscripten_compute_dom_pk_code131_c[0] = i_pivot201_emscripten_compute_dom_pk_code131_o[33];

    // i_acl_2389_v_emscripten_compute_dom_pk_code572(MUX,66)@2
    assign i_acl_2389_v_emscripten_compute_dom_pk_code572_s = i_pivot201_emscripten_compute_dom_pk_code131_c;
    always @(i_acl_2389_v_emscripten_compute_dom_pk_code572_s or i_acl_2388_v_emscripten_compute_dom_pk_code571_q or i_switchleaf193_emscripten_compute_dom_pk_code310_q)
    begin
        unique case (i_acl_2389_v_emscripten_compute_dom_pk_code572_s)
            1'b0 : i_acl_2389_v_emscripten_compute_dom_pk_code572_q = i_acl_2388_v_emscripten_compute_dom_pk_code571_q;
            1'b1 : i_acl_2389_v_emscripten_compute_dom_pk_code572_q = i_switchleaf193_emscripten_compute_dom_pk_code310_q;
            default : i_acl_2389_v_emscripten_compute_dom_pk_code572_q = 1'b0;
        endcase
    end

    // i_pivot203_emscripten_compute_dom_pk_code77(COMPARE,555)@2
    assign i_pivot203_emscripten_compute_dom_pk_code77_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot203_emscripten_compute_dom_pk_code77_b = $unsigned({{2{c_i32_7091711021221_recast_x_q[31]}}, c_i32_7091711021221_recast_x_q});
    assign i_pivot203_emscripten_compute_dom_pk_code77_o = $unsigned($signed(i_pivot203_emscripten_compute_dom_pk_code77_a) - $signed(i_pivot203_emscripten_compute_dom_pk_code77_b));
    assign i_pivot203_emscripten_compute_dom_pk_code77_c[0] = i_pivot203_emscripten_compute_dom_pk_code77_o[33];

    // i_acl_2390_v_emscripten_compute_dom_pk_code573(MUX,67)@2 + 1
    assign i_acl_2390_v_emscripten_compute_dom_pk_code573_s = i_pivot203_emscripten_compute_dom_pk_code77_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2390_v_emscripten_compute_dom_pk_code573_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2390_v_emscripten_compute_dom_pk_code573_s)
                1'b0 : i_acl_2390_v_emscripten_compute_dom_pk_code573_q <= i_acl_2389_v_emscripten_compute_dom_pk_code572_q;
                1'b1 : i_acl_2390_v_emscripten_compute_dom_pk_code573_q <= i_acl_2387_v_emscripten_compute_dom_pk_code570_q;
                default : i_acl_2390_v_emscripten_compute_dom_pk_code573_q <= 1'b0;
            endcase
        end
    end

    // i_pivot205_emscripten_compute_dom_pk_code35(COMPARE,556)@2 + 1
    assign i_pivot205_emscripten_compute_dom_pk_code35_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot205_emscripten_compute_dom_pk_code35_b = $unsigned({{2{c_i32_6547787821200_recast_x_q[31]}}, c_i32_6547787821200_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot205_emscripten_compute_dom_pk_code35_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot205_emscripten_compute_dom_pk_code35_o <= $unsigned($signed(i_pivot205_emscripten_compute_dom_pk_code35_a) - $signed(i_pivot205_emscripten_compute_dom_pk_code35_b));
        end
    end
    assign i_pivot205_emscripten_compute_dom_pk_code35_c[0] = i_pivot205_emscripten_compute_dom_pk_code35_o[33];

    // i_acl_2391_v_emscripten_compute_dom_pk_code574(MUX,68)@3
    assign i_acl_2391_v_emscripten_compute_dom_pk_code574_s = i_pivot205_emscripten_compute_dom_pk_code35_c;
    always @(i_acl_2391_v_emscripten_compute_dom_pk_code574_s or i_acl_2390_v_emscripten_compute_dom_pk_code573_q or i_acl_2386_v_emscripten_compute_dom_pk_code569_q)
    begin
        unique case (i_acl_2391_v_emscripten_compute_dom_pk_code574_s)
            1'b0 : i_acl_2391_v_emscripten_compute_dom_pk_code574_q = i_acl_2390_v_emscripten_compute_dom_pk_code573_q;
            1'b1 : i_acl_2391_v_emscripten_compute_dom_pk_code574_q = i_acl_2386_v_emscripten_compute_dom_pk_code569_q;
            default : i_acl_2391_v_emscripten_compute_dom_pk_code574_q = 1'b0;
        endcase
    end

    // i_pivot207_emscripten_compute_dom_pk_code19(COMPARE,557)@2 + 1
    assign i_pivot207_emscripten_compute_dom_pk_code19_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot207_emscripten_compute_dom_pk_code19_b = $unsigned({{2{c_i32_1864686641192_recast_x_q[31]}}, c_i32_1864686641192_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot207_emscripten_compute_dom_pk_code19_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot207_emscripten_compute_dom_pk_code19_o <= $unsigned($signed(i_pivot207_emscripten_compute_dom_pk_code19_a) - $signed(i_pivot207_emscripten_compute_dom_pk_code19_b));
        end
    end
    assign i_pivot207_emscripten_compute_dom_pk_code19_c[0] = i_pivot207_emscripten_compute_dom_pk_code19_o[33];

    // i_acl_2392_v_emscripten_compute_dom_pk_code575(MUX,70)@3
    assign i_acl_2392_v_emscripten_compute_dom_pk_code575_s = i_pivot207_emscripten_compute_dom_pk_code19_c;
    always @(i_acl_2392_v_emscripten_compute_dom_pk_code575_s or i_acl_2391_v_emscripten_compute_dom_pk_code574_q or i_acl_2382_v_emscripten_compute_dom_pk_code565_q)
    begin
        unique case (i_acl_2392_v_emscripten_compute_dom_pk_code575_s)
            1'b0 : i_acl_2392_v_emscripten_compute_dom_pk_code575_q = i_acl_2391_v_emscripten_compute_dom_pk_code574_q;
            1'b1 : i_acl_2392_v_emscripten_compute_dom_pk_code575_q = i_acl_2382_v_emscripten_compute_dom_pk_code565_q;
            default : i_acl_2392_v_emscripten_compute_dom_pk_code575_q = 1'b0;
        endcase
    end

    // i_acl_2392_emscripten_compute_dom_pk_code576(LOGICAL,69)@3
    assign i_acl_2392_emscripten_compute_dom_pk_code576_q = i_acl_2392_v_emscripten_compute_dom_pk_code575_q ^ VCC_q;

    // i_acl_2393_emscripten_compute_dom_pk_code577(LOGICAL,71)@3
    assign i_acl_2393_emscripten_compute_dom_pk_code577_q = i_switchleaf209_emscripten_compute_dom_pk_code330_q ^ i_pivot211_emscripten_compute_dom_pk_code465_c;

    // i_pivot249_emscripten_compute_dom_pk_code21(COMPARE,578)@2 + 1
    assign i_pivot249_emscripten_compute_dom_pk_code21_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot249_emscripten_compute_dom_pk_code21_b = $unsigned({{2{c_i32_7440490731193_recast_x_q[31]}}, c_i32_7440490731193_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot249_emscripten_compute_dom_pk_code21_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot249_emscripten_compute_dom_pk_code21_o <= $unsigned($signed(i_pivot249_emscripten_compute_dom_pk_code21_a) - $signed(i_pivot249_emscripten_compute_dom_pk_code21_b));
        end
    end
    assign i_pivot249_emscripten_compute_dom_pk_code21_c[0] = i_pivot249_emscripten_compute_dom_pk_code21_o[33];

    // i_acl_2397_emscripten_compute_dom_pk_code578(MUX,72)@3
    assign i_acl_2397_emscripten_compute_dom_pk_code578_s = i_pivot249_emscripten_compute_dom_pk_code21_c;
    always @(i_acl_2397_emscripten_compute_dom_pk_code578_s or i_acl_2393_emscripten_compute_dom_pk_code577_q or i_acl_2392_emscripten_compute_dom_pk_code576_q)
    begin
        unique case (i_acl_2397_emscripten_compute_dom_pk_code578_s)
            1'b0 : i_acl_2397_emscripten_compute_dom_pk_code578_q = i_acl_2393_emscripten_compute_dom_pk_code577_q;
            1'b1 : i_acl_2397_emscripten_compute_dom_pk_code578_q = i_acl_2392_emscripten_compute_dom_pk_code576_q;
            default : i_acl_2397_emscripten_compute_dom_pk_code578_q = 1'b0;
        endcase
    end

    // i_pivot251_emscripten_compute_dom_pk_code13(COMPARE,579)@2 + 1
    assign i_pivot251_emscripten_compute_dom_pk_code13_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot251_emscripten_compute_dom_pk_code13_b = $unsigned({{2{c_i32_8704426101189_recast_x_q[31]}}, c_i32_8704426101189_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot251_emscripten_compute_dom_pk_code13_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot251_emscripten_compute_dom_pk_code13_o <= $unsigned($signed(i_pivot251_emscripten_compute_dom_pk_code13_a) - $signed(i_pivot251_emscripten_compute_dom_pk_code13_b));
        end
    end
    assign i_pivot251_emscripten_compute_dom_pk_code13_c[0] = i_pivot251_emscripten_compute_dom_pk_code13_o[33];

    // i_acl_2398_emscripten_compute_dom_pk_code579(MUX,73)@3
    assign i_acl_2398_emscripten_compute_dom_pk_code579_s = i_pivot251_emscripten_compute_dom_pk_code13_c;
    always @(i_acl_2398_emscripten_compute_dom_pk_code579_s or i_acl_2397_emscripten_compute_dom_pk_code578_q or i_acl_2374_emscripten_compute_dom_pk_code557_q)
    begin
        unique case (i_acl_2398_emscripten_compute_dom_pk_code579_s)
            1'b0 : i_acl_2398_emscripten_compute_dom_pk_code579_q = i_acl_2397_emscripten_compute_dom_pk_code578_q;
            1'b1 : i_acl_2398_emscripten_compute_dom_pk_code579_q = i_acl_2374_emscripten_compute_dom_pk_code557_q;
            default : i_acl_2398_emscripten_compute_dom_pk_code579_q = 1'b0;
        endcase
    end

    // i_not_pivot273_emscripten_compute_dom_pk_code584(LOGICAL,522)@3
    assign i_not_pivot273_emscripten_compute_dom_pk_code584_q = i_pivot273_emscripten_compute_dom_pk_code89_c ^ VCC_q;

    // i_pivot267_emscripten_compute_dom_pk_code121(COMPARE,585)@2
    assign i_pivot267_emscripten_compute_dom_pk_code121_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot267_emscripten_compute_dom_pk_code121_b = $unsigned({{2{c_i32_7440545971243_recast_x_q[31]}}, c_i32_7440545971243_recast_x_q});
    assign i_pivot267_emscripten_compute_dom_pk_code121_o = $unsigned($signed(i_pivot267_emscripten_compute_dom_pk_code121_a) - $signed(i_pivot267_emscripten_compute_dom_pk_code121_b));
    assign i_pivot267_emscripten_compute_dom_pk_code121_c[0] = i_pivot267_emscripten_compute_dom_pk_code121_o[33];

    // i_acl_2399_v_emscripten_compute_dom_pk_code580(MUX,74)@2
    assign i_acl_2399_v_emscripten_compute_dom_pk_code580_s = i_pivot267_emscripten_compute_dom_pk_code121_c;
    always @(i_acl_2399_v_emscripten_compute_dom_pk_code580_s or i_switchleaf265_emscripten_compute_dom_pk_code291_q or i_switchleaf263_emscripten_compute_dom_pk_code296_q)
    begin
        unique case (i_acl_2399_v_emscripten_compute_dom_pk_code580_s)
            1'b0 : i_acl_2399_v_emscripten_compute_dom_pk_code580_q = i_switchleaf265_emscripten_compute_dom_pk_code291_q;
            1'b1 : i_acl_2399_v_emscripten_compute_dom_pk_code580_q = i_switchleaf263_emscripten_compute_dom_pk_code296_q;
            default : i_acl_2399_v_emscripten_compute_dom_pk_code580_q = 1'b0;
        endcase
    end

    // i_pivot269_emscripten_compute_dom_pk_code193(COMPARE,586)@2
    assign i_pivot269_emscripten_compute_dom_pk_code193_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot269_emscripten_compute_dom_pk_code193_b = $unsigned({{2{c_i32_7440542321279_recast_x_q[31]}}, c_i32_7440542321279_recast_x_q});
    assign i_pivot269_emscripten_compute_dom_pk_code193_o = $unsigned($signed(i_pivot269_emscripten_compute_dom_pk_code193_a) - $signed(i_pivot269_emscripten_compute_dom_pk_code193_b));
    assign i_pivot269_emscripten_compute_dom_pk_code193_c[0] = i_pivot269_emscripten_compute_dom_pk_code193_o[33];

    // i_acl_2400_v_emscripten_compute_dom_pk_code581(MUX,76)@2
    assign i_acl_2400_v_emscripten_compute_dom_pk_code581_s = i_pivot269_emscripten_compute_dom_pk_code193_c;
    always @(i_acl_2400_v_emscripten_compute_dom_pk_code581_s or i_acl_2399_v_emscripten_compute_dom_pk_code580_q or i_switchleaf261_emscripten_compute_dom_pk_code444_q)
    begin
        unique case (i_acl_2400_v_emscripten_compute_dom_pk_code581_s)
            1'b0 : i_acl_2400_v_emscripten_compute_dom_pk_code581_q = i_acl_2399_v_emscripten_compute_dom_pk_code580_q;
            1'b1 : i_acl_2400_v_emscripten_compute_dom_pk_code581_q = i_switchleaf261_emscripten_compute_dom_pk_code444_q;
            default : i_acl_2400_v_emscripten_compute_dom_pk_code581_q = 1'b0;
        endcase
    end

    // i_acl_2400_emscripten_compute_dom_pk_code582(LOGICAL,75)@2
    assign i_acl_2400_emscripten_compute_dom_pk_code582_q = i_acl_2400_v_emscripten_compute_dom_pk_code581_q ^ VCC_q;

    // i_acl_2401_emscripten_compute_dom_pk_code583(LOGICAL,77)@2 + 1
    assign i_acl_2401_emscripten_compute_dom_pk_code583_qi = i_pivot271_emscripten_compute_dom_pk_code215_c ^ i_acl_2400_emscripten_compute_dom_pk_code582_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2401_emscripten_compute_dom_pk_code583_delay ( .xin(i_acl_2401_emscripten_compute_dom_pk_code583_qi), .xout(i_acl_2401_emscripten_compute_dom_pk_code583_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_acl_2402_emscripten_compute_dom_pk_code585(LOGICAL,78)@3
    assign i_acl_2402_emscripten_compute_dom_pk_code585_q = i_acl_2401_emscripten_compute_dom_pk_code583_q & i_not_pivot273_emscripten_compute_dom_pk_code584_q;

    // i_pivot279_emscripten_compute_dom_pk_code225(COMPARE,589)@2
    assign i_pivot279_emscripten_compute_dom_pk_code225_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot279_emscripten_compute_dom_pk_code225_b = $unsigned({{2{c_i32_9184943891295_recast_x_q[31]}}, c_i32_9184943891295_recast_x_q});
    assign i_pivot279_emscripten_compute_dom_pk_code225_o = $unsigned($signed(i_pivot279_emscripten_compute_dom_pk_code225_a) - $signed(i_pivot279_emscripten_compute_dom_pk_code225_b));
    assign i_pivot279_emscripten_compute_dom_pk_code225_c[0] = i_pivot279_emscripten_compute_dom_pk_code225_o[33];

    // i_acl_2403_v_emscripten_compute_dom_pk_code586(MUX,80)@2
    assign i_acl_2403_v_emscripten_compute_dom_pk_code586_s = i_pivot279_emscripten_compute_dom_pk_code225_c;
    always @(i_acl_2403_v_emscripten_compute_dom_pk_code586_s or i_switchleaf277_emscripten_compute_dom_pk_code493_q or i_switchleaf275_emscripten_compute_dom_pk_code316_q)
    begin
        unique case (i_acl_2403_v_emscripten_compute_dom_pk_code586_s)
            1'b0 : i_acl_2403_v_emscripten_compute_dom_pk_code586_q = i_switchleaf277_emscripten_compute_dom_pk_code493_q;
            1'b1 : i_acl_2403_v_emscripten_compute_dom_pk_code586_q = i_switchleaf275_emscripten_compute_dom_pk_code316_q;
            default : i_acl_2403_v_emscripten_compute_dom_pk_code586_q = 1'b0;
        endcase
    end

    // i_acl_2403_emscripten_compute_dom_pk_code587(LOGICAL,79)@2
    assign i_acl_2403_emscripten_compute_dom_pk_code587_q = i_acl_2403_v_emscripten_compute_dom_pk_code586_q ^ VCC_q;

    // i_switchleaf281_not_emscripten_compute_dom_pk_code448(LOGICAL,729)@2
    assign i_switchleaf281_not_emscripten_compute_dom_pk_code448_q = i_switchleaf281_emscripten_compute_dom_pk_code446_q ^ VCC_q;

    // i_acl_2404_emscripten_compute_dom_pk_code588(LOGICAL,81)@2
    assign i_acl_2404_emscripten_compute_dom_pk_code588_q = i_switchleaf283_emscripten_compute_dom_pk_code451_q ^ i_pivot285_emscripten_compute_dom_pk_code247_c;

    // i_pivot287_emscripten_compute_dom_pk_code195(COMPARE,592)@2
    assign i_pivot287_emscripten_compute_dom_pk_code195_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot287_emscripten_compute_dom_pk_code195_b = $unsigned({{2{c_i32_9185007491280_recast_x_q[31]}}, c_i32_9185007491280_recast_x_q});
    assign i_pivot287_emscripten_compute_dom_pk_code195_o = $unsigned($signed(i_pivot287_emscripten_compute_dom_pk_code195_a) - $signed(i_pivot287_emscripten_compute_dom_pk_code195_b));
    assign i_pivot287_emscripten_compute_dom_pk_code195_c[0] = i_pivot287_emscripten_compute_dom_pk_code195_o[33];

    // i_acl_2405_emscripten_compute_dom_pk_code589(MUX,82)@2
    assign i_acl_2405_emscripten_compute_dom_pk_code589_s = i_pivot287_emscripten_compute_dom_pk_code195_c;
    always @(i_acl_2405_emscripten_compute_dom_pk_code589_s or i_acl_2404_emscripten_compute_dom_pk_code588_q or i_switchleaf281_not_emscripten_compute_dom_pk_code448_q)
    begin
        unique case (i_acl_2405_emscripten_compute_dom_pk_code589_s)
            1'b0 : i_acl_2405_emscripten_compute_dom_pk_code589_q = i_acl_2404_emscripten_compute_dom_pk_code588_q;
            1'b1 : i_acl_2405_emscripten_compute_dom_pk_code589_q = i_switchleaf281_not_emscripten_compute_dom_pk_code448_q;
            default : i_acl_2405_emscripten_compute_dom_pk_code589_q = 1'b0;
        endcase
    end

    // i_pivot289_emscripten_compute_dom_pk_code95(COMPARE,593)@2
    assign i_pivot289_emscripten_compute_dom_pk_code95_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot289_emscripten_compute_dom_pk_code95_b = $unsigned({{2{c_i32_9184963121230_recast_x_q[31]}}, c_i32_9184963121230_recast_x_q});
    assign i_pivot289_emscripten_compute_dom_pk_code95_o = $unsigned($signed(i_pivot289_emscripten_compute_dom_pk_code95_a) - $signed(i_pivot289_emscripten_compute_dom_pk_code95_b));
    assign i_pivot289_emscripten_compute_dom_pk_code95_c[0] = i_pivot289_emscripten_compute_dom_pk_code95_o[33];

    // i_acl_2406_emscripten_compute_dom_pk_code590(MUX,83)@2 + 1
    assign i_acl_2406_emscripten_compute_dom_pk_code590_s = i_pivot289_emscripten_compute_dom_pk_code95_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2406_emscripten_compute_dom_pk_code590_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2406_emscripten_compute_dom_pk_code590_s)
                1'b0 : i_acl_2406_emscripten_compute_dom_pk_code590_q <= i_acl_2405_emscripten_compute_dom_pk_code589_q;
                1'b1 : i_acl_2406_emscripten_compute_dom_pk_code590_q <= i_acl_2403_emscripten_compute_dom_pk_code587_q;
                default : i_acl_2406_emscripten_compute_dom_pk_code590_q <= 1'b0;
            endcase
        end
    end

    // i_pivot295_emscripten_compute_dom_pk_code137(COMPARE,594)@2
    assign i_pivot295_emscripten_compute_dom_pk_code137_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot295_emscripten_compute_dom_pk_code137_b = $unsigned({{2{c_i32_9237194041251_recast_x_q[31]}}, c_i32_9237194041251_recast_x_q});
    assign i_pivot295_emscripten_compute_dom_pk_code137_o = $unsigned($signed(i_pivot295_emscripten_compute_dom_pk_code137_a) - $signed(i_pivot295_emscripten_compute_dom_pk_code137_b));
    assign i_pivot295_emscripten_compute_dom_pk_code137_c[0] = i_pivot295_emscripten_compute_dom_pk_code137_o[33];

    // i_acl_2407_v_emscripten_compute_dom_pk_code591(MUX,84)@2
    assign i_acl_2407_v_emscripten_compute_dom_pk_code591_s = i_pivot295_emscripten_compute_dom_pk_code137_c;
    always @(i_acl_2407_v_emscripten_compute_dom_pk_code591_s or i_switchleaf293_emscripten_compute_dom_pk_code245_q or i_switchleaf291_emscripten_compute_dom_pk_code318_q)
    begin
        unique case (i_acl_2407_v_emscripten_compute_dom_pk_code591_s)
            1'b0 : i_acl_2407_v_emscripten_compute_dom_pk_code591_q = i_switchleaf293_emscripten_compute_dom_pk_code245_q;
            1'b1 : i_acl_2407_v_emscripten_compute_dom_pk_code591_q = i_switchleaf291_emscripten_compute_dom_pk_code318_q;
            default : i_acl_2407_v_emscripten_compute_dom_pk_code591_q = 1'b0;
        endcase
    end

    // i_pivot303_emscripten_compute_dom_pk_code163(COMPARE,596)@2
    assign i_pivot303_emscripten_compute_dom_pk_code163_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot303_emscripten_compute_dom_pk_code163_b = $unsigned({{2{c_i32_9402850681264_recast_x_q[31]}}, c_i32_9402850681264_recast_x_q});
    assign i_pivot303_emscripten_compute_dom_pk_code163_o = $unsigned($signed(i_pivot303_emscripten_compute_dom_pk_code163_a) - $signed(i_pivot303_emscripten_compute_dom_pk_code163_b));
    assign i_pivot303_emscripten_compute_dom_pk_code163_c[0] = i_pivot303_emscripten_compute_dom_pk_code163_o[33];

    // i_acl_2408_v_emscripten_compute_dom_pk_code592(MUX,85)@2
    assign i_acl_2408_v_emscripten_compute_dom_pk_code592_s = i_pivot303_emscripten_compute_dom_pk_code163_c;
    always @(i_acl_2408_v_emscripten_compute_dom_pk_code592_s or i_switchleaf301_emscripten_compute_dom_pk_code388_q or i_switchleaf299_emscripten_compute_dom_pk_code279_q)
    begin
        unique case (i_acl_2408_v_emscripten_compute_dom_pk_code592_s)
            1'b0 : i_acl_2408_v_emscripten_compute_dom_pk_code592_q = i_switchleaf301_emscripten_compute_dom_pk_code388_q;
            1'b1 : i_acl_2408_v_emscripten_compute_dom_pk_code592_q = i_switchleaf299_emscripten_compute_dom_pk_code279_q;
            default : i_acl_2408_v_emscripten_compute_dom_pk_code592_q = 1'b0;
        endcase
    end

    // i_pivot305_emscripten_compute_dom_pk_code117(COMPARE,597)@2
    assign i_pivot305_emscripten_compute_dom_pk_code117_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot305_emscripten_compute_dom_pk_code117_b = $unsigned({{2{c_i32_9327881261241_recast_x_q[31]}}, c_i32_9327881261241_recast_x_q});
    assign i_pivot305_emscripten_compute_dom_pk_code117_o = $unsigned($signed(i_pivot305_emscripten_compute_dom_pk_code117_a) - $signed(i_pivot305_emscripten_compute_dom_pk_code117_b));
    assign i_pivot305_emscripten_compute_dom_pk_code117_c[0] = i_pivot305_emscripten_compute_dom_pk_code117_o[33];

    // i_acl_2409_v_emscripten_compute_dom_pk_code593(MUX,86)@2
    assign i_acl_2409_v_emscripten_compute_dom_pk_code593_s = i_pivot305_emscripten_compute_dom_pk_code117_c;
    always @(i_acl_2409_v_emscripten_compute_dom_pk_code593_s or i_acl_2408_v_emscripten_compute_dom_pk_code592_q or i_switchleaf297_emscripten_compute_dom_pk_code285_q)
    begin
        unique case (i_acl_2409_v_emscripten_compute_dom_pk_code593_s)
            1'b0 : i_acl_2409_v_emscripten_compute_dom_pk_code593_q = i_acl_2408_v_emscripten_compute_dom_pk_code592_q;
            1'b1 : i_acl_2409_v_emscripten_compute_dom_pk_code593_q = i_switchleaf297_emscripten_compute_dom_pk_code285_q;
            default : i_acl_2409_v_emscripten_compute_dom_pk_code593_q = 1'b0;
        endcase
    end

    // i_pivot307_emscripten_compute_dom_pk_code57(COMPARE,598)@2
    assign i_pivot307_emscripten_compute_dom_pk_code57_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot307_emscripten_compute_dom_pk_code57_b = $unsigned({{2{c_i32_9327835001211_recast_x_q[31]}}, c_i32_9327835001211_recast_x_q});
    assign i_pivot307_emscripten_compute_dom_pk_code57_o = $unsigned($signed(i_pivot307_emscripten_compute_dom_pk_code57_a) - $signed(i_pivot307_emscripten_compute_dom_pk_code57_b));
    assign i_pivot307_emscripten_compute_dom_pk_code57_c[0] = i_pivot307_emscripten_compute_dom_pk_code57_o[33];

    // i_acl_2410_v_emscripten_compute_dom_pk_code594(MUX,88)@2 + 1
    assign i_acl_2410_v_emscripten_compute_dom_pk_code594_s = i_pivot307_emscripten_compute_dom_pk_code57_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2410_v_emscripten_compute_dom_pk_code594_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2410_v_emscripten_compute_dom_pk_code594_s)
                1'b0 : i_acl_2410_v_emscripten_compute_dom_pk_code594_q <= i_acl_2409_v_emscripten_compute_dom_pk_code593_q;
                1'b1 : i_acl_2410_v_emscripten_compute_dom_pk_code594_q <= i_acl_2407_v_emscripten_compute_dom_pk_code591_q;
                default : i_acl_2410_v_emscripten_compute_dom_pk_code594_q <= 1'b0;
            endcase
        end
    end

    // i_acl_2410_emscripten_compute_dom_pk_code595(LOGICAL,87)@3
    assign i_acl_2410_emscripten_compute_dom_pk_code595_q = i_acl_2410_v_emscripten_compute_dom_pk_code594_q ^ VCC_q;

    // redist79_i_pivot309_emscripten_compute_dom_pk_code45_c_1(DELAY,2121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_pivot309_emscripten_compute_dom_pk_code45_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist79_i_pivot309_emscripten_compute_dom_pk_code45_c_1_q <= $unsigned(i_pivot309_emscripten_compute_dom_pk_code45_c);
        end
    end

    // i_acl_2411_emscripten_compute_dom_pk_code596(MUX,89)@3
    assign i_acl_2411_emscripten_compute_dom_pk_code596_s = redist79_i_pivot309_emscripten_compute_dom_pk_code45_c_1_q;
    always @(i_acl_2411_emscripten_compute_dom_pk_code596_s or i_acl_2410_emscripten_compute_dom_pk_code595_q or i_acl_2406_emscripten_compute_dom_pk_code590_q)
    begin
        unique case (i_acl_2411_emscripten_compute_dom_pk_code596_s)
            1'b0 : i_acl_2411_emscripten_compute_dom_pk_code596_q = i_acl_2410_emscripten_compute_dom_pk_code595_q;
            1'b1 : i_acl_2411_emscripten_compute_dom_pk_code596_q = i_acl_2406_emscripten_compute_dom_pk_code590_q;
            default : i_acl_2411_emscripten_compute_dom_pk_code596_q = 1'b0;
        endcase
    end

    // i_pivot311_emscripten_compute_dom_pk_code41(COMPARE,600)@2 + 1
    assign i_pivot311_emscripten_compute_dom_pk_code41_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot311_emscripten_compute_dom_pk_code41_b = $unsigned({{2{c_i32_7568125971203_recast_x_q[31]}}, c_i32_7568125971203_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot311_emscripten_compute_dom_pk_code41_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot311_emscripten_compute_dom_pk_code41_o <= $unsigned($signed(i_pivot311_emscripten_compute_dom_pk_code41_a) - $signed(i_pivot311_emscripten_compute_dom_pk_code41_b));
        end
    end
    assign i_pivot311_emscripten_compute_dom_pk_code41_c[0] = i_pivot311_emscripten_compute_dom_pk_code41_o[33];

    // i_acl_2412_emscripten_compute_dom_pk_code597(MUX,90)@3
    assign i_acl_2412_emscripten_compute_dom_pk_code597_s = i_pivot311_emscripten_compute_dom_pk_code41_c;
    always @(i_acl_2412_emscripten_compute_dom_pk_code597_s or i_acl_2411_emscripten_compute_dom_pk_code596_q or i_acl_2402_emscripten_compute_dom_pk_code585_q)
    begin
        unique case (i_acl_2412_emscripten_compute_dom_pk_code597_s)
            1'b0 : i_acl_2412_emscripten_compute_dom_pk_code597_q = i_acl_2411_emscripten_compute_dom_pk_code596_q;
            1'b1 : i_acl_2412_emscripten_compute_dom_pk_code597_q = i_acl_2402_emscripten_compute_dom_pk_code585_q;
            default : i_acl_2412_emscripten_compute_dom_pk_code597_q = 1'b0;
        endcase
    end

    // i_pivot317_emscripten_compute_dom_pk_code135(COMPARE,601)@2
    assign i_pivot317_emscripten_compute_dom_pk_code135_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot317_emscripten_compute_dom_pk_code135_b = $unsigned({{2{c_i32_9628711641250_recast_x_q[31]}}, c_i32_9628711641250_recast_x_q});
    assign i_pivot317_emscripten_compute_dom_pk_code135_o = $unsigned($signed(i_pivot317_emscripten_compute_dom_pk_code135_a) - $signed(i_pivot317_emscripten_compute_dom_pk_code135_b));
    assign i_pivot317_emscripten_compute_dom_pk_code135_c[0] = i_pivot317_emscripten_compute_dom_pk_code135_o[33];

    // i_acl_2413_v_emscripten_compute_dom_pk_code598(MUX,91)@2
    assign i_acl_2413_v_emscripten_compute_dom_pk_code598_s = i_pivot317_emscripten_compute_dom_pk_code135_c;
    always @(i_acl_2413_v_emscripten_compute_dom_pk_code598_s or i_switchleaf315_emscripten_compute_dom_pk_code267_q or i_switchleaf313_emscripten_compute_dom_pk_code314_q)
    begin
        unique case (i_acl_2413_v_emscripten_compute_dom_pk_code598_s)
            1'b0 : i_acl_2413_v_emscripten_compute_dom_pk_code598_q = i_switchleaf315_emscripten_compute_dom_pk_code267_q;
            1'b1 : i_acl_2413_v_emscripten_compute_dom_pk_code598_q = i_switchleaf313_emscripten_compute_dom_pk_code314_q;
            default : i_acl_2413_v_emscripten_compute_dom_pk_code598_q = 1'b0;
        endcase
    end

    // i_pivot325_emscripten_compute_dom_pk_code111(COMPARE,602)@1 + 1
    assign i_pivot325_emscripten_compute_dom_pk_code111_a = $unsigned({{2{i_select2341_emscripten_compute_dom_pk_code10_q[31]}}, i_select2341_emscripten_compute_dom_pk_code10_q});
    assign i_pivot325_emscripten_compute_dom_pk_code111_b = $unsigned({{2{c_i32_10636724401238_recast_x_q[31]}}, c_i32_10636724401238_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot325_emscripten_compute_dom_pk_code111_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot325_emscripten_compute_dom_pk_code111_o <= $unsigned($signed(i_pivot325_emscripten_compute_dom_pk_code111_a) - $signed(i_pivot325_emscripten_compute_dom_pk_code111_b));
        end
    end
    assign i_pivot325_emscripten_compute_dom_pk_code111_c[0] = i_pivot325_emscripten_compute_dom_pk_code111_o[33];

    // i_acl_2414_v_emscripten_compute_dom_pk_code599(MUX,92)@2
    assign i_acl_2414_v_emscripten_compute_dom_pk_code599_s = i_pivot325_emscripten_compute_dom_pk_code111_c;
    always @(i_acl_2414_v_emscripten_compute_dom_pk_code599_s or i_switchleaf323_emscripten_compute_dom_pk_code259_q or i_switchleaf321_emscripten_compute_dom_pk_code243_q)
    begin
        unique case (i_acl_2414_v_emscripten_compute_dom_pk_code599_s)
            1'b0 : i_acl_2414_v_emscripten_compute_dom_pk_code599_q = i_switchleaf323_emscripten_compute_dom_pk_code259_q;
            1'b1 : i_acl_2414_v_emscripten_compute_dom_pk_code599_q = i_switchleaf321_emscripten_compute_dom_pk_code243_q;
            default : i_acl_2414_v_emscripten_compute_dom_pk_code599_q = 1'b0;
        endcase
    end

    // i_pivot327_emscripten_compute_dom_pk_code105(COMPARE,603)@2
    assign i_pivot327_emscripten_compute_dom_pk_code105_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot327_emscripten_compute_dom_pk_code105_b = $unsigned({{2{c_i32_9675265461235_recast_x_q[31]}}, c_i32_9675265461235_recast_x_q});
    assign i_pivot327_emscripten_compute_dom_pk_code105_o = $unsigned($signed(i_pivot327_emscripten_compute_dom_pk_code105_a) - $signed(i_pivot327_emscripten_compute_dom_pk_code105_b));
    assign i_pivot327_emscripten_compute_dom_pk_code105_c[0] = i_pivot327_emscripten_compute_dom_pk_code105_o[33];

    // i_acl_2415_v_emscripten_compute_dom_pk_code600(MUX,93)@2
    assign i_acl_2415_v_emscripten_compute_dom_pk_code600_s = i_pivot327_emscripten_compute_dom_pk_code105_c;
    always @(i_acl_2415_v_emscripten_compute_dom_pk_code600_s or i_acl_2414_v_emscripten_compute_dom_pk_code599_q or i_switchleaf319_emscripten_compute_dom_pk_code241_q)
    begin
        unique case (i_acl_2415_v_emscripten_compute_dom_pk_code600_s)
            1'b0 : i_acl_2415_v_emscripten_compute_dom_pk_code600_q = i_acl_2414_v_emscripten_compute_dom_pk_code599_q;
            1'b1 : i_acl_2415_v_emscripten_compute_dom_pk_code600_q = i_switchleaf319_emscripten_compute_dom_pk_code241_q;
            default : i_acl_2415_v_emscripten_compute_dom_pk_code600_q = 1'b0;
        endcase
    end

    // i_pivot329_emscripten_compute_dom_pk_code55(COMPARE,604)@2
    assign i_pivot329_emscripten_compute_dom_pk_code55_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot329_emscripten_compute_dom_pk_code55_b = $unsigned({{2{c_i32_9674602601210_recast_x_q[31]}}, c_i32_9674602601210_recast_x_q});
    assign i_pivot329_emscripten_compute_dom_pk_code55_o = $unsigned($signed(i_pivot329_emscripten_compute_dom_pk_code55_a) - $signed(i_pivot329_emscripten_compute_dom_pk_code55_b));
    assign i_pivot329_emscripten_compute_dom_pk_code55_c[0] = i_pivot329_emscripten_compute_dom_pk_code55_o[33];

    // i_acl_2416_v_emscripten_compute_dom_pk_code601(MUX,94)@2
    assign i_acl_2416_v_emscripten_compute_dom_pk_code601_s = i_pivot329_emscripten_compute_dom_pk_code55_c;
    always @(i_acl_2416_v_emscripten_compute_dom_pk_code601_s or i_acl_2415_v_emscripten_compute_dom_pk_code600_q or i_acl_2413_v_emscripten_compute_dom_pk_code598_q)
    begin
        unique case (i_acl_2416_v_emscripten_compute_dom_pk_code601_s)
            1'b0 : i_acl_2416_v_emscripten_compute_dom_pk_code601_q = i_acl_2415_v_emscripten_compute_dom_pk_code600_q;
            1'b1 : i_acl_2416_v_emscripten_compute_dom_pk_code601_q = i_acl_2413_v_emscripten_compute_dom_pk_code598_q;
            default : i_acl_2416_v_emscripten_compute_dom_pk_code601_q = 1'b0;
        endcase
    end

    // i_pivot335_emscripten_compute_dom_pk_code213(COMPARE,605)@2
    assign i_pivot335_emscripten_compute_dom_pk_code213_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot335_emscripten_compute_dom_pk_code213_b = $unsigned({{2{c_i32_12284271361289_recast_x_q[31]}}, c_i32_12284271361289_recast_x_q});
    assign i_pivot335_emscripten_compute_dom_pk_code213_o = $unsigned($signed(i_pivot335_emscripten_compute_dom_pk_code213_a) - $signed(i_pivot335_emscripten_compute_dom_pk_code213_b));
    assign i_pivot335_emscripten_compute_dom_pk_code213_c[0] = i_pivot335_emscripten_compute_dom_pk_code213_o[33];

    // i_acl_2417_v_emscripten_compute_dom_pk_code602(MUX,95)@2
    assign i_acl_2417_v_emscripten_compute_dom_pk_code602_s = i_pivot335_emscripten_compute_dom_pk_code213_c;
    always @(i_acl_2417_v_emscripten_compute_dom_pk_code602_s or i_switchleaf333_emscripten_compute_dom_pk_code253_q or i_switchleaf331_emscripten_compute_dom_pk_code473_q)
    begin
        unique case (i_acl_2417_v_emscripten_compute_dom_pk_code602_s)
            1'b0 : i_acl_2417_v_emscripten_compute_dom_pk_code602_q = i_switchleaf333_emscripten_compute_dom_pk_code253_q;
            1'b1 : i_acl_2417_v_emscripten_compute_dom_pk_code602_q = i_switchleaf331_emscripten_compute_dom_pk_code473_q;
            default : i_acl_2417_v_emscripten_compute_dom_pk_code602_q = 1'b0;
        endcase
    end

    // i_pivot343_emscripten_compute_dom_pk_code125(COMPARE,606)@1 + 1
    assign i_pivot343_emscripten_compute_dom_pk_code125_a = $unsigned({{2{i_select2341_emscripten_compute_dom_pk_code10_q[31]}}, i_select2341_emscripten_compute_dom_pk_code10_q});
    assign i_pivot343_emscripten_compute_dom_pk_code125_b = $unsigned({{2{c_i32_12899613401245_recast_x_q[31]}}, c_i32_12899613401245_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot343_emscripten_compute_dom_pk_code125_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot343_emscripten_compute_dom_pk_code125_o <= $unsigned($signed(i_pivot343_emscripten_compute_dom_pk_code125_a) - $signed(i_pivot343_emscripten_compute_dom_pk_code125_b));
        end
    end
    assign i_pivot343_emscripten_compute_dom_pk_code125_c[0] = i_pivot343_emscripten_compute_dom_pk_code125_o[33];

    // i_acl_2418_v_emscripten_compute_dom_pk_code603(MUX,96)@2
    assign i_acl_2418_v_emscripten_compute_dom_pk_code603_s = i_pivot343_emscripten_compute_dom_pk_code125_c;
    always @(i_acl_2418_v_emscripten_compute_dom_pk_code603_s or i_switchleaf341_emscripten_compute_dom_pk_code283_q or i_switchleaf339_emscripten_compute_dom_pk_code302_q)
    begin
        unique case (i_acl_2418_v_emscripten_compute_dom_pk_code603_s)
            1'b0 : i_acl_2418_v_emscripten_compute_dom_pk_code603_q = i_switchleaf341_emscripten_compute_dom_pk_code283_q;
            1'b1 : i_acl_2418_v_emscripten_compute_dom_pk_code603_q = i_switchleaf339_emscripten_compute_dom_pk_code302_q;
            default : i_acl_2418_v_emscripten_compute_dom_pk_code603_q = 1'b0;
        endcase
    end

    // i_pivot345_emscripten_compute_dom_pk_code107(COMPARE,607)@2
    assign i_pivot345_emscripten_compute_dom_pk_code107_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot345_emscripten_compute_dom_pk_code107_b = $unsigned({{2{c_i32_12284393651236_recast_x_q[31]}}, c_i32_12284393651236_recast_x_q});
    assign i_pivot345_emscripten_compute_dom_pk_code107_o = $unsigned($signed(i_pivot345_emscripten_compute_dom_pk_code107_a) - $signed(i_pivot345_emscripten_compute_dom_pk_code107_b));
    assign i_pivot345_emscripten_compute_dom_pk_code107_c[0] = i_pivot345_emscripten_compute_dom_pk_code107_o[33];

    // i_acl_2419_v_emscripten_compute_dom_pk_code604(MUX,97)@2
    assign i_acl_2419_v_emscripten_compute_dom_pk_code604_s = i_pivot345_emscripten_compute_dom_pk_code107_c;
    always @(i_acl_2419_v_emscripten_compute_dom_pk_code604_s or i_acl_2418_v_emscripten_compute_dom_pk_code603_q or i_switchleaf337_emscripten_compute_dom_pk_code249_q)
    begin
        unique case (i_acl_2419_v_emscripten_compute_dom_pk_code604_s)
            1'b0 : i_acl_2419_v_emscripten_compute_dom_pk_code604_q = i_acl_2418_v_emscripten_compute_dom_pk_code603_q;
            1'b1 : i_acl_2419_v_emscripten_compute_dom_pk_code604_q = i_switchleaf337_emscripten_compute_dom_pk_code249_q;
            default : i_acl_2419_v_emscripten_compute_dom_pk_code604_q = 1'b0;
        endcase
    end

    // i_pivot347_emscripten_compute_dom_pk_code85(COMPARE,608)@2
    assign i_pivot347_emscripten_compute_dom_pk_code85_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot347_emscripten_compute_dom_pk_code85_b = $unsigned({{2{c_i32_12284335951225_recast_x_q[31]}}, c_i32_12284335951225_recast_x_q});
    assign i_pivot347_emscripten_compute_dom_pk_code85_o = $unsigned($signed(i_pivot347_emscripten_compute_dom_pk_code85_a) - $signed(i_pivot347_emscripten_compute_dom_pk_code85_b));
    assign i_pivot347_emscripten_compute_dom_pk_code85_c[0] = i_pivot347_emscripten_compute_dom_pk_code85_o[33];

    // i_acl_2420_v_emscripten_compute_dom_pk_code605(MUX,98)@2
    assign i_acl_2420_v_emscripten_compute_dom_pk_code605_s = i_pivot347_emscripten_compute_dom_pk_code85_c;
    always @(i_acl_2420_v_emscripten_compute_dom_pk_code605_s or i_acl_2419_v_emscripten_compute_dom_pk_code604_q or i_acl_2417_v_emscripten_compute_dom_pk_code602_q)
    begin
        unique case (i_acl_2420_v_emscripten_compute_dom_pk_code605_s)
            1'b0 : i_acl_2420_v_emscripten_compute_dom_pk_code605_q = i_acl_2419_v_emscripten_compute_dom_pk_code604_q;
            1'b1 : i_acl_2420_v_emscripten_compute_dom_pk_code605_q = i_acl_2417_v_emscripten_compute_dom_pk_code602_q;
            default : i_acl_2420_v_emscripten_compute_dom_pk_code605_q = 1'b0;
        endcase
    end

    // i_pivot349_emscripten_compute_dom_pk_code39(COMPARE,609)@2
    assign i_pivot349_emscripten_compute_dom_pk_code39_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot349_emscripten_compute_dom_pk_code39_b = $unsigned({{2{c_i32_11717891961202_recast_x_q[31]}}, c_i32_11717891961202_recast_x_q});
    assign i_pivot349_emscripten_compute_dom_pk_code39_o = $unsigned($signed(i_pivot349_emscripten_compute_dom_pk_code39_a) - $signed(i_pivot349_emscripten_compute_dom_pk_code39_b));
    assign i_pivot349_emscripten_compute_dom_pk_code39_c[0] = i_pivot349_emscripten_compute_dom_pk_code39_o[33];

    // i_acl_2421_v_emscripten_compute_dom_pk_code606(MUX,100)@2 + 1
    assign i_acl_2421_v_emscripten_compute_dom_pk_code606_s = i_pivot349_emscripten_compute_dom_pk_code39_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2421_v_emscripten_compute_dom_pk_code606_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2421_v_emscripten_compute_dom_pk_code606_s)
                1'b0 : i_acl_2421_v_emscripten_compute_dom_pk_code606_q <= i_acl_2420_v_emscripten_compute_dom_pk_code605_q;
                1'b1 : i_acl_2421_v_emscripten_compute_dom_pk_code606_q <= i_acl_2416_v_emscripten_compute_dom_pk_code601_q;
                default : i_acl_2421_v_emscripten_compute_dom_pk_code606_q <= 1'b0;
            endcase
        end
    end

    // i_acl_2421_emscripten_compute_dom_pk_code607(LOGICAL,99)@3
    assign i_acl_2421_emscripten_compute_dom_pk_code607_q = i_acl_2421_v_emscripten_compute_dom_pk_code606_q ^ VCC_q;

    // i_pivot355_emscripten_compute_dom_pk_code187(COMPARE,610)@2
    assign i_pivot355_emscripten_compute_dom_pk_code187_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot355_emscripten_compute_dom_pk_code187_b = $unsigned({{2{c_i32_15878002281276_recast_x_q[31]}}, c_i32_15878002281276_recast_x_q});
    assign i_pivot355_emscripten_compute_dom_pk_code187_o = $unsigned($signed(i_pivot355_emscripten_compute_dom_pk_code187_a) - $signed(i_pivot355_emscripten_compute_dom_pk_code187_b));
    assign i_pivot355_emscripten_compute_dom_pk_code187_c[0] = i_pivot355_emscripten_compute_dom_pk_code187_o[33];

    // i_acl_2422_v_emscripten_compute_dom_pk_code608(MUX,101)@2
    assign i_acl_2422_v_emscripten_compute_dom_pk_code608_s = i_pivot355_emscripten_compute_dom_pk_code187_c;
    always @(i_acl_2422_v_emscripten_compute_dom_pk_code608_s or i_switchleaf353_emscripten_compute_dom_pk_code394_q or i_switchleaf351_emscripten_compute_dom_pk_code430_q)
    begin
        unique case (i_acl_2422_v_emscripten_compute_dom_pk_code608_s)
            1'b0 : i_acl_2422_v_emscripten_compute_dom_pk_code608_q = i_switchleaf353_emscripten_compute_dom_pk_code394_q;
            1'b1 : i_acl_2422_v_emscripten_compute_dom_pk_code608_q = i_switchleaf351_emscripten_compute_dom_pk_code430_q;
            default : i_acl_2422_v_emscripten_compute_dom_pk_code608_q = 1'b0;
        endcase
    end

    // i_pivot363_emscripten_compute_dom_pk_code149(COMPARE,612)@1 + 1
    assign i_pivot363_emscripten_compute_dom_pk_code149_a = $unsigned({{2{i_select2341_emscripten_compute_dom_pk_code10_q[31]}}, i_select2341_emscripten_compute_dom_pk_code10_q});
    assign i_pivot363_emscripten_compute_dom_pk_code149_b = $unsigned({{2{c_i32_17303990201257_recast_x_q[31]}}, c_i32_17303990201257_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot363_emscripten_compute_dom_pk_code149_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot363_emscripten_compute_dom_pk_code149_o <= $unsigned($signed(i_pivot363_emscripten_compute_dom_pk_code149_a) - $signed(i_pivot363_emscripten_compute_dom_pk_code149_b));
        end
    end
    assign i_pivot363_emscripten_compute_dom_pk_code149_c[0] = i_pivot363_emscripten_compute_dom_pk_code149_o[33];

    // i_acl_2423_v_emscripten_compute_dom_pk_code609(MUX,102)@2
    assign i_acl_2423_v_emscripten_compute_dom_pk_code609_s = i_pivot363_emscripten_compute_dom_pk_code149_c;
    always @(i_acl_2423_v_emscripten_compute_dom_pk_code609_s or i_switchleaf361_emscripten_compute_dom_pk_code275_q or i_switchleaf359_emscripten_compute_dom_pk_code349_q)
    begin
        unique case (i_acl_2423_v_emscripten_compute_dom_pk_code609_s)
            1'b0 : i_acl_2423_v_emscripten_compute_dom_pk_code609_q = i_switchleaf361_emscripten_compute_dom_pk_code275_q;
            1'b1 : i_acl_2423_v_emscripten_compute_dom_pk_code609_q = i_switchleaf359_emscripten_compute_dom_pk_code349_q;
            default : i_acl_2423_v_emscripten_compute_dom_pk_code609_q = 1'b0;
        endcase
    end

    // i_pivot365_emscripten_compute_dom_pk_code113(COMPARE,613)@2
    assign i_pivot365_emscripten_compute_dom_pk_code113_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot365_emscripten_compute_dom_pk_code113_b = $unsigned({{2{c_i32_17303978151239_recast_x_q[31]}}, c_i32_17303978151239_recast_x_q});
    assign i_pivot365_emscripten_compute_dom_pk_code113_o = $unsigned($signed(i_pivot365_emscripten_compute_dom_pk_code113_a) - $signed(i_pivot365_emscripten_compute_dom_pk_code113_b));
    assign i_pivot365_emscripten_compute_dom_pk_code113_c[0] = i_pivot365_emscripten_compute_dom_pk_code113_o[33];

    // i_acl_2424_v_emscripten_compute_dom_pk_code610(MUX,103)@2
    assign i_acl_2424_v_emscripten_compute_dom_pk_code610_s = i_pivot365_emscripten_compute_dom_pk_code113_c;
    always @(i_acl_2424_v_emscripten_compute_dom_pk_code610_s or i_acl_2423_v_emscripten_compute_dom_pk_code609_q or i_switchleaf357_emscripten_compute_dom_pk_code269_q)
    begin
        unique case (i_acl_2424_v_emscripten_compute_dom_pk_code610_s)
            1'b0 : i_acl_2424_v_emscripten_compute_dom_pk_code610_q = i_acl_2423_v_emscripten_compute_dom_pk_code609_q;
            1'b1 : i_acl_2424_v_emscripten_compute_dom_pk_code610_q = i_switchleaf357_emscripten_compute_dom_pk_code269_q;
            default : i_acl_2424_v_emscripten_compute_dom_pk_code610_q = 1'b0;
        endcase
    end

    // i_pivot367_emscripten_compute_dom_pk_code75(COMPARE,614)@2
    assign i_pivot367_emscripten_compute_dom_pk_code75_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot367_emscripten_compute_dom_pk_code75_b = $unsigned({{2{c_i32_17303730041220_recast_x_q[31]}}, c_i32_17303730041220_recast_x_q});
    assign i_pivot367_emscripten_compute_dom_pk_code75_o = $unsigned($signed(i_pivot367_emscripten_compute_dom_pk_code75_a) - $signed(i_pivot367_emscripten_compute_dom_pk_code75_b));
    assign i_pivot367_emscripten_compute_dom_pk_code75_c[0] = i_pivot367_emscripten_compute_dom_pk_code75_o[33];

    // i_acl_2425_v_emscripten_compute_dom_pk_code611(MUX,105)@2
    assign i_acl_2425_v_emscripten_compute_dom_pk_code611_s = i_pivot367_emscripten_compute_dom_pk_code75_c;
    always @(i_acl_2425_v_emscripten_compute_dom_pk_code611_s or i_acl_2424_v_emscripten_compute_dom_pk_code610_q or i_acl_2422_v_emscripten_compute_dom_pk_code608_q)
    begin
        unique case (i_acl_2425_v_emscripten_compute_dom_pk_code611_s)
            1'b0 : i_acl_2425_v_emscripten_compute_dom_pk_code611_q = i_acl_2424_v_emscripten_compute_dom_pk_code610_q;
            1'b1 : i_acl_2425_v_emscripten_compute_dom_pk_code611_q = i_acl_2422_v_emscripten_compute_dom_pk_code608_q;
            default : i_acl_2425_v_emscripten_compute_dom_pk_code611_q = 1'b0;
        endcase
    end

    // i_acl_2425_emscripten_compute_dom_pk_code612(LOGICAL,104)@2
    assign i_acl_2425_emscripten_compute_dom_pk_code612_q = i_acl_2425_v_emscripten_compute_dom_pk_code611_q ^ VCC_q;

    // i_acl_2426_emscripten_compute_dom_pk_code613(LOGICAL,106)@2
    assign i_acl_2426_emscripten_compute_dom_pk_code613_q = i_switchleaf369_emscripten_compute_dom_pk_code513_q ^ i_pivot371_emscripten_compute_dom_pk_code501_c;

    // i_acl_2427_emscripten_compute_dom_pk_code614(LOGICAL,107)@2
    assign i_acl_2427_emscripten_compute_dom_pk_code614_q = i_switchleaf373_emscripten_compute_dom_pk_code499_q ^ i_pivot377_emscripten_compute_dom_pk_code237_c;

    // i_acl_2428_emscripten_compute_dom_pk_code615(MUX,108)@2
    assign i_acl_2428_emscripten_compute_dom_pk_code615_s = i_pivot379_emscripten_compute_dom_pk_code231_c;
    always @(i_acl_2428_emscripten_compute_dom_pk_code615_s or i_acl_2427_emscripten_compute_dom_pk_code614_q or i_acl_2426_emscripten_compute_dom_pk_code613_q)
    begin
        unique case (i_acl_2428_emscripten_compute_dom_pk_code615_s)
            1'b0 : i_acl_2428_emscripten_compute_dom_pk_code615_q = i_acl_2427_emscripten_compute_dom_pk_code614_q;
            1'b1 : i_acl_2428_emscripten_compute_dom_pk_code615_q = i_acl_2426_emscripten_compute_dom_pk_code613_q;
            default : i_acl_2428_emscripten_compute_dom_pk_code615_q = 1'b0;
        endcase
    end

    // i_pivot381_emscripten_compute_dom_pk_code97(COMPARE,619)@2
    assign i_pivot381_emscripten_compute_dom_pk_code97_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot381_emscripten_compute_dom_pk_code97_b = $unsigned({{2{c_i32_17304274371231_recast_x_q[31]}}, c_i32_17304274371231_recast_x_q});
    assign i_pivot381_emscripten_compute_dom_pk_code97_o = $unsigned($signed(i_pivot381_emscripten_compute_dom_pk_code97_a) - $signed(i_pivot381_emscripten_compute_dom_pk_code97_b));
    assign i_pivot381_emscripten_compute_dom_pk_code97_c[0] = i_pivot381_emscripten_compute_dom_pk_code97_o[33];

    // i_acl_2429_emscripten_compute_dom_pk_code616(MUX,109)@2 + 1
    assign i_acl_2429_emscripten_compute_dom_pk_code616_s = i_pivot381_emscripten_compute_dom_pk_code97_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2429_emscripten_compute_dom_pk_code616_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2429_emscripten_compute_dom_pk_code616_s)
                1'b0 : i_acl_2429_emscripten_compute_dom_pk_code616_q <= i_acl_2428_emscripten_compute_dom_pk_code615_q;
                1'b1 : i_acl_2429_emscripten_compute_dom_pk_code616_q <= i_acl_2425_emscripten_compute_dom_pk_code612_q;
                default : i_acl_2429_emscripten_compute_dom_pk_code616_q <= 1'b0;
            endcase
        end
    end

    // i_pivot383_emscripten_compute_dom_pk_code47(COMPARE,620)@2 + 1
    assign i_pivot383_emscripten_compute_dom_pk_code47_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot383_emscripten_compute_dom_pk_code47_b = $unsigned({{2{c_i32_15668906411206_recast_x_q[31]}}, c_i32_15668906411206_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot383_emscripten_compute_dom_pk_code47_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot383_emscripten_compute_dom_pk_code47_o <= $unsigned($signed(i_pivot383_emscripten_compute_dom_pk_code47_a) - $signed(i_pivot383_emscripten_compute_dom_pk_code47_b));
        end
    end
    assign i_pivot383_emscripten_compute_dom_pk_code47_c[0] = i_pivot383_emscripten_compute_dom_pk_code47_o[33];

    // i_acl_2430_emscripten_compute_dom_pk_code617(MUX,110)@3
    assign i_acl_2430_emscripten_compute_dom_pk_code617_s = i_pivot383_emscripten_compute_dom_pk_code47_c;
    always @(i_acl_2430_emscripten_compute_dom_pk_code617_s or i_acl_2429_emscripten_compute_dom_pk_code616_q or i_acl_2421_emscripten_compute_dom_pk_code607_q)
    begin
        unique case (i_acl_2430_emscripten_compute_dom_pk_code617_s)
            1'b0 : i_acl_2430_emscripten_compute_dom_pk_code617_q = i_acl_2429_emscripten_compute_dom_pk_code616_q;
            1'b1 : i_acl_2430_emscripten_compute_dom_pk_code617_q = i_acl_2421_emscripten_compute_dom_pk_code607_q;
            default : i_acl_2430_emscripten_compute_dom_pk_code617_q = 1'b0;
        endcase
    end

    // i_pivot385_emscripten_compute_dom_pk_code23(COMPARE,621)@2 + 1
    assign i_pivot385_emscripten_compute_dom_pk_code23_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot385_emscripten_compute_dom_pk_code23_b = $unsigned({{2{c_i32_9586277121194_recast_x_q[31]}}, c_i32_9586277121194_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot385_emscripten_compute_dom_pk_code23_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot385_emscripten_compute_dom_pk_code23_o <= $unsigned($signed(i_pivot385_emscripten_compute_dom_pk_code23_a) - $signed(i_pivot385_emscripten_compute_dom_pk_code23_b));
        end
    end
    assign i_pivot385_emscripten_compute_dom_pk_code23_c[0] = i_pivot385_emscripten_compute_dom_pk_code23_o[33];

    // i_acl_2431_emscripten_compute_dom_pk_code618(MUX,111)@3
    assign i_acl_2431_emscripten_compute_dom_pk_code618_s = i_pivot385_emscripten_compute_dom_pk_code23_c;
    always @(i_acl_2431_emscripten_compute_dom_pk_code618_s or i_acl_2430_emscripten_compute_dom_pk_code617_q or i_acl_2412_emscripten_compute_dom_pk_code597_q)
    begin
        unique case (i_acl_2431_emscripten_compute_dom_pk_code618_s)
            1'b0 : i_acl_2431_emscripten_compute_dom_pk_code618_q = i_acl_2430_emscripten_compute_dom_pk_code617_q;
            1'b1 : i_acl_2431_emscripten_compute_dom_pk_code618_q = i_acl_2412_emscripten_compute_dom_pk_code597_q;
            default : i_acl_2431_emscripten_compute_dom_pk_code618_q = 1'b0;
        endcase
    end

    // i_pivot399_emscripten_compute_dom_pk_code233(COMPARE,626)@2
    assign i_pivot399_emscripten_compute_dom_pk_code233_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot399_emscripten_compute_dom_pk_code233_b = $unsigned({{2{c_i32_17305285251299_recast_x_q[31]}}, c_i32_17305285251299_recast_x_q});
    assign i_pivot399_emscripten_compute_dom_pk_code233_o = $unsigned($signed(i_pivot399_emscripten_compute_dom_pk_code233_a) - $signed(i_pivot399_emscripten_compute_dom_pk_code233_b));
    assign i_pivot399_emscripten_compute_dom_pk_code233_c[0] = i_pivot399_emscripten_compute_dom_pk_code233_o[33];

    // i_acl_2432_v_emscripten_compute_dom_pk_code619(MUX,112)@2
    assign i_acl_2432_v_emscripten_compute_dom_pk_code619_s = i_pivot399_emscripten_compute_dom_pk_code233_c;
    always @(i_acl_2432_v_emscripten_compute_dom_pk_code619_s or i_switchleaf397_emscripten_compute_dom_pk_code273_q or i_switchleaf395_emscripten_compute_dom_pk_code503_q)
    begin
        unique case (i_acl_2432_v_emscripten_compute_dom_pk_code619_s)
            1'b0 : i_acl_2432_v_emscripten_compute_dom_pk_code619_q = i_switchleaf397_emscripten_compute_dom_pk_code273_q;
            1'b1 : i_acl_2432_v_emscripten_compute_dom_pk_code619_q = i_switchleaf395_emscripten_compute_dom_pk_code503_q;
            default : i_acl_2432_v_emscripten_compute_dom_pk_code619_q = 1'b0;
        endcase
    end

    // i_pivot407_emscripten_compute_dom_pk_code191(COMPARE,627)@2
    assign i_pivot407_emscripten_compute_dom_pk_code191_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot407_emscripten_compute_dom_pk_code191_b = $unsigned({{2{c_i32_18238142851278_recast_x_q[31]}}, c_i32_18238142851278_recast_x_q});
    assign i_pivot407_emscripten_compute_dom_pk_code191_o = $unsigned($signed(i_pivot407_emscripten_compute_dom_pk_code191_a) - $signed(i_pivot407_emscripten_compute_dom_pk_code191_b));
    assign i_pivot407_emscripten_compute_dom_pk_code191_c[0] = i_pivot407_emscripten_compute_dom_pk_code191_o[33];

    // i_acl_2433_v_emscripten_compute_dom_pk_code620(MUX,113)@2
    assign i_acl_2433_v_emscripten_compute_dom_pk_code620_s = i_pivot407_emscripten_compute_dom_pk_code191_c;
    always @(i_acl_2433_v_emscripten_compute_dom_pk_code620_s or i_switchleaf405_emscripten_compute_dom_pk_code300_q or i_switchleaf403_emscripten_compute_dom_pk_code436_q)
    begin
        unique case (i_acl_2433_v_emscripten_compute_dom_pk_code620_s)
            1'b0 : i_acl_2433_v_emscripten_compute_dom_pk_code620_q = i_switchleaf405_emscripten_compute_dom_pk_code300_q;
            1'b1 : i_acl_2433_v_emscripten_compute_dom_pk_code620_q = i_switchleaf403_emscripten_compute_dom_pk_code436_q;
            default : i_acl_2433_v_emscripten_compute_dom_pk_code620_q = 1'b0;
        endcase
    end

    // i_pivot409_emscripten_compute_dom_pk_code119(COMPARE,628)@2
    assign i_pivot409_emscripten_compute_dom_pk_code119_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot409_emscripten_compute_dom_pk_code119_b = $unsigned({{2{c_i32_17311976521242_recast_x_q[31]}}, c_i32_17311976521242_recast_x_q});
    assign i_pivot409_emscripten_compute_dom_pk_code119_o = $unsigned($signed(i_pivot409_emscripten_compute_dom_pk_code119_a) - $signed(i_pivot409_emscripten_compute_dom_pk_code119_b));
    assign i_pivot409_emscripten_compute_dom_pk_code119_c[0] = i_pivot409_emscripten_compute_dom_pk_code119_o[33];

    // i_acl_2434_v_emscripten_compute_dom_pk_code621(MUX,114)@2
    assign i_acl_2434_v_emscripten_compute_dom_pk_code621_s = i_pivot409_emscripten_compute_dom_pk_code119_c;
    always @(i_acl_2434_v_emscripten_compute_dom_pk_code621_s or i_acl_2433_v_emscripten_compute_dom_pk_code620_q or i_switchleaf401_emscripten_compute_dom_pk_code287_q)
    begin
        unique case (i_acl_2434_v_emscripten_compute_dom_pk_code621_s)
            1'b0 : i_acl_2434_v_emscripten_compute_dom_pk_code621_q = i_acl_2433_v_emscripten_compute_dom_pk_code620_q;
            1'b1 : i_acl_2434_v_emscripten_compute_dom_pk_code621_q = i_switchleaf401_emscripten_compute_dom_pk_code287_q;
            default : i_acl_2434_v_emscripten_compute_dom_pk_code621_q = 1'b0;
        endcase
    end

    // i_pivot411_emscripten_compute_dom_pk_code99(COMPARE,629)@2
    assign i_pivot411_emscripten_compute_dom_pk_code99_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot411_emscripten_compute_dom_pk_code99_b = $unsigned({{2{c_i32_17311708321232_recast_x_q[31]}}, c_i32_17311708321232_recast_x_q});
    assign i_pivot411_emscripten_compute_dom_pk_code99_o = $unsigned($signed(i_pivot411_emscripten_compute_dom_pk_code99_a) - $signed(i_pivot411_emscripten_compute_dom_pk_code99_b));
    assign i_pivot411_emscripten_compute_dom_pk_code99_c[0] = i_pivot411_emscripten_compute_dom_pk_code99_o[33];

    // i_acl_2435_v_emscripten_compute_dom_pk_code622(MUX,115)@2 + 1
    assign i_acl_2435_v_emscripten_compute_dom_pk_code622_s = i_pivot411_emscripten_compute_dom_pk_code99_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2435_v_emscripten_compute_dom_pk_code622_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2435_v_emscripten_compute_dom_pk_code622_s)
                1'b0 : i_acl_2435_v_emscripten_compute_dom_pk_code622_q <= i_acl_2434_v_emscripten_compute_dom_pk_code621_q;
                1'b1 : i_acl_2435_v_emscripten_compute_dom_pk_code622_q <= i_acl_2432_v_emscripten_compute_dom_pk_code619_q;
                default : i_acl_2435_v_emscripten_compute_dom_pk_code622_q <= 1'b0;
            endcase
        end
    end

    // i_acl_2436_demorgan_emscripten_compute_dom_pk_code623(LOGICAL,116)@3
    assign i_acl_2436_demorgan_emscripten_compute_dom_pk_code623_q = i_acl_2435_v_emscripten_compute_dom_pk_code622_q | i_pivot413_emscripten_compute_dom_pk_code101_c;

    // i_acl_2436_emscripten_compute_dom_pk_code624(LOGICAL,117)@3
    assign i_acl_2436_emscripten_compute_dom_pk_code624_q = i_acl_2436_demorgan_emscripten_compute_dom_pk_code623_q ^ VCC_q;

    // i_switchleaf415_not_emscripten_compute_dom_pk_code411(LOGICAL,764)@2
    assign i_switchleaf415_not_emscripten_compute_dom_pk_code411_q = i_switchleaf415_emscripten_compute_dom_pk_code409_q ^ VCC_q;

    // i_acl_2437_emscripten_compute_dom_pk_code625(LOGICAL,118)@2
    assign i_acl_2437_emscripten_compute_dom_pk_code625_q = i_pivot417_emscripten_compute_dom_pk_code412_c ^ i_switchleaf415_not_emscripten_compute_dom_pk_code411_q;

    // i_acl_2438_emscripten_compute_dom_pk_code626(LOGICAL,119)@2
    assign i_acl_2438_emscripten_compute_dom_pk_code626_q = i_pivot423_emscripten_compute_dom_pk_code181_c & i_acl_2437_emscripten_compute_dom_pk_code625_q;

    // i_pivot431_emscripten_compute_dom_pk_code177(COMPARE,636)@2
    assign i_pivot431_emscripten_compute_dom_pk_code177_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot431_emscripten_compute_dom_pk_code177_b = $unsigned({{2{c_i32_19390550411271_recast_x_q[31]}}, c_i32_19390550411271_recast_x_q});
    assign i_pivot431_emscripten_compute_dom_pk_code177_o = $unsigned($signed(i_pivot431_emscripten_compute_dom_pk_code177_a) - $signed(i_pivot431_emscripten_compute_dom_pk_code177_b));
    assign i_pivot431_emscripten_compute_dom_pk_code177_c[0] = i_pivot431_emscripten_compute_dom_pk_code177_o[33];

    // i_acl_2439_v_emscripten_compute_dom_pk_code627(MUX,121)@2
    assign i_acl_2439_v_emscripten_compute_dom_pk_code627_s = i_pivot431_emscripten_compute_dom_pk_code177_c;
    always @(i_acl_2439_v_emscripten_compute_dom_pk_code627_s or i_switchleaf429_emscripten_compute_dom_pk_code338_q or i_switchleaf427_emscripten_compute_dom_pk_code414_q)
    begin
        unique case (i_acl_2439_v_emscripten_compute_dom_pk_code627_s)
            1'b0 : i_acl_2439_v_emscripten_compute_dom_pk_code627_q = i_switchleaf429_emscripten_compute_dom_pk_code338_q;
            1'b1 : i_acl_2439_v_emscripten_compute_dom_pk_code627_q = i_switchleaf427_emscripten_compute_dom_pk_code414_q;
            default : i_acl_2439_v_emscripten_compute_dom_pk_code627_q = 1'b0;
        endcase
    end

    // i_acl_2439_emscripten_compute_dom_pk_code628(LOGICAL,120)@2
    assign i_acl_2439_emscripten_compute_dom_pk_code628_q = i_acl_2439_v_emscripten_compute_dom_pk_code627_q ^ VCC_q;

    // i_acl_2440_emscripten_compute_dom_pk_code629(LOGICAL,122)@2
    assign i_acl_2440_emscripten_compute_dom_pk_code629_q = i_pivot433_emscripten_compute_dom_pk_code416_c ^ i_acl_2439_emscripten_compute_dom_pk_code628_q;

    // i_acl_2442_emscripten_compute_dom_pk_code630(MUX,123)@2 + 1
    assign i_acl_2442_emscripten_compute_dom_pk_code630_s = i_pivot437_emscripten_compute_dom_pk_code71_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2442_emscripten_compute_dom_pk_code630_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2442_emscripten_compute_dom_pk_code630_s)
                1'b0 : i_acl_2442_emscripten_compute_dom_pk_code630_q <= i_acl_2440_emscripten_compute_dom_pk_code629_q;
                1'b1 : i_acl_2442_emscripten_compute_dom_pk_code630_q <= i_acl_2438_emscripten_compute_dom_pk_code626_q;
                default : i_acl_2442_emscripten_compute_dom_pk_code630_q <= 1'b0;
            endcase
        end
    end

    // redist74_i_pivot439_emscripten_compute_dom_pk_code49_c_1(DELAY,2116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_pivot439_emscripten_compute_dom_pk_code49_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist74_i_pivot439_emscripten_compute_dom_pk_code49_c_1_q <= $unsigned(i_pivot439_emscripten_compute_dom_pk_code49_c);
        end
    end

    // i_acl_2443_emscripten_compute_dom_pk_code631(MUX,124)@3
    assign i_acl_2443_emscripten_compute_dom_pk_code631_s = redist74_i_pivot439_emscripten_compute_dom_pk_code49_c_1_q;
    always @(i_acl_2443_emscripten_compute_dom_pk_code631_s or i_acl_2442_emscripten_compute_dom_pk_code630_q or i_acl_2436_emscripten_compute_dom_pk_code624_q)
    begin
        unique case (i_acl_2443_emscripten_compute_dom_pk_code631_s)
            1'b0 : i_acl_2443_emscripten_compute_dom_pk_code631_q = i_acl_2442_emscripten_compute_dom_pk_code630_q;
            1'b1 : i_acl_2443_emscripten_compute_dom_pk_code631_q = i_acl_2436_emscripten_compute_dom_pk_code624_q;
            default : i_acl_2443_emscripten_compute_dom_pk_code631_q = 1'b0;
        endcase
    end

    // i_pivot445_emscripten_compute_dom_pk_code159(COMPARE,642)@2
    assign i_pivot445_emscripten_compute_dom_pk_code159_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot445_emscripten_compute_dom_pk_code159_b = $unsigned({{2{c_i32_19390780601262_recast_x_q[31]}}, c_i32_19390780601262_recast_x_q});
    assign i_pivot445_emscripten_compute_dom_pk_code159_o = $unsigned($signed(i_pivot445_emscripten_compute_dom_pk_code159_a) - $signed(i_pivot445_emscripten_compute_dom_pk_code159_b));
    assign i_pivot445_emscripten_compute_dom_pk_code159_c[0] = i_pivot445_emscripten_compute_dom_pk_code159_o[33];

    // i_acl_2444_v_emscripten_compute_dom_pk_code632(MUX,125)@2
    assign i_acl_2444_v_emscripten_compute_dom_pk_code632_s = i_pivot445_emscripten_compute_dom_pk_code159_c;
    always @(i_acl_2444_v_emscripten_compute_dom_pk_code632_s or i_switchleaf443_emscripten_compute_dom_pk_code374_q or i_switchleaf441_emscripten_compute_dom_pk_code326_q)
    begin
        unique case (i_acl_2444_v_emscripten_compute_dom_pk_code632_s)
            1'b0 : i_acl_2444_v_emscripten_compute_dom_pk_code632_q = i_switchleaf443_emscripten_compute_dom_pk_code374_q;
            1'b1 : i_acl_2444_v_emscripten_compute_dom_pk_code632_q = i_switchleaf441_emscripten_compute_dom_pk_code326_q;
            default : i_acl_2444_v_emscripten_compute_dom_pk_code632_q = 1'b0;
        endcase
    end

    // i_pivot453_emscripten_compute_dom_pk_code139(COMPARE,643)@2
    assign i_pivot453_emscripten_compute_dom_pk_code139_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot453_emscripten_compute_dom_pk_code139_b = $unsigned({{2{c_i32_20729256601252_recast_x_q[31]}}, c_i32_20729256601252_recast_x_q});
    assign i_pivot453_emscripten_compute_dom_pk_code139_o = $unsigned($signed(i_pivot453_emscripten_compute_dom_pk_code139_a) - $signed(i_pivot453_emscripten_compute_dom_pk_code139_b));
    assign i_pivot453_emscripten_compute_dom_pk_code139_c[0] = i_pivot453_emscripten_compute_dom_pk_code139_o[33];

    // i_acl_2445_v_emscripten_compute_dom_pk_code633(MUX,126)@2
    assign i_acl_2445_v_emscripten_compute_dom_pk_code633_s = i_pivot453_emscripten_compute_dom_pk_code139_c;
    always @(i_acl_2445_v_emscripten_compute_dom_pk_code633_s or i_switchleaf451_emscripten_compute_dom_pk_code281_q or i_switchleaf449_emscripten_compute_dom_pk_code332_q)
    begin
        unique case (i_acl_2445_v_emscripten_compute_dom_pk_code633_s)
            1'b0 : i_acl_2445_v_emscripten_compute_dom_pk_code633_q = i_switchleaf451_emscripten_compute_dom_pk_code281_q;
            1'b1 : i_acl_2445_v_emscripten_compute_dom_pk_code633_q = i_switchleaf449_emscripten_compute_dom_pk_code332_q;
            default : i_acl_2445_v_emscripten_compute_dom_pk_code633_q = 1'b0;
        endcase
    end

    // i_pivot455_emscripten_compute_dom_pk_code223(COMPARE,644)@2
    assign i_pivot455_emscripten_compute_dom_pk_code223_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot455_emscripten_compute_dom_pk_code223_b = $unsigned({{2{c_i32_20729253321294_recast_x_q[31]}}, c_i32_20729253321294_recast_x_q});
    assign i_pivot455_emscripten_compute_dom_pk_code223_o = $unsigned($signed(i_pivot455_emscripten_compute_dom_pk_code223_a) - $signed(i_pivot455_emscripten_compute_dom_pk_code223_b));
    assign i_pivot455_emscripten_compute_dom_pk_code223_c[0] = i_pivot455_emscripten_compute_dom_pk_code223_o[33];

    // i_acl_2446_v_emscripten_compute_dom_pk_code634(MUX,127)@2
    assign i_acl_2446_v_emscripten_compute_dom_pk_code634_s = i_pivot455_emscripten_compute_dom_pk_code223_c;
    always @(i_acl_2446_v_emscripten_compute_dom_pk_code634_s or i_acl_2445_v_emscripten_compute_dom_pk_code633_q or i_switchleaf447_emscripten_compute_dom_pk_code491_q)
    begin
        unique case (i_acl_2446_v_emscripten_compute_dom_pk_code634_s)
            1'b0 : i_acl_2446_v_emscripten_compute_dom_pk_code634_q = i_acl_2445_v_emscripten_compute_dom_pk_code633_q;
            1'b1 : i_acl_2446_v_emscripten_compute_dom_pk_code634_q = i_switchleaf447_emscripten_compute_dom_pk_code491_q;
            default : i_acl_2446_v_emscripten_compute_dom_pk_code634_q = 1'b0;
        endcase
    end

    // i_pivot457_emscripten_compute_dom_pk_code93(COMPARE,645)@2
    assign i_pivot457_emscripten_compute_dom_pk_code93_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot457_emscripten_compute_dom_pk_code93_b = $unsigned({{2{c_i32_20729246421229_recast_x_q[31]}}, c_i32_20729246421229_recast_x_q});
    assign i_pivot457_emscripten_compute_dom_pk_code93_o = $unsigned($signed(i_pivot457_emscripten_compute_dom_pk_code93_a) - $signed(i_pivot457_emscripten_compute_dom_pk_code93_b));
    assign i_pivot457_emscripten_compute_dom_pk_code93_c[0] = i_pivot457_emscripten_compute_dom_pk_code93_o[33];

    // i_acl_2447_v_emscripten_compute_dom_pk_code635(MUX,129)@2 + 1
    assign i_acl_2447_v_emscripten_compute_dom_pk_code635_s = i_pivot457_emscripten_compute_dom_pk_code93_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2447_v_emscripten_compute_dom_pk_code635_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            unique case (i_acl_2447_v_emscripten_compute_dom_pk_code635_s)
                1'b0 : i_acl_2447_v_emscripten_compute_dom_pk_code635_q <= i_acl_2446_v_emscripten_compute_dom_pk_code634_q;
                1'b1 : i_acl_2447_v_emscripten_compute_dom_pk_code635_q <= i_acl_2444_v_emscripten_compute_dom_pk_code632_q;
                default : i_acl_2447_v_emscripten_compute_dom_pk_code635_q <= 1'b0;
            endcase
        end
    end

    // i_acl_2447_emscripten_compute_dom_pk_code636(LOGICAL,128)@3
    assign i_acl_2447_emscripten_compute_dom_pk_code636_q = i_acl_2447_v_emscripten_compute_dom_pk_code635_q ^ VCC_q;

    // i_switchleaf461_not_emscripten_compute_dom_pk_code348(LOGICAL,774)@2
    assign i_switchleaf461_not_emscripten_compute_dom_pk_code348_q = i_switchleaf461_emscripten_compute_dom_pk_code346_q ^ VCC_q;

    // i_acl_2448_emscripten_compute_dom_pk_code637(LOGICAL,130)@2 + 1
    assign i_acl_2448_emscripten_compute_dom_pk_code637_qi = i_pivot463_emscripten_compute_dom_pk_code357_c ^ i_switchleaf461_not_emscripten_compute_dom_pk_code348_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2448_emscripten_compute_dom_pk_code637_delay ( .xin(i_acl_2448_emscripten_compute_dom_pk_code637_qi), .xout(i_acl_2448_emscripten_compute_dom_pk_code637_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_acl_2451_emscripten_compute_dom_pk_code638(MUX,131)@3
    assign i_acl_2451_emscripten_compute_dom_pk_code638_s = i_pivot469_emscripten_compute_dom_pk_code63_c;
    always @(i_acl_2451_emscripten_compute_dom_pk_code638_s or i_acl_2448_emscripten_compute_dom_pk_code637_q or i_acl_2447_emscripten_compute_dom_pk_code636_q)
    begin
        unique case (i_acl_2451_emscripten_compute_dom_pk_code638_s)
            1'b0 : i_acl_2451_emscripten_compute_dom_pk_code638_q = i_acl_2448_emscripten_compute_dom_pk_code637_q;
            1'b1 : i_acl_2451_emscripten_compute_dom_pk_code638_q = i_acl_2447_emscripten_compute_dom_pk_code636_q;
            default : i_acl_2451_emscripten_compute_dom_pk_code638_q = 1'b0;
        endcase
    end

    // i_switchleaf481_not_emscripten_compute_dom_pk_code365(LOGICAL,776)@3
    assign i_switchleaf481_not_emscripten_compute_dom_pk_code365_q = i_switchleaf481_emscripten_compute_dom_pk_code363_q ^ VCC_q;

    // i_acl_2452_emscripten_compute_dom_pk_code639(LOGICAL,132)@3
    assign i_acl_2452_emscripten_compute_dom_pk_code639_q = i_pivot483_emscripten_compute_dom_pk_code366_c ^ i_switchleaf481_not_emscripten_compute_dom_pk_code365_q;

    // i_acl_2456_emscripten_compute_dom_pk_code640(MUX,133)@3
    assign i_acl_2456_emscripten_compute_dom_pk_code640_s = i_pivot491_emscripten_compute_dom_pk_code33_c;
    always @(i_acl_2456_emscripten_compute_dom_pk_code640_s or i_acl_2452_emscripten_compute_dom_pk_code639_q or i_acl_2451_emscripten_compute_dom_pk_code638_q)
    begin
        unique case (i_acl_2456_emscripten_compute_dom_pk_code640_s)
            1'b0 : i_acl_2456_emscripten_compute_dom_pk_code640_q = i_acl_2452_emscripten_compute_dom_pk_code639_q;
            1'b1 : i_acl_2456_emscripten_compute_dom_pk_code640_q = i_acl_2451_emscripten_compute_dom_pk_code638_q;
            default : i_acl_2456_emscripten_compute_dom_pk_code640_q = 1'b0;
        endcase
    end

    // i_pivot493_emscripten_compute_dom_pk_code25(COMPARE,663)@2 + 1
    assign i_pivot493_emscripten_compute_dom_pk_code25_a = $unsigned({{2{redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q[31]}}, redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q});
    assign i_pivot493_emscripten_compute_dom_pk_code25_b = $unsigned({{2{c_i32_19390642741195_recast_x_q[31]}}, c_i32_19390642741195_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot493_emscripten_compute_dom_pk_code25_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_pivot493_emscripten_compute_dom_pk_code25_o <= $unsigned($signed(i_pivot493_emscripten_compute_dom_pk_code25_a) - $signed(i_pivot493_emscripten_compute_dom_pk_code25_b));
        end
    end
    assign i_pivot493_emscripten_compute_dom_pk_code25_c[0] = i_pivot493_emscripten_compute_dom_pk_code25_o[33];

    // i_acl_2457_emscripten_compute_dom_pk_code641(MUX,134)@3
    assign i_acl_2457_emscripten_compute_dom_pk_code641_s = i_pivot493_emscripten_compute_dom_pk_code25_c;
    always @(i_acl_2457_emscripten_compute_dom_pk_code641_s or i_acl_2456_emscripten_compute_dom_pk_code640_q or i_acl_2443_emscripten_compute_dom_pk_code631_q)
    begin
        unique case (i_acl_2457_emscripten_compute_dom_pk_code641_s)
            1'b0 : i_acl_2457_emscripten_compute_dom_pk_code641_q = i_acl_2456_emscripten_compute_dom_pk_code640_q;
            1'b1 : i_acl_2457_emscripten_compute_dom_pk_code641_q = i_acl_2443_emscripten_compute_dom_pk_code631_q;
            default : i_acl_2457_emscripten_compute_dom_pk_code641_q = 1'b0;
        endcase
    end

    // i_acl_2458_emscripten_compute_dom_pk_code642(MUX,135)@3
    assign i_acl_2458_emscripten_compute_dom_pk_code642_s = i_pivot495_emscripten_compute_dom_pk_code15_c;
    always @(i_acl_2458_emscripten_compute_dom_pk_code642_s or i_acl_2457_emscripten_compute_dom_pk_code641_q or i_acl_2431_emscripten_compute_dom_pk_code618_q)
    begin
        unique case (i_acl_2458_emscripten_compute_dom_pk_code642_s)
            1'b0 : i_acl_2458_emscripten_compute_dom_pk_code642_q = i_acl_2457_emscripten_compute_dom_pk_code641_q;
            1'b1 : i_acl_2458_emscripten_compute_dom_pk_code642_q = i_acl_2431_emscripten_compute_dom_pk_code618_q;
            default : i_acl_2458_emscripten_compute_dom_pk_code642_q = 1'b0;
        endcase
    end

    // i_acl_2459_emscripten_compute_dom_pk_code643(MUX,136)@3
    assign i_acl_2459_emscripten_compute_dom_pk_code643_s = i_pivot497_emscripten_compute_dom_pk_code11_c;
    always @(i_acl_2459_emscripten_compute_dom_pk_code643_s or i_acl_2458_emscripten_compute_dom_pk_code642_q or i_acl_2398_emscripten_compute_dom_pk_code579_q)
    begin
        unique case (i_acl_2459_emscripten_compute_dom_pk_code643_s)
            1'b0 : i_acl_2459_emscripten_compute_dom_pk_code643_q = i_acl_2458_emscripten_compute_dom_pk_code642_q;
            1'b1 : i_acl_2459_emscripten_compute_dom_pk_code643_q = i_acl_2398_emscripten_compute_dom_pk_code579_q;
            default : i_acl_2459_emscripten_compute_dom_pk_code643_q = 1'b0;
        endcase
    end

    // i_and_emscripten_compute_dom_pk_code644(LOGICAL,357)@3
    assign i_and_emscripten_compute_dom_pk_code644_q = i_acl_2459_emscripten_compute_dom_pk_code643_q & redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;

    // redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2(DELAY,2114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q <= $unsigned(redist71_i_select2341_emscripten_compute_dom_pk_code10_q_1_q);
        end
    end

    // redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1(DELAY,2124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q <= $unsigned(i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,1791)@3
    assign out_c0_exi391_0_tpl = GND_q;
    assign out_c0_exi391_1_tpl = redist82_i_do_while_end_from_while_end_loopexit_emscripten_compute_dom_pk_code7_q_1_q;
    assign out_c0_exi391_2_tpl = redist72_i_select2341_emscripten_compute_dom_pk_code10_q_2_q;
    assign out_c0_exi391_3_tpl = i_and_emscripten_compute_dom_pk_code644_q;
    assign out_c0_exi391_4_tpl = i_and4335_emscripten_compute_dom_pk_code645_q;
    assign out_c0_exi391_5_tpl = i_unnamed_emscripten_compute_dom_pk_code647_q;
    assign out_c0_exi391_6_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_unknown306_emscripten_compute_dom_pk_code648_out_dest_data_out_149_0;
    assign out_c0_exi391_7_tpl = i_unnamed_emscripten_compute_dom_pk_code650_q;
    assign out_c0_exi391_8_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_select254_emscripten_compute_dom_pk_code651_out_dest_data_out_97_0;
    assign out_c0_exi391_9_tpl = i_unnamed_emscripten_compute_dom_pk_code653_q;
    assign out_c0_exi391_10_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_media_player251_emscripten_compute_dom_pk_code654_out_dest_data_out_94_0;
    assign out_c0_exi391_11_tpl = i_unnamed_emscripten_compute_dom_pk_code656_q;
    assign out_c0_exi391_12_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_mail250_emscripten_compute_dom_pk_code657_out_dest_data_out_93_0;
    assign out_c0_exi391_13_tpl = i_and2505_emscripten_compute_dom_pk_code659_q;
    assign out_c0_exi391_14_tpl = i_unnamed_emscripten_compute_dom_pk_code660_q;
    assign out_c0_exi391_15_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_1248_emscripten_compute_dom_pk_code661_out_dest_data_out_91_0;
    assign out_c0_exi391_16_tpl = i_unnamed_emscripten_compute_dom_pk_code663_q;
    assign out_c0_exi391_17_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_back184_emscripten_compute_dom_pk_code664_out_dest_data_out_27_0;
    assign out_c0_exi391_18_tpl = i_unnamed_emscripten_compute_dom_pk_code666_q;
    assign out_c0_exi391_19_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_forward186_emscripten_compute_dom_pk_code667_out_dest_data_out_29_0;
    assign out_c0_exi391_20_tpl = i_unnamed_emscripten_compute_dom_pk_code669_q;
    assign out_c0_exi391_21_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_stop190_emscripten_compute_dom_pk_code670_out_dest_data_out_33_0;
    assign out_c0_exi391_22_tpl = i_unnamed_emscripten_compute_dom_pk_code672_q;
    assign out_c0_exi391_23_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_refresh188_emscripten_compute_dom_pk_code673_out_dest_data_out_31_0;
    assign out_c0_exi391_24_tpl = i_unnamed_emscripten_compute_dom_pk_code675_q;
    assign out_c0_exi391_25_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_favorites185_emscripten_compute_dom_pk_code676_out_dest_data_out_28_0;
    assign out_c0_exi391_26_tpl = i_unnamed_emscripten_compute_dom_pk_code678_q;
    assign out_c0_exi391_27_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_search189_emscripten_compute_dom_pk_code679_out_dest_data_out_32_0;
    assign out_c0_exi391_28_tpl = i_unnamed_emscripten_compute_dom_pk_code681_q;
    assign out_c0_exi391_29_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_power291_emscripten_compute_dom_pk_code682_out_dest_data_out_134_0;
    assign out_c0_exi391_30_tpl = i_unnamed_emscripten_compute_dom_pk_code684_q;
    assign out_c0_exi391_31_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_context_menu194_emscripten_compute_dom_pk_code685_out_dest_data_out_37_0;
    assign out_c0_exi391_32_tpl = i_unnamed_emscripten_compute_dom_pk_code687_q;
    assign out_c0_exi391_33_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_right284_emscripten_compute_dom_pk_code688_out_dest_data_out_127_0;
    assign out_c0_exi391_34_tpl = i_unnamed_emscripten_compute_dom_pk_code690_q;
    assign out_c0_exi391_35_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_right259_emscripten_compute_dom_pk_code691_out_dest_data_out_102_0;
    assign out_c0_exi391_36_tpl = i_unnamed_emscripten_compute_dom_pk_code693_q;
    assign out_c0_exi391_37_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_os_left283_emscripten_compute_dom_pk_code694_out_dest_data_out_126_0;
    assign out_c0_exi391_38_tpl = i_unnamed_emscripten_compute_dom_pk_code696_q;
    assign out_c0_exi391_39_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_meta_left258_emscripten_compute_dom_pk_code697_out_dest_data_out_101_0;
    assign out_c0_exi391_40_tpl = i_unnamed_emscripten_compute_dom_pk_code699_q;
    assign out_c0_exi391_41_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_delete201_emscripten_compute_dom_pk_code700_out_dest_data_out_44_0;
    assign out_c0_exi391_42_tpl = i_unnamed_emscripten_compute_dom_pk_code702_q;
    assign out_c0_exi391_43_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_insert238_emscripten_compute_dom_pk_code703_out_dest_data_out_81_0;
    assign out_c0_exi391_44_tpl = i_unnamed_emscripten_compute_dom_pk_code705_q;
    assign out_c0_exi391_45_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_down286_emscripten_compute_dom_pk_code706_out_dest_data_out_129_0;
    assign out_c0_exi391_46_tpl = i_unnamed_emscripten_compute_dom_pk_code708_q;
    assign out_c0_exi391_47_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_down171_emscripten_compute_dom_pk_code709_out_dest_data_out_14_0;
    assign out_c0_exi391_48_tpl = i_unnamed_emscripten_compute_dom_pk_code711_q;
    assign out_c0_exi391_49_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_end204_emscripten_compute_dom_pk_code712_out_dest_data_out_47_0;
    assign out_c0_exi391_50_tpl = i_unnamed_emscripten_compute_dom_pk_code714_q;
    assign out_c0_exi391_51_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_right173_emscripten_compute_dom_pk_code715_out_dest_data_out_16_0;
    assign out_c0_exi391_52_tpl = i_unnamed_emscripten_compute_dom_pk_code717_q;
    assign out_c0_exi391_53_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_left172_emscripten_compute_dom_pk_code718_out_dest_data_out_15_0;
    assign out_c0_exi391_54_tpl = i_unnamed_emscripten_compute_dom_pk_code720_q;
    assign out_c0_exi391_55_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_page_up287_emscripten_compute_dom_pk_code721_out_dest_data_out_130_0;
    assign out_c0_exi391_56_tpl = i_unnamed_emscripten_compute_dom_pk_code723_q;
    assign out_c0_exi391_57_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_arrow_up174_emscripten_compute_dom_pk_code724_out_dest_data_out_17_0;
    assign out_c0_exi391_58_tpl = i_unnamed_emscripten_compute_dom_pk_code726_q;
    assign out_c0_exi391_59_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_home236_emscripten_compute_dom_pk_code727_out_dest_data_out_79_0;
    assign out_c0_exi391_60_tpl = i_unnamed_emscripten_compute_dom_pk_code729_q;
    assign out_c0_exi391_61_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_num_lock281_emscripten_compute_dom_pk_code730_out_dest_data_out_124_0;
    assign out_c0_exi391_62_tpl = i_unnamed_emscripten_compute_dom_pk_code732_q;
    assign out_c0_exi391_63_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_help235_emscripten_compute_dom_pk_code733_out_dest_data_out_78_0;
    assign out_c0_exi391_64_tpl = i_unnamed_emscripten_compute_dom_pk_code735_q;
    assign out_c0_exi391_65_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_right170_emscripten_compute_dom_pk_code736_out_dest_data_out_13_0;
    assign out_c0_exi391_66_tpl = i_unnamed_emscripten_compute_dom_pk_code738_q;
    assign out_c0_exi391_67_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_divide276_emscripten_compute_dom_pk_code739_out_dest_data_out_119_0;
    assign out_c0_exi391_68_tpl = i_unnamed_emscripten_compute_dom_pk_code741_q;
    assign out_c0_exi391_69_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_browser_home187_emscripten_compute_dom_pk_code742_out_dest_data_out_30_0;
    assign out_c0_exi391_70_tpl = i_unnamed_emscripten_compute_dom_pk_code746_q;
    assign out_c0_exi391_71_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_up177_emscripten_compute_dom_pk_code747_out_dest_data_out_20_0;
    assign out_c0_exi391_72_tpl = i_unnamed_emscripten_compute_dom_pk_code751_q;
    assign out_c0_exi391_73_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_down175_emscripten_compute_dom_pk_code752_out_dest_data_out_18_0;
    assign out_c0_exi391_74_tpl = i_unnamed_emscripten_compute_dom_pk_code754_q;
    assign out_c0_exi391_75_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_eject203_emscripten_compute_dom_pk_code755_out_dest_data_out_46_0;
    assign out_c0_exi391_76_tpl = i_unnamed_emscripten_compute_dom_pk_code757_q;
    assign out_c0_exi391_77_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_stop255_emscripten_compute_dom_pk_code758_out_dest_data_out_98_0;
    assign out_c0_exi391_78_tpl = i_unnamed_emscripten_compute_dom_pk_code760_q;
    assign out_c0_exi391_79_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_play_pause253_emscripten_compute_dom_pk_code761_out_dest_data_out_96_0;
    assign out_c0_exi391_80_tpl = i_unnamed_emscripten_compute_dom_pk_code763_q;
    assign out_c0_exi391_81_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_launch_app_2249_emscripten_compute_dom_pk_code764_out_dest_data_out_92_0;
    assign out_c0_exi391_82_tpl = i_unnamed_emscripten_compute_dom_pk_code768_q;
    assign out_c0_exi391_83_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_audio_volume_mute176_emscripten_compute_dom_pk_code769_out_dest_data_out_19_0;
    assign out_c0_exi391_84_tpl = i_unnamed_emscripten_compute_dom_pk_code771_q;
    assign out_c0_exi391_85_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_right196_emscripten_compute_dom_pk_code772_out_dest_data_out_39_0;
    assign out_c0_exi391_86_tpl = i_unnamed_emscripten_compute_dom_pk_code774_q;
    assign out_c0_exi391_87_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_enter277_emscripten_compute_dom_pk_code775_out_dest_data_out_120_0;
    assign out_c0_exi391_88_tpl = i_unnamed_emscripten_compute_dom_pk_code777_q;
    assign out_c0_exi391_89_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_next256_emscripten_compute_dom_pk_code778_out_dest_data_out_99_0;
    assign out_c0_exi391_90_tpl = i_unnamed_emscripten_compute_dom_pk_code780_q;
    assign out_c0_exi391_91_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_copy198_emscripten_compute_dom_pk_code781_out_dest_data_out_41_0;
    assign out_c0_exi391_92_tpl = i_unnamed_emscripten_compute_dom_pk_code783_q;
    assign out_c0_exi391_93_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_cut199_emscripten_compute_dom_pk_code784_out_dest_data_out_42_0;
    assign out_c0_exi391_94_tpl = i_unnamed_emscripten_compute_dom_pk_code786_q;
    assign out_c0_exi391_95_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_media_track_previous257_emscripten_compute_dom_pk_code787_out_dest_data_out_100_0;
    assign out_c0_exi391_96_tpl = i_unnamed_emscripten_compute_dom_pk_code789_q;
    assign out_c0_exi391_97_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_paste288_emscripten_compute_dom_pk_code790_out_dest_data_out_131_0;
    assign out_c0_exi391_98_tpl = i_unnamed_emscripten_compute_dom_pk_code792_q;
    assign out_c0_exi391_99_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_comma274_emscripten_compute_dom_pk_code793_out_dest_data_out_117_0;
    assign out_c0_exi391_100_tpl = i_unnamed_emscripten_compute_dom_pk_code795_q;
    assign out_c0_exi391_101_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_yen241_emscripten_compute_dom_pk_code796_out_dest_data_out_84_0;
    assign out_c0_exi391_102_tpl = i_unnamed_emscripten_compute_dom_pk_code798_q;
    assign out_c0_exi391_103_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_non_convert262_emscripten_compute_dom_pk_code799_out_dest_data_out_105_0;
    assign out_c0_exi391_104_tpl = i_unnamed_emscripten_compute_dom_pk_code801_q;
    assign out_c0_exi391_105_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_convert197_emscripten_compute_dom_pk_code802_out_dest_data_out_40_0;
    assign out_c0_exi391_106_tpl = i_unnamed_emscripten_compute_dom_pk_code804_q;
    assign out_c0_exi391_107_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f24225_emscripten_compute_dom_pk_code805_out_dest_data_out_68_0;
    assign out_c0_exi391_108_tpl = i_unnamed_emscripten_compute_dom_pk_code807_q;
    assign out_c0_exi391_109_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_ro240_emscripten_compute_dom_pk_code808_out_dest_data_out_83_0;
    assign out_c0_exi391_110_tpl = i_and3136_emscripten_compute_dom_pk_code810_q;
    assign out_c0_exi391_111_tpl = i_unnamed_emscripten_compute_dom_pk_code811_q;
    assign out_c0_exi391_112_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_1246_emscripten_compute_dom_pk_code812_out_dest_data_out_89_0;
    assign out_c0_exi391_113_tpl = i_and3149_emscripten_compute_dom_pk_code813_q;
    assign out_c0_exi391_114_tpl = i_unnamed_emscripten_compute_dom_pk_code814_q;
    assign out_c0_exi391_115_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_lang_2247_emscripten_compute_dom_pk_code815_out_dest_data_out_90_0;
    assign out_c0_exi391_116_tpl = i_and3161_emscripten_compute_dom_pk_code816_q;
    assign out_c0_exi391_117_tpl = i_unnamed_emscripten_compute_dom_pk_code817_q;
    assign out_c0_exi391_118_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_kana_mode244_emscripten_compute_dom_pk_code818_out_dest_data_out_87_0;
    assign out_c0_exi391_119_tpl = i_and3173_emscripten_compute_dom_pk_code820_q;
    assign out_c0_exi391_120_tpl = i_unnamed_emscripten_compute_dom_pk_code821_q;
    assign out_c0_exi391_121_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f23224_emscripten_compute_dom_pk_code822_out_dest_data_out_67_0;
    assign out_c0_exi391_122_tpl = i_and3184_emscripten_compute_dom_pk_code824_q;
    assign out_c0_exi391_123_tpl = i_unnamed_emscripten_compute_dom_pk_code825_q;
    assign out_c0_exi391_124_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f22223_emscripten_compute_dom_pk_code826_out_dest_data_out_66_0;
    assign out_c0_exi391_125_tpl = i_and3195_emscripten_compute_dom_pk_code828_q;
    assign out_c0_exi391_126_tpl = i_unnamed_emscripten_compute_dom_pk_code829_q;
    assign out_c0_exi391_127_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f21222_emscripten_compute_dom_pk_code830_out_dest_data_out_65_0;
    assign out_c0_exi391_128_tpl = i_and3206_emscripten_compute_dom_pk_code832_q;
    assign out_c0_exi391_129_tpl = i_unnamed_emscripten_compute_dom_pk_code833_q;
    assign out_c0_exi391_130_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f20221_emscripten_compute_dom_pk_code834_out_dest_data_out_64_0;
    assign out_c0_exi391_131_tpl = i_and3219_emscripten_compute_dom_pk_code835_q;
    assign out_c0_exi391_132_tpl = i_unnamed_emscripten_compute_dom_pk_code836_q;
    assign out_c0_exi391_133_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f19219_emscripten_compute_dom_pk_code837_out_dest_data_out_62_0;
    assign out_c0_exi391_134_tpl = i_and3231_emscripten_compute_dom_pk_code839_q;
    assign out_c0_exi391_135_tpl = i_unnamed_emscripten_compute_dom_pk_code840_q;
    assign out_c0_exi391_136_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f18218_emscripten_compute_dom_pk_code841_out_dest_data_out_61_0;
    assign out_c0_exi391_137_tpl = i_and3242_emscripten_compute_dom_pk_code843_q;
    assign out_c0_exi391_138_tpl = i_unnamed_emscripten_compute_dom_pk_code844_q;
    assign out_c0_exi391_139_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f17217_emscripten_compute_dom_pk_code845_out_dest_data_out_60_0;
    assign out_c0_exi391_140_tpl = i_and3253_emscripten_compute_dom_pk_code847_q;
    assign out_c0_exi391_141_tpl = i_unnamed_emscripten_compute_dom_pk_code848_q;
    assign out_c0_exi391_142_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f16216_emscripten_compute_dom_pk_code849_out_dest_data_out_59_0;
    assign out_c0_exi391_143_tpl = i_and3264_emscripten_compute_dom_pk_code851_q;
    assign out_c0_exi391_144_tpl = i_unnamed_emscripten_compute_dom_pk_code852_q;
    assign out_c0_exi391_145_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f15215_emscripten_compute_dom_pk_code853_out_dest_data_out_58_0;
    assign out_c0_exi391_146_tpl = i_and3276_emscripten_compute_dom_pk_code855_q;
    assign out_c0_exi391_147_tpl = i_unnamed_emscripten_compute_dom_pk_code856_q;
    assign out_c0_exi391_148_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f14214_emscripten_compute_dom_pk_code857_out_dest_data_out_57_0;
    assign out_c0_exi391_149_tpl = i_and3288_emscripten_compute_dom_pk_code859_q;
    assign out_c0_exi391_150_tpl = i_unnamed_emscripten_compute_dom_pk_code860_q;
    assign out_c0_exi391_151_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f13213_emscripten_compute_dom_pk_code861_out_dest_data_out_56_0;
    assign out_c0_exi391_152_tpl = i_and3300_emscripten_compute_dom_pk_code862_q;
    assign out_c0_exi391_153_tpl = i_unnamed_emscripten_compute_dom_pk_code863_q;
    assign out_c0_exi391_154_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_equal278_emscripten_compute_dom_pk_code864_out_dest_data_out_121_0;
    assign out_c0_exi391_155_tpl = i_and3311_emscripten_compute_dom_pk_code866_q;
    assign out_c0_exi391_156_tpl = i_unnamed_emscripten_compute_dom_pk_code867_q;
    assign out_c0_exi391_157_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f12212_emscripten_compute_dom_pk_code868_out_dest_data_out_55_0;
    assign out_c0_exi391_158_tpl = i_and3322_emscripten_compute_dom_pk_code870_q;
    assign out_c0_exi391_159_tpl = i_unnamed_emscripten_compute_dom_pk_code871_q;
    assign out_c0_exi391_160_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f11211_emscripten_compute_dom_pk_code872_out_dest_data_out_54_0;
    assign out_c0_exi391_161_tpl = i_unnamed_emscripten_compute_dom_pk_code874_q;
    assign out_c0_exi391_162_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_intl_backslash239_emscripten_compute_dom_pk_code875_out_dest_data_out_82_0;
    assign out_c0_exi391_163_tpl = i_unnamed_emscripten_compute_dom_pk_code877_q;
    assign out_c0_exi391_164_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_print_screen292_emscripten_compute_dom_pk_code878_out_dest_data_out_135_0;
    assign out_c0_exi391_165_tpl = i_unnamed_emscripten_compute_dom_pk_code880_q;
    assign out_c0_exi391_166_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_decimal275_emscripten_compute_dom_pk_code881_out_dest_data_out_118_0;
    assign out_c0_exi391_167_tpl = i_and3371_emscripten_compute_dom_pk_code883_q;
    assign out_c0_exi391_168_tpl = i_unnamed_emscripten_compute_dom_pk_code884_q;
    assign out_c0_exi391_169_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_0263_emscripten_compute_dom_pk_code885_out_dest_data_out_106_0;
    assign out_c0_exi391_170_tpl = i_and3383_emscripten_compute_dom_pk_code887_q;
    assign out_c0_exi391_171_tpl = i_unnamed_emscripten_compute_dom_pk_code888_q;
    assign out_c0_exi391_172_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_3266_emscripten_compute_dom_pk_code889_out_dest_data_out_109_0;
    assign out_c0_exi391_173_tpl = i_and3394_emscripten_compute_dom_pk_code891_q;
    assign out_c0_exi391_174_tpl = i_unnamed_emscripten_compute_dom_pk_code892_q;
    assign out_c0_exi391_175_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_2265_emscripten_compute_dom_pk_code893_out_dest_data_out_108_0;
    assign out_c0_exi391_176_tpl = i_and3405_emscripten_compute_dom_pk_code895_q;
    assign out_c0_exi391_177_tpl = i_unnamed_emscripten_compute_dom_pk_code896_q;
    assign out_c0_exi391_178_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_1264_emscripten_compute_dom_pk_code897_out_dest_data_out_107_0;
    assign out_c0_exi391_179_tpl = i_and3418_emscripten_compute_dom_pk_code898_q;
    assign out_c0_exi391_180_tpl = i_unnamed_emscripten_compute_dom_pk_code899_q;
    assign out_c0_exi391_181_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_add273_emscripten_compute_dom_pk_code900_out_dest_data_out_116_0;
    assign out_c0_exi391_182_tpl = i_and3429_emscripten_compute_dom_pk_code902_q;
    assign out_c0_exi391_183_tpl = i_unnamed_emscripten_compute_dom_pk_code903_q;
    assign out_c0_exi391_184_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_6269_emscripten_compute_dom_pk_code904_out_dest_data_out_112_0;
    assign out_c0_exi391_185_tpl = i_and3440_emscripten_compute_dom_pk_code906_q;
    assign out_c0_exi391_186_tpl = i_unnamed_emscripten_compute_dom_pk_code907_q;
    assign out_c0_exi391_187_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_5268_emscripten_compute_dom_pk_code908_out_dest_data_out_111_0;
    assign out_c0_exi391_188_tpl = i_and3452_emscripten_compute_dom_pk_code910_q;
    assign out_c0_exi391_189_tpl = i_unnamed_emscripten_compute_dom_pk_code911_q;
    assign out_c0_exi391_190_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_4267_emscripten_compute_dom_pk_code912_out_dest_data_out_110_0;
    assign out_c0_exi391_191_tpl = i_and3464_emscripten_compute_dom_pk_code913_q;
    assign out_c0_exi391_192_tpl = i_unnamed_emscripten_compute_dom_pk_code914_q;
    assign out_c0_exi391_193_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_subtract280_emscripten_compute_dom_pk_code915_out_dest_data_out_123_0;
    assign out_c0_exi391_194_tpl = i_and3477_emscripten_compute_dom_pk_code916_q;
    assign out_c0_exi391_195_tpl = i_unnamed_emscripten_compute_dom_pk_code917_q;
    assign out_c0_exi391_196_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_9272_emscripten_compute_dom_pk_code918_out_dest_data_out_115_0;
    assign out_c0_exi391_197_tpl = i_and3489_emscripten_compute_dom_pk_code920_q;
    assign out_c0_exi391_198_tpl = i_unnamed_emscripten_compute_dom_pk_code921_q;
    assign out_c0_exi391_199_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_8271_emscripten_compute_dom_pk_code922_out_dest_data_out_114_0;
    assign out_c0_exi391_200_tpl = i_unnamed_emscripten_compute_dom_pk_code924_q;
    assign out_c0_exi391_201_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_7270_emscripten_compute_dom_pk_code925_out_dest_data_out_113_0;
    assign out_c0_exi391_202_tpl = i_unnamed_emscripten_compute_dom_pk_code927_q;
    assign out_c0_exi391_203_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_scroll_lock297_emscripten_compute_dom_pk_code928_out_dest_data_out_140_0;
    assign out_c0_exi391_204_tpl = i_unnamed_emscripten_compute_dom_pk_code930_q;
    assign out_c0_exi391_205_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_pause289_emscripten_compute_dom_pk_code931_out_dest_data_out_132_0;
    assign out_c0_exi391_206_tpl = i_and3536_emscripten_compute_dom_pk_code933_q;
    assign out_c0_exi391_207_tpl = i_unnamed_emscripten_compute_dom_pk_code934_q;
    assign out_c0_exi391_208_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f10210_emscripten_compute_dom_pk_code935_out_dest_data_out_53_0;
    assign out_c0_exi391_209_tpl = i_and3548_emscripten_compute_dom_pk_code936_q;
    assign out_c0_exi391_210_tpl = i_unnamed_emscripten_compute_dom_pk_code937_q;
    assign out_c0_exi391_211_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f9232_emscripten_compute_dom_pk_code938_out_dest_data_out_75_0;
    assign out_c0_exi391_212_tpl = i_and3559_emscripten_compute_dom_pk_code940_q;
    assign out_c0_exi391_213_tpl = i_unnamed_emscripten_compute_dom_pk_code941_q;
    assign out_c0_exi391_214_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f8231_emscripten_compute_dom_pk_code942_out_dest_data_out_74_0;
    assign out_c0_exi391_215_tpl = i_and3572_emscripten_compute_dom_pk_code943_q;
    assign out_c0_exi391_216_tpl = i_unnamed_emscripten_compute_dom_pk_code944_q;
    assign out_c0_exi391_217_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f7230_emscripten_compute_dom_pk_code945_out_dest_data_out_73_0;
    assign out_c0_exi391_218_tpl = i_and3583_emscripten_compute_dom_pk_code947_q;
    assign out_c0_exi391_219_tpl = i_unnamed_emscripten_compute_dom_pk_code948_q;
    assign out_c0_exi391_220_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f6229_emscripten_compute_dom_pk_code949_out_dest_data_out_72_0;
    assign out_c0_exi391_221_tpl = i_and3594_emscripten_compute_dom_pk_code951_q;
    assign out_c0_exi391_222_tpl = i_unnamed_emscripten_compute_dom_pk_code952_q;
    assign out_c0_exi391_223_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f5228_emscripten_compute_dom_pk_code953_out_dest_data_out_71_0;
    assign out_c0_exi391_224_tpl = i_and3605_emscripten_compute_dom_pk_code955_q;
    assign out_c0_exi391_225_tpl = i_unnamed_emscripten_compute_dom_pk_code956_q;
    assign out_c0_exi391_226_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f4227_emscripten_compute_dom_pk_code957_out_dest_data_out_70_0;
    assign out_c0_exi391_227_tpl = i_and3617_emscripten_compute_dom_pk_code959_q;
    assign out_c0_exi391_228_tpl = i_unnamed_emscripten_compute_dom_pk_code960_q;
    assign out_c0_exi391_229_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f3226_emscripten_compute_dom_pk_code961_out_dest_data_out_69_0;
    assign out_c0_exi391_230_tpl = i_and3629_emscripten_compute_dom_pk_code963_q;
    assign out_c0_exi391_231_tpl = i_unnamed_emscripten_compute_dom_pk_code964_q;
    assign out_c0_exi391_232_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f2220_emscripten_compute_dom_pk_code965_out_dest_data_out_63_0;
    assign out_c0_exi391_233_tpl = i_and3640_emscripten_compute_dom_pk_code967_q;
    assign out_c0_exi391_234_tpl = i_unnamed_emscripten_compute_dom_pk_code968_q;
    assign out_c0_exi391_235_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f1209_emscripten_compute_dom_pk_code969_out_dest_data_out_52_0;
    assign out_c0_exi391_236_tpl = i_unnamed_emscripten_compute_dom_pk_code971_q;
    assign out_c0_exi391_237_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_caps_lock192_emscripten_compute_dom_pk_code972_out_dest_data_out_35_0;
    assign out_c0_exi391_238_tpl = i_unnamed_emscripten_compute_dom_pk_code974_q;
    assign out_c0_exi391_239_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_space302_emscripten_compute_dom_pk_code975_out_dest_data_out_145_0;
    assign out_c0_exi391_240_tpl = i_unnamed_emscripten_compute_dom_pk_code977_q;
    assign out_c0_exi391_241_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_alt_left169_emscripten_compute_dom_pk_code978_out_dest_data_out_12_0;
    assign out_c0_exi391_242_tpl = i_unnamed_emscripten_compute_dom_pk_code980_q;
    assign out_c0_exi391_243_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_numpad_multiply279_emscripten_compute_dom_pk_code981_out_dest_data_out_122_0;
    assign out_c0_exi391_244_tpl = i_unnamed_emscripten_compute_dom_pk_code983_q;
    assign out_c0_exi391_245_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_right300_emscripten_compute_dom_pk_code984_out_dest_data_out_143_0;
    assign out_c0_exi391_246_tpl = i_unnamed_emscripten_compute_dom_pk_code986_q;
    assign out_c0_exi391_247_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_slash301_emscripten_compute_dom_pk_code987_out_dest_data_out_144_0;
    assign out_c0_exi391_248_tpl = i_unnamed_emscripten_compute_dom_pk_code989_q;
    assign out_c0_exi391_249_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_period290_emscripten_compute_dom_pk_code990_out_dest_data_out_133_0;
    assign out_c0_exi391_250_tpl = i_unnamed_emscripten_compute_dom_pk_code992_q;
    assign out_c0_exi391_251_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_comma193_emscripten_compute_dom_pk_code993_out_dest_data_out_36_0;
    assign out_c0_exi391_252_tpl = i_and3752_emscripten_compute_dom_pk_code995_q;
    assign out_c0_exi391_253_tpl = i_unnamed_emscripten_compute_dom_pk_code996_q;
    assign out_c0_exi391_254_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_m252_emscripten_compute_dom_pk_code997_out_dest_data_out_95_0;
    assign out_c0_exi391_255_tpl = i_and3764_emscripten_compute_dom_pk_code999_q;
    assign out_c0_exi391_256_tpl = i_unnamed_emscripten_compute_dom_pk_code1000_q;
    assign out_c0_exi391_257_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_n261_emscripten_compute_dom_pk_code1001_out_dest_data_out_104_0;
    assign out_c0_exi391_258_tpl = i_and3775_emscripten_compute_dom_pk_code1003_q;
    assign out_c0_exi391_259_tpl = i_unnamed_emscripten_compute_dom_pk_code1004_q;
    assign out_c0_exi391_260_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_b178_emscripten_compute_dom_pk_code1005_out_dest_data_out_21_0;
    assign out_c0_exi391_261_tpl = i_and3786_emscripten_compute_dom_pk_code1007_q;
    assign out_c0_exi391_262_tpl = i_unnamed_emscripten_compute_dom_pk_code1008_q;
    assign out_c0_exi391_263_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_v307_emscripten_compute_dom_pk_code1009_out_dest_data_out_150_0;
    assign out_c0_exi391_264_tpl = i_and3798_emscripten_compute_dom_pk_code1011_q;
    assign out_c0_exi391_265_tpl = i_unnamed_emscripten_compute_dom_pk_code1012_q;
    assign out_c0_exi391_266_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_c191_emscripten_compute_dom_pk_code1013_out_dest_data_out_34_0;
    assign out_c0_exi391_267_tpl = i_and3809_emscripten_compute_dom_pk_code1015_q;
    assign out_c0_exi391_268_tpl = i_unnamed_emscripten_compute_dom_pk_code1016_q;
    assign out_c0_exi391_269_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_x309_emscripten_compute_dom_pk_code1017_out_dest_data_out_152_0;
    assign out_c0_exi391_270_tpl = i_unnamed_emscripten_compute_dom_pk_code1019_q;
    assign out_c0_exi391_271_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_z311_emscripten_compute_dom_pk_code1020_out_dest_data_out_154_0;
    assign out_c0_exi391_272_tpl = i_unnamed_emscripten_compute_dom_pk_code1022_q;
    assign out_c0_exi391_273_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backslash180_emscripten_compute_dom_pk_code1023_out_dest_data_out_23_0;
    assign out_c0_exi391_274_tpl = i_unnamed_emscripten_compute_dom_pk_code1025_q;
    assign out_c0_exi391_275_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_shift_left299_emscripten_compute_dom_pk_code1026_out_dest_data_out_142_0;
    assign out_c0_exi391_276_tpl = i_unnamed_emscripten_compute_dom_pk_code1028_q;
    assign out_c0_exi391_277_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backquote179_emscripten_compute_dom_pk_code1029_out_dest_data_out_22_0;
    assign out_c0_exi391_278_tpl = i_unnamed_emscripten_compute_dom_pk_code1031_q;
    assign out_c0_exi391_279_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_quote294_emscripten_compute_dom_pk_code1032_out_dest_data_out_137_0;
    assign out_c0_exi391_280_tpl = i_unnamed_emscripten_compute_dom_pk_code1034_q;
    assign out_c0_exi391_281_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_semicolon298_emscripten_compute_dom_pk_code1035_out_dest_data_out_141_0;
    assign out_c0_exi391_282_tpl = i_and3894_emscripten_compute_dom_pk_code1037_q;
    assign out_c0_exi391_283_tpl = i_unnamed_emscripten_compute_dom_pk_code1038_q;
    assign out_c0_exi391_284_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_l245_emscripten_compute_dom_pk_code1039_out_dest_data_out_88_0;
    assign out_c0_exi391_285_tpl = i_and3905_emscripten_compute_dom_pk_code1041_q;
    assign out_c0_exi391_286_tpl = i_unnamed_emscripten_compute_dom_pk_code1042_q;
    assign out_c0_exi391_287_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_k243_emscripten_compute_dom_pk_code1043_out_dest_data_out_86_0;
    assign out_c0_exi391_288_tpl = i_and3916_emscripten_compute_dom_pk_code1045_q;
    assign out_c0_exi391_289_tpl = i_unnamed_emscripten_compute_dom_pk_code1046_q;
    assign out_c0_exi391_290_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_j242_emscripten_compute_dom_pk_code1047_out_dest_data_out_85_0;
    assign out_c0_exi391_291_tpl = i_and3928_emscripten_compute_dom_pk_code1049_q;
    assign out_c0_exi391_292_tpl = i_unnamed_emscripten_compute_dom_pk_code1050_q;
    assign out_c0_exi391_293_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_h234_emscripten_compute_dom_pk_code1051_out_dest_data_out_77_0;
    assign out_c0_exi391_294_tpl = i_and3939_emscripten_compute_dom_pk_code1053_q;
    assign out_c0_exi391_295_tpl = i_unnamed_emscripten_compute_dom_pk_code1054_q;
    assign out_c0_exi391_296_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_g233_emscripten_compute_dom_pk_code1055_out_dest_data_out_76_0;
    assign out_c0_exi391_297_tpl = i_and3950_emscripten_compute_dom_pk_code1057_q;
    assign out_c0_exi391_298_tpl = i_unnamed_emscripten_compute_dom_pk_code1058_q;
    assign out_c0_exi391_299_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_f208_emscripten_compute_dom_pk_code1059_out_dest_data_out_51_0;
    assign out_c0_exi391_300_tpl = i_and3962_emscripten_compute_dom_pk_code1061_q;
    assign out_c0_exi391_301_tpl = i_unnamed_emscripten_compute_dom_pk_code1062_q;
    assign out_c0_exi391_302_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_d200_emscripten_compute_dom_pk_code1063_out_dest_data_out_43_0;
    assign out_c0_exi391_303_tpl = i_and3974_emscripten_compute_dom_pk_code1065_q;
    assign out_c0_exi391_304_tpl = i_unnamed_emscripten_compute_dom_pk_code1066_q;
    assign out_c0_exi391_305_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_s296_emscripten_compute_dom_pk_code1067_out_dest_data_out_139_0;
    assign out_c0_exi391_306_tpl = i_and3985_emscripten_compute_dom_pk_code1069_q;
    assign out_c0_exi391_307_tpl = i_unnamed_emscripten_compute_dom_pk_code1070_q;
    assign out_c0_exi391_308_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_a168_emscripten_compute_dom_pk_code1071_out_dest_data_out_11_0;
    assign out_c0_exi391_309_tpl = i_unnamed_emscripten_compute_dom_pk_code1073_q;
    assign out_c0_exi391_310_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_control_left195_emscripten_compute_dom_pk_code1074_out_dest_data_out_38_0;
    assign out_c0_exi391_311_tpl = i_unnamed_emscripten_compute_dom_pk_code1076_q;
    assign out_c0_exi391_312_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_enter205_emscripten_compute_dom_pk_code1077_out_dest_data_out_48_0;
    assign out_c0_exi391_313_tpl = i_unnamed_emscripten_compute_dom_pk_code1079_q;
    assign out_c0_exi391_314_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_right183_emscripten_compute_dom_pk_code1080_out_dest_data_out_26_0;
    assign out_c0_exi391_315_tpl = i_unnamed_emscripten_compute_dom_pk_code1082_q;
    assign out_c0_exi391_316_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_bracket_left182_emscripten_compute_dom_pk_code1083_out_dest_data_out_25_0;
    assign out_c0_exi391_317_tpl = i_and4044_emscripten_compute_dom_pk_code1085_q;
    assign out_c0_exi391_318_tpl = i_unnamed_emscripten_compute_dom_pk_code1086_q;
    assign out_c0_exi391_319_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_p285_emscripten_compute_dom_pk_code1087_out_dest_data_out_128_0;
    assign out_c0_exi391_320_tpl = i_and4055_emscripten_compute_dom_pk_code1089_q;
    assign out_c0_exi391_321_tpl = i_unnamed_emscripten_compute_dom_pk_code1090_q;
    assign out_c0_exi391_322_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_o282_emscripten_compute_dom_pk_code1091_out_dest_data_out_125_0;
    assign out_c0_exi391_323_tpl = i_and4067_emscripten_compute_dom_pk_code1093_q;
    assign out_c0_exi391_324_tpl = i_unnamed_emscripten_compute_dom_pk_code1094_q;
    assign out_c0_exi391_325_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_i237_emscripten_compute_dom_pk_code1095_out_dest_data_out_80_0;
    assign out_c0_exi391_326_tpl = i_and4078_emscripten_compute_dom_pk_code1097_q;
    assign out_c0_exi391_327_tpl = i_unnamed_emscripten_compute_dom_pk_code1098_q;
    assign out_c0_exi391_328_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_u305_emscripten_compute_dom_pk_code1099_out_dest_data_out_148_0;
    assign out_c0_exi391_329_tpl = i_and4089_emscripten_compute_dom_pk_code1101_q;
    assign out_c0_exi391_330_tpl = i_unnamed_emscripten_compute_dom_pk_code1102_q;
    assign out_c0_exi391_331_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_y310_emscripten_compute_dom_pk_code1103_out_dest_data_out_153_0;
    assign out_c0_exi391_332_tpl = i_and4100_emscripten_compute_dom_pk_code1105_q;
    assign out_c0_exi391_333_tpl = i_unnamed_emscripten_compute_dom_pk_code1106_q;
    assign out_c0_exi391_334_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_t303_emscripten_compute_dom_pk_code1107_out_dest_data_out_146_0;
    assign out_c0_exi391_335_tpl = i_and4112_emscripten_compute_dom_pk_code1109_q;
    assign out_c0_exi391_336_tpl = i_unnamed_emscripten_compute_dom_pk_code1110_q;
    assign out_c0_exi391_337_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_r295_emscripten_compute_dom_pk_code1111_out_dest_data_out_138_0;
    assign out_c0_exi391_338_tpl = i_and4123_emscripten_compute_dom_pk_code1113_q;
    assign out_c0_exi391_339_tpl = i_unnamed_emscripten_compute_dom_pk_code1114_q;
    assign out_c0_exi391_340_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_e202_emscripten_compute_dom_pk_code1115_out_dest_data_out_45_0;
    assign out_c0_exi391_341_tpl = i_and4134_emscripten_compute_dom_pk_code1117_q;
    assign out_c0_exi391_342_tpl = i_unnamed_emscripten_compute_dom_pk_code1118_q;
    assign out_c0_exi391_343_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_w308_emscripten_compute_dom_pk_code1119_out_dest_data_out_151_0;
    assign out_c0_exi391_344_tpl = i_and4145_emscripten_compute_dom_pk_code1121_q;
    assign out_c0_exi391_345_tpl = i_unnamed_emscripten_compute_dom_pk_code1122_q;
    assign out_c0_exi391_346_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_q293_emscripten_compute_dom_pk_code1123_out_dest_data_out_136_0;
    assign out_c0_exi391_347_tpl = i_unnamed_emscripten_compute_dom_pk_code1125_q;
    assign out_c0_exi391_348_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_tab304_emscripten_compute_dom_pk_code1126_out_dest_data_out_147_0;
    assign out_c0_exi391_349_tpl = i_unnamed_emscripten_compute_dom_pk_code1128_q;
    assign out_c0_exi391_350_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_backspace181_emscripten_compute_dom_pk_code1129_out_dest_data_out_24_0;
    assign out_c0_exi391_351_tpl = i_unnamed_emscripten_compute_dom_pk_code1131_q;
    assign out_c0_exi391_352_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_equal206_emscripten_compute_dom_pk_code1132_out_dest_data_out_49_0;
    assign out_c0_exi391_353_tpl = i_unnamed_emscripten_compute_dom_pk_code1134_q;
    assign out_c0_exi391_354_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_minus260_emscripten_compute_dom_pk_code1135_out_dest_data_out_103_0;
    assign out_c0_exi391_355_tpl = i_unnamed_emscripten_compute_dom_pk_code1137_q;
    assign out_c0_exi391_356_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_9167_emscripten_compute_dom_pk_code1138_out_dest_data_out_10_0;
    assign out_c0_exi391_357_tpl = i_and4218_emscripten_compute_dom_pk_code1140_q;
    assign out_c0_exi391_358_tpl = i_unnamed_emscripten_compute_dom_pk_code1141_q;
    assign out_c0_exi391_359_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_8166_emscripten_compute_dom_pk_code1142_out_dest_data_out_9_0;
    assign out_c0_exi391_360_tpl = i_and4230_emscripten_compute_dom_pk_code1143_q;
    assign out_c0_exi391_361_tpl = i_unnamed_emscripten_compute_dom_pk_code1144_q;
    assign out_c0_exi391_362_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_7165_emscripten_compute_dom_pk_code1145_out_dest_data_out_8_0;
    assign out_c0_exi391_363_tpl = i_and4242_emscripten_compute_dom_pk_code1147_q;
    assign out_c0_exi391_364_tpl = i_unnamed_emscripten_compute_dom_pk_code1148_q;
    assign out_c0_exi391_365_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_6164_emscripten_compute_dom_pk_code1149_out_dest_data_out_7_0;
    assign out_c0_exi391_366_tpl = i_and4254_emscripten_compute_dom_pk_code1151_q;
    assign out_c0_exi391_367_tpl = i_unnamed_emscripten_compute_dom_pk_code1152_q;
    assign out_c0_exi391_368_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_5163_emscripten_compute_dom_pk_code1153_out_dest_data_out_6_0;
    assign out_c0_exi391_369_tpl = i_and4265_emscripten_compute_dom_pk_code1155_q;
    assign out_c0_exi391_370_tpl = i_unnamed_emscripten_compute_dom_pk_code1156_q;
    assign out_c0_exi391_371_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_4162_emscripten_compute_dom_pk_code1157_out_dest_data_out_5_0;
    assign out_c0_exi391_372_tpl = i_and4276_emscripten_compute_dom_pk_code1159_q;
    assign out_c0_exi391_373_tpl = i_unnamed_emscripten_compute_dom_pk_code1160_q;
    assign out_c0_exi391_374_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_3161_emscripten_compute_dom_pk_code1161_out_dest_data_out_4_0;
    assign out_c0_exi391_375_tpl = i_and4287_emscripten_compute_dom_pk_code1163_q;
    assign out_c0_exi391_376_tpl = i_unnamed_emscripten_compute_dom_pk_code1164_q;
    assign out_c0_exi391_377_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_2160_emscripten_compute_dom_pk_code1165_out_dest_data_out_3_0;
    assign out_c0_exi391_378_tpl = i_and4299_emscripten_compute_dom_pk_code1167_q;
    assign out_c0_exi391_379_tpl = i_unnamed_emscripten_compute_dom_pk_code1168_q;
    assign out_c0_exi391_380_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_1159_emscripten_compute_dom_pk_code1169_out_dest_data_out_2_0;
    assign out_c0_exi391_381_tpl = i_and4311_emscripten_compute_dom_pk_code1171_q;
    assign out_c0_exi391_382_tpl = i_unnamed_emscripten_compute_dom_pk_code1172_q;
    assign out_c0_exi391_383_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_0158_emscripten_compute_dom_pk_code1173_out_dest_data_out_1_0;
    assign out_c0_exi391_384_tpl = i_and4323_emscripten_compute_dom_pk_code1174_q;
    assign out_c0_exi391_385_tpl = i_unnamed_emscripten_compute_dom_pk_code1175_q;
    assign out_c0_exi391_386_tpl = i_llvm_fpga_ffwd_dest_p1024i32_dom_pk_escape207_emscripten_compute_dom_pk_code1176_out_dest_data_out_50_0;
    assign out_c0_exi391_387_tpl = i_sel_shr_emscripten_compute_dom_pk_code1177_vt_join_q;
    assign out_c0_exi391_388_tpl = i_sel_shr4809_emscripten_compute_dom_pk_code1178_vt_join_q;
    assign out_c0_exi391_389_tpl = i_sel_shr5006_emscripten_compute_dom_pk_code1179_vt_join_q;
    assign out_c0_exi391_390_tpl = i_sel_shr5805_emscripten_compute_dom_pk_code1180_vt_join_q;
    assign out_c0_exi391_391_tpl = i_sel_shr5835_emscripten_compute_dom_pk_code1181_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_emscripten_compute_dom_pk_code1 = GND_q;

endmodule
