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

// SystemVerilog created from eia608_from_utf8_i_sfc_logic_s_c1_in_wt_A000000Zer_eia608_from_utf80
// SystemVerilog created on Sun May 24 22:38:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module eia608_from_utf8_i_sfc_logic_s_c1_in_wt_A000000Zer_eia608_from_utf80 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_eia608_from_utf81,
    input wire [0:0] in_c1_eni29_0_tpl,
    input wire [0:0] in_c1_eni29_1_tpl,
    input wire [0:0] in_c1_eni29_2_tpl,
    input wire [0:0] in_c1_eni29_3_tpl,
    input wire [0:0] in_c1_eni29_4_tpl,
    input wire [31:0] in_c1_eni29_5_tpl,
    input wire [0:0] in_c1_eni29_6_tpl,
    input wire [7:0] in_c1_eni29_7_tpl,
    input wire [7:0] in_c1_eni29_8_tpl,
    input wire [0:0] in_c1_eni29_9_tpl,
    input wire [0:0] in_c1_eni29_10_tpl,
    input wire [0:0] in_c1_eni29_11_tpl,
    input wire [0:0] in_c1_eni29_12_tpl,
    input wire [0:0] in_c1_eni29_13_tpl,
    input wire [0:0] in_c1_eni29_14_tpl,
    input wire [0:0] in_c1_eni29_15_tpl,
    input wire [0:0] in_c1_eni29_16_tpl,
    input wire [0:0] in_c1_eni29_17_tpl,
    input wire [0:0] in_c1_eni29_18_tpl,
    input wire [0:0] in_c1_eni29_19_tpl,
    input wire [0:0] in_c1_eni29_20_tpl,
    input wire [0:0] in_c1_eni29_21_tpl,
    input wire [0:0] in_c1_eni29_22_tpl,
    input wire [0:0] in_c1_eni29_23_tpl,
    input wire [0:0] in_c1_eni29_24_tpl,
    input wire [0:0] in_c1_eni29_25_tpl,
    input wire [0:0] in_c1_eni29_26_tpl,
    input wire [0:0] in_c1_eni29_27_tpl,
    input wire [0:0] in_c1_eni29_28_tpl,
    input wire [0:0] in_c1_eni29_29_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0590_q;
    wire [31:0] c_i32_10752702_q;
    wire [31:0] c_i32_23552709_q;
    wire [31:0] c_i32_24064713_q;
    wire [31:0] c_i32_24320718_q;
    wire [31:0] c_i32_24576725_q;
    wire [31:0] c_i32_31488707_q;
    wire [31:0] c_i32_31744722_q;
    wire [31:0] c_i32_32000689_q;
    wire [31:0] c_i32_32256716_q;
    wire [31:0] c_i32_32512629_q;
    wire [31:0] c_i32_4400737_q;
    wire [31:0] c_i32_4401738_q;
    wire [31:0] c_i32_4402740_q;
    wire [31:0] c_i32_4403741_q;
    wire [31:0] c_i32_4404625_q;
    wire [31:0] c_i32_4405730_q;
    wire [31:0] c_i32_4406731_q;
    wire [31:0] c_i32_4407630_q;
    wire [31:0] c_i32_4408701_q;
    wire [31:0] c_i32_4409728_q;
    wire [31:0] c_i32_4410708_q;
    wire [31:0] c_i32_4411703_q;
    wire [31:0] c_i32_4412710_q;
    wire [31:0] c_i32_4413714_q;
    wire [31:0] c_i32_4414719_q;
    wire [31:0] c_i32_4415726_q;
    wire [31:0] c_i32_4640675_q;
    wire [31:0] c_i32_4641682_q;
    wire [31:0] c_i32_4642691_q;
    wire [31:0] c_i32_4643697_q;
    wire [31:0] c_i32_4644699_q;
    wire [31:0] c_i32_4645727_q;
    wire [31:0] c_i32_4646587_q;
    wire [31:0] c_i32_4647729_q;
    wire [31:0] c_i32_4648663_q;
    wire [31:0] c_i32_4649664_q;
    wire [31:0] c_i32_4650665_q;
    wire [31:0] c_i32_4651735_q;
    wire [31:0] c_i32_4652626_q;
    wire [31:0] c_i32_4653669_q;
    wire [31:0] c_i32_4654667_q;
    wire [31:0] c_i32_4655668_q;
    wire [31:0] c_i32_4656674_q;
    wire [31:0] c_i32_4657676_q;
    wire [31:0] c_i32_4658680_q;
    wire [31:0] c_i32_4659681_q;
    wire [31:0] c_i32_4660683_q;
    wire [31:0] c_i32_4661684_q;
    wire [31:0] c_i32_4662711_q;
    wire [31:0] c_i32_4663687_q;
    wire [31:0] c_i32_4664688_q;
    wire [31:0] c_i32_4665715_q;
    wire [31:0] c_i32_4666692_q;
    wire [31:0] c_i32_4667696_q;
    wire [31:0] c_i32_4668724_q;
    wire [31:0] c_i32_4669698_q;
    wire [31:0] c_i32_4670736_q;
    wire [31:0] c_i32_4671739_q;
    wire [31:0] c_i32_4896677_q;
    wire [31:0] c_i32_4897704_q;
    wire [31:0] c_i32_4898686_q;
    wire [31:0] c_i32_4899685_q;
    wire [31:0] c_i32_4900712_q;
    wire [31:0] c_i32_4901690_q;
    wire [31:0] c_i32_4902717_q;
    wire [31:0] c_i32_4903693_q;
    wire [31:0] c_i32_4904720_q;
    wire [31:0] c_i32_4905596_q;
    wire [31:0] c_i32_4906592_q;
    wire [31:0] c_i32_4907662_q;
    wire [31:0] c_i32_4908589_q;
    wire [31:0] c_i32_4909588_q;
    wire [31:0] c_i32_4910595_q;
    wire [31:0] c_i32_4911591_q;
    wire [31:0] c_i32_4912678_q;
    wire [31:0] c_i32_4913705_q;
    wire [31:0] c_i32_4914694_q;
    wire [31:0] c_i32_4915721_q;
    wire [31:0] c_i32_4916700_q;
    wire [31:0] c_i32_4917733_q;
    wire [31:0] c_i32_4918732_q;
    wire [31:0] c_i32_4919734_q;
    wire [31:0] c_i32_4920679_q;
    wire [31:0] c_i32_4921706_q;
    wire [31:0] c_i32_4922695_q;
    wire [31:0] c_i32_4923723_q;
    wire [31:0] c_i32_4924670_q;
    wire [31:0] c_i32_4925671_q;
    wire [31:0] c_i32_4926672_q;
    wire [31:0] c_i32_4927673_q;
    wire [31:0] c_i32_9984666_q;
    wire [0:0] i_acl_1001_eia608_from_utf8495_s;
    reg [31:0] i_acl_1001_eia608_from_utf8495_q;
    wire [0:0] i_acl_1002_eia608_from_utf8496_q;
    wire [0:0] i_acl_1013_eia608_from_utf8500_s;
    reg [31:0] i_acl_1013_eia608_from_utf8500_q;
    wire [0:0] i_acl_1016_eia608_from_utf8501_q;
    wire [0:0] i_acl_1025_eia608_from_utf8505_s;
    reg [31:0] i_acl_1025_eia608_from_utf8505_q;
    wire [0:0] i_acl_1027_eia608_from_utf8506_q;
    wire [0:0] i_acl_1036_eia608_from_utf8510_s;
    reg [31:0] i_acl_1036_eia608_from_utf8510_q;
    wire [0:0] i_acl_1037_eia608_from_utf8511_q;
    wire [0:0] i_acl_1048_eia608_from_utf8515_s;
    reg [31:0] i_acl_1048_eia608_from_utf8515_q;
    wire [0:0] i_acl_1050_eia608_from_utf8516_q;
    wire [0:0] i_acl_1060_eia608_from_utf8520_s;
    reg [31:0] i_acl_1060_eia608_from_utf8520_q;
    wire [0:0] i_acl_1062_eia608_from_utf8521_q;
    wire [0:0] i_acl_1072_eia608_from_utf8525_s;
    reg [31:0] i_acl_1072_eia608_from_utf8525_q;
    wire [0:0] i_acl_1073_eia608_from_utf8526_q;
    wire [0:0] i_acl_1084_eia608_from_utf8530_s;
    reg [31:0] i_acl_1084_eia608_from_utf8530_q;
    wire [0:0] i_acl_1085_eia608_from_utf8531_q;
    wire [0:0] i_acl_1096_eia608_from_utf8535_s;
    reg [31:0] i_acl_1096_eia608_from_utf8535_q;
    wire [0:0] i_acl_1109_eia608_from_utf8538_s;
    reg [31:0] i_acl_1109_eia608_from_utf8538_q;
    wire [0:0] i_acl_1113_eia608_from_utf8539_q;
    wire [0:0] i_acl_1118_eia608_from_utf8540_qi;
    reg [0:0] i_acl_1118_eia608_from_utf8540_q;
    wire [0:0] i_acl_1119_eia608_from_utf8541_s;
    reg [31:0] i_acl_1119_eia608_from_utf8541_q;
    wire [0:0] i_acl_1123_eia608_from_utf8542_q;
    wire [0:0] i_acl_1128_eia608_from_utf8543_qi;
    reg [0:0] i_acl_1128_eia608_from_utf8543_q;
    wire [0:0] i_acl_1129_eia608_from_utf8544_s;
    reg [31:0] i_acl_1129_eia608_from_utf8544_q;
    wire [0:0] i_acl_1133_eia608_from_utf8545_q;
    wire [0:0] i_acl_1138_eia608_from_utf8546_qi;
    reg [0:0] i_acl_1138_eia608_from_utf8546_q;
    wire [0:0] i_acl_1139_eia608_from_utf8547_s;
    reg [31:0] i_acl_1139_eia608_from_utf8547_q;
    wire [0:0] i_acl_1143_eia608_from_utf8548_q;
    wire [0:0] i_acl_1148_eia608_from_utf8549_qi;
    reg [0:0] i_acl_1148_eia608_from_utf8549_q;
    wire [0:0] i_acl_1149_eia608_from_utf8550_s;
    reg [31:0] i_acl_1149_eia608_from_utf8550_q;
    wire [0:0] i_acl_1153_eia608_from_utf8551_q;
    wire [0:0] i_acl_1158_eia608_from_utf8552_qi;
    reg [0:0] i_acl_1158_eia608_from_utf8552_q;
    wire [0:0] i_acl_1159_eia608_from_utf8553_s;
    reg [31:0] i_acl_1159_eia608_from_utf8553_q;
    wire [0:0] i_acl_1160_eia608_from_utf8554_q;
    wire [0:0] i_acl_1163_eia608_from_utf8555_q;
    wire [0:0] i_acl_1168_eia608_from_utf8556_qi;
    reg [0:0] i_acl_1168_eia608_from_utf8556_q;
    wire [0:0] i_acl_1169_eia608_from_utf8557_s;
    reg [31:0] i_acl_1169_eia608_from_utf8557_q;
    wire [0:0] i_acl_1174_eia608_from_utf8558_q;
    wire [0:0] i_acl_1179_eia608_from_utf8559_qi;
    reg [0:0] i_acl_1179_eia608_from_utf8559_q;
    wire [0:0] i_acl_1180_eia608_from_utf8560_s;
    reg [31:0] i_acl_1180_eia608_from_utf8560_q;
    wire [0:0] i_acl_1184_eia608_from_utf8561_q;
    wire [0:0] i_acl_1189_eia608_from_utf8562_qi;
    reg [0:0] i_acl_1189_eia608_from_utf8562_q;
    wire [0:0] i_acl_1190_eia608_from_utf8563_s;
    reg [31:0] i_acl_1190_eia608_from_utf8563_q;
    wire [0:0] i_acl_1195_eia608_from_utf8564_q;
    wire [0:0] i_acl_1200_eia608_from_utf8565_qi;
    reg [0:0] i_acl_1200_eia608_from_utf8565_q;
    wire [0:0] i_acl_1201_eia608_from_utf8566_s;
    reg [31:0] i_acl_1201_eia608_from_utf8566_q;
    wire [0:0] i_acl_1206_eia608_from_utf8567_q;
    wire [0:0] i_acl_1211_eia608_from_utf8568_qi;
    reg [0:0] i_acl_1211_eia608_from_utf8568_q;
    wire [0:0] i_acl_1212_eia608_from_utf8569_s;
    reg [31:0] i_acl_1212_eia608_from_utf8569_q;
    wire [0:0] i_acl_1217_eia608_from_utf8570_q;
    wire [0:0] i_acl_1222_eia608_from_utf8571_qi;
    reg [0:0] i_acl_1222_eia608_from_utf8571_q;
    wire [0:0] i_acl_1223_eia608_from_utf8572_s;
    reg [31:0] i_acl_1223_eia608_from_utf8572_q;
    wire [0:0] i_acl_1228_eia608_from_utf8573_q;
    wire [0:0] i_acl_1233_eia608_from_utf8574_qi;
    reg [0:0] i_acl_1233_eia608_from_utf8574_q;
    wire [0:0] i_acl_1234_eia608_from_utf8575_s;
    reg [31:0] i_acl_1234_eia608_from_utf8575_q;
    wire [0:0] i_acl_1239_eia608_from_utf8576_q;
    wire [0:0] i_acl_1244_eia608_from_utf8577_qi;
    reg [0:0] i_acl_1244_eia608_from_utf8577_q;
    wire [0:0] i_acl_1245_eia608_from_utf8578_s;
    reg [31:0] i_acl_1245_eia608_from_utf8578_q;
    wire [0:0] i_acl_1250_eia608_from_utf8579_qi;
    reg [0:0] i_acl_1250_eia608_from_utf8579_q;
    wire [0:0] i_acl_1255_eia608_from_utf8580_qi;
    reg [0:0] i_acl_1255_eia608_from_utf8580_q;
    wire [0:0] i_acl_1256_eia608_from_utf8581_s;
    reg [31:0] i_acl_1256_eia608_from_utf8581_q;
    wire [0:0] i_acl_1265_eia608_from_utf8582_s;
    reg [31:0] i_acl_1265_eia608_from_utf8582_q;
    wire [0:0] i_acl_1266_eia608_from_utf8583_s;
    reg [31:0] i_acl_1266_eia608_from_utf8583_q;
    wire [0:0] i_acl_126_eia608_from_utf88_s;
    reg [31:0] i_acl_126_eia608_from_utf88_q;
    wire [28:0] i_acl_126_eia608_from_utf88_vt_const_31_q;
    wire [31:0] i_acl_126_eia608_from_utf88_vt_join_q;
    wire [2:0] i_acl_126_eia608_from_utf88_vt_select_2_b;
    wire [0:0] i_acl_1275_eia608_from_utf8584_s;
    reg [31:0] i_acl_1275_eia608_from_utf8584_q;
    wire [0:0] i_acl_127_eia608_from_utf84_s;
    reg [31:0] i_acl_127_eia608_from_utf84_q;
    wire [1:0] i_acl_127_eia608_from_utf84_vt_const_11_q;
    wire [18:0] i_acl_127_eia608_from_utf84_vt_const_31_q;
    wire [31:0] i_acl_127_eia608_from_utf84_vt_join_q;
    wire [0:0] i_acl_221_eia608_from_utf8189_s;
    reg [31:0] i_acl_221_eia608_from_utf8189_q;
    wire [16:0] i_acl_221_eia608_from_utf8189_vt_const_31_q;
    wire [31:0] i_acl_221_eia608_from_utf8189_vt_join_q;
    wire [0:0] i_acl_222_eia608_from_utf8190_q;
    wire [0:0] i_acl_223_eia608_from_utf8191_s;
    reg [0:0] i_acl_223_eia608_from_utf8191_q;
    wire [0:0] i_acl_224_eia608_from_utf8193_q;
    wire [0:0] i_acl_224_v_eia608_from_utf8192_s;
    reg [0:0] i_acl_224_v_eia608_from_utf8192_q;
    wire [0:0] i_acl_225_eia608_from_utf8194_q;
    wire [0:0] i_acl_226_eia608_from_utf8195_s;
    reg [0:0] i_acl_226_eia608_from_utf8195_q;
    wire [0:0] i_acl_227_eia608_from_utf8196_qi;
    reg [0:0] i_acl_227_eia608_from_utf8196_q;
    wire [0:0] i_acl_2301639_eia608_from_utf8202_q;
    wire [0:0] i_acl_236_v_eia608_from_utf8197_s;
    reg [0:0] i_acl_236_v_eia608_from_utf8197_q;
    wire [0:0] i_acl_237_v_eia608_from_utf8198_s;
    reg [0:0] i_acl_237_v_eia608_from_utf8198_q;
    wire [0:0] i_acl_238_eia608_from_utf8200_q;
    wire [0:0] i_acl_238_v_eia608_from_utf8199_s;
    reg [0:0] i_acl_238_v_eia608_from_utf8199_q;
    wire [0:0] i_acl_239_eia608_from_utf8201_qi;
    reg [0:0] i_acl_239_eia608_from_utf8201_q;
    wire [0:0] i_acl_2461638_eia608_from_utf8203_q;
    wire [0:0] i_acl_247_eia608_from_utf8205_s;
    reg [31:0] i_acl_247_eia608_from_utf8205_q;
    wire [31:0] i_acl_247_eia608_from_utf8205_vt_join_q;
    wire [0:0] i_acl_251_eia608_from_utf8206_s;
    reg [31:0] i_acl_251_eia608_from_utf8206_q;
    wire [31:0] i_acl_251_eia608_from_utf8206_vt_join_q;
    wire [0:0] i_acl_255_eia608_from_utf8207_s;
    reg [31:0] i_acl_255_eia608_from_utf8207_q;
    wire [31:0] i_acl_255_eia608_from_utf8207_vt_join_q;
    wire [0:0] i_acl_260_eia608_from_utf8208_s;
    reg [31:0] i_acl_260_eia608_from_utf8208_q;
    wire [0:0] i_acl_266_eia608_from_utf8209_s;
    reg [31:0] i_acl_266_eia608_from_utf8209_q;
    wire [0:0] i_acl_271_eia608_from_utf8210_s;
    reg [31:0] i_acl_271_eia608_from_utf8210_q;
    wire [0:0] i_acl_272_eia608_from_utf8211_q;
    wire [0:0] i_acl_273_eia608_from_utf8212_q;
    wire [0:0] i_acl_275_eia608_from_utf8213_s;
    reg [0:0] i_acl_275_eia608_from_utf8213_q;
    wire [0:0] i_acl_276_v_eia608_from_utf8214_s;
    reg [0:0] i_acl_276_v_eia608_from_utf8214_q;
    wire [0:0] i_acl_277_v_eia608_from_utf8215_s;
    reg [0:0] i_acl_277_v_eia608_from_utf8215_q;
    wire [0:0] i_acl_278_v_eia608_from_utf8216_s;
    reg [0:0] i_acl_278_v_eia608_from_utf8216_q;
    wire [0:0] i_acl_279_v_eia608_from_utf8217_s;
    reg [0:0] i_acl_279_v_eia608_from_utf8217_q;
    wire [0:0] i_acl_280_v_eia608_from_utf8218_s;
    reg [0:0] i_acl_280_v_eia608_from_utf8218_q;
    wire [0:0] i_acl_281_eia608_from_utf8220_q;
    wire [0:0] i_acl_281_v_eia608_from_utf8219_s;
    reg [0:0] i_acl_281_v_eia608_from_utf8219_q;
    wire [0:0] i_acl_282_eia608_from_utf8221_s;
    reg [0:0] i_acl_282_eia608_from_utf8221_q;
    wire [0:0] i_acl_283_eia608_from_utf8222_qi;
    reg [0:0] i_acl_283_eia608_from_utf8222_q;
    wire [0:0] i_acl_290_eia608_from_utf8223_q;
    wire [0:0] i_acl_293_eia608_from_utf8224_q;
    wire [0:0] i_acl_294_eia608_from_utf8225_q;
    wire [0:0] i_acl_295_eia608_from_utf8226_q;
    wire [0:0] i_acl_297_eia608_from_utf8227_q;
    wire [0:0] i_acl_298_eia608_from_utf8228_q;
    wire [0:0] i_acl_299_eia608_from_utf8229_q;
    wire [0:0] i_acl_300_eia608_from_utf8230_s;
    reg [0:0] i_acl_300_eia608_from_utf8230_q;
    wire [0:0] i_acl_301_eia608_from_utf8231_s;
    reg [0:0] i_acl_301_eia608_from_utf8231_q;
    wire [0:0] i_acl_302_eia608_from_utf8232_s;
    reg [0:0] i_acl_302_eia608_from_utf8232_q;
    wire [0:0] i_acl_303_eia608_from_utf8233_q;
    wire [0:0] i_acl_306_eia608_from_utf8234_q;
    wire [0:0] i_acl_307_eia608_from_utf8235_qi;
    reg [0:0] i_acl_307_eia608_from_utf8235_q;
    wire [0:0] i_acl_308_eia608_from_utf8236_q;
    wire [0:0] i_acl_310_eia608_from_utf8237_q;
    wire [0:0] i_acl_313_eia608_from_utf8238_s;
    reg [0:0] i_acl_313_eia608_from_utf8238_q;
    wire [0:0] i_acl_314_eia608_from_utf8239_s;
    reg [0:0] i_acl_314_eia608_from_utf8239_q;
    wire [0:0] i_acl_315_eia608_from_utf8240_s;
    reg [0:0] i_acl_315_eia608_from_utf8240_q;
    wire [0:0] i_acl_347_eia608_from_utf8251_s;
    reg [31:0] i_acl_347_eia608_from_utf8251_q;
    wire [0:0] i_acl_352_eia608_from_utf8252_s;
    reg [31:0] i_acl_352_eia608_from_utf8252_q;
    wire [0:0] i_acl_363_eia608_from_utf8255_s;
    reg [31:0] i_acl_363_eia608_from_utf8255_q;
    wire [0:0] i_acl_364_eia608_from_utf8256_qi;
    reg [0:0] i_acl_364_eia608_from_utf8256_q;
    wire [0:0] i_acl_374_eia608_from_utf8259_s;
    reg [31:0] i_acl_374_eia608_from_utf8259_q;
    wire [0:0] i_acl_386_eia608_from_utf8262_s;
    reg [31:0] i_acl_386_eia608_from_utf8262_q;
    wire [0:0] i_acl_387_eia608_from_utf8263_qi;
    reg [0:0] i_acl_387_eia608_from_utf8263_q;
    wire [0:0] i_acl_396_eia608_from_utf8266_s;
    reg [31:0] i_acl_396_eia608_from_utf8266_q;
    wire [0:0] i_acl_408_eia608_from_utf8269_s;
    reg [31:0] i_acl_408_eia608_from_utf8269_q;
    wire [0:0] i_acl_420_eia608_from_utf8272_s;
    reg [31:0] i_acl_420_eia608_from_utf8272_q;
    wire [0:0] i_acl_431_eia608_from_utf8275_s;
    reg [31:0] i_acl_431_eia608_from_utf8275_q;
    wire [0:0] i_acl_442_eia608_from_utf8278_s;
    reg [31:0] i_acl_442_eia608_from_utf8278_q;
    wire [0:0] i_acl_453_eia608_from_utf8280_s;
    reg [31:0] i_acl_453_eia608_from_utf8280_q;
    wire [0:0] i_acl_464_eia608_from_utf8283_s;
    reg [31:0] i_acl_464_eia608_from_utf8283_q;
    wire [0:0] i_acl_475_eia608_from_utf8287_s;
    reg [31:0] i_acl_475_eia608_from_utf8287_q;
    wire [0:0] i_acl_476_eia608_from_utf8288_q;
    wire [0:0] i_acl_487_eia608_from_utf8293_s;
    reg [31:0] i_acl_487_eia608_from_utf8293_q;
    wire [0:0] i_acl_489_eia608_from_utf8294_qi;
    reg [0:0] i_acl_489_eia608_from_utf8294_q;
    wire [0:0] i_acl_499_eia608_from_utf8298_s;
    reg [31:0] i_acl_499_eia608_from_utf8298_q;
    wire [0:0] i_acl_500_eia608_from_utf8299_qi;
    reg [0:0] i_acl_500_eia608_from_utf8299_q;
    wire [0:0] i_acl_510_eia608_from_utf8303_s;
    reg [31:0] i_acl_510_eia608_from_utf8303_q;
    wire [0:0] i_acl_511_eia608_from_utf8304_qi;
    reg [0:0] i_acl_511_eia608_from_utf8304_q;
    wire [0:0] i_acl_522_eia608_from_utf8308_s;
    reg [31:0] i_acl_522_eia608_from_utf8308_q;
    wire [0:0] i_acl_535_eia608_from_utf8311_s;
    reg [31:0] i_acl_535_eia608_from_utf8311_q;
    wire [0:0] i_acl_537_eia608_from_utf8312_q;
    wire [0:0] i_acl_546_eia608_from_utf8316_s;
    reg [31:0] i_acl_546_eia608_from_utf8316_q;
    wire [0:0] i_acl_547_eia608_from_utf8317_q;
    wire [0:0] i_acl_558_eia608_from_utf8321_s;
    reg [31:0] i_acl_558_eia608_from_utf8321_q;
    wire [0:0] i_acl_560_eia608_from_utf8322_q;
    wire [0:0] i_acl_570_eia608_from_utf8326_s;
    reg [31:0] i_acl_570_eia608_from_utf8326_q;
    wire [0:0] i_acl_572_eia608_from_utf8327_qi;
    reg [0:0] i_acl_572_eia608_from_utf8327_q;
    wire [0:0] i_acl_582_eia608_from_utf8331_s;
    reg [31:0] i_acl_582_eia608_from_utf8331_q;
    wire [0:0] i_acl_583_eia608_from_utf8332_qi;
    reg [0:0] i_acl_583_eia608_from_utf8332_q;
    wire [0:0] i_acl_594_eia608_from_utf8336_s;
    reg [31:0] i_acl_594_eia608_from_utf8336_q;
    wire [0:0] i_acl_595_eia608_from_utf8337_qi;
    reg [0:0] i_acl_595_eia608_from_utf8337_q;
    wire [0:0] i_acl_606_eia608_from_utf8341_s;
    reg [31:0] i_acl_606_eia608_from_utf8341_q;
    wire [0:0] i_acl_610_eia608_from_utf8342_qi;
    reg [0:0] i_acl_610_eia608_from_utf8342_q;
    wire [0:0] i_acl_618_eia608_from_utf8346_s;
    reg [31:0] i_acl_618_eia608_from_utf8346_q;
    wire [0:0] i_acl_621_eia608_from_utf8347_qi;
    reg [0:0] i_acl_621_eia608_from_utf8347_q;
    wire [0:0] i_acl_629_eia608_from_utf8351_s;
    reg [31:0] i_acl_629_eia608_from_utf8351_q;
    wire [0:0] i_acl_642_eia608_from_utf8354_s;
    reg [31:0] i_acl_642_eia608_from_utf8354_q;
    wire [0:0] i_acl_644_eia608_from_utf8355_q;
    wire [0:0] i_acl_654_eia608_from_utf8359_s;
    reg [31:0] i_acl_654_eia608_from_utf8359_q;
    wire [0:0] i_acl_656_eia608_from_utf8360_qi;
    reg [0:0] i_acl_656_eia608_from_utf8360_q;
    wire [0:0] i_acl_666_eia608_from_utf8364_s;
    reg [31:0] i_acl_666_eia608_from_utf8364_q;
    wire [0:0] i_acl_667_eia608_from_utf8365_qi;
    reg [0:0] i_acl_667_eia608_from_utf8365_q;
    wire [0:0] i_acl_678_eia608_from_utf8369_s;
    reg [31:0] i_acl_678_eia608_from_utf8369_q;
    wire [0:0] i_acl_679_eia608_from_utf8370_qi;
    reg [0:0] i_acl_679_eia608_from_utf8370_q;
    wire [0:0] i_acl_690_eia608_from_utf8374_s;
    reg [31:0] i_acl_690_eia608_from_utf8374_q;
    wire [0:0] i_acl_693_eia608_from_utf8375_qi;
    reg [0:0] i_acl_693_eia608_from_utf8375_q;
    wire [0:0] i_acl_702_eia608_from_utf8379_s;
    reg [31:0] i_acl_702_eia608_from_utf8379_q;
    wire [0:0] i_acl_714_eia608_from_utf8382_s;
    reg [31:0] i_acl_714_eia608_from_utf8382_q;
    wire [0:0] i_acl_726_eia608_from_utf8386_s;
    reg [31:0] i_acl_726_eia608_from_utf8386_q;
    wire [0:0] i_acl_728_eia608_from_utf8387_qi;
    reg [0:0] i_acl_728_eia608_from_utf8387_q;
    wire [0:0] i_acl_738_eia608_from_utf8391_s;
    reg [31:0] i_acl_738_eia608_from_utf8391_q;
    wire [0:0] i_acl_740_eia608_from_utf8392_qi;
    reg [0:0] i_acl_740_eia608_from_utf8392_q;
    wire [0:0] i_acl_750_eia608_from_utf8396_s;
    reg [31:0] i_acl_750_eia608_from_utf8396_q;
    wire [0:0] i_acl_751_eia608_from_utf8397_qi;
    reg [0:0] i_acl_751_eia608_from_utf8397_q;
    wire [0:0] i_acl_762_eia608_from_utf8401_s;
    reg [31:0] i_acl_762_eia608_from_utf8401_q;
    wire [0:0] i_acl_775_eia608_from_utf8404_s;
    reg [31:0] i_acl_775_eia608_from_utf8404_q;
    wire [0:0] i_acl_780_eia608_from_utf8405_q;
    wire [0:0] i_acl_787_eia608_from_utf8409_s;
    reg [31:0] i_acl_787_eia608_from_utf8409_q;
    wire [0:0] i_acl_791_eia608_from_utf8410_q;
    wire [0:0] i_acl_798_eia608_from_utf8414_s;
    reg [31:0] i_acl_798_eia608_from_utf8414_q;
    wire [0:0] i_acl_799_eia608_from_utf8415_q;
    wire [0:0] i_acl_810_eia608_from_utf8419_s;
    reg [31:0] i_acl_810_eia608_from_utf8419_q;
    wire [0:0] i_acl_812_eia608_from_utf8420_q;
    wire [0:0] i_acl_822_eia608_from_utf8424_s;
    reg [31:0] i_acl_822_eia608_from_utf8424_q;
    wire [0:0] i_acl_823_eia608_from_utf8425_q;
    wire [0:0] i_acl_833_eia608_from_utf8429_s;
    reg [31:0] i_acl_833_eia608_from_utf8429_q;
    wire [0:0] i_acl_834_eia608_from_utf8430_q;
    wire [0:0] i_acl_845_eia608_from_utf8434_s;
    reg [31:0] i_acl_845_eia608_from_utf8434_q;
    wire [0:0] i_acl_858_eia608_from_utf8437_s;
    reg [31:0] i_acl_858_eia608_from_utf8437_q;
    wire [0:0] i_acl_860_eia608_from_utf8438_q;
    wire [0:0] i_acl_869_eia608_from_utf8442_s;
    reg [31:0] i_acl_869_eia608_from_utf8442_q;
    wire [0:0] i_acl_870_eia608_from_utf8443_q;
    wire [0:0] i_acl_881_eia608_from_utf8447_s;
    reg [31:0] i_acl_881_eia608_from_utf8447_q;
    wire [0:0] i_acl_883_eia608_from_utf8448_q;
    wire [0:0] i_acl_893_eia608_from_utf8452_s;
    reg [31:0] i_acl_893_eia608_from_utf8452_q;
    wire [0:0] i_acl_895_eia608_from_utf8453_q;
    wire [0:0] i_acl_905_eia608_from_utf8457_s;
    reg [31:0] i_acl_905_eia608_from_utf8457_q;
    wire [0:0] i_acl_906_eia608_from_utf8458_q;
    wire [0:0] i_acl_917_eia608_from_utf8462_s;
    reg [31:0] i_acl_917_eia608_from_utf8462_q;
    wire [0:0] i_acl_918_eia608_from_utf8463_q;
    wire [0:0] i_acl_929_eia608_from_utf8467_s;
    reg [31:0] i_acl_929_eia608_from_utf8467_q;
    wire [0:0] i_acl_933_eia608_from_utf8468_q;
    wire [0:0] i_acl_941_eia608_from_utf8472_s;
    reg [31:0] i_acl_941_eia608_from_utf8472_q;
    wire [0:0] i_acl_944_eia608_from_utf8473_q;
    wire [0:0] i_acl_952_eia608_from_utf8477_s;
    reg [31:0] i_acl_952_eia608_from_utf8477_q;
    wire [0:0] i_acl_965_eia608_from_utf8480_s;
    reg [31:0] i_acl_965_eia608_from_utf8480_q;
    wire [0:0] i_acl_967_eia608_from_utf8481_q;
    wire [0:0] i_acl_977_eia608_from_utf8485_s;
    reg [31:0] i_acl_977_eia608_from_utf8485_q;
    wire [0:0] i_acl_979_eia608_from_utf8486_q;
    wire [0:0] i_acl_989_eia608_from_utf8490_s;
    reg [31:0] i_acl_989_eia608_from_utf8490_q;
    wire [0:0] i_acl_990_eia608_from_utf8491_q;
    wire [0:0] i_acl_eia608_from_utf82_s;
    reg [31:0] i_acl_eia608_from_utf82_q;
    wire [22:0] i_acl_eia608_from_utf82_vt_const_31_q;
    wire [3:0] i_acl_eia608_from_utf82_vt_const_7_q;
    wire [31:0] i_acl_eia608_from_utf82_vt_join_q;
    wire [15:0] i_and_eia608_from_utf87_vt_const_31_q;
    wire [7:0] i_and_eia608_from_utf87_vt_const_7_q;
    wire [31:0] i_and_eia608_from_utf87_vt_join_q;
    wire [7:0] i_and_eia608_from_utf87_vt_select_15_b;
    wire [0:0] i_cmp259_eia608_from_utf869_q;
    wire [0:0] i_cmp271_eia608_from_utf875_q;
    wire [0:0] i_cmp276_eia608_from_utf878_qi;
    reg [0:0] i_cmp276_eia608_from_utf878_q;
    wire [0:0] i_cmp75_eia608_from_utf89_qi;
    reg [0:0] i_cmp75_eia608_from_utf89_q;
    wire [0:0] i_not_cmp71_eia608_from_utf8242_q;
    wire [0:0] i_not_cmp75_eia608_from_utf8241_q;
    wire [9:0] i_pivot101_eia608_from_utf819_a;
    wire [9:0] i_pivot101_eia608_from_utf819_b;
    logic [9:0] i_pivot101_eia608_from_utf819_o;
    wire [0:0] i_pivot101_eia608_from_utf819_c;
    wire [9:0] i_pivot10_eia608_from_utf825_a;
    wire [9:0] i_pivot10_eia608_from_utf825_b;
    logic [9:0] i_pivot10_eia608_from_utf825_o;
    wire [0:0] i_pivot10_eia608_from_utf825_c;
    wire [9:0] i_pivot117_eia608_from_utf8108_a;
    wire [9:0] i_pivot117_eia608_from_utf8108_b;
    logic [9:0] i_pivot117_eia608_from_utf8108_o;
    wire [0:0] i_pivot117_eia608_from_utf8108_c;
    wire [9:0] i_pivot121_eia608_from_utf8146_a;
    wire [9:0] i_pivot121_eia608_from_utf8146_b;
    logic [9:0] i_pivot121_eia608_from_utf8146_o;
    wire [0:0] i_pivot121_eia608_from_utf8146_c;
    wire [9:0] i_pivot123_eia608_from_utf8110_a;
    wire [9:0] i_pivot123_eia608_from_utf8110_b;
    logic [9:0] i_pivot123_eia608_from_utf8110_o;
    wire [0:0] i_pivot123_eia608_from_utf8110_c;
    wire [9:0] i_pivot125_eia608_from_utf861_a;
    wire [9:0] i_pivot125_eia608_from_utf861_b;
    logic [9:0] i_pivot125_eia608_from_utf861_o;
    wire [0:0] i_pivot125_eia608_from_utf861_c;
    wire [9:0] i_pivot127_eia608_from_utf835_a;
    wire [9:0] i_pivot127_eia608_from_utf835_b;
    logic [9:0] i_pivot127_eia608_from_utf835_o;
    wire [0:0] i_pivot127_eia608_from_utf835_c;
    wire [9:0] i_pivot12_eia608_from_utf815_a;
    wire [9:0] i_pivot12_eia608_from_utf815_b;
    logic [9:0] i_pivot12_eia608_from_utf815_o;
    wire [0:0] i_pivot12_eia608_from_utf815_c;
    wire [9:0] i_pivot131_eia608_from_utf8148_a;
    wire [9:0] i_pivot131_eia608_from_utf8148_b;
    logic [9:0] i_pivot131_eia608_from_utf8148_o;
    wire [0:0] i_pivot131_eia608_from_utf8148_c;
    wire [9:0] i_pivot133_eia608_from_utf8112_a;
    wire [9:0] i_pivot133_eia608_from_utf8112_b;
    logic [9:0] i_pivot133_eia608_from_utf8112_o;
    wire [0:0] i_pivot133_eia608_from_utf8112_c;
    wire [9:0] i_pivot135_eia608_from_utf8150_a;
    wire [9:0] i_pivot135_eia608_from_utf8150_b;
    logic [9:0] i_pivot135_eia608_from_utf8150_o;
    wire [0:0] i_pivot135_eia608_from_utf8150_c;
    wire [9:0] i_pivot137_eia608_from_utf8152_a;
    wire [9:0] i_pivot137_eia608_from_utf8152_b;
    logic [9:0] i_pivot137_eia608_from_utf8152_o;
    wire [0:0] i_pivot137_eia608_from_utf8152_c;
    wire [9:0] i_pivot139_eia608_from_utf8114_a;
    wire [9:0] i_pivot139_eia608_from_utf8114_b;
    logic [9:0] i_pivot139_eia608_from_utf8114_o;
    wire [0:0] i_pivot139_eia608_from_utf8114_c;
    wire [9:0] i_pivot141_eia608_from_utf863_a;
    wire [9:0] i_pivot141_eia608_from_utf863_b;
    logic [9:0] i_pivot141_eia608_from_utf863_o;
    wire [0:0] i_pivot141_eia608_from_utf863_c;
    wire [9:0] i_pivot143_eia608_from_utf8154_a;
    wire [9:0] i_pivot143_eia608_from_utf8154_b;
    logic [9:0] i_pivot143_eia608_from_utf8154_o;
    wire [0:0] i_pivot143_eia608_from_utf8154_c;
    wire [9:0] i_pivot145_eia608_from_utf8116_a;
    wire [9:0] i_pivot145_eia608_from_utf8116_b;
    logic [9:0] i_pivot145_eia608_from_utf8116_o;
    wire [0:0] i_pivot145_eia608_from_utf8116_c;
    wire [9:0] i_pivot147_eia608_from_utf8156_a;
    wire [9:0] i_pivot147_eia608_from_utf8156_b;
    logic [9:0] i_pivot147_eia608_from_utf8156_o;
    wire [0:0] i_pivot147_eia608_from_utf8156_c;
    wire [9:0] i_pivot151_eia608_from_utf8158_a;
    wire [9:0] i_pivot151_eia608_from_utf8158_b;
    logic [9:0] i_pivot151_eia608_from_utf8158_o;
    wire [0:0] i_pivot151_eia608_from_utf8158_c;
    wire [9:0] i_pivot155_eia608_from_utf865_a;
    wire [9:0] i_pivot155_eia608_from_utf865_b;
    logic [9:0] i_pivot155_eia608_from_utf865_o;
    wire [0:0] i_pivot155_eia608_from_utf865_c;
    wire [9:0] i_pivot157_eia608_from_utf837_a;
    wire [9:0] i_pivot157_eia608_from_utf837_b;
    logic [9:0] i_pivot157_eia608_from_utf837_o;
    wire [0:0] i_pivot157_eia608_from_utf837_c;
    wire [9:0] i_pivot159_eia608_from_utf821_a;
    wire [9:0] i_pivot159_eia608_from_utf821_b;
    logic [9:0] i_pivot159_eia608_from_utf821_o;
    wire [0:0] i_pivot159_eia608_from_utf821_c;
    wire [9:0] i_pivot161_eia608_from_utf813_a;
    wire [9:0] i_pivot161_eia608_from_utf813_b;
    logic [9:0] i_pivot161_eia608_from_utf813_o;
    wire [0:0] i_pivot161_eia608_from_utf813_c;
    wire [9:0] i_pivot197_eia608_from_utf8118_a;
    wire [9:0] i_pivot197_eia608_from_utf8118_b;
    logic [9:0] i_pivot197_eia608_from_utf8118_o;
    wire [0:0] i_pivot197_eia608_from_utf8118_c;
    wire [9:0] i_pivot199_eia608_from_utf867_a;
    wire [9:0] i_pivot199_eia608_from_utf867_b;
    logic [9:0] i_pivot199_eia608_from_utf867_o;
    wire [0:0] i_pivot199_eia608_from_utf867_c;
    wire [9:0] i_pivot206_eia608_from_utf8120_a;
    wire [9:0] i_pivot206_eia608_from_utf8120_b;
    logic [9:0] i_pivot206_eia608_from_utf8120_o;
    wire [0:0] i_pivot206_eia608_from_utf8120_c;
    wire [9:0] i_pivot214_eia608_from_utf873_a;
    wire [9:0] i_pivot214_eia608_from_utf873_b;
    logic [9:0] i_pivot214_eia608_from_utf873_o;
    wire [0:0] i_pivot214_eia608_from_utf873_c;
    wire [9:0] i_pivot22_eia608_from_utf827_a;
    wire [9:0] i_pivot22_eia608_from_utf827_b;
    logic [9:0] i_pivot22_eia608_from_utf827_o;
    wire [0:0] i_pivot22_eia608_from_utf827_c;
    wire [9:0] i_pivot28_eia608_from_utf849_a;
    wire [9:0] i_pivot28_eia608_from_utf849_b;
    logic [9:0] i_pivot28_eia608_from_utf849_o;
    wire [0:0] i_pivot28_eia608_from_utf849_c;
    wire [9:0] i_pivot2_eia608_from_utf823_a;
    wire [9:0] i_pivot2_eia608_from_utf823_b;
    logic [9:0] i_pivot2_eia608_from_utf823_o;
    wire [0:0] i_pivot2_eia608_from_utf823_c;
    wire [9:0] i_pivot34_eia608_from_utf851_a;
    wire [9:0] i_pivot34_eia608_from_utf851_b;
    logic [9:0] i_pivot34_eia608_from_utf851_o;
    wire [0:0] i_pivot34_eia608_from_utf851_c;
    wire [9:0] i_pivot36_eia608_from_utf829_a;
    wire [9:0] i_pivot36_eia608_from_utf829_b;
    logic [9:0] i_pivot36_eia608_from_utf829_o;
    wire [0:0] i_pivot36_eia608_from_utf829_c;
    wire [9:0] i_pivot38_eia608_from_utf817_a;
    wire [9:0] i_pivot38_eia608_from_utf817_b;
    logic [9:0] i_pivot38_eia608_from_utf817_o;
    wire [0:0] i_pivot38_eia608_from_utf817_c;
    wire [9:0] i_pivot40_eia608_from_utf811_a;
    wire [9:0] i_pivot40_eia608_from_utf811_b;
    logic [9:0] i_pivot40_eia608_from_utf811_o;
    wire [0:0] i_pivot40_eia608_from_utf811_c;
    wire [9:0] i_pivot43_eia608_from_utf8122_a;
    wire [9:0] i_pivot43_eia608_from_utf8122_b;
    logic [9:0] i_pivot43_eia608_from_utf8122_o;
    wire [0:0] i_pivot43_eia608_from_utf8122_c;
    wire [0:0] i_pivot45_eia608_from_utf896_q;
    wire [9:0] i_pivot49_eia608_from_utf8124_a;
    wire [9:0] i_pivot49_eia608_from_utf8124_b;
    logic [9:0] i_pivot49_eia608_from_utf8124_o;
    wire [0:0] i_pivot49_eia608_from_utf8124_c;
    wire [9:0] i_pivot4_eia608_from_utf843_a;
    wire [9:0] i_pivot4_eia608_from_utf843_b;
    logic [9:0] i_pivot4_eia608_from_utf843_o;
    wire [0:0] i_pivot4_eia608_from_utf843_c;
    wire [9:0] i_pivot51_eia608_from_utf898_a;
    wire [9:0] i_pivot51_eia608_from_utf898_b;
    logic [9:0] i_pivot51_eia608_from_utf898_o;
    wire [0:0] i_pivot51_eia608_from_utf898_c;
    wire [9:0] i_pivot53_eia608_from_utf853_a;
    wire [9:0] i_pivot53_eia608_from_utf853_b;
    logic [9:0] i_pivot53_eia608_from_utf853_o;
    wire [0:0] i_pivot53_eia608_from_utf853_c;
    wire [9:0] i_pivot55_eia608_from_utf8126_a;
    wire [9:0] i_pivot55_eia608_from_utf8126_b;
    logic [9:0] i_pivot55_eia608_from_utf8126_o;
    wire [0:0] i_pivot55_eia608_from_utf8126_c;
    wire [9:0] i_pivot57_eia608_from_utf8100_a;
    wire [9:0] i_pivot57_eia608_from_utf8100_b;
    logic [9:0] i_pivot57_eia608_from_utf8100_o;
    wire [0:0] i_pivot57_eia608_from_utf8100_c;
    wire [9:0] i_pivot59_eia608_from_utf8128_a;
    wire [9:0] i_pivot59_eia608_from_utf8128_b;
    logic [9:0] i_pivot59_eia608_from_utf8128_o;
    wire [0:0] i_pivot59_eia608_from_utf8128_c;
    wire [9:0] i_pivot61_eia608_from_utf8130_a;
    wire [9:0] i_pivot61_eia608_from_utf8130_b;
    logic [9:0] i_pivot61_eia608_from_utf8130_o;
    wire [0:0] i_pivot61_eia608_from_utf8130_c;
    wire [9:0] i_pivot63_eia608_from_utf8102_a;
    wire [9:0] i_pivot63_eia608_from_utf8102_b;
    logic [9:0] i_pivot63_eia608_from_utf8102_o;
    wire [0:0] i_pivot63_eia608_from_utf8102_c;
    wire [9:0] i_pivot65_eia608_from_utf855_a;
    wire [9:0] i_pivot65_eia608_from_utf855_b;
    logic [9:0] i_pivot65_eia608_from_utf855_o;
    wire [0:0] i_pivot65_eia608_from_utf855_c;
    wire [9:0] i_pivot67_eia608_from_utf831_a;
    wire [9:0] i_pivot67_eia608_from_utf831_b;
    logic [9:0] i_pivot67_eia608_from_utf831_o;
    wire [0:0] i_pivot67_eia608_from_utf831_c;
    wire [9:0] i_pivot71_eia608_from_utf8132_a;
    wire [9:0] i_pivot71_eia608_from_utf8132_b;
    logic [9:0] i_pivot71_eia608_from_utf8132_o;
    wire [0:0] i_pivot71_eia608_from_utf8132_c;
    wire [9:0] i_pivot73_eia608_from_utf8104_a;
    wire [9:0] i_pivot73_eia608_from_utf8104_b;
    logic [9:0] i_pivot73_eia608_from_utf8104_o;
    wire [0:0] i_pivot73_eia608_from_utf8104_c;
    wire [9:0] i_pivot75_eia608_from_utf8134_a;
    wire [9:0] i_pivot75_eia608_from_utf8134_b;
    logic [9:0] i_pivot75_eia608_from_utf8134_o;
    wire [0:0] i_pivot75_eia608_from_utf8134_c;
    wire [9:0] i_pivot77_eia608_from_utf8136_a;
    wire [9:0] i_pivot77_eia608_from_utf8136_b;
    logic [9:0] i_pivot77_eia608_from_utf8136_o;
    wire [0:0] i_pivot77_eia608_from_utf8136_c;
    wire [9:0] i_pivot81_eia608_from_utf857_a;
    wire [9:0] i_pivot81_eia608_from_utf857_b;
    logic [9:0] i_pivot81_eia608_from_utf857_o;
    wire [0:0] i_pivot81_eia608_from_utf857_c;
    wire [9:0] i_pivot85_eia608_from_utf8140_a;
    wire [9:0] i_pivot85_eia608_from_utf8140_b;
    logic [9:0] i_pivot85_eia608_from_utf8140_o;
    wire [0:0] i_pivot85_eia608_from_utf8140_c;
    wire [9:0] i_pivot87_eia608_from_utf8106_a;
    wire [9:0] i_pivot87_eia608_from_utf8106_b;
    logic [9:0] i_pivot87_eia608_from_utf8106_o;
    wire [0:0] i_pivot87_eia608_from_utf8106_c;
    wire [9:0] i_pivot89_eia608_from_utf8142_a;
    wire [9:0] i_pivot89_eia608_from_utf8142_b;
    logic [9:0] i_pivot89_eia608_from_utf8142_o;
    wire [0:0] i_pivot89_eia608_from_utf8142_c;
    wire [9:0] i_pivot8_eia608_from_utf845_a;
    wire [9:0] i_pivot8_eia608_from_utf845_b;
    logic [9:0] i_pivot8_eia608_from_utf845_o;
    wire [0:0] i_pivot8_eia608_from_utf845_c;
    wire [9:0] i_pivot93_eia608_from_utf8144_a;
    wire [9:0] i_pivot93_eia608_from_utf8144_b;
    logic [9:0] i_pivot93_eia608_from_utf8144_o;
    wire [0:0] i_pivot93_eia608_from_utf8144_c;
    wire [9:0] i_pivot97_eia608_from_utf859_a;
    wire [9:0] i_pivot97_eia608_from_utf859_b;
    logic [9:0] i_pivot97_eia608_from_utf859_o;
    wire [0:0] i_pivot97_eia608_from_utf859_c;
    wire [9:0] i_pivot99_eia608_from_utf833_a;
    wire [9:0] i_pivot99_eia608_from_utf833_b;
    logic [9:0] i_pivot99_eia608_from_utf833_o;
    wire [0:0] i_pivot99_eia608_from_utf833_c;
    wire [9:0] i_pivot_eia608_from_utf841_a;
    wire [9:0] i_pivot_eia608_from_utf841_b;
    logic [9:0] i_pivot_eia608_from_utf841_o;
    wire [0:0] i_pivot_eia608_from_utf841_c;
    wire [0:0] i_reduction_eia608_from_utf8_100_eia608_from_utf8352_q;
    wire [0:0] i_reduction_eia608_from_utf8_102_eia608_from_utf8353_qi;
    reg [0:0] i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q;
    wire [0:0] i_reduction_eia608_from_utf8_103_eia608_from_utf8356_qi;
    reg [0:0] i_reduction_eia608_from_utf8_103_eia608_from_utf8356_q;
    wire [0:0] i_reduction_eia608_from_utf8_105_eia608_from_utf8357_q;
    wire [0:0] i_reduction_eia608_from_utf8_106_eia608_from_utf8358_q;
    wire [0:0] i_reduction_eia608_from_utf8_107_eia608_from_utf8361_q;
    wire [0:0] i_reduction_eia608_from_utf8_109_eia608_from_utf8362_q;
    wire [0:0] i_reduction_eia608_from_utf8_10_eia608_from_utf8247_q;
    wire [0:0] i_reduction_eia608_from_utf8_110_eia608_from_utf8363_q;
    wire [0:0] i_reduction_eia608_from_utf8_111_eia608_from_utf8366_q;
    wire [0:0] i_reduction_eia608_from_utf8_113_eia608_from_utf8367_q;
    wire [0:0] i_reduction_eia608_from_utf8_114_eia608_from_utf8368_q;
    wire [0:0] i_reduction_eia608_from_utf8_115_eia608_from_utf8371_q;
    wire [0:0] i_reduction_eia608_from_utf8_117_eia608_from_utf8372_q;
    wire [0:0] i_reduction_eia608_from_utf8_118_eia608_from_utf8373_q;
    wire [0:0] i_reduction_eia608_from_utf8_119_eia608_from_utf8376_q;
    wire [0:0] i_reduction_eia608_from_utf8_11_eia608_from_utf8248_q;
    wire [0:0] i_reduction_eia608_from_utf8_121_eia608_from_utf8377_q;
    wire [0:0] i_reduction_eia608_from_utf8_122_eia608_from_utf8378_q;
    wire [0:0] i_reduction_eia608_from_utf8_124_eia608_from_utf8380_q;
    wire [0:0] i_reduction_eia608_from_utf8_126_eia608_from_utf8381_qi;
    reg [0:0] i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q;
    wire [0:0] i_reduction_eia608_from_utf8_127_eia608_from_utf8383_q;
    wire [0:0] i_reduction_eia608_from_utf8_129_eia608_from_utf8384_qi;
    reg [0:0] i_reduction_eia608_from_utf8_129_eia608_from_utf8384_q;
    wire [0:0] i_reduction_eia608_from_utf8_12_eia608_from_utf8249_q;
    wire [0:0] i_reduction_eia608_from_utf8_130_eia608_from_utf8385_q;
    wire [0:0] i_reduction_eia608_from_utf8_131_eia608_from_utf8388_qi;
    reg [0:0] i_reduction_eia608_from_utf8_131_eia608_from_utf8388_q;
    wire [0:0] i_reduction_eia608_from_utf8_133_eia608_from_utf8389_q;
    wire [0:0] i_reduction_eia608_from_utf8_134_eia608_from_utf8390_q;
    wire [0:0] i_reduction_eia608_from_utf8_135_eia608_from_utf8393_q;
    wire [0:0] i_reduction_eia608_from_utf8_137_eia608_from_utf8394_q;
    wire [0:0] i_reduction_eia608_from_utf8_138_eia608_from_utf8395_q;
    wire [0:0] i_reduction_eia608_from_utf8_139_eia608_from_utf8398_q;
    wire [0:0] i_reduction_eia608_from_utf8_141_eia608_from_utf8399_q;
    wire [0:0] i_reduction_eia608_from_utf8_142_eia608_from_utf8400_q;
    wire [0:0] i_reduction_eia608_from_utf8_144_eia608_from_utf8402_q;
    wire [0:0] i_reduction_eia608_from_utf8_146_eia608_from_utf8403_qi;
    reg [0:0] i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q;
    wire [0:0] i_reduction_eia608_from_utf8_147_eia608_from_utf8406_q;
    wire [0:0] i_reduction_eia608_from_utf8_149_eia608_from_utf8407_q;
    wire [0:0] i_reduction_eia608_from_utf8_14_eia608_from_utf8253_q;
    wire [0:0] i_reduction_eia608_from_utf8_150_eia608_from_utf8408_q;
    wire [0:0] i_reduction_eia608_from_utf8_151_eia608_from_utf8411_q;
    wire [0:0] i_reduction_eia608_from_utf8_153_eia608_from_utf8412_q;
    wire [0:0] i_reduction_eia608_from_utf8_154_eia608_from_utf8413_qi;
    reg [0:0] i_reduction_eia608_from_utf8_154_eia608_from_utf8413_q;
    wire [0:0] i_reduction_eia608_from_utf8_155_eia608_from_utf8416_q;
    wire [0:0] i_reduction_eia608_from_utf8_157_eia608_from_utf8417_q;
    wire [0:0] i_reduction_eia608_from_utf8_158_eia608_from_utf8418_qi;
    reg [0:0] i_reduction_eia608_from_utf8_158_eia608_from_utf8418_q;
    wire [0:0] i_reduction_eia608_from_utf8_159_eia608_from_utf8421_q;
    wire [0:0] i_reduction_eia608_from_utf8_15_eia608_from_utf8254_q;
    wire [0:0] i_reduction_eia608_from_utf8_161_eia608_from_utf8422_q;
    wire [0:0] i_reduction_eia608_from_utf8_162_eia608_from_utf8423_qi;
    reg [0:0] i_reduction_eia608_from_utf8_162_eia608_from_utf8423_q;
    wire [0:0] i_reduction_eia608_from_utf8_163_eia608_from_utf8426_q;
    wire [0:0] i_reduction_eia608_from_utf8_165_eia608_from_utf8427_q;
    wire [0:0] i_reduction_eia608_from_utf8_166_eia608_from_utf8428_qi;
    reg [0:0] i_reduction_eia608_from_utf8_166_eia608_from_utf8428_q;
    wire [0:0] i_reduction_eia608_from_utf8_167_eia608_from_utf8431_q;
    wire [0:0] i_reduction_eia608_from_utf8_169_eia608_from_utf8432_q;
    wire [0:0] i_reduction_eia608_from_utf8_16_eia608_from_utf8257_q;
    wire [0:0] i_reduction_eia608_from_utf8_170_eia608_from_utf8433_qi;
    reg [0:0] i_reduction_eia608_from_utf8_170_eia608_from_utf8433_q;
    wire [0:0] i_reduction_eia608_from_utf8_172_eia608_from_utf8435_q;
    wire [0:0] i_reduction_eia608_from_utf8_174_eia608_from_utf8436_qi;
    reg [0:0] i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q;
    wire [0:0] i_reduction_eia608_from_utf8_175_eia608_from_utf8439_q;
    wire [0:0] i_reduction_eia608_from_utf8_177_eia608_from_utf8440_q;
    wire [0:0] i_reduction_eia608_from_utf8_178_eia608_from_utf8441_qi;
    reg [0:0] i_reduction_eia608_from_utf8_178_eia608_from_utf8441_q;
    wire [0:0] i_reduction_eia608_from_utf8_179_eia608_from_utf8444_q;
    wire [0:0] i_reduction_eia608_from_utf8_181_eia608_from_utf8445_q;
    wire [0:0] i_reduction_eia608_from_utf8_182_eia608_from_utf8446_qi;
    reg [0:0] i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q;
    wire [0:0] i_reduction_eia608_from_utf8_183_eia608_from_utf8449_q;
    wire [0:0] i_reduction_eia608_from_utf8_185_eia608_from_utf8450_q;
    wire [0:0] i_reduction_eia608_from_utf8_186_eia608_from_utf8451_qi;
    reg [0:0] i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q;
    wire [0:0] i_reduction_eia608_from_utf8_187_eia608_from_utf8454_q;
    wire [0:0] i_reduction_eia608_from_utf8_189_eia608_from_utf8455_q;
    wire [0:0] i_reduction_eia608_from_utf8_18_eia608_from_utf8258_q;
    wire [0:0] i_reduction_eia608_from_utf8_190_eia608_from_utf8456_qi;
    reg [0:0] i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q;
    wire [0:0] i_reduction_eia608_from_utf8_191_eia608_from_utf8459_q;
    wire [0:0] i_reduction_eia608_from_utf8_193_eia608_from_utf8460_q;
    wire [0:0] i_reduction_eia608_from_utf8_194_eia608_from_utf8461_qi;
    reg [0:0] i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q;
    wire [0:0] i_reduction_eia608_from_utf8_195_eia608_from_utf8464_q;
    wire [0:0] i_reduction_eia608_from_utf8_197_eia608_from_utf8465_q;
    wire [0:0] i_reduction_eia608_from_utf8_198_eia608_from_utf8466_qi;
    reg [0:0] i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q;
    wire [0:0] i_reduction_eia608_from_utf8_199_eia608_from_utf8469_q;
    wire [0:0] i_reduction_eia608_from_utf8_201_eia608_from_utf8470_q;
    wire [0:0] i_reduction_eia608_from_utf8_202_eia608_from_utf8471_qi;
    reg [0:0] i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q;
    wire [0:0] i_reduction_eia608_from_utf8_203_eia608_from_utf8474_q;
    wire [0:0] i_reduction_eia608_from_utf8_205_eia608_from_utf8475_q;
    wire [0:0] i_reduction_eia608_from_utf8_206_eia608_from_utf8476_qi;
    reg [0:0] i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q;
    wire [0:0] i_reduction_eia608_from_utf8_208_eia608_from_utf8478_q;
    wire [0:0] i_reduction_eia608_from_utf8_20_eia608_from_utf8260_q;
    wire [0:0] i_reduction_eia608_from_utf8_210_eia608_from_utf8479_qi;
    reg [0:0] i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q;
    wire [0:0] i_reduction_eia608_from_utf8_211_eia608_from_utf8482_q;
    wire [0:0] i_reduction_eia608_from_utf8_213_eia608_from_utf8483_q;
    wire [0:0] i_reduction_eia608_from_utf8_214_eia608_from_utf8484_qi;
    reg [0:0] i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q;
    wire [0:0] i_reduction_eia608_from_utf8_215_eia608_from_utf8487_q;
    wire [0:0] i_reduction_eia608_from_utf8_217_eia608_from_utf8488_q;
    wire [0:0] i_reduction_eia608_from_utf8_218_eia608_from_utf8489_qi;
    reg [0:0] i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q;
    wire [0:0] i_reduction_eia608_from_utf8_219_eia608_from_utf8492_q;
    wire [0:0] i_reduction_eia608_from_utf8_21_eia608_from_utf8261_qi;
    reg [0:0] i_reduction_eia608_from_utf8_21_eia608_from_utf8261_q;
    wire [0:0] i_reduction_eia608_from_utf8_221_eia608_from_utf8493_q;
    wire [0:0] i_reduction_eia608_from_utf8_222_eia608_from_utf8494_qi;
    reg [0:0] i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q;
    wire [0:0] i_reduction_eia608_from_utf8_223_eia608_from_utf8497_q;
    wire [0:0] i_reduction_eia608_from_utf8_225_eia608_from_utf8498_q;
    wire [0:0] i_reduction_eia608_from_utf8_226_eia608_from_utf8499_qi;
    reg [0:0] i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q;
    wire [0:0] i_reduction_eia608_from_utf8_227_eia608_from_utf8502_q;
    wire [0:0] i_reduction_eia608_from_utf8_229_eia608_from_utf8503_q;
    wire [0:0] i_reduction_eia608_from_utf8_22_eia608_from_utf8264_q;
    wire [0:0] i_reduction_eia608_from_utf8_230_eia608_from_utf8504_qi;
    reg [0:0] i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q;
    wire [0:0] i_reduction_eia608_from_utf8_231_eia608_from_utf8507_q;
    wire [0:0] i_reduction_eia608_from_utf8_233_eia608_from_utf8508_q;
    wire [0:0] i_reduction_eia608_from_utf8_234_eia608_from_utf8509_qi;
    reg [0:0] i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q;
    wire [0:0] i_reduction_eia608_from_utf8_235_eia608_from_utf8512_q;
    wire [0:0] i_reduction_eia608_from_utf8_237_eia608_from_utf8513_q;
    wire [0:0] i_reduction_eia608_from_utf8_238_eia608_from_utf8514_qi;
    reg [0:0] i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q;
    wire [0:0] i_reduction_eia608_from_utf8_239_eia608_from_utf8517_q;
    wire [0:0] i_reduction_eia608_from_utf8_241_eia608_from_utf8518_q;
    wire [0:0] i_reduction_eia608_from_utf8_242_eia608_from_utf8519_qi;
    reg [0:0] i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q;
    wire [0:0] i_reduction_eia608_from_utf8_243_eia608_from_utf8522_q;
    wire [0:0] i_reduction_eia608_from_utf8_245_eia608_from_utf8523_q;
    wire [0:0] i_reduction_eia608_from_utf8_246_eia608_from_utf8524_qi;
    reg [0:0] i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q;
    wire [0:0] i_reduction_eia608_from_utf8_247_eia608_from_utf8527_q;
    wire [0:0] i_reduction_eia608_from_utf8_249_eia608_from_utf8528_q;
    wire [0:0] i_reduction_eia608_from_utf8_24_eia608_from_utf8265_qi;
    reg [0:0] i_reduction_eia608_from_utf8_24_eia608_from_utf8265_q;
    wire [0:0] i_reduction_eia608_from_utf8_250_eia608_from_utf8529_qi;
    reg [0:0] i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q;
    wire [0:0] i_reduction_eia608_from_utf8_251_eia608_from_utf8532_q;
    wire [0:0] i_reduction_eia608_from_utf8_253_eia608_from_utf8533_q;
    wire [0:0] i_reduction_eia608_from_utf8_254_eia608_from_utf8534_qi;
    reg [0:0] i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q;
    wire [0:0] i_reduction_eia608_from_utf8_256_eia608_from_utf8536_q;
    wire [0:0] i_reduction_eia608_from_utf8_258_eia608_from_utf8537_qi;
    reg [0:0] i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q;
    wire [0:0] i_reduction_eia608_from_utf8_26_eia608_from_utf8267_q;
    wire [0:0] i_reduction_eia608_from_utf8_27_eia608_from_utf8268_qi;
    reg [0:0] i_reduction_eia608_from_utf8_27_eia608_from_utf8268_q;
    wire [0:0] i_reduction_eia608_from_utf8_29_eia608_from_utf8270_q;
    wire [0:0] i_reduction_eia608_from_utf8_30_eia608_from_utf8271_qi;
    reg [0:0] i_reduction_eia608_from_utf8_30_eia608_from_utf8271_q;
    wire [0:0] i_reduction_eia608_from_utf8_32_eia608_from_utf8273_q;
    wire [0:0] i_reduction_eia608_from_utf8_33_eia608_from_utf8274_qi;
    reg [0:0] i_reduction_eia608_from_utf8_33_eia608_from_utf8274_q;
    wire [0:0] i_reduction_eia608_from_utf8_35_eia608_from_utf8276_q;
    wire [0:0] i_reduction_eia608_from_utf8_36_eia608_from_utf8277_qi;
    reg [0:0] i_reduction_eia608_from_utf8_36_eia608_from_utf8277_q;
    wire [0:0] i_reduction_eia608_from_utf8_39_eia608_from_utf8279_qi;
    reg [0:0] i_reduction_eia608_from_utf8_39_eia608_from_utf8279_q;
    wire [0:0] i_reduction_eia608_from_utf8_41_eia608_from_utf8281_q;
    wire [0:0] i_reduction_eia608_from_utf8_42_eia608_from_utf8282_qi;
    reg [0:0] i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q;
    wire [0:0] i_reduction_eia608_from_utf8_44_eia608_from_utf8284_q;
    wire [0:0] i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    wire [0:0] i_reduction_eia608_from_utf8_46_eia608_from_utf8286_qi;
    reg [0:0] i_reduction_eia608_from_utf8_46_eia608_from_utf8286_q;
    wire [0:0] i_reduction_eia608_from_utf8_47_eia608_from_utf8289_qi;
    reg [0:0] i_reduction_eia608_from_utf8_47_eia608_from_utf8289_q;
    wire [0:0] i_reduction_eia608_from_utf8_48_eia608_from_utf8290_qi;
    reg [0:0] i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q;
    wire [0:0] i_reduction_eia608_from_utf8_49_eia608_from_utf8291_q;
    wire [0:0] i_reduction_eia608_from_utf8_50_eia608_from_utf8292_q;
    wire [0:0] i_reduction_eia608_from_utf8_51_eia608_from_utf8295_q;
    wire [0:0] i_reduction_eia608_from_utf8_53_eia608_from_utf8296_q;
    wire [0:0] i_reduction_eia608_from_utf8_54_eia608_from_utf8297_q;
    wire [0:0] i_reduction_eia608_from_utf8_55_eia608_from_utf8300_q;
    wire [0:0] i_reduction_eia608_from_utf8_57_eia608_from_utf8301_q;
    wire [0:0] i_reduction_eia608_from_utf8_58_eia608_from_utf8302_q;
    wire [0:0] i_reduction_eia608_from_utf8_59_eia608_from_utf8305_q;
    wire [0:0] i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q;
    wire [0:0] i_reduction_eia608_from_utf8_61_eia608_from_utf8306_q;
    wire [0:0] i_reduction_eia608_from_utf8_62_eia608_from_utf8307_q;
    wire [0:0] i_reduction_eia608_from_utf8_64_eia608_from_utf8309_q;
    wire [0:0] i_reduction_eia608_from_utf8_66_eia608_from_utf8310_qi;
    reg [0:0] i_reduction_eia608_from_utf8_66_eia608_from_utf8310_q;
    wire [0:0] i_reduction_eia608_from_utf8_67_eia608_from_utf8313_q;
    wire [0:0] i_reduction_eia608_from_utf8_69_eia608_from_utf8314_q;
    wire [0:0] i_reduction_eia608_from_utf8_6_eia608_from_utf8244_q;
    wire [0:0] i_reduction_eia608_from_utf8_70_eia608_from_utf8315_qi;
    reg [0:0] i_reduction_eia608_from_utf8_70_eia608_from_utf8315_q;
    wire [0:0] i_reduction_eia608_from_utf8_71_eia608_from_utf8318_q;
    wire [0:0] i_reduction_eia608_from_utf8_73_eia608_from_utf8319_qi;
    reg [0:0] i_reduction_eia608_from_utf8_73_eia608_from_utf8319_q;
    wire [0:0] i_reduction_eia608_from_utf8_74_eia608_from_utf8320_q;
    wire [0:0] i_reduction_eia608_from_utf8_75_eia608_from_utf8323_qi;
    reg [0:0] i_reduction_eia608_from_utf8_75_eia608_from_utf8323_q;
    wire [0:0] i_reduction_eia608_from_utf8_77_eia608_from_utf8324_q;
    wire [0:0] i_reduction_eia608_from_utf8_78_eia608_from_utf8325_q;
    wire [0:0] i_reduction_eia608_from_utf8_79_eia608_from_utf8328_q;
    wire [0:0] i_reduction_eia608_from_utf8_7_eia608_from_utf8245_q;
    wire [0:0] i_reduction_eia608_from_utf8_81_eia608_from_utf8329_q;
    wire [0:0] i_reduction_eia608_from_utf8_82_eia608_from_utf8330_q;
    wire [0:0] i_reduction_eia608_from_utf8_83_eia608_from_utf8333_q;
    wire [0:0] i_reduction_eia608_from_utf8_85_eia608_from_utf8334_q;
    wire [0:0] i_reduction_eia608_from_utf8_86_eia608_from_utf8335_q;
    wire [0:0] i_reduction_eia608_from_utf8_87_eia608_from_utf8338_q;
    wire [0:0] i_reduction_eia608_from_utf8_89_eia608_from_utf8339_q;
    wire [0:0] i_reduction_eia608_from_utf8_8_eia608_from_utf8246_qi;
    reg [0:0] i_reduction_eia608_from_utf8_8_eia608_from_utf8246_q;
    wire [0:0] i_reduction_eia608_from_utf8_90_eia608_from_utf8340_q;
    wire [0:0] i_reduction_eia608_from_utf8_91_eia608_from_utf8343_q;
    wire [0:0] i_reduction_eia608_from_utf8_93_eia608_from_utf8344_q;
    wire [0:0] i_reduction_eia608_from_utf8_94_eia608_from_utf8345_q;
    wire [0:0] i_reduction_eia608_from_utf8_95_eia608_from_utf8348_q;
    wire [0:0] i_reduction_eia608_from_utf8_97_eia608_from_utf8349_q;
    wire [0:0] i_reduction_eia608_from_utf8_98_eia608_from_utf8350_qi;
    reg [0:0] i_reduction_eia608_from_utf8_98_eia608_from_utf8350_q;
    wire [31:0] i_shl_eia608_from_utf86_vt_join_q;
    wire [23:0] i_shl_eia608_from_utf86_vt_select_31_b;
    wire [0:0] i_spec_select128_eia608_from_utf877_s;
    reg [31:0] i_spec_select128_eia608_from_utf877_q;
    wire [31:0] i_spec_select128_eia608_from_utf877_vt_join_q;
    wire [6:0] i_spec_select128_eia608_from_utf877_vt_select_14_b;
    wire [0:0] i_spec_select129_eia608_from_utf880_s;
    reg [31:0] i_spec_select129_eia608_from_utf880_q;
    wire [2:0] i_spec_select129_eia608_from_utf880_vt_const_11_q;
    wire [31:0] i_spec_select129_eia608_from_utf880_vt_join_q;
    wire [0:0] i_spec_select_eia608_from_utf871_s;
    reg [31:0] i_spec_select_eia608_from_utf871_q;
    wire [31:0] i_spec_select_eia608_from_utf871_vt_join_q;
    wire [0:0] i_switchleaf107_eia608_from_utf8176_qi;
    reg [0:0] i_switchleaf107_eia608_from_utf8176_q;
    wire [0:0] i_switchleaf107_not_eia608_from_utf8178_q;
    wire [0:0] i_switchleaf129_eia608_from_utf8179_q;
    wire [0:0] i_switchleaf149_eia608_from_utf8181_qi;
    reg [0:0] i_switchleaf149_eia608_from_utf8181_q;
    wire [0:0] i_switchleaf149_not_eia608_from_utf8183_q;
    wire [0:0] i_switchleaf14_eia608_from_utf847_q;
    wire [0:0] i_switchleaf16_eia608_from_utf884_q;
    wire [0:0] i_switchleaf183_eia608_from_utf8160_q;
    wire [0:0] i_switchleaf183_not_eia608_from_utf8162_q;
    wire [0:0] i_switchleaf185_eia608_from_utf8184_q;
    wire [0:0] i_switchleaf185_not_eia608_from_utf8186_q;
    wire [0:0] i_switchleaf18_eia608_from_utf886_q;
    wire [0:0] i_switchleaf191_eia608_from_utf8187_q;
    wire [0:0] i_switchleaf202_eia608_from_utf8163_q;
    wire [0:0] i_switchleaf204_eia608_from_utf8165_q;
    wire [0:0] i_switchleaf210_eia608_from_utf8167_q;
    wire [0:0] i_switchleaf24_eia608_from_utf888_q;
    wire [0:0] i_switchleaf26_eia608_from_utf890_q;
    wire [0:0] i_switchleaf30_eia608_from_utf892_q;
    wire [0:0] i_switchleaf32_eia608_from_utf894_q;
    wire [0:0] i_switchleaf47_eia608_from_utf8169_qi;
    reg [0:0] i_switchleaf47_eia608_from_utf8169_q;
    wire [0:0] i_switchleaf47_not_eia608_from_utf8171_q;
    wire [0:0] i_switchleaf69_eia608_from_utf8172_q;
    wire [0:0] i_switchleaf6_eia608_from_utf881_q;
    wire [0:0] i_switchleaf6_not_eia608_from_utf883_q;
    wire [0:0] i_switchleaf83_eia608_from_utf8138_q;
    wire [0:0] i_switchleaf91_eia608_from_utf8174_q;
    wire [0:0] i_switchleaf_eia608_from_utf839_q;
    wire [0:0] i_unnamed_eia608_from_utf8204_q;
    wire [0:0] i_unnamed_eia608_from_utf8250_q;
    wire [0:0] i_unnamed_eia608_from_utf83_s;
    reg [31:0] i_unnamed_eia608_from_utf83_q;
    wire [31:0] i_unnamed_eia608_from_utf83_vt_join_q;
    wire [0:0] i_unnamed_eia608_from_utf85_s;
    reg [31:0] i_unnamed_eia608_from_utf85_q;
    wire [31:0] i_unnamed_eia608_from_utf85_vt_join_q;
    wire [0:0] i_unnamed_eia608_from_utf872_s;
    reg [31:0] i_unnamed_eia608_from_utf872_q;
    wire [31:0] i_unnamed_eia608_from_utf872_vt_join_q;
    wire [7:0] c_i8_100624_recast_x_q;
    wire [7:0] c_i8_101653_recast_x_q;
    wire [7:0] c_i8_102620_recast_x_q;
    wire [7:0] c_i8_103652_recast_x_q;
    wire [7:0] c_i8_104636_recast_x_q;
    wire [7:0] c_i8_106609_recast_x_q;
    wire [7:0] c_i8_107651_recast_x_q;
    wire [7:0] c_i8_108627_recast_x_q;
    wire [7:0] c_i8_109650_recast_x_q;
    wire [7:0] c_i8_110619_recast_x_q;
    wire [7:0] c_i8_111649_recast_x_q;
    wire [7:0] c_i8_112643_recast_x_q;
    wire [7:0] c_i8_113635_recast_x_q;
    wire [7:0] c_i8_114602_recast_x_q;
    wire [7:0] c_i8_115648_recast_x_q;
    wire [7:0] c_i8_116634_recast_x_q;
    wire [7:0] c_i8_117647_recast_x_q;
    wire [7:0] c_i8_118618_recast_x_q;
    wire [7:0] c_i8_119646_recast_x_q;
    wire [7:0] c_i8_120628_recast_x_q;
    wire [7:0] c_i8_121608_recast_x_q;
    wire [7:0] c_i8_123645_recast_x_q;
    wire [7:0] c_i8_124633_recast_x_q;
    wire [7:0] c_i8_125617_recast_x_q;
    wire [7:0] c_i8_126644_recast_x_q;
    wire [7:0] c_i8_128632_recast_x_q;
    wire [7:0] c_i8_62597_recast_x_q;
    wire [7:0] c_i8_65616_recast_x_q;
    wire [7:0] c_i8_67607_recast_x_q;
    wire [7:0] c_i8_68661_recast_x_q;
    wire [7:0] c_i8_69615_recast_x_q;
    wire [7:0] c_i8_70660_recast_x_q;
    wire [7:0] c_i8_71623_recast_x_q;
    wire [7:0] c_i8_72659_recast_x_q;
    wire [7:0] c_i8_73641_recast_x_q;
    wire [7:0] c_i8_74611_recast_x_q;
    wire [7:0] c_i8_75658_recast_x_q;
    wire [7:0] c_i8_76640_recast_x_q;
    wire [7:0] c_i8_77657_recast_x_q;
    wire [7:0] c_i8_78622_recast_x_q;
    wire [7:0] c_i8_79656_recast_x_q;
    wire [7:0] c_i8_80601_recast_x_q;
    wire [7:0] c_i8_81639_recast_x_q;
    wire [7:0] c_i8_82603_recast_x_q;
    wire [7:0] c_i8_83655_recast_x_q;
    wire [7:0] c_i8_84638_recast_x_q;
    wire [7:0] c_i8_85606_recast_x_q;
    wire [7:0] c_i8_86621_recast_x_q;
    wire [7:0] c_i8_87598_recast_x_q;
    wire [7:0] c_i8_88637_recast_x_q;
    wire [7:0] c_i8_89610_recast_x_q;
    wire [7:0] c_i8_90614_recast_x_q;
    wire [7:0] c_i8_91605_recast_x_q;
    wire [7:0] c_i8_92613_recast_x_q;
    wire [7:0] c_i8_93600_recast_x_q;
    wire [7:0] c_i8_94612_recast_x_q;
    wire [7:0] c_i8_95604_recast_x_q;
    wire [7:0] c_i8_96599_recast_x_q;
    wire [7:0] c_i8_97654_recast_x_q;
    wire [7:0] c_i8_99642_recast_x_q;
    wire [7:0] i_and_eia608_from_utf87_BitSelect_for_a_b;
    wire [31:0] i_and_eia608_from_utf87_join_q;
    wire [23:0] leftShiftStage0Idx1Rng8_uid874_i_shl_eia608_from_utf80_shift_x_in;
    wire [23:0] leftShiftStage0Idx1Rng8_uid874_i_shl_eia608_from_utf80_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid875_i_shl_eia608_from_utf80_shift_x_q;
    wire [0:0] leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_s;
    reg [31:0] leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_q;
    wire [12:0] i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_in;
    wire [0:0] i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_b;
    wire [3:0] i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_c;
    wire [0:0] i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_d;
    wire [1:0] i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_e;
    wire [14:0] i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_in;
    wire [6:0] i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_b;
    wire [3:0] i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_c;
    wire [14:0] i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_in;
    wire [6:0] i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_b;
    wire [3:0] i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_c;
    wire [14:0] i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_in;
    wire [6:0] i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_b;
    wire [5:0] i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_c;
    wire [14:0] i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_in;
    wire [6:0] i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b;
    wire [5:0] i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c;
    wire [8:0] i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_in;
    wire [1:0] i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_b;
    wire [0:0] i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_c;
    wire [0:0] i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_d;
    wire [12:0] i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_in;
    wire [0:0] i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_b;
    wire [2:0] i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_c;
    wire [1:0] i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_d;
    wire [0:0] i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_e;
    wire [12:0] i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_in;
    wire [0:0] i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_b;
    wire [0:0] i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_c;
    wire [1:0] i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_d;
    wire [0:0] i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_e;
    wire [8:0] i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_in;
    wire [1:0] i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_b;
    wire [0:0] i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_c;
    wire [0:0] i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_d;
    wire [12:0] i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_in;
    wire [0:0] i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_b;
    wire [3:0] i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_c;
    wire [0:0] i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_d;
    wire [1:0] i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_e;
    wire [12:0] i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_in;
    wire [0:0] i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_b;
    wire [3:0] i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_c;
    wire [1:0] i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_d;
    reg [6:0] redist0_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b_1_q;
    reg [5:0] redist1_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c_1_q;
    reg [0:0] redist2_sync_together743_aunroll_x_in_c1_eni29_1_tpl_1_q;
    reg [0:0] redist3_sync_together743_aunroll_x_in_c1_eni29_2_tpl_1_q;
    reg [0:0] redist4_sync_together743_aunroll_x_in_c1_eni29_3_tpl_1_q;
    reg [0:0] redist5_sync_together743_aunroll_x_in_c1_eni29_4_tpl_1_q;
    reg [0:0] redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_q;
    reg [0:0] redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_delay_0;
    reg [7:0] redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q;
    reg [7:0] redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q;
    reg [7:0] redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_delay_0;
    reg [7:0] redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q;
    reg [7:0] redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q;
    reg [7:0] redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q;
    reg [7:0] redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_delay_0;
    reg [0:0] redist12_sync_together743_aunroll_x_in_c1_eni29_9_tpl_1_q;
    reg [0:0] redist13_sync_together743_aunroll_x_in_c1_eni29_12_tpl_1_q;
    reg [0:0] redist14_sync_together743_aunroll_x_in_c1_eni29_13_tpl_1_q;
    reg [0:0] redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;
    reg [0:0] redist16_sync_together743_aunroll_x_in_c1_eni29_13_tpl_3_q;
    reg [0:0] redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    reg [0:0] redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_0;
    reg [0:0] redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_1;
    reg [0:0] redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_2;
    reg [0:0] redist18_sync_together743_aunroll_x_in_c1_eni29_14_tpl_1_q;
    reg [0:0] redist19_sync_together743_aunroll_x_in_c1_eni29_15_tpl_1_q;
    reg [0:0] redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_q;
    reg [0:0] redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_delay_0;
    reg [0:0] redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_q;
    reg [0:0] redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_delay_0;
    reg [0:0] redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_q;
    reg [0:0] redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_delay_0;
    reg [0:0] redist23_sync_together743_aunroll_x_in_c1_eni29_19_tpl_1_q;
    reg [0:0] redist24_sync_together743_aunroll_x_in_c1_eni29_20_tpl_1_q;
    reg [0:0] redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q;
    reg [0:0] redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_delay_0;
    reg [0:0] redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q;
    reg [0:0] redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q;
    reg [0:0] redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q;
    reg [0:0] redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q;
    reg [0:0] redist30_sync_together743_aunroll_x_in_c1_eni29_21_tpl_1_q;
    reg [0:0] redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_q;
    reg [0:0] redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_delay_0;
    reg [0:0] redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_q;
    reg [0:0] redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_delay_0;
    reg [0:0] redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_q;
    reg [0:0] redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_delay_0;
    reg [0:0] redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q;
    reg [0:0] redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_delay_0;
    reg [0:0] redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_q;
    reg [0:0] redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_delay_0;
    reg [0:0] redist36_sync_together743_aunroll_x_in_c1_eni29_27_tpl_13_q;
    reg [0:0] redist37_sync_together743_aunroll_x_in_c1_eni29_28_tpl_14_q;
    reg [0:0] redist38_sync_together743_aunroll_x_in_c1_eni29_29_tpl_14_q;
    reg [0:0] redist39_sync_together743_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist40_i_switchleaf_eia608_from_utf839_q_6_q;
    reg [0:0] redist41_i_switchleaf91_eia608_from_utf8174_q_3_q;
    reg [0:0] redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_0;
    reg [0:0] redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_1;
    reg [0:0] redist42_i_switchleaf83_eia608_from_utf8138_q_3_q;
    reg [0:0] redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_0;
    reg [0:0] redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_1;
    reg [0:0] redist43_i_switchleaf6_eia608_from_utf881_q_6_q;
    reg [0:0] redist44_i_switchleaf69_eia608_from_utf8172_q_3_q;
    reg [0:0] redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_0;
    reg [0:0] redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_1;
    reg [0:0] redist45_i_switchleaf47_eia608_from_utf8169_q_3_q;
    reg [0:0] redist45_i_switchleaf47_eia608_from_utf8169_q_3_delay_0;
    reg [0:0] redist46_i_switchleaf30_eia608_from_utf892_q_6_q;
    reg [0:0] redist47_i_switchleaf26_eia608_from_utf890_q_6_q;
    reg [0:0] redist48_i_switchleaf24_eia608_from_utf888_q_6_q;
    reg [0:0] redist49_i_switchleaf210_eia608_from_utf8167_q_2_q;
    reg [0:0] redist49_i_switchleaf210_eia608_from_utf8167_q_2_delay_0;
    reg [0:0] redist50_i_switchleaf204_eia608_from_utf8165_q_2_q;
    reg [0:0] redist50_i_switchleaf204_eia608_from_utf8165_q_2_delay_0;
    reg [0:0] redist51_i_switchleaf202_eia608_from_utf8163_q_2_q;
    reg [0:0] redist51_i_switchleaf202_eia608_from_utf8163_q_2_delay_0;
    reg [0:0] redist52_i_switchleaf191_eia608_from_utf8187_q_2_q;
    reg [0:0] redist52_i_switchleaf191_eia608_from_utf8187_q_2_delay_0;
    reg [0:0] redist53_i_switchleaf18_eia608_from_utf886_q_6_q;
    reg [0:0] redist54_i_switchleaf185_eia608_from_utf8184_q_2_q;
    reg [0:0] redist54_i_switchleaf185_eia608_from_utf8184_q_2_delay_0;
    reg [0:0] redist55_i_switchleaf183_eia608_from_utf8160_q_2_q;
    reg [0:0] redist55_i_switchleaf183_eia608_from_utf8160_q_2_delay_0;
    reg [0:0] redist56_i_switchleaf16_eia608_from_utf884_q_6_q;
    reg [0:0] redist57_i_switchleaf14_eia608_from_utf847_q_6_q;
    reg [0:0] redist58_i_switchleaf149_eia608_from_utf8181_q_3_q;
    reg [0:0] redist58_i_switchleaf149_eia608_from_utf8181_q_3_delay_0;
    reg [0:0] redist59_i_switchleaf129_eia608_from_utf8179_q_3_q;
    reg [0:0] redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_0;
    reg [0:0] redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_1;
    reg [0:0] redist60_i_switchleaf107_eia608_from_utf8176_q_3_q;
    reg [0:0] redist60_i_switchleaf107_eia608_from_utf8176_q_3_delay_0;
    reg [0:0] redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_q;
    reg [0:0] redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_delay_0;
    reg [0:0] redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q;
    reg [0:0] redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q;
    reg [0:0] redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;
    reg [0:0] redist65_i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q_2_q;
    reg [0:0] redist66_i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q_8_q;
    reg [0:0] redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_q;
    reg [0:0] redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_0;
    reg [0:0] redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_1;
    reg [0:0] redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_q;
    reg [0:0] redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_0;
    reg [0:0] redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_1;
    reg [0:0] redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_q;
    reg [0:0] redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_0;
    reg [0:0] redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_1;
    reg [0:0] redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_q;
    reg [0:0] redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_0;
    reg [0:0] redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_1;
    reg [0:0] redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_q;
    reg [0:0] redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_0;
    reg [0:0] redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_1;
    reg [0:0] redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_q;
    reg [0:0] redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_delay_0;
    reg [0:0] redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_q;
    reg [0:0] redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_delay_0;
    reg [0:0] redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_q;
    reg [0:0] redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_delay_0;
    reg [0:0] redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_q;
    reg [0:0] redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_delay_0;
    reg [0:0] redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_q;
    reg [0:0] redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_delay_0;
    reg [0:0] redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_q;
    reg [0:0] redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_delay_0;
    reg [0:0] redist78_i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q_7_q;
    reg [0:0] redist79_i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q_2_q;
    reg [0:0] redist80_i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q_2_q;
    reg [0:0] redist81_i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q_2_q;
    reg [0:0] redist82_i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q_2_q;
    reg [0:0] redist83_i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q_2_q;
    reg [0:0] redist84_i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q_2_q;
    reg [0:0] redist85_i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q_2_q;
    reg [0:0] redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_q;
    reg [0:0] redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_0;
    reg [0:0] redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_1;
    reg [0:0] redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_2;
    reg [0:0] redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_q;
    reg [0:0] redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_0;
    reg [0:0] redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_1;
    reg [0:0] redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_q;
    reg [0:0] redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_0;
    reg [0:0] redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_1;
    reg [0:0] redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_q;
    reg [0:0] redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_delay_0;
    reg [0:0] redist90_i_pivot_eia608_from_utf841_c_7_q;
    reg [0:0] redist91_i_pivot99_eia608_from_utf833_c_5_q;
    reg [0:0] redist91_i_pivot99_eia608_from_utf833_c_5_delay_0;
    reg [0:0] redist91_i_pivot99_eia608_from_utf833_c_5_delay_1;
    reg [0:0] redist91_i_pivot99_eia608_from_utf833_c_5_delay_2;
    reg [0:0] redist91_i_pivot99_eia608_from_utf833_c_5_delay_3;
    reg [0:0] redist92_i_pivot93_eia608_from_utf8144_c_7_q;
    reg [0:0] redist93_i_pivot8_eia608_from_utf845_c_6_q;
    reg [0:0] redist94_i_pivot73_eia608_from_utf8104_c_4_q;
    reg [0:0] redist94_i_pivot73_eia608_from_utf8104_c_4_delay_0;
    reg [0:0] redist94_i_pivot73_eia608_from_utf8104_c_4_delay_1;
    reg [0:0] redist94_i_pivot73_eia608_from_utf8104_c_4_delay_2;
    reg [0:0] redist95_i_pivot71_eia608_from_utf8132_c_5_q;
    reg [0:0] redist95_i_pivot71_eia608_from_utf8132_c_5_delay_0;
    reg [0:0] redist95_i_pivot71_eia608_from_utf8132_c_5_delay_1;
    reg [0:0] redist95_i_pivot71_eia608_from_utf8132_c_5_delay_2;
    reg [0:0] redist95_i_pivot71_eia608_from_utf8132_c_5_delay_3;
    reg [0:0] redist96_i_pivot67_eia608_from_utf831_c_4_q;
    reg [0:0] redist96_i_pivot67_eia608_from_utf831_c_4_delay_0;
    reg [0:0] redist96_i_pivot67_eia608_from_utf831_c_4_delay_1;
    reg [0:0] redist97_i_pivot49_eia608_from_utf8124_c_3_q;
    reg [0:0] redist97_i_pivot49_eia608_from_utf8124_c_3_delay_0;
    reg [0:0] redist98_i_pivot40_eia608_from_utf811_c_6_q;
    reg [0:0] redist99_i_pivot2_eia608_from_utf823_c_6_q;
    reg [0:0] redist100_i_pivot28_eia608_from_utf849_c_7_q;
    reg [0:0] redist101_i_pivot22_eia608_from_utf827_c_6_q;
    reg [0:0] redist102_i_pivot214_eia608_from_utf873_c_5_q;
    reg [0:0] redist102_i_pivot214_eia608_from_utf873_c_5_delay_0;
    reg [0:0] redist102_i_pivot214_eia608_from_utf873_c_5_delay_1;
    reg [0:0] redist102_i_pivot214_eia608_from_utf873_c_5_delay_2;
    reg [0:0] redist102_i_pivot214_eia608_from_utf873_c_5_delay_3;
    reg [0:0] redist103_i_pivot161_eia608_from_utf813_c_6_q;
    reg [0:0] redist104_i_pivot159_eia608_from_utf821_c_7_q;
    reg [0:0] redist105_i_pivot157_eia608_from_utf837_c_7_q;
    reg [0:0] redist106_i_pivot151_eia608_from_utf8158_c_7_q;
    reg [0:0] redist107_i_pivot133_eia608_from_utf8112_c_7_q;
    reg [0:0] redist108_i_pivot131_eia608_from_utf8148_c_7_q;
    reg [0:0] redist109_i_pivot12_eia608_from_utf815_c_6_q;
    reg [0:0] redist110_i_pivot127_eia608_from_utf835_c_7_q;
    reg [0:0] redist111_i_pivot10_eia608_from_utf825_c_7_q;
    reg [0:0] redist112_i_pivot101_eia608_from_utf819_c_4_q;
    reg [0:0] redist112_i_pivot101_eia608_from_utf819_c_4_delay_0;
    reg [0:0] redist112_i_pivot101_eia608_from_utf819_c_4_delay_1;
    reg [0:0] redist113_i_not_cmp75_eia608_from_utf8241_q_2_q;
    reg [0:0] redist113_i_not_cmp75_eia608_from_utf8241_q_2_delay_0;
    reg [0:0] redist114_i_not_cmp75_eia608_from_utf8241_q_3_q;
    reg [0:0] redist115_i_not_cmp75_eia608_from_utf8241_q_4_q;
    reg [0:0] redist116_i_not_cmp75_eia608_from_utf8241_q_5_q;
    reg [0:0] redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;
    reg [0:0] redist118_i_not_cmp71_eia608_from_utf8242_q_2_q;
    reg [0:0] redist118_i_not_cmp71_eia608_from_utf8242_q_2_delay_0;
    reg [0:0] redist119_i_cmp75_eia608_from_utf89_q_7_q;
    reg [0:0] redist120_i_cmp276_eia608_from_utf878_q_7_q;
    reg [0:0] redist121_i_cmp259_eia608_from_utf869_q_1_q;
    reg [0:0] redist122_i_cmp259_eia608_from_utf869_q_2_q;
    reg [0:0] redist124_i_acl_751_eia608_from_utf8397_q_7_q;
    reg [0:0] redist125_i_acl_740_eia608_from_utf8392_q_7_q;
    reg [0:0] redist126_i_acl_728_eia608_from_utf8387_q_6_q;
    reg [0:0] redist126_i_acl_728_eia608_from_utf8387_q_6_delay_0;
    reg [0:0] redist126_i_acl_728_eia608_from_utf8387_q_6_delay_1;
    reg [0:0] redist126_i_acl_728_eia608_from_utf8387_q_6_delay_2;
    reg [0:0] redist126_i_acl_728_eia608_from_utf8387_q_6_delay_3;
    reg [0:0] redist127_i_acl_387_eia608_from_utf8263_q_2_q;
    reg [0:0] redist128_i_acl_364_eia608_from_utf8256_q_2_q;
    reg [0:0] redist129_i_acl_364_eia608_from_utf8256_q_6_q;
    reg [0:0] redist129_i_acl_364_eia608_from_utf8256_q_6_delay_0;
    reg [0:0] redist129_i_acl_364_eia608_from_utf8256_q_6_delay_1;
    reg [0:0] redist129_i_acl_364_eia608_from_utf8256_q_6_delay_2;
    reg [0:0] redist130_i_acl_1255_eia608_from_utf8580_q_6_q;
    reg [0:0] redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_0;
    reg [0:0] redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_1;
    reg [0:0] redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_2;
    reg [0:0] redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_3;
    reg [0:0] redist131_i_acl_1250_eia608_from_utf8579_q_6_q;
    reg [0:0] redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_0;
    reg [0:0] redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_1;
    reg [0:0] redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_2;
    reg [0:0] redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_3;
    reg [0:0] redist132_i_acl_1244_eia608_from_utf8577_q_6_q;
    reg [0:0] redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_0;
    reg [0:0] redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_1;
    reg [0:0] redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_2;
    reg [0:0] redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_3;
    reg [0:0] redist133_i_acl_1233_eia608_from_utf8574_q_6_q;
    reg [0:0] redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_0;
    reg [0:0] redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_1;
    reg [0:0] redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_2;
    reg [0:0] redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_3;
    reg [0:0] redist134_i_acl_1222_eia608_from_utf8571_q_6_q;
    reg [0:0] redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_0;
    reg [0:0] redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_1;
    reg [0:0] redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_2;
    reg [0:0] redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_3;
    reg [0:0] redist135_i_acl_1211_eia608_from_utf8568_q_6_q;
    reg [0:0] redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_0;
    reg [0:0] redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_1;
    reg [0:0] redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_2;
    reg [0:0] redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_3;
    reg [0:0] redist136_i_acl_1200_eia608_from_utf8565_q_6_q;
    reg [0:0] redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_0;
    reg [0:0] redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_1;
    reg [0:0] redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_2;
    reg [0:0] redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_3;
    reg [0:0] redist137_i_acl_1189_eia608_from_utf8562_q_5_q;
    reg [0:0] redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_0;
    reg [0:0] redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_1;
    reg [0:0] redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_2;
    reg [0:0] redist138_i_acl_1179_eia608_from_utf8559_q_5_q;
    reg [0:0] redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_0;
    reg [0:0] redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_1;
    reg [0:0] redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_2;
    reg [0:0] redist139_i_acl_1168_eia608_from_utf8556_q_5_q;
    reg [0:0] redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_0;
    reg [0:0] redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_1;
    reg [0:0] redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_2;
    reg [0:0] redist140_i_acl_1158_eia608_from_utf8552_q_5_q;
    reg [0:0] redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_0;
    reg [0:0] redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_1;
    reg [0:0] redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_2;
    reg [0:0] redist141_i_acl_1148_eia608_from_utf8549_q_5_q;
    reg [0:0] redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_0;
    reg [0:0] redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_1;
    reg [0:0] redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_2;
    reg [0:0] redist142_i_acl_1138_eia608_from_utf8546_q_5_q;
    reg [0:0] redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_0;
    reg [0:0] redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_1;
    reg [0:0] redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_2;
    reg [0:0] redist143_i_acl_1128_eia608_from_utf8543_q_5_q;
    reg [0:0] redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_0;
    reg [0:0] redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_1;
    reg [0:0] redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_2;
    reg [0:0] redist144_i_acl_1118_eia608_from_utf8540_q_4_q;
    reg [0:0] redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_0;
    reg [0:0] redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_1;
    wire redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_reset0;
    wire [7:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_ia;
    wire [3:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_aa;
    wire [3:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_ab;
    wire [7:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_iq;
    wire [7:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_q;
    wire [3:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i;
    (* preserve *) reg redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_eq;
    reg [3:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_wraddr_q;
    wire [4:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_last_q;
    wire [4:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmp_b;
    wire [0:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmpReg_q;
    wire [0:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_notEnable_q;
    wire [0:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_sticky_ena_q;
    wire [0:0] redist123_i_and_eia608_from_utf87_vt_select_15_b_13_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist39_sync_together743_aunroll_x_in_i_valid_14(DELAY,928)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_sync_together743_aunroll_x_in_i_valid_14 ( .xin(in_i_valid), .xout(redist39_sync_together743_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_127_eia608_from_utf84_vt_const_31(CONSTANT,168)
    assign i_acl_127_eia608_from_utf84_vt_const_31_q = $unsigned(19'b0000000000000000000);

    // i_spec_select129_eia608_from_utf880_vt_const_11(CONSTANT,613)
    assign i_spec_select129_eia608_from_utf880_vt_const_11_q = $unsigned(3'b000);

    // i_acl_127_eia608_from_utf84_vt_const_11(CONSTANT,167)
    assign i_acl_127_eia608_from_utf84_vt_const_11_q = $unsigned(2'b00);

    // c_i32_4407630(CONSTANT,22)
    assign c_i32_4407630_q = $unsigned(32'b00000000000000000001000100110111);

    // c_i32_0590(CONSTANT,4)
    assign c_i32_0590_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i8_86621_recast_x(CONSTANT,823)
    assign c_i8_86621_recast_x_q = $unsigned(8'b10101010);

    // redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1(DELAY,896)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q <= $unsigned(in_c1_eni29_8_tpl);
        end
    end

    // redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3(DELAY,897)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_delay_0 <= '0;
            redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_delay_0 <= $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q);
            redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q <= redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_delay_0;
        end
    end

    // redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4(DELAY,898)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q <= '0;
        end
        else
        begin
            redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q <= $unsigned(redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q);
        end
    end

    // redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5(DELAY,899)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q <= '0;
        end
        else
        begin
            redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q <= $unsigned(redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q);
        end
    end

    // redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7(DELAY,900)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_delay_0 <= '0;
            redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q <= '0;
        end
        else
        begin
            redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_delay_0 <= $unsigned(redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q);
            redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q <= redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_delay_0;
        end
    end

    // i_cmp276_eia608_from_utf878(LOGICAL,359)@104 + 1
    assign i_cmp276_eia608_from_utf878_qi = $unsigned(redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q == c_i8_86621_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp276_eia608_from_utf878_delay ( .xin(i_cmp276_eia608_from_utf878_qi), .xout(i_cmp276_eia608_from_utf878_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist120_i_cmp276_eia608_from_utf878_q_7(DELAY,1009)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist120_i_cmp276_eia608_from_utf878_q_7 ( .xin(i_cmp276_eia608_from_utf878_q), .xout(redist120_i_cmp276_eia608_from_utf878_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select129_eia608_from_utf880(MUX,612)@111
    assign i_spec_select129_eia608_from_utf880_s = redist120_i_cmp276_eia608_from_utf878_q_7_q;
    always @(i_spec_select129_eia608_from_utf880_s or c_i32_0590_q or c_i32_4407630_q)
    begin
        unique case (i_spec_select129_eia608_from_utf880_s)
            1'b0 : i_spec_select129_eia608_from_utf880_q = c_i32_0590_q;
            1'b1 : i_spec_select129_eia608_from_utf880_q = c_i32_4407630_q;
            default : i_spec_select129_eia608_from_utf880_q = 32'b0;
        endcase
    end

    // i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select(BITSELECT,884)@111
    assign i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_in = i_spec_select129_eia608_from_utf880_q[12:0];
    assign i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_b = i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_in[12:12];
    assign i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_c = i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_in[2:0];
    assign i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_d = i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_in[5:4];
    assign i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_e = i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_in[8:8];

    // i_spec_select129_eia608_from_utf880_vt_join(BITJOIN,617)@111
    assign i_spec_select129_eia608_from_utf880_vt_join_q = {i_acl_127_eia608_from_utf84_vt_const_31_q, i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_b, i_spec_select129_eia608_from_utf880_vt_const_11_q, i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_e, i_acl_127_eia608_from_utf84_vt_const_11_q, i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_d, GND_q, i_spec_select129_eia608_from_utf880_vt_select_12_merged_bit_select_c};

    // i_and_eia608_from_utf87_vt_const_31(CONSTANT,353)
    assign i_and_eia608_from_utf87_vt_const_31_q = $unsigned(16'b0000000000000000);

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_notEnable(LOGICAL,1040)
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_nor(LOGICAL,1041)
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_nor_q = ~ (redist123_i_and_eia608_from_utf87_vt_select_15_b_13_notEnable_q | redist123_i_and_eia608_from_utf87_vt_select_15_b_13_sticky_ena_q);

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_last(CONSTANT,1037)
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_last_q = $unsigned(5'b01010);

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmp(LOGICAL,1038)
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmp_b = {1'b0, redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_q};
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmp_q = $unsigned(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_last_q == redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmp_b ? 1'b1 : 1'b0);

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmpReg(REG,1039)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmpReg_q <= $unsigned(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmp_q);
        end
    end

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_sticky_ena(REG,1042)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist123_i_and_eia608_from_utf87_vt_select_15_b_13_nor_q == 1'b1)
        begin
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_sticky_ena_q <= $unsigned(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_cmpReg_q);
        end
    end

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_enaAnd(LOGICAL,1043)
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_enaAnd_q = redist123_i_and_eia608_from_utf87_vt_select_15_b_13_sticky_ena_q & VCC_q;

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt(COUNTER,1035)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i <= 4'd0;
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i == 4'd10)
            begin
                redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_eq == 1'b1)
            begin
                redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i <= $unsigned(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i <= $unsigned(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_q = redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_i[3:0];

    // leftShiftStage0Idx1Rng8_uid874_i_shl_eia608_from_utf80_shift_x(BITSELECT,873)@97
    assign leftShiftStage0Idx1Rng8_uid874_i_shl_eia608_from_utf80_shift_x_in = in_c1_eni29_5_tpl[23:0];
    assign leftShiftStage0Idx1Rng8_uid874_i_shl_eia608_from_utf80_shift_x_b = leftShiftStage0Idx1Rng8_uid874_i_shl_eia608_from_utf80_shift_x_in[23:0];

    // leftShiftStage0Idx1_uid875_i_shl_eia608_from_utf80_shift_x(BITJOIN,874)@97
    assign leftShiftStage0Idx1_uid875_i_shl_eia608_from_utf80_shift_x_q = {leftShiftStage0Idx1Rng8_uid874_i_shl_eia608_from_utf80_shift_x_b, i_and_eia608_from_utf87_vt_const_7_q};

    // leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x(MUX,876)@97
    assign leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_s or in_c1_eni29_5_tpl or leftShiftStage0Idx1_uid875_i_shl_eia608_from_utf80_shift_x_q)
    begin
        unique case (leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_s)
            1'b0 : leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_q = in_c1_eni29_5_tpl;
            1'b1 : leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_q = leftShiftStage0Idx1_uid875_i_shl_eia608_from_utf80_shift_x_q;
            default : leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_q = 32'b0;
        endcase
    end

    // i_shl_eia608_from_utf86_vt_select_31(BITSELECT,606)@97
    assign i_shl_eia608_from_utf86_vt_select_31_b = leftShiftStage0_uid877_i_shl_eia608_from_utf80_shift_x_q[31:8];

    // i_shl_eia608_from_utf86_vt_join(BITJOIN,605)@97
    assign i_shl_eia608_from_utf86_vt_join_q = {i_shl_eia608_from_utf86_vt_select_31_b, i_and_eia608_from_utf87_vt_const_7_q};

    // i_and_eia608_from_utf87_BitSelect_for_a(BITSELECT,868)@97
    assign i_and_eia608_from_utf87_BitSelect_for_a_b = i_shl_eia608_from_utf86_vt_join_q[15:8];

    // i_and_eia608_from_utf87_join(BITJOIN,869)@97
    assign i_and_eia608_from_utf87_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and_eia608_from_utf87_BitSelect_for_a_b, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q};

    // i_and_eia608_from_utf87_vt_select_15(BITSELECT,356)@97
    assign i_and_eia608_from_utf87_vt_select_15_b = i_and_eia608_from_utf87_join_q[15:8];

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_wraddr(REG,1036)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist123_i_and_eia608_from_utf87_vt_select_15_b_13_wraddr_q <= $unsigned(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_q);
        end
    end

    // redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem(DUALMEM,1034)
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_ia = $unsigned(i_and_eia608_from_utf87_vt_select_15_b);
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_aa = redist123_i_and_eia608_from_utf87_vt_select_15_b_13_wraddr_q;
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_ab = redist123_i_and_eia608_from_utf87_vt_select_15_b_13_rdcnt_q;
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_dmem (
        .clocken1(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_aa),
        .data_a(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_ab),
        .q_b(redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_q = redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_iq[7:0];

    // i_and_eia608_from_utf87_vt_const_7(CONSTANT,354)
    assign i_and_eia608_from_utf87_vt_const_7_q = $unsigned(8'b00000000);

    // i_and_eia608_from_utf87_vt_join(BITJOIN,355)@110
    assign i_and_eia608_from_utf87_vt_join_q = {i_and_eia608_from_utf87_vt_const_31_q, redist123_i_and_eia608_from_utf87_vt_select_15_b_13_mem_q, i_and_eia608_from_utf87_vt_const_7_q};

    // c_i32_4403741(CONSTANT,18)
    assign c_i32_4403741_q = $unsigned(32'b00000000000000000001000100110011);

    // c_i32_4402740(CONSTANT,17)
    assign c_i32_4402740_q = $unsigned(32'b00000000000000000001000100110010);

    // c_i32_4671739(CONSTANT,62)
    assign c_i32_4671739_q = $unsigned(32'b00000000000000000001001000111111);

    // c_i32_4401738(CONSTANT,16)
    assign c_i32_4401738_q = $unsigned(32'b00000000000000000001000100110001);

    // c_i32_4400737(CONSTANT,15)
    assign c_i32_4400737_q = $unsigned(32'b00000000000000000001000100110000);

    // c_i32_4670736(CONSTANT,61)
    assign c_i32_4670736_q = $unsigned(32'b00000000000000000001001000111110);

    // c_i32_4651735(CONSTANT,42)
    assign c_i32_4651735_q = $unsigned(32'b00000000000000000001001000101011);

    // c_i32_4919734(CONSTANT,86)
    assign c_i32_4919734_q = $unsigned(32'b00000000000000000001001100110111);

    // c_i32_4917733(CONSTANT,84)
    assign c_i32_4917733_q = $unsigned(32'b00000000000000000001001100110101);

    // c_i32_4918732(CONSTANT,85)
    assign c_i32_4918732_q = $unsigned(32'b00000000000000000001001100110110);

    // c_i32_4406731(CONSTANT,21)
    assign c_i32_4406731_q = $unsigned(32'b00000000000000000001000100110110);

    // c_i32_4405730(CONSTANT,20)
    assign c_i32_4405730_q = $unsigned(32'b00000000000000000001000100110101);

    // c_i32_4647729(CONSTANT,38)
    assign c_i32_4647729_q = $unsigned(32'b00000000000000000001001000100111);

    // c_i32_4409728(CONSTANT,24)
    assign c_i32_4409728_q = $unsigned(32'b00000000000000000001000100111001);

    // c_i32_4645727(CONSTANT,36)
    assign c_i32_4645727_q = $unsigned(32'b00000000000000000001001000100101);

    // c_i32_4415726(CONSTANT,30)
    assign c_i32_4415726_q = $unsigned(32'b00000000000000000001000100111111);

    // c_i32_24576725(CONSTANT,9)
    assign c_i32_24576725_q = $unsigned(32'b00000000000000000110000000000000);

    // c_i32_4668724(CONSTANT,59)
    assign c_i32_4668724_q = $unsigned(32'b00000000000000000001001000111100);

    // c_i32_4923723(CONSTANT,90)
    assign c_i32_4923723_q = $unsigned(32'b00000000000000000001001100111011);

    // c_i32_31744722(CONSTANT,11)
    assign c_i32_31744722_q = $unsigned(32'b00000000000000000111110000000000);

    // c_i32_4915721(CONSTANT,82)
    assign c_i32_4915721_q = $unsigned(32'b00000000000000000001001100110011);

    // c_i32_4904720(CONSTANT,71)
    assign c_i32_4904720_q = $unsigned(32'b00000000000000000001001100101000);

    // c_i32_4414719(CONSTANT,29)
    assign c_i32_4414719_q = $unsigned(32'b00000000000000000001000100111110);

    // c_i32_24320718(CONSTANT,8)
    assign c_i32_24320718_q = $unsigned(32'b00000000000000000101111100000000);

    // c_i32_4902717(CONSTANT,69)
    assign c_i32_4902717_q = $unsigned(32'b00000000000000000001001100100110);

    // c_i32_32256716(CONSTANT,13)
    assign c_i32_32256716_q = $unsigned(32'b00000000000000000111111000000000);

    // c_i32_4665715(CONSTANT,56)
    assign c_i32_4665715_q = $unsigned(32'b00000000000000000001001000111001);

    // c_i32_4413714(CONSTANT,28)
    assign c_i32_4413714_q = $unsigned(32'b00000000000000000001000100111101);

    // c_i32_24064713(CONSTANT,7)
    assign c_i32_24064713_q = $unsigned(32'b00000000000000000101111000000000);

    // c_i32_4900712(CONSTANT,67)
    assign c_i32_4900712_q = $unsigned(32'b00000000000000000001001100100100);

    // c_i32_4662711(CONSTANT,53)
    assign c_i32_4662711_q = $unsigned(32'b00000000000000000001001000110110);

    // c_i32_4412710(CONSTANT,27)
    assign c_i32_4412710_q = $unsigned(32'b00000000000000000001000100111100);

    // c_i32_23552709(CONSTANT,6)
    assign c_i32_23552709_q = $unsigned(32'b00000000000000000101110000000000);

    // c_i32_4410708(CONSTANT,25)
    assign c_i32_4410708_q = $unsigned(32'b00000000000000000001000100111010);

    // c_i32_31488707(CONSTANT,10)
    assign c_i32_31488707_q = $unsigned(32'b00000000000000000111101100000000);

    // c_i32_4921706(CONSTANT,88)
    assign c_i32_4921706_q = $unsigned(32'b00000000000000000001001100111001);

    // c_i32_4913705(CONSTANT,80)
    assign c_i32_4913705_q = $unsigned(32'b00000000000000000001001100110001);

    // c_i32_4897704(CONSTANT,64)
    assign c_i32_4897704_q = $unsigned(32'b00000000000000000001001100100001);

    // c_i32_4411703(CONSTANT,26)
    assign c_i32_4411703_q = $unsigned(32'b00000000000000000001000100111011);

    // c_i32_10752702(CONSTANT,5)
    assign c_i32_10752702_q = $unsigned(32'b00000000000000000010101000000000);

    // c_i32_4408701(CONSTANT,23)
    assign c_i32_4408701_q = $unsigned(32'b00000000000000000001000100111000);

    // c_i32_4916700(CONSTANT,83)
    assign c_i32_4916700_q = $unsigned(32'b00000000000000000001001100110100);

    // c_i32_4644699(CONSTANT,35)
    assign c_i32_4644699_q = $unsigned(32'b00000000000000000001001000100100);

    // c_i32_4669698(CONSTANT,60)
    assign c_i32_4669698_q = $unsigned(32'b00000000000000000001001000111101);

    // c_i32_4643697(CONSTANT,34)
    assign c_i32_4643697_q = $unsigned(32'b00000000000000000001001000100011);

    // c_i32_4667696(CONSTANT,58)
    assign c_i32_4667696_q = $unsigned(32'b00000000000000000001001000111011);

    // c_i32_4922695(CONSTANT,89)
    assign c_i32_4922695_q = $unsigned(32'b00000000000000000001001100111010);

    // c_i32_4914694(CONSTANT,81)
    assign c_i32_4914694_q = $unsigned(32'b00000000000000000001001100110010);

    // c_i32_4903693(CONSTANT,70)
    assign c_i32_4903693_q = $unsigned(32'b00000000000000000001001100100111);

    // c_i32_4666692(CONSTANT,57)
    assign c_i32_4666692_q = $unsigned(32'b00000000000000000001001000111010);

    // c_i32_4642691(CONSTANT,33)
    assign c_i32_4642691_q = $unsigned(32'b00000000000000000001001000100010);

    // c_i32_4901690(CONSTANT,68)
    assign c_i32_4901690_q = $unsigned(32'b00000000000000000001001100100101);

    // c_i32_32000689(CONSTANT,12)
    assign c_i32_32000689_q = $unsigned(32'b00000000000000000111110100000000);

    // c_i32_4664688(CONSTANT,55)
    assign c_i32_4664688_q = $unsigned(32'b00000000000000000001001000111000);

    // c_i32_4663687(CONSTANT,54)
    assign c_i32_4663687_q = $unsigned(32'b00000000000000000001001000110111);

    // c_i32_4898686(CONSTANT,65)
    assign c_i32_4898686_q = $unsigned(32'b00000000000000000001001100100010);

    // c_i32_4899685(CONSTANT,66)
    assign c_i32_4899685_q = $unsigned(32'b00000000000000000001001100100011);

    // c_i32_4661684(CONSTANT,52)
    assign c_i32_4661684_q = $unsigned(32'b00000000000000000001001000110101);

    // c_i32_4660683(CONSTANT,51)
    assign c_i32_4660683_q = $unsigned(32'b00000000000000000001001000110100);

    // c_i32_4641682(CONSTANT,32)
    assign c_i32_4641682_q = $unsigned(32'b00000000000000000001001000100001);

    // c_i32_4659681(CONSTANT,50)
    assign c_i32_4659681_q = $unsigned(32'b00000000000000000001001000110011);

    // c_i32_4658680(CONSTANT,49)
    assign c_i32_4658680_q = $unsigned(32'b00000000000000000001001000110010);

    // c_i32_4920679(CONSTANT,87)
    assign c_i32_4920679_q = $unsigned(32'b00000000000000000001001100111000);

    // c_i32_4912678(CONSTANT,79)
    assign c_i32_4912678_q = $unsigned(32'b00000000000000000001001100110000);

    // c_i32_4896677(CONSTANT,63)
    assign c_i32_4896677_q = $unsigned(32'b00000000000000000001001100100000);

    // c_i32_4657676(CONSTANT,48)
    assign c_i32_4657676_q = $unsigned(32'b00000000000000000001001000110001);

    // c_i32_4640675(CONSTANT,31)
    assign c_i32_4640675_q = $unsigned(32'b00000000000000000001001000100000);

    // c_i32_4656674(CONSTANT,47)
    assign c_i32_4656674_q = $unsigned(32'b00000000000000000001001000110000);

    // c_i32_4927673(CONSTANT,94)
    assign c_i32_4927673_q = $unsigned(32'b00000000000000000001001100111111);

    // c_i32_4926672(CONSTANT,93)
    assign c_i32_4926672_q = $unsigned(32'b00000000000000000001001100111110);

    // c_i32_4925671(CONSTANT,92)
    assign c_i32_4925671_q = $unsigned(32'b00000000000000000001001100111101);

    // c_i32_4924670(CONSTANT,91)
    assign c_i32_4924670_q = $unsigned(32'b00000000000000000001001100111100);

    // c_i32_4653669(CONSTANT,44)
    assign c_i32_4653669_q = $unsigned(32'b00000000000000000001001000101101);

    // c_i32_4655668(CONSTANT,46)
    assign c_i32_4655668_q = $unsigned(32'b00000000000000000001001000101111);

    // c_i32_4654667(CONSTANT,45)
    assign c_i32_4654667_q = $unsigned(32'b00000000000000000001001000101110);

    // c_i32_9984666(CONSTANT,97)
    assign c_i32_9984666_q = $unsigned(32'b00000000000000000010011100000000);

    // c_i32_4646587(CONSTANT,37)
    assign c_i32_4646587_q = $unsigned(32'b00000000000000000001001000100110);

    // c_i32_4650665(CONSTANT,41)
    assign c_i32_4650665_q = $unsigned(32'b00000000000000000001001000101010);

    // i_acl_126_eia608_from_utf88_vt_const_31(CONSTANT,162)
    assign i_acl_126_eia608_from_utf88_vt_const_31_q = $unsigned(29'b00000000000000000001001100101);

    // c_i32_4905596(CONSTANT,72)
    assign c_i32_4905596_q = $unsigned(32'b00000000000000000001001100101001);

    // c_i32_4910595(CONSTANT,77)
    assign c_i32_4910595_q = $unsigned(32'b00000000000000000001001100101110);

    // redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2(DELAY,895)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_delay_0 <= '0;
            redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_delay_0 <= $unsigned(in_c1_eni29_6_tpl);
            redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_q <= redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_delay_0;
        end
    end

    // i_acl_126_eia608_from_utf88(MUX,161)@99
    assign i_acl_126_eia608_from_utf88_s = redist6_sync_together743_aunroll_x_in_c1_eni29_6_tpl_2_q;
    always @(i_acl_126_eia608_from_utf88_s or c_i32_4910595_q or c_i32_4905596_q)
    begin
        unique case (i_acl_126_eia608_from_utf88_s)
            1'b0 : i_acl_126_eia608_from_utf88_q = c_i32_4910595_q;
            1'b1 : i_acl_126_eia608_from_utf88_q = c_i32_4905596_q;
            default : i_acl_126_eia608_from_utf88_q = 32'b0;
        endcase
    end

    // i_acl_126_eia608_from_utf88_vt_select_2(BITSELECT,164)@99
    assign i_acl_126_eia608_from_utf88_vt_select_2_b = i_acl_126_eia608_from_utf88_q[2:0];

    // i_acl_126_eia608_from_utf88_vt_join(BITJOIN,163)@99
    assign i_acl_126_eia608_from_utf88_vt_join_q = {i_acl_126_eia608_from_utf88_vt_const_31_q, i_acl_126_eia608_from_utf88_vt_select_2_b};

    // c_i32_4649664(CONSTANT,40)
    assign c_i32_4649664_q = $unsigned(32'b00000000000000000001001000101001);

    // c_i32_4648663(CONSTANT,39)
    assign c_i32_4648663_q = $unsigned(32'b00000000000000000001001000101000);

    // c_i32_4907662(CONSTANT,74)
    assign c_i32_4907662_q = $unsigned(32'b00000000000000000001001100101011);

    // i_acl_221_eia608_from_utf8189_vt_const_31(CONSTANT,178)
    assign i_acl_221_eia608_from_utf8189_vt_const_31_q = $unsigned(17'b00000000000000000);

    // i_acl_eia608_from_utf82_vt_const_31(CONSTANT,346)
    assign i_acl_eia608_from_utf82_vt_const_31_q = $unsigned(23'b00000000000000000001001);

    // i_acl_eia608_from_utf82_vt_const_7(CONSTANT,347)
    assign i_acl_eia608_from_utf82_vt_const_7_q = $unsigned(4'b0010);

    // c_i32_4908589(CONSTANT,75)
    assign c_i32_4908589_q = $unsigned(32'b00000000000000000001001100101100);

    // c_i32_4909588(CONSTANT,76)
    assign c_i32_4909588_q = $unsigned(32'b00000000000000000001001100101101);

    // redist2_sync_together743_aunroll_x_in_c1_eni29_1_tpl_1(DELAY,891)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together743_aunroll_x_in_c1_eni29_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together743_aunroll_x_in_c1_eni29_1_tpl_1_q <= $unsigned(in_c1_eni29_1_tpl);
        end
    end

    // i_acl_eia608_from_utf82(MUX,344)@98
    assign i_acl_eia608_from_utf82_s = redist2_sync_together743_aunroll_x_in_c1_eni29_1_tpl_1_q;
    always @(i_acl_eia608_from_utf82_s or c_i32_4646587_q or c_i32_4909588_q)
    begin
        unique case (i_acl_eia608_from_utf82_s)
            1'b0 : i_acl_eia608_from_utf82_q = c_i32_4646587_q;
            1'b1 : i_acl_eia608_from_utf82_q = c_i32_4909588_q;
            default : i_acl_eia608_from_utf82_q = 32'b0;
        endcase
    end

    // i_acl_eia608_from_utf82_vt_select_1_merged_bit_select(BITSELECT,883)@98
    assign i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_in = i_acl_eia608_from_utf82_q[8:0];
    assign i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_b = i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_in[1:0];
    assign i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_c = i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_in[3:3];
    assign i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_d = i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_in[8:8];

    // i_acl_eia608_from_utf82_vt_join(BITJOIN,348)@98
    assign i_acl_eia608_from_utf82_vt_join_q = {i_acl_eia608_from_utf82_vt_const_31_q, i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_d, i_acl_eia608_from_utf82_vt_const_7_q, i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_c, VCC_q, i_acl_eia608_from_utf82_vt_select_1_merged_bit_select_b};

    // redist3_sync_together743_aunroll_x_in_c1_eni29_2_tpl_1(DELAY,892)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together743_aunroll_x_in_c1_eni29_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together743_aunroll_x_in_c1_eni29_2_tpl_1_q <= $unsigned(in_c1_eni29_2_tpl);
        end
    end

    // i_unnamed_eia608_from_utf83(MUX,663)@98
    assign i_unnamed_eia608_from_utf83_s = redist3_sync_together743_aunroll_x_in_c1_eni29_2_tpl_1_q;
    always @(i_unnamed_eia608_from_utf83_s or i_acl_eia608_from_utf82_vt_join_q or c_i32_4908589_q)
    begin
        unique case (i_unnamed_eia608_from_utf83_s)
            1'b0 : i_unnamed_eia608_from_utf83_q = i_acl_eia608_from_utf82_vt_join_q;
            1'b1 : i_unnamed_eia608_from_utf83_q = c_i32_4908589_q;
            default : i_unnamed_eia608_from_utf83_q = 32'b0;
        endcase
    end

    // i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select(BITSELECT,886)@98
    assign i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_in = i_unnamed_eia608_from_utf83_q[8:0];
    assign i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_b = i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_in[1:0];
    assign i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_c = i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_in[3:3];
    assign i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_d = i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_in[8:8];

    // i_unnamed_eia608_from_utf83_vt_join(BITJOIN,667)@98
    assign i_unnamed_eia608_from_utf83_vt_join_q = {i_acl_eia608_from_utf82_vt_const_31_q, i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_d, i_acl_eia608_from_utf82_vt_const_7_q, i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_c, VCC_q, i_unnamed_eia608_from_utf83_vt_select_1_merged_bit_select_b};

    // c_i32_4906592(CONSTANT,73)
    assign c_i32_4906592_q = $unsigned(32'b00000000000000000001001100101010);

    // c_i32_4911591(CONSTANT,78)
    assign c_i32_4911591_q = $unsigned(32'b00000000000000000001001100101111);

    // redist4_sync_together743_aunroll_x_in_c1_eni29_3_tpl_1(DELAY,893)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together743_aunroll_x_in_c1_eni29_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together743_aunroll_x_in_c1_eni29_3_tpl_1_q <= $unsigned(in_c1_eni29_3_tpl);
        end
    end

    // i_acl_127_eia608_from_utf84(MUX,166)@98
    assign i_acl_127_eia608_from_utf84_s = redist4_sync_together743_aunroll_x_in_c1_eni29_3_tpl_1_q;
    always @(i_acl_127_eia608_from_utf84_s or c_i32_0590_q or c_i32_4911591_q)
    begin
        unique case (i_acl_127_eia608_from_utf84_s)
            1'b0 : i_acl_127_eia608_from_utf84_q = c_i32_0590_q;
            1'b1 : i_acl_127_eia608_from_utf84_q = c_i32_4911591_q;
            default : i_acl_127_eia608_from_utf84_q = 32'b0;
        endcase
    end

    // i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select(BITSELECT,878)@98
    assign i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_in = i_acl_127_eia608_from_utf84_q[12:0];
    assign i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_b = i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_in[12:12];
    assign i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_c = i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_in[3:0];
    assign i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_d = i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_in[5:5];
    assign i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_e = i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_in[9:8];

    // i_acl_127_eia608_from_utf84_vt_join(BITJOIN,171)@98
    assign i_acl_127_eia608_from_utf84_vt_join_q = {i_acl_127_eia608_from_utf84_vt_const_31_q, i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_b, i_acl_127_eia608_from_utf84_vt_const_11_q, i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_e, i_acl_127_eia608_from_utf84_vt_const_11_q, i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_d, GND_q, i_acl_127_eia608_from_utf84_vt_select_12_merged_bit_select_c};

    // redist5_sync_together743_aunroll_x_in_c1_eni29_4_tpl_1(DELAY,894)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together743_aunroll_x_in_c1_eni29_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together743_aunroll_x_in_c1_eni29_4_tpl_1_q <= $unsigned(in_c1_eni29_4_tpl);
        end
    end

    // i_unnamed_eia608_from_utf85(MUX,671)@98
    assign i_unnamed_eia608_from_utf85_s = redist5_sync_together743_aunroll_x_in_c1_eni29_4_tpl_1_q;
    always @(i_unnamed_eia608_from_utf85_s or i_acl_127_eia608_from_utf84_vt_join_q or c_i32_4906592_q)
    begin
        unique case (i_unnamed_eia608_from_utf85_s)
            1'b0 : i_unnamed_eia608_from_utf85_q = i_acl_127_eia608_from_utf84_vt_join_q;
            1'b1 : i_unnamed_eia608_from_utf85_q = c_i32_4906592_q;
            default : i_unnamed_eia608_from_utf85_q = 32'b0;
        endcase
    end

    // i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select(BITSELECT,887)@98
    assign i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_in = i_unnamed_eia608_from_utf85_q[12:0];
    assign i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_b = i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_in[12:12];
    assign i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_c = i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_in[3:0];
    assign i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_d = i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_in[5:5];
    assign i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_e = i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_in[9:8];

    // i_unnamed_eia608_from_utf85_vt_join(BITJOIN,676)@98
    assign i_unnamed_eia608_from_utf85_vt_join_q = {i_acl_127_eia608_from_utf84_vt_const_31_q, i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_b, i_acl_127_eia608_from_utf84_vt_const_11_q, i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_e, i_acl_127_eia608_from_utf84_vt_const_11_q, i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_d, GND_q, i_unnamed_eia608_from_utf85_vt_select_12_merged_bit_select_c};

    // c_i32_4652626(CONSTANT,43)
    assign c_i32_4652626_q = $unsigned(32'b00000000000000000001001000101100);

    // c_i32_4404625(CONSTANT,19)
    assign c_i32_4404625_q = $unsigned(32'b00000000000000000001000100110100);

    // c_i8_94612_recast_x(CONSTANT,831)
    assign c_i8_94612_recast_x_q = $unsigned(8'b10100010);

    // i_cmp259_eia608_from_utf869(LOGICAL,357)@97
    assign i_cmp259_eia608_from_utf869_q = $unsigned(in_c1_eni29_8_tpl == c_i8_94612_recast_x_q ? 1'b1 : 1'b0);

    // redist121_i_cmp259_eia608_from_utf869_q_1(DELAY,1010)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist121_i_cmp259_eia608_from_utf869_q_1_q <= '0;
        end
        else
        begin
            redist121_i_cmp259_eia608_from_utf869_q_1_q <= $unsigned(i_cmp259_eia608_from_utf869_q);
        end
    end

    // i_spec_select_eia608_from_utf871(MUX,622)@98
    assign i_spec_select_eia608_from_utf871_s = redist121_i_cmp259_eia608_from_utf869_q_1_q;
    always @(i_spec_select_eia608_from_utf871_s or c_i32_0590_q or c_i32_4404625_q)
    begin
        unique case (i_spec_select_eia608_from_utf871_s)
            1'b0 : i_spec_select_eia608_from_utf871_q = c_i32_0590_q;
            1'b1 : i_spec_select_eia608_from_utf871_q = c_i32_4404625_q;
            default : i_spec_select_eia608_from_utf871_q = 32'b0;
        endcase
    end

    // i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select(BITSELECT,885)@98
    assign i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_in = i_spec_select_eia608_from_utf871_q[12:0];
    assign i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_b = i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_in[12:12];
    assign i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_c = i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_in[2:2];
    assign i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_d = i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_in[5:4];
    assign i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_e = i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_in[8:8];

    // i_spec_select_eia608_from_utf871_vt_join(BITJOIN,628)@98
    assign i_spec_select_eia608_from_utf871_vt_join_q = {i_acl_127_eia608_from_utf84_vt_const_31_q, i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_b, i_spec_select129_eia608_from_utf880_vt_const_11_q, i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_e, i_acl_127_eia608_from_utf84_vt_const_11_q, i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_d, GND_q, i_spec_select_eia608_from_utf871_vt_select_12_merged_bit_select_c, i_acl_127_eia608_from_utf84_vt_const_11_q};

    // c_i8_96599_recast_x(CONSTANT,833)
    assign c_i8_96599_recast_x_q = $unsigned(8'b10100000);

    // i_switchleaf_eia608_from_utf839(LOGICAL,660)@98
    assign i_switchleaf_eia608_from_utf839_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_96599_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_eia608_from_utf872(MUX,681)@98
    assign i_unnamed_eia608_from_utf872_s = i_switchleaf_eia608_from_utf839_q;
    always @(i_unnamed_eia608_from_utf872_s or i_spec_select_eia608_from_utf871_vt_join_q or c_i32_4652626_q)
    begin
        unique case (i_unnamed_eia608_from_utf872_s)
            1'b0 : i_unnamed_eia608_from_utf872_q = i_spec_select_eia608_from_utf871_vt_join_q;
            1'b1 : i_unnamed_eia608_from_utf872_q = c_i32_4652626_q;
            default : i_unnamed_eia608_from_utf872_q = 32'b0;
        endcase
    end

    // i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select(BITSELECT,888)@98
    assign i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_in = i_unnamed_eia608_from_utf872_q[12:0];
    assign i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_b = i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_in[12:12];
    assign i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_c = i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_in[5:2];
    assign i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_d = i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_in[9:8];

    // i_unnamed_eia608_from_utf872_vt_join(BITJOIN,686)@98
    assign i_unnamed_eia608_from_utf872_vt_join_q = {i_acl_127_eia608_from_utf84_vt_const_31_q, i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_b, i_acl_127_eia608_from_utf84_vt_const_11_q, i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_d, i_acl_127_eia608_from_utf84_vt_const_11_q, i_unnamed_eia608_from_utf872_vt_select_12_merged_bit_select_c, i_acl_127_eia608_from_utf84_vt_const_11_q};

    // c_i32_32512629(CONSTANT,14)
    assign c_i32_32512629_q = $unsigned(32'b00000000000000000111111100000000);

    // c_i8_120628_recast_x(CONSTANT,795)
    assign c_i8_120628_recast_x_q = $unsigned(8'b10001000);

    // i_cmp271_eia608_from_utf875(LOGICAL,358)@98
    assign i_cmp271_eia608_from_utf875_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_120628_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select128_eia608_from_utf877(MUX,607)@98
    assign i_spec_select128_eia608_from_utf877_s = i_cmp271_eia608_from_utf875_q;
    always @(i_spec_select128_eia608_from_utf877_s or c_i32_0590_q or c_i32_32512629_q)
    begin
        unique case (i_spec_select128_eia608_from_utf877_s)
            1'b0 : i_spec_select128_eia608_from_utf877_q = c_i32_0590_q;
            1'b1 : i_spec_select128_eia608_from_utf877_q = c_i32_32512629_q;
            default : i_spec_select128_eia608_from_utf877_q = 32'b0;
        endcase
    end

    // i_spec_select128_eia608_from_utf877_vt_select_14(BITSELECT,611)@98
    assign i_spec_select128_eia608_from_utf877_vt_select_14_b = i_spec_select128_eia608_from_utf877_q[14:8];

    // i_spec_select128_eia608_from_utf877_vt_join(BITJOIN,610)@98
    assign i_spec_select128_eia608_from_utf877_vt_join_q = {i_acl_221_eia608_from_utf8189_vt_const_31_q, i_spec_select128_eia608_from_utf877_vt_select_14_b, i_and_eia608_from_utf87_vt_const_7_q};

    // redist12_sync_together743_aunroll_x_in_c1_eni29_9_tpl_1(DELAY,901)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together743_aunroll_x_in_c1_eni29_9_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together743_aunroll_x_in_c1_eni29_9_tpl_1_q <= $unsigned(in_c1_eni29_9_tpl);
        end
    end

    // i_acl_221_eia608_from_utf8189(MUX,176)@98
    assign i_acl_221_eia608_from_utf8189_s = redist12_sync_together743_aunroll_x_in_c1_eni29_9_tpl_1_q;
    always @(i_acl_221_eia608_from_utf8189_s or i_spec_select128_eia608_from_utf877_vt_join_q or i_unnamed_eia608_from_utf872_vt_join_q)
    begin
        unique case (i_acl_221_eia608_from_utf8189_s)
            1'b0 : i_acl_221_eia608_from_utf8189_q = i_spec_select128_eia608_from_utf877_vt_join_q;
            1'b1 : i_acl_221_eia608_from_utf8189_q = i_unnamed_eia608_from_utf872_vt_join_q;
            default : i_acl_221_eia608_from_utf8189_q = 32'b0;
        endcase
    end

    // i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select(BITSELECT,879)@98
    assign i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_in = i_acl_221_eia608_from_utf8189_q[14:0];
    assign i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_b = i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_in[14:8];
    assign i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_c = i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_in[5:2];

    // i_acl_221_eia608_from_utf8189_vt_join(BITJOIN,180)@98
    assign i_acl_221_eia608_from_utf8189_vt_join_q = {i_acl_221_eia608_from_utf8189_vt_const_31_q, i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_b, i_acl_127_eia608_from_utf84_vt_const_11_q, i_acl_221_eia608_from_utf8189_vt_select_14_merged_bit_select_c, i_acl_127_eia608_from_utf84_vt_const_11_q};

    // redist14_sync_together743_aunroll_x_in_c1_eni29_13_tpl_1(DELAY,903)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together743_aunroll_x_in_c1_eni29_13_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together743_aunroll_x_in_c1_eni29_13_tpl_1_q <= $unsigned(in_c1_eni29_13_tpl);
        end
    end

    // c_i8_108627_recast_x(CONSTANT,783)
    assign c_i8_108627_recast_x_q = $unsigned(8'b10010100);

    // i_switchleaf183_eia608_from_utf8160(LOGICAL,640)@97
    assign i_switchleaf183_eia608_from_utf8160_q = $unsigned(in_c1_eni29_8_tpl == c_i8_108627_recast_x_q ? 1'b1 : 1'b0);

    // i_switchleaf183_not_eia608_from_utf8162(LOGICAL,641)@97
    assign i_switchleaf183_not_eia608_from_utf8162_q = i_switchleaf183_eia608_from_utf8160_q ^ VCC_q;

    // c_i8_103652_recast_x(CONSTANT,779)
    assign c_i8_103652_recast_x_q = $unsigned(8'b10011001);

    // i_switchleaf185_eia608_from_utf8184(LOGICAL,642)@97
    assign i_switchleaf185_eia608_from_utf8184_q = $unsigned(in_c1_eni29_8_tpl == c_i8_103652_recast_x_q ? 1'b1 : 1'b0);

    // i_switchleaf185_not_eia608_from_utf8186(LOGICAL,643)@97
    assign i_switchleaf185_not_eia608_from_utf8186_q = i_switchleaf185_eia608_from_utf8184_q ^ VCC_q;

    // i_pivot85_eia608_from_utf8140(COMPARE,414)@97
    assign i_pivot85_eia608_from_utf8140_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot85_eia608_from_utf8140_b = $unsigned({{2{c_i8_103652_recast_x_q[7]}}, c_i8_103652_recast_x_q});
    assign i_pivot85_eia608_from_utf8140_o = $unsigned($signed(i_pivot85_eia608_from_utf8140_a) - $signed(i_pivot85_eia608_from_utf8140_b));
    assign i_pivot85_eia608_from_utf8140_c[0] = i_pivot85_eia608_from_utf8140_o[9];

    // i_acl_222_eia608_from_utf8190(LOGICAL,183)@97
    assign i_acl_222_eia608_from_utf8190_q = i_pivot85_eia608_from_utf8140_c ^ i_switchleaf185_not_eia608_from_utf8186_q;

    // c_i8_104636_recast_x(CONSTANT,780)
    assign c_i8_104636_recast_x_q = $unsigned(8'b10011000);

    // i_pivot87_eia608_from_utf8106(COMPARE,415)@97
    assign i_pivot87_eia608_from_utf8106_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot87_eia608_from_utf8106_b = $unsigned({{2{c_i8_104636_recast_x_q[7]}}, c_i8_104636_recast_x_q});
    assign i_pivot87_eia608_from_utf8106_o = $unsigned($signed(i_pivot87_eia608_from_utf8106_a) - $signed(i_pivot87_eia608_from_utf8106_b));
    assign i_pivot87_eia608_from_utf8106_c[0] = i_pivot87_eia608_from_utf8106_o[9];

    // i_acl_223_eia608_from_utf8191(MUX,184)@97
    assign i_acl_223_eia608_from_utf8191_s = i_pivot87_eia608_from_utf8106_c;
    always @(i_acl_223_eia608_from_utf8191_s or i_acl_222_eia608_from_utf8190_q or i_switchleaf183_not_eia608_from_utf8162_q)
    begin
        unique case (i_acl_223_eia608_from_utf8191_s)
            1'b0 : i_acl_223_eia608_from_utf8191_q = i_acl_222_eia608_from_utf8190_q;
            1'b1 : i_acl_223_eia608_from_utf8191_q = i_switchleaf183_not_eia608_from_utf8162_q;
            default : i_acl_223_eia608_from_utf8191_q = 1'b0;
        endcase
    end

    // c_i8_99642_recast_x(CONSTANT,835)
    assign c_i8_99642_recast_x_q = $unsigned(8'b10011101);

    // i_switchleaf191_eia608_from_utf8187(LOGICAL,645)@97
    assign i_switchleaf191_eia608_from_utf8187_q = $unsigned(in_c1_eni29_8_tpl == c_i8_99642_recast_x_q ? 1'b1 : 1'b0);

    // i_pivot_eia608_from_utf841(COMPARE,421)@97
    assign i_pivot_eia608_from_utf841_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot_eia608_from_utf841_b = $unsigned({{2{c_i8_94612_recast_x_q[7]}}, c_i8_94612_recast_x_q});
    assign i_pivot_eia608_from_utf841_o = $unsigned($signed(i_pivot_eia608_from_utf841_a) - $signed(i_pivot_eia608_from_utf841_b));
    assign i_pivot_eia608_from_utf841_c[0] = i_pivot_eia608_from_utf841_o[9];

    // i_acl_224_v_eia608_from_utf8192(MUX,186)@97
    assign i_acl_224_v_eia608_from_utf8192_s = i_pivot_eia608_from_utf841_c;
    always @(i_acl_224_v_eia608_from_utf8192_s or i_cmp259_eia608_from_utf869_q or i_switchleaf191_eia608_from_utf8187_q)
    begin
        unique case (i_acl_224_v_eia608_from_utf8192_s)
            1'b0 : i_acl_224_v_eia608_from_utf8192_q = i_cmp259_eia608_from_utf869_q;
            1'b1 : i_acl_224_v_eia608_from_utf8192_q = i_switchleaf191_eia608_from_utf8187_q;
            default : i_acl_224_v_eia608_from_utf8192_q = 1'b0;
        endcase
    end

    // i_acl_224_eia608_from_utf8193(LOGICAL,185)@97
    assign i_acl_224_eia608_from_utf8193_q = i_acl_224_v_eia608_from_utf8192_q ^ VCC_q;

    // i_pivot197_eia608_from_utf8118(COMPARE,385)@97
    assign i_pivot197_eia608_from_utf8118_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot197_eia608_from_utf8118_b = $unsigned({{2{c_i8_99642_recast_x_q[7]}}, c_i8_99642_recast_x_q});
    assign i_pivot197_eia608_from_utf8118_o = $unsigned($signed(i_pivot197_eia608_from_utf8118_a) - $signed(i_pivot197_eia608_from_utf8118_b));
    assign i_pivot197_eia608_from_utf8118_c[0] = i_pivot197_eia608_from_utf8118_o[9];

    // i_acl_225_eia608_from_utf8194(LOGICAL,187)@97
    assign i_acl_225_eia608_from_utf8194_q = i_pivot197_eia608_from_utf8118_c ^ i_acl_224_eia608_from_utf8193_q;

    // c_i8_100624_recast_x(CONSTANT,776)
    assign c_i8_100624_recast_x_q = $unsigned(8'b10011100);

    // i_pivot199_eia608_from_utf867(COMPARE,386)@97
    assign i_pivot199_eia608_from_utf867_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot199_eia608_from_utf867_b = $unsigned({{2{c_i8_100624_recast_x_q[7]}}, c_i8_100624_recast_x_q});
    assign i_pivot199_eia608_from_utf867_o = $unsigned($signed(i_pivot199_eia608_from_utf867_a) - $signed(i_pivot199_eia608_from_utf867_b));
    assign i_pivot199_eia608_from_utf867_c[0] = i_pivot199_eia608_from_utf867_o[9];

    // i_acl_226_eia608_from_utf8195(MUX,188)@97
    assign i_acl_226_eia608_from_utf8195_s = i_pivot199_eia608_from_utf867_c;
    always @(i_acl_226_eia608_from_utf8195_s or i_acl_225_eia608_from_utf8194_q or i_acl_223_eia608_from_utf8191_q)
    begin
        unique case (i_acl_226_eia608_from_utf8195_s)
            1'b0 : i_acl_226_eia608_from_utf8195_q = i_acl_225_eia608_from_utf8194_q;
            1'b1 : i_acl_226_eia608_from_utf8195_q = i_acl_223_eia608_from_utf8191_q;
            default : i_acl_226_eia608_from_utf8195_q = 1'b0;
        endcase
    end

    // i_acl_227_eia608_from_utf8196(LOGICAL,189)@97 + 1
    assign i_acl_227_eia608_from_utf8196_qi = in_c1_eni29_10_tpl & i_acl_226_eia608_from_utf8195_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_227_eia608_from_utf8196_delay ( .xin(i_acl_227_eia608_from_utf8196_qi), .xout(i_acl_227_eia608_from_utf8196_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i8_116634_recast_x(CONSTANT,791)
    assign c_i8_116634_recast_x_q = $unsigned(8'b10001100);

    // i_switchleaf202_eia608_from_utf8163(LOGICAL,646)@97
    assign i_switchleaf202_eia608_from_utf8163_q = $unsigned(in_c1_eni29_8_tpl == c_i8_116634_recast_x_q ? 1'b1 : 1'b0);

    // c_i8_112643_recast_x(CONSTANT,787)
    assign c_i8_112643_recast_x_q = $unsigned(8'b10010000);

    // i_switchleaf204_eia608_from_utf8165(LOGICAL,647)@97
    assign i_switchleaf204_eia608_from_utf8165_q = $unsigned(in_c1_eni29_8_tpl == c_i8_112643_recast_x_q ? 1'b1 : 1'b0);

    // i_pivot206_eia608_from_utf8120(COMPARE,387)@97
    assign i_pivot206_eia608_from_utf8120_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot206_eia608_from_utf8120_b = $unsigned({{2{c_i8_112643_recast_x_q[7]}}, c_i8_112643_recast_x_q});
    assign i_pivot206_eia608_from_utf8120_o = $unsigned($signed(i_pivot206_eia608_from_utf8120_a) - $signed(i_pivot206_eia608_from_utf8120_b));
    assign i_pivot206_eia608_from_utf8120_c[0] = i_pivot206_eia608_from_utf8120_o[9];

    // i_acl_236_v_eia608_from_utf8197(MUX,191)@97
    assign i_acl_236_v_eia608_from_utf8197_s = i_pivot206_eia608_from_utf8120_c;
    always @(i_acl_236_v_eia608_from_utf8197_s or i_switchleaf204_eia608_from_utf8165_q or i_switchleaf202_eia608_from_utf8163_q)
    begin
        unique case (i_acl_236_v_eia608_from_utf8197_s)
            1'b0 : i_acl_236_v_eia608_from_utf8197_q = i_switchleaf204_eia608_from_utf8165_q;
            1'b1 : i_acl_236_v_eia608_from_utf8197_q = i_switchleaf202_eia608_from_utf8163_q;
            default : i_acl_236_v_eia608_from_utf8197_q = 1'b0;
        endcase
    end

    // i_switchleaf210_eia608_from_utf8167(LOGICAL,648)@97
    assign i_switchleaf210_eia608_from_utf8167_q = $unsigned(in_c1_eni29_8_tpl == c_i8_104636_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_237_v_eia608_from_utf8198(MUX,192)@97
    assign i_acl_237_v_eia608_from_utf8198_s = i_pivot87_eia608_from_utf8106_c;
    always @(i_acl_237_v_eia608_from_utf8198_s or i_switchleaf210_eia608_from_utf8167_q or i_switchleaf183_eia608_from_utf8160_q)
    begin
        unique case (i_acl_237_v_eia608_from_utf8198_s)
            1'b0 : i_acl_237_v_eia608_from_utf8198_q = i_switchleaf210_eia608_from_utf8167_q;
            1'b1 : i_acl_237_v_eia608_from_utf8198_q = i_switchleaf183_eia608_from_utf8160_q;
            default : i_acl_237_v_eia608_from_utf8198_q = 1'b0;
        endcase
    end

    // i_pivot214_eia608_from_utf873(COMPARE,388)@97
    assign i_pivot214_eia608_from_utf873_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot214_eia608_from_utf873_b = $unsigned({{2{c_i8_108627_recast_x_q[7]}}, c_i8_108627_recast_x_q});
    assign i_pivot214_eia608_from_utf873_o = $unsigned($signed(i_pivot214_eia608_from_utf873_a) - $signed(i_pivot214_eia608_from_utf873_b));
    assign i_pivot214_eia608_from_utf873_c[0] = i_pivot214_eia608_from_utf873_o[9];

    // i_acl_238_v_eia608_from_utf8199(MUX,194)@97
    assign i_acl_238_v_eia608_from_utf8199_s = i_pivot214_eia608_from_utf873_c;
    always @(i_acl_238_v_eia608_from_utf8199_s or i_acl_237_v_eia608_from_utf8198_q or i_acl_236_v_eia608_from_utf8197_q)
    begin
        unique case (i_acl_238_v_eia608_from_utf8199_s)
            1'b0 : i_acl_238_v_eia608_from_utf8199_q = i_acl_237_v_eia608_from_utf8198_q;
            1'b1 : i_acl_238_v_eia608_from_utf8199_q = i_acl_236_v_eia608_from_utf8197_q;
            default : i_acl_238_v_eia608_from_utf8199_q = 1'b0;
        endcase
    end

    // i_acl_238_eia608_from_utf8200(LOGICAL,193)@97
    assign i_acl_238_eia608_from_utf8200_q = i_acl_238_v_eia608_from_utf8199_q ^ VCC_q;

    // i_acl_239_eia608_from_utf8201(LOGICAL,195)@97 + 1
    assign i_acl_239_eia608_from_utf8201_qi = in_c1_eni29_11_tpl & i_acl_238_eia608_from_utf8200_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_239_eia608_from_utf8201_delay ( .xin(i_acl_239_eia608_from_utf8201_qi), .xout(i_acl_239_eia608_from_utf8201_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2301639_eia608_from_utf8202(LOGICAL,190)@98
    assign i_acl_2301639_eia608_from_utf8202_q = i_acl_239_eia608_from_utf8201_q | i_acl_227_eia608_from_utf8196_q;

    // redist13_sync_together743_aunroll_x_in_c1_eni29_12_tpl_1(DELAY,902)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together743_aunroll_x_in_c1_eni29_12_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together743_aunroll_x_in_c1_eni29_12_tpl_1_q <= $unsigned(in_c1_eni29_12_tpl);
        end
    end

    // i_acl_2461638_eia608_from_utf8203(LOGICAL,196)@98
    assign i_acl_2461638_eia608_from_utf8203_q = redist13_sync_together743_aunroll_x_in_c1_eni29_12_tpl_1_q & i_acl_2301639_eia608_from_utf8202_q;

    // i_unnamed_eia608_from_utf8204(LOGICAL,661)@98
    assign i_unnamed_eia608_from_utf8204_q = i_acl_2461638_eia608_from_utf8203_q & redist14_sync_together743_aunroll_x_in_c1_eni29_13_tpl_1_q;

    // i_acl_247_eia608_from_utf8205(MUX,197)@98
    assign i_acl_247_eia608_from_utf8205_s = i_unnamed_eia608_from_utf8204_q;
    always @(i_acl_247_eia608_from_utf8205_s or i_acl_221_eia608_from_utf8189_vt_join_q or c_i32_0590_q)
    begin
        unique case (i_acl_247_eia608_from_utf8205_s)
            1'b0 : i_acl_247_eia608_from_utf8205_q = i_acl_221_eia608_from_utf8189_vt_join_q;
            1'b1 : i_acl_247_eia608_from_utf8205_q = c_i32_0590_q;
            default : i_acl_247_eia608_from_utf8205_q = 32'b0;
        endcase
    end

    // i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select(BITSELECT,880)@98
    assign i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_in = i_acl_247_eia608_from_utf8205_q[14:0];
    assign i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_b = i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_in[14:8];
    assign i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_c = i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_in[5:2];

    // i_acl_247_eia608_from_utf8205_vt_join(BITJOIN,201)@98
    assign i_acl_247_eia608_from_utf8205_vt_join_q = {i_acl_221_eia608_from_utf8189_vt_const_31_q, i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_b, i_acl_127_eia608_from_utf84_vt_const_11_q, i_acl_247_eia608_from_utf8205_vt_select_14_merged_bit_select_c, i_acl_127_eia608_from_utf84_vt_const_11_q};

    // redist18_sync_together743_aunroll_x_in_c1_eni29_14_tpl_1(DELAY,907)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together743_aunroll_x_in_c1_eni29_14_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together743_aunroll_x_in_c1_eni29_14_tpl_1_q <= $unsigned(in_c1_eni29_14_tpl);
        end
    end

    // i_acl_251_eia608_from_utf8206(MUX,204)@98
    assign i_acl_251_eia608_from_utf8206_s = redist18_sync_together743_aunroll_x_in_c1_eni29_14_tpl_1_q;
    always @(i_acl_251_eia608_from_utf8206_s or i_acl_247_eia608_from_utf8205_vt_join_q or i_unnamed_eia608_from_utf85_vt_join_q)
    begin
        unique case (i_acl_251_eia608_from_utf8206_s)
            1'b0 : i_acl_251_eia608_from_utf8206_q = i_acl_247_eia608_from_utf8205_vt_join_q;
            1'b1 : i_acl_251_eia608_from_utf8206_q = i_unnamed_eia608_from_utf85_vt_join_q;
            default : i_acl_251_eia608_from_utf8206_q = 32'b0;
        endcase
    end

    // i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select(BITSELECT,881)@98
    assign i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_in = i_acl_251_eia608_from_utf8206_q[14:0];
    assign i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_b = i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_in[14:8];
    assign i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_c = i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_in[5:0];

    // i_acl_251_eia608_from_utf8206_vt_join(BITJOIN,207)@98
    assign i_acl_251_eia608_from_utf8206_vt_join_q = {i_acl_221_eia608_from_utf8189_vt_const_31_q, i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_b, i_acl_127_eia608_from_utf84_vt_const_11_q, i_acl_251_eia608_from_utf8206_vt_select_14_merged_bit_select_c};

    // redist19_sync_together743_aunroll_x_in_c1_eni29_15_tpl_1(DELAY,908)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together743_aunroll_x_in_c1_eni29_15_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together743_aunroll_x_in_c1_eni29_15_tpl_1_q <= $unsigned(in_c1_eni29_15_tpl);
        end
    end

    // i_acl_255_eia608_from_utf8207(MUX,210)@98
    assign i_acl_255_eia608_from_utf8207_s = redist19_sync_together743_aunroll_x_in_c1_eni29_15_tpl_1_q;
    always @(i_acl_255_eia608_from_utf8207_s or i_acl_251_eia608_from_utf8206_vt_join_q or i_unnamed_eia608_from_utf83_vt_join_q)
    begin
        unique case (i_acl_255_eia608_from_utf8207_s)
            1'b0 : i_acl_255_eia608_from_utf8207_q = i_acl_251_eia608_from_utf8206_vt_join_q;
            1'b1 : i_acl_255_eia608_from_utf8207_q = i_unnamed_eia608_from_utf83_vt_join_q;
            default : i_acl_255_eia608_from_utf8207_q = 32'b0;
        endcase
    end

    // i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select(BITSELECT,882)@98
    assign i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_in = i_acl_255_eia608_from_utf8207_q[14:0];
    assign i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b = i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_in[14:8];
    assign i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c = i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_in[5:0];

    // redist0_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b_1(DELAY,889)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b_1_q <= $unsigned(i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b);
        end
    end

    // redist1_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c_1(DELAY,890)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c_1_q <= $unsigned(i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c);
        end
    end

    // i_acl_255_eia608_from_utf8207_vt_join(BITJOIN,213)@99
    assign i_acl_255_eia608_from_utf8207_vt_join_q = {i_acl_221_eia608_from_utf8189_vt_const_31_q, redist0_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_b_1_q, i_acl_127_eia608_from_utf84_vt_const_11_q, redist1_i_acl_255_eia608_from_utf8207_vt_select_14_merged_bit_select_c_1_q};

    // redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2(DELAY,909)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_delay_0 <= '0;
            redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_delay_0 <= $unsigned(in_c1_eni29_16_tpl);
            redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_q <= redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_delay_0;
        end
    end

    // i_acl_260_eia608_from_utf8208(MUX,216)@99
    assign i_acl_260_eia608_from_utf8208_s = redist20_sync_together743_aunroll_x_in_c1_eni29_16_tpl_2_q;
    always @(i_acl_260_eia608_from_utf8208_s or i_acl_255_eia608_from_utf8207_vt_join_q or c_i32_4907662_q)
    begin
        unique case (i_acl_260_eia608_from_utf8208_s)
            1'b0 : i_acl_260_eia608_from_utf8208_q = i_acl_255_eia608_from_utf8207_vt_join_q;
            1'b1 : i_acl_260_eia608_from_utf8208_q = c_i32_4907662_q;
            default : i_acl_260_eia608_from_utf8208_q = 32'b0;
        endcase
    end

    // redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2(DELAY,910)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_delay_0 <= '0;
            redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_delay_0 <= $unsigned(in_c1_eni29_17_tpl);
            redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_q <= redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_delay_0;
        end
    end

    // i_acl_266_eia608_from_utf8209(MUX,217)@99
    assign i_acl_266_eia608_from_utf8209_s = redist21_sync_together743_aunroll_x_in_c1_eni29_17_tpl_2_q;
    always @(i_acl_266_eia608_from_utf8209_s or i_acl_260_eia608_from_utf8208_q or c_i32_4648663_q)
    begin
        unique case (i_acl_266_eia608_from_utf8209_s)
            1'b0 : i_acl_266_eia608_from_utf8209_q = i_acl_260_eia608_from_utf8208_q;
            1'b1 : i_acl_266_eia608_from_utf8209_q = c_i32_4648663_q;
            default : i_acl_266_eia608_from_utf8209_q = 32'b0;
        endcase
    end

    // redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2(DELAY,911)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_delay_0 <= '0;
            redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_q <= '0;
        end
        else
        begin
            redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_delay_0 <= $unsigned(in_c1_eni29_18_tpl);
            redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_q <= redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_delay_0;
        end
    end

    // i_acl_271_eia608_from_utf8210(MUX,218)@99
    assign i_acl_271_eia608_from_utf8210_s = redist22_sync_together743_aunroll_x_in_c1_eni29_18_tpl_2_q;
    always @(i_acl_271_eia608_from_utf8210_s or i_acl_266_eia608_from_utf8209_q or c_i32_4649664_q)
    begin
        unique case (i_acl_271_eia608_from_utf8210_s)
            1'b0 : i_acl_271_eia608_from_utf8210_q = i_acl_266_eia608_from_utf8209_q;
            1'b1 : i_acl_271_eia608_from_utf8210_q = c_i32_4649664_q;
            default : i_acl_271_eia608_from_utf8210_q = 32'b0;
        endcase
    end

    // redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2(DELAY,904)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q <= $unsigned(redist14_sync_together743_aunroll_x_in_c1_eni29_13_tpl_1_q);
        end
    end

    // redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2(DELAY,921)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_delay_0 <= '0;
            redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_q <= '0;
        end
        else
        begin
            redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_delay_0 <= $unsigned(in_c1_eni29_23_tpl);
            redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_q <= redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_delay_0;
        end
    end

    // c_i8_123645_recast_x(CONSTANT,797)
    assign c_i8_123645_recast_x_q = $unsigned(8'b10000101);

    // i_switchleaf47_eia608_from_utf8169(LOGICAL,653)@97 + 1
    assign i_switchleaf47_eia608_from_utf8169_qi = $unsigned(in_c1_eni29_8_tpl == c_i8_123645_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_switchleaf47_eia608_from_utf8169_delay ( .xin(i_switchleaf47_eia608_from_utf8169_qi), .xout(i_switchleaf47_eia608_from_utf8169_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_switchleaf47_not_eia608_from_utf8171(LOGICAL,654)@98
    assign i_switchleaf47_not_eia608_from_utf8171_q = i_switchleaf47_eia608_from_utf8169_q ^ VCC_q;

    // i_pivot49_eia608_from_utf8124(COMPARE,398)@97 + 1
    assign i_pivot49_eia608_from_utf8124_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot49_eia608_from_utf8124_b = $unsigned({{2{c_i8_123645_recast_x_q[7]}}, c_i8_123645_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot49_eia608_from_utf8124_o <= 10'b0;
        end
        else
        begin
            i_pivot49_eia608_from_utf8124_o <= $unsigned($signed(i_pivot49_eia608_from_utf8124_a) - $signed(i_pivot49_eia608_from_utf8124_b));
        end
    end
    assign i_pivot49_eia608_from_utf8124_c[0] = i_pivot49_eia608_from_utf8124_o[9];

    // i_acl_290_eia608_from_utf8223(LOGICAL,231)@98
    assign i_acl_290_eia608_from_utf8223_q = i_pivot49_eia608_from_utf8124_c ^ i_switchleaf47_not_eia608_from_utf8171_q;

    // c_i8_121608_recast_x(CONSTANT,796)
    assign c_i8_121608_recast_x_q = $unsigned(8'b10000111);

    // i_pivot67_eia608_from_utf831(COMPARE,408)@97 + 1
    assign i_pivot67_eia608_from_utf831_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot67_eia608_from_utf831_b = $unsigned({{2{c_i8_121608_recast_x_q[7]}}, c_i8_121608_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot67_eia608_from_utf831_o <= 10'b0;
        end
        else
        begin
            i_pivot67_eia608_from_utf831_o <= $unsigned($signed(i_pivot67_eia608_from_utf831_a) - $signed(i_pivot67_eia608_from_utf831_b));
        end
    end
    assign i_pivot67_eia608_from_utf831_c[0] = i_pivot67_eia608_from_utf831_o[9];

    // i_acl_293_eia608_from_utf8224(LOGICAL,232)@98
    assign i_acl_293_eia608_from_utf8224_q = i_pivot67_eia608_from_utf831_c & i_acl_290_eia608_from_utf8223_q;

    // c_i8_111649_recast_x(CONSTANT,786)
    assign c_i8_111649_recast_x_q = $unsigned(8'b10010001);

    // i_pivot71_eia608_from_utf8132(COMPARE,409)@97
    assign i_pivot71_eia608_from_utf8132_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot71_eia608_from_utf8132_b = $unsigned({{2{c_i8_111649_recast_x_q[7]}}, c_i8_111649_recast_x_q});
    assign i_pivot71_eia608_from_utf8132_o = $unsigned($signed(i_pivot71_eia608_from_utf8132_a) - $signed(i_pivot71_eia608_from_utf8132_b));
    assign i_pivot71_eia608_from_utf8132_c[0] = i_pivot71_eia608_from_utf8132_o[9];

    // c_i8_113635_recast_x(CONSTANT,788)
    assign c_i8_113635_recast_x_q = $unsigned(8'b10001111);

    // i_switchleaf69_eia608_from_utf8172(LOGICAL,655)@97
    assign i_switchleaf69_eia608_from_utf8172_q = $unsigned(in_c1_eni29_8_tpl == c_i8_113635_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_294_eia608_from_utf8225(LOGICAL,233)@97
    assign i_acl_294_eia608_from_utf8225_q = i_switchleaf69_eia608_from_utf8172_q ^ i_pivot71_eia608_from_utf8132_c;

    // i_pivot73_eia608_from_utf8104(COMPARE,410)@97
    assign i_pivot73_eia608_from_utf8104_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot73_eia608_from_utf8104_b = $unsigned({{2{c_i8_113635_recast_x_q[7]}}, c_i8_113635_recast_x_q});
    assign i_pivot73_eia608_from_utf8104_o = $unsigned($signed(i_pivot73_eia608_from_utf8104_a) - $signed(i_pivot73_eia608_from_utf8104_b));
    assign i_pivot73_eia608_from_utf8104_c[0] = i_pivot73_eia608_from_utf8104_o[9];

    // i_acl_295_eia608_from_utf8226(LOGICAL,234)@97
    assign i_acl_295_eia608_from_utf8226_q = i_pivot73_eia608_from_utf8104_c ^ i_acl_294_eia608_from_utf8225_q;

    // c_i8_106609_recast_x(CONSTANT,781)
    assign c_i8_106609_recast_x_q = $unsigned(8'b10010110);

    // i_switchleaf83_eia608_from_utf8138(LOGICAL,658)@97
    assign i_switchleaf83_eia608_from_utf8138_q = $unsigned(in_c1_eni29_8_tpl == c_i8_106609_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_297_eia608_from_utf8227(LOGICAL,235)@97
    assign i_acl_297_eia608_from_utf8227_q = i_switchleaf83_eia608_from_utf8138_q ^ i_pivot87_eia608_from_utf8106_c;

    // c_i8_97654_recast_x(CONSTANT,834)
    assign c_i8_97654_recast_x_q = $unsigned(8'b10011111);

    // i_pivot93_eia608_from_utf8144(COMPARE,418)@97
    assign i_pivot93_eia608_from_utf8144_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot93_eia608_from_utf8144_b = $unsigned({{2{c_i8_97654_recast_x_q[7]}}, c_i8_97654_recast_x_q});
    assign i_pivot93_eia608_from_utf8144_o = $unsigned($signed(i_pivot93_eia608_from_utf8144_a) - $signed(i_pivot93_eia608_from_utf8144_b));
    assign i_pivot93_eia608_from_utf8144_c[0] = i_pivot93_eia608_from_utf8144_o[9];

    // i_switchleaf91_eia608_from_utf8174(LOGICAL,659)@97
    assign i_switchleaf91_eia608_from_utf8174_q = $unsigned(in_c1_eni29_8_tpl == c_i8_100624_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_298_eia608_from_utf8228(LOGICAL,236)@97
    assign i_acl_298_eia608_from_utf8228_q = i_switchleaf91_eia608_from_utf8174_q ^ i_pivot93_eia608_from_utf8144_c;

    // i_acl_299_eia608_from_utf8229(LOGICAL,237)@97
    assign i_acl_299_eia608_from_utf8229_q = i_pivot199_eia608_from_utf867_c ^ i_acl_298_eia608_from_utf8228_q;

    // c_i8_102620_recast_x(CONSTANT,778)
    assign c_i8_102620_recast_x_q = $unsigned(8'b10011010);

    // i_pivot97_eia608_from_utf859(COMPARE,419)@97
    assign i_pivot97_eia608_from_utf859_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot97_eia608_from_utf859_b = $unsigned({{2{c_i8_102620_recast_x_q[7]}}, c_i8_102620_recast_x_q});
    assign i_pivot97_eia608_from_utf859_o = $unsigned($signed(i_pivot97_eia608_from_utf859_a) - $signed(i_pivot97_eia608_from_utf859_b));
    assign i_pivot97_eia608_from_utf859_c[0] = i_pivot97_eia608_from_utf859_o[9];

    // i_acl_300_eia608_from_utf8230(MUX,238)@97
    assign i_acl_300_eia608_from_utf8230_s = i_pivot97_eia608_from_utf859_c;
    always @(i_acl_300_eia608_from_utf8230_s or i_acl_299_eia608_from_utf8229_q or i_acl_297_eia608_from_utf8227_q)
    begin
        unique case (i_acl_300_eia608_from_utf8230_s)
            1'b0 : i_acl_300_eia608_from_utf8230_q = i_acl_299_eia608_from_utf8229_q;
            1'b1 : i_acl_300_eia608_from_utf8230_q = i_acl_297_eia608_from_utf8227_q;
            default : i_acl_300_eia608_from_utf8230_q = 1'b0;
        endcase
    end

    // i_pivot99_eia608_from_utf833(COMPARE,420)@97
    assign i_pivot99_eia608_from_utf833_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot99_eia608_from_utf833_b = $unsigned({{2{c_i8_106609_recast_x_q[7]}}, c_i8_106609_recast_x_q});
    assign i_pivot99_eia608_from_utf833_o = $unsigned($signed(i_pivot99_eia608_from_utf833_a) - $signed(i_pivot99_eia608_from_utf833_b));
    assign i_pivot99_eia608_from_utf833_c[0] = i_pivot99_eia608_from_utf833_o[9];

    // i_acl_301_eia608_from_utf8231(MUX,239)@97 + 1
    assign i_acl_301_eia608_from_utf8231_s = i_pivot99_eia608_from_utf833_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_301_eia608_from_utf8231_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_301_eia608_from_utf8231_s)
                1'b0 : i_acl_301_eia608_from_utf8231_q <= i_acl_300_eia608_from_utf8230_q;
                1'b1 : i_acl_301_eia608_from_utf8231_q <= i_acl_295_eia608_from_utf8226_q;
                default : i_acl_301_eia608_from_utf8231_q <= 1'b0;
            endcase
        end
    end

    // c_i8_114602_recast_x(CONSTANT,789)
    assign c_i8_114602_recast_x_q = $unsigned(8'b10001110);

    // i_pivot101_eia608_from_utf819(COMPARE,363)@97 + 1
    assign i_pivot101_eia608_from_utf819_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot101_eia608_from_utf819_b = $unsigned({{2{c_i8_114602_recast_x_q[7]}}, c_i8_114602_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot101_eia608_from_utf819_o <= 10'b0;
        end
        else
        begin
            i_pivot101_eia608_from_utf819_o <= $unsigned($signed(i_pivot101_eia608_from_utf819_a) - $signed(i_pivot101_eia608_from_utf819_b));
        end
    end
    assign i_pivot101_eia608_from_utf819_c[0] = i_pivot101_eia608_from_utf819_o[9];

    // i_acl_302_eia608_from_utf8232(MUX,240)@98
    assign i_acl_302_eia608_from_utf8232_s = i_pivot101_eia608_from_utf819_c;
    always @(i_acl_302_eia608_from_utf8232_s or i_acl_301_eia608_from_utf8231_q or i_acl_293_eia608_from_utf8224_q)
    begin
        unique case (i_acl_302_eia608_from_utf8232_s)
            1'b0 : i_acl_302_eia608_from_utf8232_q = i_acl_301_eia608_from_utf8231_q;
            1'b1 : i_acl_302_eia608_from_utf8232_q = i_acl_293_eia608_from_utf8224_q;
            default : i_acl_302_eia608_from_utf8232_q = 1'b0;
        endcase
    end

    // c_i8_91605_recast_x(CONSTANT,828)
    assign c_i8_91605_recast_x_q = $unsigned(8'b10100101);

    // i_switchleaf107_eia608_from_utf8176(LOGICAL,633)@97 + 1
    assign i_switchleaf107_eia608_from_utf8176_qi = $unsigned(in_c1_eni29_8_tpl == c_i8_91605_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_switchleaf107_eia608_from_utf8176_delay ( .xin(i_switchleaf107_eia608_from_utf8176_qi), .xout(i_switchleaf107_eia608_from_utf8176_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_switchleaf107_not_eia608_from_utf8178(LOGICAL,634)@98
    assign i_switchleaf107_not_eia608_from_utf8178_q = i_switchleaf107_eia608_from_utf8176_q ^ VCC_q;

    // i_pivot10_eia608_from_utf825(COMPARE,364)@97 + 1
    assign i_pivot10_eia608_from_utf825_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot10_eia608_from_utf825_b = $unsigned({{2{c_i8_91605_recast_x_q[7]}}, c_i8_91605_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot10_eia608_from_utf825_o <= 10'b0;
        end
        else
        begin
            i_pivot10_eia608_from_utf825_o <= $unsigned($signed(i_pivot10_eia608_from_utf825_a) - $signed(i_pivot10_eia608_from_utf825_b));
        end
    end
    assign i_pivot10_eia608_from_utf825_c[0] = i_pivot10_eia608_from_utf825_o[9];

    // i_acl_303_eia608_from_utf8233(LOGICAL,241)@98
    assign i_acl_303_eia608_from_utf8233_q = i_pivot10_eia608_from_utf825_c ^ i_switchleaf107_not_eia608_from_utf8178_q;

    // c_i8_89610_recast_x(CONSTANT,826)
    assign c_i8_89610_recast_x_q = $unsigned(8'b10100111);

    // i_pivot127_eia608_from_utf835(COMPARE,369)@97 + 1
    assign i_pivot127_eia608_from_utf835_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot127_eia608_from_utf835_b = $unsigned({{2{c_i8_89610_recast_x_q[7]}}, c_i8_89610_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot127_eia608_from_utf835_o <= 10'b0;
        end
        else
        begin
            i_pivot127_eia608_from_utf835_o <= $unsigned($signed(i_pivot127_eia608_from_utf835_a) - $signed(i_pivot127_eia608_from_utf835_b));
        end
    end
    assign i_pivot127_eia608_from_utf835_c[0] = i_pivot127_eia608_from_utf835_o[9];

    // i_acl_306_eia608_from_utf8234(LOGICAL,242)@98
    assign i_acl_306_eia608_from_utf8234_q = i_pivot127_eia608_from_utf835_c & i_acl_303_eia608_from_utf8233_q;

    // c_i8_79656_recast_x(CONSTANT,816)
    assign c_i8_79656_recast_x_q = $unsigned(8'b10110001);

    // i_pivot131_eia608_from_utf8148(COMPARE,371)@97
    assign i_pivot131_eia608_from_utf8148_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot131_eia608_from_utf8148_b = $unsigned({{2{c_i8_79656_recast_x_q[7]}}, c_i8_79656_recast_x_q});
    assign i_pivot131_eia608_from_utf8148_o = $unsigned($signed(i_pivot131_eia608_from_utf8148_a) - $signed(i_pivot131_eia608_from_utf8148_b));
    assign i_pivot131_eia608_from_utf8148_c[0] = i_pivot131_eia608_from_utf8148_o[9];

    // c_i8_81639_recast_x(CONSTANT,818)
    assign c_i8_81639_recast_x_q = $unsigned(8'b10101111);

    // i_switchleaf129_eia608_from_utf8179(LOGICAL,635)@97
    assign i_switchleaf129_eia608_from_utf8179_q = $unsigned(in_c1_eni29_8_tpl == c_i8_81639_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_307_eia608_from_utf8235(LOGICAL,243)@97 + 1
    assign i_acl_307_eia608_from_utf8235_qi = i_switchleaf129_eia608_from_utf8179_q ^ i_pivot131_eia608_from_utf8148_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_307_eia608_from_utf8235_delay ( .xin(i_acl_307_eia608_from_utf8235_qi), .xout(i_acl_307_eia608_from_utf8235_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_pivot133_eia608_from_utf8112(COMPARE,372)@97 + 1
    assign i_pivot133_eia608_from_utf8112_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot133_eia608_from_utf8112_b = $unsigned({{2{c_i8_81639_recast_x_q[7]}}, c_i8_81639_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot133_eia608_from_utf8112_o <= 10'b0;
        end
        else
        begin
            i_pivot133_eia608_from_utf8112_o <= $unsigned($signed(i_pivot133_eia608_from_utf8112_a) - $signed(i_pivot133_eia608_from_utf8112_b));
        end
    end
    assign i_pivot133_eia608_from_utf8112_c[0] = i_pivot133_eia608_from_utf8112_o[9];

    // i_acl_308_eia608_from_utf8236(LOGICAL,244)@98
    assign i_acl_308_eia608_from_utf8236_q = i_pivot133_eia608_from_utf8112_c ^ i_acl_307_eia608_from_utf8235_q;

    // c_i8_68661_recast_x(CONSTANT,805)
    assign c_i8_68661_recast_x_q = $unsigned(8'b10111100);

    // i_switchleaf149_eia608_from_utf8181(LOGICAL,636)@97 + 1
    assign i_switchleaf149_eia608_from_utf8181_qi = $unsigned(in_c1_eni29_8_tpl == c_i8_68661_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_switchleaf149_eia608_from_utf8181_delay ( .xin(i_switchleaf149_eia608_from_utf8181_qi), .xout(i_switchleaf149_eia608_from_utf8181_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_switchleaf149_not_eia608_from_utf8183(LOGICAL,637)@98
    assign i_switchleaf149_not_eia608_from_utf8183_q = i_switchleaf149_eia608_from_utf8181_q ^ VCC_q;

    // i_pivot151_eia608_from_utf8158(COMPARE,380)@97 + 1
    assign i_pivot151_eia608_from_utf8158_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot151_eia608_from_utf8158_b = $unsigned({{2{c_i8_68661_recast_x_q[7]}}, c_i8_68661_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot151_eia608_from_utf8158_o <= 10'b0;
        end
        else
        begin
            i_pivot151_eia608_from_utf8158_o <= $unsigned($signed(i_pivot151_eia608_from_utf8158_a) - $signed(i_pivot151_eia608_from_utf8158_b));
        end
    end
    assign i_pivot151_eia608_from_utf8158_c[0] = i_pivot151_eia608_from_utf8158_o[9];

    // i_acl_310_eia608_from_utf8237(LOGICAL,245)@98
    assign i_acl_310_eia608_from_utf8237_q = i_pivot151_eia608_from_utf8158_c ^ i_switchleaf149_not_eia608_from_utf8183_q;

    // c_i8_74611_recast_x(CONSTANT,811)
    assign c_i8_74611_recast_x_q = $unsigned(8'b10110110);

    // i_pivot157_eia608_from_utf837(COMPARE,382)@97 + 1
    assign i_pivot157_eia608_from_utf837_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot157_eia608_from_utf837_b = $unsigned({{2{c_i8_74611_recast_x_q[7]}}, c_i8_74611_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot157_eia608_from_utf837_o <= 10'b0;
        end
        else
        begin
            i_pivot157_eia608_from_utf837_o <= $unsigned($signed(i_pivot157_eia608_from_utf837_a) - $signed(i_pivot157_eia608_from_utf837_b));
        end
    end
    assign i_pivot157_eia608_from_utf837_c[0] = i_pivot157_eia608_from_utf837_o[9];

    // i_acl_313_eia608_from_utf8238(MUX,246)@98
    assign i_acl_313_eia608_from_utf8238_s = i_pivot157_eia608_from_utf837_c;
    always @(i_acl_313_eia608_from_utf8238_s or i_acl_310_eia608_from_utf8237_q or i_acl_308_eia608_from_utf8236_q)
    begin
        unique case (i_acl_313_eia608_from_utf8238_s)
            1'b0 : i_acl_313_eia608_from_utf8238_q = i_acl_310_eia608_from_utf8237_q;
            1'b1 : i_acl_313_eia608_from_utf8238_q = i_acl_308_eia608_from_utf8236_q;
            default : i_acl_313_eia608_from_utf8238_q = 1'b0;
        endcase
    end

    // c_i8_82603_recast_x(CONSTANT,819)
    assign c_i8_82603_recast_x_q = $unsigned(8'b10101110);

    // i_pivot159_eia608_from_utf821(COMPARE,383)@97 + 1
    assign i_pivot159_eia608_from_utf821_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot159_eia608_from_utf821_b = $unsigned({{2{c_i8_82603_recast_x_q[7]}}, c_i8_82603_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot159_eia608_from_utf821_o <= 10'b0;
        end
        else
        begin
            i_pivot159_eia608_from_utf821_o <= $unsigned($signed(i_pivot159_eia608_from_utf821_a) - $signed(i_pivot159_eia608_from_utf821_b));
        end
    end
    assign i_pivot159_eia608_from_utf821_c[0] = i_pivot159_eia608_from_utf821_o[9];

    // i_acl_314_eia608_from_utf8239(MUX,247)@98
    assign i_acl_314_eia608_from_utf8239_s = i_pivot159_eia608_from_utf821_c;
    always @(i_acl_314_eia608_from_utf8239_s or i_acl_313_eia608_from_utf8238_q or i_acl_306_eia608_from_utf8234_q)
    begin
        unique case (i_acl_314_eia608_from_utf8239_s)
            1'b0 : i_acl_314_eia608_from_utf8239_q = i_acl_313_eia608_from_utf8238_q;
            1'b1 : i_acl_314_eia608_from_utf8239_q = i_acl_306_eia608_from_utf8234_q;
            default : i_acl_314_eia608_from_utf8239_q = 1'b0;
        endcase
    end

    // i_pivot161_eia608_from_utf813(COMPARE,384)@98
    assign i_pivot161_eia608_from_utf813_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot161_eia608_from_utf813_b = $unsigned({{2{c_i8_96599_recast_x_q[7]}}, c_i8_96599_recast_x_q});
    assign i_pivot161_eia608_from_utf813_o = $unsigned($signed(i_pivot161_eia608_from_utf813_a) - $signed(i_pivot161_eia608_from_utf813_b));
    assign i_pivot161_eia608_from_utf813_c[0] = i_pivot161_eia608_from_utf813_o[9];

    // i_acl_315_eia608_from_utf8240(MUX,248)@98
    assign i_acl_315_eia608_from_utf8240_s = i_pivot161_eia608_from_utf813_c;
    always @(i_acl_315_eia608_from_utf8240_s or i_acl_314_eia608_from_utf8239_q or i_acl_302_eia608_from_utf8232_q)
    begin
        unique case (i_acl_315_eia608_from_utf8240_s)
            1'b0 : i_acl_315_eia608_from_utf8240_q = i_acl_314_eia608_from_utf8239_q;
            1'b1 : i_acl_315_eia608_from_utf8240_q = i_acl_302_eia608_from_utf8232_q;
            default : i_acl_315_eia608_from_utf8240_q = 1'b0;
        endcase
    end

    // redist24_sync_together743_aunroll_x_in_c1_eni29_20_tpl_1(DELAY,913)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together743_aunroll_x_in_c1_eni29_20_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together743_aunroll_x_in_c1_eni29_20_tpl_1_q <= $unsigned(in_c1_eni29_20_tpl);
        end
    end

    // i_reduction_eia608_from_utf8_6_eia608_from_utf8244(LOGICAL,579)@98
    assign i_reduction_eia608_from_utf8_6_eia608_from_utf8244_q = redist24_sync_together743_aunroll_x_in_c1_eni29_20_tpl_1_q & i_acl_315_eia608_from_utf8240_q;

    // redist23_sync_together743_aunroll_x_in_c1_eni29_19_tpl_1(DELAY,912)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together743_aunroll_x_in_c1_eni29_19_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together743_aunroll_x_in_c1_eni29_19_tpl_1_q <= $unsigned(in_c1_eni29_19_tpl);
        end
    end

    // i_not_cmp71_eia608_from_utf8242(LOGICAL,361)@98
    assign i_not_cmp71_eia608_from_utf8242_q = redist23_sync_together743_aunroll_x_in_c1_eni29_19_tpl_1_q ^ VCC_q;

    // c_i8_62597_recast_x(CONSTANT,802)
    assign c_i8_62597_recast_x_q = $unsigned(8'b11000010);

    // i_cmp75_eia608_from_utf89(LOGICAL,360)@97 + 1
    assign i_cmp75_eia608_from_utf89_qi = $unsigned(in_c1_eni29_7_tpl == c_i8_62597_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp75_eia608_from_utf89_delay ( .xin(i_cmp75_eia608_from_utf89_qi), .xout(i_cmp75_eia608_from_utf89_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_not_cmp75_eia608_from_utf8241(LOGICAL,362)@98
    assign i_not_cmp75_eia608_from_utf8241_q = i_cmp75_eia608_from_utf89_q ^ VCC_q;

    // i_reduction_eia608_from_utf8_5_eia608_from_utf8243(LOGICAL,572)@98
    assign i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q = i_not_cmp75_eia608_from_utf8241_q & i_not_cmp71_eia608_from_utf8242_q;

    // i_reduction_eia608_from_utf8_7_eia608_from_utf8245(LOGICAL,588)@98
    assign i_reduction_eia608_from_utf8_7_eia608_from_utf8245_q = i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q & i_reduction_eia608_from_utf8_6_eia608_from_utf8244_q;

    // redist30_sync_together743_aunroll_x_in_c1_eni29_21_tpl_1(DELAY,919)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together743_aunroll_x_in_c1_eni29_21_tpl_1_q <= '0;
        end
        else
        begin
            redist30_sync_together743_aunroll_x_in_c1_eni29_21_tpl_1_q <= $unsigned(in_c1_eni29_21_tpl);
        end
    end

    // i_reduction_eia608_from_utf8_8_eia608_from_utf8246(LOGICAL,596)@98 + 1
    assign i_reduction_eia608_from_utf8_8_eia608_from_utf8246_qi = redist30_sync_together743_aunroll_x_in_c1_eni29_21_tpl_1_q | i_reduction_eia608_from_utf8_7_eia608_from_utf8245_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_8_eia608_from_utf8246_delay ( .xin(i_reduction_eia608_from_utf8_8_eia608_from_utf8246_qi), .xout(i_reduction_eia608_from_utf8_8_eia608_from_utf8246_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_11_eia608_from_utf8248(LOGICAL,438)@99
    assign i_reduction_eia608_from_utf8_11_eia608_from_utf8248_q = i_reduction_eia608_from_utf8_8_eia608_from_utf8246_q | redist32_sync_together743_aunroll_x_in_c1_eni29_23_tpl_2_q;

    // c_i8_95604_recast_x(CONSTANT,832)
    assign c_i8_95604_recast_x_q = $unsigned(8'b10100001);

    // i_pivot2_eia608_from_utf823(COMPARE,391)@98
    assign i_pivot2_eia608_from_utf823_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot2_eia608_from_utf823_b = $unsigned({{2{c_i8_95604_recast_x_q[7]}}, c_i8_95604_recast_x_q});
    assign i_pivot2_eia608_from_utf823_o = $unsigned($signed(i_pivot2_eia608_from_utf823_a) - $signed(i_pivot2_eia608_from_utf823_b));
    assign i_pivot2_eia608_from_utf823_c[0] = i_pivot2_eia608_from_utf823_o[9];

    // i_acl_272_eia608_from_utf8211(LOGICAL,219)@98
    assign i_acl_272_eia608_from_utf8211_q = i_switchleaf_eia608_from_utf839_q ^ i_pivot2_eia608_from_utf823_c;

    // c_i8_90614_recast_x(CONSTANT,827)
    assign c_i8_90614_recast_x_q = $unsigned(8'b10100110);

    // i_switchleaf6_eia608_from_utf881(LOGICAL,656)@98
    assign i_switchleaf6_eia608_from_utf881_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_90614_recast_x_q ? 1'b1 : 1'b0);

    // i_switchleaf6_not_eia608_from_utf883(LOGICAL,657)@98
    assign i_switchleaf6_not_eia608_from_utf883_q = i_switchleaf6_eia608_from_utf881_q ^ VCC_q;

    // i_pivot8_eia608_from_utf845(COMPARE,417)@98
    assign i_pivot8_eia608_from_utf845_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot8_eia608_from_utf845_b = $unsigned({{2{c_i8_90614_recast_x_q[7]}}, c_i8_90614_recast_x_q});
    assign i_pivot8_eia608_from_utf845_o = $unsigned($signed(i_pivot8_eia608_from_utf845_a) - $signed(i_pivot8_eia608_from_utf845_b));
    assign i_pivot8_eia608_from_utf845_c[0] = i_pivot8_eia608_from_utf845_o[9];

    // i_acl_273_eia608_from_utf8212(LOGICAL,220)@98
    assign i_acl_273_eia608_from_utf8212_q = i_pivot8_eia608_from_utf845_c ^ i_switchleaf6_not_eia608_from_utf883_q;

    // c_i8_93600_recast_x(CONSTANT,830)
    assign c_i8_93600_recast_x_q = $unsigned(8'b10100011);

    // i_pivot12_eia608_from_utf815(COMPARE,370)@98
    assign i_pivot12_eia608_from_utf815_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot12_eia608_from_utf815_b = $unsigned({{2{c_i8_93600_recast_x_q[7]}}, c_i8_93600_recast_x_q});
    assign i_pivot12_eia608_from_utf815_o = $unsigned($signed(i_pivot12_eia608_from_utf815_a) - $signed(i_pivot12_eia608_from_utf815_b));
    assign i_pivot12_eia608_from_utf815_c[0] = i_pivot12_eia608_from_utf815_o[9];

    // i_acl_275_eia608_from_utf8213(MUX,221)@98
    assign i_acl_275_eia608_from_utf8213_s = i_pivot12_eia608_from_utf815_c;
    always @(i_acl_275_eia608_from_utf8213_s or i_acl_273_eia608_from_utf8212_q or i_acl_272_eia608_from_utf8211_q)
    begin
        unique case (i_acl_275_eia608_from_utf8213_s)
            1'b0 : i_acl_275_eia608_from_utf8213_q = i_acl_273_eia608_from_utf8212_q;
            1'b1 : i_acl_275_eia608_from_utf8213_q = i_acl_272_eia608_from_utf8211_q;
            default : i_acl_275_eia608_from_utf8213_q = 1'b0;
        endcase
    end

    // c_i8_87598_recast_x(CONSTANT,824)
    assign c_i8_87598_recast_x_q = $unsigned(8'b10101001);

    // i_switchleaf14_eia608_from_utf847(LOGICAL,638)@98
    assign i_switchleaf14_eia608_from_utf847_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_87598_recast_x_q ? 1'b1 : 1'b0);

    // c_i8_85606_recast_x(CONSTANT,822)
    assign c_i8_85606_recast_x_q = $unsigned(8'b10101011);

    // i_switchleaf16_eia608_from_utf884(LOGICAL,639)@98
    assign i_switchleaf16_eia608_from_utf884_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_85606_recast_x_q ? 1'b1 : 1'b0);

    // i_switchleaf18_eia608_from_utf886(LOGICAL,644)@98
    assign i_switchleaf18_eia608_from_utf886_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_82603_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_276_v_eia608_from_utf8214(MUX,222)@98
    assign i_acl_276_v_eia608_from_utf8214_s = i_pivot159_eia608_from_utf821_c;
    always @(i_acl_276_v_eia608_from_utf8214_s or i_switchleaf18_eia608_from_utf886_q or i_switchleaf16_eia608_from_utf884_q)
    begin
        unique case (i_acl_276_v_eia608_from_utf8214_s)
            1'b0 : i_acl_276_v_eia608_from_utf8214_q = i_switchleaf18_eia608_from_utf886_q;
            1'b1 : i_acl_276_v_eia608_from_utf8214_q = i_switchleaf16_eia608_from_utf884_q;
            default : i_acl_276_v_eia608_from_utf8214_q = 1'b0;
        endcase
    end

    // i_pivot22_eia608_from_utf827(COMPARE,389)@98
    assign i_pivot22_eia608_from_utf827_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot22_eia608_from_utf827_b = $unsigned({{2{c_i8_85606_recast_x_q[7]}}, c_i8_85606_recast_x_q});
    assign i_pivot22_eia608_from_utf827_o = $unsigned($signed(i_pivot22_eia608_from_utf827_a) - $signed(i_pivot22_eia608_from_utf827_b));
    assign i_pivot22_eia608_from_utf827_c[0] = i_pivot22_eia608_from_utf827_o[9];

    // i_acl_277_v_eia608_from_utf8215(MUX,223)@98
    assign i_acl_277_v_eia608_from_utf8215_s = i_pivot22_eia608_from_utf827_c;
    always @(i_acl_277_v_eia608_from_utf8215_s or i_acl_276_v_eia608_from_utf8214_q or i_switchleaf14_eia608_from_utf847_q)
    begin
        unique case (i_acl_277_v_eia608_from_utf8215_s)
            1'b0 : i_acl_277_v_eia608_from_utf8215_q = i_acl_276_v_eia608_from_utf8214_q;
            1'b1 : i_acl_277_v_eia608_from_utf8215_q = i_switchleaf14_eia608_from_utf847_q;
            default : i_acl_277_v_eia608_from_utf8215_q = 1'b0;
        endcase
    end

    // c_i8_80601_recast_x(CONSTANT,817)
    assign c_i8_80601_recast_x_q = $unsigned(8'b10110000);

    // i_switchleaf24_eia608_from_utf888(LOGICAL,649)@98
    assign i_switchleaf24_eia608_from_utf888_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_80601_recast_x_q ? 1'b1 : 1'b0);

    // c_i8_69615_recast_x(CONSTANT,806)
    assign c_i8_69615_recast_x_q = $unsigned(8'b10111011);

    // i_switchleaf26_eia608_from_utf890(LOGICAL,650)@98
    assign i_switchleaf26_eia608_from_utf890_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_69615_recast_x_q ? 1'b1 : 1'b0);

    // i_pivot28_eia608_from_utf849(COMPARE,390)@97 + 1
    assign i_pivot28_eia608_from_utf849_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot28_eia608_from_utf849_b = $unsigned({{2{c_i8_69615_recast_x_q[7]}}, c_i8_69615_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot28_eia608_from_utf849_o <= 10'b0;
        end
        else
        begin
            i_pivot28_eia608_from_utf849_o <= $unsigned($signed(i_pivot28_eia608_from_utf849_a) - $signed(i_pivot28_eia608_from_utf849_b));
        end
    end
    assign i_pivot28_eia608_from_utf849_c[0] = i_pivot28_eia608_from_utf849_o[9];

    // i_acl_278_v_eia608_from_utf8216(MUX,224)@98
    assign i_acl_278_v_eia608_from_utf8216_s = i_pivot28_eia608_from_utf849_c;
    always @(i_acl_278_v_eia608_from_utf8216_s or i_switchleaf26_eia608_from_utf890_q or i_switchleaf24_eia608_from_utf888_q)
    begin
        unique case (i_acl_278_v_eia608_from_utf8216_s)
            1'b0 : i_acl_278_v_eia608_from_utf8216_q = i_switchleaf26_eia608_from_utf890_q;
            1'b1 : i_acl_278_v_eia608_from_utf8216_q = i_switchleaf24_eia608_from_utf888_q;
            default : i_acl_278_v_eia608_from_utf8216_q = 1'b0;
        endcase
    end

    // c_i8_67607_recast_x(CONSTANT,804)
    assign c_i8_67607_recast_x_q = $unsigned(8'b10111101);

    // i_switchleaf30_eia608_from_utf892(LOGICAL,651)@98
    assign i_switchleaf30_eia608_from_utf892_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_67607_recast_x_q ? 1'b1 : 1'b0);

    // c_i8_65616_recast_x(CONSTANT,803)
    assign c_i8_65616_recast_x_q = $unsigned(8'b10111111);

    // i_switchleaf32_eia608_from_utf894(LOGICAL,652)@98
    assign i_switchleaf32_eia608_from_utf894_q = $unsigned(redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q == c_i8_65616_recast_x_q ? 1'b1 : 1'b0);

    // i_pivot34_eia608_from_utf851(COMPARE,392)@97 + 1
    assign i_pivot34_eia608_from_utf851_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot34_eia608_from_utf851_b = $unsigned({{2{c_i8_65616_recast_x_q[7]}}, c_i8_65616_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot34_eia608_from_utf851_o <= 10'b0;
        end
        else
        begin
            i_pivot34_eia608_from_utf851_o <= $unsigned($signed(i_pivot34_eia608_from_utf851_a) - $signed(i_pivot34_eia608_from_utf851_b));
        end
    end
    assign i_pivot34_eia608_from_utf851_c[0] = i_pivot34_eia608_from_utf851_o[9];

    // i_acl_279_v_eia608_from_utf8217(MUX,225)@98
    assign i_acl_279_v_eia608_from_utf8217_s = i_pivot34_eia608_from_utf851_c;
    always @(i_acl_279_v_eia608_from_utf8217_s or i_switchleaf32_eia608_from_utf894_q or i_switchleaf30_eia608_from_utf892_q)
    begin
        unique case (i_acl_279_v_eia608_from_utf8217_s)
            1'b0 : i_acl_279_v_eia608_from_utf8217_q = i_switchleaf32_eia608_from_utf894_q;
            1'b1 : i_acl_279_v_eia608_from_utf8217_q = i_switchleaf30_eia608_from_utf892_q;
            default : i_acl_279_v_eia608_from_utf8217_q = 1'b0;
        endcase
    end

    // i_pivot36_eia608_from_utf829(COMPARE,393)@98
    assign i_pivot36_eia608_from_utf829_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot36_eia608_from_utf829_b = $unsigned({{2{c_i8_67607_recast_x_q[7]}}, c_i8_67607_recast_x_q});
    assign i_pivot36_eia608_from_utf829_o = $unsigned($signed(i_pivot36_eia608_from_utf829_a) - $signed(i_pivot36_eia608_from_utf829_b));
    assign i_pivot36_eia608_from_utf829_c[0] = i_pivot36_eia608_from_utf829_o[9];

    // i_acl_280_v_eia608_from_utf8218(MUX,226)@98
    assign i_acl_280_v_eia608_from_utf8218_s = i_pivot36_eia608_from_utf829_c;
    always @(i_acl_280_v_eia608_from_utf8218_s or i_acl_279_v_eia608_from_utf8217_q or i_acl_278_v_eia608_from_utf8216_q)
    begin
        unique case (i_acl_280_v_eia608_from_utf8218_s)
            1'b0 : i_acl_280_v_eia608_from_utf8218_q = i_acl_279_v_eia608_from_utf8217_q;
            1'b1 : i_acl_280_v_eia608_from_utf8218_q = i_acl_278_v_eia608_from_utf8216_q;
            default : i_acl_280_v_eia608_from_utf8218_q = 1'b0;
        endcase
    end

    // i_pivot38_eia608_from_utf817(COMPARE,394)@98
    assign i_pivot38_eia608_from_utf817_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot38_eia608_from_utf817_b = $unsigned({{2{c_i8_80601_recast_x_q[7]}}, c_i8_80601_recast_x_q});
    assign i_pivot38_eia608_from_utf817_o = $unsigned($signed(i_pivot38_eia608_from_utf817_a) - $signed(i_pivot38_eia608_from_utf817_b));
    assign i_pivot38_eia608_from_utf817_c[0] = i_pivot38_eia608_from_utf817_o[9];

    // i_acl_281_v_eia608_from_utf8219(MUX,228)@98
    assign i_acl_281_v_eia608_from_utf8219_s = i_pivot38_eia608_from_utf817_c;
    always @(i_acl_281_v_eia608_from_utf8219_s or i_acl_280_v_eia608_from_utf8218_q or i_acl_277_v_eia608_from_utf8215_q)
    begin
        unique case (i_acl_281_v_eia608_from_utf8219_s)
            1'b0 : i_acl_281_v_eia608_from_utf8219_q = i_acl_280_v_eia608_from_utf8218_q;
            1'b1 : i_acl_281_v_eia608_from_utf8219_q = i_acl_277_v_eia608_from_utf8215_q;
            default : i_acl_281_v_eia608_from_utf8219_q = 1'b0;
        endcase
    end

    // i_acl_281_eia608_from_utf8220(LOGICAL,227)@98
    assign i_acl_281_eia608_from_utf8220_q = i_acl_281_v_eia608_from_utf8219_q ^ VCC_q;

    // i_pivot40_eia608_from_utf811(COMPARE,395)@98
    assign i_pivot40_eia608_from_utf811_a = $unsigned({{2{redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q[7]}}, redist7_sync_together743_aunroll_x_in_c1_eni29_8_tpl_1_q});
    assign i_pivot40_eia608_from_utf811_b = $unsigned({{2{c_i8_87598_recast_x_q[7]}}, c_i8_87598_recast_x_q});
    assign i_pivot40_eia608_from_utf811_o = $unsigned($signed(i_pivot40_eia608_from_utf811_a) - $signed(i_pivot40_eia608_from_utf811_b));
    assign i_pivot40_eia608_from_utf811_c[0] = i_pivot40_eia608_from_utf811_o[9];

    // i_acl_282_eia608_from_utf8221(MUX,229)@98
    assign i_acl_282_eia608_from_utf8221_s = i_pivot40_eia608_from_utf811_c;
    always @(i_acl_282_eia608_from_utf8221_s or i_acl_281_eia608_from_utf8220_q or i_acl_275_eia608_from_utf8213_q)
    begin
        unique case (i_acl_282_eia608_from_utf8221_s)
            1'b0 : i_acl_282_eia608_from_utf8221_q = i_acl_281_eia608_from_utf8220_q;
            1'b1 : i_acl_282_eia608_from_utf8221_q = i_acl_275_eia608_from_utf8213_q;
            default : i_acl_282_eia608_from_utf8221_q = 1'b0;
        endcase
    end

    // i_acl_283_eia608_from_utf8222(LOGICAL,230)@98 + 1
    assign i_acl_283_eia608_from_utf8222_qi = i_cmp75_eia608_from_utf89_q & i_acl_282_eia608_from_utf8221_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_283_eia608_from_utf8222_delay ( .xin(i_acl_283_eia608_from_utf8222_qi), .xout(i_acl_283_eia608_from_utf8222_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2(DELAY,920)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_delay_0 <= '0;
            redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_q <= '0;
        end
        else
        begin
            redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_delay_0 <= $unsigned(in_c1_eni29_22_tpl);
            redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_q <= redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_10_eia608_from_utf8247(LOGICAL,429)@99
    assign i_reduction_eia608_from_utf8_10_eia608_from_utf8247_q = redist31_sync_together743_aunroll_x_in_c1_eni29_22_tpl_2_q | i_acl_283_eia608_from_utf8222_q;

    // i_reduction_eia608_from_utf8_12_eia608_from_utf8249(LOGICAL,445)@99
    assign i_reduction_eia608_from_utf8_12_eia608_from_utf8249_q = i_reduction_eia608_from_utf8_10_eia608_from_utf8247_q | i_reduction_eia608_from_utf8_11_eia608_from_utf8248_q;

    // i_unnamed_eia608_from_utf8250(LOGICAL,662)@99
    assign i_unnamed_eia608_from_utf8250_q = i_reduction_eia608_from_utf8_12_eia608_from_utf8249_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_acl_347_eia608_from_utf8251(MUX,249)@99
    assign i_acl_347_eia608_from_utf8251_s = i_unnamed_eia608_from_utf8250_q;
    always @(i_acl_347_eia608_from_utf8251_s or i_acl_271_eia608_from_utf8210_q or c_i32_0590_q)
    begin
        unique case (i_acl_347_eia608_from_utf8251_s)
            1'b0 : i_acl_347_eia608_from_utf8251_q = i_acl_271_eia608_from_utf8210_q;
            1'b1 : i_acl_347_eia608_from_utf8251_q = c_i32_0590_q;
            default : i_acl_347_eia608_from_utf8251_q = 32'b0;
        endcase
    end

    // redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2(DELAY,922)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_delay_0 <= '0;
            redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_q <= '0;
        end
        else
        begin
            redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_delay_0 <= $unsigned(in_c1_eni29_24_tpl);
            redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_q <= redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_delay_0;
        end
    end

    // i_acl_352_eia608_from_utf8252(MUX,250)@99
    assign i_acl_352_eia608_from_utf8252_s = redist33_sync_together743_aunroll_x_in_c1_eni29_24_tpl_2_q;
    always @(i_acl_352_eia608_from_utf8252_s or i_acl_347_eia608_from_utf8251_q or i_acl_126_eia608_from_utf88_vt_join_q)
    begin
        unique case (i_acl_352_eia608_from_utf8252_s)
            1'b0 : i_acl_352_eia608_from_utf8252_q = i_acl_347_eia608_from_utf8251_q;
            1'b1 : i_acl_352_eia608_from_utf8252_q = i_acl_126_eia608_from_utf88_vt_join_q;
            default : i_acl_352_eia608_from_utf8252_q = 32'b0;
        endcase
    end

    // redist55_i_switchleaf183_eia608_from_utf8160_q_2(DELAY,944)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_switchleaf183_eia608_from_utf8160_q_2_delay_0 <= '0;
            redist55_i_switchleaf183_eia608_from_utf8160_q_2_q <= '0;
        end
        else
        begin
            redist55_i_switchleaf183_eia608_from_utf8160_q_2_delay_0 <= $unsigned(i_switchleaf183_eia608_from_utf8160_q);
            redist55_i_switchleaf183_eia608_from_utf8160_q_2_q <= redist55_i_switchleaf183_eia608_from_utf8160_q_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_14_eia608_from_utf8253(LOGICAL,460)@99
    assign i_reduction_eia608_from_utf8_14_eia608_from_utf8253_q = redist55_i_switchleaf183_eia608_from_utf8160_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2(DELAY,923)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_delay_0 <= '0;
            redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q <= '0;
        end
        else
        begin
            redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_delay_0 <= $unsigned(in_c1_eni29_25_tpl);
            redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q <= redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_15_eia608_from_utf8254(LOGICAL,469)@99
    assign i_reduction_eia608_from_utf8_15_eia608_from_utf8254_q = redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q & i_reduction_eia608_from_utf8_14_eia608_from_utf8253_q;

    // i_acl_363_eia608_from_utf8255(MUX,251)@99
    assign i_acl_363_eia608_from_utf8255_s = i_reduction_eia608_from_utf8_15_eia608_from_utf8254_q;
    always @(i_acl_363_eia608_from_utf8255_s or i_acl_352_eia608_from_utf8252_q or c_i32_4650665_q)
    begin
        unique case (i_acl_363_eia608_from_utf8255_s)
            1'b0 : i_acl_363_eia608_from_utf8255_q = i_acl_352_eia608_from_utf8252_q;
            1'b1 : i_acl_363_eia608_from_utf8255_q = c_i32_4650665_q;
            default : i_acl_363_eia608_from_utf8255_q = 32'b0;
        endcase
    end

    // i_acl_364_eia608_from_utf8256(LOGICAL,252)@97 + 1
    assign i_acl_364_eia608_from_utf8256_qi = i_pivot87_eia608_from_utf8106_c ^ i_pivot85_eia608_from_utf8140_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_364_eia608_from_utf8256_delay ( .xin(i_acl_364_eia608_from_utf8256_qi), .xout(i_acl_364_eia608_from_utf8256_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist128_i_acl_364_eia608_from_utf8256_q_2(DELAY,1017)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist128_i_acl_364_eia608_from_utf8256_q_2_q <= '0;
        end
        else
        begin
            redist128_i_acl_364_eia608_from_utf8256_q_2_q <= $unsigned(i_acl_364_eia608_from_utf8256_q);
        end
    end

    // i_reduction_eia608_from_utf8_16_eia608_from_utf8257(LOGICAL,477)@99
    assign i_reduction_eia608_from_utf8_16_eia608_from_utf8257_q = redist128_i_acl_364_eia608_from_utf8256_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_reduction_eia608_from_utf8_18_eia608_from_utf8258(LOGICAL,492)@99
    assign i_reduction_eia608_from_utf8_18_eia608_from_utf8258_q = i_reduction_eia608_from_utf8_16_eia608_from_utf8257_q & redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q;

    // i_acl_374_eia608_from_utf8259(MUX,253)@99 + 1
    assign i_acl_374_eia608_from_utf8259_s = i_reduction_eia608_from_utf8_18_eia608_from_utf8258_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_374_eia608_from_utf8259_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_374_eia608_from_utf8259_s)
                1'b0 : i_acl_374_eia608_from_utf8259_q <= i_acl_363_eia608_from_utf8255_q;
                1'b1 : i_acl_374_eia608_from_utf8259_q <= c_i32_4646587_q;
                default : i_acl_374_eia608_from_utf8259_q <= 32'b0;
            endcase
        end
    end

    // redist54_i_switchleaf185_eia608_from_utf8184_q_2(DELAY,943)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_switchleaf185_eia608_from_utf8184_q_2_delay_0 <= '0;
            redist54_i_switchleaf185_eia608_from_utf8184_q_2_q <= '0;
        end
        else
        begin
            redist54_i_switchleaf185_eia608_from_utf8184_q_2_delay_0 <= $unsigned(i_switchleaf185_eia608_from_utf8184_q);
            redist54_i_switchleaf185_eia608_from_utf8184_q_2_q <= redist54_i_switchleaf185_eia608_from_utf8184_q_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_20_eia608_from_utf8260(LOGICAL,507)@99
    assign i_reduction_eia608_from_utf8_20_eia608_from_utf8260_q = redist54_i_switchleaf185_eia608_from_utf8184_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_reduction_eia608_from_utf8_21_eia608_from_utf8261(LOGICAL,516)@99 + 1
    assign i_reduction_eia608_from_utf8_21_eia608_from_utf8261_qi = redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q & i_reduction_eia608_from_utf8_20_eia608_from_utf8260_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_21_eia608_from_utf8261_delay ( .xin(i_reduction_eia608_from_utf8_21_eia608_from_utf8261_qi), .xout(i_reduction_eia608_from_utf8_21_eia608_from_utf8261_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_386_eia608_from_utf8262(MUX,254)@100
    assign i_acl_386_eia608_from_utf8262_s = i_reduction_eia608_from_utf8_21_eia608_from_utf8261_q;
    always @(i_acl_386_eia608_from_utf8262_s or i_acl_374_eia608_from_utf8259_q or c_i32_9984666_q)
    begin
        unique case (i_acl_386_eia608_from_utf8262_s)
            1'b0 : i_acl_386_eia608_from_utf8262_q = i_acl_374_eia608_from_utf8259_q;
            1'b1 : i_acl_386_eia608_from_utf8262_q = c_i32_9984666_q;
            default : i_acl_386_eia608_from_utf8262_q = 32'b0;
        endcase
    end

    // i_acl_387_eia608_from_utf8263(LOGICAL,255)@97 + 1
    assign i_acl_387_eia608_from_utf8263_qi = i_pivot199_eia608_from_utf867_c ^ i_pivot197_eia608_from_utf8118_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_387_eia608_from_utf8263_delay ( .xin(i_acl_387_eia608_from_utf8263_qi), .xout(i_acl_387_eia608_from_utf8263_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist127_i_acl_387_eia608_from_utf8263_q_2(DELAY,1016)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist127_i_acl_387_eia608_from_utf8263_q_2_q <= '0;
        end
        else
        begin
            redist127_i_acl_387_eia608_from_utf8263_q_2_q <= $unsigned(i_acl_387_eia608_from_utf8263_q);
        end
    end

    // i_reduction_eia608_from_utf8_22_eia608_from_utf8264(LOGICAL,524)@99
    assign i_reduction_eia608_from_utf8_22_eia608_from_utf8264_q = redist127_i_acl_387_eia608_from_utf8263_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_reduction_eia608_from_utf8_24_eia608_from_utf8265(LOGICAL,540)@99 + 1
    assign i_reduction_eia608_from_utf8_24_eia608_from_utf8265_qi = i_reduction_eia608_from_utf8_22_eia608_from_utf8264_q & redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_24_eia608_from_utf8265_delay ( .xin(i_reduction_eia608_from_utf8_24_eia608_from_utf8265_qi), .xout(i_reduction_eia608_from_utf8_24_eia608_from_utf8265_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_396_eia608_from_utf8266(MUX,256)@100
    assign i_acl_396_eia608_from_utf8266_s = i_reduction_eia608_from_utf8_24_eia608_from_utf8265_q;
    always @(i_acl_396_eia608_from_utf8266_s or i_acl_386_eia608_from_utf8262_q or c_i32_4654667_q)
    begin
        unique case (i_acl_396_eia608_from_utf8266_s)
            1'b0 : i_acl_396_eia608_from_utf8266_q = i_acl_386_eia608_from_utf8262_q;
            1'b1 : i_acl_396_eia608_from_utf8266_q = c_i32_4654667_q;
            default : i_acl_396_eia608_from_utf8266_q = 32'b0;
        endcase
    end

    // redist52_i_switchleaf191_eia608_from_utf8187_q_2(DELAY,941)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_switchleaf191_eia608_from_utf8187_q_2_delay_0 <= '0;
            redist52_i_switchleaf191_eia608_from_utf8187_q_2_q <= '0;
        end
        else
        begin
            redist52_i_switchleaf191_eia608_from_utf8187_q_2_delay_0 <= $unsigned(i_switchleaf191_eia608_from_utf8187_q);
            redist52_i_switchleaf191_eia608_from_utf8187_q_2_q <= redist52_i_switchleaf191_eia608_from_utf8187_q_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_26_eia608_from_utf8267(LOGICAL,547)@99
    assign i_reduction_eia608_from_utf8_26_eia608_from_utf8267_q = redist52_i_switchleaf191_eia608_from_utf8187_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_reduction_eia608_from_utf8_27_eia608_from_utf8268(LOGICAL,548)@99 + 1
    assign i_reduction_eia608_from_utf8_27_eia608_from_utf8268_qi = redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q & i_reduction_eia608_from_utf8_26_eia608_from_utf8267_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_27_eia608_from_utf8268_delay ( .xin(i_reduction_eia608_from_utf8_27_eia608_from_utf8268_qi), .xout(i_reduction_eia608_from_utf8_27_eia608_from_utf8268_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_408_eia608_from_utf8269(MUX,257)@100
    assign i_acl_408_eia608_from_utf8269_s = i_reduction_eia608_from_utf8_27_eia608_from_utf8268_q;
    always @(i_acl_408_eia608_from_utf8269_s or i_acl_396_eia608_from_utf8266_q or c_i32_4655668_q)
    begin
        unique case (i_acl_408_eia608_from_utf8269_s)
            1'b0 : i_acl_408_eia608_from_utf8269_q = i_acl_396_eia608_from_utf8266_q;
            1'b1 : i_acl_408_eia608_from_utf8269_q = c_i32_4655668_q;
            default : i_acl_408_eia608_from_utf8269_q = 32'b0;
        endcase
    end

    // redist122_i_cmp259_eia608_from_utf869_q_2(DELAY,1011)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist122_i_cmp259_eia608_from_utf869_q_2_q <= '0;
        end
        else
        begin
            redist122_i_cmp259_eia608_from_utf869_q_2_q <= $unsigned(redist121_i_cmp259_eia608_from_utf869_q_1_q);
        end
    end

    // i_reduction_eia608_from_utf8_29_eia608_from_utf8270(LOGICAL,549)@99
    assign i_reduction_eia608_from_utf8_29_eia608_from_utf8270_q = redist122_i_cmp259_eia608_from_utf869_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_reduction_eia608_from_utf8_30_eia608_from_utf8271(LOGICAL,550)@99 + 1
    assign i_reduction_eia608_from_utf8_30_eia608_from_utf8271_qi = redist34_sync_together743_aunroll_x_in_c1_eni29_25_tpl_2_q & i_reduction_eia608_from_utf8_29_eia608_from_utf8270_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_30_eia608_from_utf8271_delay ( .xin(i_reduction_eia608_from_utf8_30_eia608_from_utf8271_qi), .xout(i_reduction_eia608_from_utf8_30_eia608_from_utf8271_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_420_eia608_from_utf8272(MUX,258)@100
    assign i_acl_420_eia608_from_utf8272_s = i_reduction_eia608_from_utf8_30_eia608_from_utf8271_q;
    always @(i_acl_420_eia608_from_utf8272_s or i_acl_408_eia608_from_utf8269_q or c_i32_4653669_q)
    begin
        unique case (i_acl_420_eia608_from_utf8272_s)
            1'b0 : i_acl_420_eia608_from_utf8272_q = i_acl_408_eia608_from_utf8269_q;
            1'b1 : i_acl_420_eia608_from_utf8272_q = c_i32_4653669_q;
            default : i_acl_420_eia608_from_utf8272_q = 32'b0;
        endcase
    end

    // redist51_i_switchleaf202_eia608_from_utf8163_q_2(DELAY,940)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_switchleaf202_eia608_from_utf8163_q_2_delay_0 <= '0;
            redist51_i_switchleaf202_eia608_from_utf8163_q_2_q <= '0;
        end
        else
        begin
            redist51_i_switchleaf202_eia608_from_utf8163_q_2_delay_0 <= $unsigned(i_switchleaf202_eia608_from_utf8163_q);
            redist51_i_switchleaf202_eia608_from_utf8163_q_2_q <= redist51_i_switchleaf202_eia608_from_utf8163_q_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_32_eia608_from_utf8273(LOGICAL,551)@99
    assign i_reduction_eia608_from_utf8_32_eia608_from_utf8273_q = redist51_i_switchleaf202_eia608_from_utf8163_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2(DELAY,924)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_delay_0 <= '0;
            redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_q <= '0;
        end
        else
        begin
            redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_delay_0 <= $unsigned(in_c1_eni29_26_tpl);
            redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_q <= redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_33_eia608_from_utf8274(LOGICAL,552)@99 + 1
    assign i_reduction_eia608_from_utf8_33_eia608_from_utf8274_qi = redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_q & i_reduction_eia608_from_utf8_32_eia608_from_utf8273_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_33_eia608_from_utf8274_delay ( .xin(i_reduction_eia608_from_utf8_33_eia608_from_utf8274_qi), .xout(i_reduction_eia608_from_utf8_33_eia608_from_utf8274_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_431_eia608_from_utf8275(MUX,259)@100
    assign i_acl_431_eia608_from_utf8275_s = i_reduction_eia608_from_utf8_33_eia608_from_utf8274_q;
    always @(i_acl_431_eia608_from_utf8275_s or i_acl_420_eia608_from_utf8272_q or c_i32_4924670_q)
    begin
        unique case (i_acl_431_eia608_from_utf8275_s)
            1'b0 : i_acl_431_eia608_from_utf8275_q = i_acl_420_eia608_from_utf8272_q;
            1'b1 : i_acl_431_eia608_from_utf8275_q = c_i32_4924670_q;
            default : i_acl_431_eia608_from_utf8275_q = 32'b0;
        endcase
    end

    // redist50_i_switchleaf204_eia608_from_utf8165_q_2(DELAY,939)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_switchleaf204_eia608_from_utf8165_q_2_delay_0 <= '0;
            redist50_i_switchleaf204_eia608_from_utf8165_q_2_q <= '0;
        end
        else
        begin
            redist50_i_switchleaf204_eia608_from_utf8165_q_2_delay_0 <= $unsigned(i_switchleaf204_eia608_from_utf8165_q);
            redist50_i_switchleaf204_eia608_from_utf8165_q_2_q <= redist50_i_switchleaf204_eia608_from_utf8165_q_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_35_eia608_from_utf8276(LOGICAL,553)@99
    assign i_reduction_eia608_from_utf8_35_eia608_from_utf8276_q = redist50_i_switchleaf204_eia608_from_utf8165_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_reduction_eia608_from_utf8_36_eia608_from_utf8277(LOGICAL,554)@99 + 1
    assign i_reduction_eia608_from_utf8_36_eia608_from_utf8277_qi = redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_q & i_reduction_eia608_from_utf8_35_eia608_from_utf8276_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_36_eia608_from_utf8277_delay ( .xin(i_reduction_eia608_from_utf8_36_eia608_from_utf8277_qi), .xout(i_reduction_eia608_from_utf8_36_eia608_from_utf8277_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_442_eia608_from_utf8278(MUX,260)@100
    assign i_acl_442_eia608_from_utf8278_s = i_reduction_eia608_from_utf8_36_eia608_from_utf8277_q;
    always @(i_acl_442_eia608_from_utf8278_s or i_acl_431_eia608_from_utf8275_q or c_i32_4925671_q)
    begin
        unique case (i_acl_442_eia608_from_utf8278_s)
            1'b0 : i_acl_442_eia608_from_utf8278_q = i_acl_431_eia608_from_utf8275_q;
            1'b1 : i_acl_442_eia608_from_utf8278_q = c_i32_4925671_q;
            default : i_acl_442_eia608_from_utf8278_q = 32'b0;
        endcase
    end

    // i_reduction_eia608_from_utf8_39_eia608_from_utf8279(LOGICAL,555)@99 + 1
    assign i_reduction_eia608_from_utf8_39_eia608_from_utf8279_qi = redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_q & i_reduction_eia608_from_utf8_14_eia608_from_utf8253_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_39_eia608_from_utf8279_delay ( .xin(i_reduction_eia608_from_utf8_39_eia608_from_utf8279_qi), .xout(i_reduction_eia608_from_utf8_39_eia608_from_utf8279_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_453_eia608_from_utf8280(MUX,261)@100 + 1
    assign i_acl_453_eia608_from_utf8280_s = i_reduction_eia608_from_utf8_39_eia608_from_utf8279_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_453_eia608_from_utf8280_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_453_eia608_from_utf8280_s)
                1'b0 : i_acl_453_eia608_from_utf8280_q <= i_acl_442_eia608_from_utf8278_q;
                1'b1 : i_acl_453_eia608_from_utf8280_q <= c_i32_4926672_q;
                default : i_acl_453_eia608_from_utf8280_q <= 32'b0;
            endcase
        end
    end

    // redist49_i_switchleaf210_eia608_from_utf8167_q_2(DELAY,938)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_switchleaf210_eia608_from_utf8167_q_2_delay_0 <= '0;
            redist49_i_switchleaf210_eia608_from_utf8167_q_2_q <= '0;
        end
        else
        begin
            redist49_i_switchleaf210_eia608_from_utf8167_q_2_delay_0 <= $unsigned(i_switchleaf210_eia608_from_utf8167_q);
            redist49_i_switchleaf210_eia608_from_utf8167_q_2_q <= redist49_i_switchleaf210_eia608_from_utf8167_q_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_41_eia608_from_utf8281(LOGICAL,556)@99
    assign i_reduction_eia608_from_utf8_41_eia608_from_utf8281_q = redist49_i_switchleaf210_eia608_from_utf8167_q_2_q & redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q;

    // i_reduction_eia608_from_utf8_42_eia608_from_utf8282(LOGICAL,557)@99 + 1
    assign i_reduction_eia608_from_utf8_42_eia608_from_utf8282_qi = redist35_sync_together743_aunroll_x_in_c1_eni29_26_tpl_2_q & i_reduction_eia608_from_utf8_41_eia608_from_utf8281_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_42_eia608_from_utf8282_delay ( .xin(i_reduction_eia608_from_utf8_42_eia608_from_utf8282_qi), .xout(i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist65_i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q_2(DELAY,954)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q_2_q <= '0;
        end
        else
        begin
            redist65_i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q);
        end
    end

    // i_acl_464_eia608_from_utf8283(MUX,262)@101
    assign i_acl_464_eia608_from_utf8283_s = redist65_i_reduction_eia608_from_utf8_42_eia608_from_utf8282_q_2_q;
    always @(i_acl_464_eia608_from_utf8283_s or i_acl_453_eia608_from_utf8280_q or c_i32_4927673_q)
    begin
        unique case (i_acl_464_eia608_from_utf8283_s)
            1'b0 : i_acl_464_eia608_from_utf8283_q = i_acl_453_eia608_from_utf8280_q;
            1'b1 : i_acl_464_eia608_from_utf8283_q = c_i32_4927673_q;
            default : i_acl_464_eia608_from_utf8283_q = 32'b0;
        endcase
    end

    // redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2(DELAY,950)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_delay_0 <= '0;
            redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_q <= '0;
        end
        else
        begin
            redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q);
            redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_q <= redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_delay_0;
        end
    end

    // redist16_sync_together743_aunroll_x_in_c1_eni29_13_tpl_3(DELAY,905)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together743_aunroll_x_in_c1_eni29_13_tpl_3_q <= '0;
        end
        else
        begin
            redist16_sync_together743_aunroll_x_in_c1_eni29_13_tpl_3_q <= $unsigned(redist15_sync_together743_aunroll_x_in_c1_eni29_13_tpl_2_q);
        end
    end

    // i_reduction_eia608_from_utf8_45_eia608_from_utf8285(LOGICAL,559)@100
    assign i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q = redist16_sync_together743_aunroll_x_in_c1_eni29_13_tpl_3_q & redist61_i_reduction_eia608_from_utf8_5_eia608_from_utf8243_q_2_q;

    // c_i8_128632_recast_x(CONSTANT,801)
    assign c_i8_128632_recast_x_q = $unsigned(8'b10000000);

    // i_pivot45_eia608_from_utf896(LOGICAL,397)@100
    assign i_pivot45_eia608_from_utf896_q = $unsigned(redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q == c_i8_128632_recast_x_q ? 1'b1 : 1'b0);

    // redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3(DELAY,914)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_delay_0 <= '0;
            redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q <= '0;
        end
        else
        begin
            redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_delay_0 <= $unsigned(redist24_sync_together743_aunroll_x_in_c1_eni29_20_tpl_1_q);
            redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q <= redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_44_eia608_from_utf8284(LOGICAL,558)@100
    assign i_reduction_eia608_from_utf8_44_eia608_from_utf8284_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & i_pivot45_eia608_from_utf896_q;

    // i_reduction_eia608_from_utf8_46_eia608_from_utf8286(LOGICAL,560)@100 + 1
    assign i_reduction_eia608_from_utf8_46_eia608_from_utf8286_qi = i_reduction_eia608_from_utf8_44_eia608_from_utf8284_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_46_eia608_from_utf8286_delay ( .xin(i_reduction_eia608_from_utf8_46_eia608_from_utf8286_qi), .xout(i_reduction_eia608_from_utf8_46_eia608_from_utf8286_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_475_eia608_from_utf8287(MUX,263)@101
    assign i_acl_475_eia608_from_utf8287_s = i_reduction_eia608_from_utf8_46_eia608_from_utf8286_q;
    always @(i_acl_475_eia608_from_utf8287_s or i_acl_464_eia608_from_utf8283_q or c_i32_4656674_q)
    begin
        unique case (i_acl_475_eia608_from_utf8287_s)
            1'b0 : i_acl_475_eia608_from_utf8287_q = i_acl_464_eia608_from_utf8283_q;
            1'b1 : i_acl_475_eia608_from_utf8287_q = c_i32_4656674_q;
            default : i_acl_475_eia608_from_utf8287_q = 32'b0;
        endcase
    end

    // redist118_i_not_cmp71_eia608_from_utf8242_q_2(DELAY,1007)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist118_i_not_cmp71_eia608_from_utf8242_q_2_delay_0 <= '0;
            redist118_i_not_cmp71_eia608_from_utf8242_q_2_q <= '0;
        end
        else
        begin
            redist118_i_not_cmp71_eia608_from_utf8242_q_2_delay_0 <= $unsigned(i_not_cmp71_eia608_from_utf8242_q);
            redist118_i_not_cmp71_eia608_from_utf8242_q_2_q <= redist118_i_not_cmp71_eia608_from_utf8242_q_2_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_48_eia608_from_utf8290(LOGICAL,562)@100 + 1
    assign i_reduction_eia608_from_utf8_48_eia608_from_utf8290_qi = redist118_i_not_cmp71_eia608_from_utf8242_q_2_q & redist16_sync_together743_aunroll_x_in_c1_eni29_13_tpl_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_48_eia608_from_utf8290_delay ( .xin(i_reduction_eia608_from_utf8_48_eia608_from_utf8290_qi), .xout(i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist113_i_not_cmp75_eia608_from_utf8241_q_2(DELAY,1002)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_i_not_cmp75_eia608_from_utf8241_q_2_delay_0 <= '0;
            redist113_i_not_cmp75_eia608_from_utf8241_q_2_q <= '0;
        end
        else
        begin
            redist113_i_not_cmp75_eia608_from_utf8241_q_2_delay_0 <= $unsigned(i_not_cmp75_eia608_from_utf8241_q);
            redist113_i_not_cmp75_eia608_from_utf8241_q_2_q <= redist113_i_not_cmp75_eia608_from_utf8241_q_2_delay_0;
        end
    end

    // c_i8_126644_recast_x(CONSTANT,800)
    assign c_i8_126644_recast_x_q = $unsigned(8'b10000010);

    // i_pivot43_eia608_from_utf8122(COMPARE,396)@100
    assign i_pivot43_eia608_from_utf8122_a = $unsigned({{2{redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q[7]}}, redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q});
    assign i_pivot43_eia608_from_utf8122_b = $unsigned({{2{c_i8_126644_recast_x_q[7]}}, c_i8_126644_recast_x_q});
    assign i_pivot43_eia608_from_utf8122_o = $unsigned($signed(i_pivot43_eia608_from_utf8122_a) - $signed(i_pivot43_eia608_from_utf8122_b));
    assign i_pivot43_eia608_from_utf8122_c[0] = i_pivot43_eia608_from_utf8122_o[9];

    // i_acl_476_eia608_from_utf8288(LOGICAL,264)@100
    assign i_acl_476_eia608_from_utf8288_q = i_pivot45_eia608_from_utf896_q ^ i_pivot43_eia608_from_utf8122_c;

    // i_reduction_eia608_from_utf8_47_eia608_from_utf8289(LOGICAL,561)@100 + 1
    assign i_reduction_eia608_from_utf8_47_eia608_from_utf8289_qi = i_acl_476_eia608_from_utf8288_q & redist113_i_not_cmp75_eia608_from_utf8241_q_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_47_eia608_from_utf8289_delay ( .xin(i_reduction_eia608_from_utf8_47_eia608_from_utf8289_qi), .xout(i_reduction_eia608_from_utf8_47_eia608_from_utf8289_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_49_eia608_from_utf8291(LOGICAL,563)@101
    assign i_reduction_eia608_from_utf8_49_eia608_from_utf8291_q = i_reduction_eia608_from_utf8_47_eia608_from_utf8289_q & i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q;

    // redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4(DELAY,915)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q <= '0;
        end
        else
        begin
            redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q <= $unsigned(redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q);
        end
    end

    // i_reduction_eia608_from_utf8_50_eia608_from_utf8292(LOGICAL,564)@101
    assign i_reduction_eia608_from_utf8_50_eia608_from_utf8292_q = redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q & i_reduction_eia608_from_utf8_49_eia608_from_utf8291_q;

    // i_acl_487_eia608_from_utf8293(MUX,265)@101
    assign i_acl_487_eia608_from_utf8293_s = i_reduction_eia608_from_utf8_50_eia608_from_utf8292_q;
    always @(i_acl_487_eia608_from_utf8293_s or i_acl_475_eia608_from_utf8287_q or c_i32_4640675_q)
    begin
        unique case (i_acl_487_eia608_from_utf8293_s)
            1'b0 : i_acl_487_eia608_from_utf8293_q = i_acl_475_eia608_from_utf8287_q;
            1'b1 : i_acl_487_eia608_from_utf8293_q = c_i32_4640675_q;
            default : i_acl_487_eia608_from_utf8293_q = 32'b0;
        endcase
    end

    // redist114_i_not_cmp75_eia608_from_utf8241_q_3(DELAY,1003)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_i_not_cmp75_eia608_from_utf8241_q_3_q <= '0;
        end
        else
        begin
            redist114_i_not_cmp75_eia608_from_utf8241_q_3_q <= $unsigned(redist113_i_not_cmp75_eia608_from_utf8241_q_2_q);
        end
    end

    // c_i8_125617_recast_x(CONSTANT,799)
    assign c_i8_125617_recast_x_q = $unsigned(8'b10000011);

    // i_pivot53_eia608_from_utf853(COMPARE,401)@100
    assign i_pivot53_eia608_from_utf853_a = $unsigned({{2{redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q[7]}}, redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q});
    assign i_pivot53_eia608_from_utf853_b = $unsigned({{2{c_i8_125617_recast_x_q[7]}}, c_i8_125617_recast_x_q});
    assign i_pivot53_eia608_from_utf853_o = $unsigned($signed(i_pivot53_eia608_from_utf853_a) - $signed(i_pivot53_eia608_from_utf853_b));
    assign i_pivot53_eia608_from_utf853_c[0] = i_pivot53_eia608_from_utf853_o[9];

    // i_acl_489_eia608_from_utf8294(LOGICAL,266)@100 + 1
    assign i_acl_489_eia608_from_utf8294_qi = i_pivot43_eia608_from_utf8122_c ^ i_pivot53_eia608_from_utf853_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_489_eia608_from_utf8294_delay ( .xin(i_acl_489_eia608_from_utf8294_qi), .xout(i_acl_489_eia608_from_utf8294_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_51_eia608_from_utf8295(LOGICAL,565)@101
    assign i_reduction_eia608_from_utf8_51_eia608_from_utf8295_q = i_acl_489_eia608_from_utf8294_q & redist114_i_not_cmp75_eia608_from_utf8241_q_3_q;

    // i_reduction_eia608_from_utf8_53_eia608_from_utf8296(LOGICAL,566)@101
    assign i_reduction_eia608_from_utf8_53_eia608_from_utf8296_q = i_reduction_eia608_from_utf8_51_eia608_from_utf8295_q & i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q;

    // i_reduction_eia608_from_utf8_54_eia608_from_utf8297(LOGICAL,567)@101
    assign i_reduction_eia608_from_utf8_54_eia608_from_utf8297_q = redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q & i_reduction_eia608_from_utf8_53_eia608_from_utf8296_q;

    // i_acl_499_eia608_from_utf8298(MUX,267)@101
    assign i_acl_499_eia608_from_utf8298_s = i_reduction_eia608_from_utf8_54_eia608_from_utf8297_q;
    always @(i_acl_499_eia608_from_utf8298_s or i_acl_487_eia608_from_utf8293_q or c_i32_4657676_q)
    begin
        unique case (i_acl_499_eia608_from_utf8298_s)
            1'b0 : i_acl_499_eia608_from_utf8298_q = i_acl_487_eia608_from_utf8293_q;
            1'b1 : i_acl_499_eia608_from_utf8298_q = c_i32_4657676_q;
            default : i_acl_499_eia608_from_utf8298_q = 32'b0;
        endcase
    end

    // c_i8_124633_recast_x(CONSTANT,798)
    assign c_i8_124633_recast_x_q = $unsigned(8'b10000100);

    // i_pivot51_eia608_from_utf898(COMPARE,400)@100
    assign i_pivot51_eia608_from_utf898_a = $unsigned({{2{redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q[7]}}, redist8_sync_together743_aunroll_x_in_c1_eni29_8_tpl_3_q});
    assign i_pivot51_eia608_from_utf898_b = $unsigned({{2{c_i8_124633_recast_x_q[7]}}, c_i8_124633_recast_x_q});
    assign i_pivot51_eia608_from_utf898_o = $unsigned($signed(i_pivot51_eia608_from_utf898_a) - $signed(i_pivot51_eia608_from_utf898_b));
    assign i_pivot51_eia608_from_utf898_c[0] = i_pivot51_eia608_from_utf898_o[9];

    // i_acl_500_eia608_from_utf8299(LOGICAL,268)@100 + 1
    assign i_acl_500_eia608_from_utf8299_qi = i_pivot53_eia608_from_utf853_c ^ i_pivot51_eia608_from_utf898_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_500_eia608_from_utf8299_delay ( .xin(i_acl_500_eia608_from_utf8299_qi), .xout(i_acl_500_eia608_from_utf8299_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_55_eia608_from_utf8300(LOGICAL,568)@101
    assign i_reduction_eia608_from_utf8_55_eia608_from_utf8300_q = i_acl_500_eia608_from_utf8299_q & redist114_i_not_cmp75_eia608_from_utf8241_q_3_q;

    // i_reduction_eia608_from_utf8_57_eia608_from_utf8301(LOGICAL,569)@101
    assign i_reduction_eia608_from_utf8_57_eia608_from_utf8301_q = i_reduction_eia608_from_utf8_55_eia608_from_utf8300_q & i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q;

    // i_reduction_eia608_from_utf8_58_eia608_from_utf8302(LOGICAL,570)@101
    assign i_reduction_eia608_from_utf8_58_eia608_from_utf8302_q = redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q & i_reduction_eia608_from_utf8_57_eia608_from_utf8301_q;

    // i_acl_510_eia608_from_utf8303(MUX,269)@101
    assign i_acl_510_eia608_from_utf8303_s = i_reduction_eia608_from_utf8_58_eia608_from_utf8302_q;
    always @(i_acl_510_eia608_from_utf8303_s or i_acl_499_eia608_from_utf8298_q or c_i32_4896677_q)
    begin
        unique case (i_acl_510_eia608_from_utf8303_s)
            1'b0 : i_acl_510_eia608_from_utf8303_q = i_acl_499_eia608_from_utf8298_q;
            1'b1 : i_acl_510_eia608_from_utf8303_q = c_i32_4896677_q;
            default : i_acl_510_eia608_from_utf8303_q = 32'b0;
        endcase
    end

    // redist97_i_pivot49_eia608_from_utf8124_c_3(DELAY,986)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_pivot49_eia608_from_utf8124_c_3_delay_0 <= '0;
            redist97_i_pivot49_eia608_from_utf8124_c_3_q <= '0;
        end
        else
        begin
            redist97_i_pivot49_eia608_from_utf8124_c_3_delay_0 <= $unsigned(i_pivot49_eia608_from_utf8124_c);
            redist97_i_pivot49_eia608_from_utf8124_c_3_q <= redist97_i_pivot49_eia608_from_utf8124_c_3_delay_0;
        end
    end

    // i_acl_511_eia608_from_utf8304(LOGICAL,270)@100 + 1
    assign i_acl_511_eia608_from_utf8304_qi = i_pivot51_eia608_from_utf898_c ^ redist97_i_pivot49_eia608_from_utf8124_c_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_511_eia608_from_utf8304_delay ( .xin(i_acl_511_eia608_from_utf8304_qi), .xout(i_acl_511_eia608_from_utf8304_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_59_eia608_from_utf8305(LOGICAL,571)@101
    assign i_reduction_eia608_from_utf8_59_eia608_from_utf8305_q = i_acl_511_eia608_from_utf8304_q & redist114_i_not_cmp75_eia608_from_utf8241_q_3_q;

    // i_reduction_eia608_from_utf8_61_eia608_from_utf8306(LOGICAL,573)@101
    assign i_reduction_eia608_from_utf8_61_eia608_from_utf8306_q = i_reduction_eia608_from_utf8_59_eia608_from_utf8305_q & i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q;

    // i_reduction_eia608_from_utf8_62_eia608_from_utf8307(LOGICAL,574)@101
    assign i_reduction_eia608_from_utf8_62_eia608_from_utf8307_q = redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q & i_reduction_eia608_from_utf8_61_eia608_from_utf8306_q;

    // i_acl_522_eia608_from_utf8308(MUX,271)@101
    assign i_acl_522_eia608_from_utf8308_s = i_reduction_eia608_from_utf8_62_eia608_from_utf8307_q;
    always @(i_acl_522_eia608_from_utf8308_s or i_acl_510_eia608_from_utf8303_q or c_i32_4912678_q)
    begin
        unique case (i_acl_522_eia608_from_utf8308_s)
            1'b0 : i_acl_522_eia608_from_utf8308_q = i_acl_510_eia608_from_utf8303_q;
            1'b1 : i_acl_522_eia608_from_utf8308_q = c_i32_4912678_q;
            default : i_acl_522_eia608_from_utf8308_q = 32'b0;
        endcase
    end

    // redist45_i_switchleaf47_eia608_from_utf8169_q_3(DELAY,934)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_switchleaf47_eia608_from_utf8169_q_3_delay_0 <= '0;
            redist45_i_switchleaf47_eia608_from_utf8169_q_3_q <= '0;
        end
        else
        begin
            redist45_i_switchleaf47_eia608_from_utf8169_q_3_delay_0 <= $unsigned(i_switchleaf47_eia608_from_utf8169_q);
            redist45_i_switchleaf47_eia608_from_utf8169_q_3_q <= redist45_i_switchleaf47_eia608_from_utf8169_q_3_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_64_eia608_from_utf8309(LOGICAL,575)@100
    assign i_reduction_eia608_from_utf8_64_eia608_from_utf8309_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & redist45_i_switchleaf47_eia608_from_utf8169_q_3_q;

    // i_reduction_eia608_from_utf8_66_eia608_from_utf8310(LOGICAL,576)@100 + 1
    assign i_reduction_eia608_from_utf8_66_eia608_from_utf8310_qi = i_reduction_eia608_from_utf8_64_eia608_from_utf8309_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_66_eia608_from_utf8310_delay ( .xin(i_reduction_eia608_from_utf8_66_eia608_from_utf8310_qi), .xout(i_reduction_eia608_from_utf8_66_eia608_from_utf8310_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_535_eia608_from_utf8311(MUX,272)@101 + 1
    assign i_acl_535_eia608_from_utf8311_s = i_reduction_eia608_from_utf8_66_eia608_from_utf8310_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_535_eia608_from_utf8311_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_535_eia608_from_utf8311_s)
                1'b0 : i_acl_535_eia608_from_utf8311_q <= i_acl_522_eia608_from_utf8308_q;
                1'b1 : i_acl_535_eia608_from_utf8311_q <= c_i32_4920679_q;
                default : i_acl_535_eia608_from_utf8311_q <= 32'b0;
            endcase
        end
    end

    // i_pivot57_eia608_from_utf8100(COMPARE,403)@101
    assign i_pivot57_eia608_from_utf8100_a = $unsigned({{2{redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q[7]}}, redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q});
    assign i_pivot57_eia608_from_utf8100_b = $unsigned({{2{c_i8_120628_recast_x_q[7]}}, c_i8_120628_recast_x_q});
    assign i_pivot57_eia608_from_utf8100_o = $unsigned($signed(i_pivot57_eia608_from_utf8100_a) - $signed(i_pivot57_eia608_from_utf8100_b));
    assign i_pivot57_eia608_from_utf8100_c[0] = i_pivot57_eia608_from_utf8100_o[9];

    // redist96_i_pivot67_eia608_from_utf831_c_4(DELAY,985)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_pivot67_eia608_from_utf831_c_4_delay_0 <= '0;
            redist96_i_pivot67_eia608_from_utf831_c_4_delay_1 <= '0;
            redist96_i_pivot67_eia608_from_utf831_c_4_q <= '0;
        end
        else
        begin
            redist96_i_pivot67_eia608_from_utf831_c_4_delay_0 <= $unsigned(i_pivot67_eia608_from_utf831_c);
            redist96_i_pivot67_eia608_from_utf831_c_4_delay_1 <= redist96_i_pivot67_eia608_from_utf831_c_4_delay_0;
            redist96_i_pivot67_eia608_from_utf831_c_4_q <= redist96_i_pivot67_eia608_from_utf831_c_4_delay_1;
        end
    end

    // i_acl_537_eia608_from_utf8312(LOGICAL,273)@101
    assign i_acl_537_eia608_from_utf8312_q = redist96_i_pivot67_eia608_from_utf831_c_4_q ^ i_pivot57_eia608_from_utf8100_c;

    // i_reduction_eia608_from_utf8_67_eia608_from_utf8313(LOGICAL,577)@101
    assign i_reduction_eia608_from_utf8_67_eia608_from_utf8313_q = i_acl_537_eia608_from_utf8312_q & redist114_i_not_cmp75_eia608_from_utf8241_q_3_q;

    // i_reduction_eia608_from_utf8_69_eia608_from_utf8314(LOGICAL,578)@101
    assign i_reduction_eia608_from_utf8_69_eia608_from_utf8314_q = i_reduction_eia608_from_utf8_67_eia608_from_utf8313_q & i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q;

    // i_reduction_eia608_from_utf8_70_eia608_from_utf8315(LOGICAL,580)@101 + 1
    assign i_reduction_eia608_from_utf8_70_eia608_from_utf8315_qi = redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q & i_reduction_eia608_from_utf8_69_eia608_from_utf8314_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_70_eia608_from_utf8315_delay ( .xin(i_reduction_eia608_from_utf8_70_eia608_from_utf8315_qi), .xout(i_reduction_eia608_from_utf8_70_eia608_from_utf8315_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_546_eia608_from_utf8316(MUX,274)@102
    assign i_acl_546_eia608_from_utf8316_s = i_reduction_eia608_from_utf8_70_eia608_from_utf8315_q;
    always @(i_acl_546_eia608_from_utf8316_s or i_acl_535_eia608_from_utf8311_q or c_i32_4658680_q)
    begin
        unique case (i_acl_546_eia608_from_utf8316_s)
            1'b0 : i_acl_546_eia608_from_utf8316_q = i_acl_535_eia608_from_utf8311_q;
            1'b1 : i_acl_546_eia608_from_utf8316_q = c_i32_4658680_q;
            default : i_acl_546_eia608_from_utf8316_q = 32'b0;
        endcase
    end

    // c_i8_119646_recast_x(CONSTANT,794)
    assign c_i8_119646_recast_x_q = $unsigned(8'b10001001);

    // i_pivot55_eia608_from_utf8126(COMPARE,402)@101
    assign i_pivot55_eia608_from_utf8126_a = $unsigned({{2{redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q[7]}}, redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q});
    assign i_pivot55_eia608_from_utf8126_b = $unsigned({{2{c_i8_119646_recast_x_q[7]}}, c_i8_119646_recast_x_q});
    assign i_pivot55_eia608_from_utf8126_o = $unsigned($signed(i_pivot55_eia608_from_utf8126_a) - $signed(i_pivot55_eia608_from_utf8126_b));
    assign i_pivot55_eia608_from_utf8126_c[0] = i_pivot55_eia608_from_utf8126_o[9];

    // i_acl_547_eia608_from_utf8317(LOGICAL,275)@101
    assign i_acl_547_eia608_from_utf8317_q = i_pivot57_eia608_from_utf8100_c ^ i_pivot55_eia608_from_utf8126_c;

    // i_reduction_eia608_from_utf8_71_eia608_from_utf8318(LOGICAL,581)@101
    assign i_reduction_eia608_from_utf8_71_eia608_from_utf8318_q = i_acl_547_eia608_from_utf8317_q & redist114_i_not_cmp75_eia608_from_utf8241_q_3_q;

    // i_reduction_eia608_from_utf8_73_eia608_from_utf8319(LOGICAL,582)@101 + 1
    assign i_reduction_eia608_from_utf8_73_eia608_from_utf8319_qi = i_reduction_eia608_from_utf8_71_eia608_from_utf8318_q & i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_73_eia608_from_utf8319_delay ( .xin(i_reduction_eia608_from_utf8_73_eia608_from_utf8319_qi), .xout(i_reduction_eia608_from_utf8_73_eia608_from_utf8319_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5(DELAY,916)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q <= '0;
        end
        else
        begin
            redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q <= $unsigned(redist26_sync_together743_aunroll_x_in_c1_eni29_20_tpl_4_q);
        end
    end

    // i_reduction_eia608_from_utf8_74_eia608_from_utf8320(LOGICAL,583)@102
    assign i_reduction_eia608_from_utf8_74_eia608_from_utf8320_q = redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q & i_reduction_eia608_from_utf8_73_eia608_from_utf8319_q;

    // i_acl_558_eia608_from_utf8321(MUX,276)@102
    assign i_acl_558_eia608_from_utf8321_s = i_reduction_eia608_from_utf8_74_eia608_from_utf8320_q;
    always @(i_acl_558_eia608_from_utf8321_s or i_acl_546_eia608_from_utf8316_q or c_i32_4659681_q)
    begin
        unique case (i_acl_558_eia608_from_utf8321_s)
            1'b0 : i_acl_558_eia608_from_utf8321_q = i_acl_546_eia608_from_utf8316_q;
            1'b1 : i_acl_558_eia608_from_utf8321_q = c_i32_4659681_q;
            default : i_acl_558_eia608_from_utf8321_q = 32'b0;
        endcase
    end

    // redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2(DELAY,951)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q <= '0;
        end
        else
        begin
            redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q);
        end
    end

    // c_i8_118618_recast_x(CONSTANT,793)
    assign c_i8_118618_recast_x_q = $unsigned(8'b10001010);

    // i_pivot65_eia608_from_utf855(COMPARE,407)@101
    assign i_pivot65_eia608_from_utf855_a = $unsigned({{2{redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q[7]}}, redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q});
    assign i_pivot65_eia608_from_utf855_b = $unsigned({{2{c_i8_118618_recast_x_q[7]}}, c_i8_118618_recast_x_q});
    assign i_pivot65_eia608_from_utf855_o = $unsigned($signed(i_pivot65_eia608_from_utf855_a) - $signed(i_pivot65_eia608_from_utf855_b));
    assign i_pivot65_eia608_from_utf855_c[0] = i_pivot65_eia608_from_utf855_o[9];

    // i_acl_560_eia608_from_utf8322(LOGICAL,277)@101
    assign i_acl_560_eia608_from_utf8322_q = i_pivot55_eia608_from_utf8126_c ^ i_pivot65_eia608_from_utf855_c;

    // i_reduction_eia608_from_utf8_75_eia608_from_utf8323(LOGICAL,584)@101 + 1
    assign i_reduction_eia608_from_utf8_75_eia608_from_utf8323_qi = i_acl_560_eia608_from_utf8322_q & redist114_i_not_cmp75_eia608_from_utf8241_q_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_75_eia608_from_utf8323_delay ( .xin(i_reduction_eia608_from_utf8_75_eia608_from_utf8323_qi), .xout(i_reduction_eia608_from_utf8_75_eia608_from_utf8323_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_77_eia608_from_utf8324(LOGICAL,585)@102
    assign i_reduction_eia608_from_utf8_77_eia608_from_utf8324_q = i_reduction_eia608_from_utf8_75_eia608_from_utf8323_q & redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q;

    // i_reduction_eia608_from_utf8_78_eia608_from_utf8325(LOGICAL,586)@102
    assign i_reduction_eia608_from_utf8_78_eia608_from_utf8325_q = redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q & i_reduction_eia608_from_utf8_77_eia608_from_utf8324_q;

    // i_acl_570_eia608_from_utf8326(MUX,278)@102
    assign i_acl_570_eia608_from_utf8326_s = i_reduction_eia608_from_utf8_78_eia608_from_utf8325_q;
    always @(i_acl_570_eia608_from_utf8326_s or i_acl_558_eia608_from_utf8321_q or c_i32_4641682_q)
    begin
        unique case (i_acl_570_eia608_from_utf8326_s)
            1'b0 : i_acl_570_eia608_from_utf8326_q = i_acl_558_eia608_from_utf8321_q;
            1'b1 : i_acl_570_eia608_from_utf8326_q = c_i32_4641682_q;
            default : i_acl_570_eia608_from_utf8326_q = 32'b0;
        endcase
    end

    // redist115_i_not_cmp75_eia608_from_utf8241_q_4(DELAY,1004)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_i_not_cmp75_eia608_from_utf8241_q_4_q <= '0;
        end
        else
        begin
            redist115_i_not_cmp75_eia608_from_utf8241_q_4_q <= $unsigned(redist114_i_not_cmp75_eia608_from_utf8241_q_3_q);
        end
    end

    // c_i8_117647_recast_x(CONSTANT,792)
    assign c_i8_117647_recast_x_q = $unsigned(8'b10001011);

    // i_pivot59_eia608_from_utf8128(COMPARE,404)@101
    assign i_pivot59_eia608_from_utf8128_a = $unsigned({{2{redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q[7]}}, redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q});
    assign i_pivot59_eia608_from_utf8128_b = $unsigned({{2{c_i8_117647_recast_x_q[7]}}, c_i8_117647_recast_x_q});
    assign i_pivot59_eia608_from_utf8128_o = $unsigned($signed(i_pivot59_eia608_from_utf8128_a) - $signed(i_pivot59_eia608_from_utf8128_b));
    assign i_pivot59_eia608_from_utf8128_c[0] = i_pivot59_eia608_from_utf8128_o[9];

    // i_acl_572_eia608_from_utf8327(LOGICAL,279)@101 + 1
    assign i_acl_572_eia608_from_utf8327_qi = i_pivot65_eia608_from_utf855_c ^ i_pivot59_eia608_from_utf8128_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_572_eia608_from_utf8327_delay ( .xin(i_acl_572_eia608_from_utf8327_qi), .xout(i_acl_572_eia608_from_utf8327_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_79_eia608_from_utf8328(LOGICAL,587)@102
    assign i_reduction_eia608_from_utf8_79_eia608_from_utf8328_q = i_acl_572_eia608_from_utf8327_q & redist115_i_not_cmp75_eia608_from_utf8241_q_4_q;

    // i_reduction_eia608_from_utf8_81_eia608_from_utf8329(LOGICAL,589)@102
    assign i_reduction_eia608_from_utf8_81_eia608_from_utf8329_q = i_reduction_eia608_from_utf8_79_eia608_from_utf8328_q & redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q;

    // i_reduction_eia608_from_utf8_82_eia608_from_utf8330(LOGICAL,590)@102
    assign i_reduction_eia608_from_utf8_82_eia608_from_utf8330_q = redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q & i_reduction_eia608_from_utf8_81_eia608_from_utf8329_q;

    // i_acl_582_eia608_from_utf8331(MUX,280)@102
    assign i_acl_582_eia608_from_utf8331_s = i_reduction_eia608_from_utf8_82_eia608_from_utf8330_q;
    always @(i_acl_582_eia608_from_utf8331_s or i_acl_570_eia608_from_utf8326_q or c_i32_4660683_q)
    begin
        unique case (i_acl_582_eia608_from_utf8331_s)
            1'b0 : i_acl_582_eia608_from_utf8331_q = i_acl_570_eia608_from_utf8326_q;
            1'b1 : i_acl_582_eia608_from_utf8331_q = c_i32_4660683_q;
            default : i_acl_582_eia608_from_utf8331_q = 32'b0;
        endcase
    end

    // i_pivot63_eia608_from_utf8102(COMPARE,406)@101
    assign i_pivot63_eia608_from_utf8102_a = $unsigned({{2{redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q[7]}}, redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q});
    assign i_pivot63_eia608_from_utf8102_b = $unsigned({{2{c_i8_116634_recast_x_q[7]}}, c_i8_116634_recast_x_q});
    assign i_pivot63_eia608_from_utf8102_o = $unsigned($signed(i_pivot63_eia608_from_utf8102_a) - $signed(i_pivot63_eia608_from_utf8102_b));
    assign i_pivot63_eia608_from_utf8102_c[0] = i_pivot63_eia608_from_utf8102_o[9];

    // i_acl_583_eia608_from_utf8332(LOGICAL,281)@101 + 1
    assign i_acl_583_eia608_from_utf8332_qi = i_pivot59_eia608_from_utf8128_c ^ i_pivot63_eia608_from_utf8102_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_583_eia608_from_utf8332_delay ( .xin(i_acl_583_eia608_from_utf8332_qi), .xout(i_acl_583_eia608_from_utf8332_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_83_eia608_from_utf8333(LOGICAL,591)@102
    assign i_reduction_eia608_from_utf8_83_eia608_from_utf8333_q = i_acl_583_eia608_from_utf8332_q & redist115_i_not_cmp75_eia608_from_utf8241_q_4_q;

    // i_reduction_eia608_from_utf8_85_eia608_from_utf8334(LOGICAL,592)@102
    assign i_reduction_eia608_from_utf8_85_eia608_from_utf8334_q = i_reduction_eia608_from_utf8_83_eia608_from_utf8333_q & redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q;

    // i_reduction_eia608_from_utf8_86_eia608_from_utf8335(LOGICAL,593)@102
    assign i_reduction_eia608_from_utf8_86_eia608_from_utf8335_q = redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q & i_reduction_eia608_from_utf8_85_eia608_from_utf8334_q;

    // i_acl_594_eia608_from_utf8336(MUX,282)@102
    assign i_acl_594_eia608_from_utf8336_s = i_reduction_eia608_from_utf8_86_eia608_from_utf8335_q;
    always @(i_acl_594_eia608_from_utf8336_s or i_acl_582_eia608_from_utf8331_q or c_i32_4661684_q)
    begin
        unique case (i_acl_594_eia608_from_utf8336_s)
            1'b0 : i_acl_594_eia608_from_utf8336_q = i_acl_582_eia608_from_utf8331_q;
            1'b1 : i_acl_594_eia608_from_utf8336_q = c_i32_4661684_q;
            default : i_acl_594_eia608_from_utf8336_q = 32'b0;
        endcase
    end

    // c_i8_115648_recast_x(CONSTANT,790)
    assign c_i8_115648_recast_x_q = $unsigned(8'b10001101);

    // i_pivot61_eia608_from_utf8130(COMPARE,405)@101
    assign i_pivot61_eia608_from_utf8130_a = $unsigned({{2{redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q[7]}}, redist9_sync_together743_aunroll_x_in_c1_eni29_8_tpl_4_q});
    assign i_pivot61_eia608_from_utf8130_b = $unsigned({{2{c_i8_115648_recast_x_q[7]}}, c_i8_115648_recast_x_q});
    assign i_pivot61_eia608_from_utf8130_o = $unsigned($signed(i_pivot61_eia608_from_utf8130_a) - $signed(i_pivot61_eia608_from_utf8130_b));
    assign i_pivot61_eia608_from_utf8130_c[0] = i_pivot61_eia608_from_utf8130_o[9];

    // i_acl_595_eia608_from_utf8337(LOGICAL,283)@101 + 1
    assign i_acl_595_eia608_from_utf8337_qi = i_pivot63_eia608_from_utf8102_c ^ i_pivot61_eia608_from_utf8130_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_595_eia608_from_utf8337_delay ( .xin(i_acl_595_eia608_from_utf8337_qi), .xout(i_acl_595_eia608_from_utf8337_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_87_eia608_from_utf8338(LOGICAL,594)@102
    assign i_reduction_eia608_from_utf8_87_eia608_from_utf8338_q = i_acl_595_eia608_from_utf8337_q & redist115_i_not_cmp75_eia608_from_utf8241_q_4_q;

    // i_reduction_eia608_from_utf8_89_eia608_from_utf8339(LOGICAL,595)@102
    assign i_reduction_eia608_from_utf8_89_eia608_from_utf8339_q = i_reduction_eia608_from_utf8_87_eia608_from_utf8338_q & redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q;

    // i_reduction_eia608_from_utf8_90_eia608_from_utf8340(LOGICAL,597)@102
    assign i_reduction_eia608_from_utf8_90_eia608_from_utf8340_q = redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q & i_reduction_eia608_from_utf8_89_eia608_from_utf8339_q;

    // i_acl_606_eia608_from_utf8341(MUX,284)@102
    assign i_acl_606_eia608_from_utf8341_s = i_reduction_eia608_from_utf8_90_eia608_from_utf8340_q;
    always @(i_acl_606_eia608_from_utf8341_s or i_acl_594_eia608_from_utf8336_q or c_i32_4899685_q)
    begin
        unique case (i_acl_606_eia608_from_utf8341_s)
            1'b0 : i_acl_606_eia608_from_utf8341_q = i_acl_594_eia608_from_utf8336_q;
            1'b1 : i_acl_606_eia608_from_utf8341_q = c_i32_4899685_q;
            default : i_acl_606_eia608_from_utf8341_q = 32'b0;
        endcase
    end

    // redist112_i_pivot101_eia608_from_utf819_c_4(DELAY,1001)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist112_i_pivot101_eia608_from_utf819_c_4_delay_0 <= '0;
            redist112_i_pivot101_eia608_from_utf819_c_4_delay_1 <= '0;
            redist112_i_pivot101_eia608_from_utf819_c_4_q <= '0;
        end
        else
        begin
            redist112_i_pivot101_eia608_from_utf819_c_4_delay_0 <= $unsigned(i_pivot101_eia608_from_utf819_c);
            redist112_i_pivot101_eia608_from_utf819_c_4_delay_1 <= redist112_i_pivot101_eia608_from_utf819_c_4_delay_0;
            redist112_i_pivot101_eia608_from_utf819_c_4_q <= redist112_i_pivot101_eia608_from_utf819_c_4_delay_1;
        end
    end

    // i_acl_610_eia608_from_utf8342(LOGICAL,285)@101 + 1
    assign i_acl_610_eia608_from_utf8342_qi = i_pivot61_eia608_from_utf8130_c ^ redist112_i_pivot101_eia608_from_utf819_c_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_610_eia608_from_utf8342_delay ( .xin(i_acl_610_eia608_from_utf8342_qi), .xout(i_acl_610_eia608_from_utf8342_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_91_eia608_from_utf8343(LOGICAL,598)@102
    assign i_reduction_eia608_from_utf8_91_eia608_from_utf8343_q = i_acl_610_eia608_from_utf8342_q & redist115_i_not_cmp75_eia608_from_utf8241_q_4_q;

    // i_reduction_eia608_from_utf8_93_eia608_from_utf8344(LOGICAL,599)@102
    assign i_reduction_eia608_from_utf8_93_eia608_from_utf8344_q = i_reduction_eia608_from_utf8_91_eia608_from_utf8343_q & redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q;

    // i_reduction_eia608_from_utf8_94_eia608_from_utf8345(LOGICAL,600)@102
    assign i_reduction_eia608_from_utf8_94_eia608_from_utf8345_q = redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q & i_reduction_eia608_from_utf8_93_eia608_from_utf8344_q;

    // i_acl_618_eia608_from_utf8346(MUX,286)@102 + 1
    assign i_acl_618_eia608_from_utf8346_s = i_reduction_eia608_from_utf8_94_eia608_from_utf8345_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_618_eia608_from_utf8346_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_618_eia608_from_utf8346_s)
                1'b0 : i_acl_618_eia608_from_utf8346_q <= i_acl_606_eia608_from_utf8341_q;
                1'b1 : i_acl_618_eia608_from_utf8346_q <= c_i32_4898686_q;
                default : i_acl_618_eia608_from_utf8346_q <= 32'b0;
            endcase
        end
    end

    // redist94_i_pivot73_eia608_from_utf8104_c_4(DELAY,983)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_pivot73_eia608_from_utf8104_c_4_delay_0 <= '0;
            redist94_i_pivot73_eia608_from_utf8104_c_4_delay_1 <= '0;
            redist94_i_pivot73_eia608_from_utf8104_c_4_delay_2 <= '0;
            redist94_i_pivot73_eia608_from_utf8104_c_4_q <= '0;
        end
        else
        begin
            redist94_i_pivot73_eia608_from_utf8104_c_4_delay_0 <= $unsigned(i_pivot73_eia608_from_utf8104_c);
            redist94_i_pivot73_eia608_from_utf8104_c_4_delay_1 <= redist94_i_pivot73_eia608_from_utf8104_c_4_delay_0;
            redist94_i_pivot73_eia608_from_utf8104_c_4_delay_2 <= redist94_i_pivot73_eia608_from_utf8104_c_4_delay_1;
            redist94_i_pivot73_eia608_from_utf8104_c_4_q <= redist94_i_pivot73_eia608_from_utf8104_c_4_delay_2;
        end
    end

    // i_acl_621_eia608_from_utf8347(LOGICAL,287)@101 + 1
    assign i_acl_621_eia608_from_utf8347_qi = redist112_i_pivot101_eia608_from_utf819_c_4_q ^ redist94_i_pivot73_eia608_from_utf8104_c_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_621_eia608_from_utf8347_delay ( .xin(i_acl_621_eia608_from_utf8347_qi), .xout(i_acl_621_eia608_from_utf8347_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_95_eia608_from_utf8348(LOGICAL,601)@102
    assign i_reduction_eia608_from_utf8_95_eia608_from_utf8348_q = i_acl_621_eia608_from_utf8347_q & redist115_i_not_cmp75_eia608_from_utf8241_q_4_q;

    // i_reduction_eia608_from_utf8_97_eia608_from_utf8349(LOGICAL,602)@102
    assign i_reduction_eia608_from_utf8_97_eia608_from_utf8349_q = i_reduction_eia608_from_utf8_95_eia608_from_utf8348_q & redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q;

    // i_reduction_eia608_from_utf8_98_eia608_from_utf8350(LOGICAL,603)@102 + 1
    assign i_reduction_eia608_from_utf8_98_eia608_from_utf8350_qi = redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q & i_reduction_eia608_from_utf8_97_eia608_from_utf8349_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_98_eia608_from_utf8350_delay ( .xin(i_reduction_eia608_from_utf8_98_eia608_from_utf8350_qi), .xout(i_reduction_eia608_from_utf8_98_eia608_from_utf8350_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_629_eia608_from_utf8351(MUX,288)@103
    assign i_acl_629_eia608_from_utf8351_s = i_reduction_eia608_from_utf8_98_eia608_from_utf8350_q;
    always @(i_acl_629_eia608_from_utf8351_s or i_acl_618_eia608_from_utf8346_q or c_i32_4663687_q)
    begin
        unique case (i_acl_629_eia608_from_utf8351_s)
            1'b0 : i_acl_629_eia608_from_utf8351_q = i_acl_618_eia608_from_utf8346_q;
            1'b1 : i_acl_629_eia608_from_utf8351_q = c_i32_4663687_q;
            default : i_acl_629_eia608_from_utf8351_q = 32'b0;
        endcase
    end

    // redist44_i_switchleaf69_eia608_from_utf8172_q_3(DELAY,933)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_0 <= '0;
            redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_1 <= '0;
            redist44_i_switchleaf69_eia608_from_utf8172_q_3_q <= '0;
        end
        else
        begin
            redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_0 <= $unsigned(i_switchleaf69_eia608_from_utf8172_q);
            redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_1 <= redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_0;
            redist44_i_switchleaf69_eia608_from_utf8172_q_3_q <= redist44_i_switchleaf69_eia608_from_utf8172_q_3_delay_1;
        end
    end

    // i_reduction_eia608_from_utf8_100_eia608_from_utf8352(LOGICAL,422)@100
    assign i_reduction_eia608_from_utf8_100_eia608_from_utf8352_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & redist44_i_switchleaf69_eia608_from_utf8172_q_3_q;

    // i_reduction_eia608_from_utf8_102_eia608_from_utf8353(LOGICAL,423)@100 + 1
    assign i_reduction_eia608_from_utf8_102_eia608_from_utf8353_qi = i_reduction_eia608_from_utf8_100_eia608_from_utf8352_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_102_eia608_from_utf8353_delay ( .xin(i_reduction_eia608_from_utf8_102_eia608_from_utf8353_qi), .xout(i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3(DELAY,978)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_delay_0 <= '0;
            redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_q <= '0;
        end
        else
        begin
            redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q);
            redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_q <= redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_delay_0;
        end
    end

    // i_acl_642_eia608_from_utf8354(MUX,289)@103
    assign i_acl_642_eia608_from_utf8354_s = redist89_i_reduction_eia608_from_utf8_102_eia608_from_utf8353_q_3_q;
    always @(i_acl_642_eia608_from_utf8354_s or i_acl_629_eia608_from_utf8351_q or c_i32_4664688_q)
    begin
        unique case (i_acl_642_eia608_from_utf8354_s)
            1'b0 : i_acl_642_eia608_from_utf8354_q = i_acl_629_eia608_from_utf8351_q;
            1'b1 : i_acl_642_eia608_from_utf8354_q = c_i32_4664688_q;
            default : i_acl_642_eia608_from_utf8354_q = 32'b0;
        endcase
    end

    // redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3(DELAY,952)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q <= '0;
        end
        else
        begin
            redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q <= $unsigned(redist62_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_2_q);
        end
    end

    // c_i8_110619_recast_x(CONSTANT,785)
    assign c_i8_110619_recast_x_q = $unsigned(8'b10010010);

    // i_pivot81_eia608_from_utf857(COMPARE,413)@102
    assign i_pivot81_eia608_from_utf857_a = $unsigned({{2{redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q[7]}}, redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q});
    assign i_pivot81_eia608_from_utf857_b = $unsigned({{2{c_i8_110619_recast_x_q[7]}}, c_i8_110619_recast_x_q});
    assign i_pivot81_eia608_from_utf857_o = $unsigned($signed(i_pivot81_eia608_from_utf857_a) - $signed(i_pivot81_eia608_from_utf857_b));
    assign i_pivot81_eia608_from_utf857_c[0] = i_pivot81_eia608_from_utf857_o[9];

    // redist95_i_pivot71_eia608_from_utf8132_c_5(DELAY,984)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_0 <= '0;
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_1 <= '0;
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_2 <= '0;
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_3 <= '0;
            redist95_i_pivot71_eia608_from_utf8132_c_5_q <= '0;
        end
        else
        begin
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_0 <= $unsigned(i_pivot71_eia608_from_utf8132_c);
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_1 <= redist95_i_pivot71_eia608_from_utf8132_c_5_delay_0;
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_2 <= redist95_i_pivot71_eia608_from_utf8132_c_5_delay_1;
            redist95_i_pivot71_eia608_from_utf8132_c_5_delay_3 <= redist95_i_pivot71_eia608_from_utf8132_c_5_delay_2;
            redist95_i_pivot71_eia608_from_utf8132_c_5_q <= redist95_i_pivot71_eia608_from_utf8132_c_5_delay_3;
        end
    end

    // i_acl_644_eia608_from_utf8355(LOGICAL,290)@102
    assign i_acl_644_eia608_from_utf8355_q = redist95_i_pivot71_eia608_from_utf8132_c_5_q ^ i_pivot81_eia608_from_utf857_c;

    // i_reduction_eia608_from_utf8_103_eia608_from_utf8356(LOGICAL,424)@102 + 1
    assign i_reduction_eia608_from_utf8_103_eia608_from_utf8356_qi = i_acl_644_eia608_from_utf8355_q & redist115_i_not_cmp75_eia608_from_utf8241_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_103_eia608_from_utf8356_delay ( .xin(i_reduction_eia608_from_utf8_103_eia608_from_utf8356_qi), .xout(i_reduction_eia608_from_utf8_103_eia608_from_utf8356_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_105_eia608_from_utf8357(LOGICAL,425)@103
    assign i_reduction_eia608_from_utf8_105_eia608_from_utf8357_q = i_reduction_eia608_from_utf8_103_eia608_from_utf8356_q & redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q;

    // redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6(DELAY,917)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q <= '0;
        end
        else
        begin
            redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q <= $unsigned(redist27_sync_together743_aunroll_x_in_c1_eni29_20_tpl_5_q);
        end
    end

    // i_reduction_eia608_from_utf8_106_eia608_from_utf8358(LOGICAL,426)@103
    assign i_reduction_eia608_from_utf8_106_eia608_from_utf8358_q = redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q & i_reduction_eia608_from_utf8_105_eia608_from_utf8357_q;

    // i_acl_654_eia608_from_utf8359(MUX,291)@103
    assign i_acl_654_eia608_from_utf8359_s = i_reduction_eia608_from_utf8_106_eia608_from_utf8358_q;
    always @(i_acl_654_eia608_from_utf8359_s or i_acl_642_eia608_from_utf8354_q or c_i32_32000689_q)
    begin
        unique case (i_acl_654_eia608_from_utf8359_s)
            1'b0 : i_acl_654_eia608_from_utf8359_q = i_acl_642_eia608_from_utf8354_q;
            1'b1 : i_acl_654_eia608_from_utf8359_q = c_i32_32000689_q;
            default : i_acl_654_eia608_from_utf8359_q = 32'b0;
        endcase
    end

    // redist116_i_not_cmp75_eia608_from_utf8241_q_5(DELAY,1005)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_i_not_cmp75_eia608_from_utf8241_q_5_q <= '0;
        end
        else
        begin
            redist116_i_not_cmp75_eia608_from_utf8241_q_5_q <= $unsigned(redist115_i_not_cmp75_eia608_from_utf8241_q_4_q);
        end
    end

    // c_i8_109650_recast_x(CONSTANT,784)
    assign c_i8_109650_recast_x_q = $unsigned(8'b10010011);

    // i_pivot75_eia608_from_utf8134(COMPARE,411)@102
    assign i_pivot75_eia608_from_utf8134_a = $unsigned({{2{redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q[7]}}, redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q});
    assign i_pivot75_eia608_from_utf8134_b = $unsigned({{2{c_i8_109650_recast_x_q[7]}}, c_i8_109650_recast_x_q});
    assign i_pivot75_eia608_from_utf8134_o = $unsigned($signed(i_pivot75_eia608_from_utf8134_a) - $signed(i_pivot75_eia608_from_utf8134_b));
    assign i_pivot75_eia608_from_utf8134_c[0] = i_pivot75_eia608_from_utf8134_o[9];

    // i_acl_656_eia608_from_utf8360(LOGICAL,292)@102 + 1
    assign i_acl_656_eia608_from_utf8360_qi = i_pivot81_eia608_from_utf857_c ^ i_pivot75_eia608_from_utf8134_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_656_eia608_from_utf8360_delay ( .xin(i_acl_656_eia608_from_utf8360_qi), .xout(i_acl_656_eia608_from_utf8360_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_107_eia608_from_utf8361(LOGICAL,427)@103
    assign i_reduction_eia608_from_utf8_107_eia608_from_utf8361_q = i_acl_656_eia608_from_utf8360_q & redist116_i_not_cmp75_eia608_from_utf8241_q_5_q;

    // i_reduction_eia608_from_utf8_109_eia608_from_utf8362(LOGICAL,428)@103
    assign i_reduction_eia608_from_utf8_109_eia608_from_utf8362_q = i_reduction_eia608_from_utf8_107_eia608_from_utf8361_q & redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q;

    // i_reduction_eia608_from_utf8_110_eia608_from_utf8363(LOGICAL,430)@103
    assign i_reduction_eia608_from_utf8_110_eia608_from_utf8363_q = redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q & i_reduction_eia608_from_utf8_109_eia608_from_utf8362_q;

    // i_acl_666_eia608_from_utf8364(MUX,293)@103
    assign i_acl_666_eia608_from_utf8364_s = i_reduction_eia608_from_utf8_110_eia608_from_utf8363_q;
    always @(i_acl_666_eia608_from_utf8364_s or i_acl_654_eia608_from_utf8359_q or c_i32_4901690_q)
    begin
        unique case (i_acl_666_eia608_from_utf8364_s)
            1'b0 : i_acl_666_eia608_from_utf8364_q = i_acl_654_eia608_from_utf8359_q;
            1'b1 : i_acl_666_eia608_from_utf8364_q = c_i32_4901690_q;
            default : i_acl_666_eia608_from_utf8364_q = 32'b0;
        endcase
    end

    // redist102_i_pivot214_eia608_from_utf873_c_5(DELAY,991)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_0 <= '0;
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_1 <= '0;
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_2 <= '0;
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_3 <= '0;
            redist102_i_pivot214_eia608_from_utf873_c_5_q <= '0;
        end
        else
        begin
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_0 <= $unsigned(i_pivot214_eia608_from_utf873_c);
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_1 <= redist102_i_pivot214_eia608_from_utf873_c_5_delay_0;
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_2 <= redist102_i_pivot214_eia608_from_utf873_c_5_delay_1;
            redist102_i_pivot214_eia608_from_utf873_c_5_delay_3 <= redist102_i_pivot214_eia608_from_utf873_c_5_delay_2;
            redist102_i_pivot214_eia608_from_utf873_c_5_q <= redist102_i_pivot214_eia608_from_utf873_c_5_delay_3;
        end
    end

    // i_acl_667_eia608_from_utf8365(LOGICAL,294)@102 + 1
    assign i_acl_667_eia608_from_utf8365_qi = i_pivot75_eia608_from_utf8134_c ^ redist102_i_pivot214_eia608_from_utf873_c_5_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_667_eia608_from_utf8365_delay ( .xin(i_acl_667_eia608_from_utf8365_qi), .xout(i_acl_667_eia608_from_utf8365_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_111_eia608_from_utf8366(LOGICAL,431)@103
    assign i_reduction_eia608_from_utf8_111_eia608_from_utf8366_q = i_acl_667_eia608_from_utf8365_q & redist116_i_not_cmp75_eia608_from_utf8241_q_5_q;

    // i_reduction_eia608_from_utf8_113_eia608_from_utf8367(LOGICAL,432)@103
    assign i_reduction_eia608_from_utf8_113_eia608_from_utf8367_q = i_reduction_eia608_from_utf8_111_eia608_from_utf8366_q & redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q;

    // i_reduction_eia608_from_utf8_114_eia608_from_utf8368(LOGICAL,433)@103
    assign i_reduction_eia608_from_utf8_114_eia608_from_utf8368_q = redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q & i_reduction_eia608_from_utf8_113_eia608_from_utf8367_q;

    // i_acl_678_eia608_from_utf8369(MUX,295)@103
    assign i_acl_678_eia608_from_utf8369_s = i_reduction_eia608_from_utf8_114_eia608_from_utf8368_q;
    always @(i_acl_678_eia608_from_utf8369_s or i_acl_666_eia608_from_utf8364_q or c_i32_4642691_q)
    begin
        unique case (i_acl_678_eia608_from_utf8369_s)
            1'b0 : i_acl_678_eia608_from_utf8369_q = i_acl_666_eia608_from_utf8364_q;
            1'b1 : i_acl_678_eia608_from_utf8369_q = c_i32_4642691_q;
            default : i_acl_678_eia608_from_utf8369_q = 32'b0;
        endcase
    end

    // c_i8_107651_recast_x(CONSTANT,782)
    assign c_i8_107651_recast_x_q = $unsigned(8'b10010101);

    // i_pivot77_eia608_from_utf8136(COMPARE,412)@102
    assign i_pivot77_eia608_from_utf8136_a = $unsigned({{2{redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q[7]}}, redist10_sync_together743_aunroll_x_in_c1_eni29_8_tpl_5_q});
    assign i_pivot77_eia608_from_utf8136_b = $unsigned({{2{c_i8_107651_recast_x_q[7]}}, c_i8_107651_recast_x_q});
    assign i_pivot77_eia608_from_utf8136_o = $unsigned($signed(i_pivot77_eia608_from_utf8136_a) - $signed(i_pivot77_eia608_from_utf8136_b));
    assign i_pivot77_eia608_from_utf8136_c[0] = i_pivot77_eia608_from_utf8136_o[9];

    // i_acl_679_eia608_from_utf8370(LOGICAL,296)@102 + 1
    assign i_acl_679_eia608_from_utf8370_qi = redist102_i_pivot214_eia608_from_utf873_c_5_q ^ i_pivot77_eia608_from_utf8136_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_679_eia608_from_utf8370_delay ( .xin(i_acl_679_eia608_from_utf8370_qi), .xout(i_acl_679_eia608_from_utf8370_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_115_eia608_from_utf8371(LOGICAL,434)@103
    assign i_reduction_eia608_from_utf8_115_eia608_from_utf8371_q = i_acl_679_eia608_from_utf8370_q & redist116_i_not_cmp75_eia608_from_utf8241_q_5_q;

    // i_reduction_eia608_from_utf8_117_eia608_from_utf8372(LOGICAL,435)@103
    assign i_reduction_eia608_from_utf8_117_eia608_from_utf8372_q = i_reduction_eia608_from_utf8_115_eia608_from_utf8371_q & redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q;

    // i_reduction_eia608_from_utf8_118_eia608_from_utf8373(LOGICAL,436)@103
    assign i_reduction_eia608_from_utf8_118_eia608_from_utf8373_q = redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q & i_reduction_eia608_from_utf8_117_eia608_from_utf8372_q;

    // i_acl_690_eia608_from_utf8374(MUX,297)@103
    assign i_acl_690_eia608_from_utf8374_s = i_reduction_eia608_from_utf8_118_eia608_from_utf8373_q;
    always @(i_acl_690_eia608_from_utf8374_s or i_acl_678_eia608_from_utf8369_q or c_i32_4666692_q)
    begin
        unique case (i_acl_690_eia608_from_utf8374_s)
            1'b0 : i_acl_690_eia608_from_utf8374_q = i_acl_678_eia608_from_utf8369_q;
            1'b1 : i_acl_690_eia608_from_utf8374_q = c_i32_4666692_q;
            default : i_acl_690_eia608_from_utf8374_q = 32'b0;
        endcase
    end

    // redist91_i_pivot99_eia608_from_utf833_c_5(DELAY,980)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_0 <= '0;
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_1 <= '0;
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_2 <= '0;
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_3 <= '0;
            redist91_i_pivot99_eia608_from_utf833_c_5_q <= '0;
        end
        else
        begin
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_0 <= $unsigned(i_pivot99_eia608_from_utf833_c);
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_1 <= redist91_i_pivot99_eia608_from_utf833_c_5_delay_0;
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_2 <= redist91_i_pivot99_eia608_from_utf833_c_5_delay_1;
            redist91_i_pivot99_eia608_from_utf833_c_5_delay_3 <= redist91_i_pivot99_eia608_from_utf833_c_5_delay_2;
            redist91_i_pivot99_eia608_from_utf833_c_5_q <= redist91_i_pivot99_eia608_from_utf833_c_5_delay_3;
        end
    end

    // i_acl_693_eia608_from_utf8375(LOGICAL,298)@102 + 1
    assign i_acl_693_eia608_from_utf8375_qi = i_pivot77_eia608_from_utf8136_c ^ redist91_i_pivot99_eia608_from_utf833_c_5_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_693_eia608_from_utf8375_delay ( .xin(i_acl_693_eia608_from_utf8375_qi), .xout(i_acl_693_eia608_from_utf8375_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_119_eia608_from_utf8376(LOGICAL,437)@103
    assign i_reduction_eia608_from_utf8_119_eia608_from_utf8376_q = i_acl_693_eia608_from_utf8375_q & redist116_i_not_cmp75_eia608_from_utf8241_q_5_q;

    // i_reduction_eia608_from_utf8_121_eia608_from_utf8377(LOGICAL,439)@103
    assign i_reduction_eia608_from_utf8_121_eia608_from_utf8377_q = i_reduction_eia608_from_utf8_119_eia608_from_utf8376_q & redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q;

    // i_reduction_eia608_from_utf8_122_eia608_from_utf8378(LOGICAL,440)@103
    assign i_reduction_eia608_from_utf8_122_eia608_from_utf8378_q = redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q & i_reduction_eia608_from_utf8_121_eia608_from_utf8377_q;

    // i_acl_702_eia608_from_utf8379(MUX,299)@103 + 1
    assign i_acl_702_eia608_from_utf8379_s = i_reduction_eia608_from_utf8_122_eia608_from_utf8378_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_702_eia608_from_utf8379_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_702_eia608_from_utf8379_s)
                1'b0 : i_acl_702_eia608_from_utf8379_q <= i_acl_690_eia608_from_utf8374_q;
                1'b1 : i_acl_702_eia608_from_utf8379_q <= c_i32_4903693_q;
                default : i_acl_702_eia608_from_utf8379_q <= 32'b0;
            endcase
        end
    end

    // redist42_i_switchleaf83_eia608_from_utf8138_q_3(DELAY,931)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_0 <= '0;
            redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_1 <= '0;
            redist42_i_switchleaf83_eia608_from_utf8138_q_3_q <= '0;
        end
        else
        begin
            redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_0 <= $unsigned(i_switchleaf83_eia608_from_utf8138_q);
            redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_1 <= redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_0;
            redist42_i_switchleaf83_eia608_from_utf8138_q_3_q <= redist42_i_switchleaf83_eia608_from_utf8138_q_3_delay_1;
        end
    end

    // i_reduction_eia608_from_utf8_124_eia608_from_utf8380(LOGICAL,441)@100
    assign i_reduction_eia608_from_utf8_124_eia608_from_utf8380_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & redist42_i_switchleaf83_eia608_from_utf8138_q_3_q;

    // i_reduction_eia608_from_utf8_126_eia608_from_utf8381(LOGICAL,442)@100 + 1
    assign i_reduction_eia608_from_utf8_126_eia608_from_utf8381_qi = i_reduction_eia608_from_utf8_124_eia608_from_utf8380_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_126_eia608_from_utf8381_delay ( .xin(i_reduction_eia608_from_utf8_126_eia608_from_utf8381_qi), .xout(i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4(DELAY,977)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_0 <= '0;
            redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_1 <= '0;
            redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_q <= '0;
        end
        else
        begin
            redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q);
            redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_1 <= redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_0;
            redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_q <= redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_delay_1;
        end
    end

    // i_acl_714_eia608_from_utf8382(MUX,300)@104
    assign i_acl_714_eia608_from_utf8382_s = redist88_i_reduction_eia608_from_utf8_126_eia608_from_utf8381_q_4_q;
    always @(i_acl_714_eia608_from_utf8382_s or i_acl_702_eia608_from_utf8379_q or c_i32_4914694_q)
    begin
        unique case (i_acl_714_eia608_from_utf8382_s)
            1'b0 : i_acl_714_eia608_from_utf8382_q = i_acl_702_eia608_from_utf8379_q;
            1'b1 : i_acl_714_eia608_from_utf8382_q = c_i32_4914694_q;
            default : i_acl_714_eia608_from_utf8382_q = 32'b0;
        endcase
    end

    // redist129_i_acl_364_eia608_from_utf8256_q_6(DELAY,1018)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist129_i_acl_364_eia608_from_utf8256_q_6_delay_0 <= '0;
            redist129_i_acl_364_eia608_from_utf8256_q_6_delay_1 <= '0;
            redist129_i_acl_364_eia608_from_utf8256_q_6_delay_2 <= '0;
            redist129_i_acl_364_eia608_from_utf8256_q_6_q <= '0;
        end
        else
        begin
            redist129_i_acl_364_eia608_from_utf8256_q_6_delay_0 <= $unsigned(redist128_i_acl_364_eia608_from_utf8256_q_2_q);
            redist129_i_acl_364_eia608_from_utf8256_q_6_delay_1 <= redist129_i_acl_364_eia608_from_utf8256_q_6_delay_0;
            redist129_i_acl_364_eia608_from_utf8256_q_6_delay_2 <= redist129_i_acl_364_eia608_from_utf8256_q_6_delay_1;
            redist129_i_acl_364_eia608_from_utf8256_q_6_q <= redist129_i_acl_364_eia608_from_utf8256_q_6_delay_2;
        end
    end

    // i_reduction_eia608_from_utf8_127_eia608_from_utf8383(LOGICAL,443)@103
    assign i_reduction_eia608_from_utf8_127_eia608_from_utf8383_q = redist129_i_acl_364_eia608_from_utf8256_q_6_q & redist116_i_not_cmp75_eia608_from_utf8241_q_5_q;

    // i_reduction_eia608_from_utf8_129_eia608_from_utf8384(LOGICAL,444)@103 + 1
    assign i_reduction_eia608_from_utf8_129_eia608_from_utf8384_qi = i_reduction_eia608_from_utf8_127_eia608_from_utf8383_q & redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_129_eia608_from_utf8384_delay ( .xin(i_reduction_eia608_from_utf8_129_eia608_from_utf8384_qi), .xout(i_reduction_eia608_from_utf8_129_eia608_from_utf8384_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7(DELAY,918)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q <= '0;
        end
        else
        begin
            redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q <= $unsigned(redist28_sync_together743_aunroll_x_in_c1_eni29_20_tpl_6_q);
        end
    end

    // i_reduction_eia608_from_utf8_130_eia608_from_utf8385(LOGICAL,446)@104
    assign i_reduction_eia608_from_utf8_130_eia608_from_utf8385_q = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_129_eia608_from_utf8384_q;

    // i_acl_726_eia608_from_utf8386(MUX,301)@104
    assign i_acl_726_eia608_from_utf8386_s = i_reduction_eia608_from_utf8_130_eia608_from_utf8385_q;
    always @(i_acl_726_eia608_from_utf8386_s or i_acl_714_eia608_from_utf8382_q or c_i32_4922695_q)
    begin
        unique case (i_acl_726_eia608_from_utf8386_s)
            1'b0 : i_acl_726_eia608_from_utf8386_q = i_acl_714_eia608_from_utf8382_q;
            1'b1 : i_acl_726_eia608_from_utf8386_q = c_i32_4922695_q;
            default : i_acl_726_eia608_from_utf8386_q = 32'b0;
        endcase
    end

    // redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4(DELAY,953)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q <= '0;
        end
        else
        begin
            redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q <= $unsigned(redist63_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_3_q);
        end
    end

    // i_acl_728_eia608_from_utf8387(LOGICAL,302)@97 + 1
    assign i_acl_728_eia608_from_utf8387_qi = i_pivot85_eia608_from_utf8140_c ^ i_pivot97_eia608_from_utf859_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_728_eia608_from_utf8387_delay ( .xin(i_acl_728_eia608_from_utf8387_qi), .xout(i_acl_728_eia608_from_utf8387_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist126_i_acl_728_eia608_from_utf8387_q_6(DELAY,1015)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_0 <= '0;
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_1 <= '0;
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_2 <= '0;
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_3 <= '0;
            redist126_i_acl_728_eia608_from_utf8387_q_6_q <= '0;
        end
        else
        begin
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_0 <= $unsigned(i_acl_728_eia608_from_utf8387_q);
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_1 <= redist126_i_acl_728_eia608_from_utf8387_q_6_delay_0;
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_2 <= redist126_i_acl_728_eia608_from_utf8387_q_6_delay_1;
            redist126_i_acl_728_eia608_from_utf8387_q_6_delay_3 <= redist126_i_acl_728_eia608_from_utf8387_q_6_delay_2;
            redist126_i_acl_728_eia608_from_utf8387_q_6_q <= redist126_i_acl_728_eia608_from_utf8387_q_6_delay_3;
        end
    end

    // i_reduction_eia608_from_utf8_131_eia608_from_utf8388(LOGICAL,447)@103 + 1
    assign i_reduction_eia608_from_utf8_131_eia608_from_utf8388_qi = redist126_i_acl_728_eia608_from_utf8387_q_6_q & redist116_i_not_cmp75_eia608_from_utf8241_q_5_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_131_eia608_from_utf8388_delay ( .xin(i_reduction_eia608_from_utf8_131_eia608_from_utf8388_qi), .xout(i_reduction_eia608_from_utf8_131_eia608_from_utf8388_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_133_eia608_from_utf8389(LOGICAL,448)@104
    assign i_reduction_eia608_from_utf8_133_eia608_from_utf8389_q = i_reduction_eia608_from_utf8_131_eia608_from_utf8388_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_134_eia608_from_utf8390(LOGICAL,449)@104
    assign i_reduction_eia608_from_utf8_134_eia608_from_utf8390_q = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_133_eia608_from_utf8389_q;

    // i_acl_738_eia608_from_utf8391(MUX,303)@104
    assign i_acl_738_eia608_from_utf8391_s = i_reduction_eia608_from_utf8_134_eia608_from_utf8390_q;
    always @(i_acl_738_eia608_from_utf8391_s or i_acl_726_eia608_from_utf8386_q or c_i32_4667696_q)
    begin
        unique case (i_acl_738_eia608_from_utf8391_s)
            1'b0 : i_acl_738_eia608_from_utf8391_q = i_acl_726_eia608_from_utf8386_q;
            1'b1 : i_acl_738_eia608_from_utf8391_q = c_i32_4667696_q;
            default : i_acl_738_eia608_from_utf8391_q = 32'b0;
        endcase
    end

    // redist117_i_not_cmp75_eia608_from_utf8241_q_6(DELAY,1006)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_i_not_cmp75_eia608_from_utf8241_q_6_q <= '0;
        end
        else
        begin
            redist117_i_not_cmp75_eia608_from_utf8241_q_6_q <= $unsigned(redist116_i_not_cmp75_eia608_from_utf8241_q_5_q);
        end
    end

    // c_i8_101653_recast_x(CONSTANT,777)
    assign c_i8_101653_recast_x_q = $unsigned(8'b10011011);

    // i_pivot89_eia608_from_utf8142(COMPARE,416)@97
    assign i_pivot89_eia608_from_utf8142_a = $unsigned({{2{in_c1_eni29_8_tpl[7]}}, in_c1_eni29_8_tpl});
    assign i_pivot89_eia608_from_utf8142_b = $unsigned({{2{c_i8_101653_recast_x_q[7]}}, c_i8_101653_recast_x_q});
    assign i_pivot89_eia608_from_utf8142_o = $unsigned($signed(i_pivot89_eia608_from_utf8142_a) - $signed(i_pivot89_eia608_from_utf8142_b));
    assign i_pivot89_eia608_from_utf8142_c[0] = i_pivot89_eia608_from_utf8142_o[9];

    // i_acl_740_eia608_from_utf8392(LOGICAL,304)@97 + 1
    assign i_acl_740_eia608_from_utf8392_qi = i_pivot97_eia608_from_utf859_c ^ i_pivot89_eia608_from_utf8142_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_740_eia608_from_utf8392_delay ( .xin(i_acl_740_eia608_from_utf8392_qi), .xout(i_acl_740_eia608_from_utf8392_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist125_i_acl_740_eia608_from_utf8392_q_7(DELAY,1014)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist125_i_acl_740_eia608_from_utf8392_q_7 ( .xin(i_acl_740_eia608_from_utf8392_q), .xout(redist125_i_acl_740_eia608_from_utf8392_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_135_eia608_from_utf8393(LOGICAL,450)@104
    assign i_reduction_eia608_from_utf8_135_eia608_from_utf8393_q = redist125_i_acl_740_eia608_from_utf8392_q_7_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_137_eia608_from_utf8394(LOGICAL,451)@104
    assign i_reduction_eia608_from_utf8_137_eia608_from_utf8394_q = i_reduction_eia608_from_utf8_135_eia608_from_utf8393_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_138_eia608_from_utf8395(LOGICAL,452)@104
    assign i_reduction_eia608_from_utf8_138_eia608_from_utf8395_q = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_137_eia608_from_utf8394_q;

    // i_acl_750_eia608_from_utf8396(MUX,305)@104
    assign i_acl_750_eia608_from_utf8396_s = i_reduction_eia608_from_utf8_138_eia608_from_utf8395_q;
    always @(i_acl_750_eia608_from_utf8396_s or i_acl_738_eia608_from_utf8391_q or c_i32_4643697_q)
    begin
        unique case (i_acl_750_eia608_from_utf8396_s)
            1'b0 : i_acl_750_eia608_from_utf8396_q = i_acl_738_eia608_from_utf8391_q;
            1'b1 : i_acl_750_eia608_from_utf8396_q = c_i32_4643697_q;
            default : i_acl_750_eia608_from_utf8396_q = 32'b0;
        endcase
    end

    // i_acl_751_eia608_from_utf8397(LOGICAL,306)@97 + 1
    assign i_acl_751_eia608_from_utf8397_qi = i_pivot89_eia608_from_utf8142_c ^ i_pivot199_eia608_from_utf867_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_751_eia608_from_utf8397_delay ( .xin(i_acl_751_eia608_from_utf8397_qi), .xout(i_acl_751_eia608_from_utf8397_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist124_i_acl_751_eia608_from_utf8397_q_7(DELAY,1013)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist124_i_acl_751_eia608_from_utf8397_q_7 ( .xin(i_acl_751_eia608_from_utf8397_q), .xout(redist124_i_acl_751_eia608_from_utf8397_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_eia608_from_utf8_139_eia608_from_utf8398(LOGICAL,453)@104
    assign i_reduction_eia608_from_utf8_139_eia608_from_utf8398_q = redist124_i_acl_751_eia608_from_utf8397_q_7_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_141_eia608_from_utf8399(LOGICAL,454)@104
    assign i_reduction_eia608_from_utf8_141_eia608_from_utf8399_q = i_reduction_eia608_from_utf8_139_eia608_from_utf8398_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_142_eia608_from_utf8400(LOGICAL,455)@104
    assign i_reduction_eia608_from_utf8_142_eia608_from_utf8400_q = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_141_eia608_from_utf8399_q;

    // i_acl_762_eia608_from_utf8401(MUX,307)@104
    assign i_acl_762_eia608_from_utf8401_s = i_reduction_eia608_from_utf8_142_eia608_from_utf8400_q;
    always @(i_acl_762_eia608_from_utf8401_s or i_acl_750_eia608_from_utf8396_q or c_i32_4669698_q)
    begin
        unique case (i_acl_762_eia608_from_utf8401_s)
            1'b0 : i_acl_762_eia608_from_utf8401_q = i_acl_750_eia608_from_utf8396_q;
            1'b1 : i_acl_762_eia608_from_utf8401_q = c_i32_4669698_q;
            default : i_acl_762_eia608_from_utf8401_q = 32'b0;
        endcase
    end

    // redist41_i_switchleaf91_eia608_from_utf8174_q_3(DELAY,930)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_0 <= '0;
            redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_1 <= '0;
            redist41_i_switchleaf91_eia608_from_utf8174_q_3_q <= '0;
        end
        else
        begin
            redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_0 <= $unsigned(i_switchleaf91_eia608_from_utf8174_q);
            redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_1 <= redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_0;
            redist41_i_switchleaf91_eia608_from_utf8174_q_3_q <= redist41_i_switchleaf91_eia608_from_utf8174_q_3_delay_1;
        end
    end

    // i_reduction_eia608_from_utf8_144_eia608_from_utf8402(LOGICAL,456)@100
    assign i_reduction_eia608_from_utf8_144_eia608_from_utf8402_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & redist41_i_switchleaf91_eia608_from_utf8174_q_3_q;

    // i_reduction_eia608_from_utf8_146_eia608_from_utf8403(LOGICAL,457)@100 + 1
    assign i_reduction_eia608_from_utf8_146_eia608_from_utf8403_qi = i_reduction_eia608_from_utf8_144_eia608_from_utf8402_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_146_eia608_from_utf8403_delay ( .xin(i_reduction_eia608_from_utf8_146_eia608_from_utf8403_qi), .xout(i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4(DELAY,976)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_0 <= '0;
            redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_1 <= '0;
            redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_q <= '0;
        end
        else
        begin
            redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q);
            redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_1 <= redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_0;
            redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_q <= redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_delay_1;
        end
    end

    // i_acl_775_eia608_from_utf8404(MUX,308)@104
    assign i_acl_775_eia608_from_utf8404_s = redist87_i_reduction_eia608_from_utf8_146_eia608_from_utf8403_q_4_q;
    always @(i_acl_775_eia608_from_utf8404_s or i_acl_762_eia608_from_utf8401_q or c_i32_4644699_q)
    begin
        unique case (i_acl_775_eia608_from_utf8404_s)
            1'b0 : i_acl_775_eia608_from_utf8404_q = i_acl_762_eia608_from_utf8401_q;
            1'b1 : i_acl_775_eia608_from_utf8404_q = c_i32_4644699_q;
            default : i_acl_775_eia608_from_utf8404_q = 32'b0;
        endcase
    end

    // redist103_i_pivot161_eia608_from_utf813_c_6(DELAY,992)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist103_i_pivot161_eia608_from_utf813_c_6 ( .xin(i_pivot161_eia608_from_utf813_c), .xout(redist103_i_pivot161_eia608_from_utf813_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist92_i_pivot93_eia608_from_utf8144_c_7(DELAY,981)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist92_i_pivot93_eia608_from_utf8144_c_7 ( .xin(i_pivot93_eia608_from_utf8144_c), .xout(redist92_i_pivot93_eia608_from_utf8144_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_780_eia608_from_utf8405(LOGICAL,309)@104
    assign i_acl_780_eia608_from_utf8405_q = redist92_i_pivot93_eia608_from_utf8144_c_7_q ^ redist103_i_pivot161_eia608_from_utf813_c_6_q;

    // i_reduction_eia608_from_utf8_147_eia608_from_utf8406(LOGICAL,458)@104
    assign i_reduction_eia608_from_utf8_147_eia608_from_utf8406_q = i_acl_780_eia608_from_utf8405_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_149_eia608_from_utf8407(LOGICAL,459)@104
    assign i_reduction_eia608_from_utf8_149_eia608_from_utf8407_q = i_reduction_eia608_from_utf8_147_eia608_from_utf8406_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_150_eia608_from_utf8408(LOGICAL,461)@104
    assign i_reduction_eia608_from_utf8_150_eia608_from_utf8408_q = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_149_eia608_from_utf8407_q;

    // i_acl_787_eia608_from_utf8409(MUX,310)@104 + 1
    assign i_acl_787_eia608_from_utf8409_s = i_reduction_eia608_from_utf8_150_eia608_from_utf8408_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_787_eia608_from_utf8409_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_787_eia608_from_utf8409_s)
                1'b0 : i_acl_787_eia608_from_utf8409_q <= i_acl_775_eia608_from_utf8404_q;
                1'b1 : i_acl_787_eia608_from_utf8409_q <= c_i32_4916700_q;
                default : i_acl_787_eia608_from_utf8409_q <= 32'b0;
            endcase
        end
    end

    // redist99_i_pivot2_eia608_from_utf823_c_6(DELAY,988)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist99_i_pivot2_eia608_from_utf823_c_6 ( .xin(i_pivot2_eia608_from_utf823_c), .xout(redist99_i_pivot2_eia608_from_utf823_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_791_eia608_from_utf8410(LOGICAL,311)@104
    assign i_acl_791_eia608_from_utf8410_q = redist103_i_pivot161_eia608_from_utf813_c_6_q ^ redist99_i_pivot2_eia608_from_utf823_c_6_q;

    // i_reduction_eia608_from_utf8_151_eia608_from_utf8411(LOGICAL,462)@104
    assign i_reduction_eia608_from_utf8_151_eia608_from_utf8411_q = i_acl_791_eia608_from_utf8410_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_153_eia608_from_utf8412(LOGICAL,463)@104
    assign i_reduction_eia608_from_utf8_153_eia608_from_utf8412_q = i_reduction_eia608_from_utf8_151_eia608_from_utf8411_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_154_eia608_from_utf8413(LOGICAL,464)@104 + 1
    assign i_reduction_eia608_from_utf8_154_eia608_from_utf8413_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_153_eia608_from_utf8412_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_154_eia608_from_utf8413_delay ( .xin(i_reduction_eia608_from_utf8_154_eia608_from_utf8413_qi), .xout(i_reduction_eia608_from_utf8_154_eia608_from_utf8413_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_798_eia608_from_utf8414(MUX,312)@105
    assign i_acl_798_eia608_from_utf8414_s = i_reduction_eia608_from_utf8_154_eia608_from_utf8413_q;
    always @(i_acl_798_eia608_from_utf8414_s or i_acl_787_eia608_from_utf8409_q or c_i32_4408701_q)
    begin
        unique case (i_acl_798_eia608_from_utf8414_s)
            1'b0 : i_acl_798_eia608_from_utf8414_q = i_acl_787_eia608_from_utf8409_q;
            1'b1 : i_acl_798_eia608_from_utf8414_q = c_i32_4408701_q;
            default : i_acl_798_eia608_from_utf8414_q = 32'b0;
        endcase
    end

    // redist90_i_pivot_eia608_from_utf841_c_7(DELAY,979)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist90_i_pivot_eia608_from_utf841_c_7 ( .xin(i_pivot_eia608_from_utf841_c), .xout(redist90_i_pivot_eia608_from_utf841_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_799_eia608_from_utf8415(LOGICAL,313)@104
    assign i_acl_799_eia608_from_utf8415_q = redist99_i_pivot2_eia608_from_utf823_c_6_q ^ redist90_i_pivot_eia608_from_utf841_c_7_q;

    // i_reduction_eia608_from_utf8_155_eia608_from_utf8416(LOGICAL,465)@104
    assign i_reduction_eia608_from_utf8_155_eia608_from_utf8416_q = i_acl_799_eia608_from_utf8415_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_157_eia608_from_utf8417(LOGICAL,466)@104
    assign i_reduction_eia608_from_utf8_157_eia608_from_utf8417_q = i_reduction_eia608_from_utf8_155_eia608_from_utf8416_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_158_eia608_from_utf8418(LOGICAL,467)@104 + 1
    assign i_reduction_eia608_from_utf8_158_eia608_from_utf8418_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_157_eia608_from_utf8417_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_158_eia608_from_utf8418_delay ( .xin(i_reduction_eia608_from_utf8_158_eia608_from_utf8418_qi), .xout(i_reduction_eia608_from_utf8_158_eia608_from_utf8418_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_810_eia608_from_utf8419(MUX,314)@105
    assign i_acl_810_eia608_from_utf8419_s = i_reduction_eia608_from_utf8_158_eia608_from_utf8418_q;
    always @(i_acl_810_eia608_from_utf8419_s or i_acl_798_eia608_from_utf8414_q or c_i32_10752702_q)
    begin
        unique case (i_acl_810_eia608_from_utf8419_s)
            1'b0 : i_acl_810_eia608_from_utf8419_q = i_acl_798_eia608_from_utf8414_q;
            1'b1 : i_acl_810_eia608_from_utf8419_q = c_i32_10752702_q;
            default : i_acl_810_eia608_from_utf8419_q = 32'b0;
        endcase
    end

    // redist109_i_pivot12_eia608_from_utf815_c_6(DELAY,998)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist109_i_pivot12_eia608_from_utf815_c_6 ( .xin(i_pivot12_eia608_from_utf815_c), .xout(redist109_i_pivot12_eia608_from_utf815_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_812_eia608_from_utf8420(LOGICAL,315)@104
    assign i_acl_812_eia608_from_utf8420_q = redist90_i_pivot_eia608_from_utf841_c_7_q ^ redist109_i_pivot12_eia608_from_utf815_c_6_q;

    // i_reduction_eia608_from_utf8_159_eia608_from_utf8421(LOGICAL,468)@104
    assign i_reduction_eia608_from_utf8_159_eia608_from_utf8421_q = i_acl_812_eia608_from_utf8420_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_161_eia608_from_utf8422(LOGICAL,470)@104
    assign i_reduction_eia608_from_utf8_161_eia608_from_utf8422_q = i_reduction_eia608_from_utf8_159_eia608_from_utf8421_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_162_eia608_from_utf8423(LOGICAL,471)@104 + 1
    assign i_reduction_eia608_from_utf8_162_eia608_from_utf8423_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_161_eia608_from_utf8422_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_162_eia608_from_utf8423_delay ( .xin(i_reduction_eia608_from_utf8_162_eia608_from_utf8423_qi), .xout(i_reduction_eia608_from_utf8_162_eia608_from_utf8423_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_822_eia608_from_utf8424(MUX,316)@105
    assign i_acl_822_eia608_from_utf8424_s = i_reduction_eia608_from_utf8_162_eia608_from_utf8423_q;
    always @(i_acl_822_eia608_from_utf8424_s or i_acl_810_eia608_from_utf8419_q or c_i32_4411703_q)
    begin
        unique case (i_acl_822_eia608_from_utf8424_s)
            1'b0 : i_acl_822_eia608_from_utf8424_q = i_acl_810_eia608_from_utf8419_q;
            1'b1 : i_acl_822_eia608_from_utf8424_q = c_i32_4411703_q;
            default : i_acl_822_eia608_from_utf8424_q = 32'b0;
        endcase
    end

    // c_i8_92613_recast_x(CONSTANT,829)
    assign c_i8_92613_recast_x_q = $unsigned(8'b10100100);

    // i_pivot4_eia608_from_utf843(COMPARE,399)@104
    assign i_pivot4_eia608_from_utf843_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot4_eia608_from_utf843_b = $unsigned({{2{c_i8_92613_recast_x_q[7]}}, c_i8_92613_recast_x_q});
    assign i_pivot4_eia608_from_utf843_o = $unsigned($signed(i_pivot4_eia608_from_utf843_a) - $signed(i_pivot4_eia608_from_utf843_b));
    assign i_pivot4_eia608_from_utf843_c[0] = i_pivot4_eia608_from_utf843_o[9];

    // i_acl_823_eia608_from_utf8425(LOGICAL,317)@104
    assign i_acl_823_eia608_from_utf8425_q = redist109_i_pivot12_eia608_from_utf815_c_6_q ^ i_pivot4_eia608_from_utf843_c;

    // i_reduction_eia608_from_utf8_163_eia608_from_utf8426(LOGICAL,472)@104
    assign i_reduction_eia608_from_utf8_163_eia608_from_utf8426_q = i_acl_823_eia608_from_utf8425_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_165_eia608_from_utf8427(LOGICAL,473)@104
    assign i_reduction_eia608_from_utf8_165_eia608_from_utf8427_q = i_reduction_eia608_from_utf8_163_eia608_from_utf8426_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_166_eia608_from_utf8428(LOGICAL,474)@104 + 1
    assign i_reduction_eia608_from_utf8_166_eia608_from_utf8428_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_165_eia608_from_utf8427_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_166_eia608_from_utf8428_delay ( .xin(i_reduction_eia608_from_utf8_166_eia608_from_utf8428_qi), .xout(i_reduction_eia608_from_utf8_166_eia608_from_utf8428_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_833_eia608_from_utf8429(MUX,318)@105
    assign i_acl_833_eia608_from_utf8429_s = i_reduction_eia608_from_utf8_166_eia608_from_utf8428_q;
    always @(i_acl_833_eia608_from_utf8429_s or i_acl_822_eia608_from_utf8424_q or c_i32_4897704_q)
    begin
        unique case (i_acl_833_eia608_from_utf8429_s)
            1'b0 : i_acl_833_eia608_from_utf8429_q = i_acl_822_eia608_from_utf8424_q;
            1'b1 : i_acl_833_eia608_from_utf8429_q = c_i32_4897704_q;
            default : i_acl_833_eia608_from_utf8429_q = 32'b0;
        endcase
    end

    // redist111_i_pivot10_eia608_from_utf825_c_7(DELAY,1000)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist111_i_pivot10_eia608_from_utf825_c_7 ( .xin(i_pivot10_eia608_from_utf825_c), .xout(redist111_i_pivot10_eia608_from_utf825_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_834_eia608_from_utf8430(LOGICAL,319)@104
    assign i_acl_834_eia608_from_utf8430_q = i_pivot4_eia608_from_utf843_c ^ redist111_i_pivot10_eia608_from_utf825_c_7_q;

    // i_reduction_eia608_from_utf8_167_eia608_from_utf8431(LOGICAL,475)@104
    assign i_reduction_eia608_from_utf8_167_eia608_from_utf8431_q = i_acl_834_eia608_from_utf8430_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_169_eia608_from_utf8432(LOGICAL,476)@104
    assign i_reduction_eia608_from_utf8_169_eia608_from_utf8432_q = i_reduction_eia608_from_utf8_167_eia608_from_utf8431_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_170_eia608_from_utf8433(LOGICAL,478)@104 + 1
    assign i_reduction_eia608_from_utf8_170_eia608_from_utf8433_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_169_eia608_from_utf8432_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_170_eia608_from_utf8433_delay ( .xin(i_reduction_eia608_from_utf8_170_eia608_from_utf8433_qi), .xout(i_reduction_eia608_from_utf8_170_eia608_from_utf8433_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_845_eia608_from_utf8434(MUX,320)@105
    assign i_acl_845_eia608_from_utf8434_s = i_reduction_eia608_from_utf8_170_eia608_from_utf8433_q;
    always @(i_acl_845_eia608_from_utf8434_s or i_acl_833_eia608_from_utf8429_q or c_i32_4913705_q)
    begin
        unique case (i_acl_845_eia608_from_utf8434_s)
            1'b0 : i_acl_845_eia608_from_utf8434_q = i_acl_833_eia608_from_utf8429_q;
            1'b1 : i_acl_845_eia608_from_utf8434_q = c_i32_4913705_q;
            default : i_acl_845_eia608_from_utf8434_q = 32'b0;
        endcase
    end

    // redist60_i_switchleaf107_eia608_from_utf8176_q_3(DELAY,949)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_switchleaf107_eia608_from_utf8176_q_3_delay_0 <= '0;
            redist60_i_switchleaf107_eia608_from_utf8176_q_3_q <= '0;
        end
        else
        begin
            redist60_i_switchleaf107_eia608_from_utf8176_q_3_delay_0 <= $unsigned(i_switchleaf107_eia608_from_utf8176_q);
            redist60_i_switchleaf107_eia608_from_utf8176_q_3_q <= redist60_i_switchleaf107_eia608_from_utf8176_q_3_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_172_eia608_from_utf8435(LOGICAL,479)@100
    assign i_reduction_eia608_from_utf8_172_eia608_from_utf8435_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & redist60_i_switchleaf107_eia608_from_utf8176_q_3_q;

    // i_reduction_eia608_from_utf8_174_eia608_from_utf8436(LOGICAL,480)@100 + 1
    assign i_reduction_eia608_from_utf8_174_eia608_from_utf8436_qi = i_reduction_eia608_from_utf8_172_eia608_from_utf8435_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_174_eia608_from_utf8436_delay ( .xin(i_reduction_eia608_from_utf8_174_eia608_from_utf8436_qi), .xout(i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5(DELAY,975)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_0 <= '0;
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_1 <= '0;
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_2 <= '0;
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_q <= '0;
        end
        else
        begin
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q);
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_1 <= redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_0;
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_2 <= redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_1;
            redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_q <= redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_delay_2;
        end
    end

    // i_acl_858_eia608_from_utf8437(MUX,321)@105
    assign i_acl_858_eia608_from_utf8437_s = redist86_i_reduction_eia608_from_utf8_174_eia608_from_utf8436_q_5_q;
    always @(i_acl_858_eia608_from_utf8437_s or i_acl_845_eia608_from_utf8434_q or c_i32_4921706_q)
    begin
        unique case (i_acl_858_eia608_from_utf8437_s)
            1'b0 : i_acl_858_eia608_from_utf8437_q = i_acl_845_eia608_from_utf8434_q;
            1'b1 : i_acl_858_eia608_from_utf8437_q = c_i32_4921706_q;
            default : i_acl_858_eia608_from_utf8437_q = 32'b0;
        endcase
    end

    // c_i8_88637_recast_x(CONSTANT,825)
    assign c_i8_88637_recast_x_q = $unsigned(8'b10101000);

    // i_pivot117_eia608_from_utf8108(COMPARE,365)@104
    assign i_pivot117_eia608_from_utf8108_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot117_eia608_from_utf8108_b = $unsigned({{2{c_i8_88637_recast_x_q[7]}}, c_i8_88637_recast_x_q});
    assign i_pivot117_eia608_from_utf8108_o = $unsigned($signed(i_pivot117_eia608_from_utf8108_a) - $signed(i_pivot117_eia608_from_utf8108_b));
    assign i_pivot117_eia608_from_utf8108_c[0] = i_pivot117_eia608_from_utf8108_o[9];

    // redist110_i_pivot127_eia608_from_utf835_c_7(DELAY,999)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist110_i_pivot127_eia608_from_utf835_c_7 ( .xin(i_pivot127_eia608_from_utf835_c), .xout(redist110_i_pivot127_eia608_from_utf835_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_860_eia608_from_utf8438(LOGICAL,322)@104
    assign i_acl_860_eia608_from_utf8438_q = redist110_i_pivot127_eia608_from_utf835_c_7_q ^ i_pivot117_eia608_from_utf8108_c;

    // i_reduction_eia608_from_utf8_175_eia608_from_utf8439(LOGICAL,481)@104
    assign i_reduction_eia608_from_utf8_175_eia608_from_utf8439_q = i_acl_860_eia608_from_utf8438_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_177_eia608_from_utf8440(LOGICAL,482)@104
    assign i_reduction_eia608_from_utf8_177_eia608_from_utf8440_q = i_reduction_eia608_from_utf8_175_eia608_from_utf8439_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_178_eia608_from_utf8441(LOGICAL,483)@104 + 1
    assign i_reduction_eia608_from_utf8_178_eia608_from_utf8441_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_177_eia608_from_utf8440_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_178_eia608_from_utf8441_delay ( .xin(i_reduction_eia608_from_utf8_178_eia608_from_utf8441_qi), .xout(i_reduction_eia608_from_utf8_178_eia608_from_utf8441_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_869_eia608_from_utf8442(MUX,323)@105 + 1
    assign i_acl_869_eia608_from_utf8442_s = i_reduction_eia608_from_utf8_178_eia608_from_utf8441_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_869_eia608_from_utf8442_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_869_eia608_from_utf8442_s)
                1'b0 : i_acl_869_eia608_from_utf8442_q <= i_acl_858_eia608_from_utf8437_q;
                1'b1 : i_acl_869_eia608_from_utf8442_q <= c_i32_31488707_q;
                default : i_acl_869_eia608_from_utf8442_q <= 32'b0;
            endcase
        end
    end

    // redist98_i_pivot40_eia608_from_utf811_c_6(DELAY,987)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist98_i_pivot40_eia608_from_utf811_c_6 ( .xin(i_pivot40_eia608_from_utf811_c), .xout(redist98_i_pivot40_eia608_from_utf811_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_870_eia608_from_utf8443(LOGICAL,324)@104
    assign i_acl_870_eia608_from_utf8443_q = i_pivot117_eia608_from_utf8108_c ^ redist98_i_pivot40_eia608_from_utf811_c_6_q;

    // i_reduction_eia608_from_utf8_179_eia608_from_utf8444(LOGICAL,484)@104
    assign i_reduction_eia608_from_utf8_179_eia608_from_utf8444_q = i_acl_870_eia608_from_utf8443_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_181_eia608_from_utf8445(LOGICAL,485)@104
    assign i_reduction_eia608_from_utf8_181_eia608_from_utf8445_q = i_reduction_eia608_from_utf8_179_eia608_from_utf8444_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_182_eia608_from_utf8446(LOGICAL,486)@104 + 1
    assign i_reduction_eia608_from_utf8_182_eia608_from_utf8446_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_181_eia608_from_utf8445_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_182_eia608_from_utf8446_delay ( .xin(i_reduction_eia608_from_utf8_182_eia608_from_utf8446_qi), .xout(i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist85_i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q_2(DELAY,974)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q_2_q <= '0;
        end
        else
        begin
            redist85_i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q);
        end
    end

    // i_acl_881_eia608_from_utf8447(MUX,325)@106
    assign i_acl_881_eia608_from_utf8447_s = redist85_i_reduction_eia608_from_utf8_182_eia608_from_utf8446_q_2_q;
    always @(i_acl_881_eia608_from_utf8447_s or i_acl_869_eia608_from_utf8442_q or c_i32_4410708_q)
    begin
        unique case (i_acl_881_eia608_from_utf8447_s)
            1'b0 : i_acl_881_eia608_from_utf8447_q = i_acl_869_eia608_from_utf8442_q;
            1'b1 : i_acl_881_eia608_from_utf8447_q = c_i32_4410708_q;
            default : i_acl_881_eia608_from_utf8447_q = 32'b0;
        endcase
    end

    // i_pivot125_eia608_from_utf861(COMPARE,368)@104
    assign i_pivot125_eia608_from_utf861_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot125_eia608_from_utf861_b = $unsigned({{2{c_i8_86621_recast_x_q[7]}}, c_i8_86621_recast_x_q});
    assign i_pivot125_eia608_from_utf861_o = $unsigned($signed(i_pivot125_eia608_from_utf861_a) - $signed(i_pivot125_eia608_from_utf861_b));
    assign i_pivot125_eia608_from_utf861_c[0] = i_pivot125_eia608_from_utf861_o[9];

    // i_acl_883_eia608_from_utf8448(LOGICAL,326)@104
    assign i_acl_883_eia608_from_utf8448_q = redist98_i_pivot40_eia608_from_utf811_c_6_q ^ i_pivot125_eia608_from_utf861_c;

    // i_reduction_eia608_from_utf8_183_eia608_from_utf8449(LOGICAL,487)@104
    assign i_reduction_eia608_from_utf8_183_eia608_from_utf8449_q = i_acl_883_eia608_from_utf8448_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_185_eia608_from_utf8450(LOGICAL,488)@104
    assign i_reduction_eia608_from_utf8_185_eia608_from_utf8450_q = i_reduction_eia608_from_utf8_183_eia608_from_utf8449_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_186_eia608_from_utf8451(LOGICAL,489)@104 + 1
    assign i_reduction_eia608_from_utf8_186_eia608_from_utf8451_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_185_eia608_from_utf8450_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_186_eia608_from_utf8451_delay ( .xin(i_reduction_eia608_from_utf8_186_eia608_from_utf8451_qi), .xout(i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist84_i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q_2(DELAY,973)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q_2_q <= '0;
        end
        else
        begin
            redist84_i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q);
        end
    end

    // i_acl_893_eia608_from_utf8452(MUX,327)@106
    assign i_acl_893_eia608_from_utf8452_s = redist84_i_reduction_eia608_from_utf8_186_eia608_from_utf8451_q_2_q;
    always @(i_acl_893_eia608_from_utf8452_s or i_acl_881_eia608_from_utf8447_q or c_i32_23552709_q)
    begin
        unique case (i_acl_893_eia608_from_utf8452_s)
            1'b0 : i_acl_893_eia608_from_utf8452_q = i_acl_881_eia608_from_utf8447_q;
            1'b1 : i_acl_893_eia608_from_utf8452_q = c_i32_23552709_q;
            default : i_acl_893_eia608_from_utf8452_q = 32'b0;
        endcase
    end

    // redist101_i_pivot22_eia608_from_utf827_c_6(DELAY,990)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist101_i_pivot22_eia608_from_utf827_c_6 ( .xin(i_pivot22_eia608_from_utf827_c), .xout(redist101_i_pivot22_eia608_from_utf827_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_895_eia608_from_utf8453(LOGICAL,328)@104
    assign i_acl_895_eia608_from_utf8453_q = i_pivot125_eia608_from_utf861_c ^ redist101_i_pivot22_eia608_from_utf827_c_6_q;

    // i_reduction_eia608_from_utf8_187_eia608_from_utf8454(LOGICAL,490)@104
    assign i_reduction_eia608_from_utf8_187_eia608_from_utf8454_q = i_acl_895_eia608_from_utf8453_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_189_eia608_from_utf8455(LOGICAL,491)@104
    assign i_reduction_eia608_from_utf8_189_eia608_from_utf8455_q = i_reduction_eia608_from_utf8_187_eia608_from_utf8454_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_190_eia608_from_utf8456(LOGICAL,493)@104 + 1
    assign i_reduction_eia608_from_utf8_190_eia608_from_utf8456_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_189_eia608_from_utf8455_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_190_eia608_from_utf8456_delay ( .xin(i_reduction_eia608_from_utf8_190_eia608_from_utf8456_qi), .xout(i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist83_i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q_2(DELAY,972)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q_2_q <= '0;
        end
        else
        begin
            redist83_i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q);
        end
    end

    // i_acl_905_eia608_from_utf8457(MUX,329)@106
    assign i_acl_905_eia608_from_utf8457_s = redist83_i_reduction_eia608_from_utf8_190_eia608_from_utf8456_q_2_q;
    always @(i_acl_905_eia608_from_utf8457_s or i_acl_893_eia608_from_utf8452_q or c_i32_4412710_q)
    begin
        unique case (i_acl_905_eia608_from_utf8457_s)
            1'b0 : i_acl_905_eia608_from_utf8457_q = i_acl_893_eia608_from_utf8452_q;
            1'b1 : i_acl_905_eia608_from_utf8457_q = c_i32_4412710_q;
            default : i_acl_905_eia608_from_utf8457_q = 32'b0;
        endcase
    end

    // c_i8_84638_recast_x(CONSTANT,821)
    assign c_i8_84638_recast_x_q = $unsigned(8'b10101100);

    // i_pivot123_eia608_from_utf8110(COMPARE,367)@104
    assign i_pivot123_eia608_from_utf8110_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot123_eia608_from_utf8110_b = $unsigned({{2{c_i8_84638_recast_x_q[7]}}, c_i8_84638_recast_x_q});
    assign i_pivot123_eia608_from_utf8110_o = $unsigned($signed(i_pivot123_eia608_from_utf8110_a) - $signed(i_pivot123_eia608_from_utf8110_b));
    assign i_pivot123_eia608_from_utf8110_c[0] = i_pivot123_eia608_from_utf8110_o[9];

    // i_acl_906_eia608_from_utf8458(LOGICAL,330)@104
    assign i_acl_906_eia608_from_utf8458_q = redist101_i_pivot22_eia608_from_utf827_c_6_q ^ i_pivot123_eia608_from_utf8110_c;

    // i_reduction_eia608_from_utf8_191_eia608_from_utf8459(LOGICAL,494)@104
    assign i_reduction_eia608_from_utf8_191_eia608_from_utf8459_q = i_acl_906_eia608_from_utf8458_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_193_eia608_from_utf8460(LOGICAL,495)@104
    assign i_reduction_eia608_from_utf8_193_eia608_from_utf8460_q = i_reduction_eia608_from_utf8_191_eia608_from_utf8459_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_194_eia608_from_utf8461(LOGICAL,496)@104 + 1
    assign i_reduction_eia608_from_utf8_194_eia608_from_utf8461_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_193_eia608_from_utf8460_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_194_eia608_from_utf8461_delay ( .xin(i_reduction_eia608_from_utf8_194_eia608_from_utf8461_qi), .xout(i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist82_i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q_2(DELAY,971)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q_2_q <= '0;
        end
        else
        begin
            redist82_i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q);
        end
    end

    // i_acl_917_eia608_from_utf8462(MUX,331)@106
    assign i_acl_917_eia608_from_utf8462_s = redist82_i_reduction_eia608_from_utf8_194_eia608_from_utf8461_q_2_q;
    always @(i_acl_917_eia608_from_utf8462_s or i_acl_905_eia608_from_utf8457_q or c_i32_4662711_q)
    begin
        unique case (i_acl_917_eia608_from_utf8462_s)
            1'b0 : i_acl_917_eia608_from_utf8462_q = i_acl_905_eia608_from_utf8457_q;
            1'b1 : i_acl_917_eia608_from_utf8462_q = c_i32_4662711_q;
            default : i_acl_917_eia608_from_utf8462_q = 32'b0;
        endcase
    end

    // c_i8_83655_recast_x(CONSTANT,820)
    assign c_i8_83655_recast_x_q = $unsigned(8'b10101101);

    // i_pivot121_eia608_from_utf8146(COMPARE,366)@104
    assign i_pivot121_eia608_from_utf8146_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot121_eia608_from_utf8146_b = $unsigned({{2{c_i8_83655_recast_x_q[7]}}, c_i8_83655_recast_x_q});
    assign i_pivot121_eia608_from_utf8146_o = $unsigned($signed(i_pivot121_eia608_from_utf8146_a) - $signed(i_pivot121_eia608_from_utf8146_b));
    assign i_pivot121_eia608_from_utf8146_c[0] = i_pivot121_eia608_from_utf8146_o[9];

    // i_acl_918_eia608_from_utf8463(LOGICAL,332)@104
    assign i_acl_918_eia608_from_utf8463_q = i_pivot123_eia608_from_utf8110_c ^ i_pivot121_eia608_from_utf8146_c;

    // i_reduction_eia608_from_utf8_195_eia608_from_utf8464(LOGICAL,497)@104
    assign i_reduction_eia608_from_utf8_195_eia608_from_utf8464_q = i_acl_918_eia608_from_utf8463_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_197_eia608_from_utf8465(LOGICAL,498)@104
    assign i_reduction_eia608_from_utf8_197_eia608_from_utf8465_q = i_reduction_eia608_from_utf8_195_eia608_from_utf8464_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_198_eia608_from_utf8466(LOGICAL,499)@104 + 1
    assign i_reduction_eia608_from_utf8_198_eia608_from_utf8466_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_197_eia608_from_utf8465_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_198_eia608_from_utf8466_delay ( .xin(i_reduction_eia608_from_utf8_198_eia608_from_utf8466_qi), .xout(i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist81_i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q_2(DELAY,970)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q_2_q <= '0;
        end
        else
        begin
            redist81_i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q);
        end
    end

    // i_acl_929_eia608_from_utf8467(MUX,333)@106
    assign i_acl_929_eia608_from_utf8467_s = redist81_i_reduction_eia608_from_utf8_198_eia608_from_utf8466_q_2_q;
    always @(i_acl_929_eia608_from_utf8467_s or i_acl_917_eia608_from_utf8462_q or c_i32_4900712_q)
    begin
        unique case (i_acl_929_eia608_from_utf8467_s)
            1'b0 : i_acl_929_eia608_from_utf8467_q = i_acl_917_eia608_from_utf8462_q;
            1'b1 : i_acl_929_eia608_from_utf8467_q = c_i32_4900712_q;
            default : i_acl_929_eia608_from_utf8467_q = 32'b0;
        endcase
    end

    // redist104_i_pivot159_eia608_from_utf821_c_7(DELAY,993)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist104_i_pivot159_eia608_from_utf821_c_7 ( .xin(i_pivot159_eia608_from_utf821_c), .xout(redist104_i_pivot159_eia608_from_utf821_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_933_eia608_from_utf8468(LOGICAL,334)@104
    assign i_acl_933_eia608_from_utf8468_q = i_pivot121_eia608_from_utf8146_c ^ redist104_i_pivot159_eia608_from_utf821_c_7_q;

    // i_reduction_eia608_from_utf8_199_eia608_from_utf8469(LOGICAL,500)@104
    assign i_reduction_eia608_from_utf8_199_eia608_from_utf8469_q = i_acl_933_eia608_from_utf8468_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_201_eia608_from_utf8470(LOGICAL,501)@104
    assign i_reduction_eia608_from_utf8_201_eia608_from_utf8470_q = i_reduction_eia608_from_utf8_199_eia608_from_utf8469_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_202_eia608_from_utf8471(LOGICAL,502)@104 + 1
    assign i_reduction_eia608_from_utf8_202_eia608_from_utf8471_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_201_eia608_from_utf8470_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_202_eia608_from_utf8471_delay ( .xin(i_reduction_eia608_from_utf8_202_eia608_from_utf8471_qi), .xout(i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist80_i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q_2(DELAY,969)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q_2_q <= '0;
        end
        else
        begin
            redist80_i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q);
        end
    end

    // i_acl_941_eia608_from_utf8472(MUX,335)@106
    assign i_acl_941_eia608_from_utf8472_s = redist80_i_reduction_eia608_from_utf8_202_eia608_from_utf8471_q_2_q;
    always @(i_acl_941_eia608_from_utf8472_s or i_acl_929_eia608_from_utf8467_q or c_i32_24064713_q)
    begin
        unique case (i_acl_941_eia608_from_utf8472_s)
            1'b0 : i_acl_941_eia608_from_utf8472_q = i_acl_929_eia608_from_utf8467_q;
            1'b1 : i_acl_941_eia608_from_utf8472_q = c_i32_24064713_q;
            default : i_acl_941_eia608_from_utf8472_q = 32'b0;
        endcase
    end

    // redist107_i_pivot133_eia608_from_utf8112_c_7(DELAY,996)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist107_i_pivot133_eia608_from_utf8112_c_7 ( .xin(i_pivot133_eia608_from_utf8112_c), .xout(redist107_i_pivot133_eia608_from_utf8112_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_944_eia608_from_utf8473(LOGICAL,336)@104
    assign i_acl_944_eia608_from_utf8473_q = redist104_i_pivot159_eia608_from_utf821_c_7_q ^ redist107_i_pivot133_eia608_from_utf8112_c_7_q;

    // i_reduction_eia608_from_utf8_203_eia608_from_utf8474(LOGICAL,503)@104
    assign i_reduction_eia608_from_utf8_203_eia608_from_utf8474_q = i_acl_944_eia608_from_utf8473_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_205_eia608_from_utf8475(LOGICAL,504)@104
    assign i_reduction_eia608_from_utf8_205_eia608_from_utf8475_q = i_reduction_eia608_from_utf8_203_eia608_from_utf8474_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_206_eia608_from_utf8476(LOGICAL,505)@104 + 1
    assign i_reduction_eia608_from_utf8_206_eia608_from_utf8476_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_205_eia608_from_utf8475_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_206_eia608_from_utf8476_delay ( .xin(i_reduction_eia608_from_utf8_206_eia608_from_utf8476_qi), .xout(i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist79_i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q_2(DELAY,968)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q_2_q <= '0;
        end
        else
        begin
            redist79_i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q_2_q <= $unsigned(i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q);
        end
    end

    // i_acl_952_eia608_from_utf8477(MUX,337)@106 + 1
    assign i_acl_952_eia608_from_utf8477_s = redist79_i_reduction_eia608_from_utf8_206_eia608_from_utf8476_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_952_eia608_from_utf8477_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_952_eia608_from_utf8477_s)
                1'b0 : i_acl_952_eia608_from_utf8477_q <= i_acl_941_eia608_from_utf8472_q;
                1'b1 : i_acl_952_eia608_from_utf8477_q <= c_i32_4413714_q;
                default : i_acl_952_eia608_from_utf8477_q <= 32'b0;
            endcase
        end
    end

    // redist59_i_switchleaf129_eia608_from_utf8179_q_3(DELAY,948)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_0 <= '0;
            redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_1 <= '0;
            redist59_i_switchleaf129_eia608_from_utf8179_q_3_q <= '0;
        end
        else
        begin
            redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_0 <= $unsigned(i_switchleaf129_eia608_from_utf8179_q);
            redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_1 <= redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_0;
            redist59_i_switchleaf129_eia608_from_utf8179_q_3_q <= redist59_i_switchleaf129_eia608_from_utf8179_q_3_delay_1;
        end
    end

    // i_reduction_eia608_from_utf8_208_eia608_from_utf8478(LOGICAL,506)@100
    assign i_reduction_eia608_from_utf8_208_eia608_from_utf8478_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & redist59_i_switchleaf129_eia608_from_utf8179_q_3_q;

    // i_reduction_eia608_from_utf8_210_eia608_from_utf8479(LOGICAL,508)@100 + 1
    assign i_reduction_eia608_from_utf8_210_eia608_from_utf8479_qi = i_reduction_eia608_from_utf8_208_eia608_from_utf8478_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_210_eia608_from_utf8479_delay ( .xin(i_reduction_eia608_from_utf8_210_eia608_from_utf8479_qi), .xout(i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist78_i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q_7(DELAY,967)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist78_i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q_7 ( .xin(i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q), .xout(redist78_i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_965_eia608_from_utf8480(MUX,338)@107
    assign i_acl_965_eia608_from_utf8480_s = redist78_i_reduction_eia608_from_utf8_210_eia608_from_utf8479_q_7_q;
    always @(i_acl_965_eia608_from_utf8480_s or i_acl_952_eia608_from_utf8477_q or c_i32_4665715_q)
    begin
        unique case (i_acl_965_eia608_from_utf8480_s)
            1'b0 : i_acl_965_eia608_from_utf8480_q = i_acl_952_eia608_from_utf8477_q;
            1'b1 : i_acl_965_eia608_from_utf8480_q = c_i32_4665715_q;
            default : i_acl_965_eia608_from_utf8480_q = 32'b0;
        endcase
    end

    // c_i8_78622_recast_x(CONSTANT,815)
    assign c_i8_78622_recast_x_q = $unsigned(8'b10110010);

    // i_pivot141_eia608_from_utf863(COMPARE,376)@104
    assign i_pivot141_eia608_from_utf863_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot141_eia608_from_utf863_b = $unsigned({{2{c_i8_78622_recast_x_q[7]}}, c_i8_78622_recast_x_q});
    assign i_pivot141_eia608_from_utf863_o = $unsigned($signed(i_pivot141_eia608_from_utf863_a) - $signed(i_pivot141_eia608_from_utf863_b));
    assign i_pivot141_eia608_from_utf863_c[0] = i_pivot141_eia608_from_utf863_o[9];

    // redist108_i_pivot131_eia608_from_utf8148_c_7(DELAY,997)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist108_i_pivot131_eia608_from_utf8148_c_7 ( .xin(i_pivot131_eia608_from_utf8148_c), .xout(redist108_i_pivot131_eia608_from_utf8148_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_967_eia608_from_utf8481(LOGICAL,339)@104
    assign i_acl_967_eia608_from_utf8481_q = redist108_i_pivot131_eia608_from_utf8148_c_7_q ^ i_pivot141_eia608_from_utf863_c;

    // i_reduction_eia608_from_utf8_211_eia608_from_utf8482(LOGICAL,509)@104
    assign i_reduction_eia608_from_utf8_211_eia608_from_utf8482_q = i_acl_967_eia608_from_utf8481_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_213_eia608_from_utf8483(LOGICAL,510)@104
    assign i_reduction_eia608_from_utf8_213_eia608_from_utf8483_q = i_reduction_eia608_from_utf8_211_eia608_from_utf8482_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_214_eia608_from_utf8484(LOGICAL,511)@104 + 1
    assign i_reduction_eia608_from_utf8_214_eia608_from_utf8484_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_213_eia608_from_utf8483_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_214_eia608_from_utf8484_delay ( .xin(i_reduction_eia608_from_utf8_214_eia608_from_utf8484_qi), .xout(i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3(DELAY,966)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_delay_0 <= '0;
            redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_q <= '0;
        end
        else
        begin
            redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q);
            redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_q <= redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_delay_0;
        end
    end

    // i_acl_977_eia608_from_utf8485(MUX,340)@107
    assign i_acl_977_eia608_from_utf8485_s = redist77_i_reduction_eia608_from_utf8_214_eia608_from_utf8484_q_3_q;
    always @(i_acl_977_eia608_from_utf8485_s or i_acl_965_eia608_from_utf8480_q or c_i32_32256716_q)
    begin
        unique case (i_acl_977_eia608_from_utf8485_s)
            1'b0 : i_acl_977_eia608_from_utf8485_q = i_acl_965_eia608_from_utf8480_q;
            1'b1 : i_acl_977_eia608_from_utf8485_q = c_i32_32256716_q;
            default : i_acl_977_eia608_from_utf8485_q = 32'b0;
        endcase
    end

    // c_i8_77657_recast_x(CONSTANT,814)
    assign c_i8_77657_recast_x_q = $unsigned(8'b10110011);

    // i_pivot135_eia608_from_utf8150(COMPARE,373)@104
    assign i_pivot135_eia608_from_utf8150_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot135_eia608_from_utf8150_b = $unsigned({{2{c_i8_77657_recast_x_q[7]}}, c_i8_77657_recast_x_q});
    assign i_pivot135_eia608_from_utf8150_o = $unsigned($signed(i_pivot135_eia608_from_utf8150_a) - $signed(i_pivot135_eia608_from_utf8150_b));
    assign i_pivot135_eia608_from_utf8150_c[0] = i_pivot135_eia608_from_utf8150_o[9];

    // i_acl_979_eia608_from_utf8486(LOGICAL,341)@104
    assign i_acl_979_eia608_from_utf8486_q = i_pivot141_eia608_from_utf863_c ^ i_pivot135_eia608_from_utf8150_c;

    // i_reduction_eia608_from_utf8_215_eia608_from_utf8487(LOGICAL,512)@104
    assign i_reduction_eia608_from_utf8_215_eia608_from_utf8487_q = i_acl_979_eia608_from_utf8486_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_217_eia608_from_utf8488(LOGICAL,513)@104
    assign i_reduction_eia608_from_utf8_217_eia608_from_utf8488_q = i_reduction_eia608_from_utf8_215_eia608_from_utf8487_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_218_eia608_from_utf8489(LOGICAL,514)@104 + 1
    assign i_reduction_eia608_from_utf8_218_eia608_from_utf8489_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_217_eia608_from_utf8488_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_218_eia608_from_utf8489_delay ( .xin(i_reduction_eia608_from_utf8_218_eia608_from_utf8489_qi), .xout(i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3(DELAY,965)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_delay_0 <= '0;
            redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_q <= '0;
        end
        else
        begin
            redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q);
            redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_q <= redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_delay_0;
        end
    end

    // i_acl_989_eia608_from_utf8490(MUX,342)@107
    assign i_acl_989_eia608_from_utf8490_s = redist76_i_reduction_eia608_from_utf8_218_eia608_from_utf8489_q_3_q;
    always @(i_acl_989_eia608_from_utf8490_s or i_acl_977_eia608_from_utf8485_q or c_i32_4902717_q)
    begin
        unique case (i_acl_989_eia608_from_utf8490_s)
            1'b0 : i_acl_989_eia608_from_utf8490_q = i_acl_977_eia608_from_utf8485_q;
            1'b1 : i_acl_989_eia608_from_utf8490_q = c_i32_4902717_q;
            default : i_acl_989_eia608_from_utf8490_q = 32'b0;
        endcase
    end

    // c_i8_76640_recast_x(CONSTANT,813)
    assign c_i8_76640_recast_x_q = $unsigned(8'b10110100);

    // i_pivot139_eia608_from_utf8114(COMPARE,375)@104
    assign i_pivot139_eia608_from_utf8114_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot139_eia608_from_utf8114_b = $unsigned({{2{c_i8_76640_recast_x_q[7]}}, c_i8_76640_recast_x_q});
    assign i_pivot139_eia608_from_utf8114_o = $unsigned($signed(i_pivot139_eia608_from_utf8114_a) - $signed(i_pivot139_eia608_from_utf8114_b));
    assign i_pivot139_eia608_from_utf8114_c[0] = i_pivot139_eia608_from_utf8114_o[9];

    // i_acl_990_eia608_from_utf8491(LOGICAL,343)@104
    assign i_acl_990_eia608_from_utf8491_q = i_pivot135_eia608_from_utf8150_c ^ i_pivot139_eia608_from_utf8114_c;

    // i_reduction_eia608_from_utf8_219_eia608_from_utf8492(LOGICAL,515)@104
    assign i_reduction_eia608_from_utf8_219_eia608_from_utf8492_q = i_acl_990_eia608_from_utf8491_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_221_eia608_from_utf8493(LOGICAL,517)@104
    assign i_reduction_eia608_from_utf8_221_eia608_from_utf8493_q = i_reduction_eia608_from_utf8_219_eia608_from_utf8492_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_222_eia608_from_utf8494(LOGICAL,518)@104 + 1
    assign i_reduction_eia608_from_utf8_222_eia608_from_utf8494_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_221_eia608_from_utf8493_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_222_eia608_from_utf8494_delay ( .xin(i_reduction_eia608_from_utf8_222_eia608_from_utf8494_qi), .xout(i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3(DELAY,964)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_delay_0 <= '0;
            redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_q <= '0;
        end
        else
        begin
            redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q);
            redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_q <= redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_delay_0;
        end
    end

    // i_acl_1001_eia608_from_utf8495(MUX,98)@107
    assign i_acl_1001_eia608_from_utf8495_s = redist75_i_reduction_eia608_from_utf8_222_eia608_from_utf8494_q_3_q;
    always @(i_acl_1001_eia608_from_utf8495_s or i_acl_989_eia608_from_utf8490_q or c_i32_24320718_q)
    begin
        unique case (i_acl_1001_eia608_from_utf8495_s)
            1'b0 : i_acl_1001_eia608_from_utf8495_q = i_acl_989_eia608_from_utf8490_q;
            1'b1 : i_acl_1001_eia608_from_utf8495_q = c_i32_24320718_q;
            default : i_acl_1001_eia608_from_utf8495_q = 32'b0;
        endcase
    end

    // c_i8_75658_recast_x(CONSTANT,812)
    assign c_i8_75658_recast_x_q = $unsigned(8'b10110101);

    // i_pivot137_eia608_from_utf8152(COMPARE,374)@104
    assign i_pivot137_eia608_from_utf8152_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot137_eia608_from_utf8152_b = $unsigned({{2{c_i8_75658_recast_x_q[7]}}, c_i8_75658_recast_x_q});
    assign i_pivot137_eia608_from_utf8152_o = $unsigned($signed(i_pivot137_eia608_from_utf8152_a) - $signed(i_pivot137_eia608_from_utf8152_b));
    assign i_pivot137_eia608_from_utf8152_c[0] = i_pivot137_eia608_from_utf8152_o[9];

    // i_acl_1002_eia608_from_utf8496(LOGICAL,99)@104
    assign i_acl_1002_eia608_from_utf8496_q = i_pivot139_eia608_from_utf8114_c ^ i_pivot137_eia608_from_utf8152_c;

    // i_reduction_eia608_from_utf8_223_eia608_from_utf8497(LOGICAL,519)@104
    assign i_reduction_eia608_from_utf8_223_eia608_from_utf8497_q = i_acl_1002_eia608_from_utf8496_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_225_eia608_from_utf8498(LOGICAL,520)@104
    assign i_reduction_eia608_from_utf8_225_eia608_from_utf8498_q = i_reduction_eia608_from_utf8_223_eia608_from_utf8497_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_226_eia608_from_utf8499(LOGICAL,521)@104 + 1
    assign i_reduction_eia608_from_utf8_226_eia608_from_utf8499_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_225_eia608_from_utf8498_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_226_eia608_from_utf8499_delay ( .xin(i_reduction_eia608_from_utf8_226_eia608_from_utf8499_qi), .xout(i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3(DELAY,963)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_delay_0 <= '0;
            redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_q <= '0;
        end
        else
        begin
            redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q);
            redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_q <= redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_delay_0;
        end
    end

    // i_acl_1013_eia608_from_utf8500(MUX,100)@107
    assign i_acl_1013_eia608_from_utf8500_s = redist74_i_reduction_eia608_from_utf8_226_eia608_from_utf8499_q_3_q;
    always @(i_acl_1013_eia608_from_utf8500_s or i_acl_1001_eia608_from_utf8495_q or c_i32_4414719_q)
    begin
        unique case (i_acl_1013_eia608_from_utf8500_s)
            1'b0 : i_acl_1013_eia608_from_utf8500_q = i_acl_1001_eia608_from_utf8495_q;
            1'b1 : i_acl_1013_eia608_from_utf8500_q = c_i32_4414719_q;
            default : i_acl_1013_eia608_from_utf8500_q = 32'b0;
        endcase
    end

    // redist105_i_pivot157_eia608_from_utf837_c_7(DELAY,994)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist105_i_pivot157_eia608_from_utf837_c_7 ( .xin(i_pivot157_eia608_from_utf837_c), .xout(redist105_i_pivot157_eia608_from_utf837_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1016_eia608_from_utf8501(LOGICAL,101)@104
    assign i_acl_1016_eia608_from_utf8501_q = i_pivot137_eia608_from_utf8152_c ^ redist105_i_pivot157_eia608_from_utf837_c_7_q;

    // i_reduction_eia608_from_utf8_227_eia608_from_utf8502(LOGICAL,522)@104
    assign i_reduction_eia608_from_utf8_227_eia608_from_utf8502_q = i_acl_1016_eia608_from_utf8501_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_229_eia608_from_utf8503(LOGICAL,523)@104
    assign i_reduction_eia608_from_utf8_229_eia608_from_utf8503_q = i_reduction_eia608_from_utf8_227_eia608_from_utf8502_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_230_eia608_from_utf8504(LOGICAL,525)@104 + 1
    assign i_reduction_eia608_from_utf8_230_eia608_from_utf8504_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_229_eia608_from_utf8503_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_230_eia608_from_utf8504_delay ( .xin(i_reduction_eia608_from_utf8_230_eia608_from_utf8504_qi), .xout(i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3(DELAY,962)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_delay_0 <= '0;
            redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_q <= '0;
        end
        else
        begin
            redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q);
            redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_q <= redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_delay_0;
        end
    end

    // i_acl_1025_eia608_from_utf8505(MUX,102)@107
    assign i_acl_1025_eia608_from_utf8505_s = redist73_i_reduction_eia608_from_utf8_230_eia608_from_utf8504_q_3_q;
    always @(i_acl_1025_eia608_from_utf8505_s or i_acl_1013_eia608_from_utf8500_q or c_i32_4904720_q)
    begin
        unique case (i_acl_1025_eia608_from_utf8505_s)
            1'b0 : i_acl_1025_eia608_from_utf8505_q = i_acl_1013_eia608_from_utf8500_q;
            1'b1 : i_acl_1025_eia608_from_utf8505_q = c_i32_4904720_q;
            default : i_acl_1025_eia608_from_utf8505_q = 32'b0;
        endcase
    end

    // c_i8_73641_recast_x(CONSTANT,810)
    assign c_i8_73641_recast_x_q = $unsigned(8'b10110111);

    // i_pivot145_eia608_from_utf8116(COMPARE,378)@104
    assign i_pivot145_eia608_from_utf8116_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot145_eia608_from_utf8116_b = $unsigned({{2{c_i8_73641_recast_x_q[7]}}, c_i8_73641_recast_x_q});
    assign i_pivot145_eia608_from_utf8116_o = $unsigned($signed(i_pivot145_eia608_from_utf8116_a) - $signed(i_pivot145_eia608_from_utf8116_b));
    assign i_pivot145_eia608_from_utf8116_c[0] = i_pivot145_eia608_from_utf8116_o[9];

    // i_acl_1027_eia608_from_utf8506(LOGICAL,103)@104
    assign i_acl_1027_eia608_from_utf8506_q = redist105_i_pivot157_eia608_from_utf837_c_7_q ^ i_pivot145_eia608_from_utf8116_c;

    // i_reduction_eia608_from_utf8_231_eia608_from_utf8507(LOGICAL,526)@104
    assign i_reduction_eia608_from_utf8_231_eia608_from_utf8507_q = i_acl_1027_eia608_from_utf8506_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_233_eia608_from_utf8508(LOGICAL,527)@104
    assign i_reduction_eia608_from_utf8_233_eia608_from_utf8508_q = i_reduction_eia608_from_utf8_231_eia608_from_utf8507_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_234_eia608_from_utf8509(LOGICAL,528)@104 + 1
    assign i_reduction_eia608_from_utf8_234_eia608_from_utf8509_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_233_eia608_from_utf8508_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_234_eia608_from_utf8509_delay ( .xin(i_reduction_eia608_from_utf8_234_eia608_from_utf8509_qi), .xout(i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3(DELAY,961)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_delay_0 <= '0;
            redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_q <= '0;
        end
        else
        begin
            redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q);
            redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_q <= redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_delay_0;
        end
    end

    // i_acl_1036_eia608_from_utf8510(MUX,104)@107 + 1
    assign i_acl_1036_eia608_from_utf8510_s = redist72_i_reduction_eia608_from_utf8_234_eia608_from_utf8509_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1036_eia608_from_utf8510_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_1036_eia608_from_utf8510_s)
                1'b0 : i_acl_1036_eia608_from_utf8510_q <= i_acl_1025_eia608_from_utf8505_q;
                1'b1 : i_acl_1036_eia608_from_utf8510_q <= c_i32_4915721_q;
                default : i_acl_1036_eia608_from_utf8510_q <= 32'b0;
            endcase
        end
    end

    // c_i8_72659_recast_x(CONSTANT,809)
    assign c_i8_72659_recast_x_q = $unsigned(8'b10111000);

    // i_pivot143_eia608_from_utf8154(COMPARE,377)@104
    assign i_pivot143_eia608_from_utf8154_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot143_eia608_from_utf8154_b = $unsigned({{2{c_i8_72659_recast_x_q[7]}}, c_i8_72659_recast_x_q});
    assign i_pivot143_eia608_from_utf8154_o = $unsigned($signed(i_pivot143_eia608_from_utf8154_a) - $signed(i_pivot143_eia608_from_utf8154_b));
    assign i_pivot143_eia608_from_utf8154_c[0] = i_pivot143_eia608_from_utf8154_o[9];

    // i_acl_1037_eia608_from_utf8511(LOGICAL,105)@104
    assign i_acl_1037_eia608_from_utf8511_q = i_pivot145_eia608_from_utf8116_c ^ i_pivot143_eia608_from_utf8154_c;

    // i_reduction_eia608_from_utf8_235_eia608_from_utf8512(LOGICAL,529)@104
    assign i_reduction_eia608_from_utf8_235_eia608_from_utf8512_q = i_acl_1037_eia608_from_utf8511_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_237_eia608_from_utf8513(LOGICAL,530)@104
    assign i_reduction_eia608_from_utf8_237_eia608_from_utf8513_q = i_reduction_eia608_from_utf8_235_eia608_from_utf8512_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_238_eia608_from_utf8514(LOGICAL,531)@104 + 1
    assign i_reduction_eia608_from_utf8_238_eia608_from_utf8514_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_237_eia608_from_utf8513_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_238_eia608_from_utf8514_delay ( .xin(i_reduction_eia608_from_utf8_238_eia608_from_utf8514_qi), .xout(i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4(DELAY,960)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_0 <= '0;
            redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_1 <= '0;
            redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_q <= '0;
        end
        else
        begin
            redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q);
            redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_1 <= redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_0;
            redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_q <= redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_delay_1;
        end
    end

    // i_acl_1048_eia608_from_utf8515(MUX,106)@108
    assign i_acl_1048_eia608_from_utf8515_s = redist71_i_reduction_eia608_from_utf8_238_eia608_from_utf8514_q_4_q;
    always @(i_acl_1048_eia608_from_utf8515_s or i_acl_1036_eia608_from_utf8510_q or c_i32_31744722_q)
    begin
        unique case (i_acl_1048_eia608_from_utf8515_s)
            1'b0 : i_acl_1048_eia608_from_utf8515_q = i_acl_1036_eia608_from_utf8510_q;
            1'b1 : i_acl_1048_eia608_from_utf8515_q = c_i32_31744722_q;
            default : i_acl_1048_eia608_from_utf8515_q = 32'b0;
        endcase
    end

    // c_i8_71623_recast_x(CONSTANT,808)
    assign c_i8_71623_recast_x_q = $unsigned(8'b10111001);

    // i_pivot155_eia608_from_utf865(COMPARE,381)@104
    assign i_pivot155_eia608_from_utf865_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot155_eia608_from_utf865_b = $unsigned({{2{c_i8_71623_recast_x_q[7]}}, c_i8_71623_recast_x_q});
    assign i_pivot155_eia608_from_utf865_o = $unsigned($signed(i_pivot155_eia608_from_utf865_a) - $signed(i_pivot155_eia608_from_utf865_b));
    assign i_pivot155_eia608_from_utf865_c[0] = i_pivot155_eia608_from_utf865_o[9];

    // i_acl_1050_eia608_from_utf8516(LOGICAL,107)@104
    assign i_acl_1050_eia608_from_utf8516_q = i_pivot143_eia608_from_utf8154_c ^ i_pivot155_eia608_from_utf865_c;

    // i_reduction_eia608_from_utf8_239_eia608_from_utf8517(LOGICAL,532)@104
    assign i_reduction_eia608_from_utf8_239_eia608_from_utf8517_q = i_acl_1050_eia608_from_utf8516_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_241_eia608_from_utf8518(LOGICAL,533)@104
    assign i_reduction_eia608_from_utf8_241_eia608_from_utf8518_q = i_reduction_eia608_from_utf8_239_eia608_from_utf8517_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_242_eia608_from_utf8519(LOGICAL,534)@104 + 1
    assign i_reduction_eia608_from_utf8_242_eia608_from_utf8519_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_241_eia608_from_utf8518_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_242_eia608_from_utf8519_delay ( .xin(i_reduction_eia608_from_utf8_242_eia608_from_utf8519_qi), .xout(i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4(DELAY,959)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_0 <= '0;
            redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_1 <= '0;
            redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_q <= '0;
        end
        else
        begin
            redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q);
            redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_1 <= redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_0;
            redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_q <= redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_delay_1;
        end
    end

    // i_acl_1060_eia608_from_utf8520(MUX,108)@108
    assign i_acl_1060_eia608_from_utf8520_s = redist70_i_reduction_eia608_from_utf8_242_eia608_from_utf8519_q_4_q;
    always @(i_acl_1060_eia608_from_utf8520_s or i_acl_1048_eia608_from_utf8515_q or c_i32_4923723_q)
    begin
        unique case (i_acl_1060_eia608_from_utf8520_s)
            1'b0 : i_acl_1060_eia608_from_utf8520_q = i_acl_1048_eia608_from_utf8515_q;
            1'b1 : i_acl_1060_eia608_from_utf8520_q = c_i32_4923723_q;
            default : i_acl_1060_eia608_from_utf8520_q = 32'b0;
        endcase
    end

    // c_i8_70660_recast_x(CONSTANT,807)
    assign c_i8_70660_recast_x_q = $unsigned(8'b10111010);

    // i_pivot147_eia608_from_utf8156(COMPARE,379)@104
    assign i_pivot147_eia608_from_utf8156_a = $unsigned({{2{redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q[7]}}, redist11_sync_together743_aunroll_x_in_c1_eni29_8_tpl_7_q});
    assign i_pivot147_eia608_from_utf8156_b = $unsigned({{2{c_i8_70660_recast_x_q[7]}}, c_i8_70660_recast_x_q});
    assign i_pivot147_eia608_from_utf8156_o = $unsigned($signed(i_pivot147_eia608_from_utf8156_a) - $signed(i_pivot147_eia608_from_utf8156_b));
    assign i_pivot147_eia608_from_utf8156_c[0] = i_pivot147_eia608_from_utf8156_o[9];

    // i_acl_1062_eia608_from_utf8521(LOGICAL,109)@104
    assign i_acl_1062_eia608_from_utf8521_q = i_pivot155_eia608_from_utf865_c ^ i_pivot147_eia608_from_utf8156_c;

    // i_reduction_eia608_from_utf8_243_eia608_from_utf8522(LOGICAL,535)@104
    assign i_reduction_eia608_from_utf8_243_eia608_from_utf8522_q = i_acl_1062_eia608_from_utf8521_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_245_eia608_from_utf8523(LOGICAL,536)@104
    assign i_reduction_eia608_from_utf8_245_eia608_from_utf8523_q = i_reduction_eia608_from_utf8_243_eia608_from_utf8522_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_246_eia608_from_utf8524(LOGICAL,537)@104 + 1
    assign i_reduction_eia608_from_utf8_246_eia608_from_utf8524_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_245_eia608_from_utf8523_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_246_eia608_from_utf8524_delay ( .xin(i_reduction_eia608_from_utf8_246_eia608_from_utf8524_qi), .xout(i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4(DELAY,958)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_0 <= '0;
            redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_1 <= '0;
            redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_q <= '0;
        end
        else
        begin
            redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q);
            redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_1 <= redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_0;
            redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_q <= redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_delay_1;
        end
    end

    // i_acl_1072_eia608_from_utf8525(MUX,110)@108
    assign i_acl_1072_eia608_from_utf8525_s = redist69_i_reduction_eia608_from_utf8_246_eia608_from_utf8524_q_4_q;
    always @(i_acl_1072_eia608_from_utf8525_s or i_acl_1060_eia608_from_utf8520_q or c_i32_4668724_q)
    begin
        unique case (i_acl_1072_eia608_from_utf8525_s)
            1'b0 : i_acl_1072_eia608_from_utf8525_q = i_acl_1060_eia608_from_utf8520_q;
            1'b1 : i_acl_1072_eia608_from_utf8525_q = c_i32_4668724_q;
            default : i_acl_1072_eia608_from_utf8525_q = 32'b0;
        endcase
    end

    // redist100_i_pivot28_eia608_from_utf849_c_7(DELAY,989)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist100_i_pivot28_eia608_from_utf849_c_7 ( .xin(i_pivot28_eia608_from_utf849_c), .xout(redist100_i_pivot28_eia608_from_utf849_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1073_eia608_from_utf8526(LOGICAL,111)@104
    assign i_acl_1073_eia608_from_utf8526_q = i_pivot147_eia608_from_utf8156_c ^ redist100_i_pivot28_eia608_from_utf849_c_7_q;

    // i_reduction_eia608_from_utf8_247_eia608_from_utf8527(LOGICAL,538)@104
    assign i_reduction_eia608_from_utf8_247_eia608_from_utf8527_q = i_acl_1073_eia608_from_utf8526_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_249_eia608_from_utf8528(LOGICAL,539)@104
    assign i_reduction_eia608_from_utf8_249_eia608_from_utf8528_q = i_reduction_eia608_from_utf8_247_eia608_from_utf8527_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_250_eia608_from_utf8529(LOGICAL,541)@104 + 1
    assign i_reduction_eia608_from_utf8_250_eia608_from_utf8529_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_249_eia608_from_utf8528_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_250_eia608_from_utf8529_delay ( .xin(i_reduction_eia608_from_utf8_250_eia608_from_utf8529_qi), .xout(i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4(DELAY,957)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_0 <= '0;
            redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_1 <= '0;
            redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_q <= '0;
        end
        else
        begin
            redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q);
            redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_1 <= redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_0;
            redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_q <= redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_delay_1;
        end
    end

    // i_acl_1084_eia608_from_utf8530(MUX,112)@108
    assign i_acl_1084_eia608_from_utf8530_s = redist68_i_reduction_eia608_from_utf8_250_eia608_from_utf8529_q_4_q;
    always @(i_acl_1084_eia608_from_utf8530_s or i_acl_1072_eia608_from_utf8525_q or c_i32_24576725_q)
    begin
        unique case (i_acl_1084_eia608_from_utf8530_s)
            1'b0 : i_acl_1084_eia608_from_utf8530_q = i_acl_1072_eia608_from_utf8525_q;
            1'b1 : i_acl_1084_eia608_from_utf8530_q = c_i32_24576725_q;
            default : i_acl_1084_eia608_from_utf8530_q = 32'b0;
        endcase
    end

    // redist106_i_pivot151_eia608_from_utf8158_c_7(DELAY,995)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist106_i_pivot151_eia608_from_utf8158_c_7 ( .xin(i_pivot151_eia608_from_utf8158_c), .xout(redist106_i_pivot151_eia608_from_utf8158_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1085_eia608_from_utf8531(LOGICAL,113)@104
    assign i_acl_1085_eia608_from_utf8531_q = redist100_i_pivot28_eia608_from_utf849_c_7_q ^ redist106_i_pivot151_eia608_from_utf8158_c_7_q;

    // i_reduction_eia608_from_utf8_251_eia608_from_utf8532(LOGICAL,542)@104
    assign i_reduction_eia608_from_utf8_251_eia608_from_utf8532_q = i_acl_1085_eia608_from_utf8531_q & redist117_i_not_cmp75_eia608_from_utf8241_q_6_q;

    // i_reduction_eia608_from_utf8_253_eia608_from_utf8533(LOGICAL,543)@104
    assign i_reduction_eia608_from_utf8_253_eia608_from_utf8533_q = i_reduction_eia608_from_utf8_251_eia608_from_utf8532_q & redist64_i_reduction_eia608_from_utf8_48_eia608_from_utf8290_q_4_q;

    // i_reduction_eia608_from_utf8_254_eia608_from_utf8534(LOGICAL,544)@104 + 1
    assign i_reduction_eia608_from_utf8_254_eia608_from_utf8534_qi = redist29_sync_together743_aunroll_x_in_c1_eni29_20_tpl_7_q & i_reduction_eia608_from_utf8_253_eia608_from_utf8533_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_254_eia608_from_utf8534_delay ( .xin(i_reduction_eia608_from_utf8_254_eia608_from_utf8534_qi), .xout(i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4(DELAY,956)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_0 <= '0;
            redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_1 <= '0;
            redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_q <= '0;
        end
        else
        begin
            redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_0 <= $unsigned(i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q);
            redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_1 <= redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_0;
            redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_q <= redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_delay_1;
        end
    end

    // i_acl_1096_eia608_from_utf8535(MUX,114)@108
    assign i_acl_1096_eia608_from_utf8535_s = redist67_i_reduction_eia608_from_utf8_254_eia608_from_utf8534_q_4_q;
    always @(i_acl_1096_eia608_from_utf8535_s or i_acl_1084_eia608_from_utf8530_q or c_i32_4415726_q)
    begin
        unique case (i_acl_1096_eia608_from_utf8535_s)
            1'b0 : i_acl_1096_eia608_from_utf8535_q = i_acl_1084_eia608_from_utf8530_q;
            1'b1 : i_acl_1096_eia608_from_utf8535_q = c_i32_4415726_q;
            default : i_acl_1096_eia608_from_utf8535_q = 32'b0;
        endcase
    end

    // redist58_i_switchleaf149_eia608_from_utf8181_q_3(DELAY,947)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_switchleaf149_eia608_from_utf8181_q_3_delay_0 <= '0;
            redist58_i_switchleaf149_eia608_from_utf8181_q_3_q <= '0;
        end
        else
        begin
            redist58_i_switchleaf149_eia608_from_utf8181_q_3_delay_0 <= $unsigned(i_switchleaf149_eia608_from_utf8181_q);
            redist58_i_switchleaf149_eia608_from_utf8181_q_3_q <= redist58_i_switchleaf149_eia608_from_utf8181_q_3_delay_0;
        end
    end

    // i_reduction_eia608_from_utf8_256_eia608_from_utf8536(LOGICAL,545)@100
    assign i_reduction_eia608_from_utf8_256_eia608_from_utf8536_q = redist25_sync_together743_aunroll_x_in_c1_eni29_20_tpl_3_q & redist58_i_switchleaf149_eia608_from_utf8181_q_3_q;

    // i_reduction_eia608_from_utf8_258_eia608_from_utf8537(LOGICAL,546)@100 + 1
    assign i_reduction_eia608_from_utf8_258_eia608_from_utf8537_qi = i_reduction_eia608_from_utf8_256_eia608_from_utf8536_q & i_reduction_eia608_from_utf8_45_eia608_from_utf8285_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_eia608_from_utf8_258_eia608_from_utf8537_delay ( .xin(i_reduction_eia608_from_utf8_258_eia608_from_utf8537_qi), .xout(i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist66_i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q_8(DELAY,955)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist66_i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q_8 ( .xin(i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q), .xout(redist66_i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1109_eia608_from_utf8538(MUX,115)@108
    assign i_acl_1109_eia608_from_utf8538_s = redist66_i_reduction_eia608_from_utf8_258_eia608_from_utf8537_q_8_q;
    always @(i_acl_1109_eia608_from_utf8538_s or i_acl_1096_eia608_from_utf8535_q or c_i32_4645727_q)
    begin
        unique case (i_acl_1109_eia608_from_utf8538_s)
            1'b0 : i_acl_1109_eia608_from_utf8538_q = i_acl_1096_eia608_from_utf8535_q;
            1'b1 : i_acl_1109_eia608_from_utf8538_q = c_i32_4645727_q;
            default : i_acl_1109_eia608_from_utf8538_q = 32'b0;
        endcase
    end

    // redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7(DELAY,906)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_0 <= '0;
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_1 <= '0;
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_2 <= '0;
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q <= '0;
        end
        else
        begin
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_0 <= $unsigned(redist16_sync_together743_aunroll_x_in_c1_eni29_13_tpl_3_q);
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_1 <= redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_0;
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_2 <= redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_1;
            redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q <= redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_delay_2;
        end
    end

    // redist40_i_switchleaf_eia608_from_utf839_q_6(DELAY,929)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_i_switchleaf_eia608_from_utf839_q_6 ( .xin(i_switchleaf_eia608_from_utf839_q), .xout(redist40_i_switchleaf_eia608_from_utf839_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist119_i_cmp75_eia608_from_utf89_q_7(DELAY,1008)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist119_i_cmp75_eia608_from_utf89_q_7 ( .xin(i_cmp75_eia608_from_utf89_q), .xout(redist119_i_cmp75_eia608_from_utf89_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1113_eia608_from_utf8539(LOGICAL,116)@104
    assign i_acl_1113_eia608_from_utf8539_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist40_i_switchleaf_eia608_from_utf839_q_6_q;

    // i_acl_1118_eia608_from_utf8540(LOGICAL,117)@104 + 1
    assign i_acl_1118_eia608_from_utf8540_qi = i_acl_1113_eia608_from_utf8539_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1118_eia608_from_utf8540_delay ( .xin(i_acl_1118_eia608_from_utf8540_qi), .xout(i_acl_1118_eia608_from_utf8540_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist144_i_acl_1118_eia608_from_utf8540_q_4(DELAY,1033)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_0 <= '0;
            redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_1 <= '0;
            redist144_i_acl_1118_eia608_from_utf8540_q_4_q <= '0;
        end
        else
        begin
            redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_0 <= $unsigned(i_acl_1118_eia608_from_utf8540_q);
            redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_1 <= redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_0;
            redist144_i_acl_1118_eia608_from_utf8540_q_4_q <= redist144_i_acl_1118_eia608_from_utf8540_q_4_delay_1;
        end
    end

    // i_acl_1119_eia608_from_utf8541(MUX,118)@108 + 1
    assign i_acl_1119_eia608_from_utf8541_s = redist144_i_acl_1118_eia608_from_utf8540_q_4_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1119_eia608_from_utf8541_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_1119_eia608_from_utf8541_s)
                1'b0 : i_acl_1119_eia608_from_utf8541_q <= i_acl_1109_eia608_from_utf8538_q;
                1'b1 : i_acl_1119_eia608_from_utf8541_q <= c_i32_4409728_q;
                default : i_acl_1119_eia608_from_utf8541_q <= 32'b0;
            endcase
        end
    end

    // i_acl_1123_eia608_from_utf8542(LOGICAL,119)@104
    assign i_acl_1123_eia608_from_utf8542_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & i_acl_799_eia608_from_utf8415_q;

    // i_acl_1128_eia608_from_utf8543(LOGICAL,120)@104 + 1
    assign i_acl_1128_eia608_from_utf8543_qi = i_acl_1123_eia608_from_utf8542_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1128_eia608_from_utf8543_delay ( .xin(i_acl_1128_eia608_from_utf8543_qi), .xout(i_acl_1128_eia608_from_utf8543_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist143_i_acl_1128_eia608_from_utf8543_q_5(DELAY,1032)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_0 <= '0;
            redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_1 <= '0;
            redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_2 <= '0;
            redist143_i_acl_1128_eia608_from_utf8543_q_5_q <= '0;
        end
        else
        begin
            redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_0 <= $unsigned(i_acl_1128_eia608_from_utf8543_q);
            redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_1 <= redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_0;
            redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_2 <= redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_1;
            redist143_i_acl_1128_eia608_from_utf8543_q_5_q <= redist143_i_acl_1128_eia608_from_utf8543_q_5_delay_2;
        end
    end

    // i_acl_1129_eia608_from_utf8544(MUX,121)@109
    assign i_acl_1129_eia608_from_utf8544_s = redist143_i_acl_1128_eia608_from_utf8543_q_5_q;
    always @(i_acl_1129_eia608_from_utf8544_s or i_acl_1119_eia608_from_utf8541_q or c_i32_4647729_q)
    begin
        unique case (i_acl_1129_eia608_from_utf8544_s)
            1'b0 : i_acl_1129_eia608_from_utf8544_q = i_acl_1119_eia608_from_utf8541_q;
            1'b1 : i_acl_1129_eia608_from_utf8544_q = c_i32_4647729_q;
            default : i_acl_1129_eia608_from_utf8544_q = 32'b0;
        endcase
    end

    // i_acl_1133_eia608_from_utf8545(LOGICAL,122)@104
    assign i_acl_1133_eia608_from_utf8545_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & i_acl_812_eia608_from_utf8420_q;

    // i_acl_1138_eia608_from_utf8546(LOGICAL,123)@104 + 1
    assign i_acl_1138_eia608_from_utf8546_qi = i_acl_1133_eia608_from_utf8545_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1138_eia608_from_utf8546_delay ( .xin(i_acl_1138_eia608_from_utf8546_qi), .xout(i_acl_1138_eia608_from_utf8546_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist142_i_acl_1138_eia608_from_utf8546_q_5(DELAY,1031)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_0 <= '0;
            redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_1 <= '0;
            redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_2 <= '0;
            redist142_i_acl_1138_eia608_from_utf8546_q_5_q <= '0;
        end
        else
        begin
            redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_0 <= $unsigned(i_acl_1138_eia608_from_utf8546_q);
            redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_1 <= redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_0;
            redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_2 <= redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_1;
            redist142_i_acl_1138_eia608_from_utf8546_q_5_q <= redist142_i_acl_1138_eia608_from_utf8546_q_5_delay_2;
        end
    end

    // i_acl_1139_eia608_from_utf8547(MUX,124)@109
    assign i_acl_1139_eia608_from_utf8547_s = redist142_i_acl_1138_eia608_from_utf8546_q_5_q;
    always @(i_acl_1139_eia608_from_utf8547_s or i_acl_1129_eia608_from_utf8544_q or c_i32_4405730_q)
    begin
        unique case (i_acl_1139_eia608_from_utf8547_s)
            1'b0 : i_acl_1139_eia608_from_utf8547_q = i_acl_1129_eia608_from_utf8544_q;
            1'b1 : i_acl_1139_eia608_from_utf8547_q = c_i32_4405730_q;
            default : i_acl_1139_eia608_from_utf8547_q = 32'b0;
        endcase
    end

    // i_acl_1143_eia608_from_utf8548(LOGICAL,125)@104
    assign i_acl_1143_eia608_from_utf8548_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & i_acl_823_eia608_from_utf8425_q;

    // i_acl_1148_eia608_from_utf8549(LOGICAL,126)@104 + 1
    assign i_acl_1148_eia608_from_utf8549_qi = i_acl_1143_eia608_from_utf8548_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1148_eia608_from_utf8549_delay ( .xin(i_acl_1148_eia608_from_utf8549_qi), .xout(i_acl_1148_eia608_from_utf8549_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist141_i_acl_1148_eia608_from_utf8549_q_5(DELAY,1030)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_0 <= '0;
            redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_1 <= '0;
            redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_2 <= '0;
            redist141_i_acl_1148_eia608_from_utf8549_q_5_q <= '0;
        end
        else
        begin
            redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_0 <= $unsigned(i_acl_1148_eia608_from_utf8549_q);
            redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_1 <= redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_0;
            redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_2 <= redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_1;
            redist141_i_acl_1148_eia608_from_utf8549_q_5_q <= redist141_i_acl_1148_eia608_from_utf8549_q_5_delay_2;
        end
    end

    // i_acl_1149_eia608_from_utf8550(MUX,127)@109
    assign i_acl_1149_eia608_from_utf8550_s = redist141_i_acl_1148_eia608_from_utf8549_q_5_q;
    always @(i_acl_1149_eia608_from_utf8550_s or i_acl_1139_eia608_from_utf8547_q or c_i32_4406731_q)
    begin
        unique case (i_acl_1149_eia608_from_utf8550_s)
            1'b0 : i_acl_1149_eia608_from_utf8550_q = i_acl_1139_eia608_from_utf8547_q;
            1'b1 : i_acl_1149_eia608_from_utf8550_q = c_i32_4406731_q;
            default : i_acl_1149_eia608_from_utf8550_q = 32'b0;
        endcase
    end

    // i_acl_1153_eia608_from_utf8551(LOGICAL,128)@104
    assign i_acl_1153_eia608_from_utf8551_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & i_acl_834_eia608_from_utf8430_q;

    // i_acl_1158_eia608_from_utf8552(LOGICAL,129)@104 + 1
    assign i_acl_1158_eia608_from_utf8552_qi = i_acl_1153_eia608_from_utf8551_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1158_eia608_from_utf8552_delay ( .xin(i_acl_1158_eia608_from_utf8552_qi), .xout(i_acl_1158_eia608_from_utf8552_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist140_i_acl_1158_eia608_from_utf8552_q_5(DELAY,1029)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_0 <= '0;
            redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_1 <= '0;
            redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_2 <= '0;
            redist140_i_acl_1158_eia608_from_utf8552_q_5_q <= '0;
        end
        else
        begin
            redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_0 <= $unsigned(i_acl_1158_eia608_from_utf8552_q);
            redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_1 <= redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_0;
            redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_2 <= redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_1;
            redist140_i_acl_1158_eia608_from_utf8552_q_5_q <= redist140_i_acl_1158_eia608_from_utf8552_q_5_delay_2;
        end
    end

    // i_acl_1159_eia608_from_utf8553(MUX,130)@109
    assign i_acl_1159_eia608_from_utf8553_s = redist140_i_acl_1158_eia608_from_utf8552_q_5_q;
    always @(i_acl_1159_eia608_from_utf8553_s or i_acl_1149_eia608_from_utf8550_q or c_i32_4918732_q)
    begin
        unique case (i_acl_1159_eia608_from_utf8553_s)
            1'b0 : i_acl_1159_eia608_from_utf8553_q = i_acl_1149_eia608_from_utf8550_q;
            1'b1 : i_acl_1159_eia608_from_utf8553_q = c_i32_4918732_q;
            default : i_acl_1159_eia608_from_utf8553_q = 32'b0;
        endcase
    end

    // redist93_i_pivot8_eia608_from_utf845_c_6(DELAY,982)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist93_i_pivot8_eia608_from_utf845_c_6 ( .xin(i_pivot8_eia608_from_utf845_c), .xout(redist93_i_pivot8_eia608_from_utf845_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1160_eia608_from_utf8554(LOGICAL,131)@104
    assign i_acl_1160_eia608_from_utf8554_q = redist111_i_pivot10_eia608_from_utf825_c_7_q ^ redist93_i_pivot8_eia608_from_utf845_c_6_q;

    // i_acl_1163_eia608_from_utf8555(LOGICAL,132)@104
    assign i_acl_1163_eia608_from_utf8555_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & i_acl_1160_eia608_from_utf8554_q;

    // i_acl_1168_eia608_from_utf8556(LOGICAL,133)@104 + 1
    assign i_acl_1168_eia608_from_utf8556_qi = i_acl_1163_eia608_from_utf8555_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1168_eia608_from_utf8556_delay ( .xin(i_acl_1168_eia608_from_utf8556_qi), .xout(i_acl_1168_eia608_from_utf8556_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist139_i_acl_1168_eia608_from_utf8556_q_5(DELAY,1028)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_0 <= '0;
            redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_1 <= '0;
            redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_2 <= '0;
            redist139_i_acl_1168_eia608_from_utf8556_q_5_q <= '0;
        end
        else
        begin
            redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_0 <= $unsigned(i_acl_1168_eia608_from_utf8556_q);
            redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_1 <= redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_0;
            redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_2 <= redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_1;
            redist139_i_acl_1168_eia608_from_utf8556_q_5_q <= redist139_i_acl_1168_eia608_from_utf8556_q_5_delay_2;
        end
    end

    // i_acl_1169_eia608_from_utf8557(MUX,134)@109
    assign i_acl_1169_eia608_from_utf8557_s = redist139_i_acl_1168_eia608_from_utf8556_q_5_q;
    always @(i_acl_1169_eia608_from_utf8557_s or i_acl_1159_eia608_from_utf8553_q or c_i32_4917733_q)
    begin
        unique case (i_acl_1169_eia608_from_utf8557_s)
            1'b0 : i_acl_1169_eia608_from_utf8557_q = i_acl_1159_eia608_from_utf8553_q;
            1'b1 : i_acl_1169_eia608_from_utf8557_q = c_i32_4917733_q;
            default : i_acl_1169_eia608_from_utf8557_q = 32'b0;
        endcase
    end

    // redist43_i_switchleaf6_eia608_from_utf881_q_6(DELAY,932)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist43_i_switchleaf6_eia608_from_utf881_q_6 ( .xin(i_switchleaf6_eia608_from_utf881_q), .xout(redist43_i_switchleaf6_eia608_from_utf881_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1174_eia608_from_utf8558(LOGICAL,135)@104
    assign i_acl_1174_eia608_from_utf8558_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist43_i_switchleaf6_eia608_from_utf881_q_6_q;

    // i_acl_1179_eia608_from_utf8559(LOGICAL,136)@104 + 1
    assign i_acl_1179_eia608_from_utf8559_qi = i_acl_1174_eia608_from_utf8558_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1179_eia608_from_utf8559_delay ( .xin(i_acl_1179_eia608_from_utf8559_qi), .xout(i_acl_1179_eia608_from_utf8559_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist138_i_acl_1179_eia608_from_utf8559_q_5(DELAY,1027)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_0 <= '0;
            redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_1 <= '0;
            redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_2 <= '0;
            redist138_i_acl_1179_eia608_from_utf8559_q_5_q <= '0;
        end
        else
        begin
            redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_0 <= $unsigned(i_acl_1179_eia608_from_utf8559_q);
            redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_1 <= redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_0;
            redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_2 <= redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_1;
            redist138_i_acl_1179_eia608_from_utf8559_q_5_q <= redist138_i_acl_1179_eia608_from_utf8559_q_5_delay_2;
        end
    end

    // i_acl_1180_eia608_from_utf8560(MUX,137)@109
    assign i_acl_1180_eia608_from_utf8560_s = redist138_i_acl_1179_eia608_from_utf8559_q_5_q;
    always @(i_acl_1180_eia608_from_utf8560_s or i_acl_1169_eia608_from_utf8557_q or c_i32_4919734_q)
    begin
        unique case (i_acl_1180_eia608_from_utf8560_s)
            1'b0 : i_acl_1180_eia608_from_utf8560_q = i_acl_1169_eia608_from_utf8557_q;
            1'b1 : i_acl_1180_eia608_from_utf8560_q = c_i32_4919734_q;
            default : i_acl_1180_eia608_from_utf8560_q = 32'b0;
        endcase
    end

    // redist57_i_switchleaf14_eia608_from_utf847_q_6(DELAY,946)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist57_i_switchleaf14_eia608_from_utf847_q_6 ( .xin(i_switchleaf14_eia608_from_utf847_q), .xout(redist57_i_switchleaf14_eia608_from_utf847_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1184_eia608_from_utf8561(LOGICAL,138)@104
    assign i_acl_1184_eia608_from_utf8561_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist57_i_switchleaf14_eia608_from_utf847_q_6_q;

    // i_acl_1189_eia608_from_utf8562(LOGICAL,139)@104 + 1
    assign i_acl_1189_eia608_from_utf8562_qi = i_acl_1184_eia608_from_utf8561_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1189_eia608_from_utf8562_delay ( .xin(i_acl_1189_eia608_from_utf8562_qi), .xout(i_acl_1189_eia608_from_utf8562_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist137_i_acl_1189_eia608_from_utf8562_q_5(DELAY,1026)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_0 <= '0;
            redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_1 <= '0;
            redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_2 <= '0;
            redist137_i_acl_1189_eia608_from_utf8562_q_5_q <= '0;
        end
        else
        begin
            redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_0 <= $unsigned(i_acl_1189_eia608_from_utf8562_q);
            redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_1 <= redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_0;
            redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_2 <= redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_1;
            redist137_i_acl_1189_eia608_from_utf8562_q_5_q <= redist137_i_acl_1189_eia608_from_utf8562_q_5_delay_2;
        end
    end

    // i_acl_1190_eia608_from_utf8563(MUX,140)@109 + 1
    assign i_acl_1190_eia608_from_utf8563_s = redist137_i_acl_1189_eia608_from_utf8562_q_5_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1190_eia608_from_utf8563_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_1190_eia608_from_utf8563_s)
                1'b0 : i_acl_1190_eia608_from_utf8563_q <= i_acl_1180_eia608_from_utf8560_q;
                1'b1 : i_acl_1190_eia608_from_utf8563_q <= c_i32_4651735_q;
                default : i_acl_1190_eia608_from_utf8563_q <= 32'b0;
            endcase
        end
    end

    // redist56_i_switchleaf16_eia608_from_utf884_q_6(DELAY,945)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist56_i_switchleaf16_eia608_from_utf884_q_6 ( .xin(i_switchleaf16_eia608_from_utf884_q), .xout(redist56_i_switchleaf16_eia608_from_utf884_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1195_eia608_from_utf8564(LOGICAL,141)@104
    assign i_acl_1195_eia608_from_utf8564_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist56_i_switchleaf16_eia608_from_utf884_q_6_q;

    // i_acl_1200_eia608_from_utf8565(LOGICAL,142)@104 + 1
    assign i_acl_1200_eia608_from_utf8565_qi = i_acl_1195_eia608_from_utf8564_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1200_eia608_from_utf8565_delay ( .xin(i_acl_1200_eia608_from_utf8565_qi), .xout(i_acl_1200_eia608_from_utf8565_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist136_i_acl_1200_eia608_from_utf8565_q_6(DELAY,1025)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_0 <= '0;
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_1 <= '0;
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_2 <= '0;
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_3 <= '0;
            redist136_i_acl_1200_eia608_from_utf8565_q_6_q <= '0;
        end
        else
        begin
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_0 <= $unsigned(i_acl_1200_eia608_from_utf8565_q);
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_1 <= redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_0;
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_2 <= redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_1;
            redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_3 <= redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_2;
            redist136_i_acl_1200_eia608_from_utf8565_q_6_q <= redist136_i_acl_1200_eia608_from_utf8565_q_6_delay_3;
        end
    end

    // i_acl_1201_eia608_from_utf8566(MUX,143)@110
    assign i_acl_1201_eia608_from_utf8566_s = redist136_i_acl_1200_eia608_from_utf8565_q_6_q;
    always @(i_acl_1201_eia608_from_utf8566_s or i_acl_1190_eia608_from_utf8563_q or c_i32_4670736_q)
    begin
        unique case (i_acl_1201_eia608_from_utf8566_s)
            1'b0 : i_acl_1201_eia608_from_utf8566_q = i_acl_1190_eia608_from_utf8563_q;
            1'b1 : i_acl_1201_eia608_from_utf8566_q = c_i32_4670736_q;
            default : i_acl_1201_eia608_from_utf8566_q = 32'b0;
        endcase
    end

    // redist53_i_switchleaf18_eia608_from_utf886_q_6(DELAY,942)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist53_i_switchleaf18_eia608_from_utf886_q_6 ( .xin(i_switchleaf18_eia608_from_utf886_q), .xout(redist53_i_switchleaf18_eia608_from_utf886_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1206_eia608_from_utf8567(LOGICAL,144)@104
    assign i_acl_1206_eia608_from_utf8567_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist53_i_switchleaf18_eia608_from_utf886_q_6_q;

    // i_acl_1211_eia608_from_utf8568(LOGICAL,145)@104 + 1
    assign i_acl_1211_eia608_from_utf8568_qi = i_acl_1206_eia608_from_utf8567_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1211_eia608_from_utf8568_delay ( .xin(i_acl_1211_eia608_from_utf8568_qi), .xout(i_acl_1211_eia608_from_utf8568_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist135_i_acl_1211_eia608_from_utf8568_q_6(DELAY,1024)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_0 <= '0;
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_1 <= '0;
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_2 <= '0;
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_3 <= '0;
            redist135_i_acl_1211_eia608_from_utf8568_q_6_q <= '0;
        end
        else
        begin
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_0 <= $unsigned(i_acl_1211_eia608_from_utf8568_q);
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_1 <= redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_0;
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_2 <= redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_1;
            redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_3 <= redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_2;
            redist135_i_acl_1211_eia608_from_utf8568_q_6_q <= redist135_i_acl_1211_eia608_from_utf8568_q_6_delay_3;
        end
    end

    // i_acl_1212_eia608_from_utf8569(MUX,146)@110
    assign i_acl_1212_eia608_from_utf8569_s = redist135_i_acl_1211_eia608_from_utf8568_q_6_q;
    always @(i_acl_1212_eia608_from_utf8569_s or i_acl_1201_eia608_from_utf8566_q or c_i32_4400737_q)
    begin
        unique case (i_acl_1212_eia608_from_utf8569_s)
            1'b0 : i_acl_1212_eia608_from_utf8569_q = i_acl_1201_eia608_from_utf8566_q;
            1'b1 : i_acl_1212_eia608_from_utf8569_q = c_i32_4400737_q;
            default : i_acl_1212_eia608_from_utf8569_q = 32'b0;
        endcase
    end

    // redist48_i_switchleaf24_eia608_from_utf888_q_6(DELAY,937)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_i_switchleaf24_eia608_from_utf888_q_6 ( .xin(i_switchleaf24_eia608_from_utf888_q), .xout(redist48_i_switchleaf24_eia608_from_utf888_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1217_eia608_from_utf8570(LOGICAL,147)@104
    assign i_acl_1217_eia608_from_utf8570_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist48_i_switchleaf24_eia608_from_utf888_q_6_q;

    // i_acl_1222_eia608_from_utf8571(LOGICAL,148)@104 + 1
    assign i_acl_1222_eia608_from_utf8571_qi = i_acl_1217_eia608_from_utf8570_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1222_eia608_from_utf8571_delay ( .xin(i_acl_1222_eia608_from_utf8571_qi), .xout(i_acl_1222_eia608_from_utf8571_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist134_i_acl_1222_eia608_from_utf8571_q_6(DELAY,1023)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_0 <= '0;
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_1 <= '0;
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_2 <= '0;
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_3 <= '0;
            redist134_i_acl_1222_eia608_from_utf8571_q_6_q <= '0;
        end
        else
        begin
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_0 <= $unsigned(i_acl_1222_eia608_from_utf8571_q);
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_1 <= redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_0;
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_2 <= redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_1;
            redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_3 <= redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_2;
            redist134_i_acl_1222_eia608_from_utf8571_q_6_q <= redist134_i_acl_1222_eia608_from_utf8571_q_6_delay_3;
        end
    end

    // i_acl_1223_eia608_from_utf8572(MUX,149)@110
    assign i_acl_1223_eia608_from_utf8572_s = redist134_i_acl_1222_eia608_from_utf8571_q_6_q;
    always @(i_acl_1223_eia608_from_utf8572_s or i_acl_1212_eia608_from_utf8569_q or c_i32_4401738_q)
    begin
        unique case (i_acl_1223_eia608_from_utf8572_s)
            1'b0 : i_acl_1223_eia608_from_utf8572_q = i_acl_1212_eia608_from_utf8569_q;
            1'b1 : i_acl_1223_eia608_from_utf8572_q = c_i32_4401738_q;
            default : i_acl_1223_eia608_from_utf8572_q = 32'b0;
        endcase
    end

    // redist47_i_switchleaf26_eia608_from_utf890_q_6(DELAY,936)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist47_i_switchleaf26_eia608_from_utf890_q_6 ( .xin(i_switchleaf26_eia608_from_utf890_q), .xout(redist47_i_switchleaf26_eia608_from_utf890_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1228_eia608_from_utf8573(LOGICAL,150)@104
    assign i_acl_1228_eia608_from_utf8573_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist47_i_switchleaf26_eia608_from_utf890_q_6_q;

    // i_acl_1233_eia608_from_utf8574(LOGICAL,151)@104 + 1
    assign i_acl_1233_eia608_from_utf8574_qi = i_acl_1228_eia608_from_utf8573_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1233_eia608_from_utf8574_delay ( .xin(i_acl_1233_eia608_from_utf8574_qi), .xout(i_acl_1233_eia608_from_utf8574_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist133_i_acl_1233_eia608_from_utf8574_q_6(DELAY,1022)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_0 <= '0;
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_1 <= '0;
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_2 <= '0;
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_3 <= '0;
            redist133_i_acl_1233_eia608_from_utf8574_q_6_q <= '0;
        end
        else
        begin
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_0 <= $unsigned(i_acl_1233_eia608_from_utf8574_q);
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_1 <= redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_0;
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_2 <= redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_1;
            redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_3 <= redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_2;
            redist133_i_acl_1233_eia608_from_utf8574_q_6_q <= redist133_i_acl_1233_eia608_from_utf8574_q_6_delay_3;
        end
    end

    // i_acl_1234_eia608_from_utf8575(MUX,152)@110
    assign i_acl_1234_eia608_from_utf8575_s = redist133_i_acl_1233_eia608_from_utf8574_q_6_q;
    always @(i_acl_1234_eia608_from_utf8575_s or i_acl_1223_eia608_from_utf8572_q or c_i32_4671739_q)
    begin
        unique case (i_acl_1234_eia608_from_utf8575_s)
            1'b0 : i_acl_1234_eia608_from_utf8575_q = i_acl_1223_eia608_from_utf8572_q;
            1'b1 : i_acl_1234_eia608_from_utf8575_q = c_i32_4671739_q;
            default : i_acl_1234_eia608_from_utf8575_q = 32'b0;
        endcase
    end

    // redist46_i_switchleaf30_eia608_from_utf892_q_6(DELAY,935)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist46_i_switchleaf30_eia608_from_utf892_q_6 ( .xin(i_switchleaf30_eia608_from_utf892_q), .xout(redist46_i_switchleaf30_eia608_from_utf892_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1239_eia608_from_utf8576(LOGICAL,153)@104
    assign i_acl_1239_eia608_from_utf8576_q = redist119_i_cmp75_eia608_from_utf89_q_7_q & redist46_i_switchleaf30_eia608_from_utf892_q_6_q;

    // i_acl_1244_eia608_from_utf8577(LOGICAL,154)@104 + 1
    assign i_acl_1244_eia608_from_utf8577_qi = i_acl_1239_eia608_from_utf8576_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1244_eia608_from_utf8577_delay ( .xin(i_acl_1244_eia608_from_utf8577_qi), .xout(i_acl_1244_eia608_from_utf8577_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist132_i_acl_1244_eia608_from_utf8577_q_6(DELAY,1021)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_0 <= '0;
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_1 <= '0;
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_2 <= '0;
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_3 <= '0;
            redist132_i_acl_1244_eia608_from_utf8577_q_6_q <= '0;
        end
        else
        begin
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_0 <= $unsigned(i_acl_1244_eia608_from_utf8577_q);
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_1 <= redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_0;
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_2 <= redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_1;
            redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_3 <= redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_2;
            redist132_i_acl_1244_eia608_from_utf8577_q_6_q <= redist132_i_acl_1244_eia608_from_utf8577_q_6_delay_3;
        end
    end

    // i_acl_1245_eia608_from_utf8578(MUX,155)@110
    assign i_acl_1245_eia608_from_utf8578_s = redist132_i_acl_1244_eia608_from_utf8577_q_6_q;
    always @(i_acl_1245_eia608_from_utf8578_s or i_acl_1234_eia608_from_utf8575_q or c_i32_4402740_q)
    begin
        unique case (i_acl_1245_eia608_from_utf8578_s)
            1'b0 : i_acl_1245_eia608_from_utf8578_q = i_acl_1234_eia608_from_utf8575_q;
            1'b1 : i_acl_1245_eia608_from_utf8578_q = c_i32_4402740_q;
            default : i_acl_1245_eia608_from_utf8578_q = 32'b0;
        endcase
    end

    // i_acl_1250_eia608_from_utf8579(LOGICAL,156)@98 + 1
    assign i_acl_1250_eia608_from_utf8579_qi = i_cmp75_eia608_from_utf89_q & i_switchleaf32_eia608_from_utf894_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1250_eia608_from_utf8579_delay ( .xin(i_acl_1250_eia608_from_utf8579_qi), .xout(i_acl_1250_eia608_from_utf8579_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist131_i_acl_1250_eia608_from_utf8579_q_6(DELAY,1020)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_0 <= '0;
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_1 <= '0;
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_2 <= '0;
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_3 <= '0;
            redist131_i_acl_1250_eia608_from_utf8579_q_6_q <= '0;
        end
        else
        begin
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_0 <= $unsigned(i_acl_1250_eia608_from_utf8579_q);
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_1 <= redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_0;
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_2 <= redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_1;
            redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_3 <= redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_2;
            redist131_i_acl_1250_eia608_from_utf8579_q_6_q <= redist131_i_acl_1250_eia608_from_utf8579_q_6_delay_3;
        end
    end

    // i_acl_1255_eia608_from_utf8580(LOGICAL,157)@104 + 1
    assign i_acl_1255_eia608_from_utf8580_qi = redist131_i_acl_1250_eia608_from_utf8579_q_6_q & redist17_sync_together743_aunroll_x_in_c1_eni29_13_tpl_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1255_eia608_from_utf8580_delay ( .xin(i_acl_1255_eia608_from_utf8580_qi), .xout(i_acl_1255_eia608_from_utf8580_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist130_i_acl_1255_eia608_from_utf8580_q_6(DELAY,1019)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_0 <= '0;
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_1 <= '0;
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_2 <= '0;
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_3 <= '0;
            redist130_i_acl_1255_eia608_from_utf8580_q_6_q <= '0;
        end
        else
        begin
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_0 <= $unsigned(i_acl_1255_eia608_from_utf8580_q);
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_1 <= redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_0;
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_2 <= redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_1;
            redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_3 <= redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_2;
            redist130_i_acl_1255_eia608_from_utf8580_q_6_q <= redist130_i_acl_1255_eia608_from_utf8580_q_6_delay_3;
        end
    end

    // i_acl_1256_eia608_from_utf8581(MUX,158)@110
    assign i_acl_1256_eia608_from_utf8581_s = redist130_i_acl_1255_eia608_from_utf8580_q_6_q;
    always @(i_acl_1256_eia608_from_utf8581_s or i_acl_1245_eia608_from_utf8578_q or c_i32_4403741_q)
    begin
        unique case (i_acl_1256_eia608_from_utf8581_s)
            1'b0 : i_acl_1256_eia608_from_utf8581_q = i_acl_1245_eia608_from_utf8578_q;
            1'b1 : i_acl_1256_eia608_from_utf8581_q = c_i32_4403741_q;
            default : i_acl_1256_eia608_from_utf8581_q = 32'b0;
        endcase
    end

    // redist36_sync_together743_aunroll_x_in_c1_eni29_27_tpl_13(DELAY,925)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_sync_together743_aunroll_x_in_c1_eni29_27_tpl_13 ( .xin(in_c1_eni29_27_tpl), .xout(redist36_sync_together743_aunroll_x_in_c1_eni29_27_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1265_eia608_from_utf8582(MUX,159)@110 + 1
    assign i_acl_1265_eia608_from_utf8582_s = redist36_sync_together743_aunroll_x_in_c1_eni29_27_tpl_13_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1265_eia608_from_utf8582_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_1265_eia608_from_utf8582_s)
                1'b0 : i_acl_1265_eia608_from_utf8582_q <= i_acl_1256_eia608_from_utf8581_q;
                1'b1 : i_acl_1265_eia608_from_utf8582_q <= i_and_eia608_from_utf87_vt_join_q;
                default : i_acl_1265_eia608_from_utf8582_q <= 32'b0;
            endcase
        end
    end

    // redist37_sync_together743_aunroll_x_in_c1_eni29_28_tpl_14(DELAY,926)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist37_sync_together743_aunroll_x_in_c1_eni29_28_tpl_14 ( .xin(in_c1_eni29_28_tpl), .xout(redist37_sync_together743_aunroll_x_in_c1_eni29_28_tpl_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1266_eia608_from_utf8583(MUX,160)@111
    assign i_acl_1266_eia608_from_utf8583_s = redist37_sync_together743_aunroll_x_in_c1_eni29_28_tpl_14_q;
    always @(i_acl_1266_eia608_from_utf8583_s or i_acl_1265_eia608_from_utf8582_q or c_i32_0590_q)
    begin
        unique case (i_acl_1266_eia608_from_utf8583_s)
            1'b0 : i_acl_1266_eia608_from_utf8583_q = i_acl_1265_eia608_from_utf8582_q;
            1'b1 : i_acl_1266_eia608_from_utf8583_q = c_i32_0590_q;
            default : i_acl_1266_eia608_from_utf8583_q = 32'b0;
        endcase
    end

    // redist38_sync_together743_aunroll_x_in_c1_eni29_29_tpl_14(DELAY,927)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_sync_together743_aunroll_x_in_c1_eni29_29_tpl_14 ( .xin(in_c1_eni29_29_tpl), .xout(redist38_sync_together743_aunroll_x_in_c1_eni29_29_tpl_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1275_eia608_from_utf8584(MUX,165)@111
    assign i_acl_1275_eia608_from_utf8584_s = redist38_sync_together743_aunroll_x_in_c1_eni29_29_tpl_14_q;
    always @(i_acl_1275_eia608_from_utf8584_s or i_acl_1266_eia608_from_utf8583_q or i_spec_select129_eia608_from_utf880_vt_join_q)
    begin
        unique case (i_acl_1275_eia608_from_utf8584_s)
            1'b0 : i_acl_1275_eia608_from_utf8584_q = i_acl_1266_eia608_from_utf8583_q;
            1'b1 : i_acl_1275_eia608_from_utf8584_q = i_spec_select129_eia608_from_utf880_vt_join_q;
            default : i_acl_1275_eia608_from_utf8584_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,865)@111
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_acl_1275_eia608_from_utf8584_q;
    assign out_o_valid = redist39_sync_together743_aunroll_x_in_i_valid_14_q;
    assign out_unnamed_eia608_from_utf81 = GND_q;

endmodule
