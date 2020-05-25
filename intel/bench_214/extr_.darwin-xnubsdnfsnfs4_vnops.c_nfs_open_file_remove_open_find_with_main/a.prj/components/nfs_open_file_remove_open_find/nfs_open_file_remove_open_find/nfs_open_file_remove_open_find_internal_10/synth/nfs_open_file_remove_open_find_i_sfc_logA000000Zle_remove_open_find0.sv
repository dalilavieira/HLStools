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

// SystemVerilog created from nfs_open_file_remove_open_find_i_sfc_logA000000Zle_remove_open_find0
// SystemVerilog created on Sun May 24 22:30:42 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module nfs_open_file_remove_open_find_i_sfc_logA000000Zle_remove_open_find0 (
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [0:0] out_c0_exi7_2_tpl,
    output wire [0:0] out_c0_exi7_3_tpl,
    output wire [0:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_nfs_open_file_remove_open_find2,
    input wire [0:0] in_c0_eni66_0_tpl,
    input wire [31:0] in_c0_eni66_1_tpl,
    input wire [0:0] in_c0_eni66_2_tpl,
    input wire [0:0] in_c0_eni66_3_tpl,
    input wire [0:0] in_c0_eni66_4_tpl,
    input wire [0:0] in_c0_eni66_5_tpl,
    input wire [0:0] in_c0_eni66_6_tpl,
    input wire [0:0] in_c0_eni66_7_tpl,
    input wire [0:0] in_c0_eni66_8_tpl,
    input wire [0:0] in_c0_eni66_9_tpl,
    input wire [0:0] in_c0_eni66_10_tpl,
    input wire [0:0] in_c0_eni66_11_tpl,
    input wire [0:0] in_c0_eni66_12_tpl,
    input wire [0:0] in_c0_eni66_13_tpl,
    input wire [0:0] in_c0_eni66_14_tpl,
    input wire [0:0] in_c0_eni66_15_tpl,
    input wire [0:0] in_c0_eni66_16_tpl,
    input wire [0:0] in_c0_eni66_17_tpl,
    input wire [0:0] in_c0_eni66_18_tpl,
    input wire [0:0] in_c0_eni66_19_tpl,
    input wire [0:0] in_c0_eni66_20_tpl,
    input wire [0:0] in_c0_eni66_21_tpl,
    input wire [0:0] in_c0_eni66_22_tpl,
    input wire [0:0] in_c0_eni66_23_tpl,
    input wire [0:0] in_c0_eni66_24_tpl,
    input wire [0:0] in_c0_eni66_25_tpl,
    input wire [0:0] in_c0_eni66_26_tpl,
    input wire [0:0] in_c0_eni66_27_tpl,
    input wire [0:0] in_c0_eni66_28_tpl,
    input wire [0:0] in_c0_eni66_29_tpl,
    input wire [0:0] in_c0_eni66_30_tpl,
    input wire [0:0] in_c0_eni66_31_tpl,
    input wire [0:0] in_c0_eni66_32_tpl,
    input wire [0:0] in_c0_eni66_33_tpl,
    input wire [0:0] in_c0_eni66_34_tpl,
    input wire [0:0] in_c0_eni66_35_tpl,
    input wire [0:0] in_c0_eni66_36_tpl,
    input wire [0:0] in_c0_eni66_37_tpl,
    input wire [0:0] in_c0_eni66_38_tpl,
    input wire [0:0] in_c0_eni66_39_tpl,
    input wire [0:0] in_c0_eni66_40_tpl,
    input wire [0:0] in_c0_eni66_41_tpl,
    input wire [0:0] in_c0_eni66_42_tpl,
    input wire [0:0] in_c0_eni66_43_tpl,
    input wire [0:0] in_c0_eni66_44_tpl,
    input wire [0:0] in_c0_eni66_45_tpl,
    input wire [0:0] in_c0_eni66_46_tpl,
    input wire [0:0] in_c0_eni66_47_tpl,
    input wire [0:0] in_c0_eni66_48_tpl,
    input wire [0:0] in_c0_eni66_49_tpl,
    input wire [0:0] in_c0_eni66_50_tpl,
    input wire [0:0] in_c0_eni66_51_tpl,
    input wire [0:0] in_c0_eni66_52_tpl,
    input wire [0:0] in_c0_eni66_53_tpl,
    input wire [0:0] in_c0_eni66_54_tpl,
    input wire [0:0] in_c0_eni66_55_tpl,
    input wire [0:0] in_c0_eni66_56_tpl,
    input wire [0:0] in_c0_eni66_57_tpl,
    input wire [0:0] in_c0_eni66_58_tpl,
    input wire [0:0] in_c0_eni66_59_tpl,
    input wire [0:0] in_c0_eni66_60_tpl,
    input wire [0:0] in_c0_eni66_61_tpl,
    input wire [0:0] in_c0_eni66_62_tpl,
    input wire [0:0] in_c0_eni66_63_tpl,
    input wire [0:0] in_c0_eni66_64_tpl,
    input wire [0:0] in_c0_eni66_65_tpl,
    input wire [0:0] in_c0_eni66_66_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66_out_feedback_valid_out_3;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_100_nfs_open_file_remove_open_find81_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_101_nfs_open_file_remove_open_find82_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_102_nfs_open_file_remove_open_find83_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_103_nfs_open_file_remove_open_find84_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_104_nfs_open_file_remove_open_find85_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_109_nfs_open_file_remove_open_find87_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_10_nfs_open_file_remove_open_find7_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_110_nfs_open_file_remove_open_find88_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_111_nfs_open_file_remove_open_find89_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_112_nfs_open_file_remove_open_find90_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_113_nfs_open_file_remove_open_find91_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_114_nfs_open_file_remove_open_find92_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_11_nfs_open_file_remove_open_find8_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_123_nfs_open_file_remove_open_find94_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_125_nfs_open_file_remove_open_find95_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_126_nfs_open_file_remove_open_find96_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_127_nfs_open_file_remove_open_find97_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_128_nfs_open_file_remove_open_find98_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_129_nfs_open_file_remove_open_find99_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_12_nfs_open_file_remove_open_find9_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_131_nfs_open_file_remove_open_find101_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_132_nfs_open_file_remove_open_find102_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_133_nfs_open_file_remove_open_find103_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_134_nfs_open_file_remove_open_find104_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_13_nfs_open_file_remove_open_find10_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_14_nfs_open_file_remove_open_find11_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_17_nfs_open_file_remove_open_find14_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_19_nfs_open_file_remove_open_find16_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_20_nfs_open_file_remove_open_find17_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_211_nfs_open_file_remove_open_find105_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_213_nfs_open_file_remove_open_find107_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_214_nfs_open_file_remove_open_find108_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_215_nfs_open_file_remove_open_find109_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_21_nfs_open_file_remove_open_find18_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_220_nfs_open_file_remove_open_find110_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_224_nfs_open_file_remove_open_find112_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_225_nfs_open_file_remove_open_find113_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_226_nfs_open_file_remove_open_find114_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_227_nfs_open_file_remove_open_find115_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_228_nfs_open_file_remove_open_find116_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_229_nfs_open_file_remove_open_find117_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_22_nfs_open_file_remove_open_find19_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_234_nfs_open_file_remove_open_find119_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_235_nfs_open_file_remove_open_find120_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_236_nfs_open_file_remove_open_find121_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_237_nfs_open_file_remove_open_find122_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_238_nfs_open_file_remove_open_find123_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_239_nfs_open_file_remove_open_find124_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_23_nfs_open_file_remove_open_find20_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_248_nfs_open_file_remove_open_find126_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_24_nfs_open_file_remove_open_find21_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_250_nfs_open_file_remove_open_find127_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_251_nfs_open_file_remove_open_find128_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_252_nfs_open_file_remove_open_find129_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_253_nfs_open_file_remove_open_find130_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_254_nfs_open_file_remove_open_find131_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_256_nfs_open_file_remove_open_find133_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_257_nfs_open_file_remove_open_find134_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_258_nfs_open_file_remove_open_find135_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_259_nfs_open_file_remove_open_find136_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_25_nfs_open_file_remove_open_find22_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_26_nfs_open_file_remove_open_find23_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_27_nfs_open_file_remove_open_find24_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_28_nfs_open_file_remove_open_find25_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_32_nfs_open_file_remove_open_find29_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_338_nfs_open_file_remove_open_find137_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_339_nfs_open_file_remove_open_find138_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_33_nfs_open_file_remove_open_find30_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_340_nfs_open_file_remove_open_find139_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_341_nfs_open_file_remove_open_find140_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_342_nfs_open_file_remove_open_find141_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_343_nfs_open_file_remove_open_find142_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_344_nfs_open_file_remove_open_find143_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_345_nfs_open_file_remove_open_find144_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_346_nfs_open_file_remove_open_find145_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_347_nfs_open_file_remove_open_find146_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_348_nfs_open_file_remove_open_find147_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_34_nfs_open_file_remove_open_find31_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_352_nfs_open_file_remove_open_find151_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_353_nfs_open_file_remove_open_find152_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_354_nfs_open_file_remove_open_find153_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_359_nfs_open_file_remove_open_find155_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_35_nfs_open_file_remove_open_find32_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_360_nfs_open_file_remove_open_find156_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_361_nfs_open_file_remove_open_find157_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_362_nfs_open_file_remove_open_find158_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_363_nfs_open_file_remove_open_find159_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_364_nfs_open_file_remove_open_find160_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_36_nfs_open_file_remove_open_find33_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_373_nfs_open_file_remove_open_find162_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_375_nfs_open_file_remove_open_find163_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_376_nfs_open_file_remove_open_find164_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_377_nfs_open_file_remove_open_find165_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_378_nfs_open_file_remove_open_find166_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_379_nfs_open_file_remove_open_find167_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_37_nfs_open_file_remove_open_find34_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_381_nfs_open_file_remove_open_find169_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_382_nfs_open_file_remove_open_find170_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_383_nfs_open_file_remove_open_find171_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_384_nfs_open_file_remove_open_find172_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_38_nfs_open_file_remove_open_find35_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_39_nfs_open_file_remove_open_find36_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_42_nfs_open_file_remove_open_find39_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_43_nfs_open_file_remove_open_find40_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_446_nfs_open_file_remove_open_find173_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_447_nfs_open_file_remove_open_find174_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_448_nfs_open_file_remove_open_find175_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_449_nfs_open_file_remove_open_find176_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_44_nfs_open_file_remove_open_find41_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_450_nfs_open_file_remove_open_find177_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_451_nfs_open_file_remove_open_find178_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_452_nfs_open_file_remove_open_find179_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_457_nfs_open_file_remove_open_find180_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_458_nfs_open_file_remove_open_find181_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_459_nfs_open_file_remove_open_find182_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_45_nfs_open_file_remove_open_find42_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_462_nfs_open_file_remove_open_find183_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_464_nfs_open_file_remove_open_find184_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_465_nfs_open_file_remove_open_find185_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_468_nfs_open_file_remove_open_find188_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_469_nfs_open_file_remove_open_find189_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_46_nfs_open_file_remove_open_find43_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_470_nfs_open_file_remove_open_find190_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_479_nfs_open_file_remove_open_find192_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_47_nfs_open_file_remove_open_find44_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_481_nfs_open_file_remove_open_find193_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_482_nfs_open_file_remove_open_find194_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_483_nfs_open_file_remove_open_find195_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_484_nfs_open_file_remove_open_find196_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_485_nfs_open_file_remove_open_find197_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_487_nfs_open_file_remove_open_find199_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_488_nfs_open_file_remove_open_find200_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_489_nfs_open_file_remove_open_find201_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_48_nfs_open_file_remove_open_find45_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_490_nfs_open_file_remove_open_find202_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_49_nfs_open_file_remove_open_find46_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_50_nfs_open_file_remove_open_find47_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_51_nfs_open_file_remove_open_find48_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_54_nfs_open_file_remove_open_find51_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_55_nfs_open_file_remove_open_find52_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_56_nfs_open_file_remove_open_find53_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_58_nfs_open_file_remove_open_find55_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_595_nfs_open_file_remove_open_find203_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_596_nfs_open_file_remove_open_find204_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_597_nfs_open_file_remove_open_find205_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_598_nfs_open_file_remove_open_find206_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_599_nfs_open_file_remove_open_find207_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_59_nfs_open_file_remove_open_find56_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_607_nfs_open_file_remove_open_find208_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_608_nfs_open_file_remove_open_find209_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_609_nfs_open_file_remove_open_find210_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_60_nfs_open_file_remove_open_find57_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_613_nfs_open_file_remove_open_find211_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_617_nfs_open_file_remove_open_find214_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_618_nfs_open_file_remove_open_find215_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_61_nfs_open_file_remove_open_find58_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_620_nfs_open_file_remove_open_find217_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_621_nfs_open_file_remove_open_find218_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_623_nfs_open_file_remove_open_find220_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_624_nfs_open_file_remove_open_find221_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_625_nfs_open_file_remove_open_find222_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_626_nfs_open_file_remove_open_find223_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_62_nfs_open_file_remove_open_find59_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_64_nfs_open_file_remove_open_find61_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_65_nfs_open_file_remove_open_find62_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_66_nfs_open_file_remove_open_find63_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_67_nfs_open_file_remove_open_find64_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_6_nfs_open_file_remove_open_find3_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_726_nfs_open_file_remove_open_find224_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_727_nfs_open_file_remove_open_find225_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_728_nfs_open_file_remove_open_find226_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_729_nfs_open_file_remove_open_find227_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_730_nfs_open_file_remove_open_find228_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_731_nfs_open_file_remove_open_find229_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_732_nfs_open_file_remove_open_find230_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_733_nfs_open_file_remove_open_find231_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_744_nfs_open_file_remove_open_find232_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_745_nfs_open_file_remove_open_find233_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_746_nfs_open_file_remove_open_find234_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_747_nfs_open_file_remove_open_find235_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_74_nfs_open_file_remove_open_find67_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_753_nfs_open_file_remove_open_find236_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_754_nfs_open_file_remove_open_find237_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_757_nfs_open_file_remove_open_find238_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_759_nfs_open_file_remove_open_find239_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_75_nfs_open_file_remove_open_find68_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_76_nfs_open_file_remove_open_find69_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_7_nfs_open_file_remove_open_find4_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_81_nfs_open_file_remove_open_find70_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_84_nfs_open_file_remove_open_find71_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_86_nfs_open_file_remove_open_find73_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_87_nfs_open_file_remove_open_find74_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_88_nfs_open_file_remove_open_find75_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_89_nfs_open_file_remove_open_find76_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_8_nfs_open_file_remove_open_find5_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_90_nfs_open_file_remove_open_find77_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_95_nfs_open_file_remove_open_find78_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79_qi;
    reg [0:0] i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_99_nfs_open_file_remove_open_find80_q;
    wire [0:0] i_reduction_nfs_open_file_remove_open_find_9_nfs_open_file_remove_open_find6_q;
    wire [0:0] i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_together248_aunroll_x_in_c0_eni66_2_tpl_1_q;
    reg [0:0] redist1_sync_together248_aunroll_x_in_c0_eni66_3_tpl_1_q;
    reg [0:0] redist2_sync_together248_aunroll_x_in_c0_eni66_4_tpl_1_q;
    reg [0:0] redist3_sync_together248_aunroll_x_in_c0_eni66_5_tpl_1_q;
    reg [0:0] redist4_sync_together248_aunroll_x_in_c0_eni66_6_tpl_1_q;
    reg [0:0] redist5_sync_together248_aunroll_x_in_c0_eni66_7_tpl_1_q;
    reg [0:0] redist6_sync_together248_aunroll_x_in_c0_eni66_15_tpl_1_q;
    reg [0:0] redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_q;
    reg [0:0] redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_delay_0;
    reg [0:0] redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_q;
    reg [0:0] redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_delay_0;
    reg [0:0] redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_q;
    reg [0:0] redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_delay_0;
    reg [0:0] redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_q;
    reg [0:0] redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_delay_0;
    reg [0:0] redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_q;
    reg [0:0] redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_delay_0;
    reg [0:0] redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_q;
    reg [0:0] redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_delay_0;
    reg [0:0] redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_q;
    reg [0:0] redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_0;
    reg [0:0] redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_1;
    reg [0:0] redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_q;
    reg [0:0] redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_0;
    reg [0:0] redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_1;
    reg [0:0] redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_q;
    reg [0:0] redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_0;
    reg [0:0] redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_1;
    reg [0:0] redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_q;
    reg [0:0] redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_0;
    reg [0:0] redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_1;
    reg [0:0] redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_q;
    reg [0:0] redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_0;
    reg [0:0] redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_1;
    reg [0:0] redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_q;
    reg [0:0] redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_0;
    reg [0:0] redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_1;
    reg [0:0] redist19_sync_together248_aunroll_x_in_c0_eni66_40_tpl_1_q;
    reg [0:0] redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_q;
    reg [0:0] redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_0;
    reg [0:0] redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_1;
    reg [0:0] redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_q;
    reg [0:0] redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_0;
    reg [0:0] redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_1;
    reg [0:0] redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_2;
    reg [0:0] redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q;
    reg [0:0] redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_0;
    reg [0:0] redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_1;
    reg [0:0] redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_2;
    reg [0:0] redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q;
    reg [0:0] redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_0;
    reg [0:0] redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_1;
    reg [0:0] redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_2;
    reg [0:0] redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q;
    reg [0:0] redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_0;
    reg [0:0] redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_1;
    reg [0:0] redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_2;
    reg [0:0] redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q;
    reg [0:0] redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_0;
    reg [0:0] redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_1;
    reg [0:0] redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_2;
    reg [0:0] redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q;
    reg [0:0] redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_0;
    reg [0:0] redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_1;
    reg [0:0] redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_2;
    reg [0:0] redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_3;
    reg [0:0] redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q;
    reg [0:0] redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_0;
    reg [0:0] redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_1;
    reg [0:0] redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_2;
    reg [0:0] redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_3;
    reg [0:0] redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q;
    reg [0:0] redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_0;
    reg [0:0] redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_1;
    reg [0:0] redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_2;
    reg [0:0] redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_3;
    reg [0:0] redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q;
    reg [0:0] redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_0;
    reg [0:0] redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_1;
    reg [0:0] redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_2;
    reg [0:0] redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_3;
    reg [0:0] redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q;
    reg [0:0] redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_0;
    reg [0:0] redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_1;
    reg [0:0] redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_2;
    reg [0:0] redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_3;
    reg [0:0] redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q;
    reg [0:0] redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q;
    reg [0:0] redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q;
    reg [0:0] redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q;
    reg [0:0] redist35_sync_together248_aunroll_x_in_c0_eni66_65_tpl_1_q;
    reg [0:0] redist36_sync_together248_aunroll_x_in_c0_eni66_66_tpl_1_q;
    reg [0:0] redist37_sync_together248_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist37_sync_together248_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist37_sync_together248_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist37_sync_together248_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist37_sync_together248_aunroll_x_in_i_valid_5_delay_3;
    reg [0:0] redist38_i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b_1_q;
    reg [0:0] redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_q;
    reg [0:0] redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_0;
    reg [0:0] redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_1;
    reg [0:0] redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_2;
    reg [0:0] redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_q;
    reg [0:0] redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_0;
    reg [0:0] redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_1;
    reg [0:0] redist41_i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q_1_q;
    reg [0:0] redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q;
    reg [0:0] redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_0;
    reg [0:0] redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_1;
    reg [0:0] redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_2;
    reg [0:0] redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q;
    reg [0:0] redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_0;
    reg [0:0] redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_1;
    reg [0:0] redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_2;
    reg [0:0] redist44_i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q_2_q;
    reg [0:0] redist45_i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q_2_q;
    reg [0:0] redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_q;
    reg [0:0] redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_0;
    reg [0:0] redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_1;
    reg [0:0] redist47_i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q_1_q;
    reg [0:0] redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_q;
    reg [0:0] redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_delay_0;
    reg [0:0] redist49_i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q_2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist37_sync_together248_aunroll_x_in_i_valid_5(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist37_sync_together248_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_1 <= redist37_sync_together248_aunroll_x_in_i_valid_5_delay_0;
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_2 <= redist37_sync_together248_aunroll_x_in_i_valid_5_delay_1;
            redist37_sync_together248_aunroll_x_in_i_valid_5_delay_3 <= redist37_sync_together248_aunroll_x_in_i_valid_5_delay_2;
            redist37_sync_together248_aunroll_x_in_i_valid_5_q <= redist37_sync_together248_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,248)@977 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist37_sync_together248_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_733_nfs_open_file_remove_open_find231(LOGICAL,215)@972
    assign i_reduction_nfs_open_file_remove_open_find_733_nfs_open_file_remove_open_find231_q = in_c0_eni66_54_tpl | in_c0_eni66_55_tpl;

    // i_reduction_nfs_open_file_remove_open_find_732_nfs_open_file_remove_open_find230(LOGICAL,214)@972
    assign i_reduction_nfs_open_file_remove_open_find_732_nfs_open_file_remove_open_find230_q = in_c0_eni66_52_tpl | in_c0_eni66_53_tpl;

    // i_reduction_nfs_open_file_remove_open_find_747_nfs_open_file_remove_open_find235(LOGICAL,219)@972
    assign i_reduction_nfs_open_file_remove_open_find_747_nfs_open_file_remove_open_find235_q = i_reduction_nfs_open_file_remove_open_find_732_nfs_open_file_remove_open_find230_q | i_reduction_nfs_open_file_remove_open_find_733_nfs_open_file_remove_open_find231_q;

    // i_reduction_nfs_open_file_remove_open_find_731_nfs_open_file_remove_open_find229(LOGICAL,213)@972
    assign i_reduction_nfs_open_file_remove_open_find_731_nfs_open_file_remove_open_find229_q = in_c0_eni66_50_tpl | in_c0_eni66_51_tpl;

    // i_reduction_nfs_open_file_remove_open_find_730_nfs_open_file_remove_open_find228(LOGICAL,212)@972
    assign i_reduction_nfs_open_file_remove_open_find_730_nfs_open_file_remove_open_find228_q = in_c0_eni66_48_tpl | in_c0_eni66_49_tpl;

    // i_reduction_nfs_open_file_remove_open_find_746_nfs_open_file_remove_open_find234(LOGICAL,218)@972
    assign i_reduction_nfs_open_file_remove_open_find_746_nfs_open_file_remove_open_find234_q = i_reduction_nfs_open_file_remove_open_find_730_nfs_open_file_remove_open_find228_q | i_reduction_nfs_open_file_remove_open_find_731_nfs_open_file_remove_open_find229_q;

    // i_reduction_nfs_open_file_remove_open_find_754_nfs_open_file_remove_open_find237(LOGICAL,222)@972
    assign i_reduction_nfs_open_file_remove_open_find_754_nfs_open_file_remove_open_find237_q = i_reduction_nfs_open_file_remove_open_find_746_nfs_open_file_remove_open_find234_q | i_reduction_nfs_open_file_remove_open_find_747_nfs_open_file_remove_open_find235_q;

    // i_reduction_nfs_open_file_remove_open_find_759_nfs_open_file_remove_open_find239(LOGICAL,224)@972
    assign i_reduction_nfs_open_file_remove_open_find_759_nfs_open_file_remove_open_find239_q = in_c0_eni66_56_tpl | i_reduction_nfs_open_file_remove_open_find_754_nfs_open_file_remove_open_find237_q;

    // i_reduction_nfs_open_file_remove_open_find_729_nfs_open_file_remove_open_find227(LOGICAL,211)@972
    assign i_reduction_nfs_open_file_remove_open_find_729_nfs_open_file_remove_open_find227_q = in_c0_eni66_46_tpl | in_c0_eni66_47_tpl;

    // i_reduction_nfs_open_file_remove_open_find_728_nfs_open_file_remove_open_find226(LOGICAL,210)@972
    assign i_reduction_nfs_open_file_remove_open_find_728_nfs_open_file_remove_open_find226_q = in_c0_eni66_44_tpl | in_c0_eni66_45_tpl;

    // i_reduction_nfs_open_file_remove_open_find_745_nfs_open_file_remove_open_find233(LOGICAL,217)@972
    assign i_reduction_nfs_open_file_remove_open_find_745_nfs_open_file_remove_open_find233_q = i_reduction_nfs_open_file_remove_open_find_728_nfs_open_file_remove_open_find226_q | i_reduction_nfs_open_file_remove_open_find_729_nfs_open_file_remove_open_find227_q;

    // i_reduction_nfs_open_file_remove_open_find_727_nfs_open_file_remove_open_find225(LOGICAL,209)@972
    assign i_reduction_nfs_open_file_remove_open_find_727_nfs_open_file_remove_open_find225_q = in_c0_eni66_42_tpl | in_c0_eni66_43_tpl;

    // i_reduction_nfs_open_file_remove_open_find_726_nfs_open_file_remove_open_find224(LOGICAL,208)@972
    assign i_reduction_nfs_open_file_remove_open_find_726_nfs_open_file_remove_open_find224_q = in_c0_eni66_40_tpl | in_c0_eni66_41_tpl;

    // i_reduction_nfs_open_file_remove_open_find_744_nfs_open_file_remove_open_find232(LOGICAL,216)@972
    assign i_reduction_nfs_open_file_remove_open_find_744_nfs_open_file_remove_open_find232_q = i_reduction_nfs_open_file_remove_open_find_726_nfs_open_file_remove_open_find224_q | i_reduction_nfs_open_file_remove_open_find_727_nfs_open_file_remove_open_find225_q;

    // i_reduction_nfs_open_file_remove_open_find_753_nfs_open_file_remove_open_find236(LOGICAL,221)@972
    assign i_reduction_nfs_open_file_remove_open_find_753_nfs_open_file_remove_open_find236_q = i_reduction_nfs_open_file_remove_open_find_744_nfs_open_file_remove_open_find232_q | i_reduction_nfs_open_file_remove_open_find_745_nfs_open_file_remove_open_find233_q;

    // i_reduction_nfs_open_file_remove_open_find_599_nfs_open_file_remove_open_find207(LOGICAL,181)@972
    assign i_reduction_nfs_open_file_remove_open_find_599_nfs_open_file_remove_open_find207_q = in_c0_eni66_38_tpl | in_c0_eni66_39_tpl;

    // i_reduction_nfs_open_file_remove_open_find_598_nfs_open_file_remove_open_find206(LOGICAL,180)@972
    assign i_reduction_nfs_open_file_remove_open_find_598_nfs_open_file_remove_open_find206_q = in_c0_eni66_36_tpl | in_c0_eni66_37_tpl;

    // i_reduction_nfs_open_file_remove_open_find_609_nfs_open_file_remove_open_find210(LOGICAL,185)@972
    assign i_reduction_nfs_open_file_remove_open_find_609_nfs_open_file_remove_open_find210_q = i_reduction_nfs_open_file_remove_open_find_598_nfs_open_file_remove_open_find206_q | i_reduction_nfs_open_file_remove_open_find_599_nfs_open_file_remove_open_find207_q;

    // i_reduction_nfs_open_file_remove_open_find_597_nfs_open_file_remove_open_find205(LOGICAL,179)@972
    assign i_reduction_nfs_open_file_remove_open_find_597_nfs_open_file_remove_open_find205_q = in_c0_eni66_34_tpl | in_c0_eni66_35_tpl;

    // i_reduction_nfs_open_file_remove_open_find_596_nfs_open_file_remove_open_find204(LOGICAL,178)@972
    assign i_reduction_nfs_open_file_remove_open_find_596_nfs_open_file_remove_open_find204_q = in_c0_eni66_32_tpl | in_c0_eni66_33_tpl;

    // i_reduction_nfs_open_file_remove_open_find_608_nfs_open_file_remove_open_find209(LOGICAL,184)@972
    assign i_reduction_nfs_open_file_remove_open_find_608_nfs_open_file_remove_open_find209_q = i_reduction_nfs_open_file_remove_open_find_596_nfs_open_file_remove_open_find204_q | i_reduction_nfs_open_file_remove_open_find_597_nfs_open_file_remove_open_find205_q;

    // i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212(LOGICAL,188)@972
    assign i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q = i_reduction_nfs_open_file_remove_open_find_608_nfs_open_file_remove_open_find209_q | i_reduction_nfs_open_file_remove_open_find_609_nfs_open_file_remove_open_find210_q;

    // i_reduction_nfs_open_file_remove_open_find_757_nfs_open_file_remove_open_find238(LOGICAL,223)@972
    assign i_reduction_nfs_open_file_remove_open_find_757_nfs_open_file_remove_open_find238_q = i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q | i_reduction_nfs_open_file_remove_open_find_753_nfs_open_file_remove_open_find236_q;

    // i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240(LOGICAL,226)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240_qi = i_reduction_nfs_open_file_remove_open_find_757_nfs_open_file_remove_open_find238_q | i_reduction_nfs_open_file_remove_open_find_759_nfs_open_file_remove_open_find239_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240_qi), .xout(i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_595_nfs_open_file_remove_open_find203(LOGICAL,177)@972
    assign i_reduction_nfs_open_file_remove_open_find_595_nfs_open_file_remove_open_find203_q = in_c0_eni66_30_tpl | in_c0_eni66_31_tpl;

    // i_reduction_nfs_open_file_remove_open_find_452_nfs_open_file_remove_open_find179(LOGICAL,139)@972
    assign i_reduction_nfs_open_file_remove_open_find_452_nfs_open_file_remove_open_find179_q = in_c0_eni66_28_tpl | in_c0_eni66_29_tpl;

    // i_reduction_nfs_open_file_remove_open_find_607_nfs_open_file_remove_open_find208(LOGICAL,183)@972
    assign i_reduction_nfs_open_file_remove_open_find_607_nfs_open_file_remove_open_find208_q = i_reduction_nfs_open_file_remove_open_find_452_nfs_open_file_remove_open_find179_q | i_reduction_nfs_open_file_remove_open_find_595_nfs_open_file_remove_open_find203_q;

    // i_reduction_nfs_open_file_remove_open_find_451_nfs_open_file_remove_open_find178(LOGICAL,138)@972
    assign i_reduction_nfs_open_file_remove_open_find_451_nfs_open_file_remove_open_find178_q = in_c0_eni66_26_tpl | in_c0_eni66_27_tpl;

    // i_reduction_nfs_open_file_remove_open_find_450_nfs_open_file_remove_open_find177(LOGICAL,137)@972
    assign i_reduction_nfs_open_file_remove_open_find_450_nfs_open_file_remove_open_find177_q = in_c0_eni66_24_tpl | in_c0_eni66_25_tpl;

    // i_reduction_nfs_open_file_remove_open_find_459_nfs_open_file_remove_open_find182(LOGICAL,142)@972
    assign i_reduction_nfs_open_file_remove_open_find_459_nfs_open_file_remove_open_find182_q = i_reduction_nfs_open_file_remove_open_find_450_nfs_open_file_remove_open_find177_q | i_reduction_nfs_open_file_remove_open_find_451_nfs_open_file_remove_open_find178_q;

    // i_reduction_nfs_open_file_remove_open_find_613_nfs_open_file_remove_open_find211(LOGICAL,187)@972
    assign i_reduction_nfs_open_file_remove_open_find_613_nfs_open_file_remove_open_find211_q = i_reduction_nfs_open_file_remove_open_find_459_nfs_open_file_remove_open_find182_q | i_reduction_nfs_open_file_remove_open_find_607_nfs_open_file_remove_open_find208_q;

    // i_reduction_nfs_open_file_remove_open_find_449_nfs_open_file_remove_open_find176(LOGICAL,135)@972
    assign i_reduction_nfs_open_file_remove_open_find_449_nfs_open_file_remove_open_find176_q = in_c0_eni66_22_tpl | in_c0_eni66_23_tpl;

    // i_reduction_nfs_open_file_remove_open_find_448_nfs_open_file_remove_open_find175(LOGICAL,134)@972
    assign i_reduction_nfs_open_file_remove_open_find_448_nfs_open_file_remove_open_find175_q = in_c0_eni66_20_tpl | in_c0_eni66_21_tpl;

    // i_reduction_nfs_open_file_remove_open_find_458_nfs_open_file_remove_open_find181(LOGICAL,141)@972
    assign i_reduction_nfs_open_file_remove_open_find_458_nfs_open_file_remove_open_find181_q = i_reduction_nfs_open_file_remove_open_find_448_nfs_open_file_remove_open_find175_q | i_reduction_nfs_open_file_remove_open_find_449_nfs_open_file_remove_open_find176_q;

    // i_reduction_nfs_open_file_remove_open_find_447_nfs_open_file_remove_open_find174(LOGICAL,133)@972
    assign i_reduction_nfs_open_file_remove_open_find_447_nfs_open_file_remove_open_find174_q = in_c0_eni66_18_tpl | in_c0_eni66_19_tpl;

    // i_reduction_nfs_open_file_remove_open_find_446_nfs_open_file_remove_open_find173(LOGICAL,132)@972
    assign i_reduction_nfs_open_file_remove_open_find_446_nfs_open_file_remove_open_find173_q = in_c0_eni66_16_tpl | in_c0_eni66_17_tpl;

    // i_reduction_nfs_open_file_remove_open_find_457_nfs_open_file_remove_open_find180(LOGICAL,140)@972
    assign i_reduction_nfs_open_file_remove_open_find_457_nfs_open_file_remove_open_find180_q = i_reduction_nfs_open_file_remove_open_find_446_nfs_open_file_remove_open_find173_q | i_reduction_nfs_open_file_remove_open_find_447_nfs_open_file_remove_open_find174_q;

    // i_reduction_nfs_open_file_remove_open_find_462_nfs_open_file_remove_open_find183(LOGICAL,144)@972
    assign i_reduction_nfs_open_file_remove_open_find_462_nfs_open_file_remove_open_find183_q = i_reduction_nfs_open_file_remove_open_find_457_nfs_open_file_remove_open_find180_q | i_reduction_nfs_open_file_remove_open_find_458_nfs_open_file_remove_open_find181_q;

    // i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213(LOGICAL,189)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213_qi = i_reduction_nfs_open_file_remove_open_find_462_nfs_open_file_remove_open_find183_q | i_reduction_nfs_open_file_remove_open_find_613_nfs_open_file_remove_open_find211_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213_qi), .xout(i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_343_nfs_open_file_remove_open_find142(LOGICAL,91)@972
    assign i_reduction_nfs_open_file_remove_open_find_343_nfs_open_file_remove_open_find142_q = in_c0_eni66_14_tpl | in_c0_eni66_15_tpl;

    // i_reduction_nfs_open_file_remove_open_find_342_nfs_open_file_remove_open_find141(LOGICAL,90)@972
    assign i_reduction_nfs_open_file_remove_open_find_342_nfs_open_file_remove_open_find141_q = in_c0_eni66_12_tpl | in_c0_eni66_13_tpl;

    // i_reduction_nfs_open_file_remove_open_find_347_nfs_open_file_remove_open_find146(LOGICAL,95)@972
    assign i_reduction_nfs_open_file_remove_open_find_347_nfs_open_file_remove_open_find146_q = i_reduction_nfs_open_file_remove_open_find_342_nfs_open_file_remove_open_find141_q | i_reduction_nfs_open_file_remove_open_find_343_nfs_open_file_remove_open_find142_q;

    // i_reduction_nfs_open_file_remove_open_find_341_nfs_open_file_remove_open_find140(LOGICAL,89)@972
    assign i_reduction_nfs_open_file_remove_open_find_341_nfs_open_file_remove_open_find140_q = in_c0_eni66_10_tpl | in_c0_eni66_11_tpl;

    // i_reduction_nfs_open_file_remove_open_find_340_nfs_open_file_remove_open_find139(LOGICAL,88)@972
    assign i_reduction_nfs_open_file_remove_open_find_340_nfs_open_file_remove_open_find139_q = in_c0_eni66_8_tpl | in_c0_eni66_9_tpl;

    // i_reduction_nfs_open_file_remove_open_find_346_nfs_open_file_remove_open_find145(LOGICAL,94)@972
    assign i_reduction_nfs_open_file_remove_open_find_346_nfs_open_file_remove_open_find145_q = i_reduction_nfs_open_file_remove_open_find_340_nfs_open_file_remove_open_find139_q | i_reduction_nfs_open_file_remove_open_find_341_nfs_open_file_remove_open_find140_q;

    // i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148(LOGICAL,97)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148_qi = i_reduction_nfs_open_file_remove_open_find_346_nfs_open_file_remove_open_find145_q | i_reduction_nfs_open_file_remove_open_find_347_nfs_open_file_remove_open_find146_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148_qi), .xout(i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_sync_together248_aunroll_x_in_c0_eni66_7_tpl_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together248_aunroll_x_in_c0_eni66_7_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together248_aunroll_x_in_c0_eni66_7_tpl_1_q <= $unsigned(in_c0_eni66_7_tpl);
        end
    end

    // redist4_sync_together248_aunroll_x_in_c0_eni66_6_tpl_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together248_aunroll_x_in_c0_eni66_6_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together248_aunroll_x_in_c0_eni66_6_tpl_1_q <= $unsigned(in_c0_eni66_6_tpl);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_339_nfs_open_file_remove_open_find138(LOGICAL,86)@973
    assign i_reduction_nfs_open_file_remove_open_find_339_nfs_open_file_remove_open_find138_q = redist4_sync_together248_aunroll_x_in_c0_eni66_6_tpl_1_q | redist5_sync_together248_aunroll_x_in_c0_eni66_7_tpl_1_q;

    // redist3_sync_together248_aunroll_x_in_c0_eni66_5_tpl_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together248_aunroll_x_in_c0_eni66_5_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together248_aunroll_x_in_c0_eni66_5_tpl_1_q <= $unsigned(in_c0_eni66_5_tpl);
        end
    end

    // redist2_sync_together248_aunroll_x_in_c0_eni66_4_tpl_1(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together248_aunroll_x_in_c0_eni66_4_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together248_aunroll_x_in_c0_eni66_4_tpl_1_q <= $unsigned(in_c0_eni66_4_tpl);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_338_nfs_open_file_remove_open_find137(LOGICAL,85)@973
    assign i_reduction_nfs_open_file_remove_open_find_338_nfs_open_file_remove_open_find137_q = redist2_sync_together248_aunroll_x_in_c0_eni66_4_tpl_1_q | redist3_sync_together248_aunroll_x_in_c0_eni66_5_tpl_1_q;

    // i_reduction_nfs_open_file_remove_open_find_345_nfs_open_file_remove_open_find144(LOGICAL,93)@973
    assign i_reduction_nfs_open_file_remove_open_find_345_nfs_open_file_remove_open_find144_q = i_reduction_nfs_open_file_remove_open_find_338_nfs_open_file_remove_open_find137_q | i_reduction_nfs_open_file_remove_open_find_339_nfs_open_file_remove_open_find138_q;

    // redist1_sync_together248_aunroll_x_in_c0_eni66_3_tpl_1(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together248_aunroll_x_in_c0_eni66_3_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together248_aunroll_x_in_c0_eni66_3_tpl_1_q <= $unsigned(in_c0_eni66_3_tpl);
        end
    end

    // redist0_sync_together248_aunroll_x_in_c0_eni66_2_tpl_1(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together248_aunroll_x_in_c0_eni66_2_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together248_aunroll_x_in_c0_eni66_2_tpl_1_q <= $unsigned(in_c0_eni66_2_tpl);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_6_nfs_open_file_remove_open_find3(LOGICAL,207)@973
    assign i_reduction_nfs_open_file_remove_open_find_6_nfs_open_file_remove_open_find3_q = redist0_sync_together248_aunroll_x_in_c0_eni66_2_tpl_1_q | redist1_sync_together248_aunroll_x_in_c0_eni66_3_tpl_1_q;

    // redist36_sync_together248_aunroll_x_in_c0_eni66_66_tpl_1(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together248_aunroll_x_in_c0_eni66_66_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together248_aunroll_x_in_c0_eni66_66_tpl_1_q <= $unsigned(in_c0_eni66_66_tpl);
        end
    end

    // valid_fanout_reg1(REG,249)@972 + 1
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

    // valid_fanout_reg2(REG,250)@972 + 1
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

    // i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x(BITSELECT,245)@972
    assign i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b = in_c0_eni66_1_tpl[0:0];

    // redist38_i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b_1(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist38_i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b_1_q <= $unsigned(i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66(BLACKBOX,5)@973
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    nfs_open_file_remove_open_find_i_llvm_fpA000000Z1_memdep_phi_push3_0 thei_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66 (
        .in_data_in(redist38_i_toi1_intcast_nfs_open_file_remove_open_find2_sel_x_b_1_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65_out_feedback_stall_out_3),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_sync_together248_aunroll_x_in_c0_eni66_65_tpl_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together248_aunroll_x_in_c0_eni66_65_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together248_aunroll_x_in_c0_eni66_65_tpl_1_q <= $unsigned(in_c0_eni66_65_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65(BLACKBOX,4)@973
    // out out_feedback_stall_out_3@20000000
    nfs_open_file_remove_open_find_i_llvm_fpga_pop_i1_memdep_phi_pop3_0 thei_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65 (
        .in_data_in(GND_q),
        .in_dir(redist35_sync_together248_aunroll_x_in_c0_eni66_65_tpl_1_q),
        .in_feedback_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_nfs_open_file_remove_open_find66_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_nfs_open_file_remove_open_find_211_nfs_open_file_remove_open_find105(LOGICAL,41)@973
    assign i_reduction_nfs_open_file_remove_open_find_211_nfs_open_file_remove_open_find105_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65_out_data_out | redist36_sync_together248_aunroll_x_in_c0_eni66_66_tpl_1_q;

    // i_reduction_nfs_open_file_remove_open_find_344_nfs_open_file_remove_open_find143(LOGICAL,92)@973
    assign i_reduction_nfs_open_file_remove_open_find_344_nfs_open_file_remove_open_find143_q = i_reduction_nfs_open_file_remove_open_find_211_nfs_open_file_remove_open_find105_q | i_reduction_nfs_open_file_remove_open_find_6_nfs_open_file_remove_open_find3_q;

    // i_reduction_nfs_open_file_remove_open_find_348_nfs_open_file_remove_open_find147(LOGICAL,96)@973
    assign i_reduction_nfs_open_file_remove_open_find_348_nfs_open_file_remove_open_find147_q = i_reduction_nfs_open_file_remove_open_find_344_nfs_open_file_remove_open_find143_q | i_reduction_nfs_open_file_remove_open_find_345_nfs_open_file_remove_open_find144_q;

    // i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149(LOGICAL,99)@973
    assign i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q = i_reduction_nfs_open_file_remove_open_find_348_nfs_open_file_remove_open_find147_q | i_reduction_nfs_open_file_remove_open_find_349_nfs_open_file_remove_open_find148_q;

    // i_reduction_nfs_open_file_remove_open_find_617_nfs_open_file_remove_open_find214(LOGICAL,190)@973
    assign i_reduction_nfs_open_file_remove_open_find_617_nfs_open_file_remove_open_find214_q = i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q | i_reduction_nfs_open_file_remove_open_find_616_nfs_open_file_remove_open_find213_q;

    // i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241(LOGICAL,227)@973 + 1
    assign i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_qi = i_reduction_nfs_open_file_remove_open_find_617_nfs_open_file_remove_open_find214_q | i_reduction_nfs_open_file_remove_open_find_760_nfs_open_file_remove_open_find240_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_qi), .xout(i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_0 <= '0;
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_1 <= '0;
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_2 <= '0;
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_q <= '0;
        end
        else
        begin
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_0 <= $unsigned(i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q);
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_1 <= redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_0;
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_2 <= redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_1;
            redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_q <= redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_delay_2;
        end
    end

    // redist41_i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q_1(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q_1_q <= '0;
        end
        else
        begin
            redist41_i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q_1_q <= $unsigned(i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q);
        end
    end

    // redist19_sync_together248_aunroll_x_in_c0_eni66_40_tpl_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together248_aunroll_x_in_c0_eni66_40_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together248_aunroll_x_in_c0_eni66_40_tpl_1_q <= $unsigned(in_c0_eni66_40_tpl);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_618_nfs_open_file_remove_open_find215(LOGICAL,191)@973
    assign i_reduction_nfs_open_file_remove_open_find_618_nfs_open_file_remove_open_find215_q = redist19_sync_together248_aunroll_x_in_c0_eni66_40_tpl_1_q | redist41_i_reduction_nfs_open_file_remove_open_find_614_nfs_open_file_remove_open_find212_q_1_q;

    // i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216(LOGICAL,192)@973 + 1
    assign i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_qi = i_reduction_nfs_open_file_remove_open_find_617_nfs_open_file_remove_open_find214_q | i_reduction_nfs_open_file_remove_open_find_618_nfs_open_file_remove_open_find215_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_qi), .xout(i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_0 <= '0;
            redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_1 <= '0;
            redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_q <= '0;
        end
        else
        begin
            redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_0 <= $unsigned(i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q);
            redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_1 <= redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_0;
            redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_q <= redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_delay_1;
        end
    end

    // redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_0 <= '0;
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_1 <= '0;
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_2 <= '0;
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_3 <= '0;
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q <= '0;
        end
        else
        begin
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_0 <= $unsigned(in_c0_eni66_58_tpl);
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_1 <= redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_0;
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_2 <= redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_1;
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_3 <= redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_2;
            redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q <= redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_delay_3;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_620_nfs_open_file_remove_open_find217(LOGICAL,194)@977
    assign i_reduction_nfs_open_file_remove_open_find_620_nfs_open_file_remove_open_find217_q = redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q | redist40_i_reduction_nfs_open_file_remove_open_find_619_nfs_open_file_remove_open_find216_q_4_q;

    // redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_0 <= '0;
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_1 <= '0;
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_2 <= '0;
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_3 <= '0;
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q <= '0;
        end
        else
        begin
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_0 <= $unsigned(in_c0_eni66_59_tpl);
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_1 <= redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_0;
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_2 <= redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_1;
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_3 <= redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_2;
            redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q <= redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_delay_3;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_621_nfs_open_file_remove_open_find218(LOGICAL,195)@977
    assign i_reduction_nfs_open_file_remove_open_find_621_nfs_open_file_remove_open_find218_q = redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_620_nfs_open_file_remove_open_find217_q;

    // redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_0 <= '0;
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_1 <= '0;
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_2 <= '0;
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_3 <= '0;
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q <= '0;
        end
        else
        begin
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_0 <= $unsigned(in_c0_eni66_60_tpl);
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_1 <= redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_0;
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_2 <= redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_1;
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_3 <= redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_2;
            redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q <= redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_delay_3;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219(LOGICAL,196)@977 + 1
    assign i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219_qi = redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_621_nfs_open_file_remove_open_find218_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219_qi), .xout(i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6(DELAY,283)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6 ( .xin(in_c0_eni66_61_tpl), .xout(redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_623_nfs_open_file_remove_open_find220(LOGICAL,197)@978
    assign i_reduction_nfs_open_file_remove_open_find_623_nfs_open_file_remove_open_find220_q = redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_622_nfs_open_file_remove_open_find219_q;

    // redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6(DELAY,284)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6 ( .xin(in_c0_eni66_62_tpl), .xout(redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_624_nfs_open_file_remove_open_find221(LOGICAL,198)@978
    assign i_reduction_nfs_open_file_remove_open_find_624_nfs_open_file_remove_open_find221_q = redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_623_nfs_open_file_remove_open_find220_q;

    // redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6(DELAY,285)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6 ( .xin(in_c0_eni66_63_tpl), .xout(redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_625_nfs_open_file_remove_open_find222(LOGICAL,199)@978
    assign i_reduction_nfs_open_file_remove_open_find_625_nfs_open_file_remove_open_find222_q = redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_624_nfs_open_file_remove_open_find221_q;

    // redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6(DELAY,286)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6 ( .xin(in_c0_eni66_64_tpl), .xout(redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_626_nfs_open_file_remove_open_find223(LOGICAL,200)@978
    assign i_reduction_nfs_open_file_remove_open_find_626_nfs_open_file_remove_open_find223_q = redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_625_nfs_open_file_remove_open_find222_q;

    // i_reduction_nfs_open_file_remove_open_find_51_nfs_open_file_remove_open_find48(LOGICAL,169)@972
    assign i_reduction_nfs_open_file_remove_open_find_51_nfs_open_file_remove_open_find48_q = in_c0_eni66_51_tpl | in_c0_eni66_52_tpl;

    // i_reduction_nfs_open_file_remove_open_find_50_nfs_open_file_remove_open_find47(LOGICAL,168)@972
    assign i_reduction_nfs_open_file_remove_open_find_50_nfs_open_file_remove_open_find47_q = in_c0_eni66_49_tpl | in_c0_eni66_50_tpl;

    // i_reduction_nfs_open_file_remove_open_find_55_nfs_open_file_remove_open_find52(LOGICAL,173)@972
    assign i_reduction_nfs_open_file_remove_open_find_55_nfs_open_file_remove_open_find52_q = i_reduction_nfs_open_file_remove_open_find_50_nfs_open_file_remove_open_find47_q | i_reduction_nfs_open_file_remove_open_find_51_nfs_open_file_remove_open_find48_q;

    // i_reduction_nfs_open_file_remove_open_find_49_nfs_open_file_remove_open_find46(LOGICAL,167)@972
    assign i_reduction_nfs_open_file_remove_open_find_49_nfs_open_file_remove_open_find46_q = in_c0_eni66_47_tpl | in_c0_eni66_48_tpl;

    // i_reduction_nfs_open_file_remove_open_find_48_nfs_open_file_remove_open_find45(LOGICAL,165)@972
    assign i_reduction_nfs_open_file_remove_open_find_48_nfs_open_file_remove_open_find45_q = in_c0_eni66_45_tpl | in_c0_eni66_46_tpl;

    // i_reduction_nfs_open_file_remove_open_find_54_nfs_open_file_remove_open_find51(LOGICAL,172)@972
    assign i_reduction_nfs_open_file_remove_open_find_54_nfs_open_file_remove_open_find51_q = i_reduction_nfs_open_file_remove_open_find_48_nfs_open_file_remove_open_find45_q | i_reduction_nfs_open_file_remove_open_find_49_nfs_open_file_remove_open_find46_q;

    // i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54(LOGICAL,175)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_qi = i_reduction_nfs_open_file_remove_open_find_54_nfs_open_file_remove_open_find51_q | i_reduction_nfs_open_file_remove_open_find_55_nfs_open_file_remove_open_find52_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_qi), .xout(i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_0 <= '0;
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_1 <= '0;
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_2 <= '0;
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q <= '0;
        end
        else
        begin
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_0 <= $unsigned(i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q);
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_1 <= redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_0;
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_2 <= redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_1;
            redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q <= redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_delay_2;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_464_nfs_open_file_remove_open_find184(LOGICAL,145)@972
    assign i_reduction_nfs_open_file_remove_open_find_464_nfs_open_file_remove_open_find184_q = in_c0_eni66_30_tpl | i_reduction_nfs_open_file_remove_open_find_452_nfs_open_file_remove_open_find179_q;

    // i_reduction_nfs_open_file_remove_open_find_465_nfs_open_file_remove_open_find185(LOGICAL,146)@972
    assign i_reduction_nfs_open_file_remove_open_find_465_nfs_open_file_remove_open_find185_q = i_reduction_nfs_open_file_remove_open_find_459_nfs_open_file_remove_open_find182_q | i_reduction_nfs_open_file_remove_open_find_464_nfs_open_file_remove_open_find184_q;

    // i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186(LOGICAL,147)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_qi = i_reduction_nfs_open_file_remove_open_find_462_nfs_open_file_remove_open_find183_q | i_reduction_nfs_open_file_remove_open_find_465_nfs_open_file_remove_open_find185_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_qi), .xout(i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist45_i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q_2(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q_2_q <= '0;
        end
        else
        begin
            redist45_i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q_2_q <= $unsigned(i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q);
        end
    end

    // redist47_i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q_1(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q_1_q <= '0;
        end
        else
        begin
            redist47_i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q_1_q <= $unsigned(i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187(LOGICAL,148)@974 + 1
    assign i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_qi = redist47_i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q_1_q | redist45_i_reduction_nfs_open_file_remove_open_find_466_nfs_open_file_remove_open_find186_q_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_qi), .xout(i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist44_i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q_2(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q_2_q <= '0;
        end
        else
        begin
            redist44_i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q_2_q <= $unsigned(i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q);
        end
    end

    // redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_0 <= '0;
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_1 <= '0;
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_2 <= '0;
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q <= '0;
        end
        else
        begin
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_0 <= $unsigned(in_c0_eni66_42_tpl);
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_1 <= redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_0;
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_2 <= redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_1;
            redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q <= redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_delay_2;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_468_nfs_open_file_remove_open_find188(LOGICAL,149)@976
    assign i_reduction_nfs_open_file_remove_open_find_468_nfs_open_file_remove_open_find188_q = redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q | redist44_i_reduction_nfs_open_file_remove_open_find_467_nfs_open_file_remove_open_find187_q_2_q;

    // redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_0 <= '0;
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_1 <= '0;
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_2 <= '0;
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q <= '0;
        end
        else
        begin
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_0 <= $unsigned(in_c0_eni66_43_tpl);
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_1 <= redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_0;
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_2 <= redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_1;
            redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q <= redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_delay_2;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_469_nfs_open_file_remove_open_find189(LOGICAL,150)@976
    assign i_reduction_nfs_open_file_remove_open_find_469_nfs_open_file_remove_open_find189_q = redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_468_nfs_open_file_remove_open_find188_q;

    // redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_0 <= '0;
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_1 <= '0;
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_2 <= '0;
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q <= '0;
        end
        else
        begin
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_0 <= $unsigned(in_c0_eni66_44_tpl);
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_1 <= redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_0;
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_2 <= redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_1;
            redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q <= redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_delay_2;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_470_nfs_open_file_remove_open_find190(LOGICAL,152)@976
    assign i_reduction_nfs_open_file_remove_open_find_470_nfs_open_file_remove_open_find190_q = redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_469_nfs_open_file_remove_open_find189_q;

    // redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_0 <= '0;
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_1 <= '0;
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_2 <= '0;
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q <= '0;
        end
        else
        begin
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_0 <= $unsigned(in_c0_eni66_55_tpl);
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_1 <= redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_0;
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_2 <= redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_1;
            redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q <= redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_delay_2;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191(LOGICAL,153)@976 + 1
    assign i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191_qi = redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_470_nfs_open_file_remove_open_find190_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191_qi), .xout(i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49(LOGICAL,170)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_qi = in_c0_eni66_53_tpl | in_c0_eni66_54_tpl;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_qi), .xout(i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_0 <= '0;
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_1 <= '0;
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_2 <= '0;
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q <= '0;
        end
        else
        begin
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_0 <= $unsigned(i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q);
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_1 <= redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_0;
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_2 <= redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_1;
            redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q <= redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_delay_2;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_479_nfs_open_file_remove_open_find192(LOGICAL,154)@977
    assign i_reduction_nfs_open_file_remove_open_find_479_nfs_open_file_remove_open_find192_q = redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q | i_reduction_nfs_open_file_remove_open_find_476_nfs_open_file_remove_open_find191_q;

    // i_reduction_nfs_open_file_remove_open_find_481_nfs_open_file_remove_open_find193(LOGICAL,156)@977
    assign i_reduction_nfs_open_file_remove_open_find_481_nfs_open_file_remove_open_find193_q = i_reduction_nfs_open_file_remove_open_find_479_nfs_open_file_remove_open_find192_q | redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q;

    // redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_0 <= '0;
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_1 <= '0;
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_2 <= '0;
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_3 <= '0;
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q <= '0;
        end
        else
        begin
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_0 <= $unsigned(in_c0_eni66_56_tpl);
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_1 <= redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_0;
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_2 <= redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_1;
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_3 <= redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_2;
            redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q <= redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_delay_3;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_482_nfs_open_file_remove_open_find194(LOGICAL,157)@977
    assign i_reduction_nfs_open_file_remove_open_find_482_nfs_open_file_remove_open_find194_q = redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_481_nfs_open_file_remove_open_find193_q;

    // redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_0 <= '0;
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_1 <= '0;
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_2 <= '0;
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_3 <= '0;
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q <= '0;
        end
        else
        begin
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_0 <= $unsigned(in_c0_eni66_57_tpl);
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_1 <= redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_0;
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_2 <= redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_1;
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_3 <= redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_2;
            redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q <= redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_delay_3;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_483_nfs_open_file_remove_open_find195(LOGICAL,158)@977
    assign i_reduction_nfs_open_file_remove_open_find_483_nfs_open_file_remove_open_find195_q = redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_482_nfs_open_file_remove_open_find194_q;

    // i_reduction_nfs_open_file_remove_open_find_484_nfs_open_file_remove_open_find196(LOGICAL,159)@977
    assign i_reduction_nfs_open_file_remove_open_find_484_nfs_open_file_remove_open_find196_q = redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_483_nfs_open_file_remove_open_find195_q;

    // i_reduction_nfs_open_file_remove_open_find_485_nfs_open_file_remove_open_find197(LOGICAL,160)@977
    assign i_reduction_nfs_open_file_remove_open_find_485_nfs_open_file_remove_open_find197_q = redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_484_nfs_open_file_remove_open_find196_q;

    // i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198(LOGICAL,161)@977 + 1
    assign i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198_qi = redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_485_nfs_open_file_remove_open_find197_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198_qi), .xout(i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_487_nfs_open_file_remove_open_find199(LOGICAL,162)@978
    assign i_reduction_nfs_open_file_remove_open_find_487_nfs_open_file_remove_open_find199_q = redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_486_nfs_open_file_remove_open_find198_q;

    // i_reduction_nfs_open_file_remove_open_find_488_nfs_open_file_remove_open_find200(LOGICAL,163)@978
    assign i_reduction_nfs_open_file_remove_open_find_488_nfs_open_file_remove_open_find200_q = redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_487_nfs_open_file_remove_open_find199_q;

    // i_reduction_nfs_open_file_remove_open_find_489_nfs_open_file_remove_open_find201(LOGICAL,164)@978
    assign i_reduction_nfs_open_file_remove_open_find_489_nfs_open_file_remove_open_find201_q = redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_488_nfs_open_file_remove_open_find200_q;

    // i_reduction_nfs_open_file_remove_open_find_490_nfs_open_file_remove_open_find202(LOGICAL,166)@978
    assign i_reduction_nfs_open_file_remove_open_find_490_nfs_open_file_remove_open_find202_q = redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_489_nfs_open_file_remove_open_find201_q;

    // i_reduction_nfs_open_file_remove_open_find_39_nfs_open_file_remove_open_find36(LOGICAL,127)@972
    assign i_reduction_nfs_open_file_remove_open_find_39_nfs_open_file_remove_open_find36_q = in_c0_eni66_37_tpl | in_c0_eni66_38_tpl;

    // i_reduction_nfs_open_file_remove_open_find_38_nfs_open_file_remove_open_find35(LOGICAL,126)@972
    assign i_reduction_nfs_open_file_remove_open_find_38_nfs_open_file_remove_open_find35_q = in_c0_eni66_35_tpl | in_c0_eni66_36_tpl;

    // i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38(LOGICAL,129)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_qi = i_reduction_nfs_open_file_remove_open_find_38_nfs_open_file_remove_open_find35_q | i_reduction_nfs_open_file_remove_open_find_39_nfs_open_file_remove_open_find36_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_qi), .xout(i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_0 <= '0;
            redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_1 <= '0;
            redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_q <= '0;
        end
        else
        begin
            redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_0 <= $unsigned(i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q);
            redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_1 <= redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_0;
            redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_q <= redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_delay_1;
        end
    end

    // redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_delay_0 <= '0;
            redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_q <= '0;
        end
        else
        begin
            redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_delay_0 <= $unsigned(in_c0_eni66_16_tpl);
            redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_q <= redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_delay_0;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150(LOGICAL,100)@974 + 1
    assign i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150_qi = redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_q | redist47_i_reduction_nfs_open_file_remove_open_find_350_nfs_open_file_remove_open_find149_q_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150_qi), .xout(i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_0 <= '0;
            redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_1 <= '0;
            redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_q <= '0;
        end
        else
        begin
            redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_0 <= $unsigned(in_c0_eni66_32_tpl);
            redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_1 <= redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_0;
            redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_q <= redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_delay_1;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_352_nfs_open_file_remove_open_find151(LOGICAL,101)@975
    assign i_reduction_nfs_open_file_remove_open_find_352_nfs_open_file_remove_open_find151_q = redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_351_nfs_open_file_remove_open_find150_q;

    // redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_0 <= '0;
            redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_1 <= '0;
            redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_q <= '0;
        end
        else
        begin
            redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_0 <= $unsigned(in_c0_eni66_33_tpl);
            redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_1 <= redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_0;
            redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_q <= redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_delay_1;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_353_nfs_open_file_remove_open_find152(LOGICAL,102)@975
    assign i_reduction_nfs_open_file_remove_open_find_353_nfs_open_file_remove_open_find152_q = redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_352_nfs_open_file_remove_open_find151_q;

    // redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_0 <= '0;
            redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_1 <= '0;
            redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_q <= '0;
        end
        else
        begin
            redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_0 <= $unsigned(in_c0_eni66_34_tpl);
            redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_1 <= redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_0;
            redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_q <= redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_delay_1;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_354_nfs_open_file_remove_open_find153(LOGICAL,103)@975
    assign i_reduction_nfs_open_file_remove_open_find_354_nfs_open_file_remove_open_find153_q = redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_353_nfs_open_file_remove_open_find152_q;

    // redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_0 <= '0;
            redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_1 <= '0;
            redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_q <= '0;
        end
        else
        begin
            redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_0 <= $unsigned(in_c0_eni66_39_tpl);
            redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_1 <= redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_0;
            redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_q <= redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_delay_1;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154(LOGICAL,104)@975 + 1
    assign i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154_qi = redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_354_nfs_open_file_remove_open_find153_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154_qi), .xout(i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_359_nfs_open_file_remove_open_find155(LOGICAL,105)@976
    assign i_reduction_nfs_open_file_remove_open_find_359_nfs_open_file_remove_open_find155_q = i_reduction_nfs_open_file_remove_open_find_357_nfs_open_file_remove_open_find154_q | redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_q;

    // redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_0 <= '0;
            redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_1 <= '0;
            redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_q <= '0;
        end
        else
        begin
            redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_0 <= $unsigned(redist19_sync_together248_aunroll_x_in_c0_eni66_40_tpl_1_q);
            redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_1 <= redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_0;
            redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_q <= redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_delay_1;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_360_nfs_open_file_remove_open_find156(LOGICAL,107)@976
    assign i_reduction_nfs_open_file_remove_open_find_360_nfs_open_file_remove_open_find156_q = redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_359_nfs_open_file_remove_open_find155_q;

    // redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_0 <= '0;
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_1 <= '0;
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_2 <= '0;
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_q <= '0;
        end
        else
        begin
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_0 <= $unsigned(in_c0_eni66_41_tpl);
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_1 <= redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_0;
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_2 <= redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_1;
            redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_q <= redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_delay_2;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_361_nfs_open_file_remove_open_find157(LOGICAL,108)@976
    assign i_reduction_nfs_open_file_remove_open_find_361_nfs_open_file_remove_open_find157_q = redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_360_nfs_open_file_remove_open_find156_q;

    // i_reduction_nfs_open_file_remove_open_find_362_nfs_open_file_remove_open_find158(LOGICAL,109)@976
    assign i_reduction_nfs_open_file_remove_open_find_362_nfs_open_file_remove_open_find158_q = redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_361_nfs_open_file_remove_open_find157_q;

    // i_reduction_nfs_open_file_remove_open_find_363_nfs_open_file_remove_open_find159(LOGICAL,110)@976
    assign i_reduction_nfs_open_file_remove_open_find_363_nfs_open_file_remove_open_find159_q = redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_362_nfs_open_file_remove_open_find158_q;

    // i_reduction_nfs_open_file_remove_open_find_364_nfs_open_file_remove_open_find160(LOGICAL,111)@976
    assign i_reduction_nfs_open_file_remove_open_find_364_nfs_open_file_remove_open_find160_q = redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_363_nfs_open_file_remove_open_find159_q;

    // i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161(LOGICAL,113)@976 + 1
    assign i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161_qi = redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_364_nfs_open_file_remove_open_find160_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161_qi), .xout(i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_373_nfs_open_file_remove_open_find162(LOGICAL,114)@977
    assign i_reduction_nfs_open_file_remove_open_find_373_nfs_open_file_remove_open_find162_q = redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q | i_reduction_nfs_open_file_remove_open_find_370_nfs_open_file_remove_open_find161_q;

    // i_reduction_nfs_open_file_remove_open_find_375_nfs_open_file_remove_open_find163(LOGICAL,115)@977
    assign i_reduction_nfs_open_file_remove_open_find_375_nfs_open_file_remove_open_find163_q = i_reduction_nfs_open_file_remove_open_find_373_nfs_open_file_remove_open_find162_q | redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q;

    // i_reduction_nfs_open_file_remove_open_find_376_nfs_open_file_remove_open_find164(LOGICAL,116)@977
    assign i_reduction_nfs_open_file_remove_open_find_376_nfs_open_file_remove_open_find164_q = redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_375_nfs_open_file_remove_open_find163_q;

    // i_reduction_nfs_open_file_remove_open_find_377_nfs_open_file_remove_open_find165(LOGICAL,117)@977
    assign i_reduction_nfs_open_file_remove_open_find_377_nfs_open_file_remove_open_find165_q = redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_376_nfs_open_file_remove_open_find164_q;

    // i_reduction_nfs_open_file_remove_open_find_378_nfs_open_file_remove_open_find166(LOGICAL,118)@977
    assign i_reduction_nfs_open_file_remove_open_find_378_nfs_open_file_remove_open_find166_q = redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_377_nfs_open_file_remove_open_find165_q;

    // i_reduction_nfs_open_file_remove_open_find_379_nfs_open_file_remove_open_find167(LOGICAL,119)@977
    assign i_reduction_nfs_open_file_remove_open_find_379_nfs_open_file_remove_open_find167_q = redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_378_nfs_open_file_remove_open_find166_q;

    // i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168(LOGICAL,121)@977 + 1
    assign i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168_qi = redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_379_nfs_open_file_remove_open_find167_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168_qi), .xout(i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_381_nfs_open_file_remove_open_find169(LOGICAL,122)@978
    assign i_reduction_nfs_open_file_remove_open_find_381_nfs_open_file_remove_open_find169_q = redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_380_nfs_open_file_remove_open_find168_q;

    // i_reduction_nfs_open_file_remove_open_find_382_nfs_open_file_remove_open_find170(LOGICAL,123)@978
    assign i_reduction_nfs_open_file_remove_open_find_382_nfs_open_file_remove_open_find170_q = redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_381_nfs_open_file_remove_open_find169_q;

    // i_reduction_nfs_open_file_remove_open_find_383_nfs_open_file_remove_open_find171(LOGICAL,124)@978
    assign i_reduction_nfs_open_file_remove_open_find_383_nfs_open_file_remove_open_find171_q = redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_382_nfs_open_file_remove_open_find170_q;

    // i_reduction_nfs_open_file_remove_open_find_384_nfs_open_file_remove_open_find172(LOGICAL,125)@978
    assign i_reduction_nfs_open_file_remove_open_find_384_nfs_open_file_remove_open_find172_q = redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_383_nfs_open_file_remove_open_find171_q;

    // i_reduction_nfs_open_file_remove_open_find_25_nfs_open_file_remove_open_find22(LOGICAL,77)@972
    assign i_reduction_nfs_open_file_remove_open_find_25_nfs_open_file_remove_open_find22_q = in_c0_eni66_23_tpl | in_c0_eni66_24_tpl;

    // i_reduction_nfs_open_file_remove_open_find_24_nfs_open_file_remove_open_find21(LOGICAL,66)@972
    assign i_reduction_nfs_open_file_remove_open_find_24_nfs_open_file_remove_open_find21_q = in_c0_eni66_21_tpl | in_c0_eni66_22_tpl;

    // i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26(LOGICAL,81)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_qi = i_reduction_nfs_open_file_remove_open_find_24_nfs_open_file_remove_open_find21_q | i_reduction_nfs_open_file_remove_open_find_25_nfs_open_file_remove_open_find22_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_qi), .xout(i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist49_i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q_2(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q_2_q <= '0;
        end
        else
        begin
            redist49_i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q_2_q <= $unsigned(i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106(LOGICAL,42)@973 + 1
    assign i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106_qi = redist0_sync_together248_aunroll_x_in_c0_eni66_2_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_211_nfs_open_file_remove_open_find105_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106_qi), .xout(i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_delay_0 <= '0;
            redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_q <= '0;
        end
        else
        begin
            redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_delay_0 <= $unsigned(in_c0_eni66_18_tpl);
            redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_q <= redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_delay_0;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_213_nfs_open_file_remove_open_find107(LOGICAL,43)@974
    assign i_reduction_nfs_open_file_remove_open_find_213_nfs_open_file_remove_open_find107_q = redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_212_nfs_open_file_remove_open_find106_q;

    // redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_delay_0 <= '0;
            redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_q <= '0;
        end
        else
        begin
            redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_delay_0 <= $unsigned(in_c0_eni66_19_tpl);
            redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_q <= redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_delay_0;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_214_nfs_open_file_remove_open_find108(LOGICAL,44)@974
    assign i_reduction_nfs_open_file_remove_open_find_214_nfs_open_file_remove_open_find108_q = redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_213_nfs_open_file_remove_open_find107_q;

    // redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_delay_0 <= '0;
            redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_q <= '0;
        end
        else
        begin
            redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_delay_0 <= $unsigned(in_c0_eni66_20_tpl);
            redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_q <= redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_delay_0;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_215_nfs_open_file_remove_open_find109(LOGICAL,45)@974
    assign i_reduction_nfs_open_file_remove_open_find_215_nfs_open_file_remove_open_find109_q = redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_214_nfs_open_file_remove_open_find108_q;

    // redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_delay_0 <= '0;
            redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_q <= '0;
        end
        else
        begin
            redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_delay_0 <= $unsigned(in_c0_eni66_29_tpl);
            redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_q <= redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_delay_0;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_220_nfs_open_file_remove_open_find110(LOGICAL,47)@974
    assign i_reduction_nfs_open_file_remove_open_find_220_nfs_open_file_remove_open_find110_q = redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_215_nfs_open_file_remove_open_find109_q;

    // i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111(LOGICAL,48)@974 + 1
    assign i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111_qi = i_reduction_nfs_open_file_remove_open_find_220_nfs_open_file_remove_open_find110_q | redist49_i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111_qi), .xout(i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_27_nfs_open_file_remove_open_find24(LOGICAL,79)@972
    assign i_reduction_nfs_open_file_remove_open_find_27_nfs_open_file_remove_open_find24_q = in_c0_eni66_27_tpl | in_c0_eni66_28_tpl;

    // i_reduction_nfs_open_file_remove_open_find_26_nfs_open_file_remove_open_find23(LOGICAL,78)@972
    assign i_reduction_nfs_open_file_remove_open_find_26_nfs_open_file_remove_open_find23_q = in_c0_eni66_25_tpl | in_c0_eni66_26_tpl;

    // i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27(LOGICAL,82)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_qi = i_reduction_nfs_open_file_remove_open_find_26_nfs_open_file_remove_open_find23_q | i_reduction_nfs_open_file_remove_open_find_27_nfs_open_file_remove_open_find24_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_qi), .xout(i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_delay_0 <= '0;
            redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_q <= '0;
        end
        else
        begin
            redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_delay_0 <= $unsigned(i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q);
            redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_q <= redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_delay_0;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_224_nfs_open_file_remove_open_find112(LOGICAL,49)@975
    assign i_reduction_nfs_open_file_remove_open_find_224_nfs_open_file_remove_open_find112_q = redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_q | i_reduction_nfs_open_file_remove_open_find_223_nfs_open_file_remove_open_find111_q;

    // redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_0 <= '0;
            redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_1 <= '0;
            redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_q <= '0;
        end
        else
        begin
            redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_0 <= $unsigned(in_c0_eni66_30_tpl);
            redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_1 <= redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_0;
            redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_q <= redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_delay_1;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_225_nfs_open_file_remove_open_find113(LOGICAL,50)@975
    assign i_reduction_nfs_open_file_remove_open_find_225_nfs_open_file_remove_open_find113_q = redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_224_nfs_open_file_remove_open_find112_q;

    // redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_0 <= '0;
            redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_1 <= '0;
            redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_q <= '0;
        end
        else
        begin
            redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_0 <= $unsigned(in_c0_eni66_31_tpl);
            redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_1 <= redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_0;
            redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_q <= redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_delay_1;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_226_nfs_open_file_remove_open_find114(LOGICAL,51)@975
    assign i_reduction_nfs_open_file_remove_open_find_226_nfs_open_file_remove_open_find114_q = redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_225_nfs_open_file_remove_open_find113_q;

    // i_reduction_nfs_open_file_remove_open_find_227_nfs_open_file_remove_open_find115(LOGICAL,52)@975
    assign i_reduction_nfs_open_file_remove_open_find_227_nfs_open_file_remove_open_find115_q = redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_226_nfs_open_file_remove_open_find114_q;

    // i_reduction_nfs_open_file_remove_open_find_228_nfs_open_file_remove_open_find116(LOGICAL,53)@975
    assign i_reduction_nfs_open_file_remove_open_find_228_nfs_open_file_remove_open_find116_q = redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_227_nfs_open_file_remove_open_find115_q;

    // i_reduction_nfs_open_file_remove_open_find_229_nfs_open_file_remove_open_find117(LOGICAL,54)@975
    assign i_reduction_nfs_open_file_remove_open_find_229_nfs_open_file_remove_open_find117_q = redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_228_nfs_open_file_remove_open_find116_q;

    // i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118(LOGICAL,56)@975 + 1
    assign i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118_qi = redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_229_nfs_open_file_remove_open_find117_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118_qi), .xout(i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_234_nfs_open_file_remove_open_find119(LOGICAL,57)@976
    assign i_reduction_nfs_open_file_remove_open_find_234_nfs_open_file_remove_open_find119_q = i_reduction_nfs_open_file_remove_open_find_232_nfs_open_file_remove_open_find118_q | redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_q;

    // i_reduction_nfs_open_file_remove_open_find_235_nfs_open_file_remove_open_find120(LOGICAL,58)@976
    assign i_reduction_nfs_open_file_remove_open_find_235_nfs_open_file_remove_open_find120_q = redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_234_nfs_open_file_remove_open_find119_q;

    // i_reduction_nfs_open_file_remove_open_find_236_nfs_open_file_remove_open_find121(LOGICAL,59)@976
    assign i_reduction_nfs_open_file_remove_open_find_236_nfs_open_file_remove_open_find121_q = redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_235_nfs_open_file_remove_open_find120_q;

    // i_reduction_nfs_open_file_remove_open_find_237_nfs_open_file_remove_open_find122(LOGICAL,60)@976
    assign i_reduction_nfs_open_file_remove_open_find_237_nfs_open_file_remove_open_find122_q = redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_236_nfs_open_file_remove_open_find121_q;

    // i_reduction_nfs_open_file_remove_open_find_238_nfs_open_file_remove_open_find123(LOGICAL,61)@976
    assign i_reduction_nfs_open_file_remove_open_find_238_nfs_open_file_remove_open_find123_q = redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_237_nfs_open_file_remove_open_find122_q;

    // i_reduction_nfs_open_file_remove_open_find_239_nfs_open_file_remove_open_find124(LOGICAL,62)@976
    assign i_reduction_nfs_open_file_remove_open_find_239_nfs_open_file_remove_open_find124_q = redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_238_nfs_open_file_remove_open_find123_q;

    // i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125(LOGICAL,64)@976 + 1
    assign i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125_qi = redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_239_nfs_open_file_remove_open_find124_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125_qi), .xout(i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_248_nfs_open_file_remove_open_find126(LOGICAL,65)@977
    assign i_reduction_nfs_open_file_remove_open_find_248_nfs_open_file_remove_open_find126_q = redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q | i_reduction_nfs_open_file_remove_open_find_245_nfs_open_file_remove_open_find125_q;

    // i_reduction_nfs_open_file_remove_open_find_250_nfs_open_file_remove_open_find127(LOGICAL,67)@977
    assign i_reduction_nfs_open_file_remove_open_find_250_nfs_open_file_remove_open_find127_q = i_reduction_nfs_open_file_remove_open_find_248_nfs_open_file_remove_open_find126_q | redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q;

    // i_reduction_nfs_open_file_remove_open_find_251_nfs_open_file_remove_open_find128(LOGICAL,68)@977
    assign i_reduction_nfs_open_file_remove_open_find_251_nfs_open_file_remove_open_find128_q = redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_250_nfs_open_file_remove_open_find127_q;

    // i_reduction_nfs_open_file_remove_open_find_252_nfs_open_file_remove_open_find129(LOGICAL,69)@977
    assign i_reduction_nfs_open_file_remove_open_find_252_nfs_open_file_remove_open_find129_q = redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_251_nfs_open_file_remove_open_find128_q;

    // i_reduction_nfs_open_file_remove_open_find_253_nfs_open_file_remove_open_find130(LOGICAL,70)@977
    assign i_reduction_nfs_open_file_remove_open_find_253_nfs_open_file_remove_open_find130_q = redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_252_nfs_open_file_remove_open_find129_q;

    // i_reduction_nfs_open_file_remove_open_find_254_nfs_open_file_remove_open_find131(LOGICAL,71)@977
    assign i_reduction_nfs_open_file_remove_open_find_254_nfs_open_file_remove_open_find131_q = redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_253_nfs_open_file_remove_open_find130_q;

    // i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132(LOGICAL,72)@977 + 1
    assign i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132_qi = redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_254_nfs_open_file_remove_open_find131_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132_qi), .xout(i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_256_nfs_open_file_remove_open_find133(LOGICAL,73)@978
    assign i_reduction_nfs_open_file_remove_open_find_256_nfs_open_file_remove_open_find133_q = redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_255_nfs_open_file_remove_open_find132_q;

    // i_reduction_nfs_open_file_remove_open_find_257_nfs_open_file_remove_open_find134(LOGICAL,74)@978
    assign i_reduction_nfs_open_file_remove_open_find_257_nfs_open_file_remove_open_find134_q = redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_256_nfs_open_file_remove_open_find133_q;

    // i_reduction_nfs_open_file_remove_open_find_258_nfs_open_file_remove_open_find135(LOGICAL,75)@978
    assign i_reduction_nfs_open_file_remove_open_find_258_nfs_open_file_remove_open_find135_q = redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_257_nfs_open_file_remove_open_find134_q;

    // i_reduction_nfs_open_file_remove_open_find_259_nfs_open_file_remove_open_find136(LOGICAL,76)@978
    assign i_reduction_nfs_open_file_remove_open_find_259_nfs_open_file_remove_open_find136_q = redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_258_nfs_open_file_remove_open_find135_q;

    // i_reduction_nfs_open_file_remove_open_find_11_nfs_open_file_remove_open_find8(LOGICAL,19)@972
    assign i_reduction_nfs_open_file_remove_open_find_11_nfs_open_file_remove_open_find8_q = in_c0_eni66_9_tpl | in_c0_eni66_10_tpl;

    // i_reduction_nfs_open_file_remove_open_find_10_nfs_open_file_remove_open_find7(LOGICAL,13)@972
    assign i_reduction_nfs_open_file_remove_open_find_10_nfs_open_file_remove_open_find7_q = in_c0_eni66_7_tpl | in_c0_eni66_8_tpl;

    // i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12(LOGICAL,35)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_qi = i_reduction_nfs_open_file_remove_open_find_10_nfs_open_file_remove_open_find7_q | i_reduction_nfs_open_file_remove_open_find_11_nfs_open_file_remove_open_find8_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_qi), .xout(i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_74_nfs_open_file_remove_open_find67(LOGICAL,220)@973
    assign i_reduction_nfs_open_file_remove_open_find_74_nfs_open_file_remove_open_find67_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_nfs_open_file_remove_open_find65_out_data_out | redist2_sync_together248_aunroll_x_in_c0_eni66_4_tpl_1_q;

    // i_reduction_nfs_open_file_remove_open_find_75_nfs_open_file_remove_open_find68(LOGICAL,225)@973
    assign i_reduction_nfs_open_file_remove_open_find_75_nfs_open_file_remove_open_find68_q = redist3_sync_together248_aunroll_x_in_c0_eni66_5_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_74_nfs_open_file_remove_open_find67_q;

    // i_reduction_nfs_open_file_remove_open_find_76_nfs_open_file_remove_open_find69(LOGICAL,228)@973
    assign i_reduction_nfs_open_file_remove_open_find_76_nfs_open_file_remove_open_find69_q = redist4_sync_together248_aunroll_x_in_c0_eni66_6_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_75_nfs_open_file_remove_open_find68_q;

    // redist6_sync_together248_aunroll_x_in_c0_eni66_15_tpl_1(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together248_aunroll_x_in_c0_eni66_15_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together248_aunroll_x_in_c0_eni66_15_tpl_1_q <= $unsigned(in_c0_eni66_15_tpl);
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_81_nfs_open_file_remove_open_find70(LOGICAL,230)@973
    assign i_reduction_nfs_open_file_remove_open_find_81_nfs_open_file_remove_open_find70_q = redist6_sync_together248_aunroll_x_in_c0_eni66_15_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_76_nfs_open_file_remove_open_find69_q;

    // i_reduction_nfs_open_file_remove_open_find_84_nfs_open_file_remove_open_find71(LOGICAL,231)@973
    assign i_reduction_nfs_open_file_remove_open_find_84_nfs_open_file_remove_open_find71_q = i_reduction_nfs_open_file_remove_open_find_81_nfs_open_file_remove_open_find70_q | i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_q;

    // i_reduction_nfs_open_file_remove_open_find_13_nfs_open_file_remove_open_find10(LOGICAL,33)@972
    assign i_reduction_nfs_open_file_remove_open_find_13_nfs_open_file_remove_open_find10_q = in_c0_eni66_13_tpl | in_c0_eni66_14_tpl;

    // i_reduction_nfs_open_file_remove_open_find_12_nfs_open_file_remove_open_find9(LOGICAL,27)@972
    assign i_reduction_nfs_open_file_remove_open_find_12_nfs_open_file_remove_open_find9_q = in_c0_eni66_11_tpl | in_c0_eni66_12_tpl;

    // i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13(LOGICAL,36)@972 + 1
    assign i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_qi = i_reduction_nfs_open_file_remove_open_find_12_nfs_open_file_remove_open_find9_q | i_reduction_nfs_open_file_remove_open_find_13_nfs_open_file_remove_open_find10_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_qi), .xout(i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72(LOGICAL,232)@973 + 1
    assign i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72_qi = i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_q | i_reduction_nfs_open_file_remove_open_find_84_nfs_open_file_remove_open_find71_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72_qi), .xout(i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_86_nfs_open_file_remove_open_find73(LOGICAL,233)@974
    assign i_reduction_nfs_open_file_remove_open_find_86_nfs_open_file_remove_open_find73_q = redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_85_nfs_open_file_remove_open_find72_q;

    // redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_delay_0 <= '0;
            redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_q <= '0;
        end
        else
        begin
            redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_delay_0 <= $unsigned(in_c0_eni66_17_tpl);
            redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_q <= redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_delay_0;
        end
    end

    // i_reduction_nfs_open_file_remove_open_find_87_nfs_open_file_remove_open_find74(LOGICAL,234)@974
    assign i_reduction_nfs_open_file_remove_open_find_87_nfs_open_file_remove_open_find74_q = redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_86_nfs_open_file_remove_open_find73_q;

    // i_reduction_nfs_open_file_remove_open_find_88_nfs_open_file_remove_open_find75(LOGICAL,235)@974
    assign i_reduction_nfs_open_file_remove_open_find_88_nfs_open_file_remove_open_find75_q = redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_87_nfs_open_file_remove_open_find74_q;

    // i_reduction_nfs_open_file_remove_open_find_89_nfs_open_file_remove_open_find76(LOGICAL,236)@974
    assign i_reduction_nfs_open_file_remove_open_find_89_nfs_open_file_remove_open_find76_q = redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_88_nfs_open_file_remove_open_find75_q;

    // i_reduction_nfs_open_file_remove_open_find_90_nfs_open_file_remove_open_find77(LOGICAL,238)@974
    assign i_reduction_nfs_open_file_remove_open_find_90_nfs_open_file_remove_open_find77_q = redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_89_nfs_open_file_remove_open_find76_q;

    // i_reduction_nfs_open_file_remove_open_find_95_nfs_open_file_remove_open_find78(LOGICAL,239)@974
    assign i_reduction_nfs_open_file_remove_open_find_95_nfs_open_file_remove_open_find78_q = redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_90_nfs_open_file_remove_open_find77_q;

    // i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79(LOGICAL,240)@974 + 1
    assign i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79_qi = i_reduction_nfs_open_file_remove_open_find_95_nfs_open_file_remove_open_find78_q | redist49_i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79_qi), .xout(i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_99_nfs_open_file_remove_open_find80(LOGICAL,241)@975
    assign i_reduction_nfs_open_file_remove_open_find_99_nfs_open_file_remove_open_find80_q = redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_q | i_reduction_nfs_open_file_remove_open_find_98_nfs_open_file_remove_open_find79_q;

    // i_reduction_nfs_open_file_remove_open_find_100_nfs_open_file_remove_open_find81(LOGICAL,6)@975
    assign i_reduction_nfs_open_file_remove_open_find_100_nfs_open_file_remove_open_find81_q = redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_99_nfs_open_file_remove_open_find80_q;

    // i_reduction_nfs_open_file_remove_open_find_101_nfs_open_file_remove_open_find82(LOGICAL,7)@975
    assign i_reduction_nfs_open_file_remove_open_find_101_nfs_open_file_remove_open_find82_q = redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_100_nfs_open_file_remove_open_find81_q;

    // i_reduction_nfs_open_file_remove_open_find_102_nfs_open_file_remove_open_find83(LOGICAL,8)@975
    assign i_reduction_nfs_open_file_remove_open_find_102_nfs_open_file_remove_open_find83_q = redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_101_nfs_open_file_remove_open_find82_q;

    // i_reduction_nfs_open_file_remove_open_find_103_nfs_open_file_remove_open_find84(LOGICAL,9)@975
    assign i_reduction_nfs_open_file_remove_open_find_103_nfs_open_file_remove_open_find84_q = redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_102_nfs_open_file_remove_open_find83_q;

    // i_reduction_nfs_open_file_remove_open_find_104_nfs_open_file_remove_open_find85(LOGICAL,10)@975
    assign i_reduction_nfs_open_file_remove_open_find_104_nfs_open_file_remove_open_find85_q = redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_103_nfs_open_file_remove_open_find84_q;

    // i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86(LOGICAL,11)@975 + 1
    assign i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86_qi = redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_104_nfs_open_file_remove_open_find85_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86_qi), .xout(i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_109_nfs_open_file_remove_open_find87(LOGICAL,12)@976
    assign i_reduction_nfs_open_file_remove_open_find_109_nfs_open_file_remove_open_find87_q = i_reduction_nfs_open_file_remove_open_find_107_nfs_open_file_remove_open_find86_q | redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_q;

    // i_reduction_nfs_open_file_remove_open_find_110_nfs_open_file_remove_open_find88(LOGICAL,14)@976
    assign i_reduction_nfs_open_file_remove_open_find_110_nfs_open_file_remove_open_find88_q = redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_109_nfs_open_file_remove_open_find87_q;

    // i_reduction_nfs_open_file_remove_open_find_111_nfs_open_file_remove_open_find89(LOGICAL,15)@976
    assign i_reduction_nfs_open_file_remove_open_find_111_nfs_open_file_remove_open_find89_q = redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_110_nfs_open_file_remove_open_find88_q;

    // i_reduction_nfs_open_file_remove_open_find_112_nfs_open_file_remove_open_find90(LOGICAL,16)@976
    assign i_reduction_nfs_open_file_remove_open_find_112_nfs_open_file_remove_open_find90_q = redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_111_nfs_open_file_remove_open_find89_q;

    // i_reduction_nfs_open_file_remove_open_find_113_nfs_open_file_remove_open_find91(LOGICAL,17)@976
    assign i_reduction_nfs_open_file_remove_open_find_113_nfs_open_file_remove_open_find91_q = redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_112_nfs_open_file_remove_open_find90_q;

    // i_reduction_nfs_open_file_remove_open_find_114_nfs_open_file_remove_open_find92(LOGICAL,18)@976
    assign i_reduction_nfs_open_file_remove_open_find_114_nfs_open_file_remove_open_find92_q = redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_113_nfs_open_file_remove_open_find91_q;

    // i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93(LOGICAL,20)@976 + 1
    assign i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93_qi = redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_114_nfs_open_file_remove_open_find92_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93_qi), .xout(i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_123_nfs_open_file_remove_open_find94(LOGICAL,21)@977
    assign i_reduction_nfs_open_file_remove_open_find_123_nfs_open_file_remove_open_find94_q = redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q | i_reduction_nfs_open_file_remove_open_find_120_nfs_open_file_remove_open_find93_q;

    // i_reduction_nfs_open_file_remove_open_find_125_nfs_open_file_remove_open_find95(LOGICAL,22)@977
    assign i_reduction_nfs_open_file_remove_open_find_125_nfs_open_file_remove_open_find95_q = i_reduction_nfs_open_file_remove_open_find_123_nfs_open_file_remove_open_find94_q | redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q;

    // i_reduction_nfs_open_file_remove_open_find_126_nfs_open_file_remove_open_find96(LOGICAL,23)@977
    assign i_reduction_nfs_open_file_remove_open_find_126_nfs_open_file_remove_open_find96_q = redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_125_nfs_open_file_remove_open_find95_q;

    // i_reduction_nfs_open_file_remove_open_find_127_nfs_open_file_remove_open_find97(LOGICAL,24)@977
    assign i_reduction_nfs_open_file_remove_open_find_127_nfs_open_file_remove_open_find97_q = redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_126_nfs_open_file_remove_open_find96_q;

    // i_reduction_nfs_open_file_remove_open_find_128_nfs_open_file_remove_open_find98(LOGICAL,25)@977
    assign i_reduction_nfs_open_file_remove_open_find_128_nfs_open_file_remove_open_find98_q = redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_127_nfs_open_file_remove_open_find97_q;

    // i_reduction_nfs_open_file_remove_open_find_129_nfs_open_file_remove_open_find99(LOGICAL,26)@977
    assign i_reduction_nfs_open_file_remove_open_find_129_nfs_open_file_remove_open_find99_q = redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_128_nfs_open_file_remove_open_find98_q;

    // i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100(LOGICAL,28)@977 + 1
    assign i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100_qi = redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_129_nfs_open_file_remove_open_find99_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100_qi), .xout(i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_131_nfs_open_file_remove_open_find101(LOGICAL,29)@978
    assign i_reduction_nfs_open_file_remove_open_find_131_nfs_open_file_remove_open_find101_q = redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_130_nfs_open_file_remove_open_find100_q;

    // i_reduction_nfs_open_file_remove_open_find_132_nfs_open_file_remove_open_find102(LOGICAL,30)@978
    assign i_reduction_nfs_open_file_remove_open_find_132_nfs_open_file_remove_open_find102_q = redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_131_nfs_open_file_remove_open_find101_q;

    // i_reduction_nfs_open_file_remove_open_find_133_nfs_open_file_remove_open_find103(LOGICAL,31)@978
    assign i_reduction_nfs_open_file_remove_open_find_133_nfs_open_file_remove_open_find103_q = redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_132_nfs_open_file_remove_open_find102_q;

    // i_reduction_nfs_open_file_remove_open_find_134_nfs_open_file_remove_open_find104(LOGICAL,32)@978
    assign i_reduction_nfs_open_file_remove_open_find_134_nfs_open_file_remove_open_find104_q = redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_133_nfs_open_file_remove_open_find103_q;

    // i_reduction_nfs_open_file_remove_open_find_7_nfs_open_file_remove_open_find4(LOGICAL,229)@973
    assign i_reduction_nfs_open_file_remove_open_find_7_nfs_open_file_remove_open_find4_q = redist2_sync_together248_aunroll_x_in_c0_eni66_4_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_6_nfs_open_file_remove_open_find3_q;

    // i_reduction_nfs_open_file_remove_open_find_8_nfs_open_file_remove_open_find5(LOGICAL,237)@973
    assign i_reduction_nfs_open_file_remove_open_find_8_nfs_open_file_remove_open_find5_q = redist3_sync_together248_aunroll_x_in_c0_eni66_5_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_7_nfs_open_file_remove_open_find4_q;

    // i_reduction_nfs_open_file_remove_open_find_9_nfs_open_file_remove_open_find6(LOGICAL,242)@973
    assign i_reduction_nfs_open_file_remove_open_find_9_nfs_open_file_remove_open_find6_q = redist4_sync_together248_aunroll_x_in_c0_eni66_6_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_8_nfs_open_file_remove_open_find5_q;

    // i_reduction_nfs_open_file_remove_open_find_14_nfs_open_file_remove_open_find11(LOGICAL,34)@973
    assign i_reduction_nfs_open_file_remove_open_find_14_nfs_open_file_remove_open_find11_q = redist6_sync_together248_aunroll_x_in_c0_eni66_15_tpl_1_q | i_reduction_nfs_open_file_remove_open_find_9_nfs_open_file_remove_open_find6_q;

    // i_reduction_nfs_open_file_remove_open_find_17_nfs_open_file_remove_open_find14(LOGICAL,37)@973
    assign i_reduction_nfs_open_file_remove_open_find_17_nfs_open_file_remove_open_find14_q = i_reduction_nfs_open_file_remove_open_find_14_nfs_open_file_remove_open_find11_q | i_reduction_nfs_open_file_remove_open_find_15_nfs_open_file_remove_open_find12_q;

    // i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15(LOGICAL,38)@973 + 1
    assign i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15_qi = i_reduction_nfs_open_file_remove_open_find_16_nfs_open_file_remove_open_find13_q | i_reduction_nfs_open_file_remove_open_find_17_nfs_open_file_remove_open_find14_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15_qi), .xout(i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_19_nfs_open_file_remove_open_find16(LOGICAL,39)@974
    assign i_reduction_nfs_open_file_remove_open_find_19_nfs_open_file_remove_open_find16_q = redist7_sync_together248_aunroll_x_in_c0_eni66_16_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_18_nfs_open_file_remove_open_find15_q;

    // i_reduction_nfs_open_file_remove_open_find_20_nfs_open_file_remove_open_find17(LOGICAL,40)@974
    assign i_reduction_nfs_open_file_remove_open_find_20_nfs_open_file_remove_open_find17_q = redist8_sync_together248_aunroll_x_in_c0_eni66_17_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_19_nfs_open_file_remove_open_find16_q;

    // i_reduction_nfs_open_file_remove_open_find_21_nfs_open_file_remove_open_find18(LOGICAL,46)@974
    assign i_reduction_nfs_open_file_remove_open_find_21_nfs_open_file_remove_open_find18_q = redist9_sync_together248_aunroll_x_in_c0_eni66_18_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_20_nfs_open_file_remove_open_find17_q;

    // i_reduction_nfs_open_file_remove_open_find_22_nfs_open_file_remove_open_find19(LOGICAL,55)@974
    assign i_reduction_nfs_open_file_remove_open_find_22_nfs_open_file_remove_open_find19_q = redist10_sync_together248_aunroll_x_in_c0_eni66_19_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_21_nfs_open_file_remove_open_find18_q;

    // i_reduction_nfs_open_file_remove_open_find_23_nfs_open_file_remove_open_find20(LOGICAL,63)@974
    assign i_reduction_nfs_open_file_remove_open_find_23_nfs_open_file_remove_open_find20_q = redist11_sync_together248_aunroll_x_in_c0_eni66_20_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_22_nfs_open_file_remove_open_find19_q;

    // i_reduction_nfs_open_file_remove_open_find_28_nfs_open_file_remove_open_find25(LOGICAL,80)@974
    assign i_reduction_nfs_open_file_remove_open_find_28_nfs_open_file_remove_open_find25_q = redist12_sync_together248_aunroll_x_in_c0_eni66_29_tpl_2_q | i_reduction_nfs_open_file_remove_open_find_23_nfs_open_file_remove_open_find20_q;

    // i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28(LOGICAL,83)@974 + 1
    assign i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28_qi = i_reduction_nfs_open_file_remove_open_find_28_nfs_open_file_remove_open_find25_q | redist49_i_reduction_nfs_open_file_remove_open_find_29_nfs_open_file_remove_open_find26_q_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28_qi), .xout(i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_32_nfs_open_file_remove_open_find29(LOGICAL,84)@975
    assign i_reduction_nfs_open_file_remove_open_find_32_nfs_open_file_remove_open_find29_q = redist48_i_reduction_nfs_open_file_remove_open_find_30_nfs_open_file_remove_open_find27_q_3_q | i_reduction_nfs_open_file_remove_open_find_31_nfs_open_file_remove_open_find28_q;

    // i_reduction_nfs_open_file_remove_open_find_33_nfs_open_file_remove_open_find30(LOGICAL,87)@975
    assign i_reduction_nfs_open_file_remove_open_find_33_nfs_open_file_remove_open_find30_q = redist13_sync_together248_aunroll_x_in_c0_eni66_30_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_32_nfs_open_file_remove_open_find29_q;

    // i_reduction_nfs_open_file_remove_open_find_34_nfs_open_file_remove_open_find31(LOGICAL,98)@975
    assign i_reduction_nfs_open_file_remove_open_find_34_nfs_open_file_remove_open_find31_q = redist14_sync_together248_aunroll_x_in_c0_eni66_31_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_33_nfs_open_file_remove_open_find30_q;

    // i_reduction_nfs_open_file_remove_open_find_35_nfs_open_file_remove_open_find32(LOGICAL,106)@975
    assign i_reduction_nfs_open_file_remove_open_find_35_nfs_open_file_remove_open_find32_q = redist15_sync_together248_aunroll_x_in_c0_eni66_32_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_34_nfs_open_file_remove_open_find31_q;

    // i_reduction_nfs_open_file_remove_open_find_36_nfs_open_file_remove_open_find33(LOGICAL,112)@975
    assign i_reduction_nfs_open_file_remove_open_find_36_nfs_open_file_remove_open_find33_q = redist16_sync_together248_aunroll_x_in_c0_eni66_33_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_35_nfs_open_file_remove_open_find32_q;

    // i_reduction_nfs_open_file_remove_open_find_37_nfs_open_file_remove_open_find34(LOGICAL,120)@975
    assign i_reduction_nfs_open_file_remove_open_find_37_nfs_open_file_remove_open_find34_q = redist17_sync_together248_aunroll_x_in_c0_eni66_34_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_36_nfs_open_file_remove_open_find33_q;

    // i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37(LOGICAL,128)@975 + 1
    assign i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37_qi = redist18_sync_together248_aunroll_x_in_c0_eni66_39_tpl_3_q | i_reduction_nfs_open_file_remove_open_find_37_nfs_open_file_remove_open_find34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37_qi), .xout(i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_42_nfs_open_file_remove_open_find39(LOGICAL,130)@976
    assign i_reduction_nfs_open_file_remove_open_find_42_nfs_open_file_remove_open_find39_q = i_reduction_nfs_open_file_remove_open_find_40_nfs_open_file_remove_open_find37_q | redist46_i_reduction_nfs_open_file_remove_open_find_41_nfs_open_file_remove_open_find38_q_4_q;

    // i_reduction_nfs_open_file_remove_open_find_43_nfs_open_file_remove_open_find40(LOGICAL,131)@976
    assign i_reduction_nfs_open_file_remove_open_find_43_nfs_open_file_remove_open_find40_q = redist20_sync_together248_aunroll_x_in_c0_eni66_40_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_42_nfs_open_file_remove_open_find39_q;

    // i_reduction_nfs_open_file_remove_open_find_44_nfs_open_file_remove_open_find41(LOGICAL,136)@976
    assign i_reduction_nfs_open_file_remove_open_find_44_nfs_open_file_remove_open_find41_q = redist21_sync_together248_aunroll_x_in_c0_eni66_41_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_43_nfs_open_file_remove_open_find40_q;

    // i_reduction_nfs_open_file_remove_open_find_45_nfs_open_file_remove_open_find42(LOGICAL,143)@976
    assign i_reduction_nfs_open_file_remove_open_find_45_nfs_open_file_remove_open_find42_q = redist22_sync_together248_aunroll_x_in_c0_eni66_42_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_44_nfs_open_file_remove_open_find41_q;

    // i_reduction_nfs_open_file_remove_open_find_46_nfs_open_file_remove_open_find43(LOGICAL,151)@976
    assign i_reduction_nfs_open_file_remove_open_find_46_nfs_open_file_remove_open_find43_q = redist23_sync_together248_aunroll_x_in_c0_eni66_43_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_45_nfs_open_file_remove_open_find42_q;

    // i_reduction_nfs_open_file_remove_open_find_47_nfs_open_file_remove_open_find44(LOGICAL,155)@976
    assign i_reduction_nfs_open_file_remove_open_find_47_nfs_open_file_remove_open_find44_q = redist24_sync_together248_aunroll_x_in_c0_eni66_44_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_46_nfs_open_file_remove_open_find43_q;

    // i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50(LOGICAL,171)@976 + 1
    assign i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50_qi = redist25_sync_together248_aunroll_x_in_c0_eni66_55_tpl_4_q | i_reduction_nfs_open_file_remove_open_find_47_nfs_open_file_remove_open_find44_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50_qi), .xout(i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_56_nfs_open_file_remove_open_find53(LOGICAL,174)@977
    assign i_reduction_nfs_open_file_remove_open_find_56_nfs_open_file_remove_open_find53_q = redist43_i_reduction_nfs_open_file_remove_open_find_52_nfs_open_file_remove_open_find49_q_5_q | i_reduction_nfs_open_file_remove_open_find_53_nfs_open_file_remove_open_find50_q;

    // i_reduction_nfs_open_file_remove_open_find_58_nfs_open_file_remove_open_find55(LOGICAL,176)@977
    assign i_reduction_nfs_open_file_remove_open_find_58_nfs_open_file_remove_open_find55_q = i_reduction_nfs_open_file_remove_open_find_56_nfs_open_file_remove_open_find53_q | redist42_i_reduction_nfs_open_file_remove_open_find_57_nfs_open_file_remove_open_find54_q_5_q;

    // i_reduction_nfs_open_file_remove_open_find_59_nfs_open_file_remove_open_find56(LOGICAL,182)@977
    assign i_reduction_nfs_open_file_remove_open_find_59_nfs_open_file_remove_open_find56_q = redist26_sync_together248_aunroll_x_in_c0_eni66_56_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_58_nfs_open_file_remove_open_find55_q;

    // i_reduction_nfs_open_file_remove_open_find_60_nfs_open_file_remove_open_find57(LOGICAL,186)@977
    assign i_reduction_nfs_open_file_remove_open_find_60_nfs_open_file_remove_open_find57_q = redist27_sync_together248_aunroll_x_in_c0_eni66_57_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_59_nfs_open_file_remove_open_find56_q;

    // i_reduction_nfs_open_file_remove_open_find_61_nfs_open_file_remove_open_find58(LOGICAL,193)@977
    assign i_reduction_nfs_open_file_remove_open_find_61_nfs_open_file_remove_open_find58_q = redist28_sync_together248_aunroll_x_in_c0_eni66_58_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_60_nfs_open_file_remove_open_find57_q;

    // i_reduction_nfs_open_file_remove_open_find_62_nfs_open_file_remove_open_find59(LOGICAL,201)@977
    assign i_reduction_nfs_open_file_remove_open_find_62_nfs_open_file_remove_open_find59_q = redist29_sync_together248_aunroll_x_in_c0_eni66_59_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_61_nfs_open_file_remove_open_find58_q;

    // i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60(LOGICAL,202)@977 + 1
    assign i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60_qi = redist30_sync_together248_aunroll_x_in_c0_eni66_60_tpl_5_q | i_reduction_nfs_open_file_remove_open_find_62_nfs_open_file_remove_open_find59_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60_delay ( .xin(i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60_qi), .xout(i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_nfs_open_file_remove_open_find_64_nfs_open_file_remove_open_find61(LOGICAL,203)@978
    assign i_reduction_nfs_open_file_remove_open_find_64_nfs_open_file_remove_open_find61_q = redist31_sync_together248_aunroll_x_in_c0_eni66_61_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_63_nfs_open_file_remove_open_find60_q;

    // i_reduction_nfs_open_file_remove_open_find_65_nfs_open_file_remove_open_find62(LOGICAL,204)@978
    assign i_reduction_nfs_open_file_remove_open_find_65_nfs_open_file_remove_open_find62_q = redist32_sync_together248_aunroll_x_in_c0_eni66_62_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_64_nfs_open_file_remove_open_find61_q;

    // i_reduction_nfs_open_file_remove_open_find_66_nfs_open_file_remove_open_find63(LOGICAL,205)@978
    assign i_reduction_nfs_open_file_remove_open_find_66_nfs_open_file_remove_open_find63_q = redist33_sync_together248_aunroll_x_in_c0_eni66_63_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_65_nfs_open_file_remove_open_find62_q;

    // i_reduction_nfs_open_file_remove_open_find_67_nfs_open_file_remove_open_find64(LOGICAL,206)@978
    assign i_reduction_nfs_open_file_remove_open_find_67_nfs_open_file_remove_open_find64_q = redist34_sync_together248_aunroll_x_in_c0_eni66_64_tpl_6_q | i_reduction_nfs_open_file_remove_open_find_66_nfs_open_file_remove_open_find63_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,246)@978
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = i_reduction_nfs_open_file_remove_open_find_67_nfs_open_file_remove_open_find64_q;
    assign out_c0_exi7_2_tpl = i_reduction_nfs_open_file_remove_open_find_134_nfs_open_file_remove_open_find104_q;
    assign out_c0_exi7_3_tpl = i_reduction_nfs_open_file_remove_open_find_259_nfs_open_file_remove_open_find136_q;
    assign out_c0_exi7_4_tpl = i_reduction_nfs_open_file_remove_open_find_384_nfs_open_file_remove_open_find172_q;
    assign out_c0_exi7_5_tpl = i_reduction_nfs_open_file_remove_open_find_490_nfs_open_file_remove_open_find202_q;
    assign out_c0_exi7_6_tpl = i_reduction_nfs_open_file_remove_open_find_626_nfs_open_file_remove_open_find223_q;
    assign out_c0_exi7_7_tpl = redist39_i_reduction_nfs_open_file_remove_open_find_761_nfs_open_file_remove_open_find241_q_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_nfs_open_file_remove_open_find2 = GND_q;

endmodule
