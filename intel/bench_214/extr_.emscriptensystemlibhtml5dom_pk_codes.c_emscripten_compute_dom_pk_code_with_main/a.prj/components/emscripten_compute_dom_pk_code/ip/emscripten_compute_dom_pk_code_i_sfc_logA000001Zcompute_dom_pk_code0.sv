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

// SystemVerilog created from emscripten_compute_dom_pk_code_i_sfc_logA000001Zcompute_dom_pk_code0
// SystemVerilog created on Sun May 24 22:31:15 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_i_sfc_logA000001Zcompute_dom_pk_code0 (
    input wire [63:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid,
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [7:0] out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_100_0,
    output wire [63:0] out_intel_reserved_ffwd_101_0,
    output wire [63:0] out_intel_reserved_ffwd_102_0,
    output wire [63:0] out_intel_reserved_ffwd_103_0,
    output wire [63:0] out_intel_reserved_ffwd_104_0,
    output wire [63:0] out_intel_reserved_ffwd_105_0,
    output wire [63:0] out_intel_reserved_ffwd_106_0,
    output wire [63:0] out_intel_reserved_ffwd_107_0,
    output wire [63:0] out_intel_reserved_ffwd_108_0,
    output wire [63:0] out_intel_reserved_ffwd_109_0,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    output wire [63:0] out_intel_reserved_ffwd_110_0,
    output wire [63:0] out_intel_reserved_ffwd_111_0,
    output wire [63:0] out_intel_reserved_ffwd_112_0,
    output wire [63:0] out_intel_reserved_ffwd_113_0,
    output wire [63:0] out_intel_reserved_ffwd_114_0,
    output wire [63:0] out_intel_reserved_ffwd_115_0,
    output wire [63:0] out_intel_reserved_ffwd_116_0,
    output wire [63:0] out_intel_reserved_ffwd_117_0,
    output wire [63:0] out_intel_reserved_ffwd_118_0,
    output wire [63:0] out_intel_reserved_ffwd_119_0,
    output wire [63:0] out_intel_reserved_ffwd_11_0,
    output wire [63:0] out_intel_reserved_ffwd_120_0,
    output wire [63:0] out_intel_reserved_ffwd_121_0,
    output wire [63:0] out_intel_reserved_ffwd_122_0,
    output wire [63:0] out_intel_reserved_ffwd_123_0,
    output wire [63:0] out_intel_reserved_ffwd_124_0,
    output wire [63:0] out_intel_reserved_ffwd_125_0,
    output wire [63:0] out_intel_reserved_ffwd_126_0,
    output wire [63:0] out_intel_reserved_ffwd_127_0,
    output wire [63:0] out_intel_reserved_ffwd_128_0,
    output wire [63:0] out_intel_reserved_ffwd_129_0,
    output wire [63:0] out_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_130_0,
    output wire [63:0] out_intel_reserved_ffwd_131_0,
    output wire [63:0] out_intel_reserved_ffwd_132_0,
    output wire [63:0] out_intel_reserved_ffwd_133_0,
    output wire [63:0] out_intel_reserved_ffwd_134_0,
    output wire [63:0] out_intel_reserved_ffwd_135_0,
    output wire [63:0] out_intel_reserved_ffwd_136_0,
    output wire [63:0] out_intel_reserved_ffwd_137_0,
    output wire [63:0] out_intel_reserved_ffwd_138_0,
    output wire [63:0] out_intel_reserved_ffwd_139_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_140_0,
    output wire [63:0] out_intel_reserved_ffwd_141_0,
    output wire [63:0] out_intel_reserved_ffwd_142_0,
    output wire [63:0] out_intel_reserved_ffwd_143_0,
    output wire [63:0] out_intel_reserved_ffwd_144_0,
    output wire [63:0] out_intel_reserved_ffwd_145_0,
    output wire [63:0] out_intel_reserved_ffwd_146_0,
    output wire [63:0] out_intel_reserved_ffwd_147_0,
    output wire [63:0] out_intel_reserved_ffwd_148_0,
    output wire [63:0] out_intel_reserved_ffwd_149_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_150_0,
    output wire [63:0] out_intel_reserved_ffwd_151_0,
    output wire [63:0] out_intel_reserved_ffwd_152_0,
    output wire [63:0] out_intel_reserved_ffwd_153_0,
    output wire [63:0] out_intel_reserved_ffwd_154_0,
    output wire [0:0] out_intel_reserved_ffwd_155_0,
    output wire [7:0] out_intel_reserved_ffwd_156_0,
    output wire [0:0] out_intel_reserved_ffwd_157_0,
    output wire [0:0] out_intel_reserved_ffwd_158_0,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    output wire [63:0] out_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_intel_reserved_ffwd_22_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_24_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    output wire [63:0] out_intel_reserved_ffwd_26_0,
    output wire [63:0] out_intel_reserved_ffwd_27_0,
    output wire [63:0] out_intel_reserved_ffwd_28_0,
    output wire [63:0] out_intel_reserved_ffwd_29_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_30_0,
    output wire [63:0] out_intel_reserved_ffwd_31_0,
    output wire [63:0] out_intel_reserved_ffwd_32_0,
    output wire [63:0] out_intel_reserved_ffwd_33_0,
    output wire [63:0] out_intel_reserved_ffwd_34_0,
    output wire [63:0] out_intel_reserved_ffwd_35_0,
    output wire [63:0] out_intel_reserved_ffwd_36_0,
    output wire [63:0] out_intel_reserved_ffwd_37_0,
    output wire [63:0] out_intel_reserved_ffwd_38_0,
    output wire [63:0] out_intel_reserved_ffwd_39_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_40_0,
    output wire [63:0] out_intel_reserved_ffwd_41_0,
    output wire [63:0] out_intel_reserved_ffwd_42_0,
    output wire [63:0] out_intel_reserved_ffwd_43_0,
    output wire [63:0] out_intel_reserved_ffwd_44_0,
    output wire [63:0] out_intel_reserved_ffwd_45_0,
    output wire [63:0] out_intel_reserved_ffwd_46_0,
    output wire [63:0] out_intel_reserved_ffwd_47_0,
    output wire [63:0] out_intel_reserved_ffwd_48_0,
    output wire [63:0] out_intel_reserved_ffwd_49_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_50_0,
    output wire [63:0] out_intel_reserved_ffwd_51_0,
    output wire [63:0] out_intel_reserved_ffwd_52_0,
    output wire [63:0] out_intel_reserved_ffwd_53_0,
    output wire [63:0] out_intel_reserved_ffwd_54_0,
    output wire [63:0] out_intel_reserved_ffwd_55_0,
    output wire [63:0] out_intel_reserved_ffwd_56_0,
    output wire [63:0] out_intel_reserved_ffwd_57_0,
    output wire [63:0] out_intel_reserved_ffwd_58_0,
    output wire [63:0] out_intel_reserved_ffwd_59_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_60_0,
    output wire [63:0] out_intel_reserved_ffwd_61_0,
    output wire [63:0] out_intel_reserved_ffwd_62_0,
    output wire [63:0] out_intel_reserved_ffwd_63_0,
    output wire [63:0] out_intel_reserved_ffwd_64_0,
    output wire [63:0] out_intel_reserved_ffwd_65_0,
    output wire [63:0] out_intel_reserved_ffwd_66_0,
    output wire [63:0] out_intel_reserved_ffwd_67_0,
    output wire [63:0] out_intel_reserved_ffwd_68_0,
    output wire [63:0] out_intel_reserved_ffwd_69_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_70_0,
    output wire [63:0] out_intel_reserved_ffwd_71_0,
    output wire [63:0] out_intel_reserved_ffwd_72_0,
    output wire [63:0] out_intel_reserved_ffwd_73_0,
    output wire [63:0] out_intel_reserved_ffwd_74_0,
    output wire [63:0] out_intel_reserved_ffwd_75_0,
    output wire [63:0] out_intel_reserved_ffwd_76_0,
    output wire [63:0] out_intel_reserved_ffwd_77_0,
    output wire [63:0] out_intel_reserved_ffwd_78_0,
    output wire [63:0] out_intel_reserved_ffwd_79_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_80_0,
    output wire [63:0] out_intel_reserved_ffwd_81_0,
    output wire [63:0] out_intel_reserved_ffwd_82_0,
    output wire [63:0] out_intel_reserved_ffwd_83_0,
    output wire [63:0] out_intel_reserved_ffwd_84_0,
    output wire [63:0] out_intel_reserved_ffwd_85_0,
    output wire [63:0] out_intel_reserved_ffwd_86_0,
    output wire [63:0] out_intel_reserved_ffwd_87_0,
    output wire [63:0] out_intel_reserved_ffwd_88_0,
    output wire [63:0] out_intel_reserved_ffwd_89_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_90_0,
    output wire [63:0] out_intel_reserved_ffwd_91_0,
    output wire [63:0] out_intel_reserved_ffwd_92_0,
    output wire [63:0] out_intel_reserved_ffwd_93_0,
    output wire [63:0] out_intel_reserved_ffwd_94_0,
    output wire [63:0] out_intel_reserved_ffwd_95_0,
    output wire [63:0] out_intel_reserved_ffwd_96_0,
    output wire [63:0] out_intel_reserved_ffwd_97_0,
    output wire [63:0] out_intel_reserved_ffwd_98_0,
    output wire [63:0] out_intel_reserved_ffwd_99_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_emscripten_compute_dom_pk_code1,
    output wire [0:0] out_unnamed_emscripten_compute_dom_pk_code162_0_tpl,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [63:0] in_c1_eni1_1_tpl,
    input wire [63:0] in_c1_eni1_2_tpl,
    input wire [63:0] in_c1_eni1_3_tpl,
    input wire [63:0] in_c1_eni1_4_tpl,
    input wire [63:0] in_c1_eni1_5_tpl,
    input wire [63:0] in_c1_eni1_6_tpl,
    input wire [63:0] in_c1_eni1_7_tpl,
    input wire [63:0] in_c1_eni1_8_tpl,
    input wire [63:0] in_c1_eni1_9_tpl,
    input wire [63:0] in_c1_eni1_10_tpl,
    input wire [63:0] in_c1_eni1_11_tpl,
    input wire [63:0] in_c1_eni1_12_tpl,
    input wire [63:0] in_c1_eni1_13_tpl,
    input wire [63:0] in_c1_eni1_14_tpl,
    input wire [63:0] in_c1_eni1_15_tpl,
    input wire [63:0] in_c1_eni1_16_tpl,
    input wire [63:0] in_c1_eni1_17_tpl,
    input wire [63:0] in_c1_eni1_18_tpl,
    input wire [63:0] in_c1_eni1_19_tpl,
    input wire [63:0] in_c1_eni1_20_tpl,
    input wire [63:0] in_c1_eni1_21_tpl,
    input wire [63:0] in_c1_eni1_22_tpl,
    input wire [63:0] in_c1_eni1_23_tpl,
    input wire [63:0] in_c1_eni1_24_tpl,
    input wire [63:0] in_c1_eni1_25_tpl,
    input wire [63:0] in_c1_eni1_26_tpl,
    input wire [63:0] in_c1_eni1_27_tpl,
    input wire [63:0] in_c1_eni1_28_tpl,
    input wire [63:0] in_c1_eni1_29_tpl,
    input wire [63:0] in_c1_eni1_30_tpl,
    input wire [63:0] in_c1_eni1_31_tpl,
    input wire [63:0] in_c1_eni1_32_tpl,
    input wire [63:0] in_c1_eni1_33_tpl,
    input wire [63:0] in_c1_eni1_34_tpl,
    input wire [63:0] in_c1_eni1_35_tpl,
    input wire [63:0] in_c1_eni1_36_tpl,
    input wire [63:0] in_c1_eni1_37_tpl,
    input wire [63:0] in_c1_eni1_38_tpl,
    input wire [63:0] in_c1_eni1_39_tpl,
    input wire [63:0] in_c1_eni1_40_tpl,
    input wire [63:0] in_c1_eni1_41_tpl,
    input wire [63:0] in_c1_eni1_42_tpl,
    input wire [63:0] in_c1_eni1_43_tpl,
    input wire [63:0] in_c1_eni1_44_tpl,
    input wire [63:0] in_c1_eni1_45_tpl,
    input wire [63:0] in_c1_eni1_46_tpl,
    input wire [63:0] in_c1_eni1_47_tpl,
    input wire [63:0] in_c1_eni1_48_tpl,
    input wire [63:0] in_c1_eni1_49_tpl,
    input wire [63:0] in_c1_eni1_50_tpl,
    input wire [63:0] in_c1_eni1_51_tpl,
    input wire [63:0] in_c1_eni1_52_tpl,
    input wire [63:0] in_c1_eni1_53_tpl,
    input wire [63:0] in_c1_eni1_54_tpl,
    input wire [63:0] in_c1_eni1_55_tpl,
    input wire [63:0] in_c1_eni1_56_tpl,
    input wire [63:0] in_c1_eni1_57_tpl,
    input wire [63:0] in_c1_eni1_58_tpl,
    input wire [63:0] in_c1_eni1_59_tpl,
    input wire [63:0] in_c1_eni1_60_tpl,
    input wire [63:0] in_c1_eni1_61_tpl,
    input wire [63:0] in_c1_eni1_62_tpl,
    input wire [63:0] in_c1_eni1_63_tpl,
    input wire [63:0] in_c1_eni1_64_tpl,
    input wire [63:0] in_c1_eni1_65_tpl,
    input wire [63:0] in_c1_eni1_66_tpl,
    input wire [63:0] in_c1_eni1_67_tpl,
    input wire [63:0] in_c1_eni1_68_tpl,
    input wire [63:0] in_c1_eni1_69_tpl,
    input wire [63:0] in_c1_eni1_70_tpl,
    input wire [63:0] in_c1_eni1_71_tpl,
    input wire [63:0] in_c1_eni1_72_tpl,
    input wire [63:0] in_c1_eni1_73_tpl,
    input wire [63:0] in_c1_eni1_74_tpl,
    input wire [63:0] in_c1_eni1_75_tpl,
    input wire [63:0] in_c1_eni1_76_tpl,
    input wire [63:0] in_c1_eni1_77_tpl,
    input wire [63:0] in_c1_eni1_78_tpl,
    input wire [63:0] in_c1_eni1_79_tpl,
    input wire [63:0] in_c1_eni1_80_tpl,
    input wire [63:0] in_c1_eni1_81_tpl,
    input wire [63:0] in_c1_eni1_82_tpl,
    input wire [63:0] in_c1_eni1_83_tpl,
    input wire [63:0] in_c1_eni1_84_tpl,
    input wire [63:0] in_c1_eni1_85_tpl,
    input wire [63:0] in_c1_eni1_86_tpl,
    input wire [63:0] in_c1_eni1_87_tpl,
    input wire [63:0] in_c1_eni1_88_tpl,
    input wire [63:0] in_c1_eni1_89_tpl,
    input wire [63:0] in_c1_eni1_90_tpl,
    input wire [63:0] in_c1_eni1_91_tpl,
    input wire [63:0] in_c1_eni1_92_tpl,
    input wire [63:0] in_c1_eni1_93_tpl,
    input wire [63:0] in_c1_eni1_94_tpl,
    input wire [63:0] in_c1_eni1_95_tpl,
    input wire [63:0] in_c1_eni1_96_tpl,
    input wire [63:0] in_c1_eni1_97_tpl,
    input wire [63:0] in_c1_eni1_98_tpl,
    input wire [63:0] in_c1_eni1_99_tpl,
    input wire [63:0] in_c1_eni1_100_tpl,
    input wire [63:0] in_c1_eni1_101_tpl,
    input wire [63:0] in_c1_eni1_102_tpl,
    input wire [63:0] in_c1_eni1_103_tpl,
    input wire [63:0] in_c1_eni1_104_tpl,
    input wire [63:0] in_c1_eni1_105_tpl,
    input wire [63:0] in_c1_eni1_106_tpl,
    input wire [63:0] in_c1_eni1_107_tpl,
    input wire [63:0] in_c1_eni1_108_tpl,
    input wire [63:0] in_c1_eni1_109_tpl,
    input wire [63:0] in_c1_eni1_110_tpl,
    input wire [63:0] in_c1_eni1_111_tpl,
    input wire [63:0] in_c1_eni1_112_tpl,
    input wire [63:0] in_c1_eni1_113_tpl,
    input wire [63:0] in_c1_eni1_114_tpl,
    input wire [63:0] in_c1_eni1_115_tpl,
    input wire [63:0] in_c1_eni1_116_tpl,
    input wire [63:0] in_c1_eni1_117_tpl,
    input wire [63:0] in_c1_eni1_118_tpl,
    input wire [63:0] in_c1_eni1_119_tpl,
    input wire [63:0] in_c1_eni1_120_tpl,
    input wire [63:0] in_c1_eni1_121_tpl,
    input wire [63:0] in_c1_eni1_122_tpl,
    input wire [63:0] in_c1_eni1_123_tpl,
    input wire [63:0] in_c1_eni1_124_tpl,
    input wire [63:0] in_c1_eni1_125_tpl,
    input wire [63:0] in_c1_eni1_126_tpl,
    input wire [63:0] in_c1_eni1_127_tpl,
    input wire [63:0] in_c1_eni1_128_tpl,
    input wire [63:0] in_c1_eni1_129_tpl,
    input wire [63:0] in_c1_eni1_130_tpl,
    input wire [63:0] in_c1_eni1_131_tpl,
    input wire [63:0] in_c1_eni1_132_tpl,
    input wire [63:0] in_c1_eni1_133_tpl,
    input wire [63:0] in_c1_eni1_134_tpl,
    input wire [63:0] in_c1_eni1_135_tpl,
    input wire [63:0] in_c1_eni1_136_tpl,
    input wire [63:0] in_c1_eni1_137_tpl,
    input wire [63:0] in_c1_eni1_138_tpl,
    input wire [63:0] in_c1_eni1_139_tpl,
    input wire [63:0] in_c1_eni1_140_tpl,
    input wire [63:0] in_c1_eni1_141_tpl,
    input wire [63:0] in_c1_eni1_142_tpl,
    input wire [63:0] in_c1_eni1_143_tpl,
    input wire [63:0] in_c1_eni1_144_tpl,
    input wire [63:0] in_c1_eni1_145_tpl,
    input wire [63:0] in_c1_eni1_146_tpl,
    input wire [63:0] in_c1_eni1_147_tpl,
    input wire [63:0] in_c1_eni1_148_tpl,
    input wire [63:0] in_c1_eni1_149_tpl,
    input wire [63:0] in_c1_eni1_150_tpl,
    input wire [63:0] in_c1_eni1_151_tpl,
    input wire [63:0] in_c1_eni1_152_tpl,
    input wire [63:0] in_c1_eni1_153_tpl,
    input wire [63:0] in_c1_eni1_154_tpl,
    input wire [63:0] in_c1_eni1_155_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code158_emscripten_compute_dom_pk_code164_out_intel_reserved_ffwd_155_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code160_emscripten_compute_dom_pk_code166_out_intel_reserved_ffwd_157_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code161_emscripten_compute_dom_pk_code167_out_intel_reserved_ffwd_158_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_emscripten_compute_dom_pk_code159_emscripten_compute_dom_pk_code165_out_intel_reserved_ffwd_156_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code100_emscripten_compute_dom_pk_code106_out_intel_reserved_ffwd_97_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code101_emscripten_compute_dom_pk_code107_out_intel_reserved_ffwd_98_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code102_emscripten_compute_dom_pk_code108_out_intel_reserved_ffwd_99_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code103_emscripten_compute_dom_pk_code109_out_intel_reserved_ffwd_100_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code104_emscripten_compute_dom_pk_code110_out_intel_reserved_ffwd_101_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code105_emscripten_compute_dom_pk_code111_out_intel_reserved_ffwd_102_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code106_emscripten_compute_dom_pk_code112_out_intel_reserved_ffwd_103_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code107_emscripten_compute_dom_pk_code113_out_intel_reserved_ffwd_104_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code108_emscripten_compute_dom_pk_code114_out_intel_reserved_ffwd_105_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code109_emscripten_compute_dom_pk_code115_out_intel_reserved_ffwd_106_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code10_emscripten_compute_dom_pk_code16_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code110_emscripten_compute_dom_pk_code116_out_intel_reserved_ffwd_107_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code111_emscripten_compute_dom_pk_code117_out_intel_reserved_ffwd_108_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code112_emscripten_compute_dom_pk_code118_out_intel_reserved_ffwd_109_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code113_emscripten_compute_dom_pk_code119_out_intel_reserved_ffwd_110_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code114_emscripten_compute_dom_pk_code120_out_intel_reserved_ffwd_111_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code115_emscripten_compute_dom_pk_code121_out_intel_reserved_ffwd_112_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code116_emscripten_compute_dom_pk_code122_out_intel_reserved_ffwd_113_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code117_emscripten_compute_dom_pk_code123_out_intel_reserved_ffwd_114_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code118_emscripten_compute_dom_pk_code124_out_intel_reserved_ffwd_115_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code119_emscripten_compute_dom_pk_code125_out_intel_reserved_ffwd_116_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code11_emscripten_compute_dom_pk_code17_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code120_emscripten_compute_dom_pk_code126_out_intel_reserved_ffwd_117_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code121_emscripten_compute_dom_pk_code127_out_intel_reserved_ffwd_118_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code122_emscripten_compute_dom_pk_code128_out_intel_reserved_ffwd_119_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code123_emscripten_compute_dom_pk_code129_out_intel_reserved_ffwd_120_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code124_emscripten_compute_dom_pk_code130_out_intel_reserved_ffwd_121_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code125_emscripten_compute_dom_pk_code131_out_intel_reserved_ffwd_122_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code126_emscripten_compute_dom_pk_code132_out_intel_reserved_ffwd_123_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code127_emscripten_compute_dom_pk_code133_out_intel_reserved_ffwd_124_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code128_emscripten_compute_dom_pk_code134_out_intel_reserved_ffwd_125_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code129_emscripten_compute_dom_pk_code135_out_intel_reserved_ffwd_126_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code12_emscripten_compute_dom_pk_code18_out_intel_reserved_ffwd_9_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code130_emscripten_compute_dom_pk_code136_out_intel_reserved_ffwd_127_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code131_emscripten_compute_dom_pk_code137_out_intel_reserved_ffwd_128_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code132_emscripten_compute_dom_pk_code138_out_intel_reserved_ffwd_129_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code133_emscripten_compute_dom_pk_code139_out_intel_reserved_ffwd_130_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code134_emscripten_compute_dom_pk_code140_out_intel_reserved_ffwd_131_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code135_emscripten_compute_dom_pk_code141_out_intel_reserved_ffwd_132_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code136_emscripten_compute_dom_pk_code142_out_intel_reserved_ffwd_133_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code137_emscripten_compute_dom_pk_code143_out_intel_reserved_ffwd_134_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code138_emscripten_compute_dom_pk_code144_out_intel_reserved_ffwd_135_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code139_emscripten_compute_dom_pk_code145_out_intel_reserved_ffwd_136_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code13_emscripten_compute_dom_pk_code19_out_intel_reserved_ffwd_10_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code140_emscripten_compute_dom_pk_code146_out_intel_reserved_ffwd_137_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code141_emscripten_compute_dom_pk_code147_out_intel_reserved_ffwd_138_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code142_emscripten_compute_dom_pk_code148_out_intel_reserved_ffwd_139_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code143_emscripten_compute_dom_pk_code149_out_intel_reserved_ffwd_140_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code144_emscripten_compute_dom_pk_code150_out_intel_reserved_ffwd_141_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code145_emscripten_compute_dom_pk_code151_out_intel_reserved_ffwd_142_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code146_emscripten_compute_dom_pk_code152_out_intel_reserved_ffwd_143_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code147_emscripten_compute_dom_pk_code153_out_intel_reserved_ffwd_144_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code148_emscripten_compute_dom_pk_code154_out_intel_reserved_ffwd_145_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code149_emscripten_compute_dom_pk_code155_out_intel_reserved_ffwd_146_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code14_emscripten_compute_dom_pk_code20_out_intel_reserved_ffwd_11_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code150_emscripten_compute_dom_pk_code156_out_intel_reserved_ffwd_147_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code151_emscripten_compute_dom_pk_code157_out_intel_reserved_ffwd_148_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code152_emscripten_compute_dom_pk_code158_out_intel_reserved_ffwd_149_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code153_emscripten_compute_dom_pk_code159_out_intel_reserved_ffwd_150_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code154_emscripten_compute_dom_pk_code160_out_intel_reserved_ffwd_151_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code155_emscripten_compute_dom_pk_code161_out_intel_reserved_ffwd_152_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code156_emscripten_compute_dom_pk_code162_out_intel_reserved_ffwd_153_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code157_emscripten_compute_dom_pk_code163_out_intel_reserved_ffwd_154_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code15_emscripten_compute_dom_pk_code21_out_intel_reserved_ffwd_12_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code16_emscripten_compute_dom_pk_code22_out_intel_reserved_ffwd_13_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code17_emscripten_compute_dom_pk_code23_out_intel_reserved_ffwd_14_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code18_emscripten_compute_dom_pk_code24_out_intel_reserved_ffwd_15_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code19_emscripten_compute_dom_pk_code25_out_intel_reserved_ffwd_16_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code20_emscripten_compute_dom_pk_code26_out_intel_reserved_ffwd_17_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code21_emscripten_compute_dom_pk_code27_out_intel_reserved_ffwd_18_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code22_emscripten_compute_dom_pk_code28_out_intel_reserved_ffwd_19_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code23_emscripten_compute_dom_pk_code29_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code24_emscripten_compute_dom_pk_code30_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code25_emscripten_compute_dom_pk_code31_out_intel_reserved_ffwd_22_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code26_emscripten_compute_dom_pk_code32_out_intel_reserved_ffwd_23_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code27_emscripten_compute_dom_pk_code33_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code28_emscripten_compute_dom_pk_code34_out_intel_reserved_ffwd_25_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code29_emscripten_compute_dom_pk_code35_out_intel_reserved_ffwd_26_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code30_emscripten_compute_dom_pk_code36_out_intel_reserved_ffwd_27_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code31_emscripten_compute_dom_pk_code37_out_intel_reserved_ffwd_28_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code32_emscripten_compute_dom_pk_code38_out_intel_reserved_ffwd_29_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code33_emscripten_compute_dom_pk_code39_out_intel_reserved_ffwd_30_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code34_emscripten_compute_dom_pk_code40_out_intel_reserved_ffwd_31_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code35_emscripten_compute_dom_pk_code41_out_intel_reserved_ffwd_32_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code36_emscripten_compute_dom_pk_code42_out_intel_reserved_ffwd_33_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code37_emscripten_compute_dom_pk_code43_out_intel_reserved_ffwd_34_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code38_emscripten_compute_dom_pk_code44_out_intel_reserved_ffwd_35_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code39_emscripten_compute_dom_pk_code45_out_intel_reserved_ffwd_36_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code40_emscripten_compute_dom_pk_code46_out_intel_reserved_ffwd_37_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code41_emscripten_compute_dom_pk_code47_out_intel_reserved_ffwd_38_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code42_emscripten_compute_dom_pk_code48_out_intel_reserved_ffwd_39_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code43_emscripten_compute_dom_pk_code49_out_intel_reserved_ffwd_40_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code44_emscripten_compute_dom_pk_code50_out_intel_reserved_ffwd_41_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code45_emscripten_compute_dom_pk_code51_out_intel_reserved_ffwd_42_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code46_emscripten_compute_dom_pk_code52_out_intel_reserved_ffwd_43_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code47_emscripten_compute_dom_pk_code53_out_intel_reserved_ffwd_44_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code48_emscripten_compute_dom_pk_code54_out_intel_reserved_ffwd_45_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code49_emscripten_compute_dom_pk_code55_out_intel_reserved_ffwd_46_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code4_emscripten_compute_dom_pk_code10_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code50_emscripten_compute_dom_pk_code56_out_intel_reserved_ffwd_47_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code51_emscripten_compute_dom_pk_code57_out_intel_reserved_ffwd_48_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code52_emscripten_compute_dom_pk_code58_out_intel_reserved_ffwd_49_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code53_emscripten_compute_dom_pk_code59_out_intel_reserved_ffwd_50_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code54_emscripten_compute_dom_pk_code60_out_intel_reserved_ffwd_51_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code55_emscripten_compute_dom_pk_code61_out_intel_reserved_ffwd_52_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code56_emscripten_compute_dom_pk_code62_out_intel_reserved_ffwd_53_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code57_emscripten_compute_dom_pk_code63_out_intel_reserved_ffwd_54_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code58_emscripten_compute_dom_pk_code64_out_intel_reserved_ffwd_55_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code59_emscripten_compute_dom_pk_code65_out_intel_reserved_ffwd_56_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code5_emscripten_compute_dom_pk_code11_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code60_emscripten_compute_dom_pk_code66_out_intel_reserved_ffwd_57_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code61_emscripten_compute_dom_pk_code67_out_intel_reserved_ffwd_58_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code62_emscripten_compute_dom_pk_code68_out_intel_reserved_ffwd_59_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code63_emscripten_compute_dom_pk_code69_out_intel_reserved_ffwd_60_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code64_emscripten_compute_dom_pk_code70_out_intel_reserved_ffwd_61_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code65_emscripten_compute_dom_pk_code71_out_intel_reserved_ffwd_62_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code66_emscripten_compute_dom_pk_code72_out_intel_reserved_ffwd_63_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code67_emscripten_compute_dom_pk_code73_out_intel_reserved_ffwd_64_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code68_emscripten_compute_dom_pk_code74_out_intel_reserved_ffwd_65_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code69_emscripten_compute_dom_pk_code75_out_intel_reserved_ffwd_66_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code6_emscripten_compute_dom_pk_code12_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code70_emscripten_compute_dom_pk_code76_out_intel_reserved_ffwd_67_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code71_emscripten_compute_dom_pk_code77_out_intel_reserved_ffwd_68_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code72_emscripten_compute_dom_pk_code78_out_intel_reserved_ffwd_69_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code73_emscripten_compute_dom_pk_code79_out_intel_reserved_ffwd_70_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code74_emscripten_compute_dom_pk_code80_out_intel_reserved_ffwd_71_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code75_emscripten_compute_dom_pk_code81_out_intel_reserved_ffwd_72_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code76_emscripten_compute_dom_pk_code82_out_intel_reserved_ffwd_73_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code77_emscripten_compute_dom_pk_code83_out_intel_reserved_ffwd_74_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code78_emscripten_compute_dom_pk_code84_out_intel_reserved_ffwd_75_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code79_emscripten_compute_dom_pk_code85_out_intel_reserved_ffwd_76_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code7_emscripten_compute_dom_pk_code13_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code80_emscripten_compute_dom_pk_code86_out_intel_reserved_ffwd_77_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code81_emscripten_compute_dom_pk_code87_out_intel_reserved_ffwd_78_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code82_emscripten_compute_dom_pk_code88_out_intel_reserved_ffwd_79_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code83_emscripten_compute_dom_pk_code89_out_intel_reserved_ffwd_80_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code84_emscripten_compute_dom_pk_code90_out_intel_reserved_ffwd_81_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code85_emscripten_compute_dom_pk_code91_out_intel_reserved_ffwd_82_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code86_emscripten_compute_dom_pk_code92_out_intel_reserved_ffwd_83_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code87_emscripten_compute_dom_pk_code93_out_intel_reserved_ffwd_84_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code88_emscripten_compute_dom_pk_code94_out_intel_reserved_ffwd_85_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code89_emscripten_compute_dom_pk_code95_out_intel_reserved_ffwd_86_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code8_emscripten_compute_dom_pk_code14_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code90_emscripten_compute_dom_pk_code96_out_intel_reserved_ffwd_87_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code91_emscripten_compute_dom_pk_code97_out_intel_reserved_ffwd_88_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code92_emscripten_compute_dom_pk_code98_out_intel_reserved_ffwd_89_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code93_emscripten_compute_dom_pk_code99_out_intel_reserved_ffwd_90_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code94_emscripten_compute_dom_pk_code100_out_intel_reserved_ffwd_91_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code95_emscripten_compute_dom_pk_code101_out_intel_reserved_ffwd_92_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code96_emscripten_compute_dom_pk_code102_out_intel_reserved_ffwd_93_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code97_emscripten_compute_dom_pk_code103_out_intel_reserved_ffwd_94_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code98_emscripten_compute_dom_pk_code104_out_intel_reserved_ffwd_95_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code99_emscripten_compute_dom_pk_code105_out_intel_reserved_ffwd_96_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code9_emscripten_compute_dom_pk_code15_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_emscripten_compute_dom_pk_code3_emscripten_compute_dom_pk_code9_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_o_readdata;
    wire [0:0] i_tobool14_emscripten_compute_dom_pk_code6_q;
    wire [0:0] i_tobool_emscripten_compute_dom_pk_code3_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code8_q;
    wire [7:0] c_i8_0329_recast_x_q;
    wire [63:0] cpn_i8_recast_x_q;
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
    reg [63:0] redist0_sync_together331_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [63:0] redist1_sync_together331_aunroll_x_in_c1_eni1_2_tpl_1_q;
    reg [63:0] redist2_sync_together331_aunroll_x_in_c1_eni1_3_tpl_1_q;
    reg [63:0] redist3_sync_together331_aunroll_x_in_c1_eni1_4_tpl_1_q;
    reg [63:0] redist4_sync_together331_aunroll_x_in_c1_eni1_5_tpl_1_q;
    reg [63:0] redist5_sync_together331_aunroll_x_in_c1_eni1_6_tpl_1_q;
    reg [63:0] redist6_sync_together331_aunroll_x_in_c1_eni1_7_tpl_1_q;
    reg [63:0] redist7_sync_together331_aunroll_x_in_c1_eni1_8_tpl_1_q;
    reg [63:0] redist8_sync_together331_aunroll_x_in_c1_eni1_9_tpl_1_q;
    reg [63:0] redist9_sync_together331_aunroll_x_in_c1_eni1_10_tpl_1_q;
    reg [63:0] redist10_sync_together331_aunroll_x_in_c1_eni1_11_tpl_1_q;
    reg [63:0] redist11_sync_together331_aunroll_x_in_c1_eni1_12_tpl_1_q;
    reg [63:0] redist12_sync_together331_aunroll_x_in_c1_eni1_13_tpl_1_q;
    reg [63:0] redist13_sync_together331_aunroll_x_in_c1_eni1_14_tpl_1_q;
    reg [63:0] redist14_sync_together331_aunroll_x_in_c1_eni1_15_tpl_1_q;
    reg [63:0] redist15_sync_together331_aunroll_x_in_c1_eni1_16_tpl_1_q;
    reg [63:0] redist16_sync_together331_aunroll_x_in_c1_eni1_17_tpl_1_q;
    reg [63:0] redist17_sync_together331_aunroll_x_in_c1_eni1_18_tpl_1_q;
    reg [63:0] redist18_sync_together331_aunroll_x_in_c1_eni1_19_tpl_1_q;
    reg [63:0] redist19_sync_together331_aunroll_x_in_c1_eni1_20_tpl_1_q;
    reg [63:0] redist20_sync_together331_aunroll_x_in_c1_eni1_21_tpl_1_q;
    reg [63:0] redist21_sync_together331_aunroll_x_in_c1_eni1_22_tpl_1_q;
    reg [63:0] redist22_sync_together331_aunroll_x_in_c1_eni1_23_tpl_1_q;
    reg [63:0] redist23_sync_together331_aunroll_x_in_c1_eni1_24_tpl_1_q;
    reg [63:0] redist24_sync_together331_aunroll_x_in_c1_eni1_25_tpl_1_q;
    reg [63:0] redist25_sync_together331_aunroll_x_in_c1_eni1_26_tpl_1_q;
    reg [63:0] redist26_sync_together331_aunroll_x_in_c1_eni1_27_tpl_1_q;
    reg [63:0] redist27_sync_together331_aunroll_x_in_c1_eni1_28_tpl_1_q;
    reg [63:0] redist28_sync_together331_aunroll_x_in_c1_eni1_29_tpl_1_q;
    reg [63:0] redist29_sync_together331_aunroll_x_in_c1_eni1_30_tpl_1_q;
    reg [63:0] redist30_sync_together331_aunroll_x_in_c1_eni1_31_tpl_1_q;
    reg [63:0] redist31_sync_together331_aunroll_x_in_c1_eni1_32_tpl_1_q;
    reg [63:0] redist32_sync_together331_aunroll_x_in_c1_eni1_33_tpl_1_q;
    reg [63:0] redist33_sync_together331_aunroll_x_in_c1_eni1_34_tpl_1_q;
    reg [63:0] redist34_sync_together331_aunroll_x_in_c1_eni1_35_tpl_1_q;
    reg [63:0] redist35_sync_together331_aunroll_x_in_c1_eni1_36_tpl_1_q;
    reg [63:0] redist36_sync_together331_aunroll_x_in_c1_eni1_37_tpl_1_q;
    reg [63:0] redist37_sync_together331_aunroll_x_in_c1_eni1_38_tpl_1_q;
    reg [63:0] redist38_sync_together331_aunroll_x_in_c1_eni1_39_tpl_1_q;
    reg [63:0] redist39_sync_together331_aunroll_x_in_c1_eni1_40_tpl_1_q;
    reg [63:0] redist40_sync_together331_aunroll_x_in_c1_eni1_41_tpl_1_q;
    reg [63:0] redist41_sync_together331_aunroll_x_in_c1_eni1_42_tpl_1_q;
    reg [63:0] redist42_sync_together331_aunroll_x_in_c1_eni1_43_tpl_1_q;
    reg [63:0] redist43_sync_together331_aunroll_x_in_c1_eni1_44_tpl_1_q;
    reg [63:0] redist44_sync_together331_aunroll_x_in_c1_eni1_45_tpl_1_q;
    reg [63:0] redist45_sync_together331_aunroll_x_in_c1_eni1_46_tpl_1_q;
    reg [63:0] redist46_sync_together331_aunroll_x_in_c1_eni1_47_tpl_1_q;
    reg [63:0] redist47_sync_together331_aunroll_x_in_c1_eni1_48_tpl_1_q;
    reg [63:0] redist48_sync_together331_aunroll_x_in_c1_eni1_49_tpl_1_q;
    reg [63:0] redist49_sync_together331_aunroll_x_in_c1_eni1_50_tpl_1_q;
    reg [63:0] redist50_sync_together331_aunroll_x_in_c1_eni1_51_tpl_1_q;
    reg [63:0] redist51_sync_together331_aunroll_x_in_c1_eni1_52_tpl_1_q;
    reg [63:0] redist52_sync_together331_aunroll_x_in_c1_eni1_53_tpl_1_q;
    reg [63:0] redist53_sync_together331_aunroll_x_in_c1_eni1_54_tpl_1_q;
    reg [63:0] redist54_sync_together331_aunroll_x_in_c1_eni1_55_tpl_1_q;
    reg [63:0] redist55_sync_together331_aunroll_x_in_c1_eni1_56_tpl_1_q;
    reg [63:0] redist56_sync_together331_aunroll_x_in_c1_eni1_57_tpl_1_q;
    reg [63:0] redist57_sync_together331_aunroll_x_in_c1_eni1_58_tpl_1_q;
    reg [63:0] redist58_sync_together331_aunroll_x_in_c1_eni1_59_tpl_1_q;
    reg [63:0] redist59_sync_together331_aunroll_x_in_c1_eni1_60_tpl_1_q;
    reg [63:0] redist60_sync_together331_aunroll_x_in_c1_eni1_61_tpl_1_q;
    reg [63:0] redist61_sync_together331_aunroll_x_in_c1_eni1_62_tpl_1_q;
    reg [63:0] redist62_sync_together331_aunroll_x_in_c1_eni1_63_tpl_1_q;
    reg [63:0] redist63_sync_together331_aunroll_x_in_c1_eni1_64_tpl_1_q;
    reg [63:0] redist64_sync_together331_aunroll_x_in_c1_eni1_65_tpl_1_q;
    reg [63:0] redist65_sync_together331_aunroll_x_in_c1_eni1_66_tpl_1_q;
    reg [63:0] redist66_sync_together331_aunroll_x_in_c1_eni1_67_tpl_1_q;
    reg [63:0] redist67_sync_together331_aunroll_x_in_c1_eni1_68_tpl_1_q;
    reg [63:0] redist68_sync_together331_aunroll_x_in_c1_eni1_69_tpl_1_q;
    reg [63:0] redist69_sync_together331_aunroll_x_in_c1_eni1_70_tpl_1_q;
    reg [63:0] redist70_sync_together331_aunroll_x_in_c1_eni1_71_tpl_1_q;
    reg [63:0] redist71_sync_together331_aunroll_x_in_c1_eni1_72_tpl_1_q;
    reg [63:0] redist72_sync_together331_aunroll_x_in_c1_eni1_73_tpl_1_q;
    reg [63:0] redist73_sync_together331_aunroll_x_in_c1_eni1_74_tpl_1_q;
    reg [63:0] redist74_sync_together331_aunroll_x_in_c1_eni1_75_tpl_1_q;
    reg [63:0] redist75_sync_together331_aunroll_x_in_c1_eni1_76_tpl_1_q;
    reg [63:0] redist76_sync_together331_aunroll_x_in_c1_eni1_77_tpl_1_q;
    reg [63:0] redist77_sync_together331_aunroll_x_in_c1_eni1_78_tpl_1_q;
    reg [63:0] redist78_sync_together331_aunroll_x_in_c1_eni1_79_tpl_1_q;
    reg [63:0] redist79_sync_together331_aunroll_x_in_c1_eni1_80_tpl_1_q;
    reg [63:0] redist80_sync_together331_aunroll_x_in_c1_eni1_81_tpl_1_q;
    reg [63:0] redist81_sync_together331_aunroll_x_in_c1_eni1_82_tpl_1_q;
    reg [63:0] redist82_sync_together331_aunroll_x_in_c1_eni1_83_tpl_1_q;
    reg [63:0] redist83_sync_together331_aunroll_x_in_c1_eni1_84_tpl_1_q;
    reg [63:0] redist84_sync_together331_aunroll_x_in_c1_eni1_85_tpl_1_q;
    reg [63:0] redist85_sync_together331_aunroll_x_in_c1_eni1_86_tpl_1_q;
    reg [63:0] redist86_sync_together331_aunroll_x_in_c1_eni1_87_tpl_1_q;
    reg [63:0] redist87_sync_together331_aunroll_x_in_c1_eni1_88_tpl_1_q;
    reg [63:0] redist88_sync_together331_aunroll_x_in_c1_eni1_89_tpl_1_q;
    reg [63:0] redist89_sync_together331_aunroll_x_in_c1_eni1_90_tpl_1_q;
    reg [63:0] redist90_sync_together331_aunroll_x_in_c1_eni1_91_tpl_1_q;
    reg [63:0] redist91_sync_together331_aunroll_x_in_c1_eni1_92_tpl_1_q;
    reg [63:0] redist92_sync_together331_aunroll_x_in_c1_eni1_93_tpl_1_q;
    reg [63:0] redist93_sync_together331_aunroll_x_in_c1_eni1_94_tpl_1_q;
    reg [63:0] redist94_sync_together331_aunroll_x_in_c1_eni1_95_tpl_1_q;
    reg [63:0] redist95_sync_together331_aunroll_x_in_c1_eni1_96_tpl_1_q;
    reg [63:0] redist96_sync_together331_aunroll_x_in_c1_eni1_97_tpl_1_q;
    reg [63:0] redist97_sync_together331_aunroll_x_in_c1_eni1_98_tpl_1_q;
    reg [63:0] redist98_sync_together331_aunroll_x_in_c1_eni1_99_tpl_1_q;
    reg [63:0] redist99_sync_together331_aunroll_x_in_c1_eni1_100_tpl_1_q;
    reg [63:0] redist100_sync_together331_aunroll_x_in_c1_eni1_101_tpl_1_q;
    reg [63:0] redist101_sync_together331_aunroll_x_in_c1_eni1_102_tpl_1_q;
    reg [63:0] redist102_sync_together331_aunroll_x_in_c1_eni1_103_tpl_1_q;
    reg [63:0] redist103_sync_together331_aunroll_x_in_c1_eni1_104_tpl_1_q;
    reg [63:0] redist104_sync_together331_aunroll_x_in_c1_eni1_105_tpl_1_q;
    reg [63:0] redist105_sync_together331_aunroll_x_in_c1_eni1_106_tpl_1_q;
    reg [63:0] redist106_sync_together331_aunroll_x_in_c1_eni1_107_tpl_1_q;
    reg [63:0] redist107_sync_together331_aunroll_x_in_c1_eni1_108_tpl_1_q;
    reg [63:0] redist108_sync_together331_aunroll_x_in_c1_eni1_109_tpl_1_q;
    reg [63:0] redist109_sync_together331_aunroll_x_in_c1_eni1_110_tpl_1_q;
    reg [63:0] redist110_sync_together331_aunroll_x_in_c1_eni1_111_tpl_1_q;
    reg [63:0] redist111_sync_together331_aunroll_x_in_c1_eni1_112_tpl_1_q;
    reg [63:0] redist112_sync_together331_aunroll_x_in_c1_eni1_113_tpl_1_q;
    reg [63:0] redist113_sync_together331_aunroll_x_in_c1_eni1_114_tpl_1_q;
    reg [63:0] redist114_sync_together331_aunroll_x_in_c1_eni1_115_tpl_1_q;
    reg [63:0] redist115_sync_together331_aunroll_x_in_c1_eni1_116_tpl_1_q;
    reg [63:0] redist116_sync_together331_aunroll_x_in_c1_eni1_117_tpl_1_q;
    reg [63:0] redist117_sync_together331_aunroll_x_in_c1_eni1_118_tpl_1_q;
    reg [63:0] redist118_sync_together331_aunroll_x_in_c1_eni1_119_tpl_1_q;
    reg [63:0] redist119_sync_together331_aunroll_x_in_c1_eni1_120_tpl_1_q;
    reg [63:0] redist120_sync_together331_aunroll_x_in_c1_eni1_121_tpl_1_q;
    reg [63:0] redist121_sync_together331_aunroll_x_in_c1_eni1_122_tpl_1_q;
    reg [63:0] redist122_sync_together331_aunroll_x_in_c1_eni1_123_tpl_1_q;
    reg [63:0] redist123_sync_together331_aunroll_x_in_c1_eni1_124_tpl_1_q;
    reg [63:0] redist124_sync_together331_aunroll_x_in_c1_eni1_125_tpl_1_q;
    reg [63:0] redist125_sync_together331_aunroll_x_in_c1_eni1_126_tpl_1_q;
    reg [63:0] redist126_sync_together331_aunroll_x_in_c1_eni1_127_tpl_1_q;
    reg [63:0] redist127_sync_together331_aunroll_x_in_c1_eni1_128_tpl_1_q;
    reg [63:0] redist128_sync_together331_aunroll_x_in_c1_eni1_129_tpl_1_q;
    reg [63:0] redist129_sync_together331_aunroll_x_in_c1_eni1_130_tpl_1_q;
    reg [63:0] redist130_sync_together331_aunroll_x_in_c1_eni1_131_tpl_1_q;
    reg [63:0] redist131_sync_together331_aunroll_x_in_c1_eni1_132_tpl_1_q;
    reg [63:0] redist132_sync_together331_aunroll_x_in_c1_eni1_133_tpl_1_q;
    reg [63:0] redist133_sync_together331_aunroll_x_in_c1_eni1_134_tpl_1_q;
    reg [63:0] redist134_sync_together331_aunroll_x_in_c1_eni1_135_tpl_1_q;
    reg [63:0] redist135_sync_together331_aunroll_x_in_c1_eni1_136_tpl_1_q;
    reg [63:0] redist136_sync_together331_aunroll_x_in_c1_eni1_137_tpl_1_q;
    reg [63:0] redist137_sync_together331_aunroll_x_in_c1_eni1_138_tpl_1_q;
    reg [63:0] redist138_sync_together331_aunroll_x_in_c1_eni1_139_tpl_1_q;
    reg [63:0] redist139_sync_together331_aunroll_x_in_c1_eni1_140_tpl_1_q;
    reg [63:0] redist140_sync_together331_aunroll_x_in_c1_eni1_141_tpl_1_q;
    reg [63:0] redist141_sync_together331_aunroll_x_in_c1_eni1_142_tpl_1_q;
    reg [63:0] redist142_sync_together331_aunroll_x_in_c1_eni1_143_tpl_1_q;
    reg [63:0] redist143_sync_together331_aunroll_x_in_c1_eni1_144_tpl_1_q;
    reg [63:0] redist144_sync_together331_aunroll_x_in_c1_eni1_145_tpl_1_q;
    reg [63:0] redist145_sync_together331_aunroll_x_in_c1_eni1_146_tpl_1_q;
    reg [63:0] redist146_sync_together331_aunroll_x_in_c1_eni1_147_tpl_1_q;
    reg [63:0] redist147_sync_together331_aunroll_x_in_c1_eni1_148_tpl_1_q;
    reg [63:0] redist148_sync_together331_aunroll_x_in_c1_eni1_149_tpl_1_q;
    reg [63:0] redist149_sync_together331_aunroll_x_in_c1_eni1_150_tpl_1_q;
    reg [63:0] redist150_sync_together331_aunroll_x_in_c1_eni1_151_tpl_1_q;
    reg [63:0] redist151_sync_together331_aunroll_x_in_c1_eni1_152_tpl_1_q;
    reg [63:0] redist152_sync_together331_aunroll_x_in_c1_eni1_153_tpl_1_q;
    reg [63:0] redist153_sync_together331_aunroll_x_in_c1_eni1_154_tpl_1_q;
    reg [63:0] redist154_sync_together331_aunroll_x_in_c1_eni1_155_tpl_1_q;
    reg [0:0] redist155_sync_together331_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist156_i_tobool_emscripten_compute_dom_pk_code3_q_8_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,495)@2 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // cpn_i8_recast_x(CONSTANT,333)
    assign cpn_i8_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_tobool_emscripten_compute_dom_pk_code3(LOGICAL,325)@3
    assign i_tobool_emscripten_compute_dom_pk_code3_q = $unsigned(redist0_sync_together331_aunroll_x_in_c1_eni1_1_tpl_1_q == cpn_i8_recast_x_q ? 1'b1 : 1'b0);

    // redist0_sync_together331_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together331_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together331_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5(BLACKBOX,323)@3
    // in in_i_stall@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_address@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_enable@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_read@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_write@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_writedata@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    emscripten_compute_dom_pk_code_i_llvm_fpga_mem_lm58771_0 thei_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5 (
        .in_flush(in_flush),
        .in_i_address(redist0_sync_together331_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_i_predicate(i_tobool_emscripten_compute_dom_pk_code3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdata(in_lm58771_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_writeack(in_lm58771_emscripten_compute_dom_pk_code_avm_writeack),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_address(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_enable(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_read(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_write(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_writedata(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,163)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_address = i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_address;
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_enable = i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_read = i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_read;
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_write = i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_write;
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_writedata = i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable = i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount = i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;

    // valid_fanout_reg2(REG,496)@2 + 1
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

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_emscripten_compute_dom_pk_code3_emscripten_compute_dom_pk_code9(BLACKBOX,322)@3
    // out out_intel_reserved_ffwd_0_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000160Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_emscripten_compute_dom_pk_code3_emscripten_compute_dom_pk_code9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist0_sync_together331_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_emscripten_compute_dom_pk_code3_emscripten_compute_dom_pk_code9_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,330)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_emscripten_compute_dom_pk_code3_emscripten_compute_dom_pk_code9_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg102(REG,596)@2 + 1
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

    // redist100_sync_together331_aunroll_x_in_c1_eni1_101_tpl_1(DELAY,755)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_sync_together331_aunroll_x_in_c1_eni1_101_tpl_1_q <= '0;
        end
        else
        begin
            redist100_sync_together331_aunroll_x_in_c1_eni1_101_tpl_1_q <= $unsigned(in_c1_eni1_101_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code103_emscripten_compute_dom_pk_code109(BLACKBOX,171)@3
    // out out_intel_reserved_ffwd_100_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000009Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code103_emscripten_compute_dom_pk_code109 (
        .in_predicate_in(GND_q),
        .in_src_data_in_100_0(redist100_sync_together331_aunroll_x_in_c1_eni1_101_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg102_q),
        .out_intel_reserved_ffwd_100_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code103_emscripten_compute_dom_pk_code109_out_intel_reserved_ffwd_100_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,334)
    assign out_intel_reserved_ffwd_100_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code103_emscripten_compute_dom_pk_code109_out_intel_reserved_ffwd_100_0;

    // valid_fanout_reg103(REG,597)@2 + 1
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

    // redist101_sync_together331_aunroll_x_in_c1_eni1_102_tpl_1(DELAY,756)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_sync_together331_aunroll_x_in_c1_eni1_102_tpl_1_q <= '0;
        end
        else
        begin
            redist101_sync_together331_aunroll_x_in_c1_eni1_102_tpl_1_q <= $unsigned(in_c1_eni1_102_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code104_emscripten_compute_dom_pk_code110(BLACKBOX,172)@3
    // out out_intel_reserved_ffwd_101_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000010Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code104_emscripten_compute_dom_pk_code110 (
        .in_predicate_in(GND_q),
        .in_src_data_in_101_0(redist101_sync_together331_aunroll_x_in_c1_eni1_102_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg103_q),
        .out_intel_reserved_ffwd_101_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code104_emscripten_compute_dom_pk_code110_out_intel_reserved_ffwd_101_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,335)
    assign out_intel_reserved_ffwd_101_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code104_emscripten_compute_dom_pk_code110_out_intel_reserved_ffwd_101_0;

    // valid_fanout_reg104(REG,598)@2 + 1
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

    // redist102_sync_together331_aunroll_x_in_c1_eni1_103_tpl_1(DELAY,757)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_sync_together331_aunroll_x_in_c1_eni1_103_tpl_1_q <= '0;
        end
        else
        begin
            redist102_sync_together331_aunroll_x_in_c1_eni1_103_tpl_1_q <= $unsigned(in_c1_eni1_103_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code105_emscripten_compute_dom_pk_code111(BLACKBOX,173)@3
    // out out_intel_reserved_ffwd_102_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000011Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code105_emscripten_compute_dom_pk_code111 (
        .in_predicate_in(GND_q),
        .in_src_data_in_102_0(redist102_sync_together331_aunroll_x_in_c1_eni1_103_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg104_q),
        .out_intel_reserved_ffwd_102_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code105_emscripten_compute_dom_pk_code111_out_intel_reserved_ffwd_102_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,336)
    assign out_intel_reserved_ffwd_102_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code105_emscripten_compute_dom_pk_code111_out_intel_reserved_ffwd_102_0;

    // valid_fanout_reg105(REG,599)@2 + 1
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

    // redist103_sync_together331_aunroll_x_in_c1_eni1_104_tpl_1(DELAY,758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_sync_together331_aunroll_x_in_c1_eni1_104_tpl_1_q <= '0;
        end
        else
        begin
            redist103_sync_together331_aunroll_x_in_c1_eni1_104_tpl_1_q <= $unsigned(in_c1_eni1_104_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code106_emscripten_compute_dom_pk_code112(BLACKBOX,174)@3
    // out out_intel_reserved_ffwd_103_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000012Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code106_emscripten_compute_dom_pk_code112 (
        .in_predicate_in(GND_q),
        .in_src_data_in_103_0(redist103_sync_together331_aunroll_x_in_c1_eni1_104_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg105_q),
        .out_intel_reserved_ffwd_103_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code106_emscripten_compute_dom_pk_code112_out_intel_reserved_ffwd_103_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,337)
    assign out_intel_reserved_ffwd_103_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code106_emscripten_compute_dom_pk_code112_out_intel_reserved_ffwd_103_0;

    // valid_fanout_reg106(REG,600)@2 + 1
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

    // redist104_sync_together331_aunroll_x_in_c1_eni1_105_tpl_1(DELAY,759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_sync_together331_aunroll_x_in_c1_eni1_105_tpl_1_q <= '0;
        end
        else
        begin
            redist104_sync_together331_aunroll_x_in_c1_eni1_105_tpl_1_q <= $unsigned(in_c1_eni1_105_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code107_emscripten_compute_dom_pk_code113(BLACKBOX,175)@3
    // out out_intel_reserved_ffwd_104_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000013Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code107_emscripten_compute_dom_pk_code113 (
        .in_predicate_in(GND_q),
        .in_src_data_in_104_0(redist104_sync_together331_aunroll_x_in_c1_eni1_105_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg106_q),
        .out_intel_reserved_ffwd_104_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code107_emscripten_compute_dom_pk_code113_out_intel_reserved_ffwd_104_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,338)
    assign out_intel_reserved_ffwd_104_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code107_emscripten_compute_dom_pk_code113_out_intel_reserved_ffwd_104_0;

    // valid_fanout_reg107(REG,601)@2 + 1
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

    // redist105_sync_together331_aunroll_x_in_c1_eni1_106_tpl_1(DELAY,760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_sync_together331_aunroll_x_in_c1_eni1_106_tpl_1_q <= '0;
        end
        else
        begin
            redist105_sync_together331_aunroll_x_in_c1_eni1_106_tpl_1_q <= $unsigned(in_c1_eni1_106_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code108_emscripten_compute_dom_pk_code114(BLACKBOX,176)@3
    // out out_intel_reserved_ffwd_105_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000014Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code108_emscripten_compute_dom_pk_code114 (
        .in_predicate_in(GND_q),
        .in_src_data_in_105_0(redist105_sync_together331_aunroll_x_in_c1_eni1_106_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg107_q),
        .out_intel_reserved_ffwd_105_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code108_emscripten_compute_dom_pk_code114_out_intel_reserved_ffwd_105_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,339)
    assign out_intel_reserved_ffwd_105_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code108_emscripten_compute_dom_pk_code114_out_intel_reserved_ffwd_105_0;

    // valid_fanout_reg108(REG,602)@2 + 1
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

    // redist106_sync_together331_aunroll_x_in_c1_eni1_107_tpl_1(DELAY,761)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_sync_together331_aunroll_x_in_c1_eni1_107_tpl_1_q <= '0;
        end
        else
        begin
            redist106_sync_together331_aunroll_x_in_c1_eni1_107_tpl_1_q <= $unsigned(in_c1_eni1_107_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code109_emscripten_compute_dom_pk_code115(BLACKBOX,177)@3
    // out out_intel_reserved_ffwd_106_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000015Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code109_emscripten_compute_dom_pk_code115 (
        .in_predicate_in(GND_q),
        .in_src_data_in_106_0(redist106_sync_together331_aunroll_x_in_c1_eni1_107_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg108_q),
        .out_intel_reserved_ffwd_106_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code109_emscripten_compute_dom_pk_code115_out_intel_reserved_ffwd_106_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,340)
    assign out_intel_reserved_ffwd_106_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code109_emscripten_compute_dom_pk_code115_out_intel_reserved_ffwd_106_0;

    // valid_fanout_reg109(REG,603)@2 + 1
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

    // redist107_sync_together331_aunroll_x_in_c1_eni1_108_tpl_1(DELAY,762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist107_sync_together331_aunroll_x_in_c1_eni1_108_tpl_1_q <= '0;
        end
        else
        begin
            redist107_sync_together331_aunroll_x_in_c1_eni1_108_tpl_1_q <= $unsigned(in_c1_eni1_108_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code110_emscripten_compute_dom_pk_code116(BLACKBOX,179)@3
    // out out_intel_reserved_ffwd_107_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000017Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code110_emscripten_compute_dom_pk_code116 (
        .in_predicate_in(GND_q),
        .in_src_data_in_107_0(redist107_sync_together331_aunroll_x_in_c1_eni1_108_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg109_q),
        .out_intel_reserved_ffwd_107_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code110_emscripten_compute_dom_pk_code116_out_intel_reserved_ffwd_107_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,341)
    assign out_intel_reserved_ffwd_107_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code110_emscripten_compute_dom_pk_code116_out_intel_reserved_ffwd_107_0;

    // valid_fanout_reg110(REG,604)@2 + 1
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

    // redist108_sync_together331_aunroll_x_in_c1_eni1_109_tpl_1(DELAY,763)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist108_sync_together331_aunroll_x_in_c1_eni1_109_tpl_1_q <= '0;
        end
        else
        begin
            redist108_sync_together331_aunroll_x_in_c1_eni1_109_tpl_1_q <= $unsigned(in_c1_eni1_109_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code111_emscripten_compute_dom_pk_code117(BLACKBOX,180)@3
    // out out_intel_reserved_ffwd_108_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000018Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code111_emscripten_compute_dom_pk_code117 (
        .in_predicate_in(GND_q),
        .in_src_data_in_108_0(redist108_sync_together331_aunroll_x_in_c1_eni1_109_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg110_q),
        .out_intel_reserved_ffwd_108_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code111_emscripten_compute_dom_pk_code117_out_intel_reserved_ffwd_108_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,342)
    assign out_intel_reserved_ffwd_108_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code111_emscripten_compute_dom_pk_code117_out_intel_reserved_ffwd_108_0;

    // valid_fanout_reg111(REG,605)@2 + 1
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

    // redist109_sync_together331_aunroll_x_in_c1_eni1_110_tpl_1(DELAY,764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist109_sync_together331_aunroll_x_in_c1_eni1_110_tpl_1_q <= '0;
        end
        else
        begin
            redist109_sync_together331_aunroll_x_in_c1_eni1_110_tpl_1_q <= $unsigned(in_c1_eni1_110_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code112_emscripten_compute_dom_pk_code118(BLACKBOX,181)@3
    // out out_intel_reserved_ffwd_109_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000019Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code112_emscripten_compute_dom_pk_code118 (
        .in_predicate_in(GND_q),
        .in_src_data_in_109_0(redist109_sync_together331_aunroll_x_in_c1_eni1_110_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg111_q),
        .out_intel_reserved_ffwd_109_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code112_emscripten_compute_dom_pk_code118_out_intel_reserved_ffwd_109_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,343)
    assign out_intel_reserved_ffwd_109_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code112_emscripten_compute_dom_pk_code118_out_intel_reserved_ffwd_109_0;

    // valid_fanout_reg12(REG,506)@2 + 1
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

    // redist10_sync_together331_aunroll_x_in_c1_eni1_11_tpl_1(DELAY,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together331_aunroll_x_in_c1_eni1_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together331_aunroll_x_in_c1_eni1_11_tpl_1_q <= $unsigned(in_c1_eni1_11_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code13_emscripten_compute_dom_pk_code19(BLACKBOX,211)@3
    // out out_intel_reserved_ffwd_10_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000049Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code13_emscripten_compute_dom_pk_code19 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(redist10_sync_together331_aunroll_x_in_c1_eni1_11_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code13_emscripten_compute_dom_pk_code19_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,344)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code13_emscripten_compute_dom_pk_code19_out_intel_reserved_ffwd_10_0;

    // valid_fanout_reg112(REG,606)@2 + 1
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

    // redist110_sync_together331_aunroll_x_in_c1_eni1_111_tpl_1(DELAY,765)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist110_sync_together331_aunroll_x_in_c1_eni1_111_tpl_1_q <= '0;
        end
        else
        begin
            redist110_sync_together331_aunroll_x_in_c1_eni1_111_tpl_1_q <= $unsigned(in_c1_eni1_111_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code113_emscripten_compute_dom_pk_code119(BLACKBOX,182)@3
    // out out_intel_reserved_ffwd_110_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000020Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code113_emscripten_compute_dom_pk_code119 (
        .in_predicate_in(GND_q),
        .in_src_data_in_110_0(redist110_sync_together331_aunroll_x_in_c1_eni1_111_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg112_q),
        .out_intel_reserved_ffwd_110_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code113_emscripten_compute_dom_pk_code119_out_intel_reserved_ffwd_110_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,345)
    assign out_intel_reserved_ffwd_110_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code113_emscripten_compute_dom_pk_code119_out_intel_reserved_ffwd_110_0;

    // valid_fanout_reg113(REG,607)@2 + 1
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

    // redist111_sync_together331_aunroll_x_in_c1_eni1_112_tpl_1(DELAY,766)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist111_sync_together331_aunroll_x_in_c1_eni1_112_tpl_1_q <= '0;
        end
        else
        begin
            redist111_sync_together331_aunroll_x_in_c1_eni1_112_tpl_1_q <= $unsigned(in_c1_eni1_112_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code114_emscripten_compute_dom_pk_code120(BLACKBOX,183)@3
    // out out_intel_reserved_ffwd_111_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000021Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code114_emscripten_compute_dom_pk_code120 (
        .in_predicate_in(GND_q),
        .in_src_data_in_111_0(redist111_sync_together331_aunroll_x_in_c1_eni1_112_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg113_q),
        .out_intel_reserved_ffwd_111_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code114_emscripten_compute_dom_pk_code120_out_intel_reserved_ffwd_111_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,346)
    assign out_intel_reserved_ffwd_111_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code114_emscripten_compute_dom_pk_code120_out_intel_reserved_ffwd_111_0;

    // valid_fanout_reg114(REG,608)@2 + 1
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

    // redist112_sync_together331_aunroll_x_in_c1_eni1_113_tpl_1(DELAY,767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist112_sync_together331_aunroll_x_in_c1_eni1_113_tpl_1_q <= '0;
        end
        else
        begin
            redist112_sync_together331_aunroll_x_in_c1_eni1_113_tpl_1_q <= $unsigned(in_c1_eni1_113_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code115_emscripten_compute_dom_pk_code121(BLACKBOX,184)@3
    // out out_intel_reserved_ffwd_112_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000022Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code115_emscripten_compute_dom_pk_code121 (
        .in_predicate_in(GND_q),
        .in_src_data_in_112_0(redist112_sync_together331_aunroll_x_in_c1_eni1_113_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg114_q),
        .out_intel_reserved_ffwd_112_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code115_emscripten_compute_dom_pk_code121_out_intel_reserved_ffwd_112_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,347)
    assign out_intel_reserved_ffwd_112_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code115_emscripten_compute_dom_pk_code121_out_intel_reserved_ffwd_112_0;

    // valid_fanout_reg115(REG,609)@2 + 1
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

    // redist113_sync_together331_aunroll_x_in_c1_eni1_114_tpl_1(DELAY,768)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_sync_together331_aunroll_x_in_c1_eni1_114_tpl_1_q <= '0;
        end
        else
        begin
            redist113_sync_together331_aunroll_x_in_c1_eni1_114_tpl_1_q <= $unsigned(in_c1_eni1_114_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code116_emscripten_compute_dom_pk_code122(BLACKBOX,185)@3
    // out out_intel_reserved_ffwd_113_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000023Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code116_emscripten_compute_dom_pk_code122 (
        .in_predicate_in(GND_q),
        .in_src_data_in_113_0(redist113_sync_together331_aunroll_x_in_c1_eni1_114_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg115_q),
        .out_intel_reserved_ffwd_113_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code116_emscripten_compute_dom_pk_code122_out_intel_reserved_ffwd_113_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,348)
    assign out_intel_reserved_ffwd_113_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code116_emscripten_compute_dom_pk_code122_out_intel_reserved_ffwd_113_0;

    // valid_fanout_reg116(REG,610)@2 + 1
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

    // redist114_sync_together331_aunroll_x_in_c1_eni1_115_tpl_1(DELAY,769)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_sync_together331_aunroll_x_in_c1_eni1_115_tpl_1_q <= '0;
        end
        else
        begin
            redist114_sync_together331_aunroll_x_in_c1_eni1_115_tpl_1_q <= $unsigned(in_c1_eni1_115_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code117_emscripten_compute_dom_pk_code123(BLACKBOX,186)@3
    // out out_intel_reserved_ffwd_114_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000024Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code117_emscripten_compute_dom_pk_code123 (
        .in_predicate_in(GND_q),
        .in_src_data_in_114_0(redist114_sync_together331_aunroll_x_in_c1_eni1_115_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg116_q),
        .out_intel_reserved_ffwd_114_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code117_emscripten_compute_dom_pk_code123_out_intel_reserved_ffwd_114_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,349)
    assign out_intel_reserved_ffwd_114_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code117_emscripten_compute_dom_pk_code123_out_intel_reserved_ffwd_114_0;

    // valid_fanout_reg117(REG,611)@2 + 1
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

    // redist115_sync_together331_aunroll_x_in_c1_eni1_116_tpl_1(DELAY,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_sync_together331_aunroll_x_in_c1_eni1_116_tpl_1_q <= '0;
        end
        else
        begin
            redist115_sync_together331_aunroll_x_in_c1_eni1_116_tpl_1_q <= $unsigned(in_c1_eni1_116_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code118_emscripten_compute_dom_pk_code124(BLACKBOX,187)@3
    // out out_intel_reserved_ffwd_115_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000025Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code118_emscripten_compute_dom_pk_code124 (
        .in_predicate_in(GND_q),
        .in_src_data_in_115_0(redist115_sync_together331_aunroll_x_in_c1_eni1_116_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg117_q),
        .out_intel_reserved_ffwd_115_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code118_emscripten_compute_dom_pk_code124_out_intel_reserved_ffwd_115_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,350)
    assign out_intel_reserved_ffwd_115_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code118_emscripten_compute_dom_pk_code124_out_intel_reserved_ffwd_115_0;

    // valid_fanout_reg118(REG,612)@2 + 1
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

    // redist116_sync_together331_aunroll_x_in_c1_eni1_117_tpl_1(DELAY,771)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_sync_together331_aunroll_x_in_c1_eni1_117_tpl_1_q <= '0;
        end
        else
        begin
            redist116_sync_together331_aunroll_x_in_c1_eni1_117_tpl_1_q <= $unsigned(in_c1_eni1_117_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code119_emscripten_compute_dom_pk_code125(BLACKBOX,188)@3
    // out out_intel_reserved_ffwd_116_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000026Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code119_emscripten_compute_dom_pk_code125 (
        .in_predicate_in(GND_q),
        .in_src_data_in_116_0(redist116_sync_together331_aunroll_x_in_c1_eni1_117_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg118_q),
        .out_intel_reserved_ffwd_116_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code119_emscripten_compute_dom_pk_code125_out_intel_reserved_ffwd_116_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_17_regfree_osync_x(GPOUT,351)
    assign out_intel_reserved_ffwd_116_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code119_emscripten_compute_dom_pk_code125_out_intel_reserved_ffwd_116_0;

    // valid_fanout_reg119(REG,613)@2 + 1
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

    // redist117_sync_together331_aunroll_x_in_c1_eni1_118_tpl_1(DELAY,772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_sync_together331_aunroll_x_in_c1_eni1_118_tpl_1_q <= '0;
        end
        else
        begin
            redist117_sync_together331_aunroll_x_in_c1_eni1_118_tpl_1_q <= $unsigned(in_c1_eni1_118_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code120_emscripten_compute_dom_pk_code126(BLACKBOX,190)@3
    // out out_intel_reserved_ffwd_117_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000028Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code120_emscripten_compute_dom_pk_code126 (
        .in_predicate_in(GND_q),
        .in_src_data_in_117_0(redist117_sync_together331_aunroll_x_in_c1_eni1_118_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg119_q),
        .out_intel_reserved_ffwd_117_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code120_emscripten_compute_dom_pk_code126_out_intel_reserved_ffwd_117_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_18_regfree_osync_x(GPOUT,352)
    assign out_intel_reserved_ffwd_117_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code120_emscripten_compute_dom_pk_code126_out_intel_reserved_ffwd_117_0;

    // valid_fanout_reg120(REG,614)@2 + 1
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

    // redist118_sync_together331_aunroll_x_in_c1_eni1_119_tpl_1(DELAY,773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist118_sync_together331_aunroll_x_in_c1_eni1_119_tpl_1_q <= '0;
        end
        else
        begin
            redist118_sync_together331_aunroll_x_in_c1_eni1_119_tpl_1_q <= $unsigned(in_c1_eni1_119_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code121_emscripten_compute_dom_pk_code127(BLACKBOX,191)@3
    // out out_intel_reserved_ffwd_118_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000029Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code121_emscripten_compute_dom_pk_code127 (
        .in_predicate_in(GND_q),
        .in_src_data_in_118_0(redist118_sync_together331_aunroll_x_in_c1_eni1_119_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg120_q),
        .out_intel_reserved_ffwd_118_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code121_emscripten_compute_dom_pk_code127_out_intel_reserved_ffwd_118_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_19_regfree_osync_x(GPOUT,353)
    assign out_intel_reserved_ffwd_118_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code121_emscripten_compute_dom_pk_code127_out_intel_reserved_ffwd_118_0;

    // valid_fanout_reg121(REG,615)@2 + 1
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

    // redist119_sync_together331_aunroll_x_in_c1_eni1_120_tpl_1(DELAY,774)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist119_sync_together331_aunroll_x_in_c1_eni1_120_tpl_1_q <= '0;
        end
        else
        begin
            redist119_sync_together331_aunroll_x_in_c1_eni1_120_tpl_1_q <= $unsigned(in_c1_eni1_120_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code122_emscripten_compute_dom_pk_code128(BLACKBOX,192)@3
    // out out_intel_reserved_ffwd_119_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000030Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code122_emscripten_compute_dom_pk_code128 (
        .in_predicate_in(GND_q),
        .in_src_data_in_119_0(redist119_sync_together331_aunroll_x_in_c1_eni1_120_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg121_q),
        .out_intel_reserved_ffwd_119_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code122_emscripten_compute_dom_pk_code128_out_intel_reserved_ffwd_119_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_20_regfree_osync_x(GPOUT,354)
    assign out_intel_reserved_ffwd_119_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code122_emscripten_compute_dom_pk_code128_out_intel_reserved_ffwd_119_0;

    // valid_fanout_reg13(REG,507)@2 + 1
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

    // redist11_sync_together331_aunroll_x_in_c1_eni1_12_tpl_1(DELAY,666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together331_aunroll_x_in_c1_eni1_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together331_aunroll_x_in_c1_eni1_12_tpl_1_q <= $unsigned(in_c1_eni1_12_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code14_emscripten_compute_dom_pk_code20(BLACKBOX,222)@3
    // out out_intel_reserved_ffwd_11_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000060Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code14_emscripten_compute_dom_pk_code20 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(redist11_sync_together331_aunroll_x_in_c1_eni1_12_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code14_emscripten_compute_dom_pk_code20_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_21_regfree_osync_x(GPOUT,355)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code14_emscripten_compute_dom_pk_code20_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg122(REG,616)@2 + 1
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

    // redist120_sync_together331_aunroll_x_in_c1_eni1_121_tpl_1(DELAY,775)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist120_sync_together331_aunroll_x_in_c1_eni1_121_tpl_1_q <= '0;
        end
        else
        begin
            redist120_sync_together331_aunroll_x_in_c1_eni1_121_tpl_1_q <= $unsigned(in_c1_eni1_121_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code123_emscripten_compute_dom_pk_code129(BLACKBOX,193)@3
    // out out_intel_reserved_ffwd_120_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000031Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code123_emscripten_compute_dom_pk_code129 (
        .in_predicate_in(GND_q),
        .in_src_data_in_120_0(redist120_sync_together331_aunroll_x_in_c1_eni1_121_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg122_q),
        .out_intel_reserved_ffwd_120_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code123_emscripten_compute_dom_pk_code129_out_intel_reserved_ffwd_120_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_22_regfree_osync_x(GPOUT,356)
    assign out_intel_reserved_ffwd_120_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code123_emscripten_compute_dom_pk_code129_out_intel_reserved_ffwd_120_0;

    // valid_fanout_reg123(REG,617)@2 + 1
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

    // redist121_sync_together331_aunroll_x_in_c1_eni1_122_tpl_1(DELAY,776)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist121_sync_together331_aunroll_x_in_c1_eni1_122_tpl_1_q <= '0;
        end
        else
        begin
            redist121_sync_together331_aunroll_x_in_c1_eni1_122_tpl_1_q <= $unsigned(in_c1_eni1_122_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code124_emscripten_compute_dom_pk_code130(BLACKBOX,194)@3
    // out out_intel_reserved_ffwd_121_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000032Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code124_emscripten_compute_dom_pk_code130 (
        .in_predicate_in(GND_q),
        .in_src_data_in_121_0(redist121_sync_together331_aunroll_x_in_c1_eni1_122_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg123_q),
        .out_intel_reserved_ffwd_121_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code124_emscripten_compute_dom_pk_code130_out_intel_reserved_ffwd_121_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_23_regfree_osync_x(GPOUT,357)
    assign out_intel_reserved_ffwd_121_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code124_emscripten_compute_dom_pk_code130_out_intel_reserved_ffwd_121_0;

    // valid_fanout_reg124(REG,618)@2 + 1
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

    // redist122_sync_together331_aunroll_x_in_c1_eni1_123_tpl_1(DELAY,777)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist122_sync_together331_aunroll_x_in_c1_eni1_123_tpl_1_q <= '0;
        end
        else
        begin
            redist122_sync_together331_aunroll_x_in_c1_eni1_123_tpl_1_q <= $unsigned(in_c1_eni1_123_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code125_emscripten_compute_dom_pk_code131(BLACKBOX,195)@3
    // out out_intel_reserved_ffwd_122_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000033Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code125_emscripten_compute_dom_pk_code131 (
        .in_predicate_in(GND_q),
        .in_src_data_in_122_0(redist122_sync_together331_aunroll_x_in_c1_eni1_123_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg124_q),
        .out_intel_reserved_ffwd_122_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code125_emscripten_compute_dom_pk_code131_out_intel_reserved_ffwd_122_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_24_regfree_osync_x(GPOUT,358)
    assign out_intel_reserved_ffwd_122_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code125_emscripten_compute_dom_pk_code131_out_intel_reserved_ffwd_122_0;

    // valid_fanout_reg125(REG,619)@2 + 1
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

    // redist123_sync_together331_aunroll_x_in_c1_eni1_124_tpl_1(DELAY,778)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_sync_together331_aunroll_x_in_c1_eni1_124_tpl_1_q <= '0;
        end
        else
        begin
            redist123_sync_together331_aunroll_x_in_c1_eni1_124_tpl_1_q <= $unsigned(in_c1_eni1_124_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code126_emscripten_compute_dom_pk_code132(BLACKBOX,196)@3
    // out out_intel_reserved_ffwd_123_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000034Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code126_emscripten_compute_dom_pk_code132 (
        .in_predicate_in(GND_q),
        .in_src_data_in_123_0(redist123_sync_together331_aunroll_x_in_c1_eni1_124_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg125_q),
        .out_intel_reserved_ffwd_123_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code126_emscripten_compute_dom_pk_code132_out_intel_reserved_ffwd_123_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_25_regfree_osync_x(GPOUT,359)
    assign out_intel_reserved_ffwd_123_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code126_emscripten_compute_dom_pk_code132_out_intel_reserved_ffwd_123_0;

    // valid_fanout_reg126(REG,620)@2 + 1
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

    // redist124_sync_together331_aunroll_x_in_c1_eni1_125_tpl_1(DELAY,779)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist124_sync_together331_aunroll_x_in_c1_eni1_125_tpl_1_q <= '0;
        end
        else
        begin
            redist124_sync_together331_aunroll_x_in_c1_eni1_125_tpl_1_q <= $unsigned(in_c1_eni1_125_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code127_emscripten_compute_dom_pk_code133(BLACKBOX,197)@3
    // out out_intel_reserved_ffwd_124_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000035Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code127_emscripten_compute_dom_pk_code133 (
        .in_predicate_in(GND_q),
        .in_src_data_in_124_0(redist124_sync_together331_aunroll_x_in_c1_eni1_125_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg126_q),
        .out_intel_reserved_ffwd_124_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code127_emscripten_compute_dom_pk_code133_out_intel_reserved_ffwd_124_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_26_regfree_osync_x(GPOUT,360)
    assign out_intel_reserved_ffwd_124_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code127_emscripten_compute_dom_pk_code133_out_intel_reserved_ffwd_124_0;

    // valid_fanout_reg127(REG,621)@2 + 1
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

    // redist125_sync_together331_aunroll_x_in_c1_eni1_126_tpl_1(DELAY,780)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist125_sync_together331_aunroll_x_in_c1_eni1_126_tpl_1_q <= '0;
        end
        else
        begin
            redist125_sync_together331_aunroll_x_in_c1_eni1_126_tpl_1_q <= $unsigned(in_c1_eni1_126_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code128_emscripten_compute_dom_pk_code134(BLACKBOX,198)@3
    // out out_intel_reserved_ffwd_125_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000036Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code128_emscripten_compute_dom_pk_code134 (
        .in_predicate_in(GND_q),
        .in_src_data_in_125_0(redist125_sync_together331_aunroll_x_in_c1_eni1_126_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg127_q),
        .out_intel_reserved_ffwd_125_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code128_emscripten_compute_dom_pk_code134_out_intel_reserved_ffwd_125_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_27_regfree_osync_x(GPOUT,361)
    assign out_intel_reserved_ffwd_125_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code128_emscripten_compute_dom_pk_code134_out_intel_reserved_ffwd_125_0;

    // valid_fanout_reg128(REG,622)@2 + 1
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

    // redist126_sync_together331_aunroll_x_in_c1_eni1_127_tpl_1(DELAY,781)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_sync_together331_aunroll_x_in_c1_eni1_127_tpl_1_q <= '0;
        end
        else
        begin
            redist126_sync_together331_aunroll_x_in_c1_eni1_127_tpl_1_q <= $unsigned(in_c1_eni1_127_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code129_emscripten_compute_dom_pk_code135(BLACKBOX,199)@3
    // out out_intel_reserved_ffwd_126_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000037Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code129_emscripten_compute_dom_pk_code135 (
        .in_predicate_in(GND_q),
        .in_src_data_in_126_0(redist126_sync_together331_aunroll_x_in_c1_eni1_127_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg128_q),
        .out_intel_reserved_ffwd_126_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code129_emscripten_compute_dom_pk_code135_out_intel_reserved_ffwd_126_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_28_regfree_osync_x(GPOUT,362)
    assign out_intel_reserved_ffwd_126_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code129_emscripten_compute_dom_pk_code135_out_intel_reserved_ffwd_126_0;

    // valid_fanout_reg129(REG,623)@2 + 1
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

    // redist127_sync_together331_aunroll_x_in_c1_eni1_128_tpl_1(DELAY,782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist127_sync_together331_aunroll_x_in_c1_eni1_128_tpl_1_q <= '0;
        end
        else
        begin
            redist127_sync_together331_aunroll_x_in_c1_eni1_128_tpl_1_q <= $unsigned(in_c1_eni1_128_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code130_emscripten_compute_dom_pk_code136(BLACKBOX,201)@3
    // out out_intel_reserved_ffwd_127_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000039Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code130_emscripten_compute_dom_pk_code136 (
        .in_predicate_in(GND_q),
        .in_src_data_in_127_0(redist127_sync_together331_aunroll_x_in_c1_eni1_128_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg129_q),
        .out_intel_reserved_ffwd_127_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code130_emscripten_compute_dom_pk_code136_out_intel_reserved_ffwd_127_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_29_regfree_osync_x(GPOUT,363)
    assign out_intel_reserved_ffwd_127_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code130_emscripten_compute_dom_pk_code136_out_intel_reserved_ffwd_127_0;

    // valid_fanout_reg130(REG,624)@2 + 1
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

    // redist128_sync_together331_aunroll_x_in_c1_eni1_129_tpl_1(DELAY,783)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist128_sync_together331_aunroll_x_in_c1_eni1_129_tpl_1_q <= '0;
        end
        else
        begin
            redist128_sync_together331_aunroll_x_in_c1_eni1_129_tpl_1_q <= $unsigned(in_c1_eni1_129_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code131_emscripten_compute_dom_pk_code137(BLACKBOX,202)@3
    // out out_intel_reserved_ffwd_128_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000040Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code131_emscripten_compute_dom_pk_code137 (
        .in_predicate_in(GND_q),
        .in_src_data_in_128_0(redist128_sync_together331_aunroll_x_in_c1_eni1_129_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg130_q),
        .out_intel_reserved_ffwd_128_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code131_emscripten_compute_dom_pk_code137_out_intel_reserved_ffwd_128_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_30_regfree_osync_x(GPOUT,364)
    assign out_intel_reserved_ffwd_128_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code131_emscripten_compute_dom_pk_code137_out_intel_reserved_ffwd_128_0;

    // valid_fanout_reg131(REG,625)@2 + 1
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

    // redist129_sync_together331_aunroll_x_in_c1_eni1_130_tpl_1(DELAY,784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist129_sync_together331_aunroll_x_in_c1_eni1_130_tpl_1_q <= '0;
        end
        else
        begin
            redist129_sync_together331_aunroll_x_in_c1_eni1_130_tpl_1_q <= $unsigned(in_c1_eni1_130_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code132_emscripten_compute_dom_pk_code138(BLACKBOX,203)@3
    // out out_intel_reserved_ffwd_129_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000041Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code132_emscripten_compute_dom_pk_code138 (
        .in_predicate_in(GND_q),
        .in_src_data_in_129_0(redist129_sync_together331_aunroll_x_in_c1_eni1_130_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg131_q),
        .out_intel_reserved_ffwd_129_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code132_emscripten_compute_dom_pk_code138_out_intel_reserved_ffwd_129_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_31_regfree_osync_x(GPOUT,365)
    assign out_intel_reserved_ffwd_129_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code132_emscripten_compute_dom_pk_code138_out_intel_reserved_ffwd_129_0;

    // valid_fanout_reg14(REG,508)@2 + 1
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

    // redist12_sync_together331_aunroll_x_in_c1_eni1_13_tpl_1(DELAY,667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together331_aunroll_x_in_c1_eni1_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together331_aunroll_x_in_c1_eni1_13_tpl_1_q <= $unsigned(in_c1_eni1_13_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code15_emscripten_compute_dom_pk_code21(BLACKBOX,231)@3
    // out out_intel_reserved_ffwd_12_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000069Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code15_emscripten_compute_dom_pk_code21 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(redist12_sync_together331_aunroll_x_in_c1_eni1_13_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code15_emscripten_compute_dom_pk_code21_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_32_regfree_osync_x(GPOUT,366)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code15_emscripten_compute_dom_pk_code21_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg132(REG,626)@2 + 1
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

    // redist130_sync_together331_aunroll_x_in_c1_eni1_131_tpl_1(DELAY,785)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist130_sync_together331_aunroll_x_in_c1_eni1_131_tpl_1_q <= '0;
        end
        else
        begin
            redist130_sync_together331_aunroll_x_in_c1_eni1_131_tpl_1_q <= $unsigned(in_c1_eni1_131_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code133_emscripten_compute_dom_pk_code139(BLACKBOX,204)@3
    // out out_intel_reserved_ffwd_130_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000042Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code133_emscripten_compute_dom_pk_code139 (
        .in_predicate_in(GND_q),
        .in_src_data_in_130_0(redist130_sync_together331_aunroll_x_in_c1_eni1_131_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg132_q),
        .out_intel_reserved_ffwd_130_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code133_emscripten_compute_dom_pk_code139_out_intel_reserved_ffwd_130_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_33_regfree_osync_x(GPOUT,367)
    assign out_intel_reserved_ffwd_130_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code133_emscripten_compute_dom_pk_code139_out_intel_reserved_ffwd_130_0;

    // valid_fanout_reg133(REG,627)@2 + 1
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

    // redist131_sync_together331_aunroll_x_in_c1_eni1_132_tpl_1(DELAY,786)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist131_sync_together331_aunroll_x_in_c1_eni1_132_tpl_1_q <= '0;
        end
        else
        begin
            redist131_sync_together331_aunroll_x_in_c1_eni1_132_tpl_1_q <= $unsigned(in_c1_eni1_132_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code134_emscripten_compute_dom_pk_code140(BLACKBOX,205)@3
    // out out_intel_reserved_ffwd_131_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000043Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code134_emscripten_compute_dom_pk_code140 (
        .in_predicate_in(GND_q),
        .in_src_data_in_131_0(redist131_sync_together331_aunroll_x_in_c1_eni1_132_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg133_q),
        .out_intel_reserved_ffwd_131_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code134_emscripten_compute_dom_pk_code140_out_intel_reserved_ffwd_131_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_34_regfree_osync_x(GPOUT,368)
    assign out_intel_reserved_ffwd_131_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code134_emscripten_compute_dom_pk_code140_out_intel_reserved_ffwd_131_0;

    // valid_fanout_reg134(REG,628)@2 + 1
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

    // redist132_sync_together331_aunroll_x_in_c1_eni1_133_tpl_1(DELAY,787)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist132_sync_together331_aunroll_x_in_c1_eni1_133_tpl_1_q <= '0;
        end
        else
        begin
            redist132_sync_together331_aunroll_x_in_c1_eni1_133_tpl_1_q <= $unsigned(in_c1_eni1_133_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code135_emscripten_compute_dom_pk_code141(BLACKBOX,206)@3
    // out out_intel_reserved_ffwd_132_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000044Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code135_emscripten_compute_dom_pk_code141 (
        .in_predicate_in(GND_q),
        .in_src_data_in_132_0(redist132_sync_together331_aunroll_x_in_c1_eni1_133_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg134_q),
        .out_intel_reserved_ffwd_132_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code135_emscripten_compute_dom_pk_code141_out_intel_reserved_ffwd_132_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_35_regfree_osync_x(GPOUT,369)
    assign out_intel_reserved_ffwd_132_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code135_emscripten_compute_dom_pk_code141_out_intel_reserved_ffwd_132_0;

    // valid_fanout_reg135(REG,629)@2 + 1
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

    // redist133_sync_together331_aunroll_x_in_c1_eni1_134_tpl_1(DELAY,788)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist133_sync_together331_aunroll_x_in_c1_eni1_134_tpl_1_q <= '0;
        end
        else
        begin
            redist133_sync_together331_aunroll_x_in_c1_eni1_134_tpl_1_q <= $unsigned(in_c1_eni1_134_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code136_emscripten_compute_dom_pk_code142(BLACKBOX,207)@3
    // out out_intel_reserved_ffwd_133_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000045Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code136_emscripten_compute_dom_pk_code142 (
        .in_predicate_in(GND_q),
        .in_src_data_in_133_0(redist133_sync_together331_aunroll_x_in_c1_eni1_134_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg135_q),
        .out_intel_reserved_ffwd_133_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code136_emscripten_compute_dom_pk_code142_out_intel_reserved_ffwd_133_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_36_regfree_osync_x(GPOUT,370)
    assign out_intel_reserved_ffwd_133_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code136_emscripten_compute_dom_pk_code142_out_intel_reserved_ffwd_133_0;

    // valid_fanout_reg136(REG,630)@2 + 1
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

    // redist134_sync_together331_aunroll_x_in_c1_eni1_135_tpl_1(DELAY,789)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist134_sync_together331_aunroll_x_in_c1_eni1_135_tpl_1_q <= '0;
        end
        else
        begin
            redist134_sync_together331_aunroll_x_in_c1_eni1_135_tpl_1_q <= $unsigned(in_c1_eni1_135_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code137_emscripten_compute_dom_pk_code143(BLACKBOX,208)@3
    // out out_intel_reserved_ffwd_134_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000046Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code137_emscripten_compute_dom_pk_code143 (
        .in_predicate_in(GND_q),
        .in_src_data_in_134_0(redist134_sync_together331_aunroll_x_in_c1_eni1_135_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg136_q),
        .out_intel_reserved_ffwd_134_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code137_emscripten_compute_dom_pk_code143_out_intel_reserved_ffwd_134_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_37_regfree_osync_x(GPOUT,371)
    assign out_intel_reserved_ffwd_134_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code137_emscripten_compute_dom_pk_code143_out_intel_reserved_ffwd_134_0;

    // valid_fanout_reg137(REG,631)@2 + 1
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

    // redist135_sync_together331_aunroll_x_in_c1_eni1_136_tpl_1(DELAY,790)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist135_sync_together331_aunroll_x_in_c1_eni1_136_tpl_1_q <= '0;
        end
        else
        begin
            redist135_sync_together331_aunroll_x_in_c1_eni1_136_tpl_1_q <= $unsigned(in_c1_eni1_136_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code138_emscripten_compute_dom_pk_code144(BLACKBOX,209)@3
    // out out_intel_reserved_ffwd_135_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000047Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code138_emscripten_compute_dom_pk_code144 (
        .in_predicate_in(GND_q),
        .in_src_data_in_135_0(redist135_sync_together331_aunroll_x_in_c1_eni1_136_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg137_q),
        .out_intel_reserved_ffwd_135_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code138_emscripten_compute_dom_pk_code144_out_intel_reserved_ffwd_135_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_38_regfree_osync_x(GPOUT,372)
    assign out_intel_reserved_ffwd_135_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code138_emscripten_compute_dom_pk_code144_out_intel_reserved_ffwd_135_0;

    // valid_fanout_reg138(REG,632)@2 + 1
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

    // redist136_sync_together331_aunroll_x_in_c1_eni1_137_tpl_1(DELAY,791)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist136_sync_together331_aunroll_x_in_c1_eni1_137_tpl_1_q <= '0;
        end
        else
        begin
            redist136_sync_together331_aunroll_x_in_c1_eni1_137_tpl_1_q <= $unsigned(in_c1_eni1_137_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code139_emscripten_compute_dom_pk_code145(BLACKBOX,210)@3
    // out out_intel_reserved_ffwd_136_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000048Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code139_emscripten_compute_dom_pk_code145 (
        .in_predicate_in(GND_q),
        .in_src_data_in_136_0(redist136_sync_together331_aunroll_x_in_c1_eni1_137_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg138_q),
        .out_intel_reserved_ffwd_136_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code139_emscripten_compute_dom_pk_code145_out_intel_reserved_ffwd_136_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_39_regfree_osync_x(GPOUT,373)
    assign out_intel_reserved_ffwd_136_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code139_emscripten_compute_dom_pk_code145_out_intel_reserved_ffwd_136_0;

    // valid_fanout_reg139(REG,633)@2 + 1
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

    // redist137_sync_together331_aunroll_x_in_c1_eni1_138_tpl_1(DELAY,792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist137_sync_together331_aunroll_x_in_c1_eni1_138_tpl_1_q <= '0;
        end
        else
        begin
            redist137_sync_together331_aunroll_x_in_c1_eni1_138_tpl_1_q <= $unsigned(in_c1_eni1_138_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code140_emscripten_compute_dom_pk_code146(BLACKBOX,212)@3
    // out out_intel_reserved_ffwd_137_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000050Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code140_emscripten_compute_dom_pk_code146 (
        .in_predicate_in(GND_q),
        .in_src_data_in_137_0(redist137_sync_together331_aunroll_x_in_c1_eni1_138_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg139_q),
        .out_intel_reserved_ffwd_137_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code140_emscripten_compute_dom_pk_code146_out_intel_reserved_ffwd_137_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_40_regfree_osync_x(GPOUT,374)
    assign out_intel_reserved_ffwd_137_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code140_emscripten_compute_dom_pk_code146_out_intel_reserved_ffwd_137_0;

    // valid_fanout_reg140(REG,634)@2 + 1
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

    // redist138_sync_together331_aunroll_x_in_c1_eni1_139_tpl_1(DELAY,793)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist138_sync_together331_aunroll_x_in_c1_eni1_139_tpl_1_q <= '0;
        end
        else
        begin
            redist138_sync_together331_aunroll_x_in_c1_eni1_139_tpl_1_q <= $unsigned(in_c1_eni1_139_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code141_emscripten_compute_dom_pk_code147(BLACKBOX,213)@3
    // out out_intel_reserved_ffwd_138_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000051Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code141_emscripten_compute_dom_pk_code147 (
        .in_predicate_in(GND_q),
        .in_src_data_in_138_0(redist138_sync_together331_aunroll_x_in_c1_eni1_139_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg140_q),
        .out_intel_reserved_ffwd_138_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code141_emscripten_compute_dom_pk_code147_out_intel_reserved_ffwd_138_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_41_regfree_osync_x(GPOUT,375)
    assign out_intel_reserved_ffwd_138_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code141_emscripten_compute_dom_pk_code147_out_intel_reserved_ffwd_138_0;

    // valid_fanout_reg141(REG,635)@2 + 1
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

    // redist139_sync_together331_aunroll_x_in_c1_eni1_140_tpl_1(DELAY,794)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist139_sync_together331_aunroll_x_in_c1_eni1_140_tpl_1_q <= '0;
        end
        else
        begin
            redist139_sync_together331_aunroll_x_in_c1_eni1_140_tpl_1_q <= $unsigned(in_c1_eni1_140_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code142_emscripten_compute_dom_pk_code148(BLACKBOX,214)@3
    // out out_intel_reserved_ffwd_139_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000052Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code142_emscripten_compute_dom_pk_code148 (
        .in_predicate_in(GND_q),
        .in_src_data_in_139_0(redist139_sync_together331_aunroll_x_in_c1_eni1_140_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg141_q),
        .out_intel_reserved_ffwd_139_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code142_emscripten_compute_dom_pk_code148_out_intel_reserved_ffwd_139_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_42_regfree_osync_x(GPOUT,376)
    assign out_intel_reserved_ffwd_139_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code142_emscripten_compute_dom_pk_code148_out_intel_reserved_ffwd_139_0;

    // valid_fanout_reg15(REG,509)@2 + 1
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

    // redist13_sync_together331_aunroll_x_in_c1_eni1_14_tpl_1(DELAY,668)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together331_aunroll_x_in_c1_eni1_14_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together331_aunroll_x_in_c1_eni1_14_tpl_1_q <= $unsigned(in_c1_eni1_14_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code16_emscripten_compute_dom_pk_code22(BLACKBOX,232)@3
    // out out_intel_reserved_ffwd_13_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000070Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code16_emscripten_compute_dom_pk_code22 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(redist13_sync_together331_aunroll_x_in_c1_eni1_14_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code16_emscripten_compute_dom_pk_code22_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_43_regfree_osync_x(GPOUT,377)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code16_emscripten_compute_dom_pk_code22_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg142(REG,636)@2 + 1
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

    // redist140_sync_together331_aunroll_x_in_c1_eni1_141_tpl_1(DELAY,795)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist140_sync_together331_aunroll_x_in_c1_eni1_141_tpl_1_q <= '0;
        end
        else
        begin
            redist140_sync_together331_aunroll_x_in_c1_eni1_141_tpl_1_q <= $unsigned(in_c1_eni1_141_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code143_emscripten_compute_dom_pk_code149(BLACKBOX,215)@3
    // out out_intel_reserved_ffwd_140_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000053Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code143_emscripten_compute_dom_pk_code149 (
        .in_predicate_in(GND_q),
        .in_src_data_in_140_0(redist140_sync_together331_aunroll_x_in_c1_eni1_141_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg142_q),
        .out_intel_reserved_ffwd_140_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code143_emscripten_compute_dom_pk_code149_out_intel_reserved_ffwd_140_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_44_regfree_osync_x(GPOUT,378)
    assign out_intel_reserved_ffwd_140_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code143_emscripten_compute_dom_pk_code149_out_intel_reserved_ffwd_140_0;

    // valid_fanout_reg143(REG,637)@2 + 1
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

    // redist141_sync_together331_aunroll_x_in_c1_eni1_142_tpl_1(DELAY,796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist141_sync_together331_aunroll_x_in_c1_eni1_142_tpl_1_q <= '0;
        end
        else
        begin
            redist141_sync_together331_aunroll_x_in_c1_eni1_142_tpl_1_q <= $unsigned(in_c1_eni1_142_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code144_emscripten_compute_dom_pk_code150(BLACKBOX,216)@3
    // out out_intel_reserved_ffwd_141_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000054Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code144_emscripten_compute_dom_pk_code150 (
        .in_predicate_in(GND_q),
        .in_src_data_in_141_0(redist141_sync_together331_aunroll_x_in_c1_eni1_142_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg143_q),
        .out_intel_reserved_ffwd_141_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code144_emscripten_compute_dom_pk_code150_out_intel_reserved_ffwd_141_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_45_regfree_osync_x(GPOUT,379)
    assign out_intel_reserved_ffwd_141_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code144_emscripten_compute_dom_pk_code150_out_intel_reserved_ffwd_141_0;

    // valid_fanout_reg144(REG,638)@2 + 1
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

    // redist142_sync_together331_aunroll_x_in_c1_eni1_143_tpl_1(DELAY,797)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist142_sync_together331_aunroll_x_in_c1_eni1_143_tpl_1_q <= '0;
        end
        else
        begin
            redist142_sync_together331_aunroll_x_in_c1_eni1_143_tpl_1_q <= $unsigned(in_c1_eni1_143_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code145_emscripten_compute_dom_pk_code151(BLACKBOX,217)@3
    // out out_intel_reserved_ffwd_142_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000055Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code145_emscripten_compute_dom_pk_code151 (
        .in_predicate_in(GND_q),
        .in_src_data_in_142_0(redist142_sync_together331_aunroll_x_in_c1_eni1_143_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg144_q),
        .out_intel_reserved_ffwd_142_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code145_emscripten_compute_dom_pk_code151_out_intel_reserved_ffwd_142_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_46_regfree_osync_x(GPOUT,380)
    assign out_intel_reserved_ffwd_142_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code145_emscripten_compute_dom_pk_code151_out_intel_reserved_ffwd_142_0;

    // valid_fanout_reg145(REG,639)@2 + 1
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

    // redist143_sync_together331_aunroll_x_in_c1_eni1_144_tpl_1(DELAY,798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist143_sync_together331_aunroll_x_in_c1_eni1_144_tpl_1_q <= '0;
        end
        else
        begin
            redist143_sync_together331_aunroll_x_in_c1_eni1_144_tpl_1_q <= $unsigned(in_c1_eni1_144_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code146_emscripten_compute_dom_pk_code152(BLACKBOX,218)@3
    // out out_intel_reserved_ffwd_143_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000056Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code146_emscripten_compute_dom_pk_code152 (
        .in_predicate_in(GND_q),
        .in_src_data_in_143_0(redist143_sync_together331_aunroll_x_in_c1_eni1_144_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg145_q),
        .out_intel_reserved_ffwd_143_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code146_emscripten_compute_dom_pk_code152_out_intel_reserved_ffwd_143_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_47_regfree_osync_x(GPOUT,381)
    assign out_intel_reserved_ffwd_143_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code146_emscripten_compute_dom_pk_code152_out_intel_reserved_ffwd_143_0;

    // valid_fanout_reg146(REG,640)@2 + 1
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

    // redist144_sync_together331_aunroll_x_in_c1_eni1_145_tpl_1(DELAY,799)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist144_sync_together331_aunroll_x_in_c1_eni1_145_tpl_1_q <= '0;
        end
        else
        begin
            redist144_sync_together331_aunroll_x_in_c1_eni1_145_tpl_1_q <= $unsigned(in_c1_eni1_145_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code147_emscripten_compute_dom_pk_code153(BLACKBOX,219)@3
    // out out_intel_reserved_ffwd_144_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000057Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code147_emscripten_compute_dom_pk_code153 (
        .in_predicate_in(GND_q),
        .in_src_data_in_144_0(redist144_sync_together331_aunroll_x_in_c1_eni1_145_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg146_q),
        .out_intel_reserved_ffwd_144_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code147_emscripten_compute_dom_pk_code153_out_intel_reserved_ffwd_144_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_48_regfree_osync_x(GPOUT,382)
    assign out_intel_reserved_ffwd_144_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code147_emscripten_compute_dom_pk_code153_out_intel_reserved_ffwd_144_0;

    // valid_fanout_reg147(REG,641)@2 + 1
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

    // redist145_sync_together331_aunroll_x_in_c1_eni1_146_tpl_1(DELAY,800)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_sync_together331_aunroll_x_in_c1_eni1_146_tpl_1_q <= '0;
        end
        else
        begin
            redist145_sync_together331_aunroll_x_in_c1_eni1_146_tpl_1_q <= $unsigned(in_c1_eni1_146_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code148_emscripten_compute_dom_pk_code154(BLACKBOX,220)@3
    // out out_intel_reserved_ffwd_145_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000058Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code148_emscripten_compute_dom_pk_code154 (
        .in_predicate_in(GND_q),
        .in_src_data_in_145_0(redist145_sync_together331_aunroll_x_in_c1_eni1_146_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg147_q),
        .out_intel_reserved_ffwd_145_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code148_emscripten_compute_dom_pk_code154_out_intel_reserved_ffwd_145_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_49_regfree_osync_x(GPOUT,383)
    assign out_intel_reserved_ffwd_145_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code148_emscripten_compute_dom_pk_code154_out_intel_reserved_ffwd_145_0;

    // valid_fanout_reg148(REG,642)@2 + 1
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

    // redist146_sync_together331_aunroll_x_in_c1_eni1_147_tpl_1(DELAY,801)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist146_sync_together331_aunroll_x_in_c1_eni1_147_tpl_1_q <= '0;
        end
        else
        begin
            redist146_sync_together331_aunroll_x_in_c1_eni1_147_tpl_1_q <= $unsigned(in_c1_eni1_147_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code149_emscripten_compute_dom_pk_code155(BLACKBOX,221)@3
    // out out_intel_reserved_ffwd_146_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000059Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code149_emscripten_compute_dom_pk_code155 (
        .in_predicate_in(GND_q),
        .in_src_data_in_146_0(redist146_sync_together331_aunroll_x_in_c1_eni1_147_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg148_q),
        .out_intel_reserved_ffwd_146_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code149_emscripten_compute_dom_pk_code155_out_intel_reserved_ffwd_146_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_50_regfree_osync_x(GPOUT,384)
    assign out_intel_reserved_ffwd_146_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code149_emscripten_compute_dom_pk_code155_out_intel_reserved_ffwd_146_0;

    // valid_fanout_reg149(REG,643)@2 + 1
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

    // redist147_sync_together331_aunroll_x_in_c1_eni1_148_tpl_1(DELAY,802)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_sync_together331_aunroll_x_in_c1_eni1_148_tpl_1_q <= '0;
        end
        else
        begin
            redist147_sync_together331_aunroll_x_in_c1_eni1_148_tpl_1_q <= $unsigned(in_c1_eni1_148_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code150_emscripten_compute_dom_pk_code156(BLACKBOX,223)@3
    // out out_intel_reserved_ffwd_147_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000061Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code150_emscripten_compute_dom_pk_code156 (
        .in_predicate_in(GND_q),
        .in_src_data_in_147_0(redist147_sync_together331_aunroll_x_in_c1_eni1_148_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg149_q),
        .out_intel_reserved_ffwd_147_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code150_emscripten_compute_dom_pk_code156_out_intel_reserved_ffwd_147_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_51_regfree_osync_x(GPOUT,385)
    assign out_intel_reserved_ffwd_147_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code150_emscripten_compute_dom_pk_code156_out_intel_reserved_ffwd_147_0;

    // valid_fanout_reg150(REG,644)@2 + 1
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

    // redist148_sync_together331_aunroll_x_in_c1_eni1_149_tpl_1(DELAY,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist148_sync_together331_aunroll_x_in_c1_eni1_149_tpl_1_q <= '0;
        end
        else
        begin
            redist148_sync_together331_aunroll_x_in_c1_eni1_149_tpl_1_q <= $unsigned(in_c1_eni1_149_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code151_emscripten_compute_dom_pk_code157(BLACKBOX,224)@3
    // out out_intel_reserved_ffwd_148_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000062Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code151_emscripten_compute_dom_pk_code157 (
        .in_predicate_in(GND_q),
        .in_src_data_in_148_0(redist148_sync_together331_aunroll_x_in_c1_eni1_149_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg150_q),
        .out_intel_reserved_ffwd_148_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code151_emscripten_compute_dom_pk_code157_out_intel_reserved_ffwd_148_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_52_regfree_osync_x(GPOUT,386)
    assign out_intel_reserved_ffwd_148_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code151_emscripten_compute_dom_pk_code157_out_intel_reserved_ffwd_148_0;

    // valid_fanout_reg151(REG,645)@2 + 1
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

    // redist149_sync_together331_aunroll_x_in_c1_eni1_150_tpl_1(DELAY,804)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist149_sync_together331_aunroll_x_in_c1_eni1_150_tpl_1_q <= '0;
        end
        else
        begin
            redist149_sync_together331_aunroll_x_in_c1_eni1_150_tpl_1_q <= $unsigned(in_c1_eni1_150_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code152_emscripten_compute_dom_pk_code158(BLACKBOX,225)@3
    // out out_intel_reserved_ffwd_149_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000063Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code152_emscripten_compute_dom_pk_code158 (
        .in_predicate_in(GND_q),
        .in_src_data_in_149_0(redist149_sync_together331_aunroll_x_in_c1_eni1_150_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg151_q),
        .out_intel_reserved_ffwd_149_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code152_emscripten_compute_dom_pk_code158_out_intel_reserved_ffwd_149_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_53_regfree_osync_x(GPOUT,387)
    assign out_intel_reserved_ffwd_149_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code152_emscripten_compute_dom_pk_code158_out_intel_reserved_ffwd_149_0;

    // valid_fanout_reg16(REG,510)@2 + 1
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

    // redist14_sync_together331_aunroll_x_in_c1_eni1_15_tpl_1(DELAY,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together331_aunroll_x_in_c1_eni1_15_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together331_aunroll_x_in_c1_eni1_15_tpl_1_q <= $unsigned(in_c1_eni1_15_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code17_emscripten_compute_dom_pk_code23(BLACKBOX,233)@3
    // out out_intel_reserved_ffwd_14_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000071Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code17_emscripten_compute_dom_pk_code23 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(redist14_sync_together331_aunroll_x_in_c1_eni1_15_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code17_emscripten_compute_dom_pk_code23_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_54_regfree_osync_x(GPOUT,388)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code17_emscripten_compute_dom_pk_code23_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg152(REG,646)@2 + 1
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

    // redist150_sync_together331_aunroll_x_in_c1_eni1_151_tpl_1(DELAY,805)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist150_sync_together331_aunroll_x_in_c1_eni1_151_tpl_1_q <= '0;
        end
        else
        begin
            redist150_sync_together331_aunroll_x_in_c1_eni1_151_tpl_1_q <= $unsigned(in_c1_eni1_151_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code153_emscripten_compute_dom_pk_code159(BLACKBOX,226)@3
    // out out_intel_reserved_ffwd_150_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000064Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code153_emscripten_compute_dom_pk_code159 (
        .in_predicate_in(GND_q),
        .in_src_data_in_150_0(redist150_sync_together331_aunroll_x_in_c1_eni1_151_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg152_q),
        .out_intel_reserved_ffwd_150_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code153_emscripten_compute_dom_pk_code159_out_intel_reserved_ffwd_150_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_55_regfree_osync_x(GPOUT,389)
    assign out_intel_reserved_ffwd_150_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code153_emscripten_compute_dom_pk_code159_out_intel_reserved_ffwd_150_0;

    // valid_fanout_reg153(REG,647)@2 + 1
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

    // redist151_sync_together331_aunroll_x_in_c1_eni1_152_tpl_1(DELAY,806)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist151_sync_together331_aunroll_x_in_c1_eni1_152_tpl_1_q <= '0;
        end
        else
        begin
            redist151_sync_together331_aunroll_x_in_c1_eni1_152_tpl_1_q <= $unsigned(in_c1_eni1_152_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code154_emscripten_compute_dom_pk_code160(BLACKBOX,227)@3
    // out out_intel_reserved_ffwd_151_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000065Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code154_emscripten_compute_dom_pk_code160 (
        .in_predicate_in(GND_q),
        .in_src_data_in_151_0(redist151_sync_together331_aunroll_x_in_c1_eni1_152_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg153_q),
        .out_intel_reserved_ffwd_151_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code154_emscripten_compute_dom_pk_code160_out_intel_reserved_ffwd_151_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_56_regfree_osync_x(GPOUT,390)
    assign out_intel_reserved_ffwd_151_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code154_emscripten_compute_dom_pk_code160_out_intel_reserved_ffwd_151_0;

    // valid_fanout_reg154(REG,648)@2 + 1
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

    // redist152_sync_together331_aunroll_x_in_c1_eni1_153_tpl_1(DELAY,807)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist152_sync_together331_aunroll_x_in_c1_eni1_153_tpl_1_q <= '0;
        end
        else
        begin
            redist152_sync_together331_aunroll_x_in_c1_eni1_153_tpl_1_q <= $unsigned(in_c1_eni1_153_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code155_emscripten_compute_dom_pk_code161(BLACKBOX,228)@3
    // out out_intel_reserved_ffwd_152_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000066Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code155_emscripten_compute_dom_pk_code161 (
        .in_predicate_in(GND_q),
        .in_src_data_in_152_0(redist152_sync_together331_aunroll_x_in_c1_eni1_153_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg154_q),
        .out_intel_reserved_ffwd_152_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code155_emscripten_compute_dom_pk_code161_out_intel_reserved_ffwd_152_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_57_regfree_osync_x(GPOUT,391)
    assign out_intel_reserved_ffwd_152_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code155_emscripten_compute_dom_pk_code161_out_intel_reserved_ffwd_152_0;

    // valid_fanout_reg155(REG,649)@2 + 1
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

    // redist153_sync_together331_aunroll_x_in_c1_eni1_154_tpl_1(DELAY,808)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist153_sync_together331_aunroll_x_in_c1_eni1_154_tpl_1_q <= '0;
        end
        else
        begin
            redist153_sync_together331_aunroll_x_in_c1_eni1_154_tpl_1_q <= $unsigned(in_c1_eni1_154_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code156_emscripten_compute_dom_pk_code162(BLACKBOX,229)@3
    // out out_intel_reserved_ffwd_153_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000067Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code156_emscripten_compute_dom_pk_code162 (
        .in_predicate_in(GND_q),
        .in_src_data_in_153_0(redist153_sync_together331_aunroll_x_in_c1_eni1_154_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg155_q),
        .out_intel_reserved_ffwd_153_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code156_emscripten_compute_dom_pk_code162_out_intel_reserved_ffwd_153_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_58_regfree_osync_x(GPOUT,392)
    assign out_intel_reserved_ffwd_153_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code156_emscripten_compute_dom_pk_code162_out_intel_reserved_ffwd_153_0;

    // valid_fanout_reg156(REG,650)@2 + 1
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

    // redist154_sync_together331_aunroll_x_in_c1_eni1_155_tpl_1(DELAY,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist154_sync_together331_aunroll_x_in_c1_eni1_155_tpl_1_q <= '0;
        end
        else
        begin
            redist154_sync_together331_aunroll_x_in_c1_eni1_155_tpl_1_q <= $unsigned(in_c1_eni1_155_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code157_emscripten_compute_dom_pk_code163(BLACKBOX,230)@3
    // out out_intel_reserved_ffwd_154_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000068Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code157_emscripten_compute_dom_pk_code163 (
        .in_predicate_in(GND_q),
        .in_src_data_in_154_0(redist154_sync_together331_aunroll_x_in_c1_eni1_155_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg156_q),
        .out_intel_reserved_ffwd_154_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code157_emscripten_compute_dom_pk_code163_out_intel_reserved_ffwd_154_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_59_regfree_osync_x(GPOUT,393)
    assign out_intel_reserved_ffwd_154_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code157_emscripten_compute_dom_pk_code163_out_intel_reserved_ffwd_154_0;

    // redist155_sync_together331_aunroll_x_in_i_valid_8(DELAY,810)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist155_sync_together331_aunroll_x_in_i_valid_8 ( .xin(in_i_valid), .xout(redist155_sync_together331_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg157(REG,651)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg157_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg157_q <= $unsigned(redist155_sync_together331_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist156_i_tobool_emscripten_compute_dom_pk_code3_q_8(DELAY,811)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist156_i_tobool_emscripten_compute_dom_pk_code3_q_8 ( .xin(i_tobool_emscripten_compute_dom_pk_code3_q), .xout(redist156_i_tobool_emscripten_compute_dom_pk_code3_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code158_emscripten_compute_dom_pk_code164(BLACKBOX,164)@11
    // out out_intel_reserved_ffwd_155_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000002Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code158_emscripten_compute_dom_pk_code164 (
        .in_predicate_in(GND_q),
        .in_src_data_in_155_0(redist156_i_tobool_emscripten_compute_dom_pk_code3_q_8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg157_q),
        .out_intel_reserved_ffwd_155_0(i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code158_emscripten_compute_dom_pk_code164_out_intel_reserved_ffwd_155_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_60_regfree_osync_x(GPOUT,394)
    assign out_intel_reserved_ffwd_155_0 = i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code158_emscripten_compute_dom_pk_code164_out_intel_reserved_ffwd_155_0;

    // valid_fanout_reg158(REG,652)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg158_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg158_q <= $unsigned(redist155_sync_together331_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_emscripten_compute_dom_pk_code159_emscripten_compute_dom_pk_code165(BLACKBOX,167)@11
    // out out_intel_reserved_ffwd_156_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000005Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_i8_unnamed_emscripten_compute_dom_pk_code159_emscripten_compute_dom_pk_code165 (
        .in_predicate_in(GND_q),
        .in_src_data_in_156_0(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg158_q),
        .out_intel_reserved_ffwd_156_0(i_llvm_fpga_ffwd_source_i8_unnamed_emscripten_compute_dom_pk_code159_emscripten_compute_dom_pk_code165_out_intel_reserved_ffwd_156_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_61_regfree_osync_x(GPOUT,395)
    assign out_intel_reserved_ffwd_156_0 = i_llvm_fpga_ffwd_source_i8_unnamed_emscripten_compute_dom_pk_code159_emscripten_compute_dom_pk_code165_out_intel_reserved_ffwd_156_0;

    // valid_fanout_reg159(REG,653)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg159_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg159_q <= $unsigned(redist155_sync_together331_aunroll_x_in_i_valid_8_q);
        end
    end

    // c_i8_0329_recast_x(CONSTANT,332)
    assign c_i8_0329_recast_x_q = $unsigned(8'b00000000);

    // i_tobool14_emscripten_compute_dom_pk_code6(LOGICAL,324)@11
    assign i_tobool14_emscripten_compute_dom_pk_code6_q = $unsigned(i_llvm_fpga_mem_lm58771_emscripten_compute_dom_pk_code5_out_o_readdata == c_i8_0329_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code160_emscripten_compute_dom_pk_code166(BLACKBOX,165)@11
    // out out_intel_reserved_ffwd_157_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000003Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code160_emscripten_compute_dom_pk_code166 (
        .in_predicate_in(GND_q),
        .in_src_data_in_157_0(i_tobool14_emscripten_compute_dom_pk_code6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg159_q),
        .out_intel_reserved_ffwd_157_0(i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code160_emscripten_compute_dom_pk_code166_out_intel_reserved_ffwd_157_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_62_regfree_osync_x(GPOUT,396)
    assign out_intel_reserved_ffwd_157_0 = i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code160_emscripten_compute_dom_pk_code166_out_intel_reserved_ffwd_157_0;

    // valid_fanout_reg160(REG,654)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg160_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg160_q <= $unsigned(redist155_sync_together331_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_unnamed_emscripten_compute_dom_pk_code8(LOGICAL,326)@11
    assign i_unnamed_emscripten_compute_dom_pk_code8_q = redist156_i_tobool_emscripten_compute_dom_pk_code3_q_8_q | i_tobool14_emscripten_compute_dom_pk_code6_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code161_emscripten_compute_dom_pk_code167(BLACKBOX,166)@11
    // out out_intel_reserved_ffwd_158_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000004Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code161_emscripten_compute_dom_pk_code167 (
        .in_predicate_in(GND_q),
        .in_src_data_in_158_0(i_unnamed_emscripten_compute_dom_pk_code8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg160_q),
        .out_intel_reserved_ffwd_158_0(i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code161_emscripten_compute_dom_pk_code167_out_intel_reserved_ffwd_158_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_63_regfree_osync_x(GPOUT,397)
    assign out_intel_reserved_ffwd_158_0 = i_llvm_fpga_ffwd_source_i1_unnamed_emscripten_compute_dom_pk_code161_emscripten_compute_dom_pk_code167_out_intel_reserved_ffwd_158_0;

    // valid_fanout_reg17(REG,511)@2 + 1
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

    // redist15_sync_together331_aunroll_x_in_c1_eni1_16_tpl_1(DELAY,670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together331_aunroll_x_in_c1_eni1_16_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together331_aunroll_x_in_c1_eni1_16_tpl_1_q <= $unsigned(in_c1_eni1_16_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code18_emscripten_compute_dom_pk_code24(BLACKBOX,234)@3
    // out out_intel_reserved_ffwd_15_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000072Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code18_emscripten_compute_dom_pk_code24 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(redist15_sync_together331_aunroll_x_in_c1_eni1_16_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code18_emscripten_compute_dom_pk_code24_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_64_regfree_osync_x(GPOUT,398)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code18_emscripten_compute_dom_pk_code24_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg18(REG,512)@2 + 1
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

    // redist16_sync_together331_aunroll_x_in_c1_eni1_17_tpl_1(DELAY,671)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together331_aunroll_x_in_c1_eni1_17_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together331_aunroll_x_in_c1_eni1_17_tpl_1_q <= $unsigned(in_c1_eni1_17_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code19_emscripten_compute_dom_pk_code25(BLACKBOX,235)@3
    // out out_intel_reserved_ffwd_16_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000073Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code19_emscripten_compute_dom_pk_code25 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(redist16_sync_together331_aunroll_x_in_c1_eni1_17_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code19_emscripten_compute_dom_pk_code25_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_65_regfree_osync_x(GPOUT,399)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code19_emscripten_compute_dom_pk_code25_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg19(REG,513)@2 + 1
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

    // redist17_sync_together331_aunroll_x_in_c1_eni1_18_tpl_1(DELAY,672)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together331_aunroll_x_in_c1_eni1_18_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together331_aunroll_x_in_c1_eni1_18_tpl_1_q <= $unsigned(in_c1_eni1_18_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code20_emscripten_compute_dom_pk_code26(BLACKBOX,236)@3
    // out out_intel_reserved_ffwd_17_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000074Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code20_emscripten_compute_dom_pk_code26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(redist17_sync_together331_aunroll_x_in_c1_eni1_18_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code20_emscripten_compute_dom_pk_code26_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_66_regfree_osync_x(GPOUT,400)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code20_emscripten_compute_dom_pk_code26_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg20(REG,514)@2 + 1
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

    // redist18_sync_together331_aunroll_x_in_c1_eni1_19_tpl_1(DELAY,673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together331_aunroll_x_in_c1_eni1_19_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together331_aunroll_x_in_c1_eni1_19_tpl_1_q <= $unsigned(in_c1_eni1_19_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code21_emscripten_compute_dom_pk_code27(BLACKBOX,237)@3
    // out out_intel_reserved_ffwd_18_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000075Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code21_emscripten_compute_dom_pk_code27 (
        .in_predicate_in(GND_q),
        .in_src_data_in_18_0(redist18_sync_together331_aunroll_x_in_c1_eni1_19_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code21_emscripten_compute_dom_pk_code27_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_67_regfree_osync_x(GPOUT,401)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code21_emscripten_compute_dom_pk_code27_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg21(REG,515)@2 + 1
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

    // redist19_sync_together331_aunroll_x_in_c1_eni1_20_tpl_1(DELAY,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together331_aunroll_x_in_c1_eni1_20_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together331_aunroll_x_in_c1_eni1_20_tpl_1_q <= $unsigned(in_c1_eni1_20_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code22_emscripten_compute_dom_pk_code28(BLACKBOX,238)@3
    // out out_intel_reserved_ffwd_19_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000076Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code22_emscripten_compute_dom_pk_code28 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(redist19_sync_together331_aunroll_x_in_c1_eni1_20_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code22_emscripten_compute_dom_pk_code28_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_68_regfree_osync_x(GPOUT,402)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code22_emscripten_compute_dom_pk_code28_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg3(REG,497)@2 + 1
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

    // redist1_sync_together331_aunroll_x_in_c1_eni1_2_tpl_1(DELAY,656)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together331_aunroll_x_in_c1_eni1_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together331_aunroll_x_in_c1_eni1_2_tpl_1_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code4_emscripten_compute_dom_pk_code10(BLACKBOX,266)@3
    // out out_intel_reserved_ffwd_1_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000104Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code4_emscripten_compute_dom_pk_code10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist1_sync_together331_aunroll_x_in_c1_eni1_2_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code4_emscripten_compute_dom_pk_code10_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_69_regfree_osync_x(GPOUT,403)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code4_emscripten_compute_dom_pk_code10_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg22(REG,516)@2 + 1
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

    // redist20_sync_together331_aunroll_x_in_c1_eni1_21_tpl_1(DELAY,675)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together331_aunroll_x_in_c1_eni1_21_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together331_aunroll_x_in_c1_eni1_21_tpl_1_q <= $unsigned(in_c1_eni1_21_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code23_emscripten_compute_dom_pk_code29(BLACKBOX,239)@3
    // out out_intel_reserved_ffwd_20_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000077Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code23_emscripten_compute_dom_pk_code29 (
        .in_predicate_in(GND_q),
        .in_src_data_in_20_0(redist20_sync_together331_aunroll_x_in_c1_eni1_21_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code23_emscripten_compute_dom_pk_code29_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_70_regfree_osync_x(GPOUT,404)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code23_emscripten_compute_dom_pk_code29_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg23(REG,517)@2 + 1
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

    // redist21_sync_together331_aunroll_x_in_c1_eni1_22_tpl_1(DELAY,676)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together331_aunroll_x_in_c1_eni1_22_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together331_aunroll_x_in_c1_eni1_22_tpl_1_q <= $unsigned(in_c1_eni1_22_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code24_emscripten_compute_dom_pk_code30(BLACKBOX,240)@3
    // out out_intel_reserved_ffwd_21_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000078Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code24_emscripten_compute_dom_pk_code30 (
        .in_predicate_in(GND_q),
        .in_src_data_in_21_0(redist21_sync_together331_aunroll_x_in_c1_eni1_22_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code24_emscripten_compute_dom_pk_code30_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_71_regfree_osync_x(GPOUT,405)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code24_emscripten_compute_dom_pk_code30_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg24(REG,518)@2 + 1
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

    // redist22_sync_together331_aunroll_x_in_c1_eni1_23_tpl_1(DELAY,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together331_aunroll_x_in_c1_eni1_23_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together331_aunroll_x_in_c1_eni1_23_tpl_1_q <= $unsigned(in_c1_eni1_23_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code25_emscripten_compute_dom_pk_code31(BLACKBOX,241)@3
    // out out_intel_reserved_ffwd_22_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000079Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code25_emscripten_compute_dom_pk_code31 (
        .in_predicate_in(GND_q),
        .in_src_data_in_22_0(redist22_sync_together331_aunroll_x_in_c1_eni1_23_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code25_emscripten_compute_dom_pk_code31_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_72_regfree_osync_x(GPOUT,406)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code25_emscripten_compute_dom_pk_code31_out_intel_reserved_ffwd_22_0;

    // valid_fanout_reg25(REG,519)@2 + 1
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

    // redist23_sync_together331_aunroll_x_in_c1_eni1_24_tpl_1(DELAY,678)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together331_aunroll_x_in_c1_eni1_24_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together331_aunroll_x_in_c1_eni1_24_tpl_1_q <= $unsigned(in_c1_eni1_24_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code26_emscripten_compute_dom_pk_code32(BLACKBOX,242)@3
    // out out_intel_reserved_ffwd_23_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000080Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code26_emscripten_compute_dom_pk_code32 (
        .in_predicate_in(GND_q),
        .in_src_data_in_23_0(redist23_sync_together331_aunroll_x_in_c1_eni1_24_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code26_emscripten_compute_dom_pk_code32_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_73_regfree_osync_x(GPOUT,407)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code26_emscripten_compute_dom_pk_code32_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg26(REG,520)@2 + 1
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

    // redist24_sync_together331_aunroll_x_in_c1_eni1_25_tpl_1(DELAY,679)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together331_aunroll_x_in_c1_eni1_25_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together331_aunroll_x_in_c1_eni1_25_tpl_1_q <= $unsigned(in_c1_eni1_25_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code27_emscripten_compute_dom_pk_code33(BLACKBOX,243)@3
    // out out_intel_reserved_ffwd_24_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000081Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code27_emscripten_compute_dom_pk_code33 (
        .in_predicate_in(GND_q),
        .in_src_data_in_24_0(redist24_sync_together331_aunroll_x_in_c1_eni1_25_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code27_emscripten_compute_dom_pk_code33_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_74_regfree_osync_x(GPOUT,408)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code27_emscripten_compute_dom_pk_code33_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg27(REG,521)@2 + 1
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

    // redist25_sync_together331_aunroll_x_in_c1_eni1_26_tpl_1(DELAY,680)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together331_aunroll_x_in_c1_eni1_26_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together331_aunroll_x_in_c1_eni1_26_tpl_1_q <= $unsigned(in_c1_eni1_26_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code28_emscripten_compute_dom_pk_code34(BLACKBOX,244)@3
    // out out_intel_reserved_ffwd_25_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000082Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code28_emscripten_compute_dom_pk_code34 (
        .in_predicate_in(GND_q),
        .in_src_data_in_25_0(redist25_sync_together331_aunroll_x_in_c1_eni1_26_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code28_emscripten_compute_dom_pk_code34_out_intel_reserved_ffwd_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_75_regfree_osync_x(GPOUT,409)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code28_emscripten_compute_dom_pk_code34_out_intel_reserved_ffwd_25_0;

    // valid_fanout_reg28(REG,522)@2 + 1
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

    // redist26_sync_together331_aunroll_x_in_c1_eni1_27_tpl_1(DELAY,681)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together331_aunroll_x_in_c1_eni1_27_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together331_aunroll_x_in_c1_eni1_27_tpl_1_q <= $unsigned(in_c1_eni1_27_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code29_emscripten_compute_dom_pk_code35(BLACKBOX,245)@3
    // out out_intel_reserved_ffwd_26_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000083Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code29_emscripten_compute_dom_pk_code35 (
        .in_predicate_in(GND_q),
        .in_src_data_in_26_0(redist26_sync_together331_aunroll_x_in_c1_eni1_27_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code29_emscripten_compute_dom_pk_code35_out_intel_reserved_ffwd_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_76_regfree_osync_x(GPOUT,410)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code29_emscripten_compute_dom_pk_code35_out_intel_reserved_ffwd_26_0;

    // valid_fanout_reg29(REG,523)@2 + 1
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

    // redist27_sync_together331_aunroll_x_in_c1_eni1_28_tpl_1(DELAY,682)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together331_aunroll_x_in_c1_eni1_28_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together331_aunroll_x_in_c1_eni1_28_tpl_1_q <= $unsigned(in_c1_eni1_28_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code30_emscripten_compute_dom_pk_code36(BLACKBOX,246)@3
    // out out_intel_reserved_ffwd_27_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000084Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code30_emscripten_compute_dom_pk_code36 (
        .in_predicate_in(GND_q),
        .in_src_data_in_27_0(redist27_sync_together331_aunroll_x_in_c1_eni1_28_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code30_emscripten_compute_dom_pk_code36_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_77_regfree_osync_x(GPOUT,411)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code30_emscripten_compute_dom_pk_code36_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg30(REG,524)@2 + 1
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

    // redist28_sync_together331_aunroll_x_in_c1_eni1_29_tpl_1(DELAY,683)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together331_aunroll_x_in_c1_eni1_29_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together331_aunroll_x_in_c1_eni1_29_tpl_1_q <= $unsigned(in_c1_eni1_29_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code31_emscripten_compute_dom_pk_code37(BLACKBOX,247)@3
    // out out_intel_reserved_ffwd_28_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000085Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code31_emscripten_compute_dom_pk_code37 (
        .in_predicate_in(GND_q),
        .in_src_data_in_28_0(redist28_sync_together331_aunroll_x_in_c1_eni1_29_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code31_emscripten_compute_dom_pk_code37_out_intel_reserved_ffwd_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_78_regfree_osync_x(GPOUT,412)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code31_emscripten_compute_dom_pk_code37_out_intel_reserved_ffwd_28_0;

    // valid_fanout_reg31(REG,525)@2 + 1
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

    // redist29_sync_together331_aunroll_x_in_c1_eni1_30_tpl_1(DELAY,684)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together331_aunroll_x_in_c1_eni1_30_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together331_aunroll_x_in_c1_eni1_30_tpl_1_q <= $unsigned(in_c1_eni1_30_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code32_emscripten_compute_dom_pk_code38(BLACKBOX,248)@3
    // out out_intel_reserved_ffwd_29_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000086Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code32_emscripten_compute_dom_pk_code38 (
        .in_predicate_in(GND_q),
        .in_src_data_in_29_0(redist29_sync_together331_aunroll_x_in_c1_eni1_30_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code32_emscripten_compute_dom_pk_code38_out_intel_reserved_ffwd_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_79_regfree_osync_x(GPOUT,413)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code32_emscripten_compute_dom_pk_code38_out_intel_reserved_ffwd_29_0;

    // valid_fanout_reg4(REG,498)@2 + 1
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

    // redist2_sync_together331_aunroll_x_in_c1_eni1_3_tpl_1(DELAY,657)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together331_aunroll_x_in_c1_eni1_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together331_aunroll_x_in_c1_eni1_3_tpl_1_q <= $unsigned(in_c1_eni1_3_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code5_emscripten_compute_dom_pk_code11(BLACKBOX,277)@3
    // out out_intel_reserved_ffwd_2_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000115Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code5_emscripten_compute_dom_pk_code11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist2_sync_together331_aunroll_x_in_c1_eni1_3_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code5_emscripten_compute_dom_pk_code11_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_80_regfree_osync_x(GPOUT,414)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code5_emscripten_compute_dom_pk_code11_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg32(REG,526)@2 + 1
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

    // redist30_sync_together331_aunroll_x_in_c1_eni1_31_tpl_1(DELAY,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together331_aunroll_x_in_c1_eni1_31_tpl_1_q <= '0;
        end
        else
        begin
            redist30_sync_together331_aunroll_x_in_c1_eni1_31_tpl_1_q <= $unsigned(in_c1_eni1_31_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code33_emscripten_compute_dom_pk_code39(BLACKBOX,249)@3
    // out out_intel_reserved_ffwd_30_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000087Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code33_emscripten_compute_dom_pk_code39 (
        .in_predicate_in(GND_q),
        .in_src_data_in_30_0(redist30_sync_together331_aunroll_x_in_c1_eni1_31_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code33_emscripten_compute_dom_pk_code39_out_intel_reserved_ffwd_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_81_regfree_osync_x(GPOUT,415)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code33_emscripten_compute_dom_pk_code39_out_intel_reserved_ffwd_30_0;

    // valid_fanout_reg33(REG,527)@2 + 1
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

    // redist31_sync_together331_aunroll_x_in_c1_eni1_32_tpl_1(DELAY,686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together331_aunroll_x_in_c1_eni1_32_tpl_1_q <= '0;
        end
        else
        begin
            redist31_sync_together331_aunroll_x_in_c1_eni1_32_tpl_1_q <= $unsigned(in_c1_eni1_32_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code34_emscripten_compute_dom_pk_code40(BLACKBOX,250)@3
    // out out_intel_reserved_ffwd_31_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000088Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code34_emscripten_compute_dom_pk_code40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_31_0(redist31_sync_together331_aunroll_x_in_c1_eni1_32_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code34_emscripten_compute_dom_pk_code40_out_intel_reserved_ffwd_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_82_regfree_osync_x(GPOUT,416)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code34_emscripten_compute_dom_pk_code40_out_intel_reserved_ffwd_31_0;

    // valid_fanout_reg34(REG,528)@2 + 1
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

    // redist32_sync_together331_aunroll_x_in_c1_eni1_33_tpl_1(DELAY,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together331_aunroll_x_in_c1_eni1_33_tpl_1_q <= '0;
        end
        else
        begin
            redist32_sync_together331_aunroll_x_in_c1_eni1_33_tpl_1_q <= $unsigned(in_c1_eni1_33_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code35_emscripten_compute_dom_pk_code41(BLACKBOX,251)@3
    // out out_intel_reserved_ffwd_32_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000089Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code35_emscripten_compute_dom_pk_code41 (
        .in_predicate_in(GND_q),
        .in_src_data_in_32_0(redist32_sync_together331_aunroll_x_in_c1_eni1_33_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code35_emscripten_compute_dom_pk_code41_out_intel_reserved_ffwd_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_83_regfree_osync_x(GPOUT,417)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code35_emscripten_compute_dom_pk_code41_out_intel_reserved_ffwd_32_0;

    // valid_fanout_reg35(REG,529)@2 + 1
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

    // redist33_sync_together331_aunroll_x_in_c1_eni1_34_tpl_1(DELAY,688)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together331_aunroll_x_in_c1_eni1_34_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together331_aunroll_x_in_c1_eni1_34_tpl_1_q <= $unsigned(in_c1_eni1_34_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code36_emscripten_compute_dom_pk_code42(BLACKBOX,252)@3
    // out out_intel_reserved_ffwd_33_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000090Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code36_emscripten_compute_dom_pk_code42 (
        .in_predicate_in(GND_q),
        .in_src_data_in_33_0(redist33_sync_together331_aunroll_x_in_c1_eni1_34_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code36_emscripten_compute_dom_pk_code42_out_intel_reserved_ffwd_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_84_regfree_osync_x(GPOUT,418)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code36_emscripten_compute_dom_pk_code42_out_intel_reserved_ffwd_33_0;

    // valid_fanout_reg36(REG,530)@2 + 1
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

    // redist34_sync_together331_aunroll_x_in_c1_eni1_35_tpl_1(DELAY,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together331_aunroll_x_in_c1_eni1_35_tpl_1_q <= '0;
        end
        else
        begin
            redist34_sync_together331_aunroll_x_in_c1_eni1_35_tpl_1_q <= $unsigned(in_c1_eni1_35_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code37_emscripten_compute_dom_pk_code43(BLACKBOX,253)@3
    // out out_intel_reserved_ffwd_34_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000091Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code37_emscripten_compute_dom_pk_code43 (
        .in_predicate_in(GND_q),
        .in_src_data_in_34_0(redist34_sync_together331_aunroll_x_in_c1_eni1_35_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code37_emscripten_compute_dom_pk_code43_out_intel_reserved_ffwd_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_85_regfree_osync_x(GPOUT,419)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code37_emscripten_compute_dom_pk_code43_out_intel_reserved_ffwd_34_0;

    // valid_fanout_reg37(REG,531)@2 + 1
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

    // redist35_sync_together331_aunroll_x_in_c1_eni1_36_tpl_1(DELAY,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together331_aunroll_x_in_c1_eni1_36_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together331_aunroll_x_in_c1_eni1_36_tpl_1_q <= $unsigned(in_c1_eni1_36_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code38_emscripten_compute_dom_pk_code44(BLACKBOX,254)@3
    // out out_intel_reserved_ffwd_35_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000092Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code38_emscripten_compute_dom_pk_code44 (
        .in_predicate_in(GND_q),
        .in_src_data_in_35_0(redist35_sync_together331_aunroll_x_in_c1_eni1_36_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code38_emscripten_compute_dom_pk_code44_out_intel_reserved_ffwd_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_86_regfree_osync_x(GPOUT,420)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code38_emscripten_compute_dom_pk_code44_out_intel_reserved_ffwd_35_0;

    // valid_fanout_reg38(REG,532)@2 + 1
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

    // redist36_sync_together331_aunroll_x_in_c1_eni1_37_tpl_1(DELAY,691)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together331_aunroll_x_in_c1_eni1_37_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together331_aunroll_x_in_c1_eni1_37_tpl_1_q <= $unsigned(in_c1_eni1_37_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code39_emscripten_compute_dom_pk_code45(BLACKBOX,255)@3
    // out out_intel_reserved_ffwd_36_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000093Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code39_emscripten_compute_dom_pk_code45 (
        .in_predicate_in(GND_q),
        .in_src_data_in_36_0(redist36_sync_together331_aunroll_x_in_c1_eni1_37_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code39_emscripten_compute_dom_pk_code45_out_intel_reserved_ffwd_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_87_regfree_osync_x(GPOUT,421)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code39_emscripten_compute_dom_pk_code45_out_intel_reserved_ffwd_36_0;

    // valid_fanout_reg39(REG,533)@2 + 1
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

    // redist37_sync_together331_aunroll_x_in_c1_eni1_38_tpl_1(DELAY,692)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together331_aunroll_x_in_c1_eni1_38_tpl_1_q <= '0;
        end
        else
        begin
            redist37_sync_together331_aunroll_x_in_c1_eni1_38_tpl_1_q <= $unsigned(in_c1_eni1_38_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code40_emscripten_compute_dom_pk_code46(BLACKBOX,256)@3
    // out out_intel_reserved_ffwd_37_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000094Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code40_emscripten_compute_dom_pk_code46 (
        .in_predicate_in(GND_q),
        .in_src_data_in_37_0(redist37_sync_together331_aunroll_x_in_c1_eni1_38_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code40_emscripten_compute_dom_pk_code46_out_intel_reserved_ffwd_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_88_regfree_osync_x(GPOUT,422)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code40_emscripten_compute_dom_pk_code46_out_intel_reserved_ffwd_37_0;

    // valid_fanout_reg40(REG,534)@2 + 1
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

    // redist38_sync_together331_aunroll_x_in_c1_eni1_39_tpl_1(DELAY,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together331_aunroll_x_in_c1_eni1_39_tpl_1_q <= '0;
        end
        else
        begin
            redist38_sync_together331_aunroll_x_in_c1_eni1_39_tpl_1_q <= $unsigned(in_c1_eni1_39_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code41_emscripten_compute_dom_pk_code47(BLACKBOX,257)@3
    // out out_intel_reserved_ffwd_38_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000095Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code41_emscripten_compute_dom_pk_code47 (
        .in_predicate_in(GND_q),
        .in_src_data_in_38_0(redist38_sync_together331_aunroll_x_in_c1_eni1_39_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code41_emscripten_compute_dom_pk_code47_out_intel_reserved_ffwd_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_89_regfree_osync_x(GPOUT,423)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code41_emscripten_compute_dom_pk_code47_out_intel_reserved_ffwd_38_0;

    // valid_fanout_reg41(REG,535)@2 + 1
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

    // redist39_sync_together331_aunroll_x_in_c1_eni1_40_tpl_1(DELAY,694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together331_aunroll_x_in_c1_eni1_40_tpl_1_q <= '0;
        end
        else
        begin
            redist39_sync_together331_aunroll_x_in_c1_eni1_40_tpl_1_q <= $unsigned(in_c1_eni1_40_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code42_emscripten_compute_dom_pk_code48(BLACKBOX,258)@3
    // out out_intel_reserved_ffwd_39_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000096Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code42_emscripten_compute_dom_pk_code48 (
        .in_predicate_in(GND_q),
        .in_src_data_in_39_0(redist39_sync_together331_aunroll_x_in_c1_eni1_40_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code42_emscripten_compute_dom_pk_code48_out_intel_reserved_ffwd_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_90_regfree_osync_x(GPOUT,424)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code42_emscripten_compute_dom_pk_code48_out_intel_reserved_ffwd_39_0;

    // valid_fanout_reg5(REG,499)@2 + 1
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

    // redist3_sync_together331_aunroll_x_in_c1_eni1_4_tpl_1(DELAY,658)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together331_aunroll_x_in_c1_eni1_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together331_aunroll_x_in_c1_eni1_4_tpl_1_q <= $unsigned(in_c1_eni1_4_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code6_emscripten_compute_dom_pk_code12(BLACKBOX,288)@3
    // out out_intel_reserved_ffwd_3_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000126Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code6_emscripten_compute_dom_pk_code12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(redist3_sync_together331_aunroll_x_in_c1_eni1_4_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code6_emscripten_compute_dom_pk_code12_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_91_regfree_osync_x(GPOUT,425)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code6_emscripten_compute_dom_pk_code12_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg42(REG,536)@2 + 1
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

    // redist40_sync_together331_aunroll_x_in_c1_eni1_41_tpl_1(DELAY,695)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together331_aunroll_x_in_c1_eni1_41_tpl_1_q <= '0;
        end
        else
        begin
            redist40_sync_together331_aunroll_x_in_c1_eni1_41_tpl_1_q <= $unsigned(in_c1_eni1_41_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code43_emscripten_compute_dom_pk_code49(BLACKBOX,259)@3
    // out out_intel_reserved_ffwd_40_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000097Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code43_emscripten_compute_dom_pk_code49 (
        .in_predicate_in(GND_q),
        .in_src_data_in_40_0(redist40_sync_together331_aunroll_x_in_c1_eni1_41_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code43_emscripten_compute_dom_pk_code49_out_intel_reserved_ffwd_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_92_regfree_osync_x(GPOUT,426)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code43_emscripten_compute_dom_pk_code49_out_intel_reserved_ffwd_40_0;

    // valid_fanout_reg43(REG,537)@2 + 1
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

    // redist41_sync_together331_aunroll_x_in_c1_eni1_42_tpl_1(DELAY,696)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together331_aunroll_x_in_c1_eni1_42_tpl_1_q <= '0;
        end
        else
        begin
            redist41_sync_together331_aunroll_x_in_c1_eni1_42_tpl_1_q <= $unsigned(in_c1_eni1_42_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code44_emscripten_compute_dom_pk_code50(BLACKBOX,260)@3
    // out out_intel_reserved_ffwd_41_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000098Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code44_emscripten_compute_dom_pk_code50 (
        .in_predicate_in(GND_q),
        .in_src_data_in_41_0(redist41_sync_together331_aunroll_x_in_c1_eni1_42_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code44_emscripten_compute_dom_pk_code50_out_intel_reserved_ffwd_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_93_regfree_osync_x(GPOUT,427)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code44_emscripten_compute_dom_pk_code50_out_intel_reserved_ffwd_41_0;

    // valid_fanout_reg44(REG,538)@2 + 1
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

    // redist42_sync_together331_aunroll_x_in_c1_eni1_43_tpl_1(DELAY,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together331_aunroll_x_in_c1_eni1_43_tpl_1_q <= '0;
        end
        else
        begin
            redist42_sync_together331_aunroll_x_in_c1_eni1_43_tpl_1_q <= $unsigned(in_c1_eni1_43_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code45_emscripten_compute_dom_pk_code51(BLACKBOX,261)@3
    // out out_intel_reserved_ffwd_42_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000099Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code45_emscripten_compute_dom_pk_code51 (
        .in_predicate_in(GND_q),
        .in_src_data_in_42_0(redist42_sync_together331_aunroll_x_in_c1_eni1_43_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_42_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code45_emscripten_compute_dom_pk_code51_out_intel_reserved_ffwd_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_94_regfree_osync_x(GPOUT,428)
    assign out_intel_reserved_ffwd_42_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code45_emscripten_compute_dom_pk_code51_out_intel_reserved_ffwd_42_0;

    // valid_fanout_reg45(REG,539)@2 + 1
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

    // redist43_sync_together331_aunroll_x_in_c1_eni1_44_tpl_1(DELAY,698)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together331_aunroll_x_in_c1_eni1_44_tpl_1_q <= '0;
        end
        else
        begin
            redist43_sync_together331_aunroll_x_in_c1_eni1_44_tpl_1_q <= $unsigned(in_c1_eni1_44_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code46_emscripten_compute_dom_pk_code52(BLACKBOX,262)@3
    // out out_intel_reserved_ffwd_43_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000100Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code46_emscripten_compute_dom_pk_code52 (
        .in_predicate_in(GND_q),
        .in_src_data_in_43_0(redist43_sync_together331_aunroll_x_in_c1_eni1_44_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code46_emscripten_compute_dom_pk_code52_out_intel_reserved_ffwd_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_95_regfree_osync_x(GPOUT,429)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code46_emscripten_compute_dom_pk_code52_out_intel_reserved_ffwd_43_0;

    // valid_fanout_reg46(REG,540)@2 + 1
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

    // redist44_sync_together331_aunroll_x_in_c1_eni1_45_tpl_1(DELAY,699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together331_aunroll_x_in_c1_eni1_45_tpl_1_q <= '0;
        end
        else
        begin
            redist44_sync_together331_aunroll_x_in_c1_eni1_45_tpl_1_q <= $unsigned(in_c1_eni1_45_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code47_emscripten_compute_dom_pk_code53(BLACKBOX,263)@3
    // out out_intel_reserved_ffwd_44_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000101Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code47_emscripten_compute_dom_pk_code53 (
        .in_predicate_in(GND_q),
        .in_src_data_in_44_0(redist44_sync_together331_aunroll_x_in_c1_eni1_45_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code47_emscripten_compute_dom_pk_code53_out_intel_reserved_ffwd_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_96_regfree_osync_x(GPOUT,430)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code47_emscripten_compute_dom_pk_code53_out_intel_reserved_ffwd_44_0;

    // valid_fanout_reg47(REG,541)@2 + 1
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

    // redist45_sync_together331_aunroll_x_in_c1_eni1_46_tpl_1(DELAY,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together331_aunroll_x_in_c1_eni1_46_tpl_1_q <= '0;
        end
        else
        begin
            redist45_sync_together331_aunroll_x_in_c1_eni1_46_tpl_1_q <= $unsigned(in_c1_eni1_46_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code48_emscripten_compute_dom_pk_code54(BLACKBOX,264)@3
    // out out_intel_reserved_ffwd_45_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000102Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code48_emscripten_compute_dom_pk_code54 (
        .in_predicate_in(GND_q),
        .in_src_data_in_45_0(redist45_sync_together331_aunroll_x_in_c1_eni1_46_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_45_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code48_emscripten_compute_dom_pk_code54_out_intel_reserved_ffwd_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_97_regfree_osync_x(GPOUT,431)
    assign out_intel_reserved_ffwd_45_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code48_emscripten_compute_dom_pk_code54_out_intel_reserved_ffwd_45_0;

    // valid_fanout_reg48(REG,542)@2 + 1
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

    // redist46_sync_together331_aunroll_x_in_c1_eni1_47_tpl_1(DELAY,701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together331_aunroll_x_in_c1_eni1_47_tpl_1_q <= '0;
        end
        else
        begin
            redist46_sync_together331_aunroll_x_in_c1_eni1_47_tpl_1_q <= $unsigned(in_c1_eni1_47_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code49_emscripten_compute_dom_pk_code55(BLACKBOX,265)@3
    // out out_intel_reserved_ffwd_46_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000103Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code49_emscripten_compute_dom_pk_code55 (
        .in_predicate_in(GND_q),
        .in_src_data_in_46_0(redist46_sync_together331_aunroll_x_in_c1_eni1_47_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_46_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code49_emscripten_compute_dom_pk_code55_out_intel_reserved_ffwd_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_98_regfree_osync_x(GPOUT,432)
    assign out_intel_reserved_ffwd_46_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code49_emscripten_compute_dom_pk_code55_out_intel_reserved_ffwd_46_0;

    // valid_fanout_reg49(REG,543)@2 + 1
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

    // redist47_sync_together331_aunroll_x_in_c1_eni1_48_tpl_1(DELAY,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together331_aunroll_x_in_c1_eni1_48_tpl_1_q <= '0;
        end
        else
        begin
            redist47_sync_together331_aunroll_x_in_c1_eni1_48_tpl_1_q <= $unsigned(in_c1_eni1_48_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code50_emscripten_compute_dom_pk_code56(BLACKBOX,267)@3
    // out out_intel_reserved_ffwd_47_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000105Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code50_emscripten_compute_dom_pk_code56 (
        .in_predicate_in(GND_q),
        .in_src_data_in_47_0(redist47_sync_together331_aunroll_x_in_c1_eni1_48_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_intel_reserved_ffwd_47_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code50_emscripten_compute_dom_pk_code56_out_intel_reserved_ffwd_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_99_regfree_osync_x(GPOUT,433)
    assign out_intel_reserved_ffwd_47_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code50_emscripten_compute_dom_pk_code56_out_intel_reserved_ffwd_47_0;

    // valid_fanout_reg50(REG,544)@2 + 1
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

    // redist48_sync_together331_aunroll_x_in_c1_eni1_49_tpl_1(DELAY,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together331_aunroll_x_in_c1_eni1_49_tpl_1_q <= '0;
        end
        else
        begin
            redist48_sync_together331_aunroll_x_in_c1_eni1_49_tpl_1_q <= $unsigned(in_c1_eni1_49_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code51_emscripten_compute_dom_pk_code57(BLACKBOX,268)@3
    // out out_intel_reserved_ffwd_48_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000106Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code51_emscripten_compute_dom_pk_code57 (
        .in_predicate_in(GND_q),
        .in_src_data_in_48_0(redist48_sync_together331_aunroll_x_in_c1_eni1_49_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_intel_reserved_ffwd_48_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code51_emscripten_compute_dom_pk_code57_out_intel_reserved_ffwd_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_100_regfree_osync_x(GPOUT,434)
    assign out_intel_reserved_ffwd_48_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code51_emscripten_compute_dom_pk_code57_out_intel_reserved_ffwd_48_0;

    // valid_fanout_reg51(REG,545)@2 + 1
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

    // redist49_sync_together331_aunroll_x_in_c1_eni1_50_tpl_1(DELAY,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together331_aunroll_x_in_c1_eni1_50_tpl_1_q <= '0;
        end
        else
        begin
            redist49_sync_together331_aunroll_x_in_c1_eni1_50_tpl_1_q <= $unsigned(in_c1_eni1_50_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code52_emscripten_compute_dom_pk_code58(BLACKBOX,269)@3
    // out out_intel_reserved_ffwd_49_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000107Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code52_emscripten_compute_dom_pk_code58 (
        .in_predicate_in(GND_q),
        .in_src_data_in_49_0(redist49_sync_together331_aunroll_x_in_c1_eni1_50_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_intel_reserved_ffwd_49_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code52_emscripten_compute_dom_pk_code58_out_intel_reserved_ffwd_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_101_regfree_osync_x(GPOUT,435)
    assign out_intel_reserved_ffwd_49_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code52_emscripten_compute_dom_pk_code58_out_intel_reserved_ffwd_49_0;

    // valid_fanout_reg6(REG,500)@2 + 1
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

    // redist4_sync_together331_aunroll_x_in_c1_eni1_5_tpl_1(DELAY,659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together331_aunroll_x_in_c1_eni1_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together331_aunroll_x_in_c1_eni1_5_tpl_1_q <= $unsigned(in_c1_eni1_5_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code7_emscripten_compute_dom_pk_code13(BLACKBOX,299)@3
    // out out_intel_reserved_ffwd_4_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000137Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code7_emscripten_compute_dom_pk_code13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(redist4_sync_together331_aunroll_x_in_c1_eni1_5_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code7_emscripten_compute_dom_pk_code13_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_102_regfree_osync_x(GPOUT,436)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code7_emscripten_compute_dom_pk_code13_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg52(REG,546)@2 + 1
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

    // redist50_sync_together331_aunroll_x_in_c1_eni1_51_tpl_1(DELAY,705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together331_aunroll_x_in_c1_eni1_51_tpl_1_q <= '0;
        end
        else
        begin
            redist50_sync_together331_aunroll_x_in_c1_eni1_51_tpl_1_q <= $unsigned(in_c1_eni1_51_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code53_emscripten_compute_dom_pk_code59(BLACKBOX,270)@3
    // out out_intel_reserved_ffwd_50_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000108Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code53_emscripten_compute_dom_pk_code59 (
        .in_predicate_in(GND_q),
        .in_src_data_in_50_0(redist50_sync_together331_aunroll_x_in_c1_eni1_51_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_intel_reserved_ffwd_50_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code53_emscripten_compute_dom_pk_code59_out_intel_reserved_ffwd_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_103_regfree_osync_x(GPOUT,437)
    assign out_intel_reserved_ffwd_50_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code53_emscripten_compute_dom_pk_code59_out_intel_reserved_ffwd_50_0;

    // valid_fanout_reg53(REG,547)@2 + 1
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

    // redist51_sync_together331_aunroll_x_in_c1_eni1_52_tpl_1(DELAY,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together331_aunroll_x_in_c1_eni1_52_tpl_1_q <= '0;
        end
        else
        begin
            redist51_sync_together331_aunroll_x_in_c1_eni1_52_tpl_1_q <= $unsigned(in_c1_eni1_52_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code54_emscripten_compute_dom_pk_code60(BLACKBOX,271)@3
    // out out_intel_reserved_ffwd_51_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000109Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code54_emscripten_compute_dom_pk_code60 (
        .in_predicate_in(GND_q),
        .in_src_data_in_51_0(redist51_sync_together331_aunroll_x_in_c1_eni1_52_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_intel_reserved_ffwd_51_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code54_emscripten_compute_dom_pk_code60_out_intel_reserved_ffwd_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_104_regfree_osync_x(GPOUT,438)
    assign out_intel_reserved_ffwd_51_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code54_emscripten_compute_dom_pk_code60_out_intel_reserved_ffwd_51_0;

    // valid_fanout_reg54(REG,548)@2 + 1
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

    // redist52_sync_together331_aunroll_x_in_c1_eni1_53_tpl_1(DELAY,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together331_aunroll_x_in_c1_eni1_53_tpl_1_q <= '0;
        end
        else
        begin
            redist52_sync_together331_aunroll_x_in_c1_eni1_53_tpl_1_q <= $unsigned(in_c1_eni1_53_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code55_emscripten_compute_dom_pk_code61(BLACKBOX,272)@3
    // out out_intel_reserved_ffwd_52_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000110Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code55_emscripten_compute_dom_pk_code61 (
        .in_predicate_in(GND_q),
        .in_src_data_in_52_0(redist52_sync_together331_aunroll_x_in_c1_eni1_53_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_intel_reserved_ffwd_52_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code55_emscripten_compute_dom_pk_code61_out_intel_reserved_ffwd_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_105_regfree_osync_x(GPOUT,439)
    assign out_intel_reserved_ffwd_52_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code55_emscripten_compute_dom_pk_code61_out_intel_reserved_ffwd_52_0;

    // valid_fanout_reg55(REG,549)@2 + 1
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

    // redist53_sync_together331_aunroll_x_in_c1_eni1_54_tpl_1(DELAY,708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together331_aunroll_x_in_c1_eni1_54_tpl_1_q <= '0;
        end
        else
        begin
            redist53_sync_together331_aunroll_x_in_c1_eni1_54_tpl_1_q <= $unsigned(in_c1_eni1_54_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code56_emscripten_compute_dom_pk_code62(BLACKBOX,273)@3
    // out out_intel_reserved_ffwd_53_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000111Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code56_emscripten_compute_dom_pk_code62 (
        .in_predicate_in(GND_q),
        .in_src_data_in_53_0(redist53_sync_together331_aunroll_x_in_c1_eni1_54_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_intel_reserved_ffwd_53_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code56_emscripten_compute_dom_pk_code62_out_intel_reserved_ffwd_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_106_regfree_osync_x(GPOUT,440)
    assign out_intel_reserved_ffwd_53_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code56_emscripten_compute_dom_pk_code62_out_intel_reserved_ffwd_53_0;

    // valid_fanout_reg56(REG,550)@2 + 1
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

    // redist54_sync_together331_aunroll_x_in_c1_eni1_55_tpl_1(DELAY,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together331_aunroll_x_in_c1_eni1_55_tpl_1_q <= '0;
        end
        else
        begin
            redist54_sync_together331_aunroll_x_in_c1_eni1_55_tpl_1_q <= $unsigned(in_c1_eni1_55_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code57_emscripten_compute_dom_pk_code63(BLACKBOX,274)@3
    // out out_intel_reserved_ffwd_54_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000112Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code57_emscripten_compute_dom_pk_code63 (
        .in_predicate_in(GND_q),
        .in_src_data_in_54_0(redist54_sync_together331_aunroll_x_in_c1_eni1_55_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_intel_reserved_ffwd_54_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code57_emscripten_compute_dom_pk_code63_out_intel_reserved_ffwd_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_107_regfree_osync_x(GPOUT,441)
    assign out_intel_reserved_ffwd_54_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code57_emscripten_compute_dom_pk_code63_out_intel_reserved_ffwd_54_0;

    // valid_fanout_reg57(REG,551)@2 + 1
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

    // redist55_sync_together331_aunroll_x_in_c1_eni1_56_tpl_1(DELAY,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together331_aunroll_x_in_c1_eni1_56_tpl_1_q <= '0;
        end
        else
        begin
            redist55_sync_together331_aunroll_x_in_c1_eni1_56_tpl_1_q <= $unsigned(in_c1_eni1_56_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code58_emscripten_compute_dom_pk_code64(BLACKBOX,275)@3
    // out out_intel_reserved_ffwd_55_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000113Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code58_emscripten_compute_dom_pk_code64 (
        .in_predicate_in(GND_q),
        .in_src_data_in_55_0(redist55_sync_together331_aunroll_x_in_c1_eni1_56_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_intel_reserved_ffwd_55_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code58_emscripten_compute_dom_pk_code64_out_intel_reserved_ffwd_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_108_regfree_osync_x(GPOUT,442)
    assign out_intel_reserved_ffwd_55_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code58_emscripten_compute_dom_pk_code64_out_intel_reserved_ffwd_55_0;

    // valid_fanout_reg58(REG,552)@2 + 1
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

    // redist56_sync_together331_aunroll_x_in_c1_eni1_57_tpl_1(DELAY,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together331_aunroll_x_in_c1_eni1_57_tpl_1_q <= '0;
        end
        else
        begin
            redist56_sync_together331_aunroll_x_in_c1_eni1_57_tpl_1_q <= $unsigned(in_c1_eni1_57_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code59_emscripten_compute_dom_pk_code65(BLACKBOX,276)@3
    // out out_intel_reserved_ffwd_56_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000114Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code59_emscripten_compute_dom_pk_code65 (
        .in_predicate_in(GND_q),
        .in_src_data_in_56_0(redist56_sync_together331_aunroll_x_in_c1_eni1_57_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_intel_reserved_ffwd_56_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code59_emscripten_compute_dom_pk_code65_out_intel_reserved_ffwd_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_109_regfree_osync_x(GPOUT,443)
    assign out_intel_reserved_ffwd_56_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code59_emscripten_compute_dom_pk_code65_out_intel_reserved_ffwd_56_0;

    // valid_fanout_reg59(REG,553)@2 + 1
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

    // redist57_sync_together331_aunroll_x_in_c1_eni1_58_tpl_1(DELAY,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together331_aunroll_x_in_c1_eni1_58_tpl_1_q <= '0;
        end
        else
        begin
            redist57_sync_together331_aunroll_x_in_c1_eni1_58_tpl_1_q <= $unsigned(in_c1_eni1_58_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code60_emscripten_compute_dom_pk_code66(BLACKBOX,278)@3
    // out out_intel_reserved_ffwd_57_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000116Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code60_emscripten_compute_dom_pk_code66 (
        .in_predicate_in(GND_q),
        .in_src_data_in_57_0(redist57_sync_together331_aunroll_x_in_c1_eni1_58_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_intel_reserved_ffwd_57_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code60_emscripten_compute_dom_pk_code66_out_intel_reserved_ffwd_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_110_regfree_osync_x(GPOUT,444)
    assign out_intel_reserved_ffwd_57_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code60_emscripten_compute_dom_pk_code66_out_intel_reserved_ffwd_57_0;

    // valid_fanout_reg60(REG,554)@2 + 1
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

    // redist58_sync_together331_aunroll_x_in_c1_eni1_59_tpl_1(DELAY,713)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together331_aunroll_x_in_c1_eni1_59_tpl_1_q <= '0;
        end
        else
        begin
            redist58_sync_together331_aunroll_x_in_c1_eni1_59_tpl_1_q <= $unsigned(in_c1_eni1_59_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code61_emscripten_compute_dom_pk_code67(BLACKBOX,279)@3
    // out out_intel_reserved_ffwd_58_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000117Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code61_emscripten_compute_dom_pk_code67 (
        .in_predicate_in(GND_q),
        .in_src_data_in_58_0(redist58_sync_together331_aunroll_x_in_c1_eni1_59_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_intel_reserved_ffwd_58_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code61_emscripten_compute_dom_pk_code67_out_intel_reserved_ffwd_58_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_111_regfree_osync_x(GPOUT,445)
    assign out_intel_reserved_ffwd_58_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code61_emscripten_compute_dom_pk_code67_out_intel_reserved_ffwd_58_0;

    // valid_fanout_reg61(REG,555)@2 + 1
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

    // redist59_sync_together331_aunroll_x_in_c1_eni1_60_tpl_1(DELAY,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_sync_together331_aunroll_x_in_c1_eni1_60_tpl_1_q <= '0;
        end
        else
        begin
            redist59_sync_together331_aunroll_x_in_c1_eni1_60_tpl_1_q <= $unsigned(in_c1_eni1_60_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code62_emscripten_compute_dom_pk_code68(BLACKBOX,280)@3
    // out out_intel_reserved_ffwd_59_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000118Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code62_emscripten_compute_dom_pk_code68 (
        .in_predicate_in(GND_q),
        .in_src_data_in_59_0(redist59_sync_together331_aunroll_x_in_c1_eni1_60_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_intel_reserved_ffwd_59_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code62_emscripten_compute_dom_pk_code68_out_intel_reserved_ffwd_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_112_regfree_osync_x(GPOUT,446)
    assign out_intel_reserved_ffwd_59_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code62_emscripten_compute_dom_pk_code68_out_intel_reserved_ffwd_59_0;

    // valid_fanout_reg7(REG,501)@2 + 1
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

    // redist5_sync_together331_aunroll_x_in_c1_eni1_6_tpl_1(DELAY,660)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together331_aunroll_x_in_c1_eni1_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together331_aunroll_x_in_c1_eni1_6_tpl_1_q <= $unsigned(in_c1_eni1_6_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code8_emscripten_compute_dom_pk_code14(BLACKBOX,310)@3
    // out out_intel_reserved_ffwd_5_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000148Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code8_emscripten_compute_dom_pk_code14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist5_sync_together331_aunroll_x_in_c1_eni1_6_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code8_emscripten_compute_dom_pk_code14_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_113_regfree_osync_x(GPOUT,447)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code8_emscripten_compute_dom_pk_code14_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg62(REG,556)@2 + 1
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

    // redist60_sync_together331_aunroll_x_in_c1_eni1_61_tpl_1(DELAY,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_sync_together331_aunroll_x_in_c1_eni1_61_tpl_1_q <= '0;
        end
        else
        begin
            redist60_sync_together331_aunroll_x_in_c1_eni1_61_tpl_1_q <= $unsigned(in_c1_eni1_61_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code63_emscripten_compute_dom_pk_code69(BLACKBOX,281)@3
    // out out_intel_reserved_ffwd_60_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000119Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code63_emscripten_compute_dom_pk_code69 (
        .in_predicate_in(GND_q),
        .in_src_data_in_60_0(redist60_sync_together331_aunroll_x_in_c1_eni1_61_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_intel_reserved_ffwd_60_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code63_emscripten_compute_dom_pk_code69_out_intel_reserved_ffwd_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_114_regfree_osync_x(GPOUT,448)
    assign out_intel_reserved_ffwd_60_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code63_emscripten_compute_dom_pk_code69_out_intel_reserved_ffwd_60_0;

    // valid_fanout_reg63(REG,557)@2 + 1
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

    // redist61_sync_together331_aunroll_x_in_c1_eni1_62_tpl_1(DELAY,716)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_sync_together331_aunroll_x_in_c1_eni1_62_tpl_1_q <= '0;
        end
        else
        begin
            redist61_sync_together331_aunroll_x_in_c1_eni1_62_tpl_1_q <= $unsigned(in_c1_eni1_62_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code64_emscripten_compute_dom_pk_code70(BLACKBOX,282)@3
    // out out_intel_reserved_ffwd_61_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000120Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code64_emscripten_compute_dom_pk_code70 (
        .in_predicate_in(GND_q),
        .in_src_data_in_61_0(redist61_sync_together331_aunroll_x_in_c1_eni1_62_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_intel_reserved_ffwd_61_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code64_emscripten_compute_dom_pk_code70_out_intel_reserved_ffwd_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_115_regfree_osync_x(GPOUT,449)
    assign out_intel_reserved_ffwd_61_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code64_emscripten_compute_dom_pk_code70_out_intel_reserved_ffwd_61_0;

    // valid_fanout_reg64(REG,558)@2 + 1
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

    // redist62_sync_together331_aunroll_x_in_c1_eni1_63_tpl_1(DELAY,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_sync_together331_aunroll_x_in_c1_eni1_63_tpl_1_q <= '0;
        end
        else
        begin
            redist62_sync_together331_aunroll_x_in_c1_eni1_63_tpl_1_q <= $unsigned(in_c1_eni1_63_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code65_emscripten_compute_dom_pk_code71(BLACKBOX,283)@3
    // out out_intel_reserved_ffwd_62_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000121Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code65_emscripten_compute_dom_pk_code71 (
        .in_predicate_in(GND_q),
        .in_src_data_in_62_0(redist62_sync_together331_aunroll_x_in_c1_eni1_63_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_intel_reserved_ffwd_62_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code65_emscripten_compute_dom_pk_code71_out_intel_reserved_ffwd_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_116_regfree_osync_x(GPOUT,450)
    assign out_intel_reserved_ffwd_62_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code65_emscripten_compute_dom_pk_code71_out_intel_reserved_ffwd_62_0;

    // valid_fanout_reg65(REG,559)@2 + 1
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

    // redist63_sync_together331_aunroll_x_in_c1_eni1_64_tpl_1(DELAY,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_sync_together331_aunroll_x_in_c1_eni1_64_tpl_1_q <= '0;
        end
        else
        begin
            redist63_sync_together331_aunroll_x_in_c1_eni1_64_tpl_1_q <= $unsigned(in_c1_eni1_64_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code66_emscripten_compute_dom_pk_code72(BLACKBOX,284)@3
    // out out_intel_reserved_ffwd_63_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000122Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code66_emscripten_compute_dom_pk_code72 (
        .in_predicate_in(GND_q),
        .in_src_data_in_63_0(redist63_sync_together331_aunroll_x_in_c1_eni1_64_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_intel_reserved_ffwd_63_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code66_emscripten_compute_dom_pk_code72_out_intel_reserved_ffwd_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_117_regfree_osync_x(GPOUT,451)
    assign out_intel_reserved_ffwd_63_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code66_emscripten_compute_dom_pk_code72_out_intel_reserved_ffwd_63_0;

    // valid_fanout_reg66(REG,560)@2 + 1
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

    // redist64_sync_together331_aunroll_x_in_c1_eni1_65_tpl_1(DELAY,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_sync_together331_aunroll_x_in_c1_eni1_65_tpl_1_q <= '0;
        end
        else
        begin
            redist64_sync_together331_aunroll_x_in_c1_eni1_65_tpl_1_q <= $unsigned(in_c1_eni1_65_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code67_emscripten_compute_dom_pk_code73(BLACKBOX,285)@3
    // out out_intel_reserved_ffwd_64_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000123Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code67_emscripten_compute_dom_pk_code73 (
        .in_predicate_in(GND_q),
        .in_src_data_in_64_0(redist64_sync_together331_aunroll_x_in_c1_eni1_65_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg66_q),
        .out_intel_reserved_ffwd_64_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code67_emscripten_compute_dom_pk_code73_out_intel_reserved_ffwd_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_118_regfree_osync_x(GPOUT,452)
    assign out_intel_reserved_ffwd_64_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code67_emscripten_compute_dom_pk_code73_out_intel_reserved_ffwd_64_0;

    // valid_fanout_reg67(REG,561)@2 + 1
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

    // redist65_sync_together331_aunroll_x_in_c1_eni1_66_tpl_1(DELAY,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_sync_together331_aunroll_x_in_c1_eni1_66_tpl_1_q <= '0;
        end
        else
        begin
            redist65_sync_together331_aunroll_x_in_c1_eni1_66_tpl_1_q <= $unsigned(in_c1_eni1_66_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code68_emscripten_compute_dom_pk_code74(BLACKBOX,286)@3
    // out out_intel_reserved_ffwd_65_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000124Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code68_emscripten_compute_dom_pk_code74 (
        .in_predicate_in(GND_q),
        .in_src_data_in_65_0(redist65_sync_together331_aunroll_x_in_c1_eni1_66_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg67_q),
        .out_intel_reserved_ffwd_65_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code68_emscripten_compute_dom_pk_code74_out_intel_reserved_ffwd_65_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_119_regfree_osync_x(GPOUT,453)
    assign out_intel_reserved_ffwd_65_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code68_emscripten_compute_dom_pk_code74_out_intel_reserved_ffwd_65_0;

    // valid_fanout_reg68(REG,562)@2 + 1
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

    // redist66_sync_together331_aunroll_x_in_c1_eni1_67_tpl_1(DELAY,721)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_sync_together331_aunroll_x_in_c1_eni1_67_tpl_1_q <= '0;
        end
        else
        begin
            redist66_sync_together331_aunroll_x_in_c1_eni1_67_tpl_1_q <= $unsigned(in_c1_eni1_67_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code69_emscripten_compute_dom_pk_code75(BLACKBOX,287)@3
    // out out_intel_reserved_ffwd_66_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000125Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code69_emscripten_compute_dom_pk_code75 (
        .in_predicate_in(GND_q),
        .in_src_data_in_66_0(redist66_sync_together331_aunroll_x_in_c1_eni1_67_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg68_q),
        .out_intel_reserved_ffwd_66_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code69_emscripten_compute_dom_pk_code75_out_intel_reserved_ffwd_66_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_120_regfree_osync_x(GPOUT,454)
    assign out_intel_reserved_ffwd_66_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code69_emscripten_compute_dom_pk_code75_out_intel_reserved_ffwd_66_0;

    // valid_fanout_reg69(REG,563)@2 + 1
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

    // redist67_sync_together331_aunroll_x_in_c1_eni1_68_tpl_1(DELAY,722)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_sync_together331_aunroll_x_in_c1_eni1_68_tpl_1_q <= '0;
        end
        else
        begin
            redist67_sync_together331_aunroll_x_in_c1_eni1_68_tpl_1_q <= $unsigned(in_c1_eni1_68_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code70_emscripten_compute_dom_pk_code76(BLACKBOX,289)@3
    // out out_intel_reserved_ffwd_67_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000127Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code70_emscripten_compute_dom_pk_code76 (
        .in_predicate_in(GND_q),
        .in_src_data_in_67_0(redist67_sync_together331_aunroll_x_in_c1_eni1_68_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg69_q),
        .out_intel_reserved_ffwd_67_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code70_emscripten_compute_dom_pk_code76_out_intel_reserved_ffwd_67_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_121_regfree_osync_x(GPOUT,455)
    assign out_intel_reserved_ffwd_67_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code70_emscripten_compute_dom_pk_code76_out_intel_reserved_ffwd_67_0;

    // valid_fanout_reg70(REG,564)@2 + 1
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

    // redist68_sync_together331_aunroll_x_in_c1_eni1_69_tpl_1(DELAY,723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_sync_together331_aunroll_x_in_c1_eni1_69_tpl_1_q <= '0;
        end
        else
        begin
            redist68_sync_together331_aunroll_x_in_c1_eni1_69_tpl_1_q <= $unsigned(in_c1_eni1_69_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code71_emscripten_compute_dom_pk_code77(BLACKBOX,290)@3
    // out out_intel_reserved_ffwd_68_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000128Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code71_emscripten_compute_dom_pk_code77 (
        .in_predicate_in(GND_q),
        .in_src_data_in_68_0(redist68_sync_together331_aunroll_x_in_c1_eni1_69_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg70_q),
        .out_intel_reserved_ffwd_68_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code71_emscripten_compute_dom_pk_code77_out_intel_reserved_ffwd_68_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_122_regfree_osync_x(GPOUT,456)
    assign out_intel_reserved_ffwd_68_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code71_emscripten_compute_dom_pk_code77_out_intel_reserved_ffwd_68_0;

    // valid_fanout_reg71(REG,565)@2 + 1
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

    // redist69_sync_together331_aunroll_x_in_c1_eni1_70_tpl_1(DELAY,724)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_sync_together331_aunroll_x_in_c1_eni1_70_tpl_1_q <= '0;
        end
        else
        begin
            redist69_sync_together331_aunroll_x_in_c1_eni1_70_tpl_1_q <= $unsigned(in_c1_eni1_70_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code72_emscripten_compute_dom_pk_code78(BLACKBOX,291)@3
    // out out_intel_reserved_ffwd_69_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000129Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code72_emscripten_compute_dom_pk_code78 (
        .in_predicate_in(GND_q),
        .in_src_data_in_69_0(redist69_sync_together331_aunroll_x_in_c1_eni1_70_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg71_q),
        .out_intel_reserved_ffwd_69_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code72_emscripten_compute_dom_pk_code78_out_intel_reserved_ffwd_69_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_123_regfree_osync_x(GPOUT,457)
    assign out_intel_reserved_ffwd_69_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code72_emscripten_compute_dom_pk_code78_out_intel_reserved_ffwd_69_0;

    // valid_fanout_reg8(REG,502)@2 + 1
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

    // redist6_sync_together331_aunroll_x_in_c1_eni1_7_tpl_1(DELAY,661)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together331_aunroll_x_in_c1_eni1_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together331_aunroll_x_in_c1_eni1_7_tpl_1_q <= $unsigned(in_c1_eni1_7_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code9_emscripten_compute_dom_pk_code15(BLACKBOX,321)@3
    // out out_intel_reserved_ffwd_6_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000159Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code9_emscripten_compute_dom_pk_code15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(redist6_sync_together331_aunroll_x_in_c1_eni1_7_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code9_emscripten_compute_dom_pk_code15_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_124_regfree_osync_x(GPOUT,458)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code9_emscripten_compute_dom_pk_code15_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg72(REG,566)@2 + 1
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

    // redist70_sync_together331_aunroll_x_in_c1_eni1_71_tpl_1(DELAY,725)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_sync_together331_aunroll_x_in_c1_eni1_71_tpl_1_q <= '0;
        end
        else
        begin
            redist70_sync_together331_aunroll_x_in_c1_eni1_71_tpl_1_q <= $unsigned(in_c1_eni1_71_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code73_emscripten_compute_dom_pk_code79(BLACKBOX,292)@3
    // out out_intel_reserved_ffwd_70_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000130Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code73_emscripten_compute_dom_pk_code79 (
        .in_predicate_in(GND_q),
        .in_src_data_in_70_0(redist70_sync_together331_aunroll_x_in_c1_eni1_71_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg72_q),
        .out_intel_reserved_ffwd_70_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code73_emscripten_compute_dom_pk_code79_out_intel_reserved_ffwd_70_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_125_regfree_osync_x(GPOUT,459)
    assign out_intel_reserved_ffwd_70_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code73_emscripten_compute_dom_pk_code79_out_intel_reserved_ffwd_70_0;

    // valid_fanout_reg73(REG,567)@2 + 1
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

    // redist71_sync_together331_aunroll_x_in_c1_eni1_72_tpl_1(DELAY,726)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_sync_together331_aunroll_x_in_c1_eni1_72_tpl_1_q <= '0;
        end
        else
        begin
            redist71_sync_together331_aunroll_x_in_c1_eni1_72_tpl_1_q <= $unsigned(in_c1_eni1_72_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code74_emscripten_compute_dom_pk_code80(BLACKBOX,293)@3
    // out out_intel_reserved_ffwd_71_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000131Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code74_emscripten_compute_dom_pk_code80 (
        .in_predicate_in(GND_q),
        .in_src_data_in_71_0(redist71_sync_together331_aunroll_x_in_c1_eni1_72_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg73_q),
        .out_intel_reserved_ffwd_71_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code74_emscripten_compute_dom_pk_code80_out_intel_reserved_ffwd_71_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_126_regfree_osync_x(GPOUT,460)
    assign out_intel_reserved_ffwd_71_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code74_emscripten_compute_dom_pk_code80_out_intel_reserved_ffwd_71_0;

    // valid_fanout_reg74(REG,568)@2 + 1
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

    // redist72_sync_together331_aunroll_x_in_c1_eni1_73_tpl_1(DELAY,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_sync_together331_aunroll_x_in_c1_eni1_73_tpl_1_q <= '0;
        end
        else
        begin
            redist72_sync_together331_aunroll_x_in_c1_eni1_73_tpl_1_q <= $unsigned(in_c1_eni1_73_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code75_emscripten_compute_dom_pk_code81(BLACKBOX,294)@3
    // out out_intel_reserved_ffwd_72_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000132Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code75_emscripten_compute_dom_pk_code81 (
        .in_predicate_in(GND_q),
        .in_src_data_in_72_0(redist72_sync_together331_aunroll_x_in_c1_eni1_73_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg74_q),
        .out_intel_reserved_ffwd_72_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code75_emscripten_compute_dom_pk_code81_out_intel_reserved_ffwd_72_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_127_regfree_osync_x(GPOUT,461)
    assign out_intel_reserved_ffwd_72_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code75_emscripten_compute_dom_pk_code81_out_intel_reserved_ffwd_72_0;

    // valid_fanout_reg75(REG,569)@2 + 1
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

    // redist73_sync_together331_aunroll_x_in_c1_eni1_74_tpl_1(DELAY,728)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_sync_together331_aunroll_x_in_c1_eni1_74_tpl_1_q <= '0;
        end
        else
        begin
            redist73_sync_together331_aunroll_x_in_c1_eni1_74_tpl_1_q <= $unsigned(in_c1_eni1_74_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code76_emscripten_compute_dom_pk_code82(BLACKBOX,295)@3
    // out out_intel_reserved_ffwd_73_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000133Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code76_emscripten_compute_dom_pk_code82 (
        .in_predicate_in(GND_q),
        .in_src_data_in_73_0(redist73_sync_together331_aunroll_x_in_c1_eni1_74_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg75_q),
        .out_intel_reserved_ffwd_73_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code76_emscripten_compute_dom_pk_code82_out_intel_reserved_ffwd_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_128_regfree_osync_x(GPOUT,462)
    assign out_intel_reserved_ffwd_73_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code76_emscripten_compute_dom_pk_code82_out_intel_reserved_ffwd_73_0;

    // valid_fanout_reg76(REG,570)@2 + 1
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

    // redist74_sync_together331_aunroll_x_in_c1_eni1_75_tpl_1(DELAY,729)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_sync_together331_aunroll_x_in_c1_eni1_75_tpl_1_q <= '0;
        end
        else
        begin
            redist74_sync_together331_aunroll_x_in_c1_eni1_75_tpl_1_q <= $unsigned(in_c1_eni1_75_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code77_emscripten_compute_dom_pk_code83(BLACKBOX,296)@3
    // out out_intel_reserved_ffwd_74_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000134Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code77_emscripten_compute_dom_pk_code83 (
        .in_predicate_in(GND_q),
        .in_src_data_in_74_0(redist74_sync_together331_aunroll_x_in_c1_eni1_75_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg76_q),
        .out_intel_reserved_ffwd_74_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code77_emscripten_compute_dom_pk_code83_out_intel_reserved_ffwd_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_129_regfree_osync_x(GPOUT,463)
    assign out_intel_reserved_ffwd_74_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code77_emscripten_compute_dom_pk_code83_out_intel_reserved_ffwd_74_0;

    // valid_fanout_reg77(REG,571)@2 + 1
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

    // redist75_sync_together331_aunroll_x_in_c1_eni1_76_tpl_1(DELAY,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_sync_together331_aunroll_x_in_c1_eni1_76_tpl_1_q <= '0;
        end
        else
        begin
            redist75_sync_together331_aunroll_x_in_c1_eni1_76_tpl_1_q <= $unsigned(in_c1_eni1_76_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code78_emscripten_compute_dom_pk_code84(BLACKBOX,297)@3
    // out out_intel_reserved_ffwd_75_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000135Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code78_emscripten_compute_dom_pk_code84 (
        .in_predicate_in(GND_q),
        .in_src_data_in_75_0(redist75_sync_together331_aunroll_x_in_c1_eni1_76_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg77_q),
        .out_intel_reserved_ffwd_75_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code78_emscripten_compute_dom_pk_code84_out_intel_reserved_ffwd_75_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_130_regfree_osync_x(GPOUT,464)
    assign out_intel_reserved_ffwd_75_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code78_emscripten_compute_dom_pk_code84_out_intel_reserved_ffwd_75_0;

    // valid_fanout_reg78(REG,572)@2 + 1
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

    // redist76_sync_together331_aunroll_x_in_c1_eni1_77_tpl_1(DELAY,731)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_sync_together331_aunroll_x_in_c1_eni1_77_tpl_1_q <= '0;
        end
        else
        begin
            redist76_sync_together331_aunroll_x_in_c1_eni1_77_tpl_1_q <= $unsigned(in_c1_eni1_77_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code79_emscripten_compute_dom_pk_code85(BLACKBOX,298)@3
    // out out_intel_reserved_ffwd_76_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000136Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code79_emscripten_compute_dom_pk_code85 (
        .in_predicate_in(GND_q),
        .in_src_data_in_76_0(redist76_sync_together331_aunroll_x_in_c1_eni1_77_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg78_q),
        .out_intel_reserved_ffwd_76_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code79_emscripten_compute_dom_pk_code85_out_intel_reserved_ffwd_76_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_131_regfree_osync_x(GPOUT,465)
    assign out_intel_reserved_ffwd_76_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code79_emscripten_compute_dom_pk_code85_out_intel_reserved_ffwd_76_0;

    // valid_fanout_reg79(REG,573)@2 + 1
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

    // redist77_sync_together331_aunroll_x_in_c1_eni1_78_tpl_1(DELAY,732)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_sync_together331_aunroll_x_in_c1_eni1_78_tpl_1_q <= '0;
        end
        else
        begin
            redist77_sync_together331_aunroll_x_in_c1_eni1_78_tpl_1_q <= $unsigned(in_c1_eni1_78_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code80_emscripten_compute_dom_pk_code86(BLACKBOX,300)@3
    // out out_intel_reserved_ffwd_77_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000138Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code80_emscripten_compute_dom_pk_code86 (
        .in_predicate_in(GND_q),
        .in_src_data_in_77_0(redist77_sync_together331_aunroll_x_in_c1_eni1_78_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg79_q),
        .out_intel_reserved_ffwd_77_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code80_emscripten_compute_dom_pk_code86_out_intel_reserved_ffwd_77_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_132_regfree_osync_x(GPOUT,466)
    assign out_intel_reserved_ffwd_77_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code80_emscripten_compute_dom_pk_code86_out_intel_reserved_ffwd_77_0;

    // valid_fanout_reg80(REG,574)@2 + 1
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

    // redist78_sync_together331_aunroll_x_in_c1_eni1_79_tpl_1(DELAY,733)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_sync_together331_aunroll_x_in_c1_eni1_79_tpl_1_q <= '0;
        end
        else
        begin
            redist78_sync_together331_aunroll_x_in_c1_eni1_79_tpl_1_q <= $unsigned(in_c1_eni1_79_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code81_emscripten_compute_dom_pk_code87(BLACKBOX,301)@3
    // out out_intel_reserved_ffwd_78_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000139Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code81_emscripten_compute_dom_pk_code87 (
        .in_predicate_in(GND_q),
        .in_src_data_in_78_0(redist78_sync_together331_aunroll_x_in_c1_eni1_79_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg80_q),
        .out_intel_reserved_ffwd_78_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code81_emscripten_compute_dom_pk_code87_out_intel_reserved_ffwd_78_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_133_regfree_osync_x(GPOUT,467)
    assign out_intel_reserved_ffwd_78_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code81_emscripten_compute_dom_pk_code87_out_intel_reserved_ffwd_78_0;

    // valid_fanout_reg81(REG,575)@2 + 1
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

    // redist79_sync_together331_aunroll_x_in_c1_eni1_80_tpl_1(DELAY,734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_sync_together331_aunroll_x_in_c1_eni1_80_tpl_1_q <= '0;
        end
        else
        begin
            redist79_sync_together331_aunroll_x_in_c1_eni1_80_tpl_1_q <= $unsigned(in_c1_eni1_80_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code82_emscripten_compute_dom_pk_code88(BLACKBOX,302)@3
    // out out_intel_reserved_ffwd_79_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000140Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code82_emscripten_compute_dom_pk_code88 (
        .in_predicate_in(GND_q),
        .in_src_data_in_79_0(redist79_sync_together331_aunroll_x_in_c1_eni1_80_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg81_q),
        .out_intel_reserved_ffwd_79_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code82_emscripten_compute_dom_pk_code88_out_intel_reserved_ffwd_79_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_134_regfree_osync_x(GPOUT,468)
    assign out_intel_reserved_ffwd_79_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code82_emscripten_compute_dom_pk_code88_out_intel_reserved_ffwd_79_0;

    // valid_fanout_reg9(REG,503)@2 + 1
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

    // redist7_sync_together331_aunroll_x_in_c1_eni1_8_tpl_1(DELAY,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together331_aunroll_x_in_c1_eni1_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together331_aunroll_x_in_c1_eni1_8_tpl_1_q <= $unsigned(in_c1_eni1_8_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code10_emscripten_compute_dom_pk_code16(BLACKBOX,178)@3
    // out out_intel_reserved_ffwd_7_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000016Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code10_emscripten_compute_dom_pk_code16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(redist7_sync_together331_aunroll_x_in_c1_eni1_8_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code10_emscripten_compute_dom_pk_code16_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_135_regfree_osync_x(GPOUT,469)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code10_emscripten_compute_dom_pk_code16_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg82(REG,576)@2 + 1
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

    // redist80_sync_together331_aunroll_x_in_c1_eni1_81_tpl_1(DELAY,735)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_sync_together331_aunroll_x_in_c1_eni1_81_tpl_1_q <= '0;
        end
        else
        begin
            redist80_sync_together331_aunroll_x_in_c1_eni1_81_tpl_1_q <= $unsigned(in_c1_eni1_81_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code83_emscripten_compute_dom_pk_code89(BLACKBOX,303)@3
    // out out_intel_reserved_ffwd_80_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000141Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code83_emscripten_compute_dom_pk_code89 (
        .in_predicate_in(GND_q),
        .in_src_data_in_80_0(redist80_sync_together331_aunroll_x_in_c1_eni1_81_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg82_q),
        .out_intel_reserved_ffwd_80_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code83_emscripten_compute_dom_pk_code89_out_intel_reserved_ffwd_80_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_136_regfree_osync_x(GPOUT,470)
    assign out_intel_reserved_ffwd_80_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code83_emscripten_compute_dom_pk_code89_out_intel_reserved_ffwd_80_0;

    // valid_fanout_reg83(REG,577)@2 + 1
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

    // redist81_sync_together331_aunroll_x_in_c1_eni1_82_tpl_1(DELAY,736)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_sync_together331_aunroll_x_in_c1_eni1_82_tpl_1_q <= '0;
        end
        else
        begin
            redist81_sync_together331_aunroll_x_in_c1_eni1_82_tpl_1_q <= $unsigned(in_c1_eni1_82_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code84_emscripten_compute_dom_pk_code90(BLACKBOX,304)@3
    // out out_intel_reserved_ffwd_81_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000142Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code84_emscripten_compute_dom_pk_code90 (
        .in_predicate_in(GND_q),
        .in_src_data_in_81_0(redist81_sync_together331_aunroll_x_in_c1_eni1_82_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg83_q),
        .out_intel_reserved_ffwd_81_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code84_emscripten_compute_dom_pk_code90_out_intel_reserved_ffwd_81_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_137_regfree_osync_x(GPOUT,471)
    assign out_intel_reserved_ffwd_81_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code84_emscripten_compute_dom_pk_code90_out_intel_reserved_ffwd_81_0;

    // valid_fanout_reg84(REG,578)@2 + 1
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

    // redist82_sync_together331_aunroll_x_in_c1_eni1_83_tpl_1(DELAY,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_sync_together331_aunroll_x_in_c1_eni1_83_tpl_1_q <= '0;
        end
        else
        begin
            redist82_sync_together331_aunroll_x_in_c1_eni1_83_tpl_1_q <= $unsigned(in_c1_eni1_83_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code85_emscripten_compute_dom_pk_code91(BLACKBOX,305)@3
    // out out_intel_reserved_ffwd_82_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000143Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code85_emscripten_compute_dom_pk_code91 (
        .in_predicate_in(GND_q),
        .in_src_data_in_82_0(redist82_sync_together331_aunroll_x_in_c1_eni1_83_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg84_q),
        .out_intel_reserved_ffwd_82_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code85_emscripten_compute_dom_pk_code91_out_intel_reserved_ffwd_82_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_138_regfree_osync_x(GPOUT,472)
    assign out_intel_reserved_ffwd_82_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code85_emscripten_compute_dom_pk_code91_out_intel_reserved_ffwd_82_0;

    // valid_fanout_reg85(REG,579)@2 + 1
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

    // redist83_sync_together331_aunroll_x_in_c1_eni1_84_tpl_1(DELAY,738)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_sync_together331_aunroll_x_in_c1_eni1_84_tpl_1_q <= '0;
        end
        else
        begin
            redist83_sync_together331_aunroll_x_in_c1_eni1_84_tpl_1_q <= $unsigned(in_c1_eni1_84_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code86_emscripten_compute_dom_pk_code92(BLACKBOX,306)@3
    // out out_intel_reserved_ffwd_83_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000144Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code86_emscripten_compute_dom_pk_code92 (
        .in_predicate_in(GND_q),
        .in_src_data_in_83_0(redist83_sync_together331_aunroll_x_in_c1_eni1_84_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg85_q),
        .out_intel_reserved_ffwd_83_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code86_emscripten_compute_dom_pk_code92_out_intel_reserved_ffwd_83_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_139_regfree_osync_x(GPOUT,473)
    assign out_intel_reserved_ffwd_83_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code86_emscripten_compute_dom_pk_code92_out_intel_reserved_ffwd_83_0;

    // valid_fanout_reg86(REG,580)@2 + 1
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

    // redist84_sync_together331_aunroll_x_in_c1_eni1_85_tpl_1(DELAY,739)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_sync_together331_aunroll_x_in_c1_eni1_85_tpl_1_q <= '0;
        end
        else
        begin
            redist84_sync_together331_aunroll_x_in_c1_eni1_85_tpl_1_q <= $unsigned(in_c1_eni1_85_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code87_emscripten_compute_dom_pk_code93(BLACKBOX,307)@3
    // out out_intel_reserved_ffwd_84_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000145Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code87_emscripten_compute_dom_pk_code93 (
        .in_predicate_in(GND_q),
        .in_src_data_in_84_0(redist84_sync_together331_aunroll_x_in_c1_eni1_85_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg86_q),
        .out_intel_reserved_ffwd_84_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code87_emscripten_compute_dom_pk_code93_out_intel_reserved_ffwd_84_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_140_regfree_osync_x(GPOUT,474)
    assign out_intel_reserved_ffwd_84_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code87_emscripten_compute_dom_pk_code93_out_intel_reserved_ffwd_84_0;

    // valid_fanout_reg87(REG,581)@2 + 1
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

    // redist85_sync_together331_aunroll_x_in_c1_eni1_86_tpl_1(DELAY,740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_sync_together331_aunroll_x_in_c1_eni1_86_tpl_1_q <= '0;
        end
        else
        begin
            redist85_sync_together331_aunroll_x_in_c1_eni1_86_tpl_1_q <= $unsigned(in_c1_eni1_86_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code88_emscripten_compute_dom_pk_code94(BLACKBOX,308)@3
    // out out_intel_reserved_ffwd_85_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000146Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code88_emscripten_compute_dom_pk_code94 (
        .in_predicate_in(GND_q),
        .in_src_data_in_85_0(redist85_sync_together331_aunroll_x_in_c1_eni1_86_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg87_q),
        .out_intel_reserved_ffwd_85_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code88_emscripten_compute_dom_pk_code94_out_intel_reserved_ffwd_85_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_141_regfree_osync_x(GPOUT,475)
    assign out_intel_reserved_ffwd_85_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code88_emscripten_compute_dom_pk_code94_out_intel_reserved_ffwd_85_0;

    // valid_fanout_reg88(REG,582)@2 + 1
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

    // redist86_sync_together331_aunroll_x_in_c1_eni1_87_tpl_1(DELAY,741)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_sync_together331_aunroll_x_in_c1_eni1_87_tpl_1_q <= '0;
        end
        else
        begin
            redist86_sync_together331_aunroll_x_in_c1_eni1_87_tpl_1_q <= $unsigned(in_c1_eni1_87_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code89_emscripten_compute_dom_pk_code95(BLACKBOX,309)@3
    // out out_intel_reserved_ffwd_86_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000147Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code89_emscripten_compute_dom_pk_code95 (
        .in_predicate_in(GND_q),
        .in_src_data_in_86_0(redist86_sync_together331_aunroll_x_in_c1_eni1_87_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg88_q),
        .out_intel_reserved_ffwd_86_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code89_emscripten_compute_dom_pk_code95_out_intel_reserved_ffwd_86_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_142_regfree_osync_x(GPOUT,476)
    assign out_intel_reserved_ffwd_86_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code89_emscripten_compute_dom_pk_code95_out_intel_reserved_ffwd_86_0;

    // valid_fanout_reg89(REG,583)@2 + 1
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

    // redist87_sync_together331_aunroll_x_in_c1_eni1_88_tpl_1(DELAY,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_sync_together331_aunroll_x_in_c1_eni1_88_tpl_1_q <= '0;
        end
        else
        begin
            redist87_sync_together331_aunroll_x_in_c1_eni1_88_tpl_1_q <= $unsigned(in_c1_eni1_88_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code90_emscripten_compute_dom_pk_code96(BLACKBOX,311)@3
    // out out_intel_reserved_ffwd_87_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000149Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code90_emscripten_compute_dom_pk_code96 (
        .in_predicate_in(GND_q),
        .in_src_data_in_87_0(redist87_sync_together331_aunroll_x_in_c1_eni1_88_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg89_q),
        .out_intel_reserved_ffwd_87_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code90_emscripten_compute_dom_pk_code96_out_intel_reserved_ffwd_87_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_143_regfree_osync_x(GPOUT,477)
    assign out_intel_reserved_ffwd_87_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code90_emscripten_compute_dom_pk_code96_out_intel_reserved_ffwd_87_0;

    // valid_fanout_reg90(REG,584)@2 + 1
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

    // redist88_sync_together331_aunroll_x_in_c1_eni1_89_tpl_1(DELAY,743)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_sync_together331_aunroll_x_in_c1_eni1_89_tpl_1_q <= '0;
        end
        else
        begin
            redist88_sync_together331_aunroll_x_in_c1_eni1_89_tpl_1_q <= $unsigned(in_c1_eni1_89_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code91_emscripten_compute_dom_pk_code97(BLACKBOX,312)@3
    // out out_intel_reserved_ffwd_88_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000150Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code91_emscripten_compute_dom_pk_code97 (
        .in_predicate_in(GND_q),
        .in_src_data_in_88_0(redist88_sync_together331_aunroll_x_in_c1_eni1_89_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg90_q),
        .out_intel_reserved_ffwd_88_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code91_emscripten_compute_dom_pk_code97_out_intel_reserved_ffwd_88_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_144_regfree_osync_x(GPOUT,478)
    assign out_intel_reserved_ffwd_88_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code91_emscripten_compute_dom_pk_code97_out_intel_reserved_ffwd_88_0;

    // valid_fanout_reg91(REG,585)@2 + 1
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

    // redist89_sync_together331_aunroll_x_in_c1_eni1_90_tpl_1(DELAY,744)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_sync_together331_aunroll_x_in_c1_eni1_90_tpl_1_q <= '0;
        end
        else
        begin
            redist89_sync_together331_aunroll_x_in_c1_eni1_90_tpl_1_q <= $unsigned(in_c1_eni1_90_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code92_emscripten_compute_dom_pk_code98(BLACKBOX,313)@3
    // out out_intel_reserved_ffwd_89_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000151Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code92_emscripten_compute_dom_pk_code98 (
        .in_predicate_in(GND_q),
        .in_src_data_in_89_0(redist89_sync_together331_aunroll_x_in_c1_eni1_90_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg91_q),
        .out_intel_reserved_ffwd_89_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code92_emscripten_compute_dom_pk_code98_out_intel_reserved_ffwd_89_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_145_regfree_osync_x(GPOUT,479)
    assign out_intel_reserved_ffwd_89_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code92_emscripten_compute_dom_pk_code98_out_intel_reserved_ffwd_89_0;

    // valid_fanout_reg10(REG,504)@2 + 1
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

    // redist8_sync_together331_aunroll_x_in_c1_eni1_9_tpl_1(DELAY,663)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together331_aunroll_x_in_c1_eni1_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together331_aunroll_x_in_c1_eni1_9_tpl_1_q <= $unsigned(in_c1_eni1_9_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code11_emscripten_compute_dom_pk_code17(BLACKBOX,189)@3
    // out out_intel_reserved_ffwd_8_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000027Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code11_emscripten_compute_dom_pk_code17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(redist8_sync_together331_aunroll_x_in_c1_eni1_9_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code11_emscripten_compute_dom_pk_code17_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_146_regfree_osync_x(GPOUT,480)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code11_emscripten_compute_dom_pk_code17_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg92(REG,586)@2 + 1
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

    // redist90_sync_together331_aunroll_x_in_c1_eni1_91_tpl_1(DELAY,745)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_sync_together331_aunroll_x_in_c1_eni1_91_tpl_1_q <= '0;
        end
        else
        begin
            redist90_sync_together331_aunroll_x_in_c1_eni1_91_tpl_1_q <= $unsigned(in_c1_eni1_91_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code93_emscripten_compute_dom_pk_code99(BLACKBOX,314)@3
    // out out_intel_reserved_ffwd_90_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000152Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code93_emscripten_compute_dom_pk_code99 (
        .in_predicate_in(GND_q),
        .in_src_data_in_90_0(redist90_sync_together331_aunroll_x_in_c1_eni1_91_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg92_q),
        .out_intel_reserved_ffwd_90_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code93_emscripten_compute_dom_pk_code99_out_intel_reserved_ffwd_90_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_147_regfree_osync_x(GPOUT,481)
    assign out_intel_reserved_ffwd_90_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code93_emscripten_compute_dom_pk_code99_out_intel_reserved_ffwd_90_0;

    // valid_fanout_reg93(REG,587)@2 + 1
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

    // redist91_sync_together331_aunroll_x_in_c1_eni1_92_tpl_1(DELAY,746)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_sync_together331_aunroll_x_in_c1_eni1_92_tpl_1_q <= '0;
        end
        else
        begin
            redist91_sync_together331_aunroll_x_in_c1_eni1_92_tpl_1_q <= $unsigned(in_c1_eni1_92_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code94_emscripten_compute_dom_pk_code100(BLACKBOX,315)@3
    // out out_intel_reserved_ffwd_91_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000153Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code94_emscripten_compute_dom_pk_code100 (
        .in_predicate_in(GND_q),
        .in_src_data_in_91_0(redist91_sync_together331_aunroll_x_in_c1_eni1_92_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg93_q),
        .out_intel_reserved_ffwd_91_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code94_emscripten_compute_dom_pk_code100_out_intel_reserved_ffwd_91_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_148_regfree_osync_x(GPOUT,482)
    assign out_intel_reserved_ffwd_91_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code94_emscripten_compute_dom_pk_code100_out_intel_reserved_ffwd_91_0;

    // valid_fanout_reg94(REG,588)@2 + 1
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

    // redist92_sync_together331_aunroll_x_in_c1_eni1_93_tpl_1(DELAY,747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_sync_together331_aunroll_x_in_c1_eni1_93_tpl_1_q <= '0;
        end
        else
        begin
            redist92_sync_together331_aunroll_x_in_c1_eni1_93_tpl_1_q <= $unsigned(in_c1_eni1_93_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code95_emscripten_compute_dom_pk_code101(BLACKBOX,316)@3
    // out out_intel_reserved_ffwd_92_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000154Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code95_emscripten_compute_dom_pk_code101 (
        .in_predicate_in(GND_q),
        .in_src_data_in_92_0(redist92_sync_together331_aunroll_x_in_c1_eni1_93_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg94_q),
        .out_intel_reserved_ffwd_92_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code95_emscripten_compute_dom_pk_code101_out_intel_reserved_ffwd_92_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_149_regfree_osync_x(GPOUT,483)
    assign out_intel_reserved_ffwd_92_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code95_emscripten_compute_dom_pk_code101_out_intel_reserved_ffwd_92_0;

    // valid_fanout_reg95(REG,589)@2 + 1
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

    // redist93_sync_together331_aunroll_x_in_c1_eni1_94_tpl_1(DELAY,748)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_sync_together331_aunroll_x_in_c1_eni1_94_tpl_1_q <= '0;
        end
        else
        begin
            redist93_sync_together331_aunroll_x_in_c1_eni1_94_tpl_1_q <= $unsigned(in_c1_eni1_94_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code96_emscripten_compute_dom_pk_code102(BLACKBOX,317)@3
    // out out_intel_reserved_ffwd_93_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000155Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code96_emscripten_compute_dom_pk_code102 (
        .in_predicate_in(GND_q),
        .in_src_data_in_93_0(redist93_sync_together331_aunroll_x_in_c1_eni1_94_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg95_q),
        .out_intel_reserved_ffwd_93_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code96_emscripten_compute_dom_pk_code102_out_intel_reserved_ffwd_93_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_150_regfree_osync_x(GPOUT,484)
    assign out_intel_reserved_ffwd_93_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code96_emscripten_compute_dom_pk_code102_out_intel_reserved_ffwd_93_0;

    // valid_fanout_reg96(REG,590)@2 + 1
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

    // redist94_sync_together331_aunroll_x_in_c1_eni1_95_tpl_1(DELAY,749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_sync_together331_aunroll_x_in_c1_eni1_95_tpl_1_q <= '0;
        end
        else
        begin
            redist94_sync_together331_aunroll_x_in_c1_eni1_95_tpl_1_q <= $unsigned(in_c1_eni1_95_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code97_emscripten_compute_dom_pk_code103(BLACKBOX,318)@3
    // out out_intel_reserved_ffwd_94_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000156Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code97_emscripten_compute_dom_pk_code103 (
        .in_predicate_in(GND_q),
        .in_src_data_in_94_0(redist94_sync_together331_aunroll_x_in_c1_eni1_95_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg96_q),
        .out_intel_reserved_ffwd_94_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code97_emscripten_compute_dom_pk_code103_out_intel_reserved_ffwd_94_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_151_regfree_osync_x(GPOUT,485)
    assign out_intel_reserved_ffwd_94_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code97_emscripten_compute_dom_pk_code103_out_intel_reserved_ffwd_94_0;

    // valid_fanout_reg97(REG,591)@2 + 1
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

    // redist95_sync_together331_aunroll_x_in_c1_eni1_96_tpl_1(DELAY,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_sync_together331_aunroll_x_in_c1_eni1_96_tpl_1_q <= '0;
        end
        else
        begin
            redist95_sync_together331_aunroll_x_in_c1_eni1_96_tpl_1_q <= $unsigned(in_c1_eni1_96_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code98_emscripten_compute_dom_pk_code104(BLACKBOX,319)@3
    // out out_intel_reserved_ffwd_95_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000157Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code98_emscripten_compute_dom_pk_code104 (
        .in_predicate_in(GND_q),
        .in_src_data_in_95_0(redist95_sync_together331_aunroll_x_in_c1_eni1_96_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg97_q),
        .out_intel_reserved_ffwd_95_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code98_emscripten_compute_dom_pk_code104_out_intel_reserved_ffwd_95_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_152_regfree_osync_x(GPOUT,486)
    assign out_intel_reserved_ffwd_95_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code98_emscripten_compute_dom_pk_code104_out_intel_reserved_ffwd_95_0;

    // valid_fanout_reg98(REG,592)@2 + 1
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

    // redist96_sync_together331_aunroll_x_in_c1_eni1_97_tpl_1(DELAY,751)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_sync_together331_aunroll_x_in_c1_eni1_97_tpl_1_q <= '0;
        end
        else
        begin
            redist96_sync_together331_aunroll_x_in_c1_eni1_97_tpl_1_q <= $unsigned(in_c1_eni1_97_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code99_emscripten_compute_dom_pk_code105(BLACKBOX,320)@3
    // out out_intel_reserved_ffwd_96_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000158Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code99_emscripten_compute_dom_pk_code105 (
        .in_predicate_in(GND_q),
        .in_src_data_in_96_0(redist96_sync_together331_aunroll_x_in_c1_eni1_97_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg98_q),
        .out_intel_reserved_ffwd_96_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code99_emscripten_compute_dom_pk_code105_out_intel_reserved_ffwd_96_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_153_regfree_osync_x(GPOUT,487)
    assign out_intel_reserved_ffwd_96_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code99_emscripten_compute_dom_pk_code105_out_intel_reserved_ffwd_96_0;

    // valid_fanout_reg99(REG,593)@2 + 1
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

    // redist97_sync_together331_aunroll_x_in_c1_eni1_98_tpl_1(DELAY,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_sync_together331_aunroll_x_in_c1_eni1_98_tpl_1_q <= '0;
        end
        else
        begin
            redist97_sync_together331_aunroll_x_in_c1_eni1_98_tpl_1_q <= $unsigned(in_c1_eni1_98_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code100_emscripten_compute_dom_pk_code106(BLACKBOX,168)@3
    // out out_intel_reserved_ffwd_97_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000006Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code100_emscripten_compute_dom_pk_code106 (
        .in_predicate_in(GND_q),
        .in_src_data_in_97_0(redist97_sync_together331_aunroll_x_in_c1_eni1_98_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg99_q),
        .out_intel_reserved_ffwd_97_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code100_emscripten_compute_dom_pk_code106_out_intel_reserved_ffwd_97_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_154_regfree_osync_x(GPOUT,488)
    assign out_intel_reserved_ffwd_97_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code100_emscripten_compute_dom_pk_code106_out_intel_reserved_ffwd_97_0;

    // valid_fanout_reg100(REG,594)@2 + 1
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

    // redist98_sync_together331_aunroll_x_in_c1_eni1_99_tpl_1(DELAY,753)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_sync_together331_aunroll_x_in_c1_eni1_99_tpl_1_q <= '0;
        end
        else
        begin
            redist98_sync_together331_aunroll_x_in_c1_eni1_99_tpl_1_q <= $unsigned(in_c1_eni1_99_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code101_emscripten_compute_dom_pk_code107(BLACKBOX,169)@3
    // out out_intel_reserved_ffwd_98_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000007Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code101_emscripten_compute_dom_pk_code107 (
        .in_predicate_in(GND_q),
        .in_src_data_in_98_0(redist98_sync_together331_aunroll_x_in_c1_eni1_99_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg100_q),
        .out_intel_reserved_ffwd_98_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code101_emscripten_compute_dom_pk_code107_out_intel_reserved_ffwd_98_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_155_regfree_osync_x(GPOUT,489)
    assign out_intel_reserved_ffwd_98_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code101_emscripten_compute_dom_pk_code107_out_intel_reserved_ffwd_98_0;

    // valid_fanout_reg101(REG,595)@2 + 1
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

    // redist99_sync_together331_aunroll_x_in_c1_eni1_100_tpl_1(DELAY,754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_sync_together331_aunroll_x_in_c1_eni1_100_tpl_1_q <= '0;
        end
        else
        begin
            redist99_sync_together331_aunroll_x_in_c1_eni1_100_tpl_1_q <= $unsigned(in_c1_eni1_100_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code102_emscripten_compute_dom_pk_code108(BLACKBOX,170)@3
    // out out_intel_reserved_ffwd_99_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000008Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code102_emscripten_compute_dom_pk_code108 (
        .in_predicate_in(GND_q),
        .in_src_data_in_99_0(redist99_sync_together331_aunroll_x_in_c1_eni1_100_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg101_q),
        .out_intel_reserved_ffwd_99_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code102_emscripten_compute_dom_pk_code108_out_intel_reserved_ffwd_99_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_156_regfree_osync_x(GPOUT,490)
    assign out_intel_reserved_ffwd_99_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code102_emscripten_compute_dom_pk_code108_out_intel_reserved_ffwd_99_0;

    // valid_fanout_reg11(REG,505)@2 + 1
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

    // redist9_sync_together331_aunroll_x_in_c1_eni1_10_tpl_1(DELAY,664)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together331_aunroll_x_in_c1_eni1_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together331_aunroll_x_in_c1_eni1_10_tpl_1_q <= $unsigned(in_c1_eni1_10_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code12_emscripten_compute_dom_pk_code18(BLACKBOX,200)@3
    // out out_intel_reserved_ffwd_9_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000038Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code12_emscripten_compute_dom_pk_code18 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(redist9_sync_together331_aunroll_x_in_c1_eni1_10_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code12_emscripten_compute_dom_pk_code18_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_157_regfree_osync_x(GPOUT,491)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_emscripten_compute_dom_pk_code12_emscripten_compute_dom_pk_code18_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,494)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist155_sync_together331_aunroll_x_in_i_valid_8_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,492)@11
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_emscripten_compute_dom_pk_code1 = GND_q;
    assign out_unnamed_emscripten_compute_dom_pk_code162_0_tpl = GND_q;

endmodule
