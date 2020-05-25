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

// SystemVerilog created from emscripten_compute_dom_pk_code_i_sfc_s_cA000000Zcompute_dom_pk_code4
// SystemVerilog created on Sun May 24 21:16:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_i_sfc_s_cA000000Zcompute_dom_pk_code4 (
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [0:0] in_flush,
    input wire [63:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
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
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_writedata,
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
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_100_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_101_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_102_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_103_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_104_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_105_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_106_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_107_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_108_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_109_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_110_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_111_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_112_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_113_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_114_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_115_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_116_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_117_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_118_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_119_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_120_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_121_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_122_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_123_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_124_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_125_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_126_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_127_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_128_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_129_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_130_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_131_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_132_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_133_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_134_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_135_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_136_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_137_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_138_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_139_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_140_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_141_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_142_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_143_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_144_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_145_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_146_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_147_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_148_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_149_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_150_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_151_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_152_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_153_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_154_0;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_155_0;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_156_0;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_157_0;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_158_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_51_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_52_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_53_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_54_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_55_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_56_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_57_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_58_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_59_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_65_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_66_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_67_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_68_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_69_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_70_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_71_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_72_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_75_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_76_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_77_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_78_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_79_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_80_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_81_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_82_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_83_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_84_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_85_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_86_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_87_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_88_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_89_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_90_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_91_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_92_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_93_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_94_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_95_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_96_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_97_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_98_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_99_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x(BLACKBOX,178)@11
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@14
    // out out_data_out_0_tpl@14
    emscripten_compute_dom_pk_code_i_llvm_fpA000001Zcompute_dom_pk_code0 thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x(BLACKBOX,179)@2
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_100_0@20000000
    // out out_intel_reserved_ffwd_101_0@20000000
    // out out_intel_reserved_ffwd_102_0@20000000
    // out out_intel_reserved_ffwd_103_0@20000000
    // out out_intel_reserved_ffwd_104_0@20000000
    // out out_intel_reserved_ffwd_105_0@20000000
    // out out_intel_reserved_ffwd_106_0@20000000
    // out out_intel_reserved_ffwd_107_0@20000000
    // out out_intel_reserved_ffwd_108_0@20000000
    // out out_intel_reserved_ffwd_109_0@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_110_0@20000000
    // out out_intel_reserved_ffwd_111_0@20000000
    // out out_intel_reserved_ffwd_112_0@20000000
    // out out_intel_reserved_ffwd_113_0@20000000
    // out out_intel_reserved_ffwd_114_0@20000000
    // out out_intel_reserved_ffwd_115_0@20000000
    // out out_intel_reserved_ffwd_116_0@20000000
    // out out_intel_reserved_ffwd_117_0@20000000
    // out out_intel_reserved_ffwd_118_0@20000000
    // out out_intel_reserved_ffwd_119_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_120_0@20000000
    // out out_intel_reserved_ffwd_121_0@20000000
    // out out_intel_reserved_ffwd_122_0@20000000
    // out out_intel_reserved_ffwd_123_0@20000000
    // out out_intel_reserved_ffwd_124_0@20000000
    // out out_intel_reserved_ffwd_125_0@20000000
    // out out_intel_reserved_ffwd_126_0@20000000
    // out out_intel_reserved_ffwd_127_0@20000000
    // out out_intel_reserved_ffwd_128_0@20000000
    // out out_intel_reserved_ffwd_129_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_130_0@20000000
    // out out_intel_reserved_ffwd_131_0@20000000
    // out out_intel_reserved_ffwd_132_0@20000000
    // out out_intel_reserved_ffwd_133_0@20000000
    // out out_intel_reserved_ffwd_134_0@20000000
    // out out_intel_reserved_ffwd_135_0@20000000
    // out out_intel_reserved_ffwd_136_0@20000000
    // out out_intel_reserved_ffwd_137_0@20000000
    // out out_intel_reserved_ffwd_138_0@20000000
    // out out_intel_reserved_ffwd_139_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_140_0@20000000
    // out out_intel_reserved_ffwd_141_0@20000000
    // out out_intel_reserved_ffwd_142_0@20000000
    // out out_intel_reserved_ffwd_143_0@20000000
    // out out_intel_reserved_ffwd_144_0@20000000
    // out out_intel_reserved_ffwd_145_0@20000000
    // out out_intel_reserved_ffwd_146_0@20000000
    // out out_intel_reserved_ffwd_147_0@20000000
    // out out_intel_reserved_ffwd_148_0@20000000
    // out out_intel_reserved_ffwd_149_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_150_0@20000000
    // out out_intel_reserved_ffwd_151_0@20000000
    // out out_intel_reserved_ffwd_152_0@20000000
    // out out_intel_reserved_ffwd_153_0@20000000
    // out out_intel_reserved_ffwd_154_0@20000000
    // out out_intel_reserved_ffwd_155_0@20000000
    // out out_intel_reserved_ffwd_156_0@20000000
    // out out_intel_reserved_ffwd_157_0@20000000
    // out out_intel_reserved_ffwd_158_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_intel_reserved_ffwd_48_0@20000000
    // out out_intel_reserved_ffwd_49_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_intel_reserved_ffwd_51_0@20000000
    // out out_intel_reserved_ffwd_52_0@20000000
    // out out_intel_reserved_ffwd_53_0@20000000
    // out out_intel_reserved_ffwd_54_0@20000000
    // out out_intel_reserved_ffwd_55_0@20000000
    // out out_intel_reserved_ffwd_56_0@20000000
    // out out_intel_reserved_ffwd_57_0@20000000
    // out out_intel_reserved_ffwd_58_0@20000000
    // out out_intel_reserved_ffwd_59_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_60_0@20000000
    // out out_intel_reserved_ffwd_61_0@20000000
    // out out_intel_reserved_ffwd_62_0@20000000
    // out out_intel_reserved_ffwd_63_0@20000000
    // out out_intel_reserved_ffwd_64_0@20000000
    // out out_intel_reserved_ffwd_65_0@20000000
    // out out_intel_reserved_ffwd_66_0@20000000
    // out out_intel_reserved_ffwd_67_0@20000000
    // out out_intel_reserved_ffwd_68_0@20000000
    // out out_intel_reserved_ffwd_69_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_70_0@20000000
    // out out_intel_reserved_ffwd_71_0@20000000
    // out out_intel_reserved_ffwd_72_0@20000000
    // out out_intel_reserved_ffwd_73_0@20000000
    // out out_intel_reserved_ffwd_74_0@20000000
    // out out_intel_reserved_ffwd_75_0@20000000
    // out out_intel_reserved_ffwd_76_0@20000000
    // out out_intel_reserved_ffwd_77_0@20000000
    // out out_intel_reserved_ffwd_78_0@20000000
    // out out_intel_reserved_ffwd_79_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_80_0@20000000
    // out out_intel_reserved_ffwd_81_0@20000000
    // out out_intel_reserved_ffwd_82_0@20000000
    // out out_intel_reserved_ffwd_83_0@20000000
    // out out_intel_reserved_ffwd_84_0@20000000
    // out out_intel_reserved_ffwd_85_0@20000000
    // out out_intel_reserved_ffwd_86_0@20000000
    // out out_intel_reserved_ffwd_87_0@20000000
    // out out_intel_reserved_ffwd_88_0@20000000
    // out out_intel_reserved_ffwd_89_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_90_0@20000000
    // out out_intel_reserved_ffwd_91_0@20000000
    // out out_intel_reserved_ffwd_92_0@20000000
    // out out_intel_reserved_ffwd_93_0@20000000
    // out out_intel_reserved_ffwd_94_0@20000000
    // out out_intel_reserved_ffwd_95_0@20000000
    // out out_intel_reserved_ffwd_96_0@20000000
    // out out_intel_reserved_ffwd_97_0@20000000
    // out out_intel_reserved_ffwd_98_0@20000000
    // out out_intel_reserved_ffwd_99_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_address@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_enable@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_read@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_write@20000000
    // out out_lm58771_emscripten_compute_dom_pk_code_avm_writedata@20000000
    // out out_o_valid@11
    // out out_unnamed_emscripten_compute_dom_pk_code1@11
    // out out_unnamed_emscripten_compute_dom_pk_code162_0_tpl@11
    emscripten_compute_dom_pk_code_i_sfc_logA000001Zcompute_dom_pk_code0 thei_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdata(in_lm58771_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_writeack(in_lm58771_emscripten_compute_dom_pk_code_avm_writeack),
        .in_c1_eni1_0_tpl(in_c1_eni1_0_tpl),
        .in_c1_eni1_1_tpl(in_c1_eni1_1_tpl),
        .in_c1_eni1_2_tpl(in_c1_eni1_2_tpl),
        .in_c1_eni1_3_tpl(in_c1_eni1_3_tpl),
        .in_c1_eni1_4_tpl(in_c1_eni1_4_tpl),
        .in_c1_eni1_5_tpl(in_c1_eni1_5_tpl),
        .in_c1_eni1_6_tpl(in_c1_eni1_6_tpl),
        .in_c1_eni1_7_tpl(in_c1_eni1_7_tpl),
        .in_c1_eni1_8_tpl(in_c1_eni1_8_tpl),
        .in_c1_eni1_9_tpl(in_c1_eni1_9_tpl),
        .in_c1_eni1_10_tpl(in_c1_eni1_10_tpl),
        .in_c1_eni1_11_tpl(in_c1_eni1_11_tpl),
        .in_c1_eni1_12_tpl(in_c1_eni1_12_tpl),
        .in_c1_eni1_13_tpl(in_c1_eni1_13_tpl),
        .in_c1_eni1_14_tpl(in_c1_eni1_14_tpl),
        .in_c1_eni1_15_tpl(in_c1_eni1_15_tpl),
        .in_c1_eni1_16_tpl(in_c1_eni1_16_tpl),
        .in_c1_eni1_17_tpl(in_c1_eni1_17_tpl),
        .in_c1_eni1_18_tpl(in_c1_eni1_18_tpl),
        .in_c1_eni1_19_tpl(in_c1_eni1_19_tpl),
        .in_c1_eni1_20_tpl(in_c1_eni1_20_tpl),
        .in_c1_eni1_21_tpl(in_c1_eni1_21_tpl),
        .in_c1_eni1_22_tpl(in_c1_eni1_22_tpl),
        .in_c1_eni1_23_tpl(in_c1_eni1_23_tpl),
        .in_c1_eni1_24_tpl(in_c1_eni1_24_tpl),
        .in_c1_eni1_25_tpl(in_c1_eni1_25_tpl),
        .in_c1_eni1_26_tpl(in_c1_eni1_26_tpl),
        .in_c1_eni1_27_tpl(in_c1_eni1_27_tpl),
        .in_c1_eni1_28_tpl(in_c1_eni1_28_tpl),
        .in_c1_eni1_29_tpl(in_c1_eni1_29_tpl),
        .in_c1_eni1_30_tpl(in_c1_eni1_30_tpl),
        .in_c1_eni1_31_tpl(in_c1_eni1_31_tpl),
        .in_c1_eni1_32_tpl(in_c1_eni1_32_tpl),
        .in_c1_eni1_33_tpl(in_c1_eni1_33_tpl),
        .in_c1_eni1_34_tpl(in_c1_eni1_34_tpl),
        .in_c1_eni1_35_tpl(in_c1_eni1_35_tpl),
        .in_c1_eni1_36_tpl(in_c1_eni1_36_tpl),
        .in_c1_eni1_37_tpl(in_c1_eni1_37_tpl),
        .in_c1_eni1_38_tpl(in_c1_eni1_38_tpl),
        .in_c1_eni1_39_tpl(in_c1_eni1_39_tpl),
        .in_c1_eni1_40_tpl(in_c1_eni1_40_tpl),
        .in_c1_eni1_41_tpl(in_c1_eni1_41_tpl),
        .in_c1_eni1_42_tpl(in_c1_eni1_42_tpl),
        .in_c1_eni1_43_tpl(in_c1_eni1_43_tpl),
        .in_c1_eni1_44_tpl(in_c1_eni1_44_tpl),
        .in_c1_eni1_45_tpl(in_c1_eni1_45_tpl),
        .in_c1_eni1_46_tpl(in_c1_eni1_46_tpl),
        .in_c1_eni1_47_tpl(in_c1_eni1_47_tpl),
        .in_c1_eni1_48_tpl(in_c1_eni1_48_tpl),
        .in_c1_eni1_49_tpl(in_c1_eni1_49_tpl),
        .in_c1_eni1_50_tpl(in_c1_eni1_50_tpl),
        .in_c1_eni1_51_tpl(in_c1_eni1_51_tpl),
        .in_c1_eni1_52_tpl(in_c1_eni1_52_tpl),
        .in_c1_eni1_53_tpl(in_c1_eni1_53_tpl),
        .in_c1_eni1_54_tpl(in_c1_eni1_54_tpl),
        .in_c1_eni1_55_tpl(in_c1_eni1_55_tpl),
        .in_c1_eni1_56_tpl(in_c1_eni1_56_tpl),
        .in_c1_eni1_57_tpl(in_c1_eni1_57_tpl),
        .in_c1_eni1_58_tpl(in_c1_eni1_58_tpl),
        .in_c1_eni1_59_tpl(in_c1_eni1_59_tpl),
        .in_c1_eni1_60_tpl(in_c1_eni1_60_tpl),
        .in_c1_eni1_61_tpl(in_c1_eni1_61_tpl),
        .in_c1_eni1_62_tpl(in_c1_eni1_62_tpl),
        .in_c1_eni1_63_tpl(in_c1_eni1_63_tpl),
        .in_c1_eni1_64_tpl(in_c1_eni1_64_tpl),
        .in_c1_eni1_65_tpl(in_c1_eni1_65_tpl),
        .in_c1_eni1_66_tpl(in_c1_eni1_66_tpl),
        .in_c1_eni1_67_tpl(in_c1_eni1_67_tpl),
        .in_c1_eni1_68_tpl(in_c1_eni1_68_tpl),
        .in_c1_eni1_69_tpl(in_c1_eni1_69_tpl),
        .in_c1_eni1_70_tpl(in_c1_eni1_70_tpl),
        .in_c1_eni1_71_tpl(in_c1_eni1_71_tpl),
        .in_c1_eni1_72_tpl(in_c1_eni1_72_tpl),
        .in_c1_eni1_73_tpl(in_c1_eni1_73_tpl),
        .in_c1_eni1_74_tpl(in_c1_eni1_74_tpl),
        .in_c1_eni1_75_tpl(in_c1_eni1_75_tpl),
        .in_c1_eni1_76_tpl(in_c1_eni1_76_tpl),
        .in_c1_eni1_77_tpl(in_c1_eni1_77_tpl),
        .in_c1_eni1_78_tpl(in_c1_eni1_78_tpl),
        .in_c1_eni1_79_tpl(in_c1_eni1_79_tpl),
        .in_c1_eni1_80_tpl(in_c1_eni1_80_tpl),
        .in_c1_eni1_81_tpl(in_c1_eni1_81_tpl),
        .in_c1_eni1_82_tpl(in_c1_eni1_82_tpl),
        .in_c1_eni1_83_tpl(in_c1_eni1_83_tpl),
        .in_c1_eni1_84_tpl(in_c1_eni1_84_tpl),
        .in_c1_eni1_85_tpl(in_c1_eni1_85_tpl),
        .in_c1_eni1_86_tpl(in_c1_eni1_86_tpl),
        .in_c1_eni1_87_tpl(in_c1_eni1_87_tpl),
        .in_c1_eni1_88_tpl(in_c1_eni1_88_tpl),
        .in_c1_eni1_89_tpl(in_c1_eni1_89_tpl),
        .in_c1_eni1_90_tpl(in_c1_eni1_90_tpl),
        .in_c1_eni1_91_tpl(in_c1_eni1_91_tpl),
        .in_c1_eni1_92_tpl(in_c1_eni1_92_tpl),
        .in_c1_eni1_93_tpl(in_c1_eni1_93_tpl),
        .in_c1_eni1_94_tpl(in_c1_eni1_94_tpl),
        .in_c1_eni1_95_tpl(in_c1_eni1_95_tpl),
        .in_c1_eni1_96_tpl(in_c1_eni1_96_tpl),
        .in_c1_eni1_97_tpl(in_c1_eni1_97_tpl),
        .in_c1_eni1_98_tpl(in_c1_eni1_98_tpl),
        .in_c1_eni1_99_tpl(in_c1_eni1_99_tpl),
        .in_c1_eni1_100_tpl(in_c1_eni1_100_tpl),
        .in_c1_eni1_101_tpl(in_c1_eni1_101_tpl),
        .in_c1_eni1_102_tpl(in_c1_eni1_102_tpl),
        .in_c1_eni1_103_tpl(in_c1_eni1_103_tpl),
        .in_c1_eni1_104_tpl(in_c1_eni1_104_tpl),
        .in_c1_eni1_105_tpl(in_c1_eni1_105_tpl),
        .in_c1_eni1_106_tpl(in_c1_eni1_106_tpl),
        .in_c1_eni1_107_tpl(in_c1_eni1_107_tpl),
        .in_c1_eni1_108_tpl(in_c1_eni1_108_tpl),
        .in_c1_eni1_109_tpl(in_c1_eni1_109_tpl),
        .in_c1_eni1_110_tpl(in_c1_eni1_110_tpl),
        .in_c1_eni1_111_tpl(in_c1_eni1_111_tpl),
        .in_c1_eni1_112_tpl(in_c1_eni1_112_tpl),
        .in_c1_eni1_113_tpl(in_c1_eni1_113_tpl),
        .in_c1_eni1_114_tpl(in_c1_eni1_114_tpl),
        .in_c1_eni1_115_tpl(in_c1_eni1_115_tpl),
        .in_c1_eni1_116_tpl(in_c1_eni1_116_tpl),
        .in_c1_eni1_117_tpl(in_c1_eni1_117_tpl),
        .in_c1_eni1_118_tpl(in_c1_eni1_118_tpl),
        .in_c1_eni1_119_tpl(in_c1_eni1_119_tpl),
        .in_c1_eni1_120_tpl(in_c1_eni1_120_tpl),
        .in_c1_eni1_121_tpl(in_c1_eni1_121_tpl),
        .in_c1_eni1_122_tpl(in_c1_eni1_122_tpl),
        .in_c1_eni1_123_tpl(in_c1_eni1_123_tpl),
        .in_c1_eni1_124_tpl(in_c1_eni1_124_tpl),
        .in_c1_eni1_125_tpl(in_c1_eni1_125_tpl),
        .in_c1_eni1_126_tpl(in_c1_eni1_126_tpl),
        .in_c1_eni1_127_tpl(in_c1_eni1_127_tpl),
        .in_c1_eni1_128_tpl(in_c1_eni1_128_tpl),
        .in_c1_eni1_129_tpl(in_c1_eni1_129_tpl),
        .in_c1_eni1_130_tpl(in_c1_eni1_130_tpl),
        .in_c1_eni1_131_tpl(in_c1_eni1_131_tpl),
        .in_c1_eni1_132_tpl(in_c1_eni1_132_tpl),
        .in_c1_eni1_133_tpl(in_c1_eni1_133_tpl),
        .in_c1_eni1_134_tpl(in_c1_eni1_134_tpl),
        .in_c1_eni1_135_tpl(in_c1_eni1_135_tpl),
        .in_c1_eni1_136_tpl(in_c1_eni1_136_tpl),
        .in_c1_eni1_137_tpl(in_c1_eni1_137_tpl),
        .in_c1_eni1_138_tpl(in_c1_eni1_138_tpl),
        .in_c1_eni1_139_tpl(in_c1_eni1_139_tpl),
        .in_c1_eni1_140_tpl(in_c1_eni1_140_tpl),
        .in_c1_eni1_141_tpl(in_c1_eni1_141_tpl),
        .in_c1_eni1_142_tpl(in_c1_eni1_142_tpl),
        .in_c1_eni1_143_tpl(in_c1_eni1_143_tpl),
        .in_c1_eni1_144_tpl(in_c1_eni1_144_tpl),
        .in_c1_eni1_145_tpl(in_c1_eni1_145_tpl),
        .in_c1_eni1_146_tpl(in_c1_eni1_146_tpl),
        .in_c1_eni1_147_tpl(in_c1_eni1_147_tpl),
        .in_c1_eni1_148_tpl(in_c1_eni1_148_tpl),
        .in_c1_eni1_149_tpl(in_c1_eni1_149_tpl),
        .in_c1_eni1_150_tpl(in_c1_eni1_150_tpl),
        .in_c1_eni1_151_tpl(in_c1_eni1_151_tpl),
        .in_c1_eni1_152_tpl(in_c1_eni1_152_tpl),
        .in_c1_eni1_153_tpl(in_c1_eni1_153_tpl),
        .in_c1_eni1_154_tpl(in_c1_eni1_154_tpl),
        .in_c1_eni1_155_tpl(in_c1_eni1_155_tpl),
        .out_intel_reserved_ffwd_0_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_100_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_100_0),
        .out_intel_reserved_ffwd_101_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_101_0),
        .out_intel_reserved_ffwd_102_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_102_0),
        .out_intel_reserved_ffwd_103_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_103_0),
        .out_intel_reserved_ffwd_104_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_104_0),
        .out_intel_reserved_ffwd_105_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_105_0),
        .out_intel_reserved_ffwd_106_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_106_0),
        .out_intel_reserved_ffwd_107_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_107_0),
        .out_intel_reserved_ffwd_108_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_108_0),
        .out_intel_reserved_ffwd_109_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_109_0),
        .out_intel_reserved_ffwd_10_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_110_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_110_0),
        .out_intel_reserved_ffwd_111_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_111_0),
        .out_intel_reserved_ffwd_112_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_112_0),
        .out_intel_reserved_ffwd_113_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_113_0),
        .out_intel_reserved_ffwd_114_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_114_0),
        .out_intel_reserved_ffwd_115_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_115_0),
        .out_intel_reserved_ffwd_116_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_116_0),
        .out_intel_reserved_ffwd_117_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_117_0),
        .out_intel_reserved_ffwd_118_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_118_0),
        .out_intel_reserved_ffwd_119_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_119_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_120_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_120_0),
        .out_intel_reserved_ffwd_121_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_121_0),
        .out_intel_reserved_ffwd_122_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_122_0),
        .out_intel_reserved_ffwd_123_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_123_0),
        .out_intel_reserved_ffwd_124_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_124_0),
        .out_intel_reserved_ffwd_125_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_125_0),
        .out_intel_reserved_ffwd_126_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_126_0),
        .out_intel_reserved_ffwd_127_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_127_0),
        .out_intel_reserved_ffwd_128_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_128_0),
        .out_intel_reserved_ffwd_129_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_129_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_130_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_130_0),
        .out_intel_reserved_ffwd_131_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_131_0),
        .out_intel_reserved_ffwd_132_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_132_0),
        .out_intel_reserved_ffwd_133_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_133_0),
        .out_intel_reserved_ffwd_134_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_134_0),
        .out_intel_reserved_ffwd_135_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_135_0),
        .out_intel_reserved_ffwd_136_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_136_0),
        .out_intel_reserved_ffwd_137_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_137_0),
        .out_intel_reserved_ffwd_138_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_138_0),
        .out_intel_reserved_ffwd_139_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_139_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_140_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_140_0),
        .out_intel_reserved_ffwd_141_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_141_0),
        .out_intel_reserved_ffwd_142_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_142_0),
        .out_intel_reserved_ffwd_143_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_143_0),
        .out_intel_reserved_ffwd_144_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_144_0),
        .out_intel_reserved_ffwd_145_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_145_0),
        .out_intel_reserved_ffwd_146_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_146_0),
        .out_intel_reserved_ffwd_147_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_147_0),
        .out_intel_reserved_ffwd_148_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_148_0),
        .out_intel_reserved_ffwd_149_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_149_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_150_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_150_0),
        .out_intel_reserved_ffwd_151_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_151_0),
        .out_intel_reserved_ffwd_152_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_152_0),
        .out_intel_reserved_ffwd_153_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_153_0),
        .out_intel_reserved_ffwd_154_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_154_0),
        .out_intel_reserved_ffwd_155_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_155_0),
        .out_intel_reserved_ffwd_156_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_156_0),
        .out_intel_reserved_ffwd_157_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_157_0),
        .out_intel_reserved_ffwd_158_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_158_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_50_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_60_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_70_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_80_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_90_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_92_0),
        .out_intel_reserved_ffwd_93_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_93_0),
        .out_intel_reserved_ffwd_94_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_94_0),
        .out_intel_reserved_ffwd_95_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_95_0),
        .out_intel_reserved_ffwd_96_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_96_0),
        .out_intel_reserved_ffwd_97_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_97_0),
        .out_intel_reserved_ffwd_98_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_98_0),
        .out_intel_reserved_ffwd_99_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_99_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_address(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_enable(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_read(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_write(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_writedata(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_o_valid),
        .out_unnamed_emscripten_compute_dom_pk_code1(),
        .out_unnamed_emscripten_compute_dom_pk_code162_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_100_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_100_0;

    // dupName_1_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_101_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_101_0;

    // dupName_2_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_102_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_102_0;

    // dupName_3_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_103_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_103_0;

    // dupName_4_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_104_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_104_0;

    // dupName_5_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_105_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_105_0;

    // dupName_6_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_106_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_106_0;

    // dupName_7_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_107_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_107_0;

    // dupName_8_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_108_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_108_0;

    // dupName_9_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_109_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_109_0;

    // dupName_10_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_10_0;

    // dupName_11_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_110_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_110_0;

    // dupName_12_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_111_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_111_0;

    // dupName_13_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_112_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_112_0;

    // dupName_14_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_113_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_113_0;

    // dupName_15_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_114_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_114_0;

    // dupName_16_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_115_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_115_0;

    // dupName_17_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_116_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_116_0;

    // dupName_18_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_117_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_117_0;

    // dupName_19_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_118_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_118_0;

    // dupName_20_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_119_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_119_0;

    // dupName_21_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_11_0;

    // dupName_22_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_120_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_120_0;

    // dupName_23_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_121_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_121_0;

    // dupName_24_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_122_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_122_0;

    // dupName_25_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_123_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_123_0;

    // dupName_26_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_124_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_124_0;

    // dupName_27_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_125_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_125_0;

    // dupName_28_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_126_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_126_0;

    // dupName_29_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_127_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_127_0;

    // dupName_30_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_128_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_128_0;

    // dupName_31_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_129_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_129_0;

    // dupName_32_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_33_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_130_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_130_0;

    // dupName_34_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_131_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_131_0;

    // dupName_35_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_132_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_132_0;

    // dupName_36_regfree_osync_x(GPOUT,49)
    assign out_intel_reserved_ffwd_133_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_133_0;

    // dupName_37_regfree_osync_x(GPOUT,50)
    assign out_intel_reserved_ffwd_134_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_134_0;

    // dupName_38_regfree_osync_x(GPOUT,51)
    assign out_intel_reserved_ffwd_135_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_135_0;

    // dupName_39_regfree_osync_x(GPOUT,52)
    assign out_intel_reserved_ffwd_136_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_136_0;

    // dupName_40_regfree_osync_x(GPOUT,53)
    assign out_intel_reserved_ffwd_137_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_137_0;

    // dupName_41_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_138_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_138_0;

    // dupName_42_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_139_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_139_0;

    // dupName_43_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_44_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_140_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_140_0;

    // dupName_45_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_141_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_141_0;

    // dupName_46_regfree_osync_x(GPOUT,59)
    assign out_intel_reserved_ffwd_142_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_142_0;

    // dupName_47_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_143_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_143_0;

    // dupName_48_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_144_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_144_0;

    // dupName_49_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_145_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_145_0;

    // dupName_50_regfree_osync_x(GPOUT,63)
    assign out_intel_reserved_ffwd_146_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_146_0;

    // dupName_51_regfree_osync_x(GPOUT,64)
    assign out_intel_reserved_ffwd_147_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_147_0;

    // dupName_52_regfree_osync_x(GPOUT,65)
    assign out_intel_reserved_ffwd_148_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_148_0;

    // dupName_53_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_149_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_149_0;

    // dupName_54_regfree_osync_x(GPOUT,67)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_55_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_150_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_150_0;

    // dupName_56_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_151_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_151_0;

    // dupName_57_regfree_osync_x(GPOUT,70)
    assign out_intel_reserved_ffwd_152_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_152_0;

    // dupName_58_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_153_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_153_0;

    // dupName_59_regfree_osync_x(GPOUT,72)
    assign out_intel_reserved_ffwd_154_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_154_0;

    // dupName_60_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_155_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_155_0;

    // dupName_61_regfree_osync_x(GPOUT,74)
    assign out_intel_reserved_ffwd_156_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_156_0;

    // dupName_62_regfree_osync_x(GPOUT,75)
    assign out_intel_reserved_ffwd_157_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_157_0;

    // dupName_63_regfree_osync_x(GPOUT,76)
    assign out_intel_reserved_ffwd_158_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_158_0;

    // dupName_64_regfree_osync_x(GPOUT,77)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_65_regfree_osync_x(GPOUT,78)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_66_regfree_osync_x(GPOUT,79)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_67_regfree_osync_x(GPOUT,80)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_68_regfree_osync_x(GPOUT,81)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_69_regfree_osync_x(GPOUT,82)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_70_regfree_osync_x(GPOUT,83)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_71_regfree_osync_x(GPOUT,84)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_72_regfree_osync_x(GPOUT,85)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_73_regfree_osync_x(GPOUT,86)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_74_regfree_osync_x(GPOUT,87)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_75_regfree_osync_x(GPOUT,88)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_76_regfree_osync_x(GPOUT,89)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_77_regfree_osync_x(GPOUT,90)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_78_regfree_osync_x(GPOUT,91)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_79_regfree_osync_x(GPOUT,92)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_80_regfree_osync_x(GPOUT,93)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_81_regfree_osync_x(GPOUT,94)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_82_regfree_osync_x(GPOUT,95)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_83_regfree_osync_x(GPOUT,96)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_84_regfree_osync_x(GPOUT,97)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_85_regfree_osync_x(GPOUT,98)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_86_regfree_osync_x(GPOUT,99)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_87_regfree_osync_x(GPOUT,100)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_88_regfree_osync_x(GPOUT,101)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_89_regfree_osync_x(GPOUT,102)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_90_regfree_osync_x(GPOUT,103)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_91_regfree_osync_x(GPOUT,104)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_92_regfree_osync_x(GPOUT,105)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_93_regfree_osync_x(GPOUT,106)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_94_regfree_osync_x(GPOUT,107)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_95_regfree_osync_x(GPOUT,108)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_96_regfree_osync_x(GPOUT,109)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_97_regfree_osync_x(GPOUT,110)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_98_regfree_osync_x(GPOUT,111)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_99_regfree_osync_x(GPOUT,112)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_47_0;

    // dupName_100_regfree_osync_x(GPOUT,113)
    assign out_intel_reserved_ffwd_48_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_48_0;

    // dupName_101_regfree_osync_x(GPOUT,114)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_102_regfree_osync_x(GPOUT,115)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_103_regfree_osync_x(GPOUT,116)
    assign out_intel_reserved_ffwd_50_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_50_0;

    // dupName_104_regfree_osync_x(GPOUT,117)
    assign out_intel_reserved_ffwd_51_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_51_0;

    // dupName_105_regfree_osync_x(GPOUT,118)
    assign out_intel_reserved_ffwd_52_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_52_0;

    // dupName_106_regfree_osync_x(GPOUT,119)
    assign out_intel_reserved_ffwd_53_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_53_0;

    // dupName_107_regfree_osync_x(GPOUT,120)
    assign out_intel_reserved_ffwd_54_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_54_0;

    // dupName_108_regfree_osync_x(GPOUT,121)
    assign out_intel_reserved_ffwd_55_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_55_0;

    // dupName_109_regfree_osync_x(GPOUT,122)
    assign out_intel_reserved_ffwd_56_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_56_0;

    // dupName_110_regfree_osync_x(GPOUT,123)
    assign out_intel_reserved_ffwd_57_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_57_0;

    // dupName_111_regfree_osync_x(GPOUT,124)
    assign out_intel_reserved_ffwd_58_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_58_0;

    // dupName_112_regfree_osync_x(GPOUT,125)
    assign out_intel_reserved_ffwd_59_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_59_0;

    // dupName_113_regfree_osync_x(GPOUT,126)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_114_regfree_osync_x(GPOUT,127)
    assign out_intel_reserved_ffwd_60_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_60_0;

    // dupName_115_regfree_osync_x(GPOUT,128)
    assign out_intel_reserved_ffwd_61_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_61_0;

    // dupName_116_regfree_osync_x(GPOUT,129)
    assign out_intel_reserved_ffwd_62_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_62_0;

    // dupName_117_regfree_osync_x(GPOUT,130)
    assign out_intel_reserved_ffwd_63_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_63_0;

    // dupName_118_regfree_osync_x(GPOUT,131)
    assign out_intel_reserved_ffwd_64_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_64_0;

    // dupName_119_regfree_osync_x(GPOUT,132)
    assign out_intel_reserved_ffwd_65_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_65_0;

    // dupName_120_regfree_osync_x(GPOUT,133)
    assign out_intel_reserved_ffwd_66_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_66_0;

    // dupName_121_regfree_osync_x(GPOUT,134)
    assign out_intel_reserved_ffwd_67_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_67_0;

    // dupName_122_regfree_osync_x(GPOUT,135)
    assign out_intel_reserved_ffwd_68_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_68_0;

    // dupName_123_regfree_osync_x(GPOUT,136)
    assign out_intel_reserved_ffwd_69_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_69_0;

    // dupName_124_regfree_osync_x(GPOUT,137)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_125_regfree_osync_x(GPOUT,138)
    assign out_intel_reserved_ffwd_70_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_70_0;

    // dupName_126_regfree_osync_x(GPOUT,139)
    assign out_intel_reserved_ffwd_71_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_71_0;

    // dupName_127_regfree_osync_x(GPOUT,140)
    assign out_intel_reserved_ffwd_72_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_72_0;

    // dupName_128_regfree_osync_x(GPOUT,141)
    assign out_intel_reserved_ffwd_73_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_73_0;

    // dupName_129_regfree_osync_x(GPOUT,142)
    assign out_intel_reserved_ffwd_74_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_74_0;

    // dupName_130_regfree_osync_x(GPOUT,143)
    assign out_intel_reserved_ffwd_75_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_75_0;

    // dupName_131_regfree_osync_x(GPOUT,144)
    assign out_intel_reserved_ffwd_76_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_76_0;

    // dupName_132_regfree_osync_x(GPOUT,145)
    assign out_intel_reserved_ffwd_77_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_77_0;

    // dupName_133_regfree_osync_x(GPOUT,146)
    assign out_intel_reserved_ffwd_78_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_78_0;

    // dupName_134_regfree_osync_x(GPOUT,147)
    assign out_intel_reserved_ffwd_79_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_79_0;

    // dupName_135_regfree_osync_x(GPOUT,148)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_136_regfree_osync_x(GPOUT,149)
    assign out_intel_reserved_ffwd_80_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_80_0;

    // dupName_137_regfree_osync_x(GPOUT,150)
    assign out_intel_reserved_ffwd_81_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_81_0;

    // dupName_138_regfree_osync_x(GPOUT,151)
    assign out_intel_reserved_ffwd_82_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_82_0;

    // dupName_139_regfree_osync_x(GPOUT,152)
    assign out_intel_reserved_ffwd_83_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_83_0;

    // dupName_140_regfree_osync_x(GPOUT,153)
    assign out_intel_reserved_ffwd_84_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_84_0;

    // dupName_141_regfree_osync_x(GPOUT,154)
    assign out_intel_reserved_ffwd_85_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_85_0;

    // dupName_142_regfree_osync_x(GPOUT,155)
    assign out_intel_reserved_ffwd_86_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_86_0;

    // dupName_143_regfree_osync_x(GPOUT,156)
    assign out_intel_reserved_ffwd_87_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_87_0;

    // dupName_144_regfree_osync_x(GPOUT,157)
    assign out_intel_reserved_ffwd_88_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_88_0;

    // dupName_145_regfree_osync_x(GPOUT,158)
    assign out_intel_reserved_ffwd_89_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_89_0;

    // dupName_146_regfree_osync_x(GPOUT,159)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_147_regfree_osync_x(GPOUT,160)
    assign out_intel_reserved_ffwd_90_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_90_0;

    // dupName_148_regfree_osync_x(GPOUT,161)
    assign out_intel_reserved_ffwd_91_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_91_0;

    // dupName_149_regfree_osync_x(GPOUT,162)
    assign out_intel_reserved_ffwd_92_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_92_0;

    // dupName_150_regfree_osync_x(GPOUT,163)
    assign out_intel_reserved_ffwd_93_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_93_0;

    // dupName_151_regfree_osync_x(GPOUT,164)
    assign out_intel_reserved_ffwd_94_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_94_0;

    // dupName_152_regfree_osync_x(GPOUT,165)
    assign out_intel_reserved_ffwd_95_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_95_0;

    // dupName_153_regfree_osync_x(GPOUT,166)
    assign out_intel_reserved_ffwd_96_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_96_0;

    // dupName_154_regfree_osync_x(GPOUT,167)
    assign out_intel_reserved_ffwd_97_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_97_0;

    // dupName_155_regfree_osync_x(GPOUT,168)
    assign out_intel_reserved_ffwd_98_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_98_0;

    // dupName_156_regfree_osync_x(GPOUT,169)
    assign out_intel_reserved_ffwd_99_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_99_0;

    // dupName_157_regfree_osync_x(GPOUT,170)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_intel_reserved_ffwd_9_0;

    // dupName_158_regfree_osync_x(GPOUT,171)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_address = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_address;

    // dupName_159_regfree_osync_x(GPOUT,172)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;

    // dupName_160_regfree_osync_x(GPOUT,173)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;

    // dupName_161_regfree_osync_x(GPOUT,174)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_enable = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;

    // dupName_162_regfree_osync_x(GPOUT,175)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_read = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_read;

    // dupName_163_regfree_osync_x(GPOUT,176)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_write = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_write;

    // dupName_164_regfree_osync_x(GPOUT,177)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_writedata = i_sfc_logic_s_c1_in_wt_entry_emscripten_compute_dom_pk_codes_c1_enter_emscripten_compute_dom_pk_code0_aunroll_x_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,181)@14
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_emscripten_compute_dom_pk_codes_c1_exit_emscripten_compute_dom_pk_code1_aunroll_x_out_valid_out;

endmodule
