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

// SystemVerilog created from emscripten_compute_dom_pk_code_bb_B1_start
// SystemVerilog created on Sun May 24 21:16:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [9919:0] in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata,
    input wire [0:0] in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid,
    input wire [63:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
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
    output wire [0:0] out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready,
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_stall_out;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_valid_out;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_100_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_101_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_102_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_103_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_104_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_105_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_106_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_107_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_108_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_109_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_10_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_110_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_111_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_112_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_113_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_114_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_115_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_116_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_117_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_118_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_119_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_11_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_120_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_121_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_122_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_123_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_124_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_125_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_126_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_127_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_128_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_129_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_12_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_130_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_131_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_132_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_133_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_134_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_135_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_136_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_137_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_138_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_139_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_13_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_140_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_141_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_142_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_143_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_144_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_145_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_146_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_147_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_148_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_149_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_14_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_150_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_151_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_152_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_153_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_154_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_155_0;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_156_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_157_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_158_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_15_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_16_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_17_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_18_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_19_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_20_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_21_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_22_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_23_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_24_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_25_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_26_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_27_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_28_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_29_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_30_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_31_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_32_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_33_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_34_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_35_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_36_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_37_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_38_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_39_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_40_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_41_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_42_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_43_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_44_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_45_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_46_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_47_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_48_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_49_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_50_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_51_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_52_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_53_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_54_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_55_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_56_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_57_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_58_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_59_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_60_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_61_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_62_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_63_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_64_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_65_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_66_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_67_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_68_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_69_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_6_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_70_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_71_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_72_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_73_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_74_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_75_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_76_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_77_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_78_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_79_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_7_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_80_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_81_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_82_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_83_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_84_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_85_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_86_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_87_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_88_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_89_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_90_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_91_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_92_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_93_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_94_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_95_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_96_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_97_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_98_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_99_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_valid_out;
    wire [0:0] emscripten_compute_dom_pk_code_B1_start_branch_out_stall_out;
    wire [0:0] emscripten_compute_dom_pk_code_B1_start_branch_out_valid_out_0;
    wire [0:0] emscripten_compute_dom_pk_code_B1_start_merge_out_stall_out_0;
    wire [0:0] emscripten_compute_dom_pk_code_B1_start_merge_out_stall_out_1;
    wire [0:0] emscripten_compute_dom_pk_code_B1_start_merge_out_valid_out;


    // emscripten_compute_dom_pk_code_B1_start_merge(BLACKBOX,4)
    emscripten_compute_dom_pk_code_B1_start_merge theemscripten_compute_dom_pk_code_B1_start_merge (
        .in_stall_in(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(emscripten_compute_dom_pk_code_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(emscripten_compute_dom_pk_code_B1_start_merge_out_stall_out_1),
        .out_valid_out(emscripten_compute_dom_pk_code_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // emscripten_compute_dom_pk_code_B1_start_branch(BLACKBOX,3)
    emscripten_compute_dom_pk_code_B1_start_branch theemscripten_compute_dom_pk_code_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_valid_out),
        .out_stall_out(emscripten_compute_dom_pk_code_B1_start_branch_out_stall_out),
        .out_valid_out_0(emscripten_compute_dom_pk_code_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_emscripten_compute_dom_pk_code_B1_start_stall_region(BLACKBOX,2)
    emscripten_compute_dom_pk_code_bb_B1_start_stall_region thebb_emscripten_compute_dom_pk_code_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata(in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata),
        .in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid(in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdata(in_lm58771_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_writeack(in_lm58771_emscripten_compute_dom_pk_code_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(emscripten_compute_dom_pk_code_B1_start_branch_out_stall_out),
        .in_valid_in(emscripten_compute_dom_pk_code_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_stall_out(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_valid_out(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_100_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_100_0),
        .out_intel_reserved_ffwd_101_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_101_0),
        .out_intel_reserved_ffwd_102_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_102_0),
        .out_intel_reserved_ffwd_103_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_103_0),
        .out_intel_reserved_ffwd_104_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_104_0),
        .out_intel_reserved_ffwd_105_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_105_0),
        .out_intel_reserved_ffwd_106_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_106_0),
        .out_intel_reserved_ffwd_107_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_107_0),
        .out_intel_reserved_ffwd_108_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_108_0),
        .out_intel_reserved_ffwd_109_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_109_0),
        .out_intel_reserved_ffwd_10_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_110_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_110_0),
        .out_intel_reserved_ffwd_111_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_111_0),
        .out_intel_reserved_ffwd_112_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_112_0),
        .out_intel_reserved_ffwd_113_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_113_0),
        .out_intel_reserved_ffwd_114_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_114_0),
        .out_intel_reserved_ffwd_115_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_115_0),
        .out_intel_reserved_ffwd_116_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_116_0),
        .out_intel_reserved_ffwd_117_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_117_0),
        .out_intel_reserved_ffwd_118_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_118_0),
        .out_intel_reserved_ffwd_119_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_119_0),
        .out_intel_reserved_ffwd_11_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_120_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_120_0),
        .out_intel_reserved_ffwd_121_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_121_0),
        .out_intel_reserved_ffwd_122_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_122_0),
        .out_intel_reserved_ffwd_123_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_123_0),
        .out_intel_reserved_ffwd_124_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_124_0),
        .out_intel_reserved_ffwd_125_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_125_0),
        .out_intel_reserved_ffwd_126_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_126_0),
        .out_intel_reserved_ffwd_127_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_127_0),
        .out_intel_reserved_ffwd_128_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_128_0),
        .out_intel_reserved_ffwd_129_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_129_0),
        .out_intel_reserved_ffwd_12_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_130_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_130_0),
        .out_intel_reserved_ffwd_131_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_131_0),
        .out_intel_reserved_ffwd_132_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_132_0),
        .out_intel_reserved_ffwd_133_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_133_0),
        .out_intel_reserved_ffwd_134_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_134_0),
        .out_intel_reserved_ffwd_135_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_135_0),
        .out_intel_reserved_ffwd_136_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_136_0),
        .out_intel_reserved_ffwd_137_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_137_0),
        .out_intel_reserved_ffwd_138_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_138_0),
        .out_intel_reserved_ffwd_139_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_139_0),
        .out_intel_reserved_ffwd_13_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_140_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_140_0),
        .out_intel_reserved_ffwd_141_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_141_0),
        .out_intel_reserved_ffwd_142_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_142_0),
        .out_intel_reserved_ffwd_143_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_143_0),
        .out_intel_reserved_ffwd_144_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_144_0),
        .out_intel_reserved_ffwd_145_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_145_0),
        .out_intel_reserved_ffwd_146_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_146_0),
        .out_intel_reserved_ffwd_147_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_147_0),
        .out_intel_reserved_ffwd_148_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_148_0),
        .out_intel_reserved_ffwd_149_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_149_0),
        .out_intel_reserved_ffwd_14_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_150_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_150_0),
        .out_intel_reserved_ffwd_151_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_151_0),
        .out_intel_reserved_ffwd_152_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_152_0),
        .out_intel_reserved_ffwd_153_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_153_0),
        .out_intel_reserved_ffwd_154_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_154_0),
        .out_intel_reserved_ffwd_155_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_155_0),
        .out_intel_reserved_ffwd_156_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_156_0),
        .out_intel_reserved_ffwd_157_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_157_0),
        .out_intel_reserved_ffwd_158_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_158_0),
        .out_intel_reserved_ffwd_15_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_2_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_30_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_3_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_40_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_4_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_50_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_5_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_60_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_6_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_70_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_7_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_80_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_8_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_90_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_92_0),
        .out_intel_reserved_ffwd_93_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_93_0),
        .out_intel_reserved_ffwd_94_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_94_0),
        .out_intel_reserved_ffwd_95_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_95_0),
        .out_intel_reserved_ffwd_96_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_96_0),
        .out_intel_reserved_ffwd_97_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_97_0),
        .out_intel_reserved_ffwd_98_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_98_0),
        .out_intel_reserved_ffwd_99_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_99_0),
        .out_intel_reserved_ffwd_9_0(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata),
        .out_pipeline_valid_out(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,6)
    assign out_feedback_stall_out_1 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_feedback_stall_out_1;

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,20)
    assign out_intel_reserved_ffwd_0_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_100_0(GPOUT,21)
    assign out_intel_reserved_ffwd_100_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_100_0;

    // out_intel_reserved_ffwd_101_0(GPOUT,22)
    assign out_intel_reserved_ffwd_101_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_101_0;

    // out_intel_reserved_ffwd_102_0(GPOUT,23)
    assign out_intel_reserved_ffwd_102_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_102_0;

    // out_intel_reserved_ffwd_103_0(GPOUT,24)
    assign out_intel_reserved_ffwd_103_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_103_0;

    // out_intel_reserved_ffwd_104_0(GPOUT,25)
    assign out_intel_reserved_ffwd_104_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_104_0;

    // out_intel_reserved_ffwd_105_0(GPOUT,26)
    assign out_intel_reserved_ffwd_105_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_105_0;

    // out_intel_reserved_ffwd_106_0(GPOUT,27)
    assign out_intel_reserved_ffwd_106_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_106_0;

    // out_intel_reserved_ffwd_107_0(GPOUT,28)
    assign out_intel_reserved_ffwd_107_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_107_0;

    // out_intel_reserved_ffwd_108_0(GPOUT,29)
    assign out_intel_reserved_ffwd_108_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_108_0;

    // out_intel_reserved_ffwd_109_0(GPOUT,30)
    assign out_intel_reserved_ffwd_109_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_109_0;

    // out_intel_reserved_ffwd_10_0(GPOUT,31)
    assign out_intel_reserved_ffwd_10_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_110_0(GPOUT,32)
    assign out_intel_reserved_ffwd_110_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_110_0;

    // out_intel_reserved_ffwd_111_0(GPOUT,33)
    assign out_intel_reserved_ffwd_111_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_111_0;

    // out_intel_reserved_ffwd_112_0(GPOUT,34)
    assign out_intel_reserved_ffwd_112_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_112_0;

    // out_intel_reserved_ffwd_113_0(GPOUT,35)
    assign out_intel_reserved_ffwd_113_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_113_0;

    // out_intel_reserved_ffwd_114_0(GPOUT,36)
    assign out_intel_reserved_ffwd_114_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_114_0;

    // out_intel_reserved_ffwd_115_0(GPOUT,37)
    assign out_intel_reserved_ffwd_115_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_115_0;

    // out_intel_reserved_ffwd_116_0(GPOUT,38)
    assign out_intel_reserved_ffwd_116_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_116_0;

    // out_intel_reserved_ffwd_117_0(GPOUT,39)
    assign out_intel_reserved_ffwd_117_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_117_0;

    // out_intel_reserved_ffwd_118_0(GPOUT,40)
    assign out_intel_reserved_ffwd_118_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_118_0;

    // out_intel_reserved_ffwd_119_0(GPOUT,41)
    assign out_intel_reserved_ffwd_119_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_119_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,42)
    assign out_intel_reserved_ffwd_11_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_120_0(GPOUT,43)
    assign out_intel_reserved_ffwd_120_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_120_0;

    // out_intel_reserved_ffwd_121_0(GPOUT,44)
    assign out_intel_reserved_ffwd_121_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_121_0;

    // out_intel_reserved_ffwd_122_0(GPOUT,45)
    assign out_intel_reserved_ffwd_122_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_122_0;

    // out_intel_reserved_ffwd_123_0(GPOUT,46)
    assign out_intel_reserved_ffwd_123_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_123_0;

    // out_intel_reserved_ffwd_124_0(GPOUT,47)
    assign out_intel_reserved_ffwd_124_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_124_0;

    // out_intel_reserved_ffwd_125_0(GPOUT,48)
    assign out_intel_reserved_ffwd_125_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_125_0;

    // out_intel_reserved_ffwd_126_0(GPOUT,49)
    assign out_intel_reserved_ffwd_126_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_126_0;

    // out_intel_reserved_ffwd_127_0(GPOUT,50)
    assign out_intel_reserved_ffwd_127_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_127_0;

    // out_intel_reserved_ffwd_128_0(GPOUT,51)
    assign out_intel_reserved_ffwd_128_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_128_0;

    // out_intel_reserved_ffwd_129_0(GPOUT,52)
    assign out_intel_reserved_ffwd_129_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_129_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,53)
    assign out_intel_reserved_ffwd_12_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_130_0(GPOUT,54)
    assign out_intel_reserved_ffwd_130_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_130_0;

    // out_intel_reserved_ffwd_131_0(GPOUT,55)
    assign out_intel_reserved_ffwd_131_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_131_0;

    // out_intel_reserved_ffwd_132_0(GPOUT,56)
    assign out_intel_reserved_ffwd_132_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_132_0;

    // out_intel_reserved_ffwd_133_0(GPOUT,57)
    assign out_intel_reserved_ffwd_133_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_133_0;

    // out_intel_reserved_ffwd_134_0(GPOUT,58)
    assign out_intel_reserved_ffwd_134_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_134_0;

    // out_intel_reserved_ffwd_135_0(GPOUT,59)
    assign out_intel_reserved_ffwd_135_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_135_0;

    // out_intel_reserved_ffwd_136_0(GPOUT,60)
    assign out_intel_reserved_ffwd_136_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_136_0;

    // out_intel_reserved_ffwd_137_0(GPOUT,61)
    assign out_intel_reserved_ffwd_137_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_137_0;

    // out_intel_reserved_ffwd_138_0(GPOUT,62)
    assign out_intel_reserved_ffwd_138_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_138_0;

    // out_intel_reserved_ffwd_139_0(GPOUT,63)
    assign out_intel_reserved_ffwd_139_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_139_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,64)
    assign out_intel_reserved_ffwd_13_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_140_0(GPOUT,65)
    assign out_intel_reserved_ffwd_140_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_140_0;

    // out_intel_reserved_ffwd_141_0(GPOUT,66)
    assign out_intel_reserved_ffwd_141_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_141_0;

    // out_intel_reserved_ffwd_142_0(GPOUT,67)
    assign out_intel_reserved_ffwd_142_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_142_0;

    // out_intel_reserved_ffwd_143_0(GPOUT,68)
    assign out_intel_reserved_ffwd_143_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_143_0;

    // out_intel_reserved_ffwd_144_0(GPOUT,69)
    assign out_intel_reserved_ffwd_144_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_144_0;

    // out_intel_reserved_ffwd_145_0(GPOUT,70)
    assign out_intel_reserved_ffwd_145_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_145_0;

    // out_intel_reserved_ffwd_146_0(GPOUT,71)
    assign out_intel_reserved_ffwd_146_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_146_0;

    // out_intel_reserved_ffwd_147_0(GPOUT,72)
    assign out_intel_reserved_ffwd_147_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_147_0;

    // out_intel_reserved_ffwd_148_0(GPOUT,73)
    assign out_intel_reserved_ffwd_148_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_148_0;

    // out_intel_reserved_ffwd_149_0(GPOUT,74)
    assign out_intel_reserved_ffwd_149_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_149_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,75)
    assign out_intel_reserved_ffwd_14_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_150_0(GPOUT,76)
    assign out_intel_reserved_ffwd_150_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_150_0;

    // out_intel_reserved_ffwd_151_0(GPOUT,77)
    assign out_intel_reserved_ffwd_151_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_151_0;

    // out_intel_reserved_ffwd_152_0(GPOUT,78)
    assign out_intel_reserved_ffwd_152_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_152_0;

    // out_intel_reserved_ffwd_153_0(GPOUT,79)
    assign out_intel_reserved_ffwd_153_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_153_0;

    // out_intel_reserved_ffwd_154_0(GPOUT,80)
    assign out_intel_reserved_ffwd_154_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_154_0;

    // out_intel_reserved_ffwd_155_0(GPOUT,81)
    assign out_intel_reserved_ffwd_155_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_155_0;

    // out_intel_reserved_ffwd_156_0(GPOUT,82)
    assign out_intel_reserved_ffwd_156_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_156_0;

    // out_intel_reserved_ffwd_157_0(GPOUT,83)
    assign out_intel_reserved_ffwd_157_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_157_0;

    // out_intel_reserved_ffwd_158_0(GPOUT,84)
    assign out_intel_reserved_ffwd_158_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_158_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,85)
    assign out_intel_reserved_ffwd_15_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,86)
    assign out_intel_reserved_ffwd_16_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,87)
    assign out_intel_reserved_ffwd_17_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,88)
    assign out_intel_reserved_ffwd_18_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,89)
    assign out_intel_reserved_ffwd_19_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,90)
    assign out_intel_reserved_ffwd_1_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,91)
    assign out_intel_reserved_ffwd_20_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,92)
    assign out_intel_reserved_ffwd_21_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,93)
    assign out_intel_reserved_ffwd_22_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,94)
    assign out_intel_reserved_ffwd_23_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,95)
    assign out_intel_reserved_ffwd_24_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,96)
    assign out_intel_reserved_ffwd_25_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,97)
    assign out_intel_reserved_ffwd_26_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,98)
    assign out_intel_reserved_ffwd_27_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,99)
    assign out_intel_reserved_ffwd_28_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,100)
    assign out_intel_reserved_ffwd_29_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,101)
    assign out_intel_reserved_ffwd_2_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,102)
    assign out_intel_reserved_ffwd_30_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,103)
    assign out_intel_reserved_ffwd_31_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,104)
    assign out_intel_reserved_ffwd_32_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,105)
    assign out_intel_reserved_ffwd_33_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,106)
    assign out_intel_reserved_ffwd_34_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,107)
    assign out_intel_reserved_ffwd_35_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,108)
    assign out_intel_reserved_ffwd_36_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,109)
    assign out_intel_reserved_ffwd_37_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,110)
    assign out_intel_reserved_ffwd_38_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,111)
    assign out_intel_reserved_ffwd_39_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,112)
    assign out_intel_reserved_ffwd_3_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,113)
    assign out_intel_reserved_ffwd_40_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,114)
    assign out_intel_reserved_ffwd_41_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,115)
    assign out_intel_reserved_ffwd_42_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,116)
    assign out_intel_reserved_ffwd_43_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_43_0;

    // out_intel_reserved_ffwd_44_0(GPOUT,117)
    assign out_intel_reserved_ffwd_44_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_44_0;

    // out_intel_reserved_ffwd_45_0(GPOUT,118)
    assign out_intel_reserved_ffwd_45_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_45_0;

    // out_intel_reserved_ffwd_46_0(GPOUT,119)
    assign out_intel_reserved_ffwd_46_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_46_0;

    // out_intel_reserved_ffwd_47_0(GPOUT,120)
    assign out_intel_reserved_ffwd_47_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_47_0;

    // out_intel_reserved_ffwd_48_0(GPOUT,121)
    assign out_intel_reserved_ffwd_48_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_48_0;

    // out_intel_reserved_ffwd_49_0(GPOUT,122)
    assign out_intel_reserved_ffwd_49_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_49_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,123)
    assign out_intel_reserved_ffwd_4_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_50_0(GPOUT,124)
    assign out_intel_reserved_ffwd_50_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_50_0;

    // out_intel_reserved_ffwd_51_0(GPOUT,125)
    assign out_intel_reserved_ffwd_51_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_51_0;

    // out_intel_reserved_ffwd_52_0(GPOUT,126)
    assign out_intel_reserved_ffwd_52_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_52_0;

    // out_intel_reserved_ffwd_53_0(GPOUT,127)
    assign out_intel_reserved_ffwd_53_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_53_0;

    // out_intel_reserved_ffwd_54_0(GPOUT,128)
    assign out_intel_reserved_ffwd_54_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_54_0;

    // out_intel_reserved_ffwd_55_0(GPOUT,129)
    assign out_intel_reserved_ffwd_55_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_55_0;

    // out_intel_reserved_ffwd_56_0(GPOUT,130)
    assign out_intel_reserved_ffwd_56_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_56_0;

    // out_intel_reserved_ffwd_57_0(GPOUT,131)
    assign out_intel_reserved_ffwd_57_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_57_0;

    // out_intel_reserved_ffwd_58_0(GPOUT,132)
    assign out_intel_reserved_ffwd_58_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_58_0;

    // out_intel_reserved_ffwd_59_0(GPOUT,133)
    assign out_intel_reserved_ffwd_59_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_59_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,134)
    assign out_intel_reserved_ffwd_5_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_60_0(GPOUT,135)
    assign out_intel_reserved_ffwd_60_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_60_0;

    // out_intel_reserved_ffwd_61_0(GPOUT,136)
    assign out_intel_reserved_ffwd_61_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_61_0;

    // out_intel_reserved_ffwd_62_0(GPOUT,137)
    assign out_intel_reserved_ffwd_62_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_62_0;

    // out_intel_reserved_ffwd_63_0(GPOUT,138)
    assign out_intel_reserved_ffwd_63_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_63_0;

    // out_intel_reserved_ffwd_64_0(GPOUT,139)
    assign out_intel_reserved_ffwd_64_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_64_0;

    // out_intel_reserved_ffwd_65_0(GPOUT,140)
    assign out_intel_reserved_ffwd_65_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_65_0;

    // out_intel_reserved_ffwd_66_0(GPOUT,141)
    assign out_intel_reserved_ffwd_66_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_66_0;

    // out_intel_reserved_ffwd_67_0(GPOUT,142)
    assign out_intel_reserved_ffwd_67_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_67_0;

    // out_intel_reserved_ffwd_68_0(GPOUT,143)
    assign out_intel_reserved_ffwd_68_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_68_0;

    // out_intel_reserved_ffwd_69_0(GPOUT,144)
    assign out_intel_reserved_ffwd_69_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_69_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,145)
    assign out_intel_reserved_ffwd_6_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_70_0(GPOUT,146)
    assign out_intel_reserved_ffwd_70_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_70_0;

    // out_intel_reserved_ffwd_71_0(GPOUT,147)
    assign out_intel_reserved_ffwd_71_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_71_0;

    // out_intel_reserved_ffwd_72_0(GPOUT,148)
    assign out_intel_reserved_ffwd_72_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_72_0;

    // out_intel_reserved_ffwd_73_0(GPOUT,149)
    assign out_intel_reserved_ffwd_73_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_73_0;

    // out_intel_reserved_ffwd_74_0(GPOUT,150)
    assign out_intel_reserved_ffwd_74_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_74_0;

    // out_intel_reserved_ffwd_75_0(GPOUT,151)
    assign out_intel_reserved_ffwd_75_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_75_0;

    // out_intel_reserved_ffwd_76_0(GPOUT,152)
    assign out_intel_reserved_ffwd_76_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_76_0;

    // out_intel_reserved_ffwd_77_0(GPOUT,153)
    assign out_intel_reserved_ffwd_77_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_77_0;

    // out_intel_reserved_ffwd_78_0(GPOUT,154)
    assign out_intel_reserved_ffwd_78_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_78_0;

    // out_intel_reserved_ffwd_79_0(GPOUT,155)
    assign out_intel_reserved_ffwd_79_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_79_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,156)
    assign out_intel_reserved_ffwd_7_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_80_0(GPOUT,157)
    assign out_intel_reserved_ffwd_80_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_80_0;

    // out_intel_reserved_ffwd_81_0(GPOUT,158)
    assign out_intel_reserved_ffwd_81_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_81_0;

    // out_intel_reserved_ffwd_82_0(GPOUT,159)
    assign out_intel_reserved_ffwd_82_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_82_0;

    // out_intel_reserved_ffwd_83_0(GPOUT,160)
    assign out_intel_reserved_ffwd_83_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_83_0;

    // out_intel_reserved_ffwd_84_0(GPOUT,161)
    assign out_intel_reserved_ffwd_84_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_84_0;

    // out_intel_reserved_ffwd_85_0(GPOUT,162)
    assign out_intel_reserved_ffwd_85_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_85_0;

    // out_intel_reserved_ffwd_86_0(GPOUT,163)
    assign out_intel_reserved_ffwd_86_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_86_0;

    // out_intel_reserved_ffwd_87_0(GPOUT,164)
    assign out_intel_reserved_ffwd_87_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_87_0;

    // out_intel_reserved_ffwd_88_0(GPOUT,165)
    assign out_intel_reserved_ffwd_88_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_88_0;

    // out_intel_reserved_ffwd_89_0(GPOUT,166)
    assign out_intel_reserved_ffwd_89_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_89_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,167)
    assign out_intel_reserved_ffwd_8_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_90_0(GPOUT,168)
    assign out_intel_reserved_ffwd_90_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_90_0;

    // out_intel_reserved_ffwd_91_0(GPOUT,169)
    assign out_intel_reserved_ffwd_91_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_91_0;

    // out_intel_reserved_ffwd_92_0(GPOUT,170)
    assign out_intel_reserved_ffwd_92_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_92_0;

    // out_intel_reserved_ffwd_93_0(GPOUT,171)
    assign out_intel_reserved_ffwd_93_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_93_0;

    // out_intel_reserved_ffwd_94_0(GPOUT,172)
    assign out_intel_reserved_ffwd_94_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_94_0;

    // out_intel_reserved_ffwd_95_0(GPOUT,173)
    assign out_intel_reserved_ffwd_95_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_95_0;

    // out_intel_reserved_ffwd_96_0(GPOUT,174)
    assign out_intel_reserved_ffwd_96_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_96_0;

    // out_intel_reserved_ffwd_97_0(GPOUT,175)
    assign out_intel_reserved_ffwd_97_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_97_0;

    // out_intel_reserved_ffwd_98_0(GPOUT,176)
    assign out_intel_reserved_ffwd_98_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_98_0;

    // out_intel_reserved_ffwd_99_0(GPOUT,177)
    assign out_intel_reserved_ffwd_99_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_99_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,178)
    assign out_intel_reserved_ffwd_9_0 = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_intel_reserved_ffwd_9_0;

    // out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready(GPOUT,179)
    assign out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_address(GPOUT,180)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_address;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,181)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,182)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_enable(GPOUT,183)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_read(GPOUT,184)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_read;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_write(GPOUT,185)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_write;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,186)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;

    // out_stall_out_0(GPOUT,187)
    assign out_stall_out_0 = emscripten_compute_dom_pk_code_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,188)
    assign out_stall_out_1 = emscripten_compute_dom_pk_code_B1_start_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,189)
    assign out_valid_out_0 = emscripten_compute_dom_pk_code_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,191)
    assign out_pipeline_valid_out = bb_emscripten_compute_dom_pk_code_B1_start_stall_region_out_pipeline_valid_out;

endmodule
