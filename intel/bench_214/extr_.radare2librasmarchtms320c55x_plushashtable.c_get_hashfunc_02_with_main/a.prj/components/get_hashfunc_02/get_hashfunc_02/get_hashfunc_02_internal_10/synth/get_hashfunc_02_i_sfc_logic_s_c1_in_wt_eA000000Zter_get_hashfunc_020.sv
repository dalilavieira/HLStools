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

// SystemVerilog created from get_hashfunc_02_i_sfc_logic_s_c1_in_wt_eA000000Zter_get_hashfunc_020
// SystemVerilog created on Sun May 24 22:39:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module get_hashfunc_02_i_sfc_logic_s_c1_in_wt_eA000000Zter_get_hashfunc_020 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_get_hashfunc_021,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
    input wire [31:0] in_c1_eni1_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_1006632960394_q;
    wire [31:0] c_i32_100663296440_q;
    wire [31:0] c_i32_1207959553470_q;
    wire [31:0] c_i32_1409286145471_q;
    wire [31:0] c_i32_142457_q;
    wire [31:0] c_i32_167772160395_q;
    wire [31:0] c_i32_167772160427_q;
    wire [31:0] c_i32_1711276032446_q;
    wire [31:0] c_i32_178450_q;
    wire [31:0] c_i32_1912602624389_q;
    wire [31:0] c_i32_1912602625472_q;
    wire [31:0] c_i32_201326592439_q;
    wire [31:0] c_i32_226424_q;
    wire [31:0] c_i32_234881024407_q;
    wire [31:0] c_i32_268435456438_q;
    wire [31:0] c_i32_335544320392_q;
    wire [31:0] c_i32_33554432388_q;
    wire [31:0] c_i32_369098752437_q;
    wire [31:0] c_i32_369098752461_q;
    wire [31:0] c_i32_402653184408_q;
    wire [31:0] c_i32_436207616436_q;
    wire [31:0] c_i32_503316480399_q;
    wire [31:0] c_i32_536870912435_q;
    wire [31:0] c_i32_570425343421_q;
    wire [31:0] c_i32_671088639390_q;
    wire [31:0] c_i32_67108864398_q;
    wire [31:0] c_i32_738197504403_q;
    wire [31:0] c_i32_838860800397_q;
    wire [31:0] c_i32_905969664416_q;
    wire [31:0] c_i32_95414_q;
    wire [31:0] c_i32_96405_q;
    wire [0:0] i_acl_100_get_hashfunc_02267_s;
    reg [31:0] i_acl_100_get_hashfunc_02267_q;
    wire [0:0] i_acl_103_get_hashfunc_02268_q;
    wire [0:0] i_acl_105_get_hashfunc_02269_qi;
    reg [0:0] i_acl_105_get_hashfunc_02269_q;
    wire [0:0] i_acl_106_get_hashfunc_02270_q;
    wire [0:0] i_acl_107_get_hashfunc_02271_s;
    reg [31:0] i_acl_107_get_hashfunc_02271_q;
    wire [0:0] i_acl_108_get_hashfunc_02272_q;
    wire [0:0] i_acl_112_get_hashfunc_02273_qi;
    reg [0:0] i_acl_112_get_hashfunc_02273_q;
    wire [0:0] i_acl_113_get_hashfunc_02274_s;
    reg [31:0] i_acl_113_get_hashfunc_02274_q;
    wire [0:0] i_acl_114_get_hashfunc_02275_q;
    wire [0:0] i_acl_115_get_hashfunc_02276_q;
    wire [0:0] i_acl_119_get_hashfunc_02277_qi;
    reg [0:0] i_acl_119_get_hashfunc_02277_q;
    wire [0:0] i_acl_11_get_hashfunc_02135_s;
    reg [31:0] i_acl_11_get_hashfunc_02135_q;
    wire [24:0] i_acl_11_get_hashfunc_02135_vt_const_24_q;
    wire [2:0] i_acl_11_get_hashfunc_02135_vt_const_31_q;
    wire [31:0] i_acl_11_get_hashfunc_02135_vt_join_q;
    wire [3:0] i_acl_11_get_hashfunc_02135_vt_select_28_b;
    wire [0:0] i_acl_120_get_hashfunc_02278_s;
    reg [31:0] i_acl_120_get_hashfunc_02278_q;
    wire [0:0] i_acl_124_get_hashfunc_02279_q;
    wire [0:0] i_acl_125_get_hashfunc_02280_qi;
    reg [0:0] i_acl_125_get_hashfunc_02280_q;
    wire [0:0] i_acl_126_get_hashfunc_02281_s;
    reg [31:0] i_acl_126_get_hashfunc_02281_q;
    wire [0:0] i_acl_127_demorgan_get_hashfunc_02282_qi;
    reg [0:0] i_acl_127_demorgan_get_hashfunc_02282_q;
    wire [0:0] i_acl_130_get_hashfunc_02283_q;
    wire [0:0] i_acl_135_get_hashfunc_02290_s;
    reg [31:0] i_acl_135_get_hashfunc_02290_q;
    wire [0:0] i_acl_13_get_hashfunc_02136_s;
    reg [31:0] i_acl_13_get_hashfunc_02136_q;
    wire [31:0] i_acl_13_get_hashfunc_02136_vt_join_q;
    wire [3:0] i_acl_13_get_hashfunc_02136_vt_select_28_b;
    wire [0:0] i_acl_141_get_hashfunc_02294_qi;
    reg [0:0] i_acl_141_get_hashfunc_02294_q;
    wire [0:0] i_acl_143_get_hashfunc_02295_qi;
    reg [0:0] i_acl_143_get_hashfunc_02295_q;
    wire [0:0] i_acl_144_get_hashfunc_02296_s;
    reg [31:0] i_acl_144_get_hashfunc_02296_q;
    wire [0:0] i_acl_145_get_hashfunc_02297_q;
    wire [0:0] i_acl_152_get_hashfunc_02303_s;
    reg [31:0] i_acl_152_get_hashfunc_02303_q;
    wire [0:0] i_acl_153_get_hashfunc_02304_q;
    wire [0:0] i_acl_155_get_hashfunc_02305_q;
    wire [0:0] i_acl_156_get_hashfunc_02306_qi;
    reg [0:0] i_acl_156_get_hashfunc_02306_q;
    wire [0:0] i_acl_159_get_hashfunc_02307_qi;
    reg [0:0] i_acl_159_get_hashfunc_02307_q;
    wire [0:0] i_acl_160_get_hashfunc_02308_s;
    reg [31:0] i_acl_160_get_hashfunc_02308_q;
    wire [0:0] i_acl_162_get_hashfunc_02309_s;
    reg [31:0] i_acl_162_get_hashfunc_02309_q;
    wire [0:0] i_acl_164_demorgan_get_hashfunc_02310_q;
    wire [0:0] i_acl_164_get_hashfunc_02311_q;
    wire [0:0] i_acl_165_get_hashfunc_02312_q;
    wire [0:0] i_acl_166_get_hashfunc_02313_q;
    wire [0:0] i_acl_167_get_hashfunc_02314_s;
    reg [0:0] i_acl_167_get_hashfunc_02314_q;
    wire [0:0] i_acl_168_get_hashfunc_02315_q;
    wire [0:0] i_acl_169_get_hashfunc_02316_q;
    wire [0:0] i_acl_16_get_hashfunc_02236_q;
    wire [0:0] i_acl_170_get_hashfunc_02317_s;
    reg [0:0] i_acl_170_get_hashfunc_02317_q;
    wire [0:0] i_acl_171_get_hashfunc_02319_q;
    wire [0:0] i_acl_172_get_hashfunc_02320_s;
    reg [0:0] i_acl_172_get_hashfunc_02320_q;
    wire [0:0] i_acl_173_get_hashfunc_02322_q;
    wire [0:0] i_acl_174_get_hashfunc_02323_qi;
    reg [0:0] i_acl_174_get_hashfunc_02323_q;
    wire [0:0] i_acl_175_get_hashfunc_02324_s;
    reg [31:0] i_acl_175_get_hashfunc_02324_q;
    wire [0:0] i_acl_180_get_hashfunc_02325_qi;
    reg [0:0] i_acl_180_get_hashfunc_02325_q;
    wire [0:0] i_acl_181_get_hashfunc_02326_qi;
    reg [0:0] i_acl_181_get_hashfunc_02326_q;
    wire [0:0] i_acl_182_get_hashfunc_02327_s;
    reg [31:0] i_acl_182_get_hashfunc_02327_q;
    wire [0:0] i_acl_20_get_hashfunc_02238_q;
    wire [0:0] i_acl_212_get_hashfunc_02329_q;
    wire [0:0] i_acl_213_get_hashfunc_02330_q;
    wire [0:0] i_acl_217_get_hashfunc_02338_s;
    reg [31:0] i_acl_217_get_hashfunc_02338_q;
    wire [0:0] i_acl_21_get_hashfunc_02239_s;
    reg [31:0] i_acl_21_get_hashfunc_02239_q;
    wire [0:0] i_acl_222_get_hashfunc_02339_s;
    reg [31:0] i_acl_222_get_hashfunc_02339_q;
    wire [0:0] i_acl_225_get_hashfunc_02340_q;
    wire [0:0] i_acl_227_get_hashfunc_02341_qi;
    reg [0:0] i_acl_227_get_hashfunc_02341_q;
    wire [0:0] i_acl_229_get_hashfunc_02342_s;
    reg [31:0] i_acl_229_get_hashfunc_02342_q;
    wire [0:0] i_acl_243_get_hashfunc_02345_s;
    reg [31:0] i_acl_243_get_hashfunc_02345_q;
    wire [0:0] i_acl_244_get_hashfunc_02346_q;
    wire [0:0] i_acl_247_get_hashfunc_02347_qi;
    reg [0:0] i_acl_247_get_hashfunc_02347_q;
    wire [0:0] i_acl_249_get_hashfunc_02348_s;
    reg [31:0] i_acl_249_get_hashfunc_02348_q;
    wire [0:0] i_acl_254_get_hashfunc_02353_qi;
    reg [0:0] i_acl_254_get_hashfunc_02353_q;
    wire [0:0] i_acl_257_get_hashfunc_02357_s;
    reg [31:0] i_acl_257_get_hashfunc_02357_q;
    wire [0:0] i_acl_258_get_hashfunc_02358_q;
    wire [0:0] i_acl_259_get_hashfunc_02359_qi;
    reg [0:0] i_acl_259_get_hashfunc_02359_q;
    wire [0:0] i_acl_265_get_hashfunc_02360_s;
    reg [31:0] i_acl_265_get_hashfunc_02360_q;
    wire [0:0] i_acl_266_get_hashfunc_02361_q;
    wire [0:0] i_acl_267_get_hashfunc_02362_q;
    wire [0:0] i_acl_270_get_hashfunc_02363_qi;
    reg [0:0] i_acl_270_get_hashfunc_02363_q;
    wire [0:0] i_acl_272_get_hashfunc_02364_s;
    reg [31:0] i_acl_272_get_hashfunc_02364_q;
    wire [0:0] i_acl_275_get_hashfunc_02365_q;
    wire [0:0] i_acl_276_get_hashfunc_02366_qi;
    reg [0:0] i_acl_276_get_hashfunc_02366_q;
    wire [0:0] i_acl_278_get_hashfunc_02367_s;
    reg [31:0] i_acl_278_get_hashfunc_02367_q;
    wire [0:0] i_acl_279_get_hashfunc_02368_s;
    reg [0:0] i_acl_279_get_hashfunc_02368_q;
    wire [0:0] i_acl_280_get_hashfunc_02369_s;
    reg [0:0] i_acl_280_get_hashfunc_02369_q;
    wire [0:0] i_acl_281_get_hashfunc_02370_q;
    wire [0:0] i_acl_282_get_hashfunc_02371_s;
    reg [0:0] i_acl_282_get_hashfunc_02371_q;
    wire [0:0] i_acl_283_get_hashfunc_02372_q;
    wire [0:0] i_acl_288_get_hashfunc_02376_s;
    reg [31:0] i_acl_288_get_hashfunc_02376_q;
    wire [0:0] i_acl_289_get_hashfunc_02378_q;
    wire [0:0] i_acl_289_v_get_hashfunc_02377_s;
    reg [0:0] i_acl_289_v_get_hashfunc_02377_q;
    wire [0:0] i_acl_28_get_hashfunc_02240_s;
    reg [31:0] i_acl_28_get_hashfunc_02240_q;
    wire [0:0] i_acl_290_get_hashfunc_02379_qi;
    reg [0:0] i_acl_290_get_hashfunc_02379_q;
    wire [0:0] i_acl_296_get_hashfunc_02385_s;
    reg [31:0] i_acl_296_get_hashfunc_02385_q;
    wire [0:0] i_acl_29_get_hashfunc_02241_q;
    wire [0:0] i_acl_2_get_hashfunc_02129_s;
    reg [31:0] i_acl_2_get_hashfunc_02129_q;
    wire [4:0] i_acl_2_get_hashfunc_02129_vt_const_31_q;
    wire [31:0] i_acl_2_get_hashfunc_02129_vt_join_q;
    wire [1:0] i_acl_2_get_hashfunc_02129_vt_select_26_b;
    wire [0:0] i_acl_34_get_hashfunc_02242_q;
    wire [0:0] i_acl_35_get_hashfunc_02243_s;
    reg [31:0] i_acl_35_get_hashfunc_02243_q;
    wire [0:0] i_acl_38_get_hashfunc_02244_q;
    wire [0:0] i_acl_39_get_hashfunc_02245_q;
    wire [0:0] i_acl_41_get_hashfunc_02246_q;
    wire [0:0] i_acl_42_get_hashfunc_02247_s;
    reg [31:0] i_acl_42_get_hashfunc_02247_q;
    wire [0:0] i_acl_43_get_hashfunc_02248_q;
    wire [0:0] i_acl_45_get_hashfunc_02249_q;
    wire [0:0] i_acl_49_get_hashfunc_02250_q;
    wire [0:0] i_acl_4_get_hashfunc_02130_qi;
    reg [0:0] i_acl_4_get_hashfunc_02130_q;
    wire [0:0] i_acl_50_get_hashfunc_02251_s;
    reg [31:0] i_acl_50_get_hashfunc_02251_q;
    wire [0:0] i_acl_5_get_hashfunc_02131_s;
    reg [31:0] i_acl_5_get_hashfunc_02131_q;
    wire [3:0] i_acl_5_get_hashfunc_02131_vt_const_31_q;
    wire [31:0] i_acl_5_get_hashfunc_02131_vt_join_q;
    wire [2:0] i_acl_5_get_hashfunc_02131_vt_select_27_b;
    wire [0:0] i_acl_64_get_hashfunc_02253_s;
    reg [31:0] i_acl_64_get_hashfunc_02253_q;
    wire [0:0] i_acl_68_get_hashfunc_02254_qi;
    reg [0:0] i_acl_68_get_hashfunc_02254_q;
    wire [0:0] i_acl_72_get_hashfunc_02255_q;
    wire [0:0] i_acl_73_get_hashfunc_02256_s;
    reg [31:0] i_acl_73_get_hashfunc_02256_q;
    wire [0:0] i_acl_74_get_hashfunc_02257_q;
    wire [0:0] i_acl_75_get_hashfunc_02258_q;
    wire [0:0] i_acl_77_get_hashfunc_02259_qi;
    reg [0:0] i_acl_77_get_hashfunc_02259_q;
    wire [0:0] i_acl_7_get_hashfunc_02132_q;
    wire [0:0] i_acl_81_get_hashfunc_02260_q;
    wire [0:0] i_acl_82_get_hashfunc_02261_s;
    reg [31:0] i_acl_82_get_hashfunc_02261_q;
    wire [0:0] i_acl_84_get_hashfunc_02262_q;
    wire [0:0] i_acl_85_get_hashfunc_02263_qi;
    reg [0:0] i_acl_85_get_hashfunc_02263_q;
    wire [0:0] i_acl_89_get_hashfunc_02264_q;
    wire [0:0] i_acl_8_get_hashfunc_02133_s;
    reg [31:0] i_acl_8_get_hashfunc_02133_q;
    wire [31:0] i_acl_8_get_hashfunc_02133_vt_join_q;
    wire [3:0] i_acl_8_get_hashfunc_02133_vt_select_28_b;
    wire [0:0] i_acl_90_get_hashfunc_02265_s;
    reg [31:0] i_acl_90_get_hashfunc_02265_q;
    wire [0:0] i_acl_94_get_hashfunc_02266_s;
    reg [31:0] i_acl_94_get_hashfunc_02266_q;
    wire [0:0] i_acl_9_get_hashfunc_02134_q;
    wire [0:0] i_acl_get_hashfunc_02128_qi;
    reg [0:0] i_acl_get_hashfunc_02128_q;
    wire [31:0] i_and_get_hashfunc_023_q;
    wire [31:0] i_and_get_hashfunc_023_vt_join_q;
    wire [6:0] i_and_get_hashfunc_023_vt_select_31_b;
    wire [32:0] i_and_off319_get_hashfunc_02298_a;
    wire [32:0] i_and_off319_get_hashfunc_02298_b;
    logic [32:0] i_and_off319_get_hashfunc_02298_o;
    wire [32:0] i_and_off319_get_hashfunc_02298_q;
    wire [24:0] i_and_off319_get_hashfunc_02298_vt_const_24_q;
    wire [31:0] i_and_off319_get_hashfunc_02298_vt_join_q;
    wire [6:0] i_and_off319_get_hashfunc_02298_vt_select_31_b;
    wire [32:0] i_and_off334_get_hashfunc_02354_a;
    wire [32:0] i_and_off334_get_hashfunc_02354_b;
    logic [32:0] i_and_off334_get_hashfunc_02354_o;
    wire [32:0] i_and_off334_get_hashfunc_02354_q;
    wire [31:0] i_and_off334_get_hashfunc_02354_vt_join_q;
    wire [6:0] i_and_off334_get_hashfunc_02354_vt_select_31_b;
    wire [32:0] i_and_off_get_hashfunc_02284_a;
    wire [32:0] i_and_off_get_hashfunc_02284_b;
    logic [32:0] i_and_off_get_hashfunc_02284_o;
    wire [32:0] i_and_off_get_hashfunc_02284_q;
    wire [31:0] i_and_off_get_hashfunc_02284_vt_join_q;
    wire [6:0] i_and_off_get_hashfunc_02284_vt_select_31_b;
    wire [0:0] i_arg1127_get_hashfunc_02108_s;
    reg [31:0] i_arg1127_get_hashfunc_02108_q;
    wire [0:0] i_arg1128_get_hashfunc_02116_s;
    reg [31:0] i_arg1128_get_hashfunc_02116_q;
    wire [0:0] i_arg1129_get_hashfunc_02182_s;
    reg [31:0] i_arg1129_get_hashfunc_02182_q;
    wire [0:0] i_arg1131_get_hashfunc_02139_s;
    reg [31:0] i_arg1131_get_hashfunc_02139_q;
    wire [0:0] i_arg1132_get_hashfunc_02185_s;
    reg [31:0] i_arg1132_get_hashfunc_02185_q;
    wire [0:0] i_arg1133_get_hashfunc_02219_s;
    reg [31:0] i_arg1133_get_hashfunc_02219_q;
    wire [0:0] i_arg1134_get_hashfunc_02222_s;
    reg [31:0] i_arg1134_get_hashfunc_02222_q;
    wire [0:0] i_arg1135_get_hashfunc_0290_s;
    reg [31:0] i_arg1135_get_hashfunc_0290_q;
    wire [0:0] i_arg1137_get_hashfunc_02158_s;
    reg [31:0] i_arg1137_get_hashfunc_02158_q;
    wire [0:0] i_arg1139_get_hashfunc_02192_s;
    reg [31:0] i_arg1139_get_hashfunc_02192_q;
    wire [0:0] i_arg1140_get_hashfunc_02200_s;
    reg [31:0] i_arg1140_get_hashfunc_02200_q;
    wire [0:0] i_arg1143_get_hashfunc_02171_s;
    reg [31:0] i_arg1143_get_hashfunc_02171_q;
    wire [0:0] i_arg1145_get_hashfunc_02212_s;
    reg [31:0] i_arg1145_get_hashfunc_02212_q;
    wire [0:0] i_arg1146_get_hashfunc_02216_s;
    reg [31:0] i_arg1146_get_hashfunc_02216_q;
    wire [0:0] i_arg1_130_get_hashfunc_02145_s;
    reg [31:0] i_arg1_130_get_hashfunc_02145_q;
    wire [0:0] i_arg1_get_hashfunc_0240_s;
    reg [31:0] i_arg1_get_hashfunc_0240_q;
    wire [0:0] i_arg1_get_hashfunc_0260_s;
    reg [31:0] i_arg1_get_hashfunc_0260_q;
    wire [0:0] i_cmp101_get_hashfunc_0225_q;
    wire [33:0] i_cmp104_get_hashfunc_0244_a;
    wire [33:0] i_cmp104_get_hashfunc_0244_b;
    logic [33:0] i_cmp104_get_hashfunc_0244_o;
    wire [0:0] i_cmp104_get_hashfunc_0244_c;
    wire [0:0] i_cmp109_get_hashfunc_0270_q;
    wire [33:0] i_cmp10_get_hashfunc_0234_a;
    wire [33:0] i_cmp10_get_hashfunc_0234_b;
    logic [33:0] i_cmp10_get_hashfunc_0234_o;
    wire [0:0] i_cmp10_get_hashfunc_0234_c;
    wire [0:0] i_cmp111_get_hashfunc_0272_q;
    wire [0:0] i_cmp119_get_hashfunc_0215_q;
    wire [33:0] i_cmp122_get_hashfunc_0227_a;
    wire [33:0] i_cmp122_get_hashfunc_0227_b;
    logic [33:0] i_cmp122_get_hashfunc_0227_o;
    wire [0:0] i_cmp122_get_hashfunc_0227_c;
    wire [33:0] i_cmp124_get_hashfunc_0245_a;
    wire [33:0] i_cmp124_get_hashfunc_0245_b;
    logic [33:0] i_cmp124_get_hashfunc_0245_o;
    wire [0:0] i_cmp124_get_hashfunc_0245_c;
    wire [0:0] i_cmp129_get_hashfunc_0276_q;
    wire [0:0] i_cmp12_get_hashfunc_0258_qi;
    reg [0:0] i_cmp12_get_hashfunc_0258_q;
    wire [0:0] i_cmp131_get_hashfunc_0278_q;
    wire [0:0] i_cmp138_get_hashfunc_0246_q;
    wire [33:0] i_cmp141_get_hashfunc_0282_a;
    wire [33:0] i_cmp141_get_hashfunc_0282_b;
    logic [33:0] i_cmp141_get_hashfunc_0282_o;
    wire [0:0] i_cmp141_get_hashfunc_0282_c;
    wire [0:0] i_cmp141_not_get_hashfunc_0283_q;
    wire [0:0] i_cmp147_get_hashfunc_02142_q;
    wire [0:0] i_cmp151_get_hashfunc_02137_qi;
    reg [0:0] i_cmp151_get_hashfunc_02137_q;
    wire [0:0] i_cmp159_get_hashfunc_026_qi;
    reg [0:0] i_cmp159_get_hashfunc_026_q;
    wire [33:0] i_cmp162_get_hashfunc_0211_a;
    wire [33:0] i_cmp162_get_hashfunc_0211_b;
    logic [33:0] i_cmp162_get_hashfunc_0211_o;
    wire [0:0] i_cmp162_get_hashfunc_0211_c;
    wire [33:0] i_cmp164_get_hashfunc_0217_a;
    wire [33:0] i_cmp164_get_hashfunc_0217_b;
    logic [33:0] i_cmp164_get_hashfunc_0217_o;
    wire [0:0] i_cmp164_get_hashfunc_0217_c;
    wire [0:0] i_cmp166_get_hashfunc_0228_q;
    wire [33:0] i_cmp168_get_hashfunc_0248_a;
    wire [33:0] i_cmp168_get_hashfunc_0248_b;
    logic [33:0] i_cmp168_get_hashfunc_0248_o;
    wire [0:0] i_cmp168_get_hashfunc_0248_c;
    wire [33:0] i_cmp170_get_hashfunc_0284_a;
    wire [33:0] i_cmp170_get_hashfunc_0284_b;
    logic [33:0] i_cmp170_get_hashfunc_0284_o;
    wire [0:0] i_cmp170_get_hashfunc_0284_c;
    wire [0:0] i_cmp172_get_hashfunc_02146_q;
    wire [0:0] i_cmp176_get_hashfunc_02148_q;
    wire [0:0] i_cmp178_get_hashfunc_02150_q;
    wire [0:0] i_cmp180_get_hashfunc_02183_qi;
    reg [0:0] i_cmp180_get_hashfunc_02183_q;
    wire [0:0] i_cmp186_get_hashfunc_0286_q;
    wire [33:0] i_cmp188_get_hashfunc_02154_a;
    wire [33:0] i_cmp188_get_hashfunc_02154_b;
    logic [33:0] i_cmp188_get_hashfunc_02154_o;
    wire [0:0] i_cmp188_get_hashfunc_02154_c;
    wire [0:0] i_cmp18_get_hashfunc_0263_q;
    wire [0:0] i_cmp190_get_hashfunc_02186_q;
    wire [0:0] i_cmp192_get_hashfunc_02217_qi;
    reg [0:0] i_cmp192_get_hashfunc_02217_q;
    wire [0:0] i_cmp201_get_hashfunc_02220_qi;
    reg [0:0] i_cmp201_get_hashfunc_02220_q;
    wire [33:0] i_cmp210_get_hashfunc_0230_a;
    wire [33:0] i_cmp210_get_hashfunc_0230_b;
    logic [33:0] i_cmp210_get_hashfunc_0230_o;
    wire [0:0] i_cmp210_get_hashfunc_0230_c;
    wire [33:0] i_cmp212_get_hashfunc_0250_a;
    wire [33:0] i_cmp212_get_hashfunc_0250_b;
    logic [33:0] i_cmp212_get_hashfunc_0250_o;
    wire [0:0] i_cmp212_get_hashfunc_0250_c;
    wire [0:0] i_cmp214_get_hashfunc_0288_qi;
    reg [0:0] i_cmp214_get_hashfunc_0288_q;
    wire [0:0] i_cmp222_get_hashfunc_0293_q;
    wire [0:0] i_cmp227_get_hashfunc_0252_qi;
    reg [0:0] i_cmp227_get_hashfunc_0252_q;
    wire [33:0] i_cmp229_get_hashfunc_0297_a;
    wire [33:0] i_cmp229_get_hashfunc_0297_b;
    logic [33:0] i_cmp229_get_hashfunc_0297_o;
    wire [0:0] i_cmp229_get_hashfunc_0297_c;
    wire [0:0] i_cmp229_not_get_hashfunc_0299_q;
    wire [0:0] i_cmp22_get_hashfunc_0235_q;
    wire [0:0] i_cmp231_get_hashfunc_02156_qi;
    reg [0:0] i_cmp231_get_hashfunc_02156_q;
    wire [0:0] i_cmp239_get_hashfunc_02161_q;
    wire [0:0] i_cmp246_get_hashfunc_0219_q;
    wire [33:0] i_cmp249_get_hashfunc_0232_a;
    wire [33:0] i_cmp249_get_hashfunc_0232_b;
    logic [33:0] i_cmp249_get_hashfunc_0232_o;
    wire [0:0] i_cmp249_get_hashfunc_0232_c;
    wire [33:0] i_cmp24_get_hashfunc_0267_a;
    wire [33:0] i_cmp24_get_hashfunc_0267_b;
    logic [33:0] i_cmp24_get_hashfunc_0267_o;
    wire [0:0] i_cmp24_get_hashfunc_0267_c;
    wire [0:0] i_cmp251_get_hashfunc_0254_q;
    wire [33:0] i_cmp253_get_hashfunc_02100_a;
    wire [33:0] i_cmp253_get_hashfunc_02100_b;
    logic [33:0] i_cmp253_get_hashfunc_02100_o;
    wire [0:0] i_cmp253_get_hashfunc_02100_c;
    wire [33:0] i_cmp255_get_hashfunc_02165_a;
    wire [33:0] i_cmp255_get_hashfunc_02165_b;
    logic [33:0] i_cmp255_get_hashfunc_02165_o;
    wire [0:0] i_cmp255_get_hashfunc_02165_c;
    wire [0:0] i_cmp257_get_hashfunc_02190_qi;
    reg [0:0] i_cmp257_get_hashfunc_02190_q;
    wire [0:0] i_cmp261_get_hashfunc_02193_q;
    wire [0:0] i_cmp263_get_hashfunc_02195_q;
    wire [0:0] i_cmp265_get_hashfunc_02198_q;
    wire [0:0] i_cmp26_get_hashfunc_02106_qi;
    reg [0:0] i_cmp26_get_hashfunc_02106_q;
    wire [0:0] i_cmp270_get_hashfunc_02167_q;
    wire [33:0] i_cmp272_get_hashfunc_02202_a;
    wire [33:0] i_cmp272_get_hashfunc_02202_b;
    logic [33:0] i_cmp272_get_hashfunc_02202_o;
    wire [0:0] i_cmp272_get_hashfunc_02202_c;
    wire [0:0] i_cmp272_not_get_hashfunc_02204_q;
    wire [0:0] i_cmp274_get_hashfunc_02223_q;
    wire [0:0] i_cmp276_get_hashfunc_02225_q;
    wire [0:0] i_cmp285_get_hashfunc_02232_q;
    wire [33:0] i_cmp294_get_hashfunc_0256_a;
    wire [33:0] i_cmp294_get_hashfunc_0256_b;
    logic [33:0] i_cmp294_get_hashfunc_0256_o;
    wire [0:0] i_cmp294_get_hashfunc_0256_c;
    wire [33:0] i_cmp296_get_hashfunc_02102_a;
    wire [33:0] i_cmp296_get_hashfunc_02102_b;
    logic [33:0] i_cmp296_get_hashfunc_02102_o;
    wire [0:0] i_cmp296_get_hashfunc_02102_c;
    wire [0:0] i_cmp298_get_hashfunc_02169_q;
    wire [33:0] i_cmp2_get_hashfunc_025_a;
    wire [33:0] i_cmp2_get_hashfunc_025_b;
    logic [33:0] i_cmp2_get_hashfunc_025_o;
    wire [0:0] i_cmp2_get_hashfunc_025_c;
    wire [0:0] i_cmp306_get_hashfunc_02174_q;
    wire [0:0] i_cmp30_get_hashfunc_02109_q;
    wire [0:0] i_cmp311_get_hashfunc_02104_q;
    wire [33:0] i_cmp314_get_hashfunc_02178_a;
    wire [33:0] i_cmp314_get_hashfunc_02178_b;
    logic [33:0] i_cmp314_get_hashfunc_02178_o;
    wire [0:0] i_cmp314_get_hashfunc_02178_c;
    wire [0:0] i_cmp316_get_hashfunc_02205_q;
    wire [0:0] i_cmp318_get_hashfunc_02207_q;
    wire [0:0] i_cmp320_get_hashfunc_02210_qi;
    reg [0:0] i_cmp320_get_hashfunc_02210_q;
    wire [0:0] i_cmp325_get_hashfunc_02214_qi;
    reg [0:0] i_cmp325_get_hashfunc_02214_q;
    wire [0:0] i_cmp32_get_hashfunc_02111_q;
    wire [0:0] i_cmp34_get_hashfunc_02114_qi;
    reg [0:0] i_cmp34_get_hashfunc_02114_q;
    wire [0:0] i_cmp41_get_hashfunc_0222_q;
    wire [0:0] i_cmp45_get_hashfunc_0237_q;
    wire [33:0] i_cmp47_get_hashfunc_0268_a;
    wire [33:0] i_cmp47_get_hashfunc_0268_b;
    logic [33:0] i_cmp47_get_hashfunc_0268_o;
    wire [0:0] i_cmp47_get_hashfunc_0268_c;
    wire [0:0] i_cmp49_get_hashfunc_02118_q;
    wire [0:0] i_cmp4_get_hashfunc_028_q;
    wire [0:0] i_cmp51_get_hashfunc_02120_q;
    wire [0:0] i_cmp55_get_hashfunc_02123_q;
    wire [0:0] i_cmp57_get_hashfunc_02125_q;
    wire [0:0] i_cmp59_get_hashfunc_02180_qi;
    reg [0:0] i_cmp59_get_hashfunc_02180_q;
    wire [33:0] i_cmp6_get_hashfunc_0213_a;
    wire [33:0] i_cmp6_get_hashfunc_0213_b;
    logic [33:0] i_cmp6_get_hashfunc_0213_o;
    wire [0:0] i_cmp6_get_hashfunc_0213_c;
    wire [33:0] i_cmp85_get_hashfunc_0210_a;
    wire [33:0] i_cmp85_get_hashfunc_0210_b;
    logic [33:0] i_cmp85_get_hashfunc_0210_o;
    wire [0:0] i_cmp85_get_hashfunc_0210_c;
    wire [33:0] i_cmp87_get_hashfunc_0214_a;
    wire [33:0] i_cmp87_get_hashfunc_0214_b;
    logic [33:0] i_cmp87_get_hashfunc_0214_o;
    wire [0:0] i_cmp87_get_hashfunc_0214_c;
    wire [33:0] i_cmp89_get_hashfunc_0224_a;
    wire [33:0] i_cmp89_get_hashfunc_0224_b;
    logic [33:0] i_cmp89_get_hashfunc_0224_o;
    wire [0:0] i_cmp89_get_hashfunc_0224_c;
    wire [33:0] i_cmp8_get_hashfunc_0221_a;
    wire [33:0] i_cmp8_get_hashfunc_0221_b;
    logic [33:0] i_cmp8_get_hashfunc_0221_o;
    wire [0:0] i_cmp8_get_hashfunc_0221_c;
    wire [33:0] i_cmp91_get_hashfunc_0239_a;
    wire [33:0] i_cmp91_get_hashfunc_0239_b;
    logic [33:0] i_cmp91_get_hashfunc_0239_o;
    wire [0:0] i_cmp91_get_hashfunc_0239_c;
    wire [33:0] i_cmp_get_hashfunc_024_a;
    wire [33:0] i_cmp_get_hashfunc_024_b;
    logic [33:0] i_cmp_get_hashfunc_024_o;
    wire [0:0] i_cmp_get_hashfunc_024_c;
    wire [0:0] i_not_cmp119_get_hashfunc_02318_q;
    wire [0:0] i_not_cmp159_get_hashfunc_02286_q;
    wire [0:0] i_not_cmp2_get_hashfunc_02321_qi;
    reg [0:0] i_not_cmp2_get_hashfunc_02321_q;
    wire [0:0] i_not_cmp41_get_hashfunc_02380_q;
    wire [0:0] i_not_cmp4_get_hashfunc_02352_q;
    wire [0:0] i_not_cmp6_get_hashfunc_02381_q;
    wire [0:0] i_not_cmp89_get_hashfunc_02328_q;
    wire [0:0] i_not_cmp_get_hashfunc_02237_q;
    wire [0:0] i_notrhs297_get_hashfunc_0280_q;
    wire [0:0] i_notrhs_get_hashfunc_0274_q;
    wire [0:0] i_or_cond13_get_hashfunc_02197_q;
    wire [0:0] i_or_cond16_get_hashfunc_02209_qi;
    reg [0:0] i_or_cond16_get_hashfunc_02209_q;
    wire [0:0] i_or_cond1_get_hashfunc_02113_qi;
    reg [0:0] i_or_cond1_get_hashfunc_02113_q;
    wire [0:0] i_or_cond2_get_hashfunc_02122_q;
    wire [0:0] i_or_cond3_get_hashfunc_02127_q;
    wire [0:0] i_or_cond5_not_get_hashfunc_0275_q;
    wire [0:0] i_or_cond6_not_get_hashfunc_0281_q;
    wire [0:0] i_or_cond8_get_hashfunc_02144_qi;
    reg [0:0] i_or_cond8_get_hashfunc_02144_q;
    wire [0:0] i_or_cond9_get_hashfunc_02152_q;
    wire [0:0] i_or_cond9_not_get_hashfunc_02153_q;
    wire [0:0] i_reduction_get_hashfunc_02_0_get_hashfunc_02287_q;
    wire [0:0] i_reduction_get_hashfunc_02_10_get_hashfunc_02331_q;
    wire [0:0] i_reduction_get_hashfunc_02_11_get_hashfunc_02332_q;
    wire [0:0] i_reduction_get_hashfunc_02_12_get_hashfunc_02333_q;
    wire [0:0] i_reduction_get_hashfunc_02_13_get_hashfunc_02334_q;
    wire [0:0] i_reduction_get_hashfunc_02_14_get_hashfunc_02335_q;
    wire [0:0] i_reduction_get_hashfunc_02_15_get_hashfunc_02336_q;
    wire [0:0] i_reduction_get_hashfunc_02_16_get_hashfunc_02337_qi;
    reg [0:0] i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q;
    wire [0:0] i_reduction_get_hashfunc_02_17_get_hashfunc_02349_q;
    wire [0:0] i_reduction_get_hashfunc_02_18_get_hashfunc_02350_q;
    wire [0:0] i_reduction_get_hashfunc_02_19_get_hashfunc_02351_q;
    wire [0:0] i_reduction_get_hashfunc_02_1_get_hashfunc_02288_q;
    wire [0:0] i_reduction_get_hashfunc_02_20_get_hashfunc_02373_q;
    wire [0:0] i_reduction_get_hashfunc_02_21_get_hashfunc_02374_q;
    wire [0:0] i_reduction_get_hashfunc_02_22_get_hashfunc_02375_qi;
    reg [0:0] i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q;
    wire [0:0] i_reduction_get_hashfunc_02_23_get_hashfunc_02382_qi;
    reg [0:0] i_reduction_get_hashfunc_02_23_get_hashfunc_02382_q;
    wire [0:0] i_reduction_get_hashfunc_02_24_get_hashfunc_02383_q;
    wire [0:0] i_reduction_get_hashfunc_02_25_get_hashfunc_02384_qi;
    reg [0:0] i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q;
    wire [0:0] i_reduction_get_hashfunc_02_2_get_hashfunc_02289_qi;
    reg [0:0] i_reduction_get_hashfunc_02_2_get_hashfunc_02289_q;
    wire [0:0] i_reduction_get_hashfunc_02_3_get_hashfunc_02291_q;
    wire [0:0] i_reduction_get_hashfunc_02_4_get_hashfunc_02292_q;
    wire [0:0] i_reduction_get_hashfunc_02_5_get_hashfunc_02293_q;
    wire [0:0] i_reduction_get_hashfunc_02_7_get_hashfunc_02300_q;
    wire [0:0] i_reduction_get_hashfunc_02_8_get_hashfunc_02301_q;
    wire [0:0] i_reduction_get_hashfunc_02_9_get_hashfunc_02302_qi;
    reg [0:0] i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q;
    wire [0:0] i_unnamed_get_hashfunc_02117_s;
    reg [31:0] i_unnamed_get_hashfunc_02117_q;
    wire [0:0] i_unnamed_get_hashfunc_02140_q;
    wire [0:0] i_unnamed_get_hashfunc_02159_q;
    wire [0:0] i_unnamed_get_hashfunc_02163_qi;
    reg [0:0] i_unnamed_get_hashfunc_02163_q;
    wire [0:0] i_unnamed_get_hashfunc_02164_s;
    reg [31:0] i_unnamed_get_hashfunc_02164_q;
    wire [0:0] i_unnamed_get_hashfunc_02172_q;
    wire [0:0] i_unnamed_get_hashfunc_02176_q;
    wire [0:0] i_unnamed_get_hashfunc_02177_s;
    reg [31:0] i_unnamed_get_hashfunc_02177_q;
    wire [0:0] i_unnamed_get_hashfunc_02188_q;
    wire [0:0] i_unnamed_get_hashfunc_02201_s;
    reg [31:0] i_unnamed_get_hashfunc_02201_q;
    wire [0:0] i_unnamed_get_hashfunc_02213_s;
    reg [31:0] i_unnamed_get_hashfunc_02213_q;
    wire [0:0] i_unnamed_get_hashfunc_02227_qi;
    reg [0:0] i_unnamed_get_hashfunc_02227_q;
    wire [0:0] i_unnamed_get_hashfunc_02228_s;
    reg [31:0] i_unnamed_get_hashfunc_02228_q;
    wire [31:0] i_unnamed_get_hashfunc_02229_q;
    wire [31:0] i_unnamed_get_hashfunc_02229_vt_join_q;
    wire [0:0] i_unnamed_get_hashfunc_02230_qi;
    reg [0:0] i_unnamed_get_hashfunc_02230_q;
    wire [0:0] i_unnamed_get_hashfunc_02234_qi;
    reg [0:0] i_unnamed_get_hashfunc_02234_q;
    wire [0:0] i_unnamed_get_hashfunc_02235_s;
    reg [31:0] i_unnamed_get_hashfunc_02235_q;
    wire [0:0] i_unnamed_get_hashfunc_02252_qi;
    reg [0:0] i_unnamed_get_hashfunc_02252_q;
    wire [33:0] i_unnamed_get_hashfunc_02285_a;
    wire [33:0] i_unnamed_get_hashfunc_02285_b;
    logic [33:0] i_unnamed_get_hashfunc_02285_o;
    wire [0:0] i_unnamed_get_hashfunc_02285_c;
    wire [33:0] i_unnamed_get_hashfunc_02299_a;
    wire [33:0] i_unnamed_get_hashfunc_02299_b;
    logic [33:0] i_unnamed_get_hashfunc_02299_o;
    wire [0:0] i_unnamed_get_hashfunc_02299_c;
    wire [0:0] i_unnamed_get_hashfunc_02343_q;
    wire [0:0] i_unnamed_get_hashfunc_02344_qi;
    reg [0:0] i_unnamed_get_hashfunc_02344_q;
    wire [33:0] i_unnamed_get_hashfunc_02355_a;
    wire [33:0] i_unnamed_get_hashfunc_02355_b;
    logic [33:0] i_unnamed_get_hashfunc_02355_o;
    wire [0:0] i_unnamed_get_hashfunc_02355_c;
    wire [0:0] i_unnamed_get_hashfunc_02356_qi;
    reg [0:0] i_unnamed_get_hashfunc_02356_q;
    wire [31:0] i_unnamed_get_hashfunc_0241_vt_join_q;
    wire [0:0] i_unnamed_get_hashfunc_0242_q;
    wire [0:0] i_unnamed_get_hashfunc_0261_q;
    wire [0:0] i_unnamed_get_hashfunc_0265_qi;
    reg [0:0] i_unnamed_get_hashfunc_0265_q;
    wire [0:0] i_unnamed_get_hashfunc_0266_s;
    reg [31:0] i_unnamed_get_hashfunc_0266_q;
    wire [0:0] i_unnamed_get_hashfunc_0291_q;
    wire [0:0] i_unnamed_get_hashfunc_0295_qi;
    reg [0:0] i_unnamed_get_hashfunc_0295_q;
    wire [0:0] i_unnamed_get_hashfunc_0296_s;
    reg [31:0] i_unnamed_get_hashfunc_0296_q;
    wire [31:0] bgTrunc_i_and_off319_get_hashfunc_02298_sel_x_b;
    wire [31:0] bgTrunc_i_and_off334_get_hashfunc_02354_sel_x_b;
    wire [31:0] bgTrunc_i_and_off_get_hashfunc_02284_sel_x_b;
    wire [31:0] c_i32_0468_recast_x_q;
    wire [31:0] c_i32_1006632960394_recast_x_q;
    wire [31:0] c_i32_100663296466_recast_x_q;
    wire [31:0] c_i32_1107296256451_recast_x_q;
    wire [31:0] c_i32_1140850688428_recast_x_q;
    wire [31:0] c_i32_1174405120449_recast_x_q;
    wire [31:0] c_i32_1207959552393_recast_x_q;
    wire [31:0] c_i32_1275068416465_recast_x_q;
    wire [31:0] c_i32_1308622848445_recast_x_q;
    wire [31:0] c_i32_1342177280455_recast_x_q;
    wire [31:0] c_i32_134217728467_recast_x_q;
    wire [31:0] c_i32_1375731712464_recast_x_q;
    wire [31:0] c_i32_1409286144409_recast_x_q;
    wire [31:0] c_i32_1442840576444_recast_x_q;
    wire [31:0] c_i32_1476395008454_recast_x_q;
    wire [31:0] c_i32_1509949440422_recast_x_q;
    wire [31:0] c_i32_1543503872443_recast_x_q;
    wire [31:0] c_i32_1577058304400_recast_x_q;
    wire [31:0] c_i32_1577058305396_recast_x_q;
    wire [31:0] c_i32_1644167168447_recast_x_q;
    wire [31:0] c_i32_1677721600426_recast_x_q;
    wire [31:0] c_i32_167772160395_recast_x_q;
    wire [31:0] c_i32_1744830464401_recast_x_q;
    wire [31:0] c_i32_1811939328425_recast_x_q;
    wire [31:0] c_i32_1845493760410_recast_x_q;
    wire [31:0] c_i32_1879048192423_recast_x_q;
    wire [31:0] c_i32_1946157056434_recast_x_q;
    wire [31:0] c_i32_1979711488453_recast_x_q;
    wire [31:0] c_i32_2013265920417_recast_x_q;
    wire [31:0] c_i32_201326592458_recast_x_q;
    wire [31:0] c_i32_2046820352432_recast_x_q;
    wire [31:0] c_i32_2080374784433_recast_x_q;
    wire [31:0] c_i32_2113929216404_recast_x_q;
    wire [31:0] c_i32_234881024407_recast_x_q;
    wire [31:0] c_i32_234881024459_recast_x_q;
    wire [31:0] c_i32_268435456448_recast_x_q;
    wire [31:0] c_i32_301989888418_recast_x_q;
    wire [31:0] c_i32_301989888456_recast_x_q;
    wire [31:0] c_i32_335544320392_recast_x_q;
    wire [31:0] c_i32_335544320411_recast_x_q;
    wire [31:0] c_i32_335544321402_recast_x_q;
    wire [31:0] c_i32_33554432469_recast_x_q;
    wire [31:0] c_i32_402653184408_recast_x_q;
    wire [31:0] c_i32_402653184462_recast_x_q;
    wire [31:0] c_i32_436207616460_recast_x_q;
    wire [31:0] c_i32_436207617452_recast_x_q;
    wire [31:0] c_i32_469762048420_recast_x_q;
    wire [31:0] c_i32_469762048463_recast_x_q;
    wire [31:0] c_i32_503316480399_recast_x_q;
    wire [31:0] c_i32_503316480412_recast_x_q;
    wire [31:0] c_i32_570425344441_recast_x_q;
    wire [31:0] c_i32_603979776442_recast_x_q;
    wire [31:0] c_i32_671088640391_recast_x_q;
    wire [31:0] c_i32_67108864398_recast_x_q;
    wire [31:0] c_i32_67108864406_recast_x_q;
    wire [31:0] c_i32_704643072413_recast_x_q;
    wire [31:0] c_i32_738197504403_recast_x_q;
    wire [31:0] c_i32_771751936415_recast_x_q;
    wire [31:0] c_i32_838860800397_recast_x_q;
    wire [31:0] c_i32_872415232429_recast_x_q;
    wire [31:0] c_i32_905969664416_recast_x_q;
    wire [31:0] c_i32_939524096431_recast_x_q;
    wire [31:0] c_i32_973078528430_recast_x_q;
    wire [0:0] i_unnamed_get_hashfunc_0241_BitSelect_for_a_b;
    wire [4:0] i_unnamed_get_hashfunc_0241_BitSelect_for_a_c;
    wire [31:0] i_unnamed_get_hashfunc_0241_join_q;
    wire [0:0] i_unnamed_get_hashfunc_02229_vt_select_25_merged_bit_select_b;
    wire [4:0] i_unnamed_get_hashfunc_02229_vt_select_25_merged_bit_select_c;
    wire [0:0] i_unnamed_get_hashfunc_0241_vt_select_25_merged_bit_select_b;
    wire [4:0] i_unnamed_get_hashfunc_0241_vt_select_25_merged_bit_select_c;
    reg [31:0] redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [31:0] redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q;
    reg [31:0] redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q;
    reg [31:0] redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q;
    reg [31:0] redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q;
    reg [0:0] redist5_sync_together474_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist6_i_unnamed_get_hashfunc_0295_q_2_q;
    reg [0:0] redist7_i_unnamed_get_hashfunc_0265_q_4_q;
    reg [0:0] redist7_i_unnamed_get_hashfunc_0265_q_4_delay_0;
    reg [0:0] redist7_i_unnamed_get_hashfunc_0265_q_4_delay_1;
    reg [0:0] redist8_i_unnamed_get_hashfunc_02356_q_3_q;
    reg [0:0] redist8_i_unnamed_get_hashfunc_02356_q_3_delay_0;
    reg [0:0] redist9_i_unnamed_get_hashfunc_02344_q_4_q;
    reg [0:0] redist9_i_unnamed_get_hashfunc_02344_q_4_delay_0;
    reg [0:0] redist9_i_unnamed_get_hashfunc_02344_q_4_delay_1;
    reg [0:0] redist10_i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q_2_q;
    reg [0:0] redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_q;
    reg [0:0] redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_0;
    reg [0:0] redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_1;
    reg [0:0] redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_q;
    reg [0:0] redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_delay_0;
    reg [0:0] redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_q;
    reg [0:0] redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_delay_0;
    reg [0:0] redist14_i_or_cond8_get_hashfunc_02144_q_3_q;
    reg [0:0] redist14_i_or_cond8_get_hashfunc_02144_q_3_delay_0;
    reg [0:0] redist15_i_or_cond1_get_hashfunc_02113_q_3_q;
    reg [0:0] redist15_i_or_cond1_get_hashfunc_02113_q_3_delay_0;
    reg [0:0] redist16_i_not_cmp_get_hashfunc_02237_q_1_q;
    reg [0:0] redist17_i_cmp_get_hashfunc_024_c_2_q;
    reg [0:0] redist18_i_cmp91_get_hashfunc_0239_c_4_q;
    reg [0:0] redist18_i_cmp91_get_hashfunc_0239_c_4_delay_0;
    reg [0:0] redist18_i_cmp91_get_hashfunc_0239_c_4_delay_1;
    reg [0:0] redist19_i_cmp89_get_hashfunc_0224_c_4_q;
    reg [0:0] redist19_i_cmp89_get_hashfunc_0224_c_4_delay_0;
    reg [0:0] redist19_i_cmp89_get_hashfunc_0224_c_4_delay_1;
    reg [0:0] redist20_i_cmp85_get_hashfunc_0210_c_1_q;
    reg [0:0] redist21_i_cmp59_get_hashfunc_02180_q_4_q;
    reg [0:0] redist21_i_cmp59_get_hashfunc_02180_q_4_delay_0;
    reg [0:0] redist21_i_cmp59_get_hashfunc_02180_q_4_delay_1;
    reg [0:0] redist22_i_cmp34_get_hashfunc_02114_q_3_q;
    reg [0:0] redist22_i_cmp34_get_hashfunc_02114_q_3_delay_0;
    reg [0:0] redist23_i_cmp26_get_hashfunc_02106_q_4_q;
    reg [0:0] redist23_i_cmp26_get_hashfunc_02106_q_4_delay_0;
    reg [0:0] redist23_i_cmp26_get_hashfunc_02106_q_4_delay_1;
    reg [0:0] redist24_i_cmp246_get_hashfunc_0219_q_1_q;
    reg [0:0] redist25_i_cmp231_get_hashfunc_02156_q_2_q;
    reg [0:0] redist26_i_cmp229_get_hashfunc_0297_c_1_q;
    reg [0:0] redist27_i_cmp214_get_hashfunc_0288_q_2_q;
    reg [0:0] redist28_i_cmp201_get_hashfunc_02220_q_2_q;
    reg [0:0] redist29_i_cmp192_get_hashfunc_02217_q_2_q;
    reg [0:0] redist30_i_cmp180_get_hashfunc_02183_q_2_q;
    reg [0:0] redist31_i_cmp166_get_hashfunc_0228_q_1_q;
    reg [0:0] redist32_i_cmp159_get_hashfunc_026_q_3_q;
    reg [0:0] redist32_i_cmp159_get_hashfunc_026_q_3_delay_0;
    reg [0:0] redist33_i_cmp151_get_hashfunc_02137_q_3_q;
    reg [0:0] redist33_i_cmp151_get_hashfunc_02137_q_3_delay_0;
    reg [0:0] redist34_i_cmp12_get_hashfunc_0258_q_4_q;
    reg [0:0] redist34_i_cmp12_get_hashfunc_0258_q_4_delay_0;
    reg [0:0] redist34_i_cmp12_get_hashfunc_0258_q_4_delay_1;
    reg [0:0] redist35_i_cmp124_get_hashfunc_0245_c_1_q;
    reg [0:0] redist36_i_cmp122_get_hashfunc_0227_c_1_q;
    reg [31:0] redist37_i_and_get_hashfunc_023_vt_join_q_1_q;
    reg [0:0] redist38_i_acl_276_get_hashfunc_02366_q_4_q;
    reg [0:0] redist38_i_acl_276_get_hashfunc_02366_q_4_delay_0;
    reg [0:0] redist38_i_acl_276_get_hashfunc_02366_q_4_delay_1;
    reg [0:0] redist39_i_acl_270_get_hashfunc_02363_q_4_q;
    reg [0:0] redist39_i_acl_270_get_hashfunc_02363_q_4_delay_0;
    reg [0:0] redist39_i_acl_270_get_hashfunc_02363_q_4_delay_1;
    reg [0:0] redist40_i_acl_259_get_hashfunc_02359_q_4_q;
    reg [0:0] redist40_i_acl_259_get_hashfunc_02359_q_4_delay_0;
    reg [0:0] redist40_i_acl_259_get_hashfunc_02359_q_4_delay_1;
    reg [0:0] redist41_i_acl_247_get_hashfunc_02347_q_4_q;
    reg [0:0] redist41_i_acl_247_get_hashfunc_02347_q_4_delay_0;
    reg [0:0] redist41_i_acl_247_get_hashfunc_02347_q_4_delay_1;
    reg [0:0] redist42_i_acl_227_get_hashfunc_02341_q_3_q;
    reg [0:0] redist42_i_acl_227_get_hashfunc_02341_q_3_delay_0;
    reg [0:0] redist43_i_acl_181_get_hashfunc_02326_q_2_q;
    reg [0:0] redist44_i_acl_174_get_hashfunc_02323_q_2_q;
    reg [0:0] redist45_i_acl_159_get_hashfunc_02307_q_2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together474_aunroll_x_in_i_valid_6(DELAY,562)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together474_aunroll_x_in_i_valid_6 ( .xin(in_i_valid), .xout(redist5_sync_together474_aunroll_x_in_i_valid_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_226424(CONSTANT,19)
    assign c_i32_226424_q = $unsigned(32'b00000000000000000000000011100010);

    // c_i32_178450(CONSTANT,15)
    assign c_i32_178450_q = $unsigned(32'b00000000000000000000000010110010);

    // c_i32_95414(CONSTANT,37)
    assign c_i32_95414_q = $unsigned(32'b00000000000000000000000001011111);

    // redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2(DELAY,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q);
        end
    end

    // redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3(DELAY,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q <= $unsigned(redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q);
        end
    end

    // redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4(DELAY,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q <= '0;
        end
        else
        begin
            redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q <= $unsigned(redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q);
        end
    end

    // redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5(DELAY,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q <= $unsigned(redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q);
        end
    end

    // c_i32_704643072413_recast_x(CONSTANT,528)
    assign c_i32_704643072413_recast_x_q = $unsigned(32'b11010110000000000000000000000000);

    // c_i32_33554432388(CONSTANT,23)
    assign c_i32_33554432388_q = $unsigned(32'b11111110000000000000000000000000);

    // i_and_get_hashfunc_023(LOGICAL,175)@1
    assign i_and_get_hashfunc_023_q = in_c1_eni1_2_tpl & c_i32_33554432388_q;

    // i_and_get_hashfunc_023_vt_select_31(BITSELECT,178)@1
    assign i_and_get_hashfunc_023_vt_select_31_b = i_and_get_hashfunc_023_q[31:25];

    // i_acl_11_get_hashfunc_02135_vt_const_24(CONSTANT,51)
    assign i_acl_11_get_hashfunc_02135_vt_const_24_q = $unsigned(25'b0000000000000000000000000);

    // i_and_get_hashfunc_023_vt_join(BITJOIN,177)@1
    assign i_and_get_hashfunc_023_vt_join_q = {i_and_get_hashfunc_023_vt_select_31_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // redist37_i_and_get_hashfunc_023_vt_join_q_1(DELAY,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_and_get_hashfunc_023_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist37_i_and_get_hashfunc_023_vt_join_q_1_q <= $unsigned(i_and_get_hashfunc_023_vt_join_q);
        end
    end

    // i_cmp12_get_hashfunc_0258(LOGICAL,217)@2 + 1
    assign i_cmp12_get_hashfunc_0258_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_704643072413_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp12_get_hashfunc_0258_delay ( .xin(i_cmp12_get_hashfunc_0258_qi), .xout(i_cmp12_get_hashfunc_0258_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_i_cmp12_get_hashfunc_0258_q_4(DELAY,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_cmp12_get_hashfunc_0258_q_4_delay_0 <= '0;
            redist34_i_cmp12_get_hashfunc_0258_q_4_delay_1 <= '0;
            redist34_i_cmp12_get_hashfunc_0258_q_4_q <= '0;
        end
        else
        begin
            redist34_i_cmp12_get_hashfunc_0258_q_4_delay_0 <= $unsigned(i_cmp12_get_hashfunc_0258_q);
            redist34_i_cmp12_get_hashfunc_0258_q_4_delay_1 <= redist34_i_cmp12_get_hashfunc_0258_q_4_delay_0;
            redist34_i_cmp12_get_hashfunc_0258_q_4_q <= redist34_i_cmp12_get_hashfunc_0258_q_4_delay_1;
        end
    end

    // i_arg1_get_hashfunc_0260(MUX,207)@6
    assign i_arg1_get_hashfunc_0260_s = redist34_i_cmp12_get_hashfunc_0258_q_4_q;
    always @(i_arg1_get_hashfunc_0260_s or redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q or c_i32_95414_q)
    begin
        unique case (i_arg1_get_hashfunc_0260_s)
            1'b0 : i_arg1_get_hashfunc_0260_q = redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q;
            1'b1 : i_arg1_get_hashfunc_0260_q = c_i32_95414_q;
            default : i_arg1_get_hashfunc_0260_q = 32'b0;
        endcase
    end

    // c_i32_872415232429_recast_x(CONSTANT,532)
    assign c_i32_872415232429_recast_x_q = $unsigned(32'b11001100000000000000000000000000);

    // i_cmp26_get_hashfunc_02106(LOGICAL,260)@2 + 1
    assign i_cmp26_get_hashfunc_02106_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_872415232429_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp26_get_hashfunc_02106_delay ( .xin(i_cmp26_get_hashfunc_02106_qi), .xout(i_cmp26_get_hashfunc_02106_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_i_cmp26_get_hashfunc_02106_q_4(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_cmp26_get_hashfunc_02106_q_4_delay_0 <= '0;
            redist23_i_cmp26_get_hashfunc_02106_q_4_delay_1 <= '0;
            redist23_i_cmp26_get_hashfunc_02106_q_4_q <= '0;
        end
        else
        begin
            redist23_i_cmp26_get_hashfunc_02106_q_4_delay_0 <= $unsigned(i_cmp26_get_hashfunc_02106_q);
            redist23_i_cmp26_get_hashfunc_02106_q_4_delay_1 <= redist23_i_cmp26_get_hashfunc_02106_q_4_delay_0;
            redist23_i_cmp26_get_hashfunc_02106_q_4_q <= redist23_i_cmp26_get_hashfunc_02106_q_4_delay_1;
        end
    end

    // i_arg1127_get_hashfunc_02108(MUX,191)@6
    assign i_arg1127_get_hashfunc_02108_s = redist23_i_cmp26_get_hashfunc_02106_q_4_q;
    always @(i_arg1127_get_hashfunc_02108_s or redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q or c_i32_95414_q)
    begin
        unique case (i_arg1127_get_hashfunc_02108_s)
            1'b0 : i_arg1127_get_hashfunc_02108_q = redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q;
            1'b1 : i_arg1127_get_hashfunc_02108_q = c_i32_95414_q;
            default : i_arg1127_get_hashfunc_02108_q = 32'b0;
        endcase
    end

    // c_i32_1979711488453_recast_x(CONSTANT,499)
    assign c_i32_1979711488453_recast_x_q = $unsigned(32'b01110110000000000000000000000000);

    // i_cmp59_get_hashfunc_02180(LOGICAL,289)@2 + 1
    assign i_cmp59_get_hashfunc_02180_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1979711488453_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp59_get_hashfunc_02180_delay ( .xin(i_cmp59_get_hashfunc_02180_qi), .xout(i_cmp59_get_hashfunc_02180_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_cmp59_get_hashfunc_02180_q_4(DELAY,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_cmp59_get_hashfunc_02180_q_4_delay_0 <= '0;
            redist21_i_cmp59_get_hashfunc_02180_q_4_delay_1 <= '0;
            redist21_i_cmp59_get_hashfunc_02180_q_4_q <= '0;
        end
        else
        begin
            redist21_i_cmp59_get_hashfunc_02180_q_4_delay_0 <= $unsigned(i_cmp59_get_hashfunc_02180_q);
            redist21_i_cmp59_get_hashfunc_02180_q_4_delay_1 <= redist21_i_cmp59_get_hashfunc_02180_q_4_delay_0;
            redist21_i_cmp59_get_hashfunc_02180_q_4_q <= redist21_i_cmp59_get_hashfunc_02180_q_4_delay_1;
        end
    end

    // i_arg1129_get_hashfunc_02182(MUX,193)@6
    assign i_arg1129_get_hashfunc_02182_s = redist21_i_cmp59_get_hashfunc_02180_q_4_q;
    always @(i_arg1129_get_hashfunc_02182_s or redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q or c_i32_226424_q)
    begin
        unique case (i_arg1129_get_hashfunc_02182_s)
            1'b0 : i_arg1129_get_hashfunc_02182_q = redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q;
            1'b1 : i_arg1129_get_hashfunc_02182_q = c_i32_226424_q;
            default : i_arg1129_get_hashfunc_02182_q = 32'b0;
        endcase
    end

    // c_i32_738197504403_recast_x(CONSTANT,529)
    assign c_i32_738197504403_recast_x_q = $unsigned(32'b11010100000000000000000000000000);

    // i_unnamed_get_hashfunc_0241_BitSelect_for_a(BITSELECT,553)@2
    assign i_unnamed_get_hashfunc_0241_BitSelect_for_a_b = redist37_i_and_get_hashfunc_023_vt_join_q_1_q[25:25];
    assign i_unnamed_get_hashfunc_0241_BitSelect_for_a_c = redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31:27];

    // i_unnamed_get_hashfunc_0241_join(BITJOIN,554)@2
    assign i_unnamed_get_hashfunc_0241_join_q = {i_unnamed_get_hashfunc_0241_BitSelect_for_a_c, VCC_q, i_unnamed_get_hashfunc_0241_BitSelect_for_a_b, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q};

    // i_unnamed_get_hashfunc_0241_vt_select_25_merged_bit_select(BITSELECT,556)@2
    assign i_unnamed_get_hashfunc_0241_vt_select_25_merged_bit_select_b = i_unnamed_get_hashfunc_0241_join_q[25:25];
    assign i_unnamed_get_hashfunc_0241_vt_select_25_merged_bit_select_c = i_unnamed_get_hashfunc_0241_join_q[31:27];

    // i_unnamed_get_hashfunc_0241_vt_join(BITJOIN,374)@2
    assign i_unnamed_get_hashfunc_0241_vt_join_q = {i_unnamed_get_hashfunc_0241_vt_select_25_merged_bit_select_c, VCC_q, i_unnamed_get_hashfunc_0241_vt_select_25_merged_bit_select_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // i_unnamed_get_hashfunc_0261(LOGICAL,378)@2
    assign i_unnamed_get_hashfunc_0261_q = $unsigned(i_unnamed_get_hashfunc_0241_vt_join_q == c_i32_738197504403_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_771751936415_recast_x(CONSTANT,530)
    assign c_i32_771751936415_recast_x_q = $unsigned(32'b11010010000000000000000000000000);

    // i_cmp18_get_hashfunc_0263(LOGICAL,236)@2
    assign i_cmp18_get_hashfunc_0263_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_771751936415_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_0265(LOGICAL,379)@2 + 1
    assign i_unnamed_get_hashfunc_0265_qi = i_cmp18_get_hashfunc_0263_q | i_unnamed_get_hashfunc_0261_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_0265_delay ( .xin(i_unnamed_get_hashfunc_0265_qi), .xout(i_unnamed_get_hashfunc_0265_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_unnamed_get_hashfunc_0265_q_4(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_get_hashfunc_0265_q_4_delay_0 <= '0;
            redist7_i_unnamed_get_hashfunc_0265_q_4_delay_1 <= '0;
            redist7_i_unnamed_get_hashfunc_0265_q_4_q <= '0;
        end
        else
        begin
            redist7_i_unnamed_get_hashfunc_0265_q_4_delay_0 <= $unsigned(i_unnamed_get_hashfunc_0265_q);
            redist7_i_unnamed_get_hashfunc_0265_q_4_delay_1 <= redist7_i_unnamed_get_hashfunc_0265_q_4_delay_0;
            redist7_i_unnamed_get_hashfunc_0265_q_4_q <= redist7_i_unnamed_get_hashfunc_0265_q_4_delay_1;
        end
    end

    // i_unnamed_get_hashfunc_0266(MUX,380)@6
    assign i_unnamed_get_hashfunc_0266_s = redist7_i_unnamed_get_hashfunc_0265_q_4_q;
    always @(i_unnamed_get_hashfunc_0266_s or redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q or c_i32_95414_q)
    begin
        unique case (i_unnamed_get_hashfunc_0266_s)
            1'b0 : i_unnamed_get_hashfunc_0266_q = redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q;
            1'b1 : i_unnamed_get_hashfunc_0266_q = c_i32_95414_q;
            default : i_unnamed_get_hashfunc_0266_q = 32'b0;
        endcase
    end

    // c_i32_939524096431_recast_x(CONSTANT,534)
    assign c_i32_939524096431_recast_x_q = $unsigned(32'b11001000000000000000000000000000);

    // i_cmp34_get_hashfunc_02114(LOGICAL,280)@2 + 1
    assign i_cmp34_get_hashfunc_02114_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_939524096431_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp34_get_hashfunc_02114_delay ( .xin(i_cmp34_get_hashfunc_02114_qi), .xout(i_cmp34_get_hashfunc_02114_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_cmp34_get_hashfunc_02114_q_3(DELAY,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_cmp34_get_hashfunc_02114_q_3_delay_0 <= '0;
            redist22_i_cmp34_get_hashfunc_02114_q_3_q <= '0;
        end
        else
        begin
            redist22_i_cmp34_get_hashfunc_02114_q_3_delay_0 <= $unsigned(i_cmp34_get_hashfunc_02114_q);
            redist22_i_cmp34_get_hashfunc_02114_q_3_q <= redist22_i_cmp34_get_hashfunc_02114_q_3_delay_0;
        end
    end

    // i_arg1128_get_hashfunc_02116(MUX,192)@5
    assign i_arg1128_get_hashfunc_02116_s = redist22_i_cmp34_get_hashfunc_02114_q_3_q;
    always @(i_arg1128_get_hashfunc_02116_s or redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q or c_i32_95414_q)
    begin
        unique case (i_arg1128_get_hashfunc_02116_s)
            1'b0 : i_arg1128_get_hashfunc_02116_q = redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q;
            1'b1 : i_arg1128_get_hashfunc_02116_q = c_i32_95414_q;
            default : i_arg1128_get_hashfunc_02116_q = 32'b0;
        endcase
    end

    // c_i32_973078528430_recast_x(CONSTANT,535)
    assign c_i32_973078528430_recast_x_q = $unsigned(32'b11000110000000000000000000000000);

    // i_cmp32_get_hashfunc_02111(LOGICAL,279)@2
    assign i_cmp32_get_hashfunc_02111_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_973078528430_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_905969664416_recast_x(CONSTANT,533)
    assign c_i32_905969664416_recast_x_q = $unsigned(32'b11001010000000000000000000000000);

    // i_cmp30_get_hashfunc_02109(LOGICAL,272)@2
    assign i_cmp30_get_hashfunc_02109_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_905969664416_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond1_get_hashfunc_02113(LOGICAL,309)@2 + 1
    assign i_or_cond1_get_hashfunc_02113_qi = i_cmp30_get_hashfunc_02109_q & i_cmp32_get_hashfunc_02111_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_cond1_get_hashfunc_02113_delay ( .xin(i_or_cond1_get_hashfunc_02113_qi), .xout(i_or_cond1_get_hashfunc_02113_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_i_or_cond1_get_hashfunc_02113_q_3(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_or_cond1_get_hashfunc_02113_q_3_delay_0 <= '0;
            redist15_i_or_cond1_get_hashfunc_02113_q_3_q <= '0;
        end
        else
        begin
            redist15_i_or_cond1_get_hashfunc_02113_q_3_delay_0 <= $unsigned(i_or_cond1_get_hashfunc_02113_q);
            redist15_i_or_cond1_get_hashfunc_02113_q_3_q <= redist15_i_or_cond1_get_hashfunc_02113_q_3_delay_0;
        end
    end

    // i_unnamed_get_hashfunc_02117(MUX,342)@5
    assign i_unnamed_get_hashfunc_02117_s = redist15_i_or_cond1_get_hashfunc_02113_q_3_q;
    always @(i_unnamed_get_hashfunc_02117_s or c_i32_95414_q or i_arg1128_get_hashfunc_02116_q)
    begin
        unique case (i_unnamed_get_hashfunc_02117_s)
            1'b0 : i_unnamed_get_hashfunc_02117_q = c_i32_95414_q;
            1'b1 : i_unnamed_get_hashfunc_02117_q = i_arg1128_get_hashfunc_02116_q;
            default : i_unnamed_get_hashfunc_02117_q = 32'b0;
        endcase
    end

    // c_i32_96405(CONSTANT,38)
    assign c_i32_96405_q = $unsigned(32'b00000000000000000000000001100000);

    // i_cmp91_get_hashfunc_0239(COMPARE,295)@1 + 1
    assign i_cmp91_get_hashfunc_0239_a = {2'b00, in_c1_eni1_2_tpl};
    assign i_cmp91_get_hashfunc_0239_b = {2'b00, c_i32_33554432388_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp91_get_hashfunc_0239_o <= 34'b0;
        end
        else
        begin
            i_cmp91_get_hashfunc_0239_o <= $unsigned(i_cmp91_get_hashfunc_0239_a) - $unsigned(i_cmp91_get_hashfunc_0239_b);
        end
    end
    assign i_cmp91_get_hashfunc_0239_c[0] = i_cmp91_get_hashfunc_0239_o[33];

    // redist18_i_cmp91_get_hashfunc_0239_c_4(DELAY,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_cmp91_get_hashfunc_0239_c_4_delay_0 <= '0;
            redist18_i_cmp91_get_hashfunc_0239_c_4_delay_1 <= '0;
            redist18_i_cmp91_get_hashfunc_0239_c_4_q <= '0;
        end
        else
        begin
            redist18_i_cmp91_get_hashfunc_0239_c_4_delay_0 <= $unsigned(i_cmp91_get_hashfunc_0239_c);
            redist18_i_cmp91_get_hashfunc_0239_c_4_delay_1 <= redist18_i_cmp91_get_hashfunc_0239_c_4_delay_0;
            redist18_i_cmp91_get_hashfunc_0239_c_4_q <= redist18_i_cmp91_get_hashfunc_0239_c_4_delay_1;
        end
    end

    // i_arg1_get_hashfunc_0240(MUX,206)@5
    assign i_arg1_get_hashfunc_0240_s = redist18_i_cmp91_get_hashfunc_0239_c_4_q;
    always @(i_arg1_get_hashfunc_0240_s or c_i32_96405_q or redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q)
    begin
        unique case (i_arg1_get_hashfunc_0240_s)
            1'b0 : i_arg1_get_hashfunc_0240_q = c_i32_96405_q;
            1'b1 : i_arg1_get_hashfunc_0240_q = redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q;
            default : i_arg1_get_hashfunc_0240_q = 32'b0;
        endcase
    end

    // c_i32_570425344441_recast_x(CONSTANT,523)
    assign c_i32_570425344441_recast_x_q = $unsigned(32'b11011110000000000000000000000000);

    // i_unnamed_get_hashfunc_02140(LOGICAL,343)@2
    assign i_unnamed_get_hashfunc_02140_q = $unsigned(i_unnamed_get_hashfunc_0241_vt_join_q != c_i32_570425344441_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_603979776442_recast_x(CONSTANT,524)
    assign c_i32_603979776442_recast_x_q = $unsigned(32'b11011100000000000000000000000000);

    // i_cmp147_get_hashfunc_02142(LOGICAL,222)@2
    assign i_cmp147_get_hashfunc_02142_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_603979776442_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond8_get_hashfunc_02144(LOGICAL,314)@2 + 1
    assign i_or_cond8_get_hashfunc_02144_qi = i_cmp147_get_hashfunc_02142_q & i_unnamed_get_hashfunc_02140_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_cond8_get_hashfunc_02144_delay ( .xin(i_or_cond8_get_hashfunc_02144_qi), .xout(i_or_cond8_get_hashfunc_02144_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_i_or_cond8_get_hashfunc_02144_q_3(DELAY,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_or_cond8_get_hashfunc_02144_q_3_delay_0 <= '0;
            redist14_i_or_cond8_get_hashfunc_02144_q_3_q <= '0;
        end
        else
        begin
            redist14_i_or_cond8_get_hashfunc_02144_q_3_delay_0 <= $unsigned(i_or_cond8_get_hashfunc_02144_q);
            redist14_i_or_cond8_get_hashfunc_02144_q_3_q <= redist14_i_or_cond8_get_hashfunc_02144_q_3_delay_0;
        end
    end

    // i_arg1_130_get_hashfunc_02145(MUX,205)@5
    assign i_arg1_130_get_hashfunc_02145_s = redist14_i_or_cond8_get_hashfunc_02144_q_3_q;
    always @(i_arg1_130_get_hashfunc_02145_s or c_i32_95414_q or redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q)
    begin
        unique case (i_arg1_130_get_hashfunc_02145_s)
            1'b0 : i_arg1_130_get_hashfunc_02145_q = c_i32_95414_q;
            1'b1 : i_arg1_130_get_hashfunc_02145_q = redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q;
            default : i_arg1_130_get_hashfunc_02145_q = 32'b0;
        endcase
    end

    // i_acl_11_get_hashfunc_02135_vt_const_31(CONSTANT,52)
    assign i_acl_11_get_hashfunc_02135_vt_const_31_q = $unsigned(3'b111);

    // c_i32_100663296440(CONSTANT,8)
    assign c_i32_100663296440_q = $unsigned(32'b11111010000000000000000000000000);

    // c_i32_201326592439(CONSTANT,18)
    assign c_i32_201326592439_q = $unsigned(32'b11110100000000000000000000000000);

    // c_i32_268435456438(CONSTANT,21)
    assign c_i32_268435456438_q = $unsigned(32'b11110000000000000000000000000000);

    // i_acl_5_get_hashfunc_02131_vt_const_31(CONSTANT,150)
    assign i_acl_5_get_hashfunc_02131_vt_const_31_q = $unsigned(4'b1110);

    // c_i32_369098752437(CONSTANT,24)
    assign c_i32_369098752437_q = $unsigned(32'b11101010000000000000000000000000);

    // i_acl_2_get_hashfunc_02129_vt_const_31(CONSTANT,134)
    assign i_acl_2_get_hashfunc_02129_vt_const_31_q = $unsigned(5'b11100);

    // c_i32_436207616436(CONSTANT,27)
    assign c_i32_436207616436_q = $unsigned(32'b11100110000000000000000000000000);

    // c_i32_536870912435(CONSTANT,29)
    assign c_i32_536870912435_q = $unsigned(32'b11100000000000000000000000000000);

    // c_i32_503316480399(CONSTANT,28)
    assign c_i32_503316480399_q = $unsigned(32'b11100010000000000000000000000000);

    // i_cmp122_get_hashfunc_0227(COMPARE,214)@1
    assign i_cmp122_get_hashfunc_0227_a = {2'b00, c_i32_503316480399_q};
    assign i_cmp122_get_hashfunc_0227_b = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    assign i_cmp122_get_hashfunc_0227_o = $unsigned(i_cmp122_get_hashfunc_0227_a) - $unsigned(i_cmp122_get_hashfunc_0227_b);
    assign i_cmp122_get_hashfunc_0227_c[0] = i_cmp122_get_hashfunc_0227_o[33];

    // c_i32_402653184408(CONSTANT,26)
    assign c_i32_402653184408_q = $unsigned(32'b11101000000000000000000000000000);

    // i_cmp124_get_hashfunc_0245(COMPARE,215)@1
    assign i_cmp124_get_hashfunc_0245_a = {2'b00, c_i32_402653184408_q};
    assign i_cmp124_get_hashfunc_0245_b = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    assign i_cmp124_get_hashfunc_0245_o = $unsigned(i_cmp124_get_hashfunc_0245_a) - $unsigned(i_cmp124_get_hashfunc_0245_b);
    assign i_cmp124_get_hashfunc_0245_c[0] = i_cmp124_get_hashfunc_0245_o[33];

    // i_acl_get_hashfunc_02128(LOGICAL,174)@1 + 1
    assign i_acl_get_hashfunc_02128_qi = i_cmp124_get_hashfunc_0245_c ^ i_cmp122_get_hashfunc_0227_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_get_hashfunc_02128_delay ( .xin(i_acl_get_hashfunc_02128_qi), .xout(i_acl_get_hashfunc_02128_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2_get_hashfunc_02129(MUX,132)@2
    assign i_acl_2_get_hashfunc_02129_s = i_acl_get_hashfunc_02128_q;
    always @(i_acl_2_get_hashfunc_02129_s or c_i32_536870912435_q or c_i32_436207616436_q)
    begin
        unique case (i_acl_2_get_hashfunc_02129_s)
            1'b0 : i_acl_2_get_hashfunc_02129_q = c_i32_536870912435_q;
            1'b1 : i_acl_2_get_hashfunc_02129_q = c_i32_436207616436_q;
            default : i_acl_2_get_hashfunc_02129_q = 32'b0;
        endcase
    end

    // i_acl_2_get_hashfunc_02129_vt_select_26(BITSELECT,136)@2
    assign i_acl_2_get_hashfunc_02129_vt_select_26_b = i_acl_2_get_hashfunc_02129_q[26:25];

    // i_acl_2_get_hashfunc_02129_vt_join(BITJOIN,135)@2
    assign i_acl_2_get_hashfunc_02129_vt_join_q = {i_acl_2_get_hashfunc_02129_vt_const_31_q, i_acl_2_get_hashfunc_02129_vt_select_26_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // c_i32_335544320392(CONSTANT,22)
    assign c_i32_335544320392_q = $unsigned(32'b11101100000000000000000000000000);

    // i_cmp85_get_hashfunc_0210(COMPARE,291)@1
    assign i_cmp85_get_hashfunc_0210_a = {2'b00, c_i32_335544320392_q};
    assign i_cmp85_get_hashfunc_0210_b = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    assign i_cmp85_get_hashfunc_0210_o = $unsigned(i_cmp85_get_hashfunc_0210_a) - $unsigned(i_cmp85_get_hashfunc_0210_b);
    assign i_cmp85_get_hashfunc_0210_c[0] = i_cmp85_get_hashfunc_0210_o[33];

    // i_acl_4_get_hashfunc_02130(LOGICAL,146)@1 + 1
    assign i_acl_4_get_hashfunc_02130_qi = i_cmp85_get_hashfunc_0210_c ^ i_cmp124_get_hashfunc_0245_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_4_get_hashfunc_02130_delay ( .xin(i_acl_4_get_hashfunc_02130_qi), .xout(i_acl_4_get_hashfunc_02130_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_5_get_hashfunc_02131(MUX,148)@2
    assign i_acl_5_get_hashfunc_02131_s = i_acl_4_get_hashfunc_02130_q;
    always @(i_acl_5_get_hashfunc_02131_s or i_acl_2_get_hashfunc_02129_vt_join_q or c_i32_369098752437_q)
    begin
        unique case (i_acl_5_get_hashfunc_02131_s)
            1'b0 : i_acl_5_get_hashfunc_02131_q = i_acl_2_get_hashfunc_02129_vt_join_q;
            1'b1 : i_acl_5_get_hashfunc_02131_q = c_i32_369098752437_q;
            default : i_acl_5_get_hashfunc_02131_q = 32'b0;
        endcase
    end

    // i_acl_5_get_hashfunc_02131_vt_select_27(BITSELECT,152)@2
    assign i_acl_5_get_hashfunc_02131_vt_select_27_b = i_acl_5_get_hashfunc_02131_q[27:25];

    // i_acl_5_get_hashfunc_02131_vt_join(BITJOIN,151)@2
    assign i_acl_5_get_hashfunc_02131_vt_join_q = {i_acl_5_get_hashfunc_02131_vt_const_31_q, i_acl_5_get_hashfunc_02131_vt_select_27_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // redist20_i_cmp85_get_hashfunc_0210_c_1(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_cmp85_get_hashfunc_0210_c_1_q <= '0;
        end
        else
        begin
            redist20_i_cmp85_get_hashfunc_0210_c_1_q <= $unsigned(i_cmp85_get_hashfunc_0210_c);
        end
    end

    // c_i32_234881024407(CONSTANT,20)
    assign c_i32_234881024407_q = $unsigned(32'b11110010000000000000000000000000);

    // i_cmp104_get_hashfunc_0244(COMPARE,209)@1 + 1
    assign i_cmp104_get_hashfunc_0244_a = {2'b00, c_i32_234881024407_q};
    assign i_cmp104_get_hashfunc_0244_b = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp104_get_hashfunc_0244_o <= 34'b0;
        end
        else
        begin
            i_cmp104_get_hashfunc_0244_o <= $unsigned(i_cmp104_get_hashfunc_0244_a) - $unsigned(i_cmp104_get_hashfunc_0244_b);
        end
    end
    assign i_cmp104_get_hashfunc_0244_c[0] = i_cmp104_get_hashfunc_0244_o[33];

    // i_acl_7_get_hashfunc_02132(LOGICAL,160)@2
    assign i_acl_7_get_hashfunc_02132_q = i_cmp104_get_hashfunc_0244_c ^ redist20_i_cmp85_get_hashfunc_0210_c_1_q;

    // i_acl_8_get_hashfunc_02133(MUX,166)@2
    assign i_acl_8_get_hashfunc_02133_s = i_acl_7_get_hashfunc_02132_q;
    always @(i_acl_8_get_hashfunc_02133_s or i_acl_5_get_hashfunc_02131_vt_join_q or c_i32_268435456438_q)
    begin
        unique case (i_acl_8_get_hashfunc_02133_s)
            1'b0 : i_acl_8_get_hashfunc_02133_q = i_acl_5_get_hashfunc_02131_vt_join_q;
            1'b1 : i_acl_8_get_hashfunc_02133_q = c_i32_268435456438_q;
            default : i_acl_8_get_hashfunc_02133_q = 32'b0;
        endcase
    end

    // i_acl_8_get_hashfunc_02133_vt_select_28(BITSELECT,170)@2
    assign i_acl_8_get_hashfunc_02133_vt_select_28_b = i_acl_8_get_hashfunc_02133_q[28:25];

    // i_acl_8_get_hashfunc_02133_vt_join(BITJOIN,169)@2
    assign i_acl_8_get_hashfunc_02133_vt_join_q = {i_acl_11_get_hashfunc_02135_vt_const_31_q, i_acl_8_get_hashfunc_02133_vt_select_28_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // i_acl_9_get_hashfunc_02134(LOGICAL,173)@2
    assign i_acl_9_get_hashfunc_02134_q = i_cmp87_get_hashfunc_0214_c ^ i_cmp104_get_hashfunc_0244_c;

    // i_acl_11_get_hashfunc_02135(MUX,50)@2
    assign i_acl_11_get_hashfunc_02135_s = i_acl_9_get_hashfunc_02134_q;
    always @(i_acl_11_get_hashfunc_02135_s or i_acl_8_get_hashfunc_02133_vt_join_q or c_i32_201326592439_q)
    begin
        unique case (i_acl_11_get_hashfunc_02135_s)
            1'b0 : i_acl_11_get_hashfunc_02135_q = i_acl_8_get_hashfunc_02133_vt_join_q;
            1'b1 : i_acl_11_get_hashfunc_02135_q = c_i32_201326592439_q;
            default : i_acl_11_get_hashfunc_02135_q = 32'b0;
        endcase
    end

    // i_acl_11_get_hashfunc_02135_vt_select_28(BITSELECT,54)@2
    assign i_acl_11_get_hashfunc_02135_vt_select_28_b = i_acl_11_get_hashfunc_02135_q[28:25];

    // i_acl_11_get_hashfunc_02135_vt_join(BITJOIN,53)@2
    assign i_acl_11_get_hashfunc_02135_vt_join_q = {i_acl_11_get_hashfunc_02135_vt_const_31_q, i_acl_11_get_hashfunc_02135_vt_select_28_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // c_i32_167772160395(CONSTANT,12)
    assign c_i32_167772160395_q = $unsigned(32'b11110110000000000000000000000000);

    // i_cmp87_get_hashfunc_0214(COMPARE,292)@1 + 1
    assign i_cmp87_get_hashfunc_0214_a = {2'b00, c_i32_167772160395_q};
    assign i_cmp87_get_hashfunc_0214_b = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp87_get_hashfunc_0214_o <= 34'b0;
        end
        else
        begin
            i_cmp87_get_hashfunc_0214_o <= $unsigned(i_cmp87_get_hashfunc_0214_a) - $unsigned(i_cmp87_get_hashfunc_0214_b);
        end
    end
    assign i_cmp87_get_hashfunc_0214_c[0] = i_cmp87_get_hashfunc_0214_o[33];

    // i_acl_13_get_hashfunc_02136(MUX,62)@2
    assign i_acl_13_get_hashfunc_02136_s = i_cmp87_get_hashfunc_0214_c;
    always @(i_acl_13_get_hashfunc_02136_s or i_acl_11_get_hashfunc_02135_vt_join_q or c_i32_100663296440_q)
    begin
        unique case (i_acl_13_get_hashfunc_02136_s)
            1'b0 : i_acl_13_get_hashfunc_02136_q = i_acl_11_get_hashfunc_02135_vt_join_q;
            1'b1 : i_acl_13_get_hashfunc_02136_q = c_i32_100663296440_q;
            default : i_acl_13_get_hashfunc_02136_q = 32'b0;
        endcase
    end

    // i_acl_13_get_hashfunc_02136_vt_select_28(BITSELECT,66)@2
    assign i_acl_13_get_hashfunc_02136_vt_select_28_b = i_acl_13_get_hashfunc_02136_q[28:25];

    // i_acl_13_get_hashfunc_02136_vt_join(BITJOIN,65)@2
    assign i_acl_13_get_hashfunc_02136_vt_join_q = {i_acl_11_get_hashfunc_02135_vt_const_31_q, i_acl_13_get_hashfunc_02136_vt_select_28_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // i_cmp151_get_hashfunc_02137(LOGICAL,223)@2 + 1
    assign i_cmp151_get_hashfunc_02137_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == i_acl_13_get_hashfunc_02136_vt_join_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp151_get_hashfunc_02137_delay ( .xin(i_cmp151_get_hashfunc_02137_qi), .xout(i_cmp151_get_hashfunc_02137_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_i_cmp151_get_hashfunc_02137_q_3(DELAY,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_cmp151_get_hashfunc_02137_q_3_delay_0 <= '0;
            redist33_i_cmp151_get_hashfunc_02137_q_3_q <= '0;
        end
        else
        begin
            redist33_i_cmp151_get_hashfunc_02137_q_3_delay_0 <= $unsigned(i_cmp151_get_hashfunc_02137_q);
            redist33_i_cmp151_get_hashfunc_02137_q_3_q <= redist33_i_cmp151_get_hashfunc_02137_q_3_delay_0;
        end
    end

    // i_arg1131_get_hashfunc_02139(MUX,194)@5
    assign i_arg1131_get_hashfunc_02139_s = redist33_i_cmp151_get_hashfunc_02137_q_3_q;
    always @(i_arg1131_get_hashfunc_02139_s or redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q or c_i32_96405_q)
    begin
        unique case (i_arg1131_get_hashfunc_02139_s)
            1'b0 : i_arg1131_get_hashfunc_02139_q = redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q;
            1'b1 : i_arg1131_get_hashfunc_02139_q = c_i32_96405_q;
            default : i_arg1131_get_hashfunc_02139_q = 32'b0;
        endcase
    end

    // c_i32_1476395008454_recast_x(CONSTANT,483)
    assign c_i32_1476395008454_recast_x_q = $unsigned(32'b01011000000000000000000000000000);

    // i_cmp180_get_hashfunc_02183(LOGICAL,233)@2 + 1
    assign i_cmp180_get_hashfunc_02183_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1476395008454_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp180_get_hashfunc_02183_delay ( .xin(i_cmp180_get_hashfunc_02183_qi), .xout(i_cmp180_get_hashfunc_02183_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_i_cmp180_get_hashfunc_02183_q_2(DELAY,587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_cmp180_get_hashfunc_02183_q_2_q <= '0;
        end
        else
        begin
            redist30_i_cmp180_get_hashfunc_02183_q_2_q <= $unsigned(i_cmp180_get_hashfunc_02183_q);
        end
    end

    // i_arg1132_get_hashfunc_02185(MUX,195)@4
    assign i_arg1132_get_hashfunc_02185_s = redist30_i_cmp180_get_hashfunc_02183_q_2_q;
    always @(i_arg1132_get_hashfunc_02185_s or redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q or c_i32_178450_q)
    begin
        unique case (i_arg1132_get_hashfunc_02185_s)
            1'b0 : i_arg1132_get_hashfunc_02185_q = redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q;
            1'b1 : i_arg1132_get_hashfunc_02185_q = c_i32_178450_q;
            default : i_arg1132_get_hashfunc_02185_q = 32'b0;
        endcase
    end

    // c_i32_1375731712464_recast_x(CONSTANT,480)
    assign c_i32_1375731712464_recast_x_q = $unsigned(32'b01010010000000000000000000000000);

    // i_cmp192_get_hashfunc_02217(LOGICAL,238)@2 + 1
    assign i_cmp192_get_hashfunc_02217_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1375731712464_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp192_get_hashfunc_02217_delay ( .xin(i_cmp192_get_hashfunc_02217_qi), .xout(i_cmp192_get_hashfunc_02217_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_i_cmp192_get_hashfunc_02217_q_2(DELAY,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_cmp192_get_hashfunc_02217_q_2_q <= '0;
        end
        else
        begin
            redist29_i_cmp192_get_hashfunc_02217_q_2_q <= $unsigned(i_cmp192_get_hashfunc_02217_q);
        end
    end

    // i_arg1133_get_hashfunc_02219(MUX,196)@4
    assign i_arg1133_get_hashfunc_02219_s = redist29_i_cmp192_get_hashfunc_02217_q_2_q;
    always @(i_arg1133_get_hashfunc_02219_s or redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q or c_i32_178450_q)
    begin
        unique case (i_arg1133_get_hashfunc_02219_s)
            1'b0 : i_arg1133_get_hashfunc_02219_q = redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q;
            1'b1 : i_arg1133_get_hashfunc_02219_q = c_i32_178450_q;
            default : i_arg1133_get_hashfunc_02219_q = 32'b0;
        endcase
    end

    // c_i32_1275068416465_recast_x(CONSTANT,476)
    assign c_i32_1275068416465_recast_x_q = $unsigned(32'b01001100000000000000000000000000);

    // i_cmp201_get_hashfunc_02220(LOGICAL,239)@2 + 1
    assign i_cmp201_get_hashfunc_02220_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1275068416465_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp201_get_hashfunc_02220_delay ( .xin(i_cmp201_get_hashfunc_02220_qi), .xout(i_cmp201_get_hashfunc_02220_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_i_cmp201_get_hashfunc_02220_q_2(DELAY,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_cmp201_get_hashfunc_02220_q_2_q <= '0;
        end
        else
        begin
            redist28_i_cmp201_get_hashfunc_02220_q_2_q <= $unsigned(i_cmp201_get_hashfunc_02220_q);
        end
    end

    // i_arg1134_get_hashfunc_02222(MUX,197)@4
    assign i_arg1134_get_hashfunc_02222_s = redist28_i_cmp201_get_hashfunc_02220_q_2_q;
    always @(i_arg1134_get_hashfunc_02222_s or redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q or c_i32_178450_q)
    begin
        unique case (i_arg1134_get_hashfunc_02222_s)
            1'b0 : i_arg1134_get_hashfunc_02222_q = redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q;
            1'b1 : i_arg1134_get_hashfunc_02222_q = c_i32_178450_q;
            default : i_arg1134_get_hashfunc_02222_q = 32'b0;
        endcase
    end

    // c_i32_1879048192423_recast_x(CONSTANT,496)
    assign c_i32_1879048192423_recast_x_q = $unsigned(32'b01110000000000000000000000000000);

    // i_cmp214_get_hashfunc_0288(LOGICAL,242)@2 + 1
    assign i_cmp214_get_hashfunc_0288_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1879048192423_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp214_get_hashfunc_0288_delay ( .xin(i_cmp214_get_hashfunc_0288_qi), .xout(i_cmp214_get_hashfunc_0288_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_i_cmp214_get_hashfunc_0288_q_2(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_cmp214_get_hashfunc_0288_q_2_q <= '0;
        end
        else
        begin
            redist27_i_cmp214_get_hashfunc_0288_q_2_q <= $unsigned(i_cmp214_get_hashfunc_0288_q);
        end
    end

    // i_arg1135_get_hashfunc_0290(MUX,198)@4
    assign i_arg1135_get_hashfunc_0290_s = redist27_i_cmp214_get_hashfunc_0288_q_2_q;
    always @(i_arg1135_get_hashfunc_0290_s or redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q or c_i32_226424_q)
    begin
        unique case (i_arg1135_get_hashfunc_0290_s)
            1'b0 : i_arg1135_get_hashfunc_0290_q = redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q;
            1'b1 : i_arg1135_get_hashfunc_0290_q = c_i32_226424_q;
            default : i_arg1135_get_hashfunc_0290_q = 32'b0;
        endcase
    end

    // c_i32_1711276032446(CONSTANT,14)
    assign c_i32_1711276032446_q = $unsigned(32'b01100110000000000000000000000000);

    // i_cmp231_get_hashfunc_02156(LOGICAL,248)@2 + 1
    assign i_cmp231_get_hashfunc_02156_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1711276032446_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp231_get_hashfunc_02156_delay ( .xin(i_cmp231_get_hashfunc_02156_qi), .xout(i_cmp231_get_hashfunc_02156_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_i_cmp231_get_hashfunc_02156_q_2(DELAY,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_cmp231_get_hashfunc_02156_q_2_q <= '0;
        end
        else
        begin
            redist25_i_cmp231_get_hashfunc_02156_q_2_q <= $unsigned(i_cmp231_get_hashfunc_02156_q);
        end
    end

    // i_arg1137_get_hashfunc_02158(MUX,199)@4
    assign i_arg1137_get_hashfunc_02158_s = redist25_i_cmp231_get_hashfunc_02156_q_2_q;
    always @(i_arg1137_get_hashfunc_02158_s or redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q or c_i32_226424_q)
    begin
        unique case (i_arg1137_get_hashfunc_02158_s)
            1'b0 : i_arg1137_get_hashfunc_02158_q = redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q;
            1'b1 : i_arg1137_get_hashfunc_02158_q = c_i32_226424_q;
            default : i_arg1137_get_hashfunc_02158_q = 32'b0;
        endcase
    end

    // c_i32_1845493760410_recast_x(CONSTANT,495)
    assign c_i32_1845493760410_recast_x_q = $unsigned(32'b01101110000000000000000000000000);

    // i_unnamed_get_hashfunc_0291(LOGICAL,381)@2
    assign i_unnamed_get_hashfunc_0291_q = $unsigned(i_unnamed_get_hashfunc_0241_vt_join_q == c_i32_1845493760410_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1811939328425_recast_x(CONSTANT,494)
    assign c_i32_1811939328425_recast_x_q = $unsigned(32'b01101100000000000000000000000000);

    // i_cmp222_get_hashfunc_0293(LOGICAL,243)@2
    assign i_cmp222_get_hashfunc_0293_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1811939328425_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_0295(LOGICAL,382)@2 + 1
    assign i_unnamed_get_hashfunc_0295_qi = i_cmp222_get_hashfunc_0293_q | i_unnamed_get_hashfunc_0291_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_0295_delay ( .xin(i_unnamed_get_hashfunc_0295_qi), .xout(i_unnamed_get_hashfunc_0295_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_i_unnamed_get_hashfunc_0295_q_2(DELAY,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_get_hashfunc_0295_q_2_q <= '0;
        end
        else
        begin
            redist6_i_unnamed_get_hashfunc_0295_q_2_q <= $unsigned(i_unnamed_get_hashfunc_0295_q);
        end
    end

    // i_unnamed_get_hashfunc_0296(MUX,383)@4
    assign i_unnamed_get_hashfunc_0296_s = redist6_i_unnamed_get_hashfunc_0295_q_2_q;
    always @(i_unnamed_get_hashfunc_0296_s or redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q or c_i32_226424_q)
    begin
        unique case (i_unnamed_get_hashfunc_0296_s)
            1'b0 : i_unnamed_get_hashfunc_0296_q = redist2_sync_together474_aunroll_x_in_c1_eni1_1_tpl_3_q;
            1'b1 : i_unnamed_get_hashfunc_0296_q = c_i32_226424_q;
            default : i_unnamed_get_hashfunc_0296_q = 32'b0;
        endcase
    end

    // c_i32_1677721600426_recast_x(CONSTANT,489)
    assign c_i32_1677721600426_recast_x_q = $unsigned(32'b01100100000000000000000000000000);

    // i_unnamed_get_hashfunc_02159(LOGICAL,344)@2
    assign i_unnamed_get_hashfunc_02159_q = $unsigned(i_unnamed_get_hashfunc_0241_vt_join_q == c_i32_1677721600426_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1644167168447_recast_x(CONSTANT,488)
    assign c_i32_1644167168447_recast_x_q = $unsigned(32'b01100010000000000000000000000000);

    // i_cmp239_get_hashfunc_02161(LOGICAL,249)@2
    assign i_cmp239_get_hashfunc_02161_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1644167168447_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_02163(LOGICAL,345)@2 + 1
    assign i_unnamed_get_hashfunc_02163_qi = i_cmp239_get_hashfunc_02161_q | i_unnamed_get_hashfunc_02159_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_02163_delay ( .xin(i_unnamed_get_hashfunc_02163_qi), .xout(i_unnamed_get_hashfunc_02163_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_get_hashfunc_02164(MUX,346)@3
    assign i_unnamed_get_hashfunc_02164_s = i_unnamed_get_hashfunc_02163_q;
    always @(i_unnamed_get_hashfunc_02164_s or redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q or c_i32_226424_q)
    begin
        unique case (i_unnamed_get_hashfunc_02164_s)
            1'b0 : i_unnamed_get_hashfunc_02164_q = redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q;
            1'b1 : i_unnamed_get_hashfunc_02164_q = c_i32_226424_q;
            default : i_unnamed_get_hashfunc_02164_q = 32'b0;
        endcase
    end

    // c_i32_142457(CONSTANT,11)
    assign c_i32_142457_q = $unsigned(32'b00000000000000000000000010001110);

    // c_i32_301989888456_recast_x(CONSTANT,509)
    assign c_i32_301989888456_recast_x_q = $unsigned(32'b00010010000000000000000000000000);

    // i_cmp257_get_hashfunc_02190(LOGICAL,256)@2 + 1
    assign i_cmp257_get_hashfunc_02190_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_301989888456_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp257_get_hashfunc_02190_delay ( .xin(i_cmp257_get_hashfunc_02190_qi), .xout(i_cmp257_get_hashfunc_02190_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_arg1139_get_hashfunc_02192(MUX,200)@3
    assign i_arg1139_get_hashfunc_02192_s = i_cmp257_get_hashfunc_02190_q;
    always @(i_arg1139_get_hashfunc_02192_s or redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q or c_i32_142457_q)
    begin
        unique case (i_arg1139_get_hashfunc_02192_s)
            1'b0 : i_arg1139_get_hashfunc_02192_q = redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q;
            1'b1 : i_arg1139_get_hashfunc_02192_q = c_i32_142457_q;
            default : i_arg1139_get_hashfunc_02192_q = 32'b0;
        endcase
    end

    // c_i32_134217728467_recast_x(CONSTANT,479)
    assign c_i32_134217728467_recast_x_q = $unsigned(32'b00001000000000000000000000000000);

    // i_cmp276_get_hashfunc_02225(LOGICAL,265)@2
    assign i_cmp276_get_hashfunc_02225_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_134217728467_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_100663296466_recast_x(CONSTANT,471)
    assign c_i32_100663296466_recast_x_q = $unsigned(32'b00000110000000000000000000000000);

    // i_cmp274_get_hashfunc_02223(LOGICAL,264)@2
    assign i_cmp274_get_hashfunc_02223_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_100663296466_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_02227(LOGICAL,353)@2 + 1
    assign i_unnamed_get_hashfunc_02227_qi = i_cmp274_get_hashfunc_02223_q | i_cmp276_get_hashfunc_02225_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_02227_delay ( .xin(i_unnamed_get_hashfunc_02227_qi), .xout(i_unnamed_get_hashfunc_02227_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_get_hashfunc_02228(MUX,354)@3
    assign i_unnamed_get_hashfunc_02228_s = i_unnamed_get_hashfunc_02227_q;
    always @(i_unnamed_get_hashfunc_02228_s or redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q or c_i32_142457_q)
    begin
        unique case (i_unnamed_get_hashfunc_02228_s)
            1'b0 : i_unnamed_get_hashfunc_02228_q = redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q;
            1'b1 : i_unnamed_get_hashfunc_02228_q = c_i32_142457_q;
            default : i_unnamed_get_hashfunc_02228_q = 32'b0;
        endcase
    end

    // c_i32_33554432469_recast_x(CONSTANT,513)
    assign c_i32_33554432469_recast_x_q = $unsigned(32'b00000010000000000000000000000000);

    // i_cmp285_get_hashfunc_02232(LOGICAL,266)@2
    assign i_cmp285_get_hashfunc_02232_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_33554432469_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_0468_recast_x(CONSTANT,469)
    assign c_i32_0468_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_unnamed_get_hashfunc_02229(LOGICAL,355)@1
    assign i_unnamed_get_hashfunc_02229_q = in_c1_eni1_2_tpl & c_i32_100663296440_q;

    // i_unnamed_get_hashfunc_02229_vt_select_25_merged_bit_select(BITSELECT,555)@1
    assign i_unnamed_get_hashfunc_02229_vt_select_25_merged_bit_select_b = i_unnamed_get_hashfunc_02229_q[25:25];
    assign i_unnamed_get_hashfunc_02229_vt_select_25_merged_bit_select_c = i_unnamed_get_hashfunc_02229_q[31:27];

    // i_unnamed_get_hashfunc_02229_vt_join(BITJOIN,358)@1
    assign i_unnamed_get_hashfunc_02229_vt_join_q = {i_unnamed_get_hashfunc_02229_vt_select_25_merged_bit_select_c, GND_q, i_unnamed_get_hashfunc_02229_vt_select_25_merged_bit_select_b, i_acl_11_get_hashfunc_02135_vt_const_24_q};

    // i_unnamed_get_hashfunc_02230(LOGICAL,361)@1 + 1
    assign i_unnamed_get_hashfunc_02230_qi = $unsigned(i_unnamed_get_hashfunc_02229_vt_join_q == c_i32_0468_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_02230_delay ( .xin(i_unnamed_get_hashfunc_02230_qi), .xout(i_unnamed_get_hashfunc_02230_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_get_hashfunc_02234(LOGICAL,362)@2 + 1
    assign i_unnamed_get_hashfunc_02234_qi = i_unnamed_get_hashfunc_02230_q | i_cmp285_get_hashfunc_02232_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_02234_delay ( .xin(i_unnamed_get_hashfunc_02234_qi), .xout(i_unnamed_get_hashfunc_02234_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_get_hashfunc_02235(MUX,363)@3
    assign i_unnamed_get_hashfunc_02235_s = i_unnamed_get_hashfunc_02234_q;
    always @(i_unnamed_get_hashfunc_02235_s or redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q or c_i32_142457_q)
    begin
        unique case (i_unnamed_get_hashfunc_02235_s)
            1'b0 : i_unnamed_get_hashfunc_02235_q = redist1_sync_together474_aunroll_x_in_c1_eni1_1_tpl_2_q;
            1'b1 : i_unnamed_get_hashfunc_02235_q = c_i32_142457_q;
            default : i_unnamed_get_hashfunc_02235_q = 32'b0;
        endcase
    end

    // c_i32_234881024459_recast_x(CONSTANT,506)
    assign c_i32_234881024459_recast_x_q = $unsigned(32'b00001110000000000000000000000000);

    // i_cmp265_get_hashfunc_02198(LOGICAL,259)@2
    assign i_cmp265_get_hashfunc_02198_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_234881024459_recast_x_q ? 1'b1 : 1'b0);

    // i_arg1140_get_hashfunc_02200(MUX,201)@2
    assign i_arg1140_get_hashfunc_02200_s = i_cmp265_get_hashfunc_02198_q;
    always @(i_arg1140_get_hashfunc_02200_s or redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q or c_i32_142457_q)
    begin
        unique case (i_arg1140_get_hashfunc_02200_s)
            1'b0 : i_arg1140_get_hashfunc_02200_q = redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q;
            1'b1 : i_arg1140_get_hashfunc_02200_q = c_i32_142457_q;
            default : i_arg1140_get_hashfunc_02200_q = 32'b0;
        endcase
    end

    // c_i32_201326592458_recast_x(CONSTANT,501)
    assign c_i32_201326592458_recast_x_q = $unsigned(32'b00001100000000000000000000000000);

    // i_cmp263_get_hashfunc_02195(LOGICAL,258)@2
    assign i_cmp263_get_hashfunc_02195_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_201326592458_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_268435456448_recast_x(CONSTANT,507)
    assign c_i32_268435456448_recast_x_q = $unsigned(32'b00010000000000000000000000000000);

    // i_cmp261_get_hashfunc_02193(LOGICAL,257)@2
    assign i_cmp261_get_hashfunc_02193_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_268435456448_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond13_get_hashfunc_02197(LOGICAL,307)@2
    assign i_or_cond13_get_hashfunc_02197_q = i_cmp261_get_hashfunc_02193_q & i_cmp263_get_hashfunc_02195_q;

    // i_unnamed_get_hashfunc_02201(MUX,351)@2
    assign i_unnamed_get_hashfunc_02201_s = i_or_cond13_get_hashfunc_02197_q;
    always @(i_unnamed_get_hashfunc_02201_s or c_i32_142457_q or i_arg1140_get_hashfunc_02200_q)
    begin
        unique case (i_unnamed_get_hashfunc_02201_s)
            1'b0 : i_unnamed_get_hashfunc_02201_q = c_i32_142457_q;
            1'b1 : i_unnamed_get_hashfunc_02201_q = i_arg1140_get_hashfunc_02200_q;
            default : i_unnamed_get_hashfunc_02201_q = 32'b0;
        endcase
    end

    // c_i32_1174405120449_recast_x(CONSTANT,474)
    assign c_i32_1174405120449_recast_x_q = $unsigned(32'b01000110000000000000000000000000);

    // i_cmp298_get_hashfunc_02169(LOGICAL,269)@2
    assign i_cmp298_get_hashfunc_02169_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1174405120449_recast_x_q ? 1'b1 : 1'b0);

    // i_arg1143_get_hashfunc_02171(MUX,202)@2
    assign i_arg1143_get_hashfunc_02171_s = i_cmp298_get_hashfunc_02169_q;
    always @(i_arg1143_get_hashfunc_02171_s or redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q or c_i32_178450_q)
    begin
        unique case (i_arg1143_get_hashfunc_02171_s)
            1'b0 : i_arg1143_get_hashfunc_02171_q = redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q;
            1'b1 : i_arg1143_get_hashfunc_02171_q = c_i32_178450_q;
            default : i_arg1143_get_hashfunc_02171_q = 32'b0;
        endcase
    end

    // c_i32_1140850688428_recast_x(CONSTANT,473)
    assign c_i32_1140850688428_recast_x_q = $unsigned(32'b01000100000000000000000000000000);

    // i_unnamed_get_hashfunc_02172(LOGICAL,347)@2
    assign i_unnamed_get_hashfunc_02172_q = $unsigned(i_unnamed_get_hashfunc_0241_vt_join_q == c_i32_1140850688428_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1107296256451_recast_x(CONSTANT,472)
    assign c_i32_1107296256451_recast_x_q = $unsigned(32'b01000010000000000000000000000000);

    // i_cmp306_get_hashfunc_02174(LOGICAL,271)@2
    assign i_cmp306_get_hashfunc_02174_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1107296256451_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_02176(LOGICAL,348)@2
    assign i_unnamed_get_hashfunc_02176_q = i_cmp306_get_hashfunc_02174_q | i_unnamed_get_hashfunc_02172_q;

    // i_unnamed_get_hashfunc_02177(MUX,349)@2
    assign i_unnamed_get_hashfunc_02177_s = i_unnamed_get_hashfunc_02176_q;
    always @(i_unnamed_get_hashfunc_02177_s or redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q or c_i32_178450_q)
    begin
        unique case (i_unnamed_get_hashfunc_02177_s)
            1'b0 : i_unnamed_get_hashfunc_02177_q = redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q;
            1'b1 : i_unnamed_get_hashfunc_02177_q = c_i32_178450_q;
            default : i_unnamed_get_hashfunc_02177_q = 32'b0;
        endcase
    end

    // c_i32_402653184462_recast_x(CONSTANT,516)
    assign c_i32_402653184462_recast_x_q = $unsigned(32'b00011000000000000000000000000000);

    // i_cmp320_get_hashfunc_02210(LOGICAL,277)@1 + 1
    assign i_cmp320_get_hashfunc_02210_qi = $unsigned(i_and_get_hashfunc_023_vt_join_q == c_i32_402653184462_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp320_get_hashfunc_02210_delay ( .xin(i_cmp320_get_hashfunc_02210_qi), .xout(i_cmp320_get_hashfunc_02210_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_arg1145_get_hashfunc_02212(MUX,203)@2
    assign i_arg1145_get_hashfunc_02212_s = i_cmp320_get_hashfunc_02210_q;
    always @(i_arg1145_get_hashfunc_02212_s or redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q or c_i32_142457_q)
    begin
        unique case (i_arg1145_get_hashfunc_02212_s)
            1'b0 : i_arg1145_get_hashfunc_02212_q = redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q;
            1'b1 : i_arg1145_get_hashfunc_02212_q = c_i32_142457_q;
            default : i_arg1145_get_hashfunc_02212_q = 32'b0;
        endcase
    end

    // c_i32_369098752461(CONSTANT,25)
    assign c_i32_369098752461_q = $unsigned(32'b00010110000000000000000000000000);

    // i_cmp318_get_hashfunc_02207(LOGICAL,276)@1
    assign i_cmp318_get_hashfunc_02207_q = $unsigned(i_and_get_hashfunc_023_vt_join_q != c_i32_369098752461_q ? 1'b1 : 1'b0);

    // c_i32_436207616460_recast_x(CONSTANT,517)
    assign c_i32_436207616460_recast_x_q = $unsigned(32'b00011010000000000000000000000000);

    // i_cmp316_get_hashfunc_02205(LOGICAL,275)@1
    assign i_cmp316_get_hashfunc_02205_q = $unsigned(i_and_get_hashfunc_023_vt_join_q != c_i32_436207616460_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond16_get_hashfunc_02209(LOGICAL,308)@1 + 1
    assign i_or_cond16_get_hashfunc_02209_qi = i_cmp316_get_hashfunc_02205_q & i_cmp318_get_hashfunc_02207_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_cond16_get_hashfunc_02209_delay ( .xin(i_or_cond16_get_hashfunc_02209_qi), .xout(i_or_cond16_get_hashfunc_02209_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_get_hashfunc_02213(MUX,352)@2
    assign i_unnamed_get_hashfunc_02213_s = i_or_cond16_get_hashfunc_02209_q;
    always @(i_unnamed_get_hashfunc_02213_s or c_i32_142457_q or i_arg1145_get_hashfunc_02212_q)
    begin
        unique case (i_unnamed_get_hashfunc_02213_s)
            1'b0 : i_unnamed_get_hashfunc_02213_q = c_i32_142457_q;
            1'b1 : i_unnamed_get_hashfunc_02213_q = i_arg1145_get_hashfunc_02212_q;
            default : i_unnamed_get_hashfunc_02213_q = 32'b0;
        endcase
    end

    // c_i32_469762048463_recast_x(CONSTANT,520)
    assign c_i32_469762048463_recast_x_q = $unsigned(32'b00011100000000000000000000000000);

    // i_cmp325_get_hashfunc_02214(LOGICAL,278)@1 + 1
    assign i_cmp325_get_hashfunc_02214_qi = $unsigned(i_and_get_hashfunc_023_vt_join_q == c_i32_469762048463_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp325_get_hashfunc_02214_delay ( .xin(i_cmp325_get_hashfunc_02214_qi), .xout(i_cmp325_get_hashfunc_02214_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_arg1146_get_hashfunc_02216(MUX,204)@2
    assign i_arg1146_get_hashfunc_02216_s = i_cmp325_get_hashfunc_02214_q;
    always @(i_arg1146_get_hashfunc_02216_s or redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q or c_i32_142457_q)
    begin
        unique case (i_arg1146_get_hashfunc_02216_s)
            1'b0 : i_arg1146_get_hashfunc_02216_q = redist0_sync_together474_aunroll_x_in_c1_eni1_1_tpl_1_q;
            1'b1 : i_arg1146_get_hashfunc_02216_q = c_i32_142457_q;
            default : i_arg1146_get_hashfunc_02216_q = 32'b0;
        endcase
    end

    // c_i32_1912602624389(CONSTANT,16)
    assign c_i32_1912602624389_q = $unsigned(32'b01110010000000000000000000000000);

    // i_cmp_get_hashfunc_024(COMPARE,296)@1 + 1
    assign i_cmp_get_hashfunc_024_a = {2'b00, c_i32_1912602624389_q};
    assign i_cmp_get_hashfunc_024_b = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp_get_hashfunc_024_o <= 34'b0;
        end
        else
        begin
            i_cmp_get_hashfunc_024_o <= $unsigned(i_cmp_get_hashfunc_024_a) - $unsigned(i_cmp_get_hashfunc_024_b);
        end
    end
    assign i_cmp_get_hashfunc_024_c[0] = i_cmp_get_hashfunc_024_o[33];

    // i_not_cmp_get_hashfunc_02237(LOGICAL,304)@2
    assign i_not_cmp_get_hashfunc_02237_q = i_cmp_get_hashfunc_024_c ^ VCC_q;

    // c_i32_436207617452_recast_x(CONSTANT,518)
    assign c_i32_436207617452_recast_x_q = $unsigned(32'b00011010000000000000000000000001);

    // i_cmp314_get_hashfunc_02178(COMPARE,274)@1 + 1
    assign i_cmp314_get_hashfunc_02178_a = $unsigned({{2{i_and_get_hashfunc_023_vt_join_q[31]}}, i_and_get_hashfunc_023_vt_join_q});
    assign i_cmp314_get_hashfunc_02178_b = $unsigned({{2{c_i32_436207617452_recast_x_q[31]}}, c_i32_436207617452_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp314_get_hashfunc_02178_o <= 34'b0;
        end
        else
        begin
            i_cmp314_get_hashfunc_02178_o <= $unsigned($signed(i_cmp314_get_hashfunc_02178_a) - $signed(i_cmp314_get_hashfunc_02178_b));
        end
    end
    assign i_cmp314_get_hashfunc_02178_c[0] = i_cmp314_get_hashfunc_02178_o[33];

    // c_i32_335544321402_recast_x(CONSTANT,512)
    assign c_i32_335544321402_recast_x_q = $unsigned(32'b00010100000000000000000000000001);

    // i_cmp249_get_hashfunc_0232(COMPARE,251)@1 + 1
    assign i_cmp249_get_hashfunc_0232_a = $unsigned({{2{i_and_get_hashfunc_023_vt_join_q[31]}}, i_and_get_hashfunc_023_vt_join_q});
    assign i_cmp249_get_hashfunc_0232_b = $unsigned({{2{c_i32_335544321402_recast_x_q[31]}}, c_i32_335544321402_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp249_get_hashfunc_0232_o <= 34'b0;
        end
        else
        begin
            i_cmp249_get_hashfunc_0232_o <= $unsigned($signed(i_cmp249_get_hashfunc_0232_a) - $signed(i_cmp249_get_hashfunc_0232_b));
        end
    end
    assign i_cmp249_get_hashfunc_0232_c[0] = i_cmp249_get_hashfunc_0232_o[33];

    // i_acl_16_get_hashfunc_02236(LOGICAL,85)@2
    assign i_acl_16_get_hashfunc_02236_q = i_cmp249_get_hashfunc_0232_c ^ i_cmp314_get_hashfunc_02178_c;

    // i_acl_20_get_hashfunc_02238(LOGICAL,95)@2
    assign i_acl_20_get_hashfunc_02238_q = i_acl_16_get_hashfunc_02236_q & i_not_cmp_get_hashfunc_02237_q;

    // i_acl_21_get_hashfunc_02239(MUX,99)@2
    assign i_acl_21_get_hashfunc_02239_s = i_acl_20_get_hashfunc_02238_q;
    always @(i_acl_21_get_hashfunc_02239_s or i_arg1146_get_hashfunc_02216_q or i_unnamed_get_hashfunc_02213_q)
    begin
        unique case (i_acl_21_get_hashfunc_02239_s)
            1'b0 : i_acl_21_get_hashfunc_02239_q = i_arg1146_get_hashfunc_02216_q;
            1'b1 : i_acl_21_get_hashfunc_02239_q = i_unnamed_get_hashfunc_02213_q;
            default : i_acl_21_get_hashfunc_02239_q = 32'b0;
        endcase
    end

    // c_i32_503316480412_recast_x(CONSTANT,522)
    assign c_i32_503316480412_recast_x_q = $unsigned(32'b00011110000000000000000000000000);

    // i_cmp311_get_hashfunc_02104(LOGICAL,273)@2
    assign i_cmp311_get_hashfunc_02104_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_503316480412_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_28_get_hashfunc_02240(MUX,128)@2
    assign i_acl_28_get_hashfunc_02240_s = i_cmp311_get_hashfunc_02104_q;
    always @(i_acl_28_get_hashfunc_02240_s or i_acl_21_get_hashfunc_02239_q or c_i32_142457_q)
    begin
        unique case (i_acl_28_get_hashfunc_02240_s)
            1'b0 : i_acl_28_get_hashfunc_02240_q = i_acl_21_get_hashfunc_02239_q;
            1'b1 : i_acl_28_get_hashfunc_02240_q = c_i32_142457_q;
            default : i_acl_28_get_hashfunc_02240_q = 32'b0;
        endcase
    end

    // i_cmp294_get_hashfunc_0256(COMPARE,267)@1 + 1
    assign i_cmp294_get_hashfunc_0256_a = $unsigned({{2{c_i32_503316480412_recast_x_q[31]}}, c_i32_503316480412_recast_x_q});
    assign i_cmp294_get_hashfunc_0256_b = $unsigned({{2{i_and_get_hashfunc_023_vt_join_q[31]}}, i_and_get_hashfunc_023_vt_join_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp294_get_hashfunc_0256_o <= 34'b0;
        end
        else
        begin
            i_cmp294_get_hashfunc_0256_o <= $unsigned($signed(i_cmp294_get_hashfunc_0256_a) - $signed(i_cmp294_get_hashfunc_0256_b));
        end
    end
    assign i_cmp294_get_hashfunc_0256_c[0] = i_cmp294_get_hashfunc_0256_o[33];

    // i_cmp296_get_hashfunc_02102(COMPARE,268)@1 + 1
    assign i_cmp296_get_hashfunc_02102_a = $unsigned({{2{c_i32_1140850688428_recast_x_q[31]}}, c_i32_1140850688428_recast_x_q});
    assign i_cmp296_get_hashfunc_02102_b = $unsigned({{2{i_and_get_hashfunc_023_vt_join_q[31]}}, i_and_get_hashfunc_023_vt_join_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp296_get_hashfunc_02102_o <= 34'b0;
        end
        else
        begin
            i_cmp296_get_hashfunc_02102_o <= $unsigned($signed(i_cmp296_get_hashfunc_02102_a) - $signed(i_cmp296_get_hashfunc_02102_b));
        end
    end
    assign i_cmp296_get_hashfunc_02102_c[0] = i_cmp296_get_hashfunc_02102_o[33];

    // i_acl_29_get_hashfunc_02241(LOGICAL,131)@2
    assign i_acl_29_get_hashfunc_02241_q = i_cmp296_get_hashfunc_02102_c ^ i_cmp294_get_hashfunc_0256_c;

    // i_acl_34_get_hashfunc_02242(LOGICAL,137)@2
    assign i_acl_34_get_hashfunc_02242_q = i_acl_29_get_hashfunc_02241_q & i_not_cmp_get_hashfunc_02237_q;

    // i_acl_35_get_hashfunc_02243(MUX,138)@2
    assign i_acl_35_get_hashfunc_02243_s = i_acl_34_get_hashfunc_02242_q;
    always @(i_acl_35_get_hashfunc_02243_s or i_acl_28_get_hashfunc_02240_q or i_unnamed_get_hashfunc_02177_q)
    begin
        unique case (i_acl_35_get_hashfunc_02243_s)
            1'b0 : i_acl_35_get_hashfunc_02243_q = i_acl_28_get_hashfunc_02240_q;
            1'b1 : i_acl_35_get_hashfunc_02243_q = i_unnamed_get_hashfunc_02177_q;
            default : i_acl_35_get_hashfunc_02243_q = 32'b0;
        endcase
    end

    // c_i32_1207959552393_recast_x(CONSTANT,475)
    assign c_i32_1207959552393_recast_x_q = $unsigned(32'b01001000000000000000000000000000);

    // i_cmp246_get_hashfunc_0219(LOGICAL,250)@2
    assign i_cmp246_get_hashfunc_0219_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1207959552393_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_38_get_hashfunc_02244(LOGICAL,139)@2
    assign i_acl_38_get_hashfunc_02244_q = i_cmp246_get_hashfunc_0219_q ^ i_cmp296_get_hashfunc_02102_c;

    // i_cmp162_get_hashfunc_0211(COMPARE,225)@1 + 1
    assign i_cmp162_get_hashfunc_0211_a = $unsigned({{2{c_i32_1207959552393_recast_x_q[31]}}, c_i32_1207959552393_recast_x_q});
    assign i_cmp162_get_hashfunc_0211_b = $unsigned({{2{i_and_get_hashfunc_023_vt_join_q[31]}}, i_and_get_hashfunc_023_vt_join_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp162_get_hashfunc_0211_o <= 34'b0;
        end
        else
        begin
            i_cmp162_get_hashfunc_0211_o <= $unsigned($signed(i_cmp162_get_hashfunc_0211_a) - $signed(i_cmp162_get_hashfunc_0211_b));
        end
    end
    assign i_cmp162_get_hashfunc_0211_c[0] = i_cmp162_get_hashfunc_0211_o[33];

    // i_acl_39_get_hashfunc_02245(LOGICAL,140)@2
    assign i_acl_39_get_hashfunc_02245_q = i_cmp162_get_hashfunc_0211_c ^ i_acl_38_get_hashfunc_02244_q;

    // i_acl_41_get_hashfunc_02246(LOGICAL,141)@2
    assign i_acl_41_get_hashfunc_02246_q = i_acl_39_get_hashfunc_02245_q & i_not_cmp_get_hashfunc_02237_q;

    // i_acl_42_get_hashfunc_02247(MUX,142)@2
    assign i_acl_42_get_hashfunc_02247_s = i_acl_41_get_hashfunc_02246_q;
    always @(i_acl_42_get_hashfunc_02247_s or i_acl_35_get_hashfunc_02243_q or i_arg1143_get_hashfunc_02171_q)
    begin
        unique case (i_acl_42_get_hashfunc_02247_s)
            1'b0 : i_acl_42_get_hashfunc_02247_q = i_acl_35_get_hashfunc_02243_q;
            1'b1 : i_acl_42_get_hashfunc_02247_q = i_arg1143_get_hashfunc_02171_q;
            default : i_acl_42_get_hashfunc_02247_q = 32'b0;
        endcase
    end

    // c_i32_167772160427(CONSTANT,13)
    assign c_i32_167772160427_q = $unsigned(32'b00001010000000000000000000000000);

    // i_cmp253_get_hashfunc_02100(COMPARE,254)@1 + 1
    assign i_cmp253_get_hashfunc_02100_a = $unsigned({{2{c_i32_167772160427_q[31]}}, c_i32_167772160427_q});
    assign i_cmp253_get_hashfunc_02100_b = $unsigned({{2{i_and_get_hashfunc_023_vt_join_q[31]}}, i_and_get_hashfunc_023_vt_join_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp253_get_hashfunc_02100_o <= 34'b0;
        end
        else
        begin
            i_cmp253_get_hashfunc_02100_o <= $unsigned($signed(i_cmp253_get_hashfunc_02100_a) - $signed(i_cmp253_get_hashfunc_02100_b));
        end
    end
    assign i_cmp253_get_hashfunc_02100_c[0] = i_cmp253_get_hashfunc_02100_o[33];

    // i_cmp255_get_hashfunc_02165(COMPARE,255)@1 + 1
    assign i_cmp255_get_hashfunc_02165_a = $unsigned({{2{c_i32_268435456448_recast_x_q[31]}}, c_i32_268435456448_recast_x_q});
    assign i_cmp255_get_hashfunc_02165_b = $unsigned({{2{i_and_get_hashfunc_023_vt_join_q[31]}}, i_and_get_hashfunc_023_vt_join_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp255_get_hashfunc_02165_o <= 34'b0;
        end
        else
        begin
            i_cmp255_get_hashfunc_02165_o <= $unsigned($signed(i_cmp255_get_hashfunc_02165_a) - $signed(i_cmp255_get_hashfunc_02165_b));
        end
    end
    assign i_cmp255_get_hashfunc_02165_c[0] = i_cmp255_get_hashfunc_02165_o[33];

    // i_acl_43_get_hashfunc_02248(LOGICAL,143)@2
    assign i_acl_43_get_hashfunc_02248_q = i_cmp255_get_hashfunc_02165_c ^ i_cmp253_get_hashfunc_02100_c;

    // i_acl_45_get_hashfunc_02249(LOGICAL,144)@2
    assign i_acl_45_get_hashfunc_02249_q = i_cmp249_get_hashfunc_0232_c & i_acl_43_get_hashfunc_02248_q;

    // i_acl_49_get_hashfunc_02250(LOGICAL,145)@2
    assign i_acl_49_get_hashfunc_02250_q = i_acl_45_get_hashfunc_02249_q & i_not_cmp_get_hashfunc_02237_q;

    // i_acl_50_get_hashfunc_02251(MUX,147)@2 + 1
    assign i_acl_50_get_hashfunc_02251_s = i_acl_49_get_hashfunc_02250_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_50_get_hashfunc_02251_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_50_get_hashfunc_02251_s)
                1'b0 : i_acl_50_get_hashfunc_02251_q <= i_acl_42_get_hashfunc_02247_q;
                1'b1 : i_acl_50_get_hashfunc_02251_q <= i_unnamed_get_hashfunc_02201_q;
                default : i_acl_50_get_hashfunc_02251_q <= 32'b0;
            endcase
        end
    end

    // c_i32_335544320411_recast_x(CONSTANT,511)
    assign c_i32_335544320411_recast_x_q = $unsigned(32'b00010100000000000000000000000000);

    // i_cmp251_get_hashfunc_0254(LOGICAL,253)@2
    assign i_cmp251_get_hashfunc_0254_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_335544320411_recast_x_q ? 1'b1 : 1'b0);

    // i_cmp270_get_hashfunc_02167(LOGICAL,261)@2
    assign i_cmp270_get_hashfunc_02167_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_167772160427_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_02252(LOGICAL,364)@2 + 1
    assign i_unnamed_get_hashfunc_02252_qi = i_cmp270_get_hashfunc_02167_q | i_cmp251_get_hashfunc_0254_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_02252_delay ( .xin(i_unnamed_get_hashfunc_02252_qi), .xout(i_unnamed_get_hashfunc_02252_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_64_get_hashfunc_02253(MUX,153)@3
    assign i_acl_64_get_hashfunc_02253_s = i_unnamed_get_hashfunc_02252_q;
    always @(i_acl_64_get_hashfunc_02253_s or i_acl_50_get_hashfunc_02251_q or c_i32_142457_q)
    begin
        unique case (i_acl_64_get_hashfunc_02253_s)
            1'b0 : i_acl_64_get_hashfunc_02253_q = i_acl_50_get_hashfunc_02251_q;
            1'b1 : i_acl_64_get_hashfunc_02253_q = c_i32_142457_q;
            default : i_acl_64_get_hashfunc_02253_q = 32'b0;
        endcase
    end

    // redist16_i_not_cmp_get_hashfunc_02237_q_1(DELAY,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_not_cmp_get_hashfunc_02237_q_1_q <= '0;
        end
        else
        begin
            redist16_i_not_cmp_get_hashfunc_02237_q_1_q <= $unsigned(i_not_cmp_get_hashfunc_02237_q);
        end
    end

    // c_i32_67108864406_recast_x(CONSTANT,527)
    assign c_i32_67108864406_recast_x_q = $unsigned(32'b00000100000000000000000000000000);

    // i_cmp272_get_hashfunc_02202(COMPARE,262)@2
    assign i_cmp272_get_hashfunc_02202_a = $unsigned({{2{c_i32_67108864406_recast_x_q[31]}}, c_i32_67108864406_recast_x_q});
    assign i_cmp272_get_hashfunc_02202_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    assign i_cmp272_get_hashfunc_02202_o = $unsigned($signed(i_cmp272_get_hashfunc_02202_a) - $signed(i_cmp272_get_hashfunc_02202_b));
    assign i_cmp272_get_hashfunc_02202_c[0] = i_cmp272_get_hashfunc_02202_o[33];

    // i_cmp272_not_get_hashfunc_02204(LOGICAL,263)@2
    assign i_cmp272_not_get_hashfunc_02204_q = i_cmp272_get_hashfunc_02202_c ^ VCC_q;

    // i_acl_68_get_hashfunc_02254(LOGICAL,154)@2 + 1
    assign i_acl_68_get_hashfunc_02254_qi = i_cmp249_get_hashfunc_0232_c & i_cmp272_not_get_hashfunc_02204_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_68_get_hashfunc_02254_delay ( .xin(i_acl_68_get_hashfunc_02254_qi), .xout(i_acl_68_get_hashfunc_02254_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_72_get_hashfunc_02255(LOGICAL,155)@3
    assign i_acl_72_get_hashfunc_02255_q = i_acl_68_get_hashfunc_02254_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;

    // i_acl_73_get_hashfunc_02256(MUX,156)@3
    assign i_acl_73_get_hashfunc_02256_s = i_acl_72_get_hashfunc_02255_q;
    always @(i_acl_73_get_hashfunc_02256_s or i_acl_64_get_hashfunc_02253_q or i_unnamed_get_hashfunc_02235_q)
    begin
        unique case (i_acl_73_get_hashfunc_02256_s)
            1'b0 : i_acl_73_get_hashfunc_02256_q = i_acl_64_get_hashfunc_02253_q;
            1'b1 : i_acl_73_get_hashfunc_02256_q = i_unnamed_get_hashfunc_02235_q;
            default : i_acl_73_get_hashfunc_02256_q = 32'b0;
        endcase
    end

    // i_acl_74_get_hashfunc_02257(LOGICAL,157)@2
    assign i_acl_74_get_hashfunc_02257_q = i_cmp270_get_hashfunc_02167_q ^ i_cmp272_get_hashfunc_02202_c;

    // i_acl_75_get_hashfunc_02258(LOGICAL,158)@2
    assign i_acl_75_get_hashfunc_02258_q = i_cmp253_get_hashfunc_02100_c ^ i_acl_74_get_hashfunc_02257_q;

    // i_acl_77_get_hashfunc_02259(LOGICAL,159)@2 + 1
    assign i_acl_77_get_hashfunc_02259_qi = i_cmp249_get_hashfunc_0232_c & i_acl_75_get_hashfunc_02258_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_77_get_hashfunc_02259_delay ( .xin(i_acl_77_get_hashfunc_02259_qi), .xout(i_acl_77_get_hashfunc_02259_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_81_get_hashfunc_02260(LOGICAL,161)@3
    assign i_acl_81_get_hashfunc_02260_q = i_acl_77_get_hashfunc_02259_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;

    // i_acl_82_get_hashfunc_02261(MUX,162)@3
    assign i_acl_82_get_hashfunc_02261_s = i_acl_81_get_hashfunc_02260_q;
    always @(i_acl_82_get_hashfunc_02261_s or i_acl_73_get_hashfunc_02256_q or i_unnamed_get_hashfunc_02228_q)
    begin
        unique case (i_acl_82_get_hashfunc_02261_s)
            1'b0 : i_acl_82_get_hashfunc_02261_q = i_acl_73_get_hashfunc_02256_q;
            1'b1 : i_acl_82_get_hashfunc_02261_q = i_unnamed_get_hashfunc_02228_q;
            default : i_acl_82_get_hashfunc_02261_q = 32'b0;
        endcase
    end

    // i_acl_84_get_hashfunc_02262(LOGICAL,163)@2
    assign i_acl_84_get_hashfunc_02262_q = i_cmp251_get_hashfunc_0254_q ^ i_cmp255_get_hashfunc_02165_c;

    // i_acl_85_get_hashfunc_02263(LOGICAL,164)@2 + 1
    assign i_acl_85_get_hashfunc_02263_qi = i_cmp249_get_hashfunc_0232_c & i_acl_84_get_hashfunc_02262_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_85_get_hashfunc_02263_delay ( .xin(i_acl_85_get_hashfunc_02263_qi), .xout(i_acl_85_get_hashfunc_02263_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_89_get_hashfunc_02264(LOGICAL,165)@3
    assign i_acl_89_get_hashfunc_02264_q = i_acl_85_get_hashfunc_02263_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;

    // i_acl_90_get_hashfunc_02265(MUX,171)@3
    assign i_acl_90_get_hashfunc_02265_s = i_acl_89_get_hashfunc_02264_q;
    always @(i_acl_90_get_hashfunc_02265_s or i_acl_82_get_hashfunc_02261_q or i_arg1139_get_hashfunc_02192_q)
    begin
        unique case (i_acl_90_get_hashfunc_02265_s)
            1'b0 : i_acl_90_get_hashfunc_02265_q = i_acl_82_get_hashfunc_02261_q;
            1'b1 : i_acl_90_get_hashfunc_02265_q = i_arg1139_get_hashfunc_02192_q;
            default : i_acl_90_get_hashfunc_02265_q = 32'b0;
        endcase
    end

    // redist24_i_cmp246_get_hashfunc_0219_q_1(DELAY,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_cmp246_get_hashfunc_0219_q_1_q <= '0;
        end
        else
        begin
            redist24_i_cmp246_get_hashfunc_0219_q_1_q <= $unsigned(i_cmp246_get_hashfunc_0219_q);
        end
    end

    // i_acl_94_get_hashfunc_02266(MUX,172)@3
    assign i_acl_94_get_hashfunc_02266_s = redist24_i_cmp246_get_hashfunc_0219_q_1_q;
    always @(i_acl_94_get_hashfunc_02266_s or i_acl_90_get_hashfunc_02265_q or c_i32_178450_q)
    begin
        unique case (i_acl_94_get_hashfunc_02266_s)
            1'b0 : i_acl_94_get_hashfunc_02266_q = i_acl_90_get_hashfunc_02265_q;
            1'b1 : i_acl_94_get_hashfunc_02266_q = c_i32_178450_q;
            default : i_acl_94_get_hashfunc_02266_q = 32'b0;
        endcase
    end

    // c_i32_1744830464401_recast_x(CONSTANT,493)
    assign c_i32_1744830464401_recast_x_q = $unsigned(32'b01101000000000000000000000000000);

    // i_cmp227_get_hashfunc_0252(LOGICAL,244)@2 + 1
    assign i_cmp227_get_hashfunc_0252_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1744830464401_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp227_get_hashfunc_0252_delay ( .xin(i_cmp227_get_hashfunc_0252_qi), .xout(i_cmp227_get_hashfunc_0252_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_100_get_hashfunc_02267(MUX,39)@3
    assign i_acl_100_get_hashfunc_02267_s = i_cmp227_get_hashfunc_0252_q;
    always @(i_acl_100_get_hashfunc_02267_s or i_acl_94_get_hashfunc_02266_q or c_i32_226424_q)
    begin
        unique case (i_acl_100_get_hashfunc_02267_s)
            1'b0 : i_acl_100_get_hashfunc_02267_q = i_acl_94_get_hashfunc_02266_q;
            1'b1 : i_acl_100_get_hashfunc_02267_q = c_i32_226424_q;
            default : i_acl_100_get_hashfunc_02267_q = 32'b0;
        endcase
    end

    // i_cmp229_get_hashfunc_0297(COMPARE,245)@2
    assign i_cmp229_get_hashfunc_0297_a = $unsigned({{2{c_i32_1677721600426_recast_x_q[31]}}, c_i32_1677721600426_recast_x_q});
    assign i_cmp229_get_hashfunc_0297_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    assign i_cmp229_get_hashfunc_0297_o = $unsigned($signed(i_cmp229_get_hashfunc_0297_a) - $signed(i_cmp229_get_hashfunc_0297_b));
    assign i_cmp229_get_hashfunc_0297_c[0] = i_cmp229_get_hashfunc_0297_o[33];

    // i_cmp229_not_get_hashfunc_0299(LOGICAL,246)@2
    assign i_cmp229_not_get_hashfunc_0299_q = i_cmp229_get_hashfunc_0297_c ^ VCC_q;

    // c_i32_1577058305396_recast_x(CONSTANT,487)
    assign c_i32_1577058305396_recast_x_q = $unsigned(32'b01011110000000000000000000000001);

    // i_cmp164_get_hashfunc_0217(COMPARE,226)@2
    assign i_cmp164_get_hashfunc_0217_a = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    assign i_cmp164_get_hashfunc_0217_b = $unsigned({{2{c_i32_1577058305396_recast_x_q[31]}}, c_i32_1577058305396_recast_x_q});
    assign i_cmp164_get_hashfunc_0217_o = $unsigned($signed(i_cmp164_get_hashfunc_0217_a) - $signed(i_cmp164_get_hashfunc_0217_b));
    assign i_cmp164_get_hashfunc_0217_c[0] = i_cmp164_get_hashfunc_0217_o[33];

    // i_acl_103_get_hashfunc_02268(LOGICAL,40)@2
    assign i_acl_103_get_hashfunc_02268_q = i_cmp164_get_hashfunc_0217_c ^ i_cmp229_not_get_hashfunc_0299_q;

    // i_acl_105_get_hashfunc_02269(LOGICAL,41)@2 + 1
    assign i_acl_105_get_hashfunc_02269_qi = i_cmp162_get_hashfunc_0211_c & i_acl_103_get_hashfunc_02268_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_105_get_hashfunc_02269_delay ( .xin(i_acl_105_get_hashfunc_02269_qi), .xout(i_acl_105_get_hashfunc_02269_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_106_get_hashfunc_02270(LOGICAL,42)@3
    assign i_acl_106_get_hashfunc_02270_q = i_acl_105_get_hashfunc_02269_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;

    // i_acl_107_get_hashfunc_02271(MUX,43)@3 + 1
    assign i_acl_107_get_hashfunc_02271_s = i_acl_106_get_hashfunc_02270_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_107_get_hashfunc_02271_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_107_get_hashfunc_02271_s)
                1'b0 : i_acl_107_get_hashfunc_02271_q <= i_acl_100_get_hashfunc_02267_q;
                1'b1 : i_acl_107_get_hashfunc_02271_q <= i_unnamed_get_hashfunc_02164_q;
                default : i_acl_107_get_hashfunc_02271_q <= 32'b0;
            endcase
        end
    end

    // i_cmp210_get_hashfunc_0230(COMPARE,240)@2 + 1
    assign i_cmp210_get_hashfunc_0230_a = $unsigned({{2{c_i32_1744830464401_recast_x_q[31]}}, c_i32_1744830464401_recast_x_q});
    assign i_cmp210_get_hashfunc_0230_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp210_get_hashfunc_0230_o <= 34'b0;
        end
        else
        begin
            i_cmp210_get_hashfunc_0230_o <= $unsigned($signed(i_cmp210_get_hashfunc_0230_a) - $signed(i_cmp210_get_hashfunc_0230_b));
        end
    end
    assign i_cmp210_get_hashfunc_0230_c[0] = i_cmp210_get_hashfunc_0230_o[33];

    // i_cmp212_get_hashfunc_0250(COMPARE,241)@2 + 1
    assign i_cmp212_get_hashfunc_0250_a = $unsigned({{2{c_i32_1845493760410_recast_x_q[31]}}, c_i32_1845493760410_recast_x_q});
    assign i_cmp212_get_hashfunc_0250_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp212_get_hashfunc_0250_o <= 34'b0;
        end
        else
        begin
            i_cmp212_get_hashfunc_0250_o <= $unsigned($signed(i_cmp212_get_hashfunc_0250_a) - $signed(i_cmp212_get_hashfunc_0250_b));
        end
    end
    assign i_cmp212_get_hashfunc_0250_c[0] = i_cmp212_get_hashfunc_0250_o[33];

    // i_acl_108_get_hashfunc_02272(LOGICAL,44)@3
    assign i_acl_108_get_hashfunc_02272_q = i_cmp212_get_hashfunc_0250_c ^ i_cmp210_get_hashfunc_0230_c;

    // i_acl_112_get_hashfunc_02273(LOGICAL,45)@3 + 1
    assign i_acl_112_get_hashfunc_02273_qi = i_acl_108_get_hashfunc_02272_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_112_get_hashfunc_02273_delay ( .xin(i_acl_112_get_hashfunc_02273_qi), .xout(i_acl_112_get_hashfunc_02273_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_113_get_hashfunc_02274(MUX,46)@4
    assign i_acl_113_get_hashfunc_02274_s = i_acl_112_get_hashfunc_02273_q;
    always @(i_acl_113_get_hashfunc_02274_s or i_acl_107_get_hashfunc_02271_q or i_unnamed_get_hashfunc_0296_q)
    begin
        unique case (i_acl_113_get_hashfunc_02274_s)
            1'b0 : i_acl_113_get_hashfunc_02274_q = i_acl_107_get_hashfunc_02271_q;
            1'b1 : i_acl_113_get_hashfunc_02274_q = i_unnamed_get_hashfunc_0296_q;
            default : i_acl_113_get_hashfunc_02274_q = 32'b0;
        endcase
    end

    // redist26_i_cmp229_get_hashfunc_0297_c_1(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_cmp229_get_hashfunc_0297_c_1_q <= '0;
        end
        else
        begin
            redist26_i_cmp229_get_hashfunc_0297_c_1_q <= $unsigned(i_cmp229_get_hashfunc_0297_c);
        end
    end

    // i_acl_114_get_hashfunc_02275(LOGICAL,47)@3
    assign i_acl_114_get_hashfunc_02275_q = i_cmp227_get_hashfunc_0252_q ^ redist26_i_cmp229_get_hashfunc_0297_c_1_q;

    // i_acl_115_get_hashfunc_02276(LOGICAL,48)@3
    assign i_acl_115_get_hashfunc_02276_q = i_cmp210_get_hashfunc_0230_c ^ i_acl_114_get_hashfunc_02275_q;

    // i_acl_119_get_hashfunc_02277(LOGICAL,49)@3 + 1
    assign i_acl_119_get_hashfunc_02277_qi = i_acl_115_get_hashfunc_02276_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_119_get_hashfunc_02277_delay ( .xin(i_acl_119_get_hashfunc_02277_qi), .xout(i_acl_119_get_hashfunc_02277_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_120_get_hashfunc_02278(MUX,55)@4
    assign i_acl_120_get_hashfunc_02278_s = i_acl_119_get_hashfunc_02277_q;
    always @(i_acl_120_get_hashfunc_02278_s or i_acl_113_get_hashfunc_02274_q or i_arg1137_get_hashfunc_02158_q)
    begin
        unique case (i_acl_120_get_hashfunc_02278_s)
            1'b0 : i_acl_120_get_hashfunc_02278_q = i_acl_113_get_hashfunc_02274_q;
            1'b1 : i_acl_120_get_hashfunc_02278_q = i_arg1137_get_hashfunc_02158_q;
            default : i_acl_120_get_hashfunc_02278_q = 32'b0;
        endcase
    end

    // i_cmp159_get_hashfunc_026(LOGICAL,224)@2 + 1
    assign i_cmp159_get_hashfunc_026_qi = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1912602624389_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp159_get_hashfunc_026_delay ( .xin(i_cmp159_get_hashfunc_026_qi), .xout(i_cmp159_get_hashfunc_026_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_124_get_hashfunc_02279(LOGICAL,56)@3
    assign i_acl_124_get_hashfunc_02279_q = i_cmp159_get_hashfunc_026_q ^ i_cmp212_get_hashfunc_0250_c;

    // i_acl_125_get_hashfunc_02280(LOGICAL,57)@3 + 1
    assign i_acl_125_get_hashfunc_02280_qi = i_acl_124_get_hashfunc_02279_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_125_get_hashfunc_02280_delay ( .xin(i_acl_125_get_hashfunc_02280_qi), .xout(i_acl_125_get_hashfunc_02280_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_126_get_hashfunc_02281(MUX,58)@4
    assign i_acl_126_get_hashfunc_02281_s = i_acl_125_get_hashfunc_02280_q;
    always @(i_acl_126_get_hashfunc_02281_s or i_acl_120_get_hashfunc_02278_q or i_arg1135_get_hashfunc_0290_q)
    begin
        unique case (i_acl_126_get_hashfunc_02281_s)
            1'b0 : i_acl_126_get_hashfunc_02281_q = i_acl_120_get_hashfunc_02278_q;
            1'b1 : i_acl_126_get_hashfunc_02281_q = i_arg1135_get_hashfunc_0290_q;
            default : i_acl_126_get_hashfunc_02281_q = 32'b0;
        endcase
    end

    // c_i32_1207959553470(CONSTANT,9)
    assign c_i32_1207959553470_q = $unsigned(32'b10110111111111111111111111111111);

    // i_and_off_get_hashfunc_02284(ADD,187)@2
    assign i_and_off_get_hashfunc_02284_a = {1'b0, redist37_i_and_get_hashfunc_023_vt_join_q_1_q};
    assign i_and_off_get_hashfunc_02284_b = {1'b0, c_i32_1207959553470_q};
    assign i_and_off_get_hashfunc_02284_o = $unsigned(i_and_off_get_hashfunc_02284_a) + $unsigned(i_and_off_get_hashfunc_02284_b);
    assign i_and_off_get_hashfunc_02284_q = i_and_off_get_hashfunc_02284_o[32:0];

    // bgTrunc_i_and_off_get_hashfunc_02284_sel_x(BITSELECT,468)@2
    assign bgTrunc_i_and_off_get_hashfunc_02284_sel_x_b = i_and_off_get_hashfunc_02284_q[31:0];

    // i_and_off_get_hashfunc_02284_vt_select_31(BITSELECT,190)@2
    assign i_and_off_get_hashfunc_02284_vt_select_31_b = bgTrunc_i_and_off_get_hashfunc_02284_sel_x_b[31:25];

    // i_and_off319_get_hashfunc_02298_vt_const_24(CONSTANT,180)
    assign i_and_off319_get_hashfunc_02298_vt_const_24_q = $unsigned(25'b1111111111111111111111111);

    // i_and_off_get_hashfunc_02284_vt_join(BITJOIN,189)@2
    assign i_and_off_get_hashfunc_02284_vt_join_q = {i_and_off_get_hashfunc_02284_vt_select_31_b, i_and_off319_get_hashfunc_02298_vt_const_24_q};

    // i_unnamed_get_hashfunc_02285(COMPARE,365)@2 + 1
    assign i_unnamed_get_hashfunc_02285_a = {2'b00, i_and_off_get_hashfunc_02284_vt_join_q};
    assign i_unnamed_get_hashfunc_02285_b = {2'b00, c_i32_369098752461_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_get_hashfunc_02285_o <= 34'b0;
        end
        else
        begin
            i_unnamed_get_hashfunc_02285_o <= $unsigned(i_unnamed_get_hashfunc_02285_a) - $unsigned(i_unnamed_get_hashfunc_02285_b);
        end
    end
    assign i_unnamed_get_hashfunc_02285_c[0] = i_unnamed_get_hashfunc_02285_o[33];

    // i_reduction_get_hashfunc_02_1_get_hashfunc_02288(LOGICAL,328)@3
    assign i_reduction_get_hashfunc_02_1_get_hashfunc_02288_q = i_unnamed_get_hashfunc_02285_c & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;

    // i_not_cmp159_get_hashfunc_02286(LOGICAL,298)@3
    assign i_not_cmp159_get_hashfunc_02286_q = i_cmp159_get_hashfunc_026_q ^ VCC_q;

    // c_i32_1308622848445_recast_x(CONSTANT,477)
    assign c_i32_1308622848445_recast_x_q = $unsigned(32'b01001110000000000000000000000000);

    // i_unnamed_get_hashfunc_02188(LOGICAL,350)@2
    assign i_unnamed_get_hashfunc_02188_q = $unsigned(i_unnamed_get_hashfunc_0241_vt_join_q == c_i32_1308622848445_recast_x_q ? 1'b1 : 1'b0);

    // i_cmp188_get_hashfunc_02154(COMPARE,235)@2
    assign i_cmp188_get_hashfunc_02154_a = $unsigned({{2{c_i32_1308622848445_recast_x_q[31]}}, c_i32_1308622848445_recast_x_q});
    assign i_cmp188_get_hashfunc_02154_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    assign i_cmp188_get_hashfunc_02154_o = $unsigned($signed(i_cmp188_get_hashfunc_02154_a) - $signed(i_cmp188_get_hashfunc_02154_b));
    assign i_cmp188_get_hashfunc_02154_c[0] = i_cmp188_get_hashfunc_02154_o[33];

    // i_acl_127_demorgan_get_hashfunc_02282(LOGICAL,59)@2 + 1
    assign i_acl_127_demorgan_get_hashfunc_02282_qi = i_cmp188_get_hashfunc_02154_c | i_unnamed_get_hashfunc_02188_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_127_demorgan_get_hashfunc_02282_delay ( .xin(i_acl_127_demorgan_get_hashfunc_02282_qi), .xout(i_acl_127_demorgan_get_hashfunc_02282_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_130_get_hashfunc_02283(LOGICAL,60)@3
    assign i_acl_130_get_hashfunc_02283_q = i_acl_127_demorgan_get_hashfunc_02282_q ^ VCC_q;

    // i_reduction_get_hashfunc_02_0_get_hashfunc_02287(LOGICAL,317)@3
    assign i_reduction_get_hashfunc_02_0_get_hashfunc_02287_q = i_acl_130_get_hashfunc_02283_q & i_not_cmp159_get_hashfunc_02286_q;

    // i_reduction_get_hashfunc_02_2_get_hashfunc_02289(LOGICAL,335)@3 + 1
    assign i_reduction_get_hashfunc_02_2_get_hashfunc_02289_qi = i_reduction_get_hashfunc_02_0_get_hashfunc_02287_q & i_reduction_get_hashfunc_02_1_get_hashfunc_02288_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_get_hashfunc_02_2_get_hashfunc_02289_delay ( .xin(i_reduction_get_hashfunc_02_2_get_hashfunc_02289_qi), .xout(i_reduction_get_hashfunc_02_2_get_hashfunc_02289_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_135_get_hashfunc_02290(MUX,61)@4
    assign i_acl_135_get_hashfunc_02290_s = i_reduction_get_hashfunc_02_2_get_hashfunc_02289_q;
    always @(i_acl_135_get_hashfunc_02290_s or i_acl_126_get_hashfunc_02281_q or i_arg1134_get_hashfunc_02222_q)
    begin
        unique case (i_acl_135_get_hashfunc_02290_s)
            1'b0 : i_acl_135_get_hashfunc_02290_q = i_acl_126_get_hashfunc_02281_q;
            1'b1 : i_acl_135_get_hashfunc_02290_q = i_arg1134_get_hashfunc_02222_q;
            default : i_acl_135_get_hashfunc_02290_q = 32'b0;
        endcase
    end

    // c_i32_1342177280455_recast_x(CONSTANT,478)
    assign c_i32_1342177280455_recast_x_q = $unsigned(32'b01010000000000000000000000000000);

    // i_cmp190_get_hashfunc_02186(LOGICAL,237)@2
    assign i_cmp190_get_hashfunc_02186_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1342177280455_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_get_hashfunc_02_4_get_hashfunc_02292(LOGICAL,337)@2
    assign i_reduction_get_hashfunc_02_4_get_hashfunc_02292_q = i_cmp190_get_hashfunc_02186_q ^ i_cmp188_get_hashfunc_02154_c;

    // c_i32_1409286144409_recast_x(CONSTANT,481)
    assign c_i32_1409286144409_recast_x_q = $unsigned(32'b01010100000000000000000000000000);

    // i_cmp186_get_hashfunc_0286(LOGICAL,234)@2
    assign i_cmp186_get_hashfunc_0286_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1409286144409_recast_x_q ? 1'b1 : 1'b0);

    // i_cmp168_get_hashfunc_0248(COMPARE,228)@2
    assign i_cmp168_get_hashfunc_0248_a = $unsigned({{2{c_i32_1409286144409_recast_x_q[31]}}, c_i32_1409286144409_recast_x_q});
    assign i_cmp168_get_hashfunc_0248_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    assign i_cmp168_get_hashfunc_0248_o = $unsigned($signed(i_cmp168_get_hashfunc_0248_a) - $signed(i_cmp168_get_hashfunc_0248_b));
    assign i_cmp168_get_hashfunc_0248_c[0] = i_cmp168_get_hashfunc_0248_o[33];

    // i_reduction_get_hashfunc_02_3_get_hashfunc_02291(LOGICAL,336)@2
    assign i_reduction_get_hashfunc_02_3_get_hashfunc_02291_q = i_cmp168_get_hashfunc_0248_c ^ i_cmp186_get_hashfunc_0286_q;

    // i_reduction_get_hashfunc_02_5_get_hashfunc_02293(LOGICAL,338)@2
    assign i_reduction_get_hashfunc_02_5_get_hashfunc_02293_q = i_reduction_get_hashfunc_02_3_get_hashfunc_02291_q ^ i_reduction_get_hashfunc_02_4_get_hashfunc_02292_q;

    // i_acl_141_get_hashfunc_02294(LOGICAL,67)@2 + 1
    assign i_acl_141_get_hashfunc_02294_qi = i_cmp164_get_hashfunc_0217_c & i_reduction_get_hashfunc_02_5_get_hashfunc_02293_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_141_get_hashfunc_02294_delay ( .xin(i_acl_141_get_hashfunc_02294_qi), .xout(i_acl_141_get_hashfunc_02294_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_143_get_hashfunc_02295(LOGICAL,68)@3 + 1
    assign i_acl_143_get_hashfunc_02295_qi = i_acl_141_get_hashfunc_02294_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_143_get_hashfunc_02295_delay ( .xin(i_acl_143_get_hashfunc_02295_qi), .xout(i_acl_143_get_hashfunc_02295_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_144_get_hashfunc_02296(MUX,69)@4
    assign i_acl_144_get_hashfunc_02296_s = i_acl_143_get_hashfunc_02295_q;
    always @(i_acl_144_get_hashfunc_02296_s or i_acl_135_get_hashfunc_02290_q or i_arg1133_get_hashfunc_02219_q)
    begin
        unique case (i_acl_144_get_hashfunc_02296_s)
            1'b0 : i_acl_144_get_hashfunc_02296_q = i_acl_135_get_hashfunc_02290_q;
            1'b1 : i_acl_144_get_hashfunc_02296_q = i_arg1133_get_hashfunc_02219_q;
            default : i_acl_144_get_hashfunc_02296_q = 32'b0;
        endcase
    end

    // c_i32_1442840576444_recast_x(CONSTANT,482)
    assign c_i32_1442840576444_recast_x_q = $unsigned(32'b01010110000000000000000000000000);

    // i_cmp178_get_hashfunc_02150(LOGICAL,232)@2
    assign i_cmp178_get_hashfunc_02150_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_1442840576444_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1509949440422_recast_x(CONSTANT,484)
    assign c_i32_1509949440422_recast_x_q = $unsigned(32'b01011010000000000000000000000000);

    // i_cmp176_get_hashfunc_02148(LOGICAL,231)@2
    assign i_cmp176_get_hashfunc_02148_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_1509949440422_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond9_get_hashfunc_02152(LOGICAL,315)@2
    assign i_or_cond9_get_hashfunc_02152_q = i_cmp176_get_hashfunc_02148_q & i_cmp178_get_hashfunc_02150_q;

    // i_cmp170_get_hashfunc_0284(COMPARE,229)@2
    assign i_cmp170_get_hashfunc_0284_a = $unsigned({{2{c_i32_1509949440422_recast_x_q[31]}}, c_i32_1509949440422_recast_x_q});
    assign i_cmp170_get_hashfunc_0284_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    assign i_cmp170_get_hashfunc_0284_o = $unsigned($signed(i_cmp170_get_hashfunc_0284_a) - $signed(i_cmp170_get_hashfunc_0284_b));
    assign i_cmp170_get_hashfunc_0284_c[0] = i_cmp170_get_hashfunc_0284_o[33];

    // i_acl_145_get_hashfunc_02297(LOGICAL,70)@2
    assign i_acl_145_get_hashfunc_02297_q = i_cmp170_get_hashfunc_0284_c ^ i_or_cond9_get_hashfunc_02152_q;

    // i_reduction_get_hashfunc_02_8_get_hashfunc_02301(LOGICAL,340)@2
    assign i_reduction_get_hashfunc_02_8_get_hashfunc_02301_q = i_not_cmp_get_hashfunc_02237_q & i_acl_145_get_hashfunc_02297_q;

    // c_i32_1409286145471(CONSTANT,10)
    assign c_i32_1409286145471_q = $unsigned(32'b10101011111111111111111111111111);

    // i_and_off319_get_hashfunc_02298(ADD,179)@1
    assign i_and_off319_get_hashfunc_02298_a = {1'b0, i_and_get_hashfunc_023_vt_join_q};
    assign i_and_off319_get_hashfunc_02298_b = {1'b0, c_i32_1409286145471_q};
    assign i_and_off319_get_hashfunc_02298_o = $unsigned(i_and_off319_get_hashfunc_02298_a) + $unsigned(i_and_off319_get_hashfunc_02298_b);
    assign i_and_off319_get_hashfunc_02298_q = i_and_off319_get_hashfunc_02298_o[32:0];

    // bgTrunc_i_and_off319_get_hashfunc_02298_sel_x(BITSELECT,466)@1
    assign bgTrunc_i_and_off319_get_hashfunc_02298_sel_x_b = i_and_off319_get_hashfunc_02298_q[31:0];

    // i_and_off319_get_hashfunc_02298_vt_select_31(BITSELECT,182)@1
    assign i_and_off319_get_hashfunc_02298_vt_select_31_b = bgTrunc_i_and_off319_get_hashfunc_02298_sel_x_b[31:25];

    // i_and_off319_get_hashfunc_02298_vt_join(BITJOIN,181)@1
    assign i_and_off319_get_hashfunc_02298_vt_join_q = {i_and_off319_get_hashfunc_02298_vt_select_31_b, i_and_off319_get_hashfunc_02298_vt_const_24_q};

    // i_unnamed_get_hashfunc_02299(COMPARE,366)@1 + 1
    assign i_unnamed_get_hashfunc_02299_a = {2'b00, i_and_off319_get_hashfunc_02298_vt_join_q};
    assign i_unnamed_get_hashfunc_02299_b = {2'b00, c_i32_167772160427_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_get_hashfunc_02299_o <= 34'b0;
        end
        else
        begin
            i_unnamed_get_hashfunc_02299_o <= $unsigned(i_unnamed_get_hashfunc_02299_a) - $unsigned(i_unnamed_get_hashfunc_02299_b);
        end
    end
    assign i_unnamed_get_hashfunc_02299_c[0] = i_unnamed_get_hashfunc_02299_o[33];

    // i_reduction_get_hashfunc_02_7_get_hashfunc_02300(LOGICAL,339)@2
    assign i_reduction_get_hashfunc_02_7_get_hashfunc_02300_q = i_cmp162_get_hashfunc_0211_c & i_unnamed_get_hashfunc_02299_c;

    // i_reduction_get_hashfunc_02_9_get_hashfunc_02302(LOGICAL,341)@2 + 1
    assign i_reduction_get_hashfunc_02_9_get_hashfunc_02302_qi = i_reduction_get_hashfunc_02_7_get_hashfunc_02300_q & i_reduction_get_hashfunc_02_8_get_hashfunc_02301_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_get_hashfunc_02_9_get_hashfunc_02302_delay ( .xin(i_reduction_get_hashfunc_02_9_get_hashfunc_02302_qi), .xout(i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q_2(DELAY,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q_2_q <= '0;
        end
        else
        begin
            redist10_i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q_2_q <= $unsigned(i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q);
        end
    end

    // i_acl_152_get_hashfunc_02303(MUX,71)@4 + 1
    assign i_acl_152_get_hashfunc_02303_s = redist10_i_reduction_get_hashfunc_02_9_get_hashfunc_02302_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_152_get_hashfunc_02303_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_152_get_hashfunc_02303_s)
                1'b0 : i_acl_152_get_hashfunc_02303_q <= i_acl_144_get_hashfunc_02296_q;
                1'b1 : i_acl_152_get_hashfunc_02303_q <= i_arg1132_get_hashfunc_02185_q;
                default : i_acl_152_get_hashfunc_02303_q <= 32'b0;
            endcase
        end
    end

    // c_i32_1543503872443_recast_x(CONSTANT,485)
    assign c_i32_1543503872443_recast_x_q = $unsigned(32'b01011100000000000000000000000000);

    // i_cmp172_get_hashfunc_02146(LOGICAL,230)@2
    assign i_cmp172_get_hashfunc_02146_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1543503872443_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_153_get_hashfunc_02304(LOGICAL,72)@2
    assign i_acl_153_get_hashfunc_02304_q = i_cmp172_get_hashfunc_02146_q ^ i_cmp170_get_hashfunc_0284_c;

    // c_i32_1577058304400_recast_x(CONSTANT,486)
    assign c_i32_1577058304400_recast_x_q = $unsigned(32'b01011110000000000000000000000000);

    // i_cmp166_get_hashfunc_0228(LOGICAL,227)@2
    assign i_cmp166_get_hashfunc_0228_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1577058304400_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_155_get_hashfunc_02305(LOGICAL,73)@2
    assign i_acl_155_get_hashfunc_02305_q = i_cmp166_get_hashfunc_0228_q ^ i_acl_153_get_hashfunc_02304_q;

    // i_acl_156_get_hashfunc_02306(LOGICAL,74)@2 + 1
    assign i_acl_156_get_hashfunc_02306_qi = i_cmp164_get_hashfunc_0217_c & i_acl_155_get_hashfunc_02305_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_156_get_hashfunc_02306_delay ( .xin(i_acl_156_get_hashfunc_02306_qi), .xout(i_acl_156_get_hashfunc_02306_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_159_get_hashfunc_02307(LOGICAL,75)@3 + 1
    assign i_acl_159_get_hashfunc_02307_qi = i_acl_156_get_hashfunc_02306_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_159_get_hashfunc_02307_delay ( .xin(i_acl_159_get_hashfunc_02307_qi), .xout(i_acl_159_get_hashfunc_02307_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist45_i_acl_159_get_hashfunc_02307_q_2(DELAY,602)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_acl_159_get_hashfunc_02307_q_2_q <= '0;
        end
        else
        begin
            redist45_i_acl_159_get_hashfunc_02307_q_2_q <= $unsigned(i_acl_159_get_hashfunc_02307_q);
        end
    end

    // i_acl_160_get_hashfunc_02308(MUX,76)@5
    assign i_acl_160_get_hashfunc_02308_s = redist45_i_acl_159_get_hashfunc_02307_q_2_q;
    always @(i_acl_160_get_hashfunc_02308_s or i_acl_152_get_hashfunc_02303_q or redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q)
    begin
        unique case (i_acl_160_get_hashfunc_02308_s)
            1'b0 : i_acl_160_get_hashfunc_02308_q = i_acl_152_get_hashfunc_02303_q;
            1'b1 : i_acl_160_get_hashfunc_02308_q = redist3_sync_together474_aunroll_x_in_c1_eni1_1_tpl_4_q;
            default : i_acl_160_get_hashfunc_02308_q = 32'b0;
        endcase
    end

    // redist32_i_cmp159_get_hashfunc_026_q_3(DELAY,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_cmp159_get_hashfunc_026_q_3_delay_0 <= '0;
            redist32_i_cmp159_get_hashfunc_026_q_3_q <= '0;
        end
        else
        begin
            redist32_i_cmp159_get_hashfunc_026_q_3_delay_0 <= $unsigned(i_cmp159_get_hashfunc_026_q);
            redist32_i_cmp159_get_hashfunc_026_q_3_q <= redist32_i_cmp159_get_hashfunc_026_q_3_delay_0;
        end
    end

    // i_acl_162_get_hashfunc_02309(MUX,77)@5
    assign i_acl_162_get_hashfunc_02309_s = redist32_i_cmp159_get_hashfunc_026_q_3_q;
    always @(i_acl_162_get_hashfunc_02309_s or i_acl_160_get_hashfunc_02308_q or c_i32_226424_q)
    begin
        unique case (i_acl_162_get_hashfunc_02309_s)
            1'b0 : i_acl_162_get_hashfunc_02309_q = i_acl_160_get_hashfunc_02308_q;
            1'b1 : i_acl_162_get_hashfunc_02309_q = c_i32_226424_q;
            default : i_acl_162_get_hashfunc_02309_q = 32'b0;
        endcase
    end

    // c_i32_671088639390(CONSTANT,31)
    assign c_i32_671088639390_q = $unsigned(32'b11011000000000000000000000000001);

    // i_cmp2_get_hashfunc_025(COMPARE,270)@2
    assign i_cmp2_get_hashfunc_025_a = {2'b00, redist37_i_and_get_hashfunc_023_vt_join_q_1_q};
    assign i_cmp2_get_hashfunc_025_b = {2'b00, c_i32_671088639390_q};
    assign i_cmp2_get_hashfunc_025_o = $unsigned(i_cmp2_get_hashfunc_025_a) - $unsigned(i_cmp2_get_hashfunc_025_b);
    assign i_cmp2_get_hashfunc_025_c[0] = i_cmp2_get_hashfunc_025_o[33];

    // i_not_cmp2_get_hashfunc_02321(LOGICAL,299)@2 + 1
    assign i_not_cmp2_get_hashfunc_02321_qi = i_cmp2_get_hashfunc_025_c ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_not_cmp2_get_hashfunc_02321_delay ( .xin(i_not_cmp2_get_hashfunc_02321_qi), .xout(i_not_cmp2_get_hashfunc_02321_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_67108864398_recast_x(CONSTANT,526)
    assign c_i32_67108864398_recast_x_q = $unsigned(32'b11111100000000000000000000000000);

    // i_unnamed_get_hashfunc_0242(LOGICAL,377)@2
    assign i_unnamed_get_hashfunc_0242_q = $unsigned(i_unnamed_get_hashfunc_0241_vt_join_q == c_i32_67108864398_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_67108864398(CONSTANT,32)
    assign c_i32_67108864398_q = $unsigned(32'b11111100000000000000000000000000);

    // i_cmp89_get_hashfunc_0224(COMPARE,293)@1 + 1
    assign i_cmp89_get_hashfunc_0224_a = {2'b00, c_i32_67108864398_q};
    assign i_cmp89_get_hashfunc_0224_b = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp89_get_hashfunc_0224_o <= 34'b0;
        end
        else
        begin
            i_cmp89_get_hashfunc_0224_o <= $unsigned(i_cmp89_get_hashfunc_0224_a) - $unsigned(i_cmp89_get_hashfunc_0224_b);
        end
    end
    assign i_cmp89_get_hashfunc_0224_c[0] = i_cmp89_get_hashfunc_0224_o[33];

    // i_acl_164_demorgan_get_hashfunc_02310(LOGICAL,78)@2
    assign i_acl_164_demorgan_get_hashfunc_02310_q = i_cmp89_get_hashfunc_0224_c | i_unnamed_get_hashfunc_0242_q;

    // i_acl_164_get_hashfunc_02311(LOGICAL,79)@2
    assign i_acl_164_get_hashfunc_02311_q = i_acl_164_demorgan_get_hashfunc_02310_q ^ VCC_q;

    // c_i32_301989888418_recast_x(CONSTANT,508)
    assign c_i32_301989888418_recast_x_q = $unsigned(32'b11101110000000000000000000000000);

    // i_cmp111_get_hashfunc_0272(LOGICAL,212)@2
    assign i_cmp111_get_hashfunc_0272_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_301989888418_recast_x_q ? 1'b1 : 1'b0);

    // i_notrhs_get_hashfunc_0274(LOGICAL,306)@2
    assign i_notrhs_get_hashfunc_0274_q = i_cmp111_get_hashfunc_0272_q ^ VCC_q;

    // c_i32_234881024407_recast_x(CONSTANT,505)
    assign c_i32_234881024407_recast_x_q = $unsigned(32'b11110010000000000000000000000000);

    // i_cmp109_get_hashfunc_0270(LOGICAL,210)@2
    assign i_cmp109_get_hashfunc_0270_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_234881024407_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond5_not_get_hashfunc_0275(LOGICAL,312)@2
    assign i_or_cond5_not_get_hashfunc_0275_q = i_cmp109_get_hashfunc_0270_q ^ i_notrhs_get_hashfunc_0274_q;

    // i_acl_165_get_hashfunc_02312(LOGICAL,80)@2
    assign i_acl_165_get_hashfunc_02312_q = i_cmp104_get_hashfunc_0244_c | i_or_cond5_not_get_hashfunc_0275_q;

    // c_i32_167772160395_recast_x(CONSTANT,490)
    assign c_i32_167772160395_recast_x_q = $unsigned(32'b11110110000000000000000000000000);

    // i_cmp101_get_hashfunc_0225(LOGICAL,208)@2
    assign i_cmp101_get_hashfunc_0225_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_167772160395_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_166_get_hashfunc_02313(LOGICAL,81)@2
    assign i_acl_166_get_hashfunc_02313_q = i_cmp101_get_hashfunc_0225_q ^ i_acl_165_get_hashfunc_02312_q;

    // i_acl_167_get_hashfunc_02314(MUX,82)@2
    assign i_acl_167_get_hashfunc_02314_s = i_cmp87_get_hashfunc_0214_c;
    always @(i_acl_167_get_hashfunc_02314_s or i_acl_166_get_hashfunc_02313_q or i_acl_164_get_hashfunc_02311_q)
    begin
        unique case (i_acl_167_get_hashfunc_02314_s)
            1'b0 : i_acl_167_get_hashfunc_02314_q = i_acl_166_get_hashfunc_02313_q;
            1'b1 : i_acl_167_get_hashfunc_02314_q = i_acl_164_get_hashfunc_02311_q;
            default : i_acl_167_get_hashfunc_02314_q = 1'b0;
        endcase
    end

    // c_i32_335544320392_recast_x(CONSTANT,510)
    assign c_i32_335544320392_recast_x_q = $unsigned(32'b11101100000000000000000000000000);

    // i_cmp119_get_hashfunc_0215(LOGICAL,213)@2
    assign i_cmp119_get_hashfunc_0215_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_335544320392_recast_x_q ? 1'b1 : 1'b0);

    // i_not_cmp119_get_hashfunc_02318(LOGICAL,297)@2
    assign i_not_cmp119_get_hashfunc_02318_q = i_cmp119_get_hashfunc_0215_q ^ VCC_q;

    // c_i32_469762048420_recast_x(CONSTANT,519)
    assign c_i32_469762048420_recast_x_q = $unsigned(32'b11100100000000000000000000000000);

    // i_cmp131_get_hashfunc_0278(LOGICAL,218)@2
    assign i_cmp131_get_hashfunc_0278_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_469762048420_recast_x_q ? 1'b1 : 1'b0);

    // i_notrhs297_get_hashfunc_0280(LOGICAL,305)@2
    assign i_notrhs297_get_hashfunc_0280_q = i_cmp131_get_hashfunc_0278_q ^ VCC_q;

    // c_i32_402653184408_recast_x(CONSTANT,515)
    assign c_i32_402653184408_recast_x_q = $unsigned(32'b11101000000000000000000000000000);

    // i_cmp129_get_hashfunc_0276(LOGICAL,216)@2
    assign i_cmp129_get_hashfunc_0276_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_402653184408_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond6_not_get_hashfunc_0281(LOGICAL,313)@2
    assign i_or_cond6_not_get_hashfunc_0281_q = i_cmp129_get_hashfunc_0276_q ^ i_notrhs297_get_hashfunc_0280_q;

    // redist35_i_cmp124_get_hashfunc_0245_c_1(DELAY,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_cmp124_get_hashfunc_0245_c_1_q <= '0;
        end
        else
        begin
            redist35_i_cmp124_get_hashfunc_0245_c_1_q <= $unsigned(i_cmp124_get_hashfunc_0245_c);
        end
    end

    // i_acl_168_get_hashfunc_02315(LOGICAL,83)@2
    assign i_acl_168_get_hashfunc_02315_q = redist35_i_cmp124_get_hashfunc_0245_c_1_q | i_or_cond6_not_get_hashfunc_0281_q;

    // c_i32_570425343421(CONSTANT,30)
    assign c_i32_570425343421_q = $unsigned(32'b11011110000000000000000000000001);

    // i_cmp141_get_hashfunc_0282(COMPARE,220)@1 + 1
    assign i_cmp141_get_hashfunc_0282_a = {2'b00, i_and_get_hashfunc_023_vt_join_q};
    assign i_cmp141_get_hashfunc_0282_b = {2'b00, c_i32_570425343421_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp141_get_hashfunc_0282_o <= 34'b0;
        end
        else
        begin
            i_cmp141_get_hashfunc_0282_o <= $unsigned(i_cmp141_get_hashfunc_0282_a) - $unsigned(i_cmp141_get_hashfunc_0282_b);
        end
    end
    assign i_cmp141_get_hashfunc_0282_c[0] = i_cmp141_get_hashfunc_0282_o[33];

    // i_cmp141_not_get_hashfunc_0283(LOGICAL,221)@2
    assign i_cmp141_not_get_hashfunc_0283_q = i_cmp141_get_hashfunc_0282_c ^ VCC_q;

    // c_i32_503316480399_recast_x(CONSTANT,521)
    assign c_i32_503316480399_recast_x_q = $unsigned(32'b11100010000000000000000000000000);

    // i_cmp138_get_hashfunc_0246(LOGICAL,219)@2
    assign i_cmp138_get_hashfunc_0246_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_503316480399_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_169_get_hashfunc_02316(LOGICAL,84)@2
    assign i_acl_169_get_hashfunc_02316_q = i_cmp138_get_hashfunc_0246_q ^ i_cmp141_not_get_hashfunc_0283_q;

    // redist36_i_cmp122_get_hashfunc_0227_c_1(DELAY,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_cmp122_get_hashfunc_0227_c_1_q <= '0;
        end
        else
        begin
            redist36_i_cmp122_get_hashfunc_0227_c_1_q <= $unsigned(i_cmp122_get_hashfunc_0227_c);
        end
    end

    // i_acl_170_get_hashfunc_02317(MUX,86)@2
    assign i_acl_170_get_hashfunc_02317_s = redist36_i_cmp122_get_hashfunc_0227_c_1_q;
    always @(i_acl_170_get_hashfunc_02317_s or i_acl_169_get_hashfunc_02316_q or i_acl_168_get_hashfunc_02315_q)
    begin
        unique case (i_acl_170_get_hashfunc_02317_s)
            1'b0 : i_acl_170_get_hashfunc_02317_q = i_acl_169_get_hashfunc_02316_q;
            1'b1 : i_acl_170_get_hashfunc_02317_q = i_acl_168_get_hashfunc_02315_q;
            default : i_acl_170_get_hashfunc_02317_q = 1'b0;
        endcase
    end

    // i_acl_171_get_hashfunc_02319(LOGICAL,87)@2
    assign i_acl_171_get_hashfunc_02319_q = i_acl_170_get_hashfunc_02317_q & i_not_cmp119_get_hashfunc_02318_q;

    // i_acl_172_get_hashfunc_02320(MUX,88)@2 + 1
    assign i_acl_172_get_hashfunc_02320_s = redist20_i_cmp85_get_hashfunc_0210_c_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_172_get_hashfunc_02320_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_172_get_hashfunc_02320_s)
                1'b0 : i_acl_172_get_hashfunc_02320_q <= i_acl_171_get_hashfunc_02319_q;
                1'b1 : i_acl_172_get_hashfunc_02320_q <= i_acl_167_get_hashfunc_02314_q;
                default : i_acl_172_get_hashfunc_02320_q <= 1'b0;
            endcase
        end
    end

    // i_acl_173_get_hashfunc_02322(LOGICAL,89)@3
    assign i_acl_173_get_hashfunc_02322_q = i_acl_172_get_hashfunc_02320_q & i_not_cmp2_get_hashfunc_02321_q;

    // redist17_i_cmp_get_hashfunc_024_c_2(DELAY,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_cmp_get_hashfunc_024_c_2_q <= '0;
        end
        else
        begin
            redist17_i_cmp_get_hashfunc_024_c_2_q <= $unsigned(i_cmp_get_hashfunc_024_c);
        end
    end

    // i_acl_174_get_hashfunc_02323(LOGICAL,90)@3 + 1
    assign i_acl_174_get_hashfunc_02323_qi = redist17_i_cmp_get_hashfunc_024_c_2_q & i_acl_173_get_hashfunc_02322_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_174_get_hashfunc_02323_delay ( .xin(i_acl_174_get_hashfunc_02323_qi), .xout(i_acl_174_get_hashfunc_02323_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist44_i_acl_174_get_hashfunc_02323_q_2(DELAY,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_acl_174_get_hashfunc_02323_q_2_q <= '0;
        end
        else
        begin
            redist44_i_acl_174_get_hashfunc_02323_q_2_q <= $unsigned(i_acl_174_get_hashfunc_02323_q);
        end
    end

    // i_acl_175_get_hashfunc_02324(MUX,91)@5
    assign i_acl_175_get_hashfunc_02324_s = redist44_i_acl_174_get_hashfunc_02323_q_2_q;
    always @(i_acl_175_get_hashfunc_02324_s or i_acl_162_get_hashfunc_02309_q or i_arg1131_get_hashfunc_02139_q)
    begin
        unique case (i_acl_175_get_hashfunc_02324_s)
            1'b0 : i_acl_175_get_hashfunc_02324_q = i_acl_162_get_hashfunc_02309_q;
            1'b1 : i_acl_175_get_hashfunc_02324_q = i_arg1131_get_hashfunc_02139_q;
            default : i_acl_175_get_hashfunc_02324_q = 32'b0;
        endcase
    end

    // i_acl_180_get_hashfunc_02325(LOGICAL,92)@2 + 1
    assign i_acl_180_get_hashfunc_02325_qi = i_cmp2_get_hashfunc_025_c ^ i_cmp141_get_hashfunc_0282_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_180_get_hashfunc_02325_delay ( .xin(i_acl_180_get_hashfunc_02325_qi), .xout(i_acl_180_get_hashfunc_02325_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_181_get_hashfunc_02326(LOGICAL,93)@3 + 1
    assign i_acl_181_get_hashfunc_02326_qi = redist17_i_cmp_get_hashfunc_024_c_2_q & i_acl_180_get_hashfunc_02325_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_181_get_hashfunc_02326_delay ( .xin(i_acl_181_get_hashfunc_02326_qi), .xout(i_acl_181_get_hashfunc_02326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist43_i_acl_181_get_hashfunc_02326_q_2(DELAY,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_acl_181_get_hashfunc_02326_q_2_q <= '0;
        end
        else
        begin
            redist43_i_acl_181_get_hashfunc_02326_q_2_q <= $unsigned(i_acl_181_get_hashfunc_02326_q);
        end
    end

    // i_acl_182_get_hashfunc_02327(MUX,94)@5
    assign i_acl_182_get_hashfunc_02327_s = redist43_i_acl_181_get_hashfunc_02326_q_2_q;
    always @(i_acl_182_get_hashfunc_02327_s or i_acl_175_get_hashfunc_02324_q or i_arg1_130_get_hashfunc_02145_q)
    begin
        unique case (i_acl_182_get_hashfunc_02327_s)
            1'b0 : i_acl_182_get_hashfunc_02327_q = i_acl_175_get_hashfunc_02324_q;
            1'b1 : i_acl_182_get_hashfunc_02327_q = i_arg1_130_get_hashfunc_02145_q;
            default : i_acl_182_get_hashfunc_02327_q = 32'b0;
        endcase
    end

    // i_not_cmp89_get_hashfunc_02328(LOGICAL,303)@2
    assign i_not_cmp89_get_hashfunc_02328_q = i_cmp89_get_hashfunc_0224_c ^ VCC_q;

    // i_acl_212_get_hashfunc_02329(LOGICAL,96)@2
    assign i_acl_212_get_hashfunc_02329_q = i_unnamed_get_hashfunc_0242_q & i_not_cmp89_get_hashfunc_02328_q;

    // i_acl_213_get_hashfunc_02330(LOGICAL,97)@2
    assign i_acl_213_get_hashfunc_02330_q = i_cmp87_get_hashfunc_0214_c & i_acl_212_get_hashfunc_02329_q;

    // i_reduction_get_hashfunc_02_14_get_hashfunc_02335(LOGICAL,322)@2
    assign i_reduction_get_hashfunc_02_14_get_hashfunc_02335_q = i_acl_213_get_hashfunc_02330_q | i_cmp138_get_hashfunc_0246_q;

    // i_reduction_get_hashfunc_02_12_get_hashfunc_02333(LOGICAL,320)@2
    assign i_reduction_get_hashfunc_02_12_get_hashfunc_02333_q = i_cmp129_get_hashfunc_0276_q | i_cmp131_get_hashfunc_0278_q;

    // i_reduction_get_hashfunc_02_15_get_hashfunc_02336(LOGICAL,323)@2
    assign i_reduction_get_hashfunc_02_15_get_hashfunc_02336_q = i_reduction_get_hashfunc_02_12_get_hashfunc_02333_q | i_reduction_get_hashfunc_02_14_get_hashfunc_02335_q;

    // i_reduction_get_hashfunc_02_11_get_hashfunc_02332(LOGICAL,319)@2
    assign i_reduction_get_hashfunc_02_11_get_hashfunc_02332_q = i_cmp111_get_hashfunc_0272_q | i_cmp119_get_hashfunc_0215_q;

    // i_reduction_get_hashfunc_02_10_get_hashfunc_02331(LOGICAL,318)@2
    assign i_reduction_get_hashfunc_02_10_get_hashfunc_02331_q = i_cmp101_get_hashfunc_0225_q | i_cmp109_get_hashfunc_0270_q;

    // i_reduction_get_hashfunc_02_13_get_hashfunc_02334(LOGICAL,321)@2
    assign i_reduction_get_hashfunc_02_13_get_hashfunc_02334_q = i_reduction_get_hashfunc_02_10_get_hashfunc_02331_q | i_reduction_get_hashfunc_02_11_get_hashfunc_02332_q;

    // i_reduction_get_hashfunc_02_16_get_hashfunc_02337(LOGICAL,324)@2 + 1
    assign i_reduction_get_hashfunc_02_16_get_hashfunc_02337_qi = i_reduction_get_hashfunc_02_13_get_hashfunc_02334_q | i_reduction_get_hashfunc_02_15_get_hashfunc_02336_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_get_hashfunc_02_16_get_hashfunc_02337_delay ( .xin(i_reduction_get_hashfunc_02_16_get_hashfunc_02337_qi), .xout(i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3(DELAY,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_delay_0 <= '0;
            redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_q <= '0;
        end
        else
        begin
            redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_delay_0 <= $unsigned(i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q);
            redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_q <= redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_delay_0;
        end
    end

    // i_acl_217_get_hashfunc_02338(MUX,98)@5
    assign i_acl_217_get_hashfunc_02338_s = redist13_i_reduction_get_hashfunc_02_16_get_hashfunc_02337_q_3_q;
    always @(i_acl_217_get_hashfunc_02338_s or i_acl_182_get_hashfunc_02327_q or c_i32_96405_q)
    begin
        unique case (i_acl_217_get_hashfunc_02338_s)
            1'b0 : i_acl_217_get_hashfunc_02338_q = i_acl_182_get_hashfunc_02327_q;
            1'b1 : i_acl_217_get_hashfunc_02338_q = c_i32_96405_q;
            default : i_acl_217_get_hashfunc_02338_q = 32'b0;
        endcase
    end

    // redist19_i_cmp89_get_hashfunc_0224_c_4(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_cmp89_get_hashfunc_0224_c_4_delay_0 <= '0;
            redist19_i_cmp89_get_hashfunc_0224_c_4_delay_1 <= '0;
            redist19_i_cmp89_get_hashfunc_0224_c_4_q <= '0;
        end
        else
        begin
            redist19_i_cmp89_get_hashfunc_0224_c_4_delay_0 <= $unsigned(i_cmp89_get_hashfunc_0224_c);
            redist19_i_cmp89_get_hashfunc_0224_c_4_delay_1 <= redist19_i_cmp89_get_hashfunc_0224_c_4_delay_0;
            redist19_i_cmp89_get_hashfunc_0224_c_4_q <= redist19_i_cmp89_get_hashfunc_0224_c_4_delay_1;
        end
    end

    // i_acl_222_get_hashfunc_02339(MUX,100)@5
    assign i_acl_222_get_hashfunc_02339_s = redist19_i_cmp89_get_hashfunc_0224_c_4_q;
    always @(i_acl_222_get_hashfunc_02339_s or i_acl_217_get_hashfunc_02338_q or i_arg1_get_hashfunc_0240_q)
    begin
        unique case (i_acl_222_get_hashfunc_02339_s)
            1'b0 : i_acl_222_get_hashfunc_02339_q = i_acl_217_get_hashfunc_02338_q;
            1'b1 : i_acl_222_get_hashfunc_02339_q = i_arg1_get_hashfunc_0240_q;
            default : i_acl_222_get_hashfunc_02339_q = 32'b0;
        endcase
    end

    // c_i32_1006632960394(CONSTANT,7)
    assign c_i32_1006632960394_q = $unsigned(32'b11000100000000000000000000000000);

    // i_cmp6_get_hashfunc_0213(COMPARE,290)@2
    assign i_cmp6_get_hashfunc_0213_a = {2'b00, c_i32_1006632960394_q};
    assign i_cmp6_get_hashfunc_0213_b = {2'b00, redist37_i_and_get_hashfunc_023_vt_join_q_1_q};
    assign i_cmp6_get_hashfunc_0213_o = $unsigned(i_cmp6_get_hashfunc_0213_a) - $unsigned(i_cmp6_get_hashfunc_0213_b);
    assign i_cmp6_get_hashfunc_0213_c[0] = i_cmp6_get_hashfunc_0213_o[33];

    // c_i32_905969664416(CONSTANT,36)
    assign c_i32_905969664416_q = $unsigned(32'b11001010000000000000000000000000);

    // i_cmp24_get_hashfunc_0267(COMPARE,252)@2
    assign i_cmp24_get_hashfunc_0267_a = {2'b00, c_i32_905969664416_q};
    assign i_cmp24_get_hashfunc_0267_b = {2'b00, redist37_i_and_get_hashfunc_023_vt_join_q_1_q};
    assign i_cmp24_get_hashfunc_0267_o = $unsigned(i_cmp24_get_hashfunc_0267_a) - $unsigned(i_cmp24_get_hashfunc_0267_b);
    assign i_cmp24_get_hashfunc_0267_c[0] = i_cmp24_get_hashfunc_0267_o[33];

    // i_acl_225_get_hashfunc_02340(LOGICAL,101)@2
    assign i_acl_225_get_hashfunc_02340_q = i_cmp24_get_hashfunc_0267_c ^ i_cmp6_get_hashfunc_0213_c;

    // i_acl_227_get_hashfunc_02341(LOGICAL,102)@2 + 1
    assign i_acl_227_get_hashfunc_02341_qi = i_cmp2_get_hashfunc_025_c & i_acl_225_get_hashfunc_02340_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_227_get_hashfunc_02341_delay ( .xin(i_acl_227_get_hashfunc_02341_qi), .xout(i_acl_227_get_hashfunc_02341_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist42_i_acl_227_get_hashfunc_02341_q_3(DELAY,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_acl_227_get_hashfunc_02341_q_3_delay_0 <= '0;
            redist42_i_acl_227_get_hashfunc_02341_q_3_q <= '0;
        end
        else
        begin
            redist42_i_acl_227_get_hashfunc_02341_q_3_delay_0 <= $unsigned(i_acl_227_get_hashfunc_02341_q);
            redist42_i_acl_227_get_hashfunc_02341_q_3_q <= redist42_i_acl_227_get_hashfunc_02341_q_3_delay_0;
        end
    end

    // i_acl_229_get_hashfunc_02342(MUX,103)@5 + 1
    assign i_acl_229_get_hashfunc_02342_s = redist42_i_acl_227_get_hashfunc_02341_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_229_get_hashfunc_02342_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_229_get_hashfunc_02342_s)
                1'b0 : i_acl_229_get_hashfunc_02342_q <= i_acl_222_get_hashfunc_02339_q;
                1'b1 : i_acl_229_get_hashfunc_02342_q <= i_unnamed_get_hashfunc_02117_q;
                default : i_acl_229_get_hashfunc_02342_q <= 32'b0;
            endcase
        end
    end

    // c_i32_671088640391_recast_x(CONSTANT,525)
    assign c_i32_671088640391_recast_x_q = $unsigned(32'b11011000000000000000000000000000);

    // i_cmp4_get_hashfunc_028(LOGICAL,285)@2
    assign i_cmp4_get_hashfunc_028_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_671088640391_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1006632960394_recast_x(CONSTANT,470)
    assign c_i32_1006632960394_recast_x_q = $unsigned(32'b11000100000000000000000000000000);

    // i_cmp41_get_hashfunc_0222(LOGICAL,281)@2
    assign i_cmp41_get_hashfunc_0222_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_1006632960394_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_02343(LOGICAL,367)@2
    assign i_unnamed_get_hashfunc_02343_q = i_cmp41_get_hashfunc_0222_q | i_cmp4_get_hashfunc_028_q;

    // c_i32_838860800397_recast_x(CONSTANT,531)
    assign c_i32_838860800397_recast_x_q = $unsigned(32'b11001110000000000000000000000000);

    // i_cmp22_get_hashfunc_0235(LOGICAL,247)@2
    assign i_cmp22_get_hashfunc_0235_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_838860800397_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_get_hashfunc_02344(LOGICAL,368)@2 + 1
    assign i_unnamed_get_hashfunc_02344_qi = i_cmp22_get_hashfunc_0235_q | i_unnamed_get_hashfunc_02343_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_02344_delay ( .xin(i_unnamed_get_hashfunc_02344_qi), .xout(i_unnamed_get_hashfunc_02344_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_unnamed_get_hashfunc_02344_q_4(DELAY,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_unnamed_get_hashfunc_02344_q_4_delay_0 <= '0;
            redist9_i_unnamed_get_hashfunc_02344_q_4_delay_1 <= '0;
            redist9_i_unnamed_get_hashfunc_02344_q_4_q <= '0;
        end
        else
        begin
            redist9_i_unnamed_get_hashfunc_02344_q_4_delay_0 <= $unsigned(i_unnamed_get_hashfunc_02344_q);
            redist9_i_unnamed_get_hashfunc_02344_q_4_delay_1 <= redist9_i_unnamed_get_hashfunc_02344_q_4_delay_0;
            redist9_i_unnamed_get_hashfunc_02344_q_4_q <= redist9_i_unnamed_get_hashfunc_02344_q_4_delay_1;
        end
    end

    // i_acl_243_get_hashfunc_02345(MUX,104)@6
    assign i_acl_243_get_hashfunc_02345_s = redist9_i_unnamed_get_hashfunc_02344_q_4_q;
    always @(i_acl_243_get_hashfunc_02345_s or i_acl_229_get_hashfunc_02342_q or c_i32_95414_q)
    begin
        unique case (i_acl_243_get_hashfunc_02345_s)
            1'b0 : i_acl_243_get_hashfunc_02345_q = i_acl_229_get_hashfunc_02342_q;
            1'b1 : i_acl_243_get_hashfunc_02345_q = c_i32_95414_q;
            default : i_acl_243_get_hashfunc_02345_q = 32'b0;
        endcase
    end

    // c_i32_838860800397(CONSTANT,35)
    assign c_i32_838860800397_q = $unsigned(32'b11001110000000000000000000000000);

    // i_cmp8_get_hashfunc_0221(COMPARE,294)@2
    assign i_cmp8_get_hashfunc_0221_a = {2'b00, c_i32_838860800397_q};
    assign i_cmp8_get_hashfunc_0221_b = {2'b00, redist37_i_and_get_hashfunc_023_vt_join_q_1_q};
    assign i_cmp8_get_hashfunc_0221_o = $unsigned(i_cmp8_get_hashfunc_0221_a) - $unsigned(i_cmp8_get_hashfunc_0221_b);
    assign i_cmp8_get_hashfunc_0221_c[0] = i_cmp8_get_hashfunc_0221_o[33];

    // c_i32_738197504403(CONSTANT,34)
    assign c_i32_738197504403_q = $unsigned(32'b11010100000000000000000000000000);

    // i_cmp10_get_hashfunc_0234(COMPARE,211)@2
    assign i_cmp10_get_hashfunc_0234_a = {2'b00, c_i32_738197504403_q};
    assign i_cmp10_get_hashfunc_0234_b = {2'b00, redist37_i_and_get_hashfunc_023_vt_join_q_1_q};
    assign i_cmp10_get_hashfunc_0234_o = $unsigned(i_cmp10_get_hashfunc_0234_a) - $unsigned(i_cmp10_get_hashfunc_0234_b);
    assign i_cmp10_get_hashfunc_0234_c[0] = i_cmp10_get_hashfunc_0234_o[33];

    // i_acl_244_get_hashfunc_02346(LOGICAL,105)@2
    assign i_acl_244_get_hashfunc_02346_q = i_cmp10_get_hashfunc_0234_c ^ i_cmp8_get_hashfunc_0221_c;

    // i_acl_247_get_hashfunc_02347(LOGICAL,106)@2 + 1
    assign i_acl_247_get_hashfunc_02347_qi = i_cmp2_get_hashfunc_025_c & i_acl_244_get_hashfunc_02346_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_247_get_hashfunc_02347_delay ( .xin(i_acl_247_get_hashfunc_02347_qi), .xout(i_acl_247_get_hashfunc_02347_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_i_acl_247_get_hashfunc_02347_q_4(DELAY,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_acl_247_get_hashfunc_02347_q_4_delay_0 <= '0;
            redist41_i_acl_247_get_hashfunc_02347_q_4_delay_1 <= '0;
            redist41_i_acl_247_get_hashfunc_02347_q_4_q <= '0;
        end
        else
        begin
            redist41_i_acl_247_get_hashfunc_02347_q_4_delay_0 <= $unsigned(i_acl_247_get_hashfunc_02347_q);
            redist41_i_acl_247_get_hashfunc_02347_q_4_delay_1 <= redist41_i_acl_247_get_hashfunc_02347_q_4_delay_0;
            redist41_i_acl_247_get_hashfunc_02347_q_4_q <= redist41_i_acl_247_get_hashfunc_02347_q_4_delay_1;
        end
    end

    // i_acl_249_get_hashfunc_02348(MUX,107)@6
    assign i_acl_249_get_hashfunc_02348_s = redist41_i_acl_247_get_hashfunc_02347_q_4_q;
    always @(i_acl_249_get_hashfunc_02348_s or i_acl_243_get_hashfunc_02345_q or i_unnamed_get_hashfunc_0266_q)
    begin
        unique case (i_acl_249_get_hashfunc_02348_s)
            1'b0 : i_acl_249_get_hashfunc_02348_q = i_acl_243_get_hashfunc_02345_q;
            1'b1 : i_acl_249_get_hashfunc_02348_q = i_unnamed_get_hashfunc_0266_q;
            default : i_acl_249_get_hashfunc_02348_q = 32'b0;
        endcase
    end

    // i_not_cmp4_get_hashfunc_02352(LOGICAL,301)@2
    assign i_not_cmp4_get_hashfunc_02352_q = i_cmp4_get_hashfunc_028_q ^ VCC_q;

    // c_i32_1946157056434_recast_x(CONSTANT,498)
    assign c_i32_1946157056434_recast_x_q = $unsigned(32'b01110100000000000000000000000000);

    // i_cmp57_get_hashfunc_02125(LOGICAL,288)@2
    assign i_cmp57_get_hashfunc_02125_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_1946157056434_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_2013265920417_recast_x(CONSTANT,500)
    assign c_i32_2013265920417_recast_x_q = $unsigned(32'b01111000000000000000000000000000);

    // i_cmp55_get_hashfunc_02123(LOGICAL,287)@2
    assign i_cmp55_get_hashfunc_02123_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_2013265920417_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond3_get_hashfunc_02127(LOGICAL,311)@2
    assign i_or_cond3_get_hashfunc_02127_q = i_cmp55_get_hashfunc_02123_q & i_cmp57_get_hashfunc_02125_q;

    // i_cmp47_get_hashfunc_0268(COMPARE,283)@2
    assign i_cmp47_get_hashfunc_0268_a = $unsigned({{2{c_i32_2013265920417_recast_x_q[31]}}, c_i32_2013265920417_recast_x_q});
    assign i_cmp47_get_hashfunc_0268_b = $unsigned({{2{redist37_i_and_get_hashfunc_023_vt_join_q_1_q[31]}}, redist37_i_and_get_hashfunc_023_vt_join_q_1_q});
    assign i_cmp47_get_hashfunc_0268_o = $unsigned($signed(i_cmp47_get_hashfunc_0268_a) - $signed(i_cmp47_get_hashfunc_0268_b));
    assign i_cmp47_get_hashfunc_0268_c[0] = i_cmp47_get_hashfunc_0268_o[33];

    // i_reduction_get_hashfunc_02_18_get_hashfunc_02350(LOGICAL,326)@2
    assign i_reduction_get_hashfunc_02_18_get_hashfunc_02350_q = i_cmp47_get_hashfunc_0268_c ^ i_or_cond3_get_hashfunc_02127_q;

    // i_reduction_get_hashfunc_02_17_get_hashfunc_02349(LOGICAL,325)@2
    assign i_reduction_get_hashfunc_02_17_get_hashfunc_02349_q = i_cmp6_get_hashfunc_0213_c ^ i_cmp41_get_hashfunc_0222_q;

    // i_reduction_get_hashfunc_02_19_get_hashfunc_02351(LOGICAL,327)@2
    assign i_reduction_get_hashfunc_02_19_get_hashfunc_02351_q = i_reduction_get_hashfunc_02_17_get_hashfunc_02349_q ^ i_reduction_get_hashfunc_02_18_get_hashfunc_02350_q;

    // i_acl_254_get_hashfunc_02353(LOGICAL,108)@2 + 1
    assign i_acl_254_get_hashfunc_02353_qi = i_reduction_get_hashfunc_02_19_get_hashfunc_02351_q & i_not_cmp4_get_hashfunc_02352_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_254_get_hashfunc_02353_delay ( .xin(i_acl_254_get_hashfunc_02353_qi), .xout(i_acl_254_get_hashfunc_02353_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_1912602625472(CONSTANT,17)
    assign c_i32_1912602625472_q = $unsigned(32'b10001101111111111111111111111111);

    // i_and_off334_get_hashfunc_02354(ADD,183)@2
    assign i_and_off334_get_hashfunc_02354_a = {1'b0, redist37_i_and_get_hashfunc_023_vt_join_q_1_q};
    assign i_and_off334_get_hashfunc_02354_b = {1'b0, c_i32_1912602625472_q};
    assign i_and_off334_get_hashfunc_02354_o = $unsigned(i_and_off334_get_hashfunc_02354_a) + $unsigned(i_and_off334_get_hashfunc_02354_b);
    assign i_and_off334_get_hashfunc_02354_q = i_and_off334_get_hashfunc_02354_o[32:0];

    // bgTrunc_i_and_off334_get_hashfunc_02354_sel_x(BITSELECT,467)@2
    assign bgTrunc_i_and_off334_get_hashfunc_02354_sel_x_b = i_and_off334_get_hashfunc_02354_q[31:0];

    // i_and_off334_get_hashfunc_02354_vt_select_31(BITSELECT,186)@2
    assign i_and_off334_get_hashfunc_02354_vt_select_31_b = bgTrunc_i_and_off334_get_hashfunc_02354_sel_x_b[31:25];

    // i_and_off334_get_hashfunc_02354_vt_join(BITJOIN,185)@2
    assign i_and_off334_get_hashfunc_02354_vt_join_q = {i_and_off334_get_hashfunc_02354_vt_select_31_b, i_and_off319_get_hashfunc_02298_vt_const_24_q};

    // i_unnamed_get_hashfunc_02355(COMPARE,369)@2 + 1
    assign i_unnamed_get_hashfunc_02355_a = {2'b00, i_and_off334_get_hashfunc_02354_vt_join_q};
    assign i_unnamed_get_hashfunc_02355_b = {2'b00, c_i32_1711276032446_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_get_hashfunc_02355_o <= 34'b0;
        end
        else
        begin
            i_unnamed_get_hashfunc_02355_o <= $unsigned(i_unnamed_get_hashfunc_02355_a) - $unsigned(i_unnamed_get_hashfunc_02355_b);
        end
    end
    assign i_unnamed_get_hashfunc_02355_c[0] = i_unnamed_get_hashfunc_02355_o[33];

    // i_unnamed_get_hashfunc_02356(LOGICAL,370)@3 + 1
    assign i_unnamed_get_hashfunc_02356_qi = i_unnamed_get_hashfunc_02355_c & i_acl_254_get_hashfunc_02353_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_get_hashfunc_02356_delay ( .xin(i_unnamed_get_hashfunc_02356_qi), .xout(i_unnamed_get_hashfunc_02356_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_unnamed_get_hashfunc_02356_q_3(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_get_hashfunc_02356_q_3_delay_0 <= '0;
            redist8_i_unnamed_get_hashfunc_02356_q_3_q <= '0;
        end
        else
        begin
            redist8_i_unnamed_get_hashfunc_02356_q_3_delay_0 <= $unsigned(i_unnamed_get_hashfunc_02356_q);
            redist8_i_unnamed_get_hashfunc_02356_q_3_q <= redist8_i_unnamed_get_hashfunc_02356_q_3_delay_0;
        end
    end

    // i_acl_257_get_hashfunc_02357(MUX,109)@6
    assign i_acl_257_get_hashfunc_02357_s = redist8_i_unnamed_get_hashfunc_02356_q_3_q;
    always @(i_acl_257_get_hashfunc_02357_s or i_acl_249_get_hashfunc_02348_q or i_arg1129_get_hashfunc_02182_q)
    begin
        unique case (i_acl_257_get_hashfunc_02357_s)
            1'b0 : i_acl_257_get_hashfunc_02357_q = i_acl_249_get_hashfunc_02348_q;
            1'b1 : i_acl_257_get_hashfunc_02357_q = i_arg1129_get_hashfunc_02182_q;
            default : i_acl_257_get_hashfunc_02357_q = 32'b0;
        endcase
    end

    // c_i32_2080374784433_recast_x(CONSTANT,503)
    assign c_i32_2080374784433_recast_x_q = $unsigned(32'b01111100000000000000000000000000);

    // i_cmp51_get_hashfunc_02120(LOGICAL,286)@2
    assign i_cmp51_get_hashfunc_02120_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_2080374784433_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_2046820352432_recast_x(CONSTANT,502)
    assign c_i32_2046820352432_recast_x_q = $unsigned(32'b01111010000000000000000000000000);

    // i_cmp49_get_hashfunc_02118(LOGICAL,284)@2
    assign i_cmp49_get_hashfunc_02118_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q != c_i32_2046820352432_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond2_get_hashfunc_02122(LOGICAL,310)@2
    assign i_or_cond2_get_hashfunc_02122_q = i_cmp49_get_hashfunc_02118_q & i_cmp51_get_hashfunc_02120_q;

    // i_acl_258_get_hashfunc_02358(LOGICAL,110)@2
    assign i_acl_258_get_hashfunc_02358_q = i_cmp47_get_hashfunc_0268_c & i_or_cond2_get_hashfunc_02122_q;

    // c_i32_2113929216404_recast_x(CONSTANT,504)
    assign c_i32_2113929216404_recast_x_q = $unsigned(32'b01111110000000000000000000000000);

    // i_cmp45_get_hashfunc_0237(LOGICAL,282)@2
    assign i_cmp45_get_hashfunc_0237_q = $unsigned(redist37_i_and_get_hashfunc_023_vt_join_q_1_q == c_i32_2113929216404_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_259_get_hashfunc_02359(LOGICAL,111)@2 + 1
    assign i_acl_259_get_hashfunc_02359_qi = i_cmp45_get_hashfunc_0237_q ^ i_acl_258_get_hashfunc_02358_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_259_get_hashfunc_02359_delay ( .xin(i_acl_259_get_hashfunc_02359_qi), .xout(i_acl_259_get_hashfunc_02359_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_i_acl_259_get_hashfunc_02359_q_4(DELAY,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_acl_259_get_hashfunc_02359_q_4_delay_0 <= '0;
            redist40_i_acl_259_get_hashfunc_02359_q_4_delay_1 <= '0;
            redist40_i_acl_259_get_hashfunc_02359_q_4_q <= '0;
        end
        else
        begin
            redist40_i_acl_259_get_hashfunc_02359_q_4_delay_0 <= $unsigned(i_acl_259_get_hashfunc_02359_q);
            redist40_i_acl_259_get_hashfunc_02359_q_4_delay_1 <= redist40_i_acl_259_get_hashfunc_02359_q_4_delay_0;
            redist40_i_acl_259_get_hashfunc_02359_q_4_q <= redist40_i_acl_259_get_hashfunc_02359_q_4_delay_1;
        end
    end

    // i_acl_265_get_hashfunc_02360(MUX,112)@6
    assign i_acl_265_get_hashfunc_02360_s = redist40_i_acl_259_get_hashfunc_02359_q_4_q;
    always @(i_acl_265_get_hashfunc_02360_s or i_acl_257_get_hashfunc_02357_q or redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q)
    begin
        unique case (i_acl_265_get_hashfunc_02360_s)
            1'b0 : i_acl_265_get_hashfunc_02360_q = i_acl_257_get_hashfunc_02357_q;
            1'b1 : i_acl_265_get_hashfunc_02360_q = redist4_sync_together474_aunroll_x_in_c1_eni1_1_tpl_5_q;
            default : i_acl_265_get_hashfunc_02360_q = 32'b0;
        endcase
    end

    // i_acl_266_get_hashfunc_02361(LOGICAL,113)@2
    assign i_acl_266_get_hashfunc_02361_q = i_cmp22_get_hashfunc_0235_q ^ i_cmp24_get_hashfunc_0267_c;

    // i_acl_267_get_hashfunc_02362(LOGICAL,114)@2
    assign i_acl_267_get_hashfunc_02362_q = i_cmp8_get_hashfunc_0221_c ^ i_acl_266_get_hashfunc_02361_q;

    // i_acl_270_get_hashfunc_02363(LOGICAL,115)@2 + 1
    assign i_acl_270_get_hashfunc_02363_qi = i_cmp2_get_hashfunc_025_c & i_acl_267_get_hashfunc_02362_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_270_get_hashfunc_02363_delay ( .xin(i_acl_270_get_hashfunc_02363_qi), .xout(i_acl_270_get_hashfunc_02363_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_i_acl_270_get_hashfunc_02363_q_4(DELAY,596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_acl_270_get_hashfunc_02363_q_4_delay_0 <= '0;
            redist39_i_acl_270_get_hashfunc_02363_q_4_delay_1 <= '0;
            redist39_i_acl_270_get_hashfunc_02363_q_4_q <= '0;
        end
        else
        begin
            redist39_i_acl_270_get_hashfunc_02363_q_4_delay_0 <= $unsigned(i_acl_270_get_hashfunc_02363_q);
            redist39_i_acl_270_get_hashfunc_02363_q_4_delay_1 <= redist39_i_acl_270_get_hashfunc_02363_q_4_delay_0;
            redist39_i_acl_270_get_hashfunc_02363_q_4_q <= redist39_i_acl_270_get_hashfunc_02363_q_4_delay_1;
        end
    end

    // i_acl_272_get_hashfunc_02364(MUX,116)@6
    assign i_acl_272_get_hashfunc_02364_s = redist39_i_acl_270_get_hashfunc_02363_q_4_q;
    always @(i_acl_272_get_hashfunc_02364_s or i_acl_265_get_hashfunc_02360_q or i_arg1127_get_hashfunc_02108_q)
    begin
        unique case (i_acl_272_get_hashfunc_02364_s)
            1'b0 : i_acl_272_get_hashfunc_02364_q = i_acl_265_get_hashfunc_02360_q;
            1'b1 : i_acl_272_get_hashfunc_02364_q = i_arg1127_get_hashfunc_02108_q;
            default : i_acl_272_get_hashfunc_02364_q = 32'b0;
        endcase
    end

    // i_acl_275_get_hashfunc_02365(LOGICAL,117)@2
    assign i_acl_275_get_hashfunc_02365_q = i_cmp4_get_hashfunc_028_q ^ i_cmp10_get_hashfunc_0234_c;

    // i_acl_276_get_hashfunc_02366(LOGICAL,118)@2 + 1
    assign i_acl_276_get_hashfunc_02366_qi = i_cmp2_get_hashfunc_025_c & i_acl_275_get_hashfunc_02365_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_276_get_hashfunc_02366_delay ( .xin(i_acl_276_get_hashfunc_02366_qi), .xout(i_acl_276_get_hashfunc_02366_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_i_acl_276_get_hashfunc_02366_q_4(DELAY,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_acl_276_get_hashfunc_02366_q_4_delay_0 <= '0;
            redist38_i_acl_276_get_hashfunc_02366_q_4_delay_1 <= '0;
            redist38_i_acl_276_get_hashfunc_02366_q_4_q <= '0;
        end
        else
        begin
            redist38_i_acl_276_get_hashfunc_02366_q_4_delay_0 <= $unsigned(i_acl_276_get_hashfunc_02366_q);
            redist38_i_acl_276_get_hashfunc_02366_q_4_delay_1 <= redist38_i_acl_276_get_hashfunc_02366_q_4_delay_0;
            redist38_i_acl_276_get_hashfunc_02366_q_4_q <= redist38_i_acl_276_get_hashfunc_02366_q_4_delay_1;
        end
    end

    // i_acl_278_get_hashfunc_02367(MUX,119)@6
    assign i_acl_278_get_hashfunc_02367_s = redist38_i_acl_276_get_hashfunc_02366_q_4_q;
    always @(i_acl_278_get_hashfunc_02367_s or i_acl_272_get_hashfunc_02364_q or i_arg1_get_hashfunc_0260_q)
    begin
        unique case (i_acl_278_get_hashfunc_02367_s)
            1'b0 : i_acl_278_get_hashfunc_02367_q = i_acl_272_get_hashfunc_02364_q;
            1'b1 : i_acl_278_get_hashfunc_02367_q = i_arg1_get_hashfunc_0260_q;
            default : i_acl_278_get_hashfunc_02367_q = 32'b0;
        endcase
    end

    // i_or_cond9_not_get_hashfunc_02153(LOGICAL,316)@2
    assign i_or_cond9_not_get_hashfunc_02153_q = i_or_cond9_get_hashfunc_02152_q ^ VCC_q;

    // i_acl_279_get_hashfunc_02368(MUX,120)@2
    assign i_acl_279_get_hashfunc_02368_s = i_cmp170_get_hashfunc_0284_c;
    always @(i_acl_279_get_hashfunc_02368_s or i_or_cond9_not_get_hashfunc_02153_q or i_cmp172_get_hashfunc_02146_q)
    begin
        unique case (i_acl_279_get_hashfunc_02368_s)
            1'b0 : i_acl_279_get_hashfunc_02368_q = i_or_cond9_not_get_hashfunc_02153_q;
            1'b1 : i_acl_279_get_hashfunc_02368_q = i_cmp172_get_hashfunc_02146_q;
            default : i_acl_279_get_hashfunc_02368_q = 1'b0;
        endcase
    end

    // i_acl_280_get_hashfunc_02369(MUX,121)@2
    assign i_acl_280_get_hashfunc_02369_s = i_cmp188_get_hashfunc_02154_c;
    always @(i_acl_280_get_hashfunc_02369_s or i_unnamed_get_hashfunc_02188_q or i_cmp190_get_hashfunc_02186_q)
    begin
        unique case (i_acl_280_get_hashfunc_02369_s)
            1'b0 : i_acl_280_get_hashfunc_02369_q = i_unnamed_get_hashfunc_02188_q;
            1'b1 : i_acl_280_get_hashfunc_02369_q = i_cmp190_get_hashfunc_02186_q;
            default : i_acl_280_get_hashfunc_02369_q = 1'b0;
        endcase
    end

    // i_acl_281_get_hashfunc_02370(LOGICAL,122)@2
    assign i_acl_281_get_hashfunc_02370_q = i_cmp186_get_hashfunc_0286_q | i_acl_280_get_hashfunc_02369_q;

    // i_acl_282_get_hashfunc_02371(MUX,123)@2 + 1
    assign i_acl_282_get_hashfunc_02371_s = i_cmp168_get_hashfunc_0248_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_282_get_hashfunc_02371_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_282_get_hashfunc_02371_s)
                1'b0 : i_acl_282_get_hashfunc_02371_q <= i_acl_281_get_hashfunc_02370_q;
                1'b1 : i_acl_282_get_hashfunc_02371_q <= i_acl_279_get_hashfunc_02368_q;
                default : i_acl_282_get_hashfunc_02371_q <= 1'b0;
            endcase
        end
    end

    // redist31_i_cmp166_get_hashfunc_0228_q_1(DELAY,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_cmp166_get_hashfunc_0228_q_1_q <= '0;
        end
        else
        begin
            redist31_i_cmp166_get_hashfunc_0228_q_1_q <= $unsigned(i_cmp166_get_hashfunc_0228_q);
        end
    end

    // i_acl_283_get_hashfunc_02372(LOGICAL,124)@3
    assign i_acl_283_get_hashfunc_02372_q = redist31_i_cmp166_get_hashfunc_0228_q_1_q | i_acl_282_get_hashfunc_02371_q;

    // i_reduction_get_hashfunc_02_21_get_hashfunc_02374(LOGICAL,330)@3
    assign i_reduction_get_hashfunc_02_21_get_hashfunc_02374_q = i_unnamed_get_hashfunc_02285_c & i_acl_283_get_hashfunc_02372_q;

    // i_reduction_get_hashfunc_02_20_get_hashfunc_02373(LOGICAL,329)@3
    assign i_reduction_get_hashfunc_02_20_get_hashfunc_02373_q = i_not_cmp159_get_hashfunc_02286_q & redist16_i_not_cmp_get_hashfunc_02237_q_1_q;

    // i_reduction_get_hashfunc_02_22_get_hashfunc_02375(LOGICAL,331)@3 + 1
    assign i_reduction_get_hashfunc_02_22_get_hashfunc_02375_qi = i_reduction_get_hashfunc_02_20_get_hashfunc_02373_q & i_reduction_get_hashfunc_02_21_get_hashfunc_02374_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_get_hashfunc_02_22_get_hashfunc_02375_delay ( .xin(i_reduction_get_hashfunc_02_22_get_hashfunc_02375_qi), .xout(i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3(DELAY,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_delay_0 <= '0;
            redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_q <= '0;
        end
        else
        begin
            redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_delay_0 <= $unsigned(i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q);
            redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_q <= redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_delay_0;
        end
    end

    // i_acl_288_get_hashfunc_02376(MUX,125)@6 + 1
    assign i_acl_288_get_hashfunc_02376_s = redist12_i_reduction_get_hashfunc_02_22_get_hashfunc_02375_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_288_get_hashfunc_02376_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_288_get_hashfunc_02376_s)
                1'b0 : i_acl_288_get_hashfunc_02376_q <= i_acl_278_get_hashfunc_02367_q;
                1'b1 : i_acl_288_get_hashfunc_02376_q <= c_i32_178450_q;
                default : i_acl_288_get_hashfunc_02376_q <= 32'b0;
            endcase
        end
    end

    // i_acl_289_v_get_hashfunc_02377(MUX,127)@2
    assign i_acl_289_v_get_hashfunc_02377_s = i_cmp47_get_hashfunc_0268_c;
    always @(i_acl_289_v_get_hashfunc_02377_s or i_or_cond3_get_hashfunc_02127_q or i_or_cond2_get_hashfunc_02122_q)
    begin
        unique case (i_acl_289_v_get_hashfunc_02377_s)
            1'b0 : i_acl_289_v_get_hashfunc_02377_q = i_or_cond3_get_hashfunc_02127_q;
            1'b1 : i_acl_289_v_get_hashfunc_02377_q = i_or_cond2_get_hashfunc_02122_q;
            default : i_acl_289_v_get_hashfunc_02377_q = 1'b0;
        endcase
    end

    // i_acl_289_get_hashfunc_02378(LOGICAL,126)@2
    assign i_acl_289_get_hashfunc_02378_q = i_acl_289_v_get_hashfunc_02377_q ^ VCC_q;

    // i_acl_290_get_hashfunc_02379(LOGICAL,129)@2 + 1
    assign i_acl_290_get_hashfunc_02379_qi = i_cmp45_get_hashfunc_0237_q | i_acl_289_get_hashfunc_02378_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_290_get_hashfunc_02379_delay ( .xin(i_acl_290_get_hashfunc_02379_qi), .xout(i_acl_290_get_hashfunc_02379_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_get_hashfunc_02_24_get_hashfunc_02383(LOGICAL,333)@3
    assign i_reduction_get_hashfunc_02_24_get_hashfunc_02383_q = i_unnamed_get_hashfunc_02355_c & i_acl_290_get_hashfunc_02379_q;

    // i_not_cmp6_get_hashfunc_02381(LOGICAL,302)@2
    assign i_not_cmp6_get_hashfunc_02381_q = i_cmp6_get_hashfunc_0213_c ^ VCC_q;

    // i_not_cmp41_get_hashfunc_02380(LOGICAL,300)@2
    assign i_not_cmp41_get_hashfunc_02380_q = i_cmp41_get_hashfunc_0222_q ^ VCC_q;

    // i_reduction_get_hashfunc_02_23_get_hashfunc_02382(LOGICAL,332)@2 + 1
    assign i_reduction_get_hashfunc_02_23_get_hashfunc_02382_qi = i_not_cmp41_get_hashfunc_02380_q & i_not_cmp6_get_hashfunc_02381_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_get_hashfunc_02_23_get_hashfunc_02382_delay ( .xin(i_reduction_get_hashfunc_02_23_get_hashfunc_02382_qi), .xout(i_reduction_get_hashfunc_02_23_get_hashfunc_02382_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_get_hashfunc_02_25_get_hashfunc_02384(LOGICAL,334)@3 + 1
    assign i_reduction_get_hashfunc_02_25_get_hashfunc_02384_qi = i_reduction_get_hashfunc_02_23_get_hashfunc_02382_q & i_reduction_get_hashfunc_02_24_get_hashfunc_02383_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_get_hashfunc_02_25_get_hashfunc_02384_delay ( .xin(i_reduction_get_hashfunc_02_25_get_hashfunc_02384_qi), .xout(i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4(DELAY,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_0 <= '0;
            redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_1 <= '0;
            redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_q <= '0;
        end
        else
        begin
            redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_0 <= $unsigned(i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q);
            redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_1 <= redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_0;
            redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_q <= redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_delay_1;
        end
    end

    // i_acl_296_get_hashfunc_02385(MUX,130)@7
    assign i_acl_296_get_hashfunc_02385_s = redist11_i_reduction_get_hashfunc_02_25_get_hashfunc_02384_q_4_q;
    always @(i_acl_296_get_hashfunc_02385_s or i_acl_288_get_hashfunc_02376_q or c_i32_226424_q)
    begin
        unique case (i_acl_296_get_hashfunc_02385_s)
            1'b0 : i_acl_296_get_hashfunc_02385_q = i_acl_288_get_hashfunc_02376_q;
            1'b1 : i_acl_296_get_hashfunc_02385_q = c_i32_226424_q;
            default : i_acl_296_get_hashfunc_02385_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,548)@7
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_acl_296_get_hashfunc_02385_q;
    assign out_o_valid = redist5_sync_together474_aunroll_x_in_i_valid_6_q;
    assign out_unnamed_get_hashfunc_021 = GND_q;

endmodule
