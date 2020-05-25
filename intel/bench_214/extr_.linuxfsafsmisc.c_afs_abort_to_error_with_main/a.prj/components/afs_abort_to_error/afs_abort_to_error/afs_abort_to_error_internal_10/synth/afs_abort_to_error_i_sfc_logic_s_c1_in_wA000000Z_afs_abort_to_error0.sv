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

// SystemVerilog created from afs_abort_to_error_i_sfc_logic_s_c1_in_wA000000Z_afs_abort_to_error0
// SystemVerilog created on Sun May 24 22:37:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module afs_abort_to_error_i_sfc_logic_s_c1_in_wA000000Z_afs_abort_to_error0 (
    input wire [63:0] in_pn1_afs_abort_to_error_avm_readdata,
    input wire [0:0] in_pn1_afs_abort_to_error_avm_writeack,
    input wire [0:0] in_pn1_afs_abort_to_error_avm_waitrequest,
    input wire [0:0] in_pn1_afs_abort_to_error_avm_readdatavalid,
    output wire [63:0] out_pn1_afs_abort_to_error_avm_address,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_enable,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_read,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_write,
    output wire [63:0] out_pn1_afs_abort_to_error_avm_writedata,
    output wire [7:0] out_pn1_afs_abort_to_error_avm_byteenable,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_afs_abort_to_error1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
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
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0444_q;
    wire [31:0] c_i32_154366_q;
    wire [31:0] c_i32_158403_q;
    wire [31:0] c_i32_168406_q;
    wire [31:0] c_i32_2440_q;
    wire [31:0] c_i32_4434_q;
    wire [31:0] c_i32_49733412432_q;
    wire [31:0] c_i32_49733414375_q;
    wire [31:0] c_i32_49733416417_q;
    wire [31:0] c_i32_49733481389_q;
    wire [31:0] c_i32_49733484418_q;
    wire [31:0] c_i32_49733496433_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [0:0] i_acl_199_afs_abort_to_error183_s;
    reg [63:0] i_acl_199_afs_abort_to_error183_q;
    wire [0:0] i_acl_206_afs_abort_to_error184_s;
    reg [63:0] i_acl_206_afs_abort_to_error184_q;
    wire [0:0] i_acl_208_afs_abort_to_error185_q;
    wire [0:0] i_acl_212_afs_abort_to_error186_s;
    reg [63:0] i_acl_212_afs_abort_to_error186_q;
    wire [0:0] i_acl_215_afs_abort_to_error187_q;
    wire [0:0] i_acl_218_afs_abort_to_error188_s;
    reg [63:0] i_acl_218_afs_abort_to_error188_q;
    wire [0:0] i_acl_222_afs_abort_to_error189_qi;
    reg [0:0] i_acl_222_afs_abort_to_error189_q;
    wire [0:0] i_acl_225_afs_abort_to_error190_s;
    reg [63:0] i_acl_225_afs_abort_to_error190_q;
    wire [0:0] i_acl_227_afs_abort_to_error191_qi;
    reg [0:0] i_acl_227_afs_abort_to_error191_q;
    wire [0:0] i_acl_231_afs_abort_to_error192_s;
    reg [63:0] i_acl_231_afs_abort_to_error192_q;
    wire [0:0] i_acl_232_afs_abort_to_error193_q;
    wire [0:0] i_acl_237_afs_abort_to_error194_s;
    reg [63:0] i_acl_237_afs_abort_to_error194_q;
    wire [0:0] i_acl_238_afs_abort_to_error195_qi;
    reg [0:0] i_acl_238_afs_abort_to_error195_q;
    wire [0:0] i_acl_244_afs_abort_to_error196_s;
    reg [63:0] i_acl_244_afs_abort_to_error196_q;
    wire [0:0] i_acl_245_afs_abort_to_error197_qi;
    reg [0:0] i_acl_245_afs_abort_to_error197_q;
    wire [0:0] i_acl_250_afs_abort_to_error198_s;
    reg [63:0] i_acl_250_afs_abort_to_error198_q;
    wire [0:0] i_acl_251_afs_abort_to_error199_q;
    wire [0:0] i_acl_257_afs_abort_to_error200_s;
    reg [63:0] i_acl_257_afs_abort_to_error200_q;
    wire [0:0] i_acl_258_afs_abort_to_error201_qi;
    reg [0:0] i_acl_258_afs_abort_to_error201_q;
    wire [0:0] i_acl_263_afs_abort_to_error202_s;
    reg [63:0] i_acl_263_afs_abort_to_error202_q;
    wire [0:0] i_acl_266_afs_abort_to_error203_q;
    wire [0:0] i_acl_270_afs_abort_to_error204_s;
    reg [63:0] i_acl_270_afs_abort_to_error204_q;
    wire [0:0] i_acl_271_afs_abort_to_error205_qi;
    reg [0:0] i_acl_271_afs_abort_to_error205_q;
    wire [0:0] i_acl_276_afs_abort_to_error206_s;
    reg [63:0] i_acl_276_afs_abort_to_error206_q;
    wire [0:0] i_acl_277_afs_abort_to_error207_q;
    wire [0:0] i_acl_289_afs_abort_to_error209_s;
    reg [63:0] i_acl_289_afs_abort_to_error209_q;
    wire [0:0] i_acl_292_afs_abort_to_error210_q;
    wire [0:0] i_acl_301_afs_abort_to_error211_q;
    wire [0:0] i_acl_308_afs_abort_to_error213_q;
    wire [0:0] i_acl_309_afs_abort_to_error215_s;
    reg [63:0] i_acl_309_afs_abort_to_error215_q;
    wire [0:0] i_acl_312_afs_abort_to_error216_q;
    wire [0:0] i_acl_316_afs_abort_to_error217_q;
    wire [0:0] i_acl_340_afs_abort_to_error226_s;
    reg [63:0] i_acl_340_afs_abort_to_error226_q;
    wire [0:0] i_acl_341_afs_abort_to_error227_qi;
    reg [0:0] i_acl_341_afs_abort_to_error227_q;
    wire [0:0] i_acl_346_afs_abort_to_error228_s;
    reg [63:0] i_acl_346_afs_abort_to_error228_q;
    wire [0:0] i_acl_379_afs_abort_to_error231_q;
    wire [0:0] i_acl_397_afs_abort_to_error236_q;
    wire [0:0] i_acl_402_afs_abort_to_error240_s;
    reg [63:0] i_acl_402_afs_abort_to_error240_q;
    wire [0:0] i_acl_403_afs_abort_to_error241_qi;
    reg [0:0] i_acl_403_afs_abort_to_error241_q;
    wire [0:0] i_acl_409_afs_abort_to_error242_s;
    reg [63:0] i_acl_409_afs_abort_to_error242_q;
    wire [0:0] i_acl_416_afs_abort_to_error245_s;
    reg [63:0] i_acl_416_afs_abort_to_error245_q;
    wire [0:0] i_acl_428_afs_abort_to_error249_s;
    reg [63:0] i_acl_428_afs_abort_to_error249_q;
    wire [0:0] i_acl_429_afs_abort_to_error250_qi;
    reg [0:0] i_acl_429_afs_abort_to_error250_q;
    wire [0:0] i_acl_435_afs_abort_to_error251_s;
    reg [63:0] i_acl_435_afs_abort_to_error251_q;
    wire [0:0] i_acl_443_afs_abort_to_error252_s;
    reg [63:0] i_acl_443_afs_abort_to_error252_q;
    wire [0:0] i_acl_450_afs_abort_to_error253_s;
    reg [63:0] i_acl_450_afs_abort_to_error253_q;
    wire [0:0] i_acl_451_afs_abort_to_error254_qi;
    reg [0:0] i_acl_451_afs_abort_to_error254_q;
    wire [0:0] i_acl_456_afs_abort_to_error255_s;
    reg [63:0] i_acl_456_afs_abort_to_error255_q;
    wire [0:0] i_acl_457_afs_abort_to_error256_qi;
    reg [0:0] i_acl_457_afs_abort_to_error256_q;
    wire [0:0] i_acl_462_afs_abort_to_error257_s;
    reg [63:0] i_acl_462_afs_abort_to_error257_q;
    wire [0:0] i_acl_467_afs_abort_to_error258_qi;
    reg [0:0] i_acl_467_afs_abort_to_error258_q;
    wire [0:0] i_acl_469_afs_abort_to_error259_s;
    reg [63:0] i_acl_469_afs_abort_to_error259_q;
    wire [0:0] i_acl_473_afs_abort_to_error260_qi;
    reg [0:0] i_acl_473_afs_abort_to_error260_q;
    wire [0:0] i_acl_475_afs_abort_to_error261_s;
    reg [63:0] i_acl_475_afs_abort_to_error261_q;
    wire [0:0] i_acl_476_afs_abort_to_error262_qi;
    reg [0:0] i_acl_476_afs_abort_to_error262_q;
    wire [0:0] i_acl_481_afs_abort_to_error263_s;
    reg [63:0] i_acl_481_afs_abort_to_error263_q;
    wire [0:0] i_acl_482_afs_abort_to_error264_qi;
    reg [0:0] i_acl_482_afs_abort_to_error264_q;
    wire [0:0] i_acl_487_afs_abort_to_error265_s;
    reg [63:0] i_acl_487_afs_abort_to_error265_q;
    wire [0:0] i_acl_488_afs_abort_to_error266_qi;
    reg [0:0] i_acl_488_afs_abort_to_error266_q;
    wire [0:0] i_acl_494_afs_abort_to_error267_s;
    reg [63:0] i_acl_494_afs_abort_to_error267_q;
    wire [0:0] i_acl_497_afs_abort_to_error268_qi;
    reg [0:0] i_acl_497_afs_abort_to_error268_q;
    wire [0:0] i_acl_501_afs_abort_to_error269_s;
    reg [63:0] i_acl_501_afs_abort_to_error269_q;
    wire [0:0] i_acl_508_afs_abort_to_error270_s;
    reg [63:0] i_acl_508_afs_abort_to_error270_q;
    wire [0:0] i_acl_509_afs_abort_to_error271_qi;
    reg [0:0] i_acl_509_afs_abort_to_error271_q;
    wire [0:0] i_acl_514_afs_abort_to_error272_s;
    reg [63:0] i_acl_514_afs_abort_to_error272_q;
    wire [0:0] i_acl_521_afs_abort_to_error273_s;
    reg [63:0] i_acl_521_afs_abort_to_error273_q;
    wire [0:0] i_acl_522_afs_abort_to_error274_qi;
    reg [0:0] i_acl_522_afs_abort_to_error274_q;
    wire [0:0] i_acl_528_afs_abort_to_error275_s;
    reg [63:0] i_acl_528_afs_abort_to_error275_q;
    wire [0:0] i_acl_536_afs_abort_to_error276_s;
    reg [63:0] i_acl_536_afs_abort_to_error276_q;
    wire [0:0] i_acl_539_afs_abort_to_error277_qi;
    reg [0:0] i_acl_539_afs_abort_to_error277_q;
    wire [0:0] i_acl_542_afs_abort_to_error278_s;
    reg [63:0] i_acl_542_afs_abort_to_error278_q;
    wire [0:0] i_acl_543_afs_abort_to_error279_qi;
    reg [0:0] i_acl_543_afs_abort_to_error279_q;
    wire [0:0] i_acl_548_afs_abort_to_error280_s;
    reg [63:0] i_acl_548_afs_abort_to_error280_q;
    wire [0:0] i_acl_549_afs_abort_to_error281_qi;
    reg [0:0] i_acl_549_afs_abort_to_error281_q;
    wire [0:0] i_acl_554_afs_abort_to_error282_s;
    reg [63:0] i_acl_554_afs_abort_to_error282_q;
    wire [0:0] i_acl_555_afs_abort_to_error283_qi;
    reg [0:0] i_acl_555_afs_abort_to_error283_q;
    wire [0:0] i_acl_561_afs_abort_to_error284_s;
    reg [63:0] i_acl_561_afs_abort_to_error284_q;
    wire [0:0] i_acl_607_afs_abort_to_error287_q;
    wire [0:0] i_acl_613_afs_abort_to_error288_q;
    wire [0:0] i_acl_619_afs_abort_to_error290_s;
    reg [63:0] i_acl_619_afs_abort_to_error290_q;
    wire [0:0] i_acl_620_afs_abort_to_error291_q;
    wire [0:0] i_acl_626_afs_abort_to_error292_q;
    wire [0:0] i_acl_631_afs_abort_to_error294_s;
    reg [63:0] i_acl_631_afs_abort_to_error294_q;
    wire [0:0] i_acl_636_afs_abort_to_error295_qi;
    reg [0:0] i_acl_636_afs_abort_to_error295_q;
    wire [0:0] i_acl_638_afs_abort_to_error296_s;
    reg [63:0] i_acl_638_afs_abort_to_error296_q;
    wire [0:0] i_acl_642_afs_abort_to_error297_q;
    wire [0:0] i_acl_645_afs_abort_to_error298_q;
    wire [0:0] i_acl_651_afs_abort_to_error299_q;
    wire [0:0] i_acl_658_afs_abort_to_error300_q;
    wire [0:0] i_acl_662_afs_abort_to_error304_s;
    reg [63:0] i_acl_662_afs_abort_to_error304_q;
    wire [0:0] i_acl_665_afs_abort_to_error305_qi;
    reg [0:0] i_acl_665_afs_abort_to_error305_q;
    wire [0:0] i_acl_669_afs_abort_to_error306_s;
    reg [63:0] i_acl_669_afs_abort_to_error306_q;
    wire [0:0] i_acl_670_afs_abort_to_error307_q;
    wire [0:0] i_acl_677_afs_abort_to_error308_q;
    wire [0:0] i_acl_682_afs_abort_to_error310_q;
    wire [0:0] i_acl_688_afs_abort_to_error312_s;
    reg [63:0] i_acl_688_afs_abort_to_error312_q;
    wire [0:0] i_acl_689_afs_abort_to_error313_qi;
    reg [0:0] i_acl_689_afs_abort_to_error313_q;
    wire [0:0] i_acl_695_afs_abort_to_error314_s;
    reg [63:0] i_acl_695_afs_abort_to_error314_q;
    wire [0:0] i_acl_696_afs_abort_to_error315_s;
    reg [0:0] i_acl_696_afs_abort_to_error315_q;
    wire [0:0] i_acl_697_afs_abort_to_error316_q;
    wire [0:0] i_acl_698_afs_abort_to_error317_s;
    reg [0:0] i_acl_698_afs_abort_to_error317_q;
    wire [0:0] i_acl_699_afs_abort_to_error318_qi;
    reg [0:0] i_acl_699_afs_abort_to_error318_q;
    wire [0:0] i_acl_703_afs_abort_to_error321_q;
    wire [0:0] i_acl_704_afs_abort_to_error322_s;
    reg [0:0] i_acl_704_afs_abort_to_error322_q;
    wire [0:0] i_acl_705_afs_abort_to_error323_q;
    wire [0:0] i_acl_707_afs_abort_to_error324_s;
    reg [0:0] i_acl_707_afs_abort_to_error324_q;
    wire [0:0] i_acl_708_afs_abort_to_error326_q;
    wire [0:0] i_acl_709_afs_abort_to_error327_s;
    reg [0:0] i_acl_709_afs_abort_to_error327_q;
    wire [0:0] i_acl_713_afs_abort_to_error330_q;
    wire [0:0] i_acl_714_afs_abort_to_error331_s;
    reg [0:0] i_acl_714_afs_abort_to_error331_q;
    wire [0:0] i_acl_715_afs_abort_to_error333_qi;
    reg [0:0] i_acl_715_afs_abort_to_error333_q;
    wire [0:0] i_acl_716_afs_abort_to_error334_q;
    wire [0:0] i_acl_717_afs_abort_to_error335_q;
    wire [0:0] i_acl_718_afs_abort_to_error336_q;
    wire [0:0] i_acl_719_afs_abort_to_error337_s;
    reg [0:0] i_acl_719_afs_abort_to_error337_q;
    wire [0:0] i_acl_720_afs_abort_to_error338_s;
    reg [0:0] i_acl_720_afs_abort_to_error338_q;
    wire [0:0] i_acl_721_afs_abort_to_error339_s;
    reg [0:0] i_acl_721_afs_abort_to_error339_q;
    wire [0:0] i_acl_722_afs_abort_to_error340_q;
    wire [0:0] i_acl_723_afs_abort_to_error341_q;
    wire [0:0] i_acl_724_afs_abort_to_error342_s;
    reg [0:0] i_acl_724_afs_abort_to_error342_q;
    wire [0:0] i_acl_725_afs_abort_to_error343_s;
    reg [0:0] i_acl_725_afs_abort_to_error343_q;
    wire [0:0] i_acl_726_afs_abort_to_error345_q;
    wire [0:0] i_acl_730_v_afs_abort_to_error348_s;
    reg [0:0] i_acl_730_v_afs_abort_to_error348_q;
    wire [0:0] i_acl_731_v_afs_abort_to_error349_s;
    reg [0:0] i_acl_731_v_afs_abort_to_error349_q;
    wire [0:0] i_acl_732_v_afs_abort_to_error350_s;
    reg [0:0] i_acl_732_v_afs_abort_to_error350_q;
    wire [0:0] i_acl_733_afs_abort_to_error352_q;
    wire [0:0] i_acl_733_v_afs_abort_to_error351_s;
    reg [0:0] i_acl_733_v_afs_abort_to_error351_q;
    wire [0:0] i_acl_734_afs_abort_to_error353_s;
    reg [0:0] i_acl_734_afs_abort_to_error353_q;
    wire [0:0] i_acl_735_afs_abort_to_error354_s;
    reg [0:0] i_acl_735_afs_abort_to_error354_q;
    wire [0:0] i_acl_736_afs_abort_to_error355_s;
    reg [0:0] i_acl_736_afs_abort_to_error355_q;
    wire [0:0] i_acl_737_afs_abort_to_error356_s;
    reg [0:0] i_acl_737_afs_abort_to_error356_q;
    wire [0:0] i_acl_738_afs_abort_to_error357_s;
    reg [63:0] i_acl_738_afs_abort_to_error357_q;
    reg [63:0] i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230_q;
    reg [63:0] i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q;
    wire [31:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_address;
    wire [0:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_enable;
    wire [0:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_read;
    wire [0:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_write;
    wire [63:0] i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_writedata;
    wire [0:0] i_not_pivot117_afs_abort_to_error332_q;
    wire [0:0] i_not_pivot157_afs_abort_to_error344_q;
    wire [0:0] i_not_pivot83_afs_abort_to_error325_q;
    wire [33:0] i_pivot107_afs_abort_to_error93_a;
    wire [33:0] i_pivot107_afs_abort_to_error93_b;
    logic [33:0] i_pivot107_afs_abort_to_error93_o;
    wire [0:0] i_pivot107_afs_abort_to_error93_c;
    wire [33:0] i_pivot113_afs_abort_to_error144_a;
    wire [33:0] i_pivot113_afs_abort_to_error144_b;
    logic [33:0] i_pivot113_afs_abort_to_error144_o;
    wire [0:0] i_pivot113_afs_abort_to_error144_c;
    wire [33:0] i_pivot115_afs_abort_to_error95_a;
    wire [33:0] i_pivot115_afs_abort_to_error95_b;
    logic [33:0] i_pivot115_afs_abort_to_error95_o;
    wire [0:0] i_pivot115_afs_abort_to_error95_c;
    wire [33:0] i_pivot117_afs_abort_to_error47_a;
    wire [33:0] i_pivot117_afs_abort_to_error47_b;
    logic [33:0] i_pivot117_afs_abort_to_error47_o;
    wire [0:0] i_pivot117_afs_abort_to_error47_c;
    wire [33:0] i_pivot11_afs_abort_to_error63_a;
    wire [33:0] i_pivot11_afs_abort_to_error63_b;
    logic [33:0] i_pivot11_afs_abort_to_error63_o;
    wire [0:0] i_pivot11_afs_abort_to_error63_c;
    wire [33:0] i_pivot121_afs_abort_to_error97_a;
    wire [33:0] i_pivot121_afs_abort_to_error97_b;
    logic [33:0] i_pivot121_afs_abort_to_error97_o;
    wire [0:0] i_pivot121_afs_abort_to_error97_c;
    wire [33:0] i_pivot125_afs_abort_to_error148_a;
    wire [33:0] i_pivot125_afs_abort_to_error148_b;
    logic [33:0] i_pivot125_afs_abort_to_error148_o;
    wire [0:0] i_pivot125_afs_abort_to_error148_c;
    wire [33:0] i_pivot127_afs_abort_to_error99_a;
    wire [33:0] i_pivot127_afs_abort_to_error99_b;
    logic [33:0] i_pivot127_afs_abort_to_error99_o;
    wire [0:0] i_pivot127_afs_abort_to_error99_c;
    wire [33:0] i_pivot129_afs_abort_to_error49_a;
    wire [33:0] i_pivot129_afs_abort_to_error49_b;
    logic [33:0] i_pivot129_afs_abort_to_error49_o;
    wire [0:0] i_pivot129_afs_abort_to_error49_c;
    wire [33:0] i_pivot131_afs_abort_to_error25_a;
    wire [33:0] i_pivot131_afs_abort_to_error25_b;
    logic [33:0] i_pivot131_afs_abort_to_error25_o;
    wire [0:0] i_pivot131_afs_abort_to_error25_c;
    wire [33:0] i_pivot133_afs_abort_to_error13_a;
    wire [33:0] i_pivot133_afs_abort_to_error13_b;
    logic [33:0] i_pivot133_afs_abort_to_error13_o;
    wire [0:0] i_pivot133_afs_abort_to_error13_c;
    wire [33:0] i_pivot135_afs_abort_to_error101_a;
    wire [33:0] i_pivot135_afs_abort_to_error101_b;
    logic [33:0] i_pivot135_afs_abort_to_error101_o;
    wire [0:0] i_pivot135_afs_abort_to_error101_c;
    wire [33:0] i_pivot137_afs_abort_to_error150_a;
    wire [33:0] i_pivot137_afs_abort_to_error150_b;
    logic [33:0] i_pivot137_afs_abort_to_error150_o;
    wire [0:0] i_pivot137_afs_abort_to_error150_c;
    wire [33:0] i_pivot139_afs_abort_to_error103_a;
    wire [33:0] i_pivot139_afs_abort_to_error103_b;
    logic [33:0] i_pivot139_afs_abort_to_error103_o;
    wire [0:0] i_pivot139_afs_abort_to_error103_c;
    wire [33:0] i_pivot13_afs_abort_to_error124_a;
    wire [33:0] i_pivot13_afs_abort_to_error124_b;
    logic [33:0] i_pivot13_afs_abort_to_error124_o;
    wire [0:0] i_pivot13_afs_abort_to_error124_c;
    wire [33:0] i_pivot141_afs_abort_to_error51_a;
    wire [33:0] i_pivot141_afs_abort_to_error51_b;
    logic [33:0] i_pivot141_afs_abort_to_error51_o;
    wire [0:0] i_pivot141_afs_abort_to_error51_c;
    wire [33:0] i_pivot145_afs_abort_to_error105_a;
    wire [33:0] i_pivot145_afs_abort_to_error105_b;
    logic [33:0] i_pivot145_afs_abort_to_error105_o;
    wire [0:0] i_pivot145_afs_abort_to_error105_c;
    wire [33:0] i_pivot151_afs_abort_to_error157_a;
    wire [33:0] i_pivot151_afs_abort_to_error157_b;
    logic [33:0] i_pivot151_afs_abort_to_error157_o;
    wire [0:0] i_pivot151_afs_abort_to_error157_c;
    wire [33:0] i_pivot153_afs_abort_to_error107_a;
    wire [33:0] i_pivot153_afs_abort_to_error107_b;
    logic [33:0] i_pivot153_afs_abort_to_error107_o;
    wire [0:0] i_pivot153_afs_abort_to_error107_c;
    wire [33:0] i_pivot155_afs_abort_to_error53_a;
    wire [33:0] i_pivot155_afs_abort_to_error53_b;
    logic [33:0] i_pivot155_afs_abort_to_error53_o;
    wire [0:0] i_pivot155_afs_abort_to_error53_c;
    wire [33:0] i_pivot157_afs_abort_to_error27_a;
    wire [33:0] i_pivot157_afs_abort_to_error27_b;
    logic [33:0] i_pivot157_afs_abort_to_error27_o;
    wire [0:0] i_pivot157_afs_abort_to_error27_c;
    wire [33:0] i_pivot159_afs_abort_to_error109_a;
    wire [33:0] i_pivot159_afs_abort_to_error109_b;
    logic [33:0] i_pivot159_afs_abort_to_error109_o;
    wire [0:0] i_pivot159_afs_abort_to_error109_c;
    wire [33:0] i_pivot15_afs_abort_to_error65_a;
    wire [33:0] i_pivot15_afs_abort_to_error65_b;
    logic [33:0] i_pivot15_afs_abort_to_error65_o;
    wire [0:0] i_pivot15_afs_abort_to_error65_c;
    wire [33:0] i_pivot163_afs_abort_to_error159_a;
    wire [33:0] i_pivot163_afs_abort_to_error159_b;
    logic [33:0] i_pivot163_afs_abort_to_error159_o;
    wire [0:0] i_pivot163_afs_abort_to_error159_c;
    wire [33:0] i_pivot165_afs_abort_to_error111_a;
    wire [33:0] i_pivot165_afs_abort_to_error111_b;
    logic [33:0] i_pivot165_afs_abort_to_error111_o;
    wire [0:0] i_pivot165_afs_abort_to_error111_c;
    wire [33:0] i_pivot167_afs_abort_to_error55_a;
    wire [33:0] i_pivot167_afs_abort_to_error55_b;
    logic [33:0] i_pivot167_afs_abort_to_error55_o;
    wire [0:0] i_pivot167_afs_abort_to_error55_c;
    wire [33:0] i_pivot173_afs_abort_to_error113_a;
    wire [33:0] i_pivot173_afs_abort_to_error113_b;
    logic [33:0] i_pivot173_afs_abort_to_error113_o;
    wire [0:0] i_pivot173_afs_abort_to_error113_c;
    wire [33:0] i_pivot17_afs_abort_to_error33_a;
    wire [33:0] i_pivot17_afs_abort_to_error33_b;
    logic [33:0] i_pivot17_afs_abort_to_error33_o;
    wire [0:0] i_pivot17_afs_abort_to_error33_c;
    wire [33:0] i_pivot181_afs_abort_to_error167_a;
    wire [33:0] i_pivot181_afs_abort_to_error167_b;
    logic [33:0] i_pivot181_afs_abort_to_error167_o;
    wire [0:0] i_pivot181_afs_abort_to_error167_c;
    wire [33:0] i_pivot183_afs_abort_to_error115_a;
    wire [33:0] i_pivot183_afs_abort_to_error115_b;
    logic [33:0] i_pivot183_afs_abort_to_error115_o;
    wire [0:0] i_pivot183_afs_abort_to_error115_c;
    wire [33:0] i_pivot185_afs_abort_to_error57_a;
    wire [33:0] i_pivot185_afs_abort_to_error57_b;
    logic [33:0] i_pivot185_afs_abort_to_error57_o;
    wire [0:0] i_pivot185_afs_abort_to_error57_c;
    wire [33:0] i_pivot187_afs_abort_to_error29_a;
    wire [33:0] i_pivot187_afs_abort_to_error29_b;
    logic [33:0] i_pivot187_afs_abort_to_error29_o;
    wire [0:0] i_pivot187_afs_abort_to_error29_c;
    wire [33:0] i_pivot189_afs_abort_to_error15_a;
    wire [33:0] i_pivot189_afs_abort_to_error15_b;
    logic [33:0] i_pivot189_afs_abort_to_error15_o;
    wire [0:0] i_pivot189_afs_abort_to_error15_c;
    wire [33:0] i_pivot191_afs_abort_to_error7_a;
    wire [33:0] i_pivot191_afs_abort_to_error7_b;
    logic [33:0] i_pivot191_afs_abort_to_error7_o;
    wire [0:0] i_pivot191_afs_abort_to_error7_c;
    wire [33:0] i_pivot193_afs_abort_to_error3_a;
    wire [33:0] i_pivot193_afs_abort_to_error3_b;
    logic [33:0] i_pivot193_afs_abort_to_error3_o;
    wire [0:0] i_pivot193_afs_abort_to_error3_c;
    wire [33:0] i_pivot19_afs_abort_to_error17_a;
    wire [33:0] i_pivot19_afs_abort_to_error17_b;
    logic [33:0] i_pivot19_afs_abort_to_error17_o;
    wire [0:0] i_pivot19_afs_abort_to_error17_c;
    wire [33:0] i_pivot21_afs_abort_to_error67_a;
    wire [33:0] i_pivot21_afs_abort_to_error67_b;
    logic [33:0] i_pivot21_afs_abort_to_error67_o;
    wire [0:0] i_pivot21_afs_abort_to_error67_c;
    wire [33:0] i_pivot23_afs_abort_to_error126_a;
    wire [33:0] i_pivot23_afs_abort_to_error126_b;
    logic [33:0] i_pivot23_afs_abort_to_error126_o;
    wire [0:0] i_pivot23_afs_abort_to_error126_c;
    wire [33:0] i_pivot25_afs_abort_to_error69_a;
    wire [33:0] i_pivot25_afs_abort_to_error69_b;
    logic [33:0] i_pivot25_afs_abort_to_error69_o;
    wire [0:0] i_pivot25_afs_abort_to_error69_c;
    wire [33:0] i_pivot27_afs_abort_to_error35_a;
    wire [33:0] i_pivot27_afs_abort_to_error35_b;
    logic [33:0] i_pivot27_afs_abort_to_error35_o;
    wire [0:0] i_pivot27_afs_abort_to_error35_c;
    wire [33:0] i_pivot29_afs_abort_to_error71_a;
    wire [33:0] i_pivot29_afs_abort_to_error71_b;
    logic [33:0] i_pivot29_afs_abort_to_error71_o;
    wire [0:0] i_pivot29_afs_abort_to_error71_c;
    wire [33:0] i_pivot31_afs_abort_to_error128_a;
    wire [33:0] i_pivot31_afs_abort_to_error128_b;
    logic [33:0] i_pivot31_afs_abort_to_error128_o;
    wire [0:0] i_pivot31_afs_abort_to_error128_c;
    wire [33:0] i_pivot33_afs_abort_to_error73_a;
    wire [33:0] i_pivot33_afs_abort_to_error73_b;
    logic [33:0] i_pivot33_afs_abort_to_error73_o;
    wire [0:0] i_pivot33_afs_abort_to_error73_c;
    wire [33:0] i_pivot35_afs_abort_to_error37_a;
    wire [33:0] i_pivot35_afs_abort_to_error37_b;
    logic [33:0] i_pivot35_afs_abort_to_error37_o;
    wire [0:0] i_pivot35_afs_abort_to_error37_c;
    wire [33:0] i_pivot37_afs_abort_to_error19_a;
    wire [33:0] i_pivot37_afs_abort_to_error19_b;
    logic [33:0] i_pivot37_afs_abort_to_error19_o;
    wire [0:0] i_pivot37_afs_abort_to_error19_c;
    wire [33:0] i_pivot39_afs_abort_to_error9_a;
    wire [33:0] i_pivot39_afs_abort_to_error9_b;
    logic [33:0] i_pivot39_afs_abort_to_error9_o;
    wire [0:0] i_pivot39_afs_abort_to_error9_c;
    wire [33:0] i_pivot41_afs_abort_to_error75_a;
    wire [33:0] i_pivot41_afs_abort_to_error75_b;
    logic [33:0] i_pivot41_afs_abort_to_error75_o;
    wire [0:0] i_pivot41_afs_abort_to_error75_c;
    wire [33:0] i_pivot43_afs_abort_to_error130_a;
    wire [33:0] i_pivot43_afs_abort_to_error130_b;
    logic [33:0] i_pivot43_afs_abort_to_error130_o;
    wire [0:0] i_pivot43_afs_abort_to_error130_c;
    wire [33:0] i_pivot45_afs_abort_to_error77_a;
    wire [33:0] i_pivot45_afs_abort_to_error77_b;
    logic [33:0] i_pivot45_afs_abort_to_error77_o;
    wire [0:0] i_pivot45_afs_abort_to_error77_c;
    wire [33:0] i_pivot47_afs_abort_to_error39_a;
    wire [33:0] i_pivot47_afs_abort_to_error39_b;
    logic [33:0] i_pivot47_afs_abort_to_error39_o;
    wire [0:0] i_pivot47_afs_abort_to_error39_c;
    wire [33:0] i_pivot49_afs_abort_to_error79_a;
    wire [33:0] i_pivot49_afs_abort_to_error79_b;
    logic [33:0] i_pivot49_afs_abort_to_error79_o;
    wire [0:0] i_pivot49_afs_abort_to_error79_c;
    wire [33:0] i_pivot51_afs_abort_to_error132_a;
    wire [33:0] i_pivot51_afs_abort_to_error132_b;
    logic [33:0] i_pivot51_afs_abort_to_error132_o;
    wire [0:0] i_pivot51_afs_abort_to_error132_c;
    wire [33:0] i_pivot53_afs_abort_to_error81_a;
    wire [33:0] i_pivot53_afs_abort_to_error81_b;
    logic [33:0] i_pivot53_afs_abort_to_error81_o;
    wire [0:0] i_pivot53_afs_abort_to_error81_c;
    wire [33:0] i_pivot55_afs_abort_to_error41_a;
    wire [33:0] i_pivot55_afs_abort_to_error41_b;
    logic [33:0] i_pivot55_afs_abort_to_error41_o;
    wire [0:0] i_pivot55_afs_abort_to_error41_c;
    wire [33:0] i_pivot57_afs_abort_to_error21_a;
    wire [33:0] i_pivot57_afs_abort_to_error21_b;
    logic [33:0] i_pivot57_afs_abort_to_error21_o;
    wire [0:0] i_pivot57_afs_abort_to_error21_c;
    wire [33:0] i_pivot61_afs_abort_to_error83_a;
    wire [33:0] i_pivot61_afs_abort_to_error83_b;
    logic [33:0] i_pivot61_afs_abort_to_error83_o;
    wire [0:0] i_pivot61_afs_abort_to_error83_c;
    wire [33:0] i_pivot65_afs_abort_to_error136_a;
    wire [33:0] i_pivot65_afs_abort_to_error136_b;
    logic [33:0] i_pivot65_afs_abort_to_error136_o;
    wire [0:0] i_pivot65_afs_abort_to_error136_c;
    wire [33:0] i_pivot67_afs_abort_to_error85_a;
    wire [33:0] i_pivot67_afs_abort_to_error85_b;
    logic [33:0] i_pivot67_afs_abort_to_error85_o;
    wire [0:0] i_pivot67_afs_abort_to_error85_c;
    wire [33:0] i_pivot69_afs_abort_to_error43_a;
    wire [33:0] i_pivot69_afs_abort_to_error43_b;
    logic [33:0] i_pivot69_afs_abort_to_error43_o;
    wire [0:0] i_pivot69_afs_abort_to_error43_c;
    wire [33:0] i_pivot73_afs_abort_to_error87_a;
    wire [33:0] i_pivot73_afs_abort_to_error87_b;
    logic [33:0] i_pivot73_afs_abort_to_error87_o;
    wire [0:0] i_pivot73_afs_abort_to_error87_c;
    wire [33:0] i_pivot75_afs_abort_to_error140_a;
    wire [33:0] i_pivot75_afs_abort_to_error140_b;
    logic [33:0] i_pivot75_afs_abort_to_error140_o;
    wire [0:0] i_pivot75_afs_abort_to_error140_c;
    wire [33:0] i_pivot77_afs_abort_to_error89_a;
    wire [33:0] i_pivot77_afs_abort_to_error89_b;
    logic [33:0] i_pivot77_afs_abort_to_error89_o;
    wire [0:0] i_pivot77_afs_abort_to_error89_c;
    wire [33:0] i_pivot79_afs_abort_to_error45_a;
    wire [33:0] i_pivot79_afs_abort_to_error45_b;
    logic [33:0] i_pivot79_afs_abort_to_error45_o;
    wire [0:0] i_pivot79_afs_abort_to_error45_c;
    wire [33:0] i_pivot7_afs_abort_to_error61_a;
    wire [33:0] i_pivot7_afs_abort_to_error61_b;
    logic [33:0] i_pivot7_afs_abort_to_error61_o;
    wire [0:0] i_pivot7_afs_abort_to_error61_c;
    wire [33:0] i_pivot81_afs_abort_to_error23_a;
    wire [33:0] i_pivot81_afs_abort_to_error23_b;
    logic [33:0] i_pivot81_afs_abort_to_error23_o;
    wire [0:0] i_pivot81_afs_abort_to_error23_c;
    wire [33:0] i_pivot83_afs_abort_to_error11_a;
    wire [33:0] i_pivot83_afs_abort_to_error11_b;
    logic [33:0] i_pivot83_afs_abort_to_error11_o;
    wire [0:0] i_pivot83_afs_abort_to_error11_c;
    wire [33:0] i_pivot85_afs_abort_to_error5_a;
    wire [33:0] i_pivot85_afs_abort_to_error5_b;
    logic [33:0] i_pivot85_afs_abort_to_error5_o;
    wire [0:0] i_pivot85_afs_abort_to_error5_c;
    wire [33:0] i_pivot89_afs_abort_to_error91_a;
    wire [33:0] i_pivot89_afs_abort_to_error91_b;
    logic [33:0] i_pivot89_afs_abort_to_error91_o;
    wire [0:0] i_pivot89_afs_abort_to_error91_c;
    wire [33:0] i_pivot9_afs_abort_to_error31_a;
    wire [33:0] i_pivot9_afs_abort_to_error31_b;
    logic [33:0] i_pivot9_afs_abort_to_error31_o;
    wire [0:0] i_pivot9_afs_abort_to_error31_c;
    wire [33:0] i_pivot_afs_abort_to_error59_a;
    wire [33:0] i_pivot_afs_abort_to_error59_b;
    logic [33:0] i_pivot_afs_abort_to_error59_o;
    wire [0:0] i_pivot_afs_abort_to_error59_c;
    wire [0:0] i_reduction_afs_abort_to_error_0_afs_abort_to_error223_q;
    wire [0:0] i_reduction_afs_abort_to_error_1_afs_abort_to_error224_q;
    wire [0:0] i_reduction_afs_abort_to_error_2_afs_abort_to_error225_q;
    wire [0:0] i_reduction_afs_abort_to_error_3_afs_abort_to_error237_q;
    wire [0:0] i_reduction_afs_abort_to_error_4_afs_abort_to_error238_q;
    wire [0:0] i_reduction_afs_abort_to_error_5_afs_abort_to_error239_qi;
    reg [0:0] i_reduction_afs_abort_to_error_5_afs_abort_to_error239_q;
    wire [0:0] i_reduction_afs_abort_to_error_6_afs_abort_to_error301_q;
    wire [0:0] i_reduction_afs_abort_to_error_7_afs_abort_to_error302_q;
    wire [0:0] i_reduction_afs_abort_to_error_8_afs_abort_to_error303_qi;
    reg [0:0] i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q;
    wire [32:0] i_retval_0_afs_abort_to_error359_a;
    wire [32:0] i_retval_0_afs_abort_to_error359_b;
    logic [32:0] i_retval_0_afs_abort_to_error359_o;
    wire [32:0] i_retval_0_afs_abort_to_error359_q;
    wire [0:0] i_switchleaf109_afs_abort_to_error142_q;
    wire [0:0] i_switchleaf111_afs_abort_to_error171_q;
    wire [0:0] i_switchleaf111_not_afs_abort_to_error173_q;
    wire [0:0] i_switchleaf119_afs_abort_to_error146_q;
    wire [0:0] i_switchleaf123_afs_abort_to_error174_q;
    wire [0:0] i_switchleaf143_afs_abort_to_error152_q;
    wire [0:0] i_switchleaf147_afs_abort_to_error154_q;
    wire [0:0] i_switchleaf147_not_afs_abort_to_error156_q;
    wire [0:0] i_switchleaf149_afs_abort_to_error176_q;
    wire [0:0] i_switchleaf149_not_afs_abort_to_error178_q;
    wire [0:0] i_switchleaf169_afs_abort_to_error161_q;
    wire [0:0] i_switchleaf171_afs_abort_to_error163_q;
    wire [0:0] i_switchleaf175_afs_abort_to_error165_q;
    wire [0:0] i_switchleaf177_afs_abort_to_error179_q;
    wire [0:0] i_switchleaf179_afs_abort_to_error181_q;
    wire [0:0] i_switchleaf3_afs_abort_to_error119_q;
    wire [0:0] i_switchleaf3_not_afs_abort_to_error121_q;
    wire [0:0] i_switchleaf59_afs_abort_to_error134_q;
    wire [0:0] i_switchleaf5_afs_abort_to_error122_q;
    wire [0:0] i_switchleaf63_afs_abort_to_error169_q;
    wire [0:0] i_switchleaf71_afs_abort_to_error138_q;
    wire [0:0] i_switchleaf_afs_abort_to_error117_q;
    wire [0:0] i_unnamed_afs_abort_to_error208_q;
    wire [0:0] i_unnamed_afs_abort_to_error212_qi;
    reg [0:0] i_unnamed_afs_abort_to_error212_q;
    wire [0:0] i_unnamed_afs_abort_to_error214_q;
    wire [31:0] i_unnamed_afs_abort_to_error218_q;
    wire [31:0] i_unnamed_afs_abort_to_error218_vt_join_q;
    wire [0:0] i_unnamed_afs_abort_to_error219_q;
    wire [0:0] i_unnamed_afs_abort_to_error221_q;
    wire [0:0] i_unnamed_afs_abort_to_error232_q;
    wire [0:0] i_unnamed_afs_abort_to_error234_q;
    wire [0:0] i_unnamed_afs_abort_to_error243_qi;
    reg [0:0] i_unnamed_afs_abort_to_error243_q;
    wire [31:0] i_unnamed_afs_abort_to_error246_q;
    wire [31:0] i_unnamed_afs_abort_to_error246_vt_join_q;
    wire [0:0] i_unnamed_afs_abort_to_error247_qi;
    reg [0:0] i_unnamed_afs_abort_to_error247_q;
    wire [0:0] i_unnamed_afs_abort_to_error289_qi;
    reg [0:0] i_unnamed_afs_abort_to_error289_q;
    wire [0:0] i_unnamed_afs_abort_to_error293_qi;
    reg [0:0] i_unnamed_afs_abort_to_error293_q;
    wire [0:0] i_unnamed_afs_abort_to_error309_q;
    wire [0:0] i_unnamed_afs_abort_to_error311_qi;
    reg [0:0] i_unnamed_afs_abort_to_error311_q;
    wire [0:0] i_unnamed_afs_abort_to_error319_q;
    wire [0:0] i_unnamed_afs_abort_to_error320_q;
    wire [0:0] i_unnamed_afs_abort_to_error328_qi;
    reg [0:0] i_unnamed_afs_abort_to_error328_q;
    wire [33:0] i_unnamed_afs_abort_to_error346_a;
    wire [33:0] i_unnamed_afs_abort_to_error346_b;
    logic [33:0] i_unnamed_afs_abort_to_error346_o;
    wire [0:0] i_unnamed_afs_abort_to_error346_c;
    wire [31:0] bgTrunc_i_retval_0_afs_abort_to_error359_sel_x_b;
    wire [31:0] c_i32_128391_recast_x_q;
    wire [31:0] c_i32_129369_recast_x_q;
    wire [31:0] c_i32_130392_recast_x_q;
    wire [31:0] c_i32_131377_recast_x_q;
    wire [31:0] c_i32_132393_recast_x_q;
    wire [31:0] c_i32_133421_recast_x_q;
    wire [31:0] c_i32_13419_recast_x_q;
    wire [31:0] c_i32_134365_recast_x_q;
    wire [31:0] c_i32_135394_recast_x_q;
    wire [31:0] c_i32_136378_recast_x_q;
    wire [31:0] c_i32_137395_recast_x_q;
    wire [31:0] c_i32_138422_recast_x_q;
    wire [31:0] c_i32_139370_recast_x_q;
    wire [31:0] c_i32_140396_recast_x_q;
    wire [31:0] c_i32_141379_recast_x_q;
    wire [31:0] c_i32_142397_recast_x_q;
    wire [31:0] c_i32_143423_recast_x_q;
    wire [31:0] c_i32_144363_recast_x_q;
    wire [31:0] c_i32_145398_recast_x_q;
    wire [31:0] c_i32_146380_recast_x_q;
    wire [31:0] c_i32_147399_recast_x_q;
    wire [31:0] c_i32_148424_recast_x_q;
    wire [31:0] c_i32_149371_recast_x_q;
    wire [31:0] c_i32_150400_recast_x_q;
    wire [31:0] c_i32_151381_recast_x_q;
    wire [31:0] c_i32_152401_recast_x_q;
    wire [31:0] c_i32_153425_recast_x_q;
    wire [31:0] c_i32_156402_recast_x_q;
    wire [31:0] c_i32_157382_recast_x_q;
    wire [31:0] c_i32_160426_recast_x_q;
    wire [31:0] c_i32_161372_recast_x_q;
    wire [31:0] c_i32_163404_recast_x_q;
    wire [31:0] c_i32_164383_recast_x_q;
    wire [31:0] c_i32_165405_recast_x_q;
    wire [31:0] c_i32_166427_recast_x_q;
    wire [31:0] c_i32_167362_recast_x_q;
    wire [31:0] c_i32_169443_recast_x_q;
    wire [31:0] c_i32_171439_recast_x_q;
    wire [31:0] c_i32_172438_recast_x_q;
    wire [31:0] c_i32_174435_recast_x_q;
    wire [31:0] c_i32_175441_recast_x_q;
    wire [31:0] c_i32_177436_recast_x_q;
    wire [31:0] c_i32_178367_recast_x_q;
    wire [31:0] c_i32_179407_recast_x_q;
    wire [31:0] c_i32_180384_recast_x_q;
    wire [31:0] c_i32_27390_recast_x_q;
    wire [31:0] c_i32_30376_recast_x_q;
    wire [31:0] c_i32_49733376408_recast_x_q;
    wire [31:0] c_i32_49733377428_recast_x_q;
    wire [31:0] c_i32_49733380373_recast_x_q;
    wire [31:0] c_i32_49733386409_recast_x_q;
    wire [31:0] c_i32_49733387385_recast_x_q;
    wire [31:0] c_i32_49733388410_recast_x_q;
    wire [31:0] c_i32_49733391429_recast_x_q;
    wire [31:0] c_i32_49733392364_recast_x_q;
    wire [31:0] c_i32_49733393411_recast_x_q;
    wire [31:0] c_i32_49733394386_recast_x_q;
    wire [31:0] c_i32_49733395412_recast_x_q;
    wire [31:0] c_i32_49733396430_recast_x_q;
    wire [31:0] c_i32_49733397374_recast_x_q;
    wire [31:0] c_i32_49733402413_recast_x_q;
    wire [31:0] c_i32_49733403387_recast_x_q;
    wire [31:0] c_i32_49733405414_recast_x_q;
    wire [31:0] c_i32_49733406431_recast_x_q;
    wire [31:0] c_i32_49733408368_recast_x_q;
    wire [31:0] c_i32_49733409415_recast_x_q;
    wire [31:0] c_i32_49733410388_recast_x_q;
    wire [31:0] c_i32_49733411416_recast_x_q;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_qi;
    reg [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_qi;
    reg [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_qi;
    reg [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_qi;
    reg [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_7_comparator_x_qi;
    reg [0:0] dupName_7_comparator_x_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [1:0] i_unnamed_afs_abort_to_error218_vt_select_1_merged_bit_select_b;
    wire [28:0] i_unnamed_afs_abort_to_error218_vt_select_1_merged_bit_select_c;
    wire [0:0] i_unnamed_afs_abort_to_error246_vt_select_0_merged_bit_select_b;
    wire [29:0] i_unnamed_afs_abort_to_error246_vt_select_0_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_5_q;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_2;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_3;
    reg [31:0] redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [31:0] redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q;
    reg [63:0] redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_q;
    reg [63:0] redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_delay_0;
    reg [63:0] redist6_sync_together447_aunroll_x_in_c1_eni1_5_tpl_3_q;
    reg [63:0] redist7_sync_together447_aunroll_x_in_c1_eni1_5_tpl_4_q;
    reg [63:0] redist10_sync_together447_aunroll_x_in_c1_eni1_8_tpl_1_q;
    reg [63:0] redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q;
    reg [63:0] redist13_sync_together447_aunroll_x_in_c1_eni1_9_tpl_2_q;
    reg [63:0] redist14_sync_together447_aunroll_x_in_c1_eni1_9_tpl_3_q;
    reg [63:0] redist15_sync_together447_aunroll_x_in_c1_eni1_9_tpl_4_q;
    reg [63:0] redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_q;
    reg [63:0] redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_delay_0;
    reg [63:0] redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_q;
    reg [63:0] redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_delay_0;
    reg [63:0] redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q;
    reg [63:0] redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_q;
    reg [63:0] redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_delay_0;
    reg [63:0] redist21_sync_together447_aunroll_x_in_c1_eni1_12_tpl_1_q;
    reg [63:0] redist29_sync_together447_aunroll_x_in_c1_eni1_19_tpl_1_q;
    reg [63:0] redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_q;
    reg [63:0] redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_delay_0;
    reg [63:0] redist31_sync_together447_aunroll_x_in_c1_eni1_19_tpl_4_q;
    reg [63:0] redist33_sync_together447_aunroll_x_in_c1_eni1_21_tpl_1_q;
    reg [63:0] redist34_sync_together447_aunroll_x_in_c1_eni1_21_tpl_2_q;
    reg [63:0] redist36_sync_together447_aunroll_x_in_c1_eni1_23_tpl_1_q;
    reg [63:0] redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_q;
    reg [63:0] redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_delay_0;
    reg [0:0] redist51_sync_together447_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist52_dupName_7_comparator_x_q_4_q;
    reg [0:0] redist52_dupName_7_comparator_x_q_4_delay_0;
    reg [0:0] redist52_dupName_7_comparator_x_q_4_delay_1;
    reg [0:0] redist53_dupName_6_comparator_x_q_4_q;
    reg [0:0] redist53_dupName_6_comparator_x_q_4_delay_0;
    reg [0:0] redist53_dupName_6_comparator_x_q_4_delay_1;
    reg [0:0] redist54_dupName_5_comparator_x_q_4_q;
    reg [0:0] redist54_dupName_5_comparator_x_q_4_delay_0;
    reg [0:0] redist54_dupName_5_comparator_x_q_4_delay_1;
    reg [0:0] redist55_dupName_4_comparator_x_q_4_q;
    reg [0:0] redist55_dupName_4_comparator_x_q_4_delay_0;
    reg [0:0] redist55_dupName_4_comparator_x_q_4_delay_1;
    reg [0:0] redist56_dupName_3_comparator_x_q_4_q;
    reg [0:0] redist56_dupName_3_comparator_x_q_4_delay_0;
    reg [0:0] redist56_dupName_3_comparator_x_q_4_delay_1;
    reg [0:0] redist57_dupName_2_comparator_x_q_4_q;
    reg [0:0] redist57_dupName_2_comparator_x_q_4_delay_0;
    reg [0:0] redist57_dupName_2_comparator_x_q_4_delay_1;
    reg [0:0] redist58_i_unnamed_afs_abort_to_error311_q_5_q;
    reg [0:0] redist58_i_unnamed_afs_abort_to_error311_q_5_delay_0;
    reg [0:0] redist58_i_unnamed_afs_abort_to_error311_q_5_delay_1;
    reg [0:0] redist58_i_unnamed_afs_abort_to_error311_q_5_delay_2;
    reg [0:0] redist59_i_unnamed_afs_abort_to_error293_q_5_q;
    reg [0:0] redist59_i_unnamed_afs_abort_to_error293_q_5_delay_0;
    reg [0:0] redist59_i_unnamed_afs_abort_to_error293_q_5_delay_1;
    reg [0:0] redist59_i_unnamed_afs_abort_to_error293_q_5_delay_2;
    reg [0:0] redist60_i_unnamed_afs_abort_to_error289_q_5_q;
    reg [0:0] redist60_i_unnamed_afs_abort_to_error289_q_5_delay_0;
    reg [0:0] redist60_i_unnamed_afs_abort_to_error289_q_5_delay_1;
    reg [0:0] redist60_i_unnamed_afs_abort_to_error289_q_5_delay_2;
    reg [0:0] redist61_i_switchleaf149_afs_abort_to_error176_q_4_q;
    reg [0:0] redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_0;
    reg [0:0] redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_1;
    reg [0:0] redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_2;
    reg [0:0] redist62_i_switchleaf147_afs_abort_to_error154_q_3_q;
    reg [0:0] redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_0;
    reg [0:0] redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_1;
    reg [0:0] redist63_i_switchleaf143_afs_abort_to_error152_q_3_q;
    reg [0:0] redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_0;
    reg [0:0] redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_1;
    reg [0:0] redist64_i_switchleaf119_afs_abort_to_error146_q_2_q;
    reg [0:0] redist64_i_switchleaf119_afs_abort_to_error146_q_2_delay_0;
    reg [0:0] redist65_i_switchleaf111_afs_abort_to_error171_q_2_q;
    reg [0:0] redist65_i_switchleaf111_afs_abort_to_error171_q_2_delay_0;
    reg [0:0] redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_q;
    reg [0:0] redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_0;
    reg [0:0] redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_1;
    reg [0:0] redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_2;
    reg [0:0] redist67_i_pivot81_afs_abort_to_error23_c_1_q;
    reg [0:0] redist68_i_pivot23_afs_abort_to_error126_c_1_q;
    reg [0:0] redist69_i_pivot21_afs_abort_to_error67_c_1_q;
    reg [0:0] redist70_i_pivot193_afs_abort_to_error3_c_1_q;
    reg [0:0] redist71_i_pivot193_afs_abort_to_error3_c_2_q;
    reg [0:0] redist72_i_pivot133_afs_abort_to_error13_c_2_q;
    reg [0:0] redist73_i_pivot125_afs_abort_to_error148_c_1_q;
    reg [0:0] redist74_i_acl_737_afs_abort_to_error356_q_5_q;
    reg [0:0] redist74_i_acl_737_afs_abort_to_error356_q_5_delay_0;
    reg [0:0] redist74_i_acl_737_afs_abort_to_error356_q_5_delay_1;
    reg [0:0] redist74_i_acl_737_afs_abort_to_error356_q_5_delay_2;
    reg [0:0] redist75_i_acl_699_afs_abort_to_error318_q_2_q;
    reg [0:0] redist76_i_acl_689_afs_abort_to_error313_q_5_q;
    reg [0:0] redist76_i_acl_689_afs_abort_to_error313_q_5_delay_0;
    reg [0:0] redist76_i_acl_689_afs_abort_to_error313_q_5_delay_1;
    reg [0:0] redist76_i_acl_689_afs_abort_to_error313_q_5_delay_2;
    reg [0:0] redist77_i_acl_665_afs_abort_to_error305_q_5_q;
    reg [0:0] redist77_i_acl_665_afs_abort_to_error305_q_5_delay_0;
    reg [0:0] redist77_i_acl_665_afs_abort_to_error305_q_5_delay_1;
    reg [0:0] redist77_i_acl_665_afs_abort_to_error305_q_5_delay_2;
    reg [0:0] redist78_i_acl_636_afs_abort_to_error295_q_5_q;
    reg [0:0] redist78_i_acl_636_afs_abort_to_error295_q_5_delay_0;
    reg [0:0] redist78_i_acl_636_afs_abort_to_error295_q_5_delay_1;
    reg [0:0] redist78_i_acl_636_afs_abort_to_error295_q_5_delay_2;
    reg [0:0] redist79_i_acl_555_afs_abort_to_error283_q_3_q;
    reg [0:0] redist79_i_acl_555_afs_abort_to_error283_q_3_delay_0;
    reg [0:0] redist80_i_acl_549_afs_abort_to_error281_q_3_q;
    reg [0:0] redist80_i_acl_549_afs_abort_to_error281_q_3_delay_0;
    reg [0:0] redist81_i_acl_543_afs_abort_to_error279_q_3_q;
    reg [0:0] redist81_i_acl_543_afs_abort_to_error279_q_3_delay_0;
    reg [0:0] redist82_i_acl_539_afs_abort_to_error277_q_3_q;
    reg [0:0] redist82_i_acl_539_afs_abort_to_error277_q_3_delay_0;
    reg [0:0] redist83_i_acl_522_afs_abort_to_error274_q_3_q;
    reg [0:0] redist83_i_acl_522_afs_abort_to_error274_q_3_delay_0;
    reg [0:0] redist84_i_acl_509_afs_abort_to_error271_q_3_q;
    reg [0:0] redist84_i_acl_509_afs_abort_to_error271_q_3_delay_0;
    reg [0:0] redist85_i_acl_497_afs_abort_to_error268_q_2_q;
    reg [0:0] redist86_i_acl_488_afs_abort_to_error266_q_2_q;
    reg [0:0] redist87_i_acl_482_afs_abort_to_error264_q_2_q;
    reg [0:0] redist88_i_acl_457_afs_abort_to_error256_q_2_q;
    reg [0:0] redist89_i_acl_451_afs_abort_to_error254_q_2_q;
    wire redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_reset0;
    wire [63:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_ia;
    wire [1:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_aa;
    wire [1:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_ab;
    wire [63:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_iq;
    wire [63:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_q;
    wire [1:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i;
    (* preserve *) reg redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_eq;
    reg [1:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_wraddr_q;
    wire [1:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_last_q;
    wire [0:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmpReg_q;
    wire [0:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_notEnable_q;
    wire [0:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_sticky_ena_q;
    wire [0:0] redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_enaAnd_q;
    wire redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_reset0;
    wire [63:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_ia;
    wire [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_aa;
    wire [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_ab;
    wire [63:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_iq;
    wire [63:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_q;
    wire [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_i;
    reg [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_cmpReg_q;
    wire [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_notEnable_q;
    wire [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_sticky_ena_q;
    wire [0:0] redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_enaAnd_q;
    wire redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_reset0;
    wire [63:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_ia;
    wire [2:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_aa;
    wire [2:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_ab;
    wire [63:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_iq;
    wire [63:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_q;
    wire [2:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i;
    (* preserve *) reg redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_eq;
    reg [2:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_wraddr_q;
    wire [2:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_last_q;
    wire [0:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmpReg_q;
    wire [0:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_notEnable_q;
    wire [0:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_sticky_ena_q;
    wire [0:0] redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_enaAnd_q;
    wire redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_reset0;
    wire [63:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_ia;
    wire [2:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_aa;
    wire [2:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_ab;
    wire [63:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_iq;
    wire [63:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_q;
    wire [2:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i;
    (* preserve *) reg redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_eq;
    reg [2:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_wraddr_q;
    wire [2:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_last_q;
    wire [0:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmpReg_q;
    wire [0:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_notEnable_q;
    wire [0:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_sticky_ena_q;
    wire [0:0] redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_enaAnd_q;
    wire redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_reset0;
    wire [63:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_ia;
    wire [1:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_aa;
    wire [1:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_ab;
    wire [63:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_iq;
    wire [63:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_q;
    wire [1:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_i;
    reg [1:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_wraddr_q;
    wire [2:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_last_q;
    wire [2:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmp_b;
    wire [0:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmpReg_q;
    wire [0:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_notEnable_q;
    wire [0:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_sticky_ena_q;
    wire [0:0] redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_enaAnd_q;
    wire redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_reset0;
    wire [63:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_ia;
    wire [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_aa;
    wire [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_ab;
    wire [63:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_iq;
    wire [63:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_q;
    wire [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_q;
    (* preserve *) reg [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_i;
    reg [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_cmpReg_q;
    wire [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_notEnable_q;
    wire [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_sticky_ena_q;
    wire [0:0] redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_enaAnd_q;
    wire redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_reset0;
    wire [63:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_ia;
    wire [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_aa;
    wire [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_ab;
    wire [63:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_iq;
    wire [63:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_q;
    wire [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_i;
    reg [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_cmpReg_q;
    wire [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_notEnable_q;
    wire [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_sticky_ena_q;
    wire [0:0] redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_enaAnd_q;
    wire redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_reset0;
    wire [63:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_ia;
    wire [1:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_aa;
    wire [1:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_ab;
    wire [63:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_iq;
    wire [63:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_q;
    wire [1:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_i;
    reg [1:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_wraddr_q;
    wire [2:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_last_q;
    wire [2:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmp_b;
    wire [0:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmpReg_q;
    wire [0:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_notEnable_q;
    wire [0:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_sticky_ena_q;
    wire [0:0] redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_enaAnd_q;
    wire redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_reset0;
    wire [63:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_ia;
    wire [2:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_aa;
    wire [2:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_ab;
    wire [63:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_iq;
    wire [63:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_q;
    wire [2:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i;
    (* preserve *) reg redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_eq;
    reg [2:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_wraddr_q;
    wire [3:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_last_q;
    wire [3:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmp_b;
    wire [0:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmpReg_q;
    wire [0:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_notEnable_q;
    wire [0:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_sticky_ena_q;
    wire [0:0] redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_enaAnd_q;
    reg [63:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q;
    wire redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_reset0;
    wire [63:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_ia;
    wire [2:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_aa;
    wire [2:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_ab;
    wire [63:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_iq;
    wire [63:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_q;
    wire [2:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i;
    (* preserve *) reg redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_eq;
    reg [2:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_wraddr_q;
    wire [2:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_last_q;
    wire [0:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmpReg_q;
    wire [0:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_notEnable_q;
    wire [0:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_sticky_ena_q;
    wire [0:0] redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_enaAnd_q;
    wire redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_reset0;
    wire [63:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_ia;
    wire [2:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_aa;
    wire [2:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_ab;
    wire [63:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_iq;
    wire [63:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_q;
    wire [2:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i;
    (* preserve *) reg redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_eq;
    reg [2:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_wraddr_q;
    wire [2:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_last_q;
    wire [0:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmpReg_q;
    wire [0:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_notEnable_q;
    wire [0:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_sticky_ena_q;
    wire [0:0] redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_enaAnd_q;
    wire redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_reset0;
    wire [63:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_ia;
    wire [2:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_aa;
    wire [2:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_ab;
    wire [63:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_iq;
    wire [63:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_q;
    wire [2:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i;
    (* preserve *) reg redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_eq;
    reg [2:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_wraddr_q;
    wire [2:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_last_q;
    wire [0:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmpReg_q;
    wire [0:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_notEnable_q;
    wire [0:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_sticky_ena_q;
    wire [0:0] redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_enaAnd_q;
    wire redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_reset0;
    wire [63:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_ia;
    wire [1:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_aa;
    wire [1:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_ab;
    wire [63:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_iq;
    wire [63:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_q;
    wire [1:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_i;
    reg [1:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_wraddr_q;
    wire [2:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_last_q;
    wire [2:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmp_b;
    wire [0:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmpReg_q;
    wire [0:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_notEnable_q;
    wire [0:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_sticky_ena_q;
    wire [0:0] redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_enaAnd_q;
    wire redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_reset0;
    wire [63:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_ia;
    wire [2:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_aa;
    wire [2:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_ab;
    wire [63:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_iq;
    wire [63:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_q;
    wire [2:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i;
    (* preserve *) reg redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_eq;
    reg [2:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_wraddr_q;
    wire [2:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_last_q;
    wire [0:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmpReg_q;
    wire [0:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_notEnable_q;
    wire [0:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_sticky_ena_q;
    wire [0:0] redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_enaAnd_q;
    wire redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_reset0;
    wire [63:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_ia;
    wire [1:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_aa;
    wire [1:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_ab;
    wire [63:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_iq;
    wire [63:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_q;
    wire [1:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i;
    (* preserve *) reg redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_eq;
    reg [1:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_wraddr_q;
    wire [1:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_last_q;
    wire [0:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmpReg_q;
    wire [0:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_notEnable_q;
    wire [0:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_sticky_ena_q;
    wire [0:0] redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_enaAnd_q;
    wire redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_reset0;
    wire [63:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_ia;
    wire [1:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_aa;
    wire [1:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_ab;
    wire [63:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_iq;
    wire [63:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_q;
    wire [1:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i;
    (* preserve *) reg redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_eq;
    reg [1:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_wraddr_q;
    wire [1:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_last_q;
    wire [0:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmpReg_q;
    wire [0:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_notEnable_q;
    wire [0:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_sticky_ena_q;
    wire [0:0] redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_enaAnd_q;
    wire redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_reset0;
    wire [63:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_ia;
    wire [2:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_aa;
    wire [2:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_ab;
    wire [63:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_iq;
    wire [63:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_q;
    wire [2:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i;
    (* preserve *) reg redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_eq;
    reg [2:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_wraddr_q;
    wire [2:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_last_q;
    wire [0:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmpReg_q;
    wire [0:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_notEnable_q;
    wire [0:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_sticky_ena_q;
    wire [0:0] redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_enaAnd_q;
    wire redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_reset0;
    wire [63:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_ia;
    wire [1:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_aa;
    wire [1:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_ab;
    wire [63:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_iq;
    wire [63:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_q;
    wire [1:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_i;
    reg [1:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_wraddr_q;
    wire [2:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_last_q;
    wire [2:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmp_b;
    wire [0:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmpReg_q;
    wire [0:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_notEnable_q;
    wire [0:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_sticky_ena_q;
    wire [0:0] redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_enaAnd_q;
    wire redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_reset0;
    wire [63:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_ia;
    wire [2:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_aa;
    wire [2:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_ab;
    wire [63:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_iq;
    wire [63:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_q;
    wire [2:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i;
    (* preserve *) reg redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_eq;
    reg [2:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_wraddr_q;
    wire [2:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_last_q;
    wire [0:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmpReg_q;
    wire [0:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_notEnable_q;
    wire [0:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_sticky_ena_q;
    wire [0:0] redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_enaAnd_q;
    wire redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_reset0;
    wire [63:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_ia;
    wire [2:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_aa;
    wire [2:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_ab;
    wire [63:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_iq;
    wire [63:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_q;
    wire [2:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i;
    (* preserve *) reg redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_eq;
    reg [2:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_wraddr_q;
    wire [3:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_last_q;
    wire [3:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmp_b;
    wire [0:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmpReg_q;
    wire [0:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_notEnable_q;
    wire [0:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_sticky_ena_q;
    wire [0:0] redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_enaAnd_q;
    wire redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_reset0;
    wire [63:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_ia;
    wire [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_aa;
    wire [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_ab;
    wire [63:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_iq;
    wire [63:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_q;
    wire [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_i;
    reg [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_cmpReg_q;
    wire [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_notEnable_q;
    wire [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_sticky_ena_q;
    wire [0:0] redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_enaAnd_q;
    reg [63:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0_q;
    wire redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_reset0;
    wire [63:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_ia;
    wire [2:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_aa;
    wire [2:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_ab;
    wire [63:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_iq;
    wire [63:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_q;
    wire [2:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i;
    (* preserve *) reg redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_eq;
    reg [2:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_wraddr_q;
    wire [2:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_last_q;
    wire [0:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmpReg_q;
    wire [0:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_notEnable_q;
    wire [0:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_sticky_ena_q;
    wire [0:0] redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_enaAnd_q;
    wire redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_reset0;
    wire [63:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_ia;
    wire [2:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_aa;
    wire [2:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_ab;
    wire [63:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_iq;
    wire [63:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_q;
    wire [2:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i;
    (* preserve *) reg redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_eq;
    reg [2:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_wraddr_q;
    wire [2:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_last_q;
    wire [0:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmpReg_q;
    wire [0:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_notEnable_q;
    wire [0:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_sticky_ena_q;
    wire [0:0] redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_enaAnd_q;
    reg [63:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_outputreg0_q;
    wire redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_reset0;
    wire [63:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_ia;
    wire [2:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_aa;
    wire [2:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_ab;
    wire [63:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_iq;
    wire [63:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_q;
    wire [2:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_q;
    (* preserve *) reg [2:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i;
    (* preserve *) reg redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_eq;
    reg [2:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_wraddr_q;
    wire [3:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_last_q;
    wire [3:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmp_b;
    wire [0:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmp_q;
    (* dont_merge *) reg [0:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmpReg_q;
    wire [0:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_notEnable_q;
    wire [0:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_nor_q;
    (* dont_merge *) reg [0:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_sticky_ena_q;
    wire [0:0] redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_enaAnd_q;
    wire redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_reset0;
    wire [63:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_ia;
    wire [1:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_aa;
    wire [1:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_ab;
    wire [63:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_iq;
    wire [63:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_q;
    wire [1:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_i;
    reg [1:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_wraddr_q;
    wire [2:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_last_q;
    wire [2:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmp_b;
    wire [0:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmpReg_q;
    wire [0:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_notEnable_q;
    wire [0:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_sticky_ena_q;
    wire [0:0] redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_enaAnd_q;
    wire redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_reset0;
    wire [63:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_ia;
    wire [2:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_aa;
    wire [2:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_ab;
    wire [63:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_iq;
    wire [63:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_q;
    wire [2:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i;
    (* preserve *) reg redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_eq;
    reg [2:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_wraddr_q;
    wire [2:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_last_q;
    wire [0:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmpReg_q;
    wire [0:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_notEnable_q;
    wire [0:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_sticky_ena_q;
    wire [0:0] redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_enaAnd_q;
    wire redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_reset0;
    wire [63:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_ia;
    wire [2:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_aa;
    wire [2:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_ab;
    wire [63:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_iq;
    wire [63:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_q;
    wire [2:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i;
    (* preserve *) reg redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_eq;
    reg [2:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_wraddr_q;
    wire [2:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_last_q;
    wire [0:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmpReg_q;
    wire [0:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_notEnable_q;
    wire [0:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_sticky_ena_q;
    wire [0:0] redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_enaAnd_q;
    wire redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_reset0;
    wire [63:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_ia;
    wire [1:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_aa;
    wire [1:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_ab;
    wire [63:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_iq;
    wire [63:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_q;
    wire [1:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i;
    (* preserve *) reg redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_eq;
    reg [1:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_wraddr_q;
    wire [1:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_last_q;
    wire [0:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmpReg_q;
    wire [0:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_notEnable_q;
    wire [0:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_sticky_ena_q;
    wire [0:0] redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist51_sync_together447_aunroll_x_in_i_valid_7(DELAY,548)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist51_sync_together447_aunroll_x_in_i_valid_7 ( .xin(in_i_valid), .xout(redist51_sync_together447_aunroll_x_in_i_valid_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg1(REG,493)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist51_sync_together447_aunroll_x_in_i_valid_7_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_notEnable(LOGICAL,818)
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_nor(LOGICAL,819)
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_nor_q = ~ (redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_notEnable_q | redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_sticky_ena_q);

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_last(CONSTANT,815)
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_last_q = $unsigned(4'b0100);

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmp(LOGICAL,816)
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmp_b = {1'b0, redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_q};
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmp_q = $unsigned(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_last_q == redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmp_b ? 1'b1 : 1'b0);

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmpReg(REG,817)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmpReg_q <= $unsigned(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmp_q);
        end
    end

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_sticky_ena(REG,820)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_nor_q == 1'b1)
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_sticky_ena_q <= $unsigned(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_cmpReg_q);
        end
    end

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_enaAnd(LOGICAL,821)
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_enaAnd_q = redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_sticky_ena_q & VCC_q;

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt(COUNTER,813)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i <= 3'd0;
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i == 3'd4)
            begin
                redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_eq <= 1'b0;
            end
            if (redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_eq == 1'b1)
            begin
                redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i <= $unsigned(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i <= $unsigned(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_q = redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_i[2:0];

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_wraddr(REG,814)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_wraddr_q <= $unsigned(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_q);
        end
    end

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem(DUALMEM,812)
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_ia = $unsigned(in_c1_eni1_32_tpl);
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_aa = redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_wraddr_q;
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_ab = redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_rdcnt_q;
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_dmem (
        .clocken1(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_reset0),
        .clock1(clock),
        .address_a(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_aa),
        .data_a(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_ab),
        .q_b(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_iq),
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
    assign redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_q = redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_iq[63:0];

    // redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_outputreg0(DELAY,811)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_outputreg0_q <= '0;
        end
        else
        begin
            redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_outputreg0_q <= $unsigned(redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_mem_q);
        end
    end

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_notEnable(LOGICAL,778)
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_nor(LOGICAL,779)
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_nor_q = ~ (redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_notEnable_q | redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_sticky_ena_q);

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_last(CONSTANT,775)
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmp(LOGICAL,776)
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmp_b = {1'b0, redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_q};
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmp_q = $unsigned(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_last_q == redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmpReg(REG,777)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmpReg_q <= $unsigned(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmp_q);
        end
    end

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_sticky_ena(REG,780)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_nor_q == 1'b1)
        begin
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_sticky_ena_q <= $unsigned(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_cmpReg_q);
        end
    end

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_enaAnd(LOGICAL,781)
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_enaAnd_q = redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_sticky_ena_q & VCC_q;

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt(COUNTER,773)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i <= 3'd0;
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i == 3'd4)
            begin
                redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i <= $unsigned(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i <= $unsigned(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_q = redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_i[2:0];

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_wraddr(REG,774)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_wraddr_q <= $unsigned(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_q);
        end
    end

    // redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem(DUALMEM,772)
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_ia = $unsigned(in_c1_eni1_27_tpl);
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_aa = redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_wraddr_q;
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_ab = redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_rdcnt_q;
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_dmem (
        .clocken1(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_aa),
        .data_a(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_ab),
        .q_b(redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_iq),
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
    assign redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_q = redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_iq[63:0];

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_notEnable(LOGICAL,678)
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_nor(LOGICAL,679)
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_nor_q = ~ (redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_notEnable_q | redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_sticky_ena_q);

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_last(CONSTANT,675)
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_last_q = $unsigned(3'b011);

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmp(LOGICAL,676)
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmp_q = $unsigned(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_last_q == redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmpReg(REG,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmpReg_q <= $unsigned(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmp_q);
        end
    end

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_sticky_ena(REG,680)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_nor_q == 1'b1)
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_sticky_ena_q <= $unsigned(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_cmpReg_q);
        end
    end

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_enaAnd(LOGICAL,681)
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_enaAnd_q = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_sticky_ena_q & VCC_q;

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt(COUNTER,673)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i <= 3'd0;
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i == 3'd3)
            begin
                redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i <= $unsigned(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i <= $unsigned(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_q = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_i[2:0];

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_wraddr(REG,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_wraddr_q <= $unsigned(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_q);
        end
    end

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem(DUALMEM,672)
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_ia = $unsigned(in_c1_eni1_15_tpl);
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_aa = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_wraddr_q;
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_ab = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_rdcnt_q;
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_dmem (
        .clocken1(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_aa),
        .data_a(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_ab),
        .q_b(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_iq),
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
    assign redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_q = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_iq[63:0];

    // redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0(DELAY,671)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q <= '0;
        end
        else
        begin
            redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q <= $unsigned(redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_mem_q);
        end
    end

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_notEnable(LOGICAL,667)
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_nor(LOGICAL,668)
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_nor_q = ~ (redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_notEnable_q | redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_sticky_ena_q);

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_last(CONSTANT,664)
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmp(LOGICAL,665)
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmp_b = {1'b0, redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_q};
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmp_q = $unsigned(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_last_q == redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmpReg(REG,666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmpReg_q <= $unsigned(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmp_q);
        end
    end

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_sticky_ena(REG,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_nor_q == 1'b1)
        begin
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_sticky_ena_q <= $unsigned(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_cmpReg_q);
        end
    end

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_enaAnd(LOGICAL,670)
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_enaAnd_q = redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_sticky_ena_q & VCC_q;

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt(COUNTER,662)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i <= 3'd0;
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i == 3'd4)
            begin
                redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i <= $unsigned(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i <= $unsigned(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_q = redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_i[2:0];

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_wraddr(REG,663)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_wraddr_q <= $unsigned(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_q);
        end
    end

    // redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem(DUALMEM,661)
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_ia = $unsigned(in_c1_eni1_14_tpl);
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_aa = redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_wraddr_q;
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_ab = redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_rdcnt_q;
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_dmem (
        .clocken1(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_aa),
        .data_a(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_ab),
        .q_b(redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_iq),
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
    assign redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_q = redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_iq[63:0];

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_notEnable(LOGICAL,797)
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_nor(LOGICAL,798)
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_nor_q = ~ (redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_notEnable_q | redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_sticky_ena_q);

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_last(CONSTANT,794)
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_last_q = $unsigned(3'b011);

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmp(LOGICAL,795)
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmp_q = $unsigned(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_last_q == redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmpReg(REG,796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmpReg_q <= $unsigned(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmp_q);
        end
    end

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_sticky_ena(REG,799)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_nor_q == 1'b1)
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_sticky_ena_q <= $unsigned(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_cmpReg_q);
        end
    end

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_enaAnd(LOGICAL,800)
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_enaAnd_q = redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_sticky_ena_q & VCC_q;

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt(COUNTER,792)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i <= 3'd0;
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i == 3'd3)
            begin
                redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i <= $unsigned(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i <= $unsigned(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_q = redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_i[2:0];

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_wraddr(REG,793)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_wraddr_q <= $unsigned(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_q);
        end
    end

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem(DUALMEM,791)
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_ia = $unsigned(in_c1_eni1_30_tpl);
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_aa = redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_wraddr_q;
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_ab = redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_rdcnt_q;
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_dmem (
        .clocken1(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_aa),
        .data_a(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_ab),
        .q_b(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_iq),
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
    assign redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_q = redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_iq[63:0];

    // redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0(DELAY,790)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0_q <= '0;
        end
        else
        begin
            redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0_q <= $unsigned(redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_mem_q);
        end
    end

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_notEnable(LOGICAL,698)
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_nor(LOGICAL,699)
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_nor_q = ~ (redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_notEnable_q | redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_sticky_ena_q);

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_last(CONSTANT,695)
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmp(LOGICAL,696)
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmp_q = $unsigned(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_last_q == redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmpReg(REG,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmpReg_q <= $unsigned(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmp_q);
        end
    end

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_sticky_ena(REG,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_nor_q == 1'b1)
        begin
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_sticky_ena_q <= $unsigned(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_cmpReg_q);
        end
    end

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_enaAnd(LOGICAL,701)
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_enaAnd_q = redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_sticky_ena_q & VCC_q;

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt(COUNTER,693)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i <= 3'd0;
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i == 3'd3)
            begin
                redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i <= $unsigned(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i <= $unsigned(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_q = redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_i[2:0];

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_wraddr(REG,694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_wraddr_q <= $unsigned(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_q);
        end
    end

    // redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem(DUALMEM,692)
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_ia = $unsigned(in_c1_eni1_17_tpl);
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_aa = redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_wraddr_q;
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_ab = redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_rdcnt_q;
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_dmem (
        .clocken1(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_aa),
        .data_a(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_ab),
        .q_b(redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_iq),
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
    assign redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_q = redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_iq[63:0];

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_notEnable(LOGICAL,611)
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_nor(LOGICAL,612)
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_nor_q = ~ (redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_notEnable_q | redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_sticky_ena_q);

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_last(CONSTANT,608)
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmp(LOGICAL,609)
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmp_q = $unsigned(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_last_q == redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmpReg(REG,610)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmpReg_q <= $unsigned(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmp_q);
        end
    end

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_sticky_ena(REG,613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_nor_q == 1'b1)
        begin
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_sticky_ena_q <= $unsigned(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_cmpReg_q);
        end
    end

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_enaAnd(LOGICAL,614)
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_enaAnd_q = redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_sticky_ena_q & VCC_q;

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt(COUNTER,606)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i <= 3'd0;
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i == 3'd3)
            begin
                redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i <= $unsigned(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i <= $unsigned(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_q = redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_i[2:0];

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_wraddr(REG,607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_wraddr_q <= $unsigned(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_q);
        end
    end

    // redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem(DUALMEM,605)
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_ia = $unsigned(in_c1_eni1_6_tpl);
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_aa = redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_wraddr_q;
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_ab = redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_rdcnt_q;
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_dmem (
        .clocken1(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_aa),
        .data_a(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_ab),
        .q_b(redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_iq),
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
    assign redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_q = redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_iq[63:0];

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_notEnable(LOGICAL,807)
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_nor(LOGICAL,808)
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_nor_q = ~ (redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_notEnable_q | redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_sticky_ena_q);

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_last(CONSTANT,804)
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmp(LOGICAL,805)
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmp_q = $unsigned(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_last_q == redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmpReg(REG,806)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmpReg_q <= $unsigned(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmp_q);
        end
    end

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_sticky_ena(REG,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_nor_q == 1'b1)
        begin
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_sticky_ena_q <= $unsigned(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_cmpReg_q);
        end
    end

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_enaAnd(LOGICAL,810)
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_enaAnd_q = redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_sticky_ena_q & VCC_q;

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt(COUNTER,802)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i <= 3'd0;
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i == 3'd3)
            begin
                redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i <= $unsigned(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i <= $unsigned(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_q = redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_i[2:0];

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_wraddr(REG,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_wraddr_q <= $unsigned(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_q);
        end
    end

    // redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem(DUALMEM,801)
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_ia = $unsigned(in_c1_eni1_31_tpl);
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_aa = redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_wraddr_q;
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_ab = redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_rdcnt_q;
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_dmem (
        .clocken1(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_aa),
        .data_a(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_ab),
        .q_b(redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_iq),
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
    assign redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_q = redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_iq[63:0];

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_notEnable(LOGICAL,621)
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_nor(LOGICAL,622)
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_nor_q = ~ (redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_notEnable_q | redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_sticky_ena_q);

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_last(CONSTANT,618)
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmp(LOGICAL,619)
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmp_q = $unsigned(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_last_q == redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmpReg(REG,620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmpReg_q <= $unsigned(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmp_q);
        end
    end

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_sticky_ena(REG,623)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_nor_q == 1'b1)
        begin
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_sticky_ena_q <= $unsigned(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_cmpReg_q);
        end
    end

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_enaAnd(LOGICAL,624)
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_enaAnd_q = redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_sticky_ena_q & VCC_q;

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt(COUNTER,616)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i <= 3'd0;
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i == 3'd3)
            begin
                redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i <= $unsigned(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i <= $unsigned(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_q = redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_i[2:0];

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_wraddr(REG,617)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_wraddr_q <= $unsigned(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_q);
        end
    end

    // redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem(DUALMEM,615)
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_ia = $unsigned(in_c1_eni1_7_tpl);
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_aa = redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_wraddr_q;
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_ab = redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_rdcnt_q;
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_dmem (
        .clocken1(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_aa),
        .data_a(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_ab),
        .q_b(redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_iq),
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
    assign redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_q = redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_iq[63:0];

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_notEnable(LOGICAL,688)
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_nor(LOGICAL,689)
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_nor_q = ~ (redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_notEnable_q | redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_sticky_ena_q);

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_last(CONSTANT,685)
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmp(LOGICAL,686)
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmp_q = $unsigned(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_last_q == redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmpReg(REG,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmpReg_q <= $unsigned(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmp_q);
        end
    end

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_sticky_ena(REG,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_nor_q == 1'b1)
        begin
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_sticky_ena_q <= $unsigned(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_cmpReg_q);
        end
    end

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_enaAnd(LOGICAL,691)
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_enaAnd_q = redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_sticky_ena_q & VCC_q;

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt(COUNTER,683)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i <= 3'd0;
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i == 3'd3)
            begin
                redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i <= $unsigned(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i <= $unsigned(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_q = redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_i[2:0];

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_wraddr(REG,684)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_wraddr_q <= $unsigned(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_q);
        end
    end

    // redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem(DUALMEM,682)
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_ia = $unsigned(in_c1_eni1_16_tpl);
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_aa = redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_wraddr_q;
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_ab = redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_rdcnt_q;
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_dmem (
        .clocken1(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_aa),
        .data_a(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_ab),
        .q_b(redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_iq),
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
    assign redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_q = redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_iq[63:0];

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_notEnable(LOGICAL,828)
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_nor(LOGICAL,829)
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_nor_q = ~ (redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_notEnable_q | redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_sticky_ena_q);

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_last(CONSTANT,825)
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmp(LOGICAL,826)
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmp_b = {1'b0, redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_q};
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmp_q = $unsigned(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_last_q == redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmpReg(REG,827)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmpReg_q <= $unsigned(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmp_q);
        end
    end

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_sticky_ena(REG,830)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_nor_q == 1'b1)
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_sticky_ena_q <= $unsigned(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_cmpReg_q);
        end
    end

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_enaAnd(LOGICAL,831)
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_enaAnd_q = redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_sticky_ena_q & VCC_q;

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt(COUNTER,823)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_i <= $unsigned(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_q = redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_i[1:0];

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_wraddr(REG,824)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_wraddr_q <= $unsigned(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_q);
        end
    end

    // redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem(DUALMEM,822)
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_ia = $unsigned(in_c1_eni1_33_tpl);
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_aa = redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_wraddr_q;
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_ab = redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_rdcnt_q;
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_dmem (
        .clocken1(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_aa),
        .data_a(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_ab),
        .q_b(redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_iq),
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
    assign redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_q = redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_iq[63:0];

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_notEnable(LOGICAL,738)
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_nor(LOGICAL,739)
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_nor_q = ~ (redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_notEnable_q | redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_sticky_ena_q);

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_last(CONSTANT,735)
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmp(LOGICAL,736)
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmp_q = $unsigned(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_last_q == redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmpReg(REG,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmpReg_q <= $unsigned(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmp_q);
        end
    end

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_sticky_ena(REG,740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_nor_q == 1'b1)
        begin
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_sticky_ena_q <= $unsigned(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_cmpReg_q);
        end
    end

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_enaAnd(LOGICAL,741)
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_enaAnd_q = redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_sticky_ena_q & VCC_q;

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt(COUNTER,733)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i <= 2'd0;
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i == 2'd1)
            begin
                redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i <= $unsigned(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i <= $unsigned(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_q = redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_i[1:0];

    // redist36_sync_together447_aunroll_x_in_c1_eni1_23_tpl_1(DELAY,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together447_aunroll_x_in_c1_eni1_23_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together447_aunroll_x_in_c1_eni1_23_tpl_1_q <= $unsigned(in_c1_eni1_23_tpl);
        end
    end

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_wraddr(REG,734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_wraddr_q <= $unsigned(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_q);
        end
    end

    // redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem(DUALMEM,732)
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_ia = $unsigned(redist36_sync_together447_aunroll_x_in_c1_eni1_23_tpl_1_q);
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_aa = redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_wraddr_q;
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_ab = redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_rdcnt_q;
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_dmem (
        .clocken1(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_aa),
        .data_a(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_ab),
        .q_b(redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_iq),
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
    assign redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_q = redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_iq[63:0];

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_notEnable(LOGICAL,639)
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_nor(LOGICAL,640)
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_nor_q = ~ (redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_notEnable_q | redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_sticky_ena_q);

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_cmpReg(REG,638)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_sticky_ena(REG,641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_nor_q == 1'b1)
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_sticky_ena_q <= $unsigned(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_cmpReg_q);
        end
    end

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_enaAnd(LOGICAL,642)
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_enaAnd_q = redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_sticky_ena_q & VCC_q;

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt(COUNTER,636)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_i <= $unsigned(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_q = redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_i[0:0];

    // redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2(DELAY,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_delay_0 <= '0;
            redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_delay_0 <= $unsigned(in_c1_eni1_10_tpl);
            redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_q <= redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_delay_0;
        end
    end

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_wraddr(REG,637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_wraddr_q <= $unsigned(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_q);
        end
    end

    // redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem(DUALMEM,635)
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_ia = $unsigned(redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_q);
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_aa = redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_wraddr_q;
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_ab = redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_rdcnt_q;
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_dmem (
        .clocken1(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_aa),
        .data_a(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_ab),
        .q_b(redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_iq),
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
    assign redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_q = redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_iq[63:0];

    // redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2(DELAY,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_delay_0 <= '0;
            redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_q <= '0;
        end
        else
        begin
            redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_delay_0 <= $unsigned(in_c1_eni1_11_tpl);
            redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_q <= redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_delay_0;
        end
    end

    // redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3(DELAY,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q <= '0;
        end
        else
        begin
            redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q <= $unsigned(redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_q);
        end
    end

    // redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5(DELAY,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_delay_0 <= '0;
            redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_q <= '0;
        end
        else
        begin
            redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_delay_0 <= $unsigned(redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q);
            redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_q <= redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_delay_0;
        end
    end

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_notEnable(LOGICAL,657)
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_nor(LOGICAL,658)
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_nor_q = ~ (redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_notEnable_q | redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_sticky_ena_q);

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_last(CONSTANT,654)
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmp(LOGICAL,655)
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmp_b = {1'b0, redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_q};
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmp_q = $unsigned(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_last_q == redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmpReg(REG,656)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmpReg_q <= $unsigned(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmp_q);
        end
    end

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_sticky_ena(REG,659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_nor_q == 1'b1)
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_sticky_ena_q <= $unsigned(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_cmpReg_q);
        end
    end

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_enaAnd(LOGICAL,660)
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_enaAnd_q = redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_sticky_ena_q & VCC_q;

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt(COUNTER,652)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_i <= $unsigned(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_q = redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_i[1:0];

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_wraddr(REG,653)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_wraddr_q <= $unsigned(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_q);
        end
    end

    // redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem(DUALMEM,651)
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_ia = $unsigned(in_c1_eni1_13_tpl);
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_aa = redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_wraddr_q;
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_ab = redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_rdcnt_q;
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_dmem (
        .clocken1(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_aa),
        .data_a(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_ab),
        .q_b(redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_iq),
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
    assign redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_q = redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_iq[63:0];

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_notEnable(LOGICAL,758)
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_nor(LOGICAL,759)
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_nor_q = ~ (redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_notEnable_q | redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_sticky_ena_q);

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_last(CONSTANT,755)
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmp(LOGICAL,756)
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmp_b = {1'b0, redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_q};
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmp_q = $unsigned(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_last_q == redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmpReg(REG,757)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmpReg_q <= $unsigned(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmp_q);
        end
    end

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_sticky_ena(REG,760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_nor_q == 1'b1)
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_sticky_ena_q <= $unsigned(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_cmpReg_q);
        end
    end

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_enaAnd(LOGICAL,761)
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_enaAnd_q = redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_sticky_ena_q & VCC_q;

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt(COUNTER,753)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_i <= $unsigned(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_q = redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_i[1:0];

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_wraddr(REG,754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_wraddr_q <= $unsigned(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_q);
        end
    end

    // redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem(DUALMEM,752)
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_ia = $unsigned(in_c1_eni1_25_tpl);
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_aa = redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_wraddr_q;
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_ab = redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_rdcnt_q;
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_dmem (
        .clocken1(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_aa),
        .data_a(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_ab),
        .q_b(redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_iq),
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
    assign redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_q = redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_iq[63:0];

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_notEnable(LOGICAL,708)
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_nor(LOGICAL,709)
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_nor_q = ~ (redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_notEnable_q | redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_sticky_ena_q);

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_last(CONSTANT,705)
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmp(LOGICAL,706)
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmp_b = {1'b0, redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_q};
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmp_q = $unsigned(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_last_q == redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmpReg(REG,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmpReg_q <= $unsigned(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmp_q);
        end
    end

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_sticky_ena(REG,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_nor_q == 1'b1)
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_sticky_ena_q <= $unsigned(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_cmpReg_q);
        end
    end

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_enaAnd(LOGICAL,711)
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_enaAnd_q = redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_sticky_ena_q & VCC_q;

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt(COUNTER,703)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_i <= $unsigned(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_q = redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_i[1:0];

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_wraddr(REG,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_wraddr_q <= $unsigned(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_q);
        end
    end

    // redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem(DUALMEM,702)
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_ia = $unsigned(in_c1_eni1_18_tpl);
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_aa = redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_wraddr_q;
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_ab = redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_rdcnt_q;
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_dmem (
        .clocken1(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_aa),
        .data_a(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_ab),
        .q_b(redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_iq),
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
    assign redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_q = redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_iq[63:0];

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_notEnable(LOGICAL,858)
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_nor(LOGICAL,859)
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_nor_q = ~ (redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_notEnable_q | redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_sticky_ena_q);

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_last(CONSTANT,855)
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmp(LOGICAL,856)
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmp_q = $unsigned(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_last_q == redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmpReg(REG,857)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmpReg_q <= $unsigned(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmp_q);
        end
    end

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_sticky_ena(REG,860)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_nor_q == 1'b1)
        begin
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_sticky_ena_q <= $unsigned(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_cmpReg_q);
        end
    end

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_enaAnd(LOGICAL,861)
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_enaAnd_q = redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_sticky_ena_q & VCC_q;

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt(COUNTER,853)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i <= 2'd0;
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i == 2'd1)
            begin
                redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i <= $unsigned(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i <= $unsigned(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_q = redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_i[1:0];

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_wraddr(REG,854)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_wraddr_q <= $unsigned(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_q);
        end
    end

    // redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem(DUALMEM,852)
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_ia = $unsigned(in_c1_eni1_36_tpl);
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_aa = redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_wraddr_q;
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_ab = redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_rdcnt_q;
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_dmem (
        .clocken1(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_aa),
        .data_a(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_ab),
        .q_b(redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_iq),
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
    assign redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_q = redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_iq[63:0];

    // redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1(DELAY,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q <= $unsigned(in_c1_eni1_9_tpl);
        end
    end

    // redist13_sync_together447_aunroll_x_in_c1_eni1_9_tpl_2(DELAY,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together447_aunroll_x_in_c1_eni1_9_tpl_2_q <= '0;
        end
        else
        begin
            redist13_sync_together447_aunroll_x_in_c1_eni1_9_tpl_2_q <= $unsigned(redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q);
        end
    end

    // redist14_sync_together447_aunroll_x_in_c1_eni1_9_tpl_3(DELAY,511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together447_aunroll_x_in_c1_eni1_9_tpl_3_q <= '0;
        end
        else
        begin
            redist14_sync_together447_aunroll_x_in_c1_eni1_9_tpl_3_q <= $unsigned(redist13_sync_together447_aunroll_x_in_c1_eni1_9_tpl_2_q);
        end
    end

    // redist15_sync_together447_aunroll_x_in_c1_eni1_9_tpl_4(DELAY,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together447_aunroll_x_in_c1_eni1_9_tpl_4_q <= '0;
        end
        else
        begin
            redist15_sync_together447_aunroll_x_in_c1_eni1_9_tpl_4_q <= $unsigned(redist14_sync_together447_aunroll_x_in_c1_eni1_9_tpl_3_q);
        end
    end

    // redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2(DELAY,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_delay_0 <= '0;
            redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_delay_0 <= $unsigned(in_c1_eni1_5_tpl);
            redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_q <= redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_delay_0;
        end
    end

    // redist6_sync_together447_aunroll_x_in_c1_eni1_5_tpl_3(DELAY,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together447_aunroll_x_in_c1_eni1_5_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together447_aunroll_x_in_c1_eni1_5_tpl_3_q <= $unsigned(redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_q);
        end
    end

    // redist7_sync_together447_aunroll_x_in_c1_eni1_5_tpl_4(DELAY,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together447_aunroll_x_in_c1_eni1_5_tpl_4_q <= '0;
        end
        else
        begin
            redist7_sync_together447_aunroll_x_in_c1_eni1_5_tpl_4_q <= $unsigned(redist6_sync_together447_aunroll_x_in_c1_eni1_5_tpl_3_q);
        end
    end

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_notEnable(LOGICAL,728)
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_nor(LOGICAL,729)
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_nor_q = ~ (redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_notEnable_q | redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_sticky_ena_q);

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_last(CONSTANT,725)
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmp(LOGICAL,726)
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmp_q = $unsigned(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_last_q == redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmpReg(REG,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmpReg_q <= $unsigned(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmp_q);
        end
    end

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_sticky_ena(REG,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_nor_q == 1'b1)
        begin
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_sticky_ena_q <= $unsigned(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_cmpReg_q);
        end
    end

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_enaAnd(LOGICAL,731)
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_enaAnd_q = redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_sticky_ena_q & VCC_q;

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt(COUNTER,723)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i <= 2'd0;
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i == 2'd1)
            begin
                redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i <= $unsigned(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i <= $unsigned(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_q = redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_i[1:0];

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_wraddr(REG,724)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_wraddr_q <= $unsigned(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_q);
        end
    end

    // redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem(DUALMEM,722)
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_ia = $unsigned(in_c1_eni1_22_tpl);
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_aa = redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_wraddr_q;
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_ab = redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_rdcnt_q;
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_dmem (
        .clocken1(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_aa),
        .data_a(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_ab),
        .q_b(redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_iq),
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
    assign redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_q = redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_iq[63:0];

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_notEnable(LOGICAL,593)
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_nor(LOGICAL,594)
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_nor_q = ~ (redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_notEnable_q | redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_sticky_ena_q);

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_last(CONSTANT,590)
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmp(LOGICAL,591)
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmp_q = $unsigned(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_last_q == redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmpReg(REG,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmpReg_q <= $unsigned(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmp_q);
        end
    end

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_sticky_ena(REG,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_nor_q == 1'b1)
        begin
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_sticky_ena_q <= $unsigned(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_cmpReg_q);
        end
    end

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_enaAnd(LOGICAL,596)
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_enaAnd_q = redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_sticky_ena_q & VCC_q;

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt(COUNTER,588)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i <= 2'd0;
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i == 2'd1)
            begin
                redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i <= $unsigned(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i <= $unsigned(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_q = redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_i[1:0];

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_wraddr(REG,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_wraddr_q <= $unsigned(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_q);
        end
    end

    // redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem(DUALMEM,587)
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_ia = $unsigned(in_c1_eni1_3_tpl);
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_aa = redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_wraddr_q;
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_ab = redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_rdcnt_q;
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_dmem (
        .clocken1(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_aa),
        .data_a(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_ab),
        .q_b(redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_iq),
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
    assign redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_q = redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_iq[63:0];

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_notEnable(LOGICAL,647)
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_nor(LOGICAL,648)
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_nor_q = ~ (redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_notEnable_q | redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_sticky_ena_q);

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_cmpReg(REG,646)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_sticky_ena(REG,649)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_nor_q == 1'b1)
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_sticky_ena_q <= $unsigned(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_cmpReg_q);
        end
    end

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_enaAnd(LOGICAL,650)
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_enaAnd_q = redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_sticky_ena_q & VCC_q;

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt(COUNTER,644)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_i <= $unsigned(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_q = redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_i[0:0];

    // redist21_sync_together447_aunroll_x_in_c1_eni1_12_tpl_1(DELAY,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together447_aunroll_x_in_c1_eni1_12_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together447_aunroll_x_in_c1_eni1_12_tpl_1_q <= $unsigned(in_c1_eni1_12_tpl);
        end
    end

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_wraddr(REG,645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_wraddr_q <= $unsigned(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_q);
        end
    end

    // redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem(DUALMEM,643)
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_ia = $unsigned(redist21_sync_together447_aunroll_x_in_c1_eni1_12_tpl_1_q);
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_aa = redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_wraddr_q;
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_ab = redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_rdcnt_q;
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_dmem (
        .clocken1(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_aa),
        .data_a(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_ab),
        .q_b(redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_iq),
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
    assign redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_q = redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_iq[63:0];

    // redist29_sync_together447_aunroll_x_in_c1_eni1_19_tpl_1(DELAY,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together447_aunroll_x_in_c1_eni1_19_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together447_aunroll_x_in_c1_eni1_19_tpl_1_q <= $unsigned(in_c1_eni1_19_tpl);
        end
    end

    // redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3(DELAY,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_delay_0 <= '0;
            redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_q <= '0;
        end
        else
        begin
            redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_delay_0 <= $unsigned(redist29_sync_together447_aunroll_x_in_c1_eni1_19_tpl_1_q);
            redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_q <= redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_delay_0;
        end
    end

    // redist31_sync_together447_aunroll_x_in_c1_eni1_19_tpl_4(DELAY,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together447_aunroll_x_in_c1_eni1_19_tpl_4_q <= '0;
        end
        else
        begin
            redist31_sync_together447_aunroll_x_in_c1_eni1_19_tpl_4_q <= $unsigned(redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_q);
        end
    end

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_notEnable(LOGICAL,786)
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_nor(LOGICAL,787)
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_nor_q = ~ (redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_notEnable_q | redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_sticky_ena_q);

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_cmpReg(REG,785)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_sticky_ena(REG,788)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_nor_q == 1'b1)
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_sticky_ena_q <= $unsigned(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_cmpReg_q);
        end
    end

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_enaAnd(LOGICAL,789)
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_enaAnd_q = redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_sticky_ena_q & VCC_q;

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt(COUNTER,783)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_i <= $unsigned(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_q = redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_i[0:0];

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_wraddr(REG,784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_wraddr_q <= $unsigned(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_q);
        end
    end

    // redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem(DUALMEM,782)
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_ia = $unsigned(in_c1_eni1_29_tpl);
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_aa = redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_wraddr_q;
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_ab = redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_rdcnt_q;
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_dmem (
        .clocken1(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_aa),
        .data_a(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_ab),
        .q_b(redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_iq),
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
    assign redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_q = redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_iq[63:0];

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_notEnable(LOGICAL,601)
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_nor(LOGICAL,602)
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_nor_q = ~ (redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_notEnable_q | redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_sticky_ena_q);

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_cmpReg(REG,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_sticky_ena(REG,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_nor_q == 1'b1)
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_sticky_ena_q <= $unsigned(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_cmpReg_q);
        end
    end

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_enaAnd(LOGICAL,604)
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_enaAnd_q = redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_sticky_ena_q & VCC_q;

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt(COUNTER,598)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_i <= $unsigned(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_q = redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_i[0:0];

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_wraddr(REG,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_wraddr_q <= $unsigned(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_q);
        end
    end

    // redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem(DUALMEM,597)
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_ia = $unsigned(in_c1_eni1_4_tpl);
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_aa = redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_wraddr_q;
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_ab = redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_rdcnt_q;
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_dmem (
        .clocken1(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_aa),
        .data_a(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_ab),
        .q_b(redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_iq),
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
    assign redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_q = redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_iq[63:0];

    // redist33_sync_together447_aunroll_x_in_c1_eni1_21_tpl_1(DELAY,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together447_aunroll_x_in_c1_eni1_21_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together447_aunroll_x_in_c1_eni1_21_tpl_1_q <= $unsigned(in_c1_eni1_21_tpl);
        end
    end

    // redist34_sync_together447_aunroll_x_in_c1_eni1_21_tpl_2(DELAY,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together447_aunroll_x_in_c1_eni1_21_tpl_2_q <= '0;
        end
        else
        begin
            redist34_sync_together447_aunroll_x_in_c1_eni1_21_tpl_2_q <= $unsigned(redist33_sync_together447_aunroll_x_in_c1_eni1_21_tpl_1_q);
        end
    end

    // redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2(DELAY,539)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_delay_0 <= '0;
            redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_q <= '0;
        end
        else
        begin
            redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_delay_0 <= $unsigned(in_c1_eni1_28_tpl);
            redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_q <= redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_delay_0;
        end
    end

    // redist10_sync_together447_aunroll_x_in_c1_eni1_8_tpl_1(DELAY,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together447_aunroll_x_in_c1_eni1_8_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together447_aunroll_x_in_c1_eni1_8_tpl_1_q <= $unsigned(in_c1_eni1_8_tpl);
        end
    end

    // c_i32_27390_recast_x(CONSTANT,434)
    assign c_i32_27390_recast_x_q = $unsigned(32'b00000000000000000000000000011011);

    // i_switchleaf3_afs_abort_to_error119(LOGICAL,253)@1
    assign i_switchleaf3_afs_abort_to_error119_q = $unsigned(in_c1_eni1_1_tpl == c_i32_27390_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_199_afs_abort_to_error183(MUX,20)@1
    assign i_acl_199_afs_abort_to_error183_s = i_switchleaf3_afs_abort_to_error119_q;
    always @(i_acl_199_afs_abort_to_error183_s or in_c1_eni1_2_tpl or in_c1_eni1_10_tpl)
    begin
        unique case (i_acl_199_afs_abort_to_error183_s)
            1'b0 : i_acl_199_afs_abort_to_error183_q = in_c1_eni1_2_tpl;
            1'b1 : i_acl_199_afs_abort_to_error183_q = in_c1_eni1_10_tpl;
            default : i_acl_199_afs_abort_to_error183_q = 64'b0;
        endcase
    end

    // c_i32_30376_recast_x(CONSTANT,435)
    assign c_i32_30376_recast_x_q = $unsigned(32'b00000000000000000000000000011110);

    // i_switchleaf5_afs_abort_to_error122(LOGICAL,256)@1
    assign i_switchleaf5_afs_abort_to_error122_q = $unsigned(in_c1_eni1_1_tpl == c_i32_30376_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_206_afs_abort_to_error184(MUX,21)@1
    assign i_acl_206_afs_abort_to_error184_s = i_switchleaf5_afs_abort_to_error122_q;
    always @(i_acl_206_afs_abort_to_error184_s or i_acl_199_afs_abort_to_error183_q or in_c1_eni1_33_tpl)
    begin
        unique case (i_acl_206_afs_abort_to_error184_s)
            1'b0 : i_acl_206_afs_abort_to_error184_q = i_acl_199_afs_abort_to_error183_q;
            1'b1 : i_acl_206_afs_abort_to_error184_q = in_c1_eni1_33_tpl;
            default : i_acl_206_afs_abort_to_error184_q = 64'b0;
        endcase
    end

    // c_i32_130392_recast_x(CONSTANT,388)
    assign c_i32_130392_recast_x_q = $unsigned(32'b00000000000000000000000010000010);

    // i_pivot11_afs_abort_to_error63(COMPARE,162)@1
    assign i_pivot11_afs_abort_to_error63_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot11_afs_abort_to_error63_b = $unsigned({{2{c_i32_130392_recast_x_q[31]}}, c_i32_130392_recast_x_q});
    assign i_pivot11_afs_abort_to_error63_o = $unsigned($signed(i_pivot11_afs_abort_to_error63_a) - $signed(i_pivot11_afs_abort_to_error63_b));
    assign i_pivot11_afs_abort_to_error63_c[0] = i_pivot11_afs_abort_to_error63_o[33];

    // c_i32_129369_recast_x(CONSTANT,387)
    assign c_i32_129369_recast_x_q = $unsigned(32'b00000000000000000000000010000001);

    // i_pivot19_afs_abort_to_error17(COMPARE,193)@1
    assign i_pivot19_afs_abort_to_error17_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot19_afs_abort_to_error17_b = $unsigned({{2{c_i32_129369_recast_x_q[31]}}, c_i32_129369_recast_x_q});
    assign i_pivot19_afs_abort_to_error17_o = $unsigned($signed(i_pivot19_afs_abort_to_error17_a) - $signed(i_pivot19_afs_abort_to_error17_b));
    assign i_pivot19_afs_abort_to_error17_c[0] = i_pivot19_afs_abort_to_error17_o[33];

    // i_acl_208_afs_abort_to_error185(LOGICAL,22)@1
    assign i_acl_208_afs_abort_to_error185_q = i_pivot19_afs_abort_to_error17_c ^ i_pivot11_afs_abort_to_error63_c;

    // i_acl_212_afs_abort_to_error186(MUX,23)@1
    assign i_acl_212_afs_abort_to_error186_s = i_acl_208_afs_abort_to_error185_q;
    always @(i_acl_212_afs_abort_to_error186_s or i_acl_206_afs_abort_to_error184_q or in_c1_eni1_12_tpl)
    begin
        unique case (i_acl_212_afs_abort_to_error186_s)
            1'b0 : i_acl_212_afs_abort_to_error186_q = i_acl_206_afs_abort_to_error184_q;
            1'b1 : i_acl_212_afs_abort_to_error186_q = in_c1_eni1_12_tpl;
            default : i_acl_212_afs_abort_to_error186_q = 64'b0;
        endcase
    end

    // c_i32_135394_recast_x(CONSTANT,394)
    assign c_i32_135394_recast_x_q = $unsigned(32'b00000000000000000000000010000111);

    // i_pivot21_afs_abort_to_error67(COMPARE,194)@1
    assign i_pivot21_afs_abort_to_error67_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot21_afs_abort_to_error67_b = $unsigned({{2{c_i32_135394_recast_x_q[31]}}, c_i32_135394_recast_x_q});
    assign i_pivot21_afs_abort_to_error67_o = $unsigned($signed(i_pivot21_afs_abort_to_error67_a) - $signed(i_pivot21_afs_abort_to_error67_b));
    assign i_pivot21_afs_abort_to_error67_c[0] = i_pivot21_afs_abort_to_error67_o[33];

    // c_i32_134365_recast_x(CONSTANT,393)
    assign c_i32_134365_recast_x_q = $unsigned(32'b00000000000000000000000010000110);

    // i_pivot39_afs_abort_to_error9(COMPARE,203)@1
    assign i_pivot39_afs_abort_to_error9_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot39_afs_abort_to_error9_b = $unsigned({{2{c_i32_134365_recast_x_q[31]}}, c_i32_134365_recast_x_q});
    assign i_pivot39_afs_abort_to_error9_o = $unsigned($signed(i_pivot39_afs_abort_to_error9_a) - $signed(i_pivot39_afs_abort_to_error9_b));
    assign i_pivot39_afs_abort_to_error9_c[0] = i_pivot39_afs_abort_to_error9_o[33];

    // i_acl_215_afs_abort_to_error187(LOGICAL,24)@1
    assign i_acl_215_afs_abort_to_error187_q = i_pivot39_afs_abort_to_error9_c ^ i_pivot21_afs_abort_to_error67_c;

    // i_acl_218_afs_abort_to_error188(MUX,25)@1 + 1
    assign i_acl_218_afs_abort_to_error188_s = i_acl_215_afs_abort_to_error187_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_218_afs_abort_to_error188_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_218_afs_abort_to_error188_s)
                1'b0 : i_acl_218_afs_abort_to_error188_q <= i_acl_212_afs_abort_to_error186_q;
                1'b1 : i_acl_218_afs_abort_to_error188_q <= in_c1_eni1_19_tpl;
                default : i_acl_218_afs_abort_to_error188_q <= 64'b0;
            endcase
        end
    end

    // c_i32_133421_recast_x(CONSTANT,391)
    assign c_i32_133421_recast_x_q = $unsigned(32'b00000000000000000000000010000101);

    // i_pivot13_afs_abort_to_error124(COMPARE,172)@1
    assign i_pivot13_afs_abort_to_error124_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot13_afs_abort_to_error124_b = $unsigned({{2{c_i32_133421_recast_x_q[31]}}, c_i32_133421_recast_x_q});
    assign i_pivot13_afs_abort_to_error124_o = $unsigned($signed(i_pivot13_afs_abort_to_error124_a) - $signed(i_pivot13_afs_abort_to_error124_b));
    assign i_pivot13_afs_abort_to_error124_c[0] = i_pivot13_afs_abort_to_error124_o[33];

    // i_acl_222_afs_abort_to_error189(LOGICAL,26)@1 + 1
    assign i_acl_222_afs_abort_to_error189_qi = i_pivot13_afs_abort_to_error124_c ^ i_pivot39_afs_abort_to_error9_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_222_afs_abort_to_error189_delay ( .xin(i_acl_222_afs_abort_to_error189_qi), .xout(i_acl_222_afs_abort_to_error189_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_225_afs_abort_to_error190(MUX,27)@2
    assign i_acl_225_afs_abort_to_error190_s = i_acl_222_afs_abort_to_error189_q;
    always @(i_acl_225_afs_abort_to_error190_s or i_acl_218_afs_abort_to_error188_q or redist33_sync_together447_aunroll_x_in_c1_eni1_21_tpl_1_q)
    begin
        unique case (i_acl_225_afs_abort_to_error190_s)
            1'b0 : i_acl_225_afs_abort_to_error190_q = i_acl_218_afs_abort_to_error188_q;
            1'b1 : i_acl_225_afs_abort_to_error190_q = redist33_sync_together447_aunroll_x_in_c1_eni1_21_tpl_1_q;
            default : i_acl_225_afs_abort_to_error190_q = 64'b0;
        endcase
    end

    // c_i32_128391_recast_x(CONSTANT,386)
    assign c_i32_128391_recast_x_q = $unsigned(32'b00000000000000000000000010000000);

    // i_pivot7_afs_abort_to_error61(COMPARE,221)@1
    assign i_pivot7_afs_abort_to_error61_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot7_afs_abort_to_error61_b = $unsigned({{2{c_i32_128391_recast_x_q[31]}}, c_i32_128391_recast_x_q});
    assign i_pivot7_afs_abort_to_error61_o = $unsigned($signed(i_pivot7_afs_abort_to_error61_a) - $signed(i_pivot7_afs_abort_to_error61_b));
    assign i_pivot7_afs_abort_to_error61_c[0] = i_pivot7_afs_abort_to_error61_o[33];

    // i_acl_227_afs_abort_to_error191(LOGICAL,28)@1 + 1
    assign i_acl_227_afs_abort_to_error191_qi = i_pivot7_afs_abort_to_error61_c ^ i_pivot19_afs_abort_to_error17_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_227_afs_abort_to_error191_delay ( .xin(i_acl_227_afs_abort_to_error191_qi), .xout(i_acl_227_afs_abort_to_error191_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_231_afs_abort_to_error192(MUX,29)@2
    assign i_acl_231_afs_abort_to_error192_s = i_acl_227_afs_abort_to_error191_q;
    always @(i_acl_231_afs_abort_to_error192_s or i_acl_225_afs_abort_to_error190_q or redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q)
    begin
        unique case (i_acl_231_afs_abort_to_error192_s)
            1'b0 : i_acl_231_afs_abort_to_error192_q = i_acl_225_afs_abort_to_error190_q;
            1'b1 : i_acl_231_afs_abort_to_error192_q = redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q;
            default : i_acl_231_afs_abort_to_error192_q = 64'b0;
        endcase
    end

    // c_i32_136378_recast_x(CONSTANT,395)
    assign c_i32_136378_recast_x_q = $unsigned(32'b00000000000000000000000010001000);

    // i_pivot27_afs_abort_to_error35(COMPARE,197)@1 + 1
    assign i_pivot27_afs_abort_to_error35_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot27_afs_abort_to_error35_b = $unsigned({{2{c_i32_136378_recast_x_q[31]}}, c_i32_136378_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot27_afs_abort_to_error35_o <= 34'b0;
        end
        else
        begin
            i_pivot27_afs_abort_to_error35_o <= $unsigned($signed(i_pivot27_afs_abort_to_error35_a) - $signed(i_pivot27_afs_abort_to_error35_b));
        end
    end
    assign i_pivot27_afs_abort_to_error35_c[0] = i_pivot27_afs_abort_to_error35_o[33];

    // redist69_i_pivot21_afs_abort_to_error67_c_1(DELAY,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_pivot21_afs_abort_to_error67_c_1_q <= '0;
        end
        else
        begin
            redist69_i_pivot21_afs_abort_to_error67_c_1_q <= $unsigned(i_pivot21_afs_abort_to_error67_c);
        end
    end

    // i_acl_232_afs_abort_to_error193(LOGICAL,30)@2
    assign i_acl_232_afs_abort_to_error193_q = redist69_i_pivot21_afs_abort_to_error67_c_1_q ^ i_pivot27_afs_abort_to_error35_c;

    // i_acl_237_afs_abort_to_error194(MUX,31)@2
    assign i_acl_237_afs_abort_to_error194_s = i_acl_232_afs_abort_to_error193_q;
    always @(i_acl_237_afs_abort_to_error194_s or i_acl_231_afs_abort_to_error192_q or redist21_sync_together447_aunroll_x_in_c1_eni1_12_tpl_1_q)
    begin
        unique case (i_acl_237_afs_abort_to_error194_s)
            1'b0 : i_acl_237_afs_abort_to_error194_q = i_acl_231_afs_abort_to_error192_q;
            1'b1 : i_acl_237_afs_abort_to_error194_q = redist21_sync_together447_aunroll_x_in_c1_eni1_12_tpl_1_q;
            default : i_acl_237_afs_abort_to_error194_q = 64'b0;
        endcase
    end

    // c_i32_132393_recast_x(CONSTANT,390)
    assign c_i32_132393_recast_x_q = $unsigned(32'b00000000000000000000000010000100);

    // i_pivot15_afs_abort_to_error65(COMPARE,180)@1
    assign i_pivot15_afs_abort_to_error65_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot15_afs_abort_to_error65_b = $unsigned({{2{c_i32_132393_recast_x_q[31]}}, c_i32_132393_recast_x_q});
    assign i_pivot15_afs_abort_to_error65_o = $unsigned($signed(i_pivot15_afs_abort_to_error65_a) - $signed(i_pivot15_afs_abort_to_error65_b));
    assign i_pivot15_afs_abort_to_error65_c[0] = i_pivot15_afs_abort_to_error65_o[33];

    // i_acl_238_afs_abort_to_error195(LOGICAL,32)@1 + 1
    assign i_acl_238_afs_abort_to_error195_qi = i_pivot15_afs_abort_to_error65_c ^ i_pivot13_afs_abort_to_error124_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_238_afs_abort_to_error195_delay ( .xin(i_acl_238_afs_abort_to_error195_qi), .xout(i_acl_238_afs_abort_to_error195_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_244_afs_abort_to_error196(MUX,33)@2
    assign i_acl_244_afs_abort_to_error196_s = i_acl_238_afs_abort_to_error195_q;
    always @(i_acl_244_afs_abort_to_error196_s or i_acl_237_afs_abort_to_error194_q or redist29_sync_together447_aunroll_x_in_c1_eni1_19_tpl_1_q)
    begin
        unique case (i_acl_244_afs_abort_to_error196_s)
            1'b0 : i_acl_244_afs_abort_to_error196_q = i_acl_237_afs_abort_to_error194_q;
            1'b1 : i_acl_244_afs_abort_to_error196_q = redist29_sync_together447_aunroll_x_in_c1_eni1_19_tpl_1_q;
            default : i_acl_244_afs_abort_to_error196_q = 64'b0;
        endcase
    end

    // c_i32_131377_recast_x(CONSTANT,389)
    assign c_i32_131377_recast_x_q = $unsigned(32'b00000000000000000000000010000011);

    // i_pivot17_afs_abort_to_error33(COMPARE,185)@1
    assign i_pivot17_afs_abort_to_error33_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot17_afs_abort_to_error33_b = $unsigned({{2{c_i32_131377_recast_x_q[31]}}, c_i32_131377_recast_x_q});
    assign i_pivot17_afs_abort_to_error33_o = $unsigned($signed(i_pivot17_afs_abort_to_error33_a) - $signed(i_pivot17_afs_abort_to_error33_b));
    assign i_pivot17_afs_abort_to_error33_c[0] = i_pivot17_afs_abort_to_error33_o[33];

    // i_acl_245_afs_abort_to_error197(LOGICAL,34)@1 + 1
    assign i_acl_245_afs_abort_to_error197_qi = i_pivot17_afs_abort_to_error33_c ^ i_pivot15_afs_abort_to_error65_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_245_afs_abort_to_error197_delay ( .xin(i_acl_245_afs_abort_to_error197_qi), .xout(i_acl_245_afs_abort_to_error197_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_250_afs_abort_to_error198(MUX,35)@2
    assign i_acl_250_afs_abort_to_error198_s = i_acl_245_afs_abort_to_error197_q;
    always @(i_acl_250_afs_abort_to_error198_s or i_acl_244_afs_abort_to_error196_q or redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q)
    begin
        unique case (i_acl_250_afs_abort_to_error198_s)
            1'b0 : i_acl_250_afs_abort_to_error198_q = i_acl_244_afs_abort_to_error196_q;
            1'b1 : i_acl_250_afs_abort_to_error198_q = redist12_sync_together447_aunroll_x_in_c1_eni1_9_tpl_1_q;
            default : i_acl_250_afs_abort_to_error198_q = 64'b0;
        endcase
    end

    // c_i32_138422_recast_x(CONSTANT,397)
    assign c_i32_138422_recast_x_q = $unsigned(32'b00000000000000000000000010001010);

    // redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_pivot23_afs_abort_to_error126(COMPARE,195)@2
    assign i_pivot23_afs_abort_to_error126_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot23_afs_abort_to_error126_b = $unsigned({{2{c_i32_138422_recast_x_q[31]}}, c_i32_138422_recast_x_q});
    assign i_pivot23_afs_abort_to_error126_o = $unsigned($signed(i_pivot23_afs_abort_to_error126_a) - $signed(i_pivot23_afs_abort_to_error126_b));
    assign i_pivot23_afs_abort_to_error126_c[0] = i_pivot23_afs_abort_to_error126_o[33];

    // c_i32_137395_recast_x(CONSTANT,396)
    assign c_i32_137395_recast_x_q = $unsigned(32'b00000000000000000000000010001001);

    // i_pivot25_afs_abort_to_error69(COMPARE,196)@2
    assign i_pivot25_afs_abort_to_error69_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot25_afs_abort_to_error69_b = $unsigned({{2{c_i32_137395_recast_x_q[31]}}, c_i32_137395_recast_x_q});
    assign i_pivot25_afs_abort_to_error69_o = $unsigned($signed(i_pivot25_afs_abort_to_error69_a) - $signed(i_pivot25_afs_abort_to_error69_b));
    assign i_pivot25_afs_abort_to_error69_c[0] = i_pivot25_afs_abort_to_error69_o[33];

    // i_acl_251_afs_abort_to_error199(LOGICAL,36)@2
    assign i_acl_251_afs_abort_to_error199_q = i_pivot25_afs_abort_to_error69_c ^ i_pivot23_afs_abort_to_error126_c;

    // i_acl_257_afs_abort_to_error200(MUX,37)@2
    assign i_acl_257_afs_abort_to_error200_s = i_acl_251_afs_abort_to_error199_q;
    always @(i_acl_257_afs_abort_to_error200_s or i_acl_250_afs_abort_to_error198_q or redist36_sync_together447_aunroll_x_in_c1_eni1_23_tpl_1_q)
    begin
        unique case (i_acl_257_afs_abort_to_error200_s)
            1'b0 : i_acl_257_afs_abort_to_error200_q = i_acl_250_afs_abort_to_error198_q;
            1'b1 : i_acl_257_afs_abort_to_error200_q = redist36_sync_together447_aunroll_x_in_c1_eni1_23_tpl_1_q;
            default : i_acl_257_afs_abort_to_error200_q = 64'b0;
        endcase
    end

    // i_acl_258_afs_abort_to_error201(LOGICAL,38)@1 + 1
    assign i_acl_258_afs_abort_to_error201_qi = i_pivot11_afs_abort_to_error63_c ^ i_pivot17_afs_abort_to_error33_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_258_afs_abort_to_error201_delay ( .xin(i_acl_258_afs_abort_to_error201_qi), .xout(i_acl_258_afs_abort_to_error201_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_263_afs_abort_to_error202(MUX,39)@2 + 1
    assign i_acl_263_afs_abort_to_error202_s = i_acl_258_afs_abort_to_error201_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_263_afs_abort_to_error202_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_263_afs_abort_to_error202_s)
                1'b0 : i_acl_263_afs_abort_to_error202_q <= i_acl_257_afs_abort_to_error200_q;
                1'b1 : i_acl_263_afs_abort_to_error202_q <= redist10_sync_together447_aunroll_x_in_c1_eni1_8_tpl_1_q;
                default : i_acl_263_afs_abort_to_error202_q <= 64'b0;
            endcase
        end
    end

    // c_i32_139370_recast_x(CONSTANT,398)
    assign c_i32_139370_recast_x_q = $unsigned(32'b00000000000000000000000010001011);

    // i_pivot37_afs_abort_to_error19(COMPARE,202)@2 + 1
    assign i_pivot37_afs_abort_to_error19_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot37_afs_abort_to_error19_b = $unsigned({{2{c_i32_139370_recast_x_q[31]}}, c_i32_139370_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot37_afs_abort_to_error19_o <= 34'b0;
        end
        else
        begin
            i_pivot37_afs_abort_to_error19_o <= $unsigned($signed(i_pivot37_afs_abort_to_error19_a) - $signed(i_pivot37_afs_abort_to_error19_b));
        end
    end
    assign i_pivot37_afs_abort_to_error19_c[0] = i_pivot37_afs_abort_to_error19_o[33];

    // redist68_i_pivot23_afs_abort_to_error126_c_1(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_pivot23_afs_abort_to_error126_c_1_q <= '0;
        end
        else
        begin
            redist68_i_pivot23_afs_abort_to_error126_c_1_q <= $unsigned(i_pivot23_afs_abort_to_error126_c);
        end
    end

    // i_acl_266_afs_abort_to_error203(LOGICAL,40)@3
    assign i_acl_266_afs_abort_to_error203_q = redist68_i_pivot23_afs_abort_to_error126_c_1_q ^ i_pivot37_afs_abort_to_error19_c;

    // i_acl_270_afs_abort_to_error204(MUX,41)@3
    assign i_acl_270_afs_abort_to_error204_s = i_acl_266_afs_abort_to_error203_q;
    always @(i_acl_270_afs_abort_to_error204_s or i_acl_263_afs_abort_to_error202_q or redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_q)
    begin
        unique case (i_acl_270_afs_abort_to_error204_s)
            1'b0 : i_acl_270_afs_abort_to_error204_q = i_acl_263_afs_abort_to_error202_q;
            1'b1 : i_acl_270_afs_abort_to_error204_q = redist5_sync_together447_aunroll_x_in_c1_eni1_5_tpl_2_q;
            default : i_acl_270_afs_abort_to_error204_q = 64'b0;
        endcase
    end

    // i_acl_271_afs_abort_to_error205(LOGICAL,42)@2 + 1
    assign i_acl_271_afs_abort_to_error205_qi = i_pivot27_afs_abort_to_error35_c ^ i_pivot25_afs_abort_to_error69_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_271_afs_abort_to_error205_delay ( .xin(i_acl_271_afs_abort_to_error205_qi), .xout(i_acl_271_afs_abort_to_error205_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_276_afs_abort_to_error206(MUX,43)@3
    assign i_acl_276_afs_abort_to_error206_s = i_acl_271_afs_abort_to_error205_q;
    always @(i_acl_276_afs_abort_to_error206_s or i_acl_270_afs_abort_to_error204_q or redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_q)
    begin
        unique case (i_acl_276_afs_abort_to_error206_s)
            1'b0 : i_acl_276_afs_abort_to_error206_q = i_acl_270_afs_abort_to_error204_q;
            1'b1 : i_acl_276_afs_abort_to_error206_q = redist42_sync_together447_aunroll_x_in_c1_eni1_28_tpl_2_q;
            default : i_acl_276_afs_abort_to_error206_q = 64'b0;
        endcase
    end

    // c_i32_164383_recast_x(CONSTANT,420)
    assign c_i32_164383_recast_x_q = $unsigned(32'b00000000000000000000000010100100);

    // i_pivot79_afs_abort_to_error45(COMPARE,220)@2 + 1
    assign i_pivot79_afs_abort_to_error45_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot79_afs_abort_to_error45_b = $unsigned({{2{c_i32_164383_recast_x_q[31]}}, c_i32_164383_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot79_afs_abort_to_error45_o <= 34'b0;
        end
        else
        begin
            i_pivot79_afs_abort_to_error45_o <= $unsigned($signed(i_pivot79_afs_abort_to_error45_a) - $signed(i_pivot79_afs_abort_to_error45_b));
        end
    end
    assign i_pivot79_afs_abort_to_error45_c[0] = i_pivot79_afs_abort_to_error45_o[33];

    // c_i32_163404_recast_x(CONSTANT,419)
    assign c_i32_163404_recast_x_q = $unsigned(32'b00000000000000000000000010100011);

    // i_pivot73_afs_abort_to_error87(COMPARE,217)@2 + 1
    assign i_pivot73_afs_abort_to_error87_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot73_afs_abort_to_error87_b = $unsigned({{2{c_i32_163404_recast_x_q[31]}}, c_i32_163404_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot73_afs_abort_to_error87_o <= 34'b0;
        end
        else
        begin
            i_pivot73_afs_abort_to_error87_o <= $unsigned($signed(i_pivot73_afs_abort_to_error87_a) - $signed(i_pivot73_afs_abort_to_error87_b));
        end
    end
    assign i_pivot73_afs_abort_to_error87_c[0] = i_pivot73_afs_abort_to_error87_o[33];

    // i_acl_277_afs_abort_to_error207(LOGICAL,44)@3
    assign i_acl_277_afs_abort_to_error207_q = i_pivot73_afs_abort_to_error87_c ^ i_pivot79_afs_abort_to_error45_c;

    // c_i32_161372_recast_x(CONSTANT,418)
    assign c_i32_161372_recast_x_q = $unsigned(32'b00000000000000000000000010100001);

    // redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2(DELAY,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q <= $unsigned(redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q);
        end
    end

    // i_switchleaf71_afs_abort_to_error138(LOGICAL,258)@3
    assign i_switchleaf71_afs_abort_to_error138_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_161372_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_afs_abort_to_error208(LOGICAL,260)@3
    assign i_unnamed_afs_abort_to_error208_q = i_switchleaf71_afs_abort_to_error138_q | i_acl_277_afs_abort_to_error207_q;

    // i_acl_289_afs_abort_to_error209(MUX,45)@3
    assign i_acl_289_afs_abort_to_error209_s = i_unnamed_afs_abort_to_error208_q;
    always @(i_acl_289_afs_abort_to_error209_s or i_acl_276_afs_abort_to_error206_q or redist13_sync_together447_aunroll_x_in_c1_eni1_9_tpl_2_q)
    begin
        unique case (i_acl_289_afs_abort_to_error209_s)
            1'b0 : i_acl_289_afs_abort_to_error209_q = i_acl_276_afs_abort_to_error206_q;
            1'b1 : i_acl_289_afs_abort_to_error209_q = redist13_sync_together447_aunroll_x_in_c1_eni1_9_tpl_2_q;
            default : i_acl_289_afs_abort_to_error209_q = 64'b0;
        endcase
    end

    // i_pivot81_afs_abort_to_error23(COMPARE,222)@2
    assign i_pivot81_afs_abort_to_error23_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot81_afs_abort_to_error23_b = $unsigned({{2{c_i32_161372_recast_x_q[31]}}, c_i32_161372_recast_x_q});
    assign i_pivot81_afs_abort_to_error23_o = $unsigned($signed(i_pivot81_afs_abort_to_error23_a) - $signed(i_pivot81_afs_abort_to_error23_b));
    assign i_pivot81_afs_abort_to_error23_c[0] = i_pivot81_afs_abort_to_error23_o[33];

    // c_i32_160426_recast_x(CONSTANT,417)
    assign c_i32_160426_recast_x_q = $unsigned(32'b00000000000000000000000010100000);

    // i_pivot65_afs_abort_to_error136(COMPARE,214)@2
    assign i_pivot65_afs_abort_to_error136_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot65_afs_abort_to_error136_b = $unsigned({{2{c_i32_160426_recast_x_q[31]}}, c_i32_160426_recast_x_q});
    assign i_pivot65_afs_abort_to_error136_o = $unsigned($signed(i_pivot65_afs_abort_to_error136_a) - $signed(i_pivot65_afs_abort_to_error136_b));
    assign i_pivot65_afs_abort_to_error136_c[0] = i_pivot65_afs_abort_to_error136_o[33];

    // i_acl_292_afs_abort_to_error210(LOGICAL,46)@2
    assign i_acl_292_afs_abort_to_error210_q = i_pivot65_afs_abort_to_error136_c ^ i_pivot81_afs_abort_to_error23_c;

    // c_i32_168406(CONSTANT,8)
    assign c_i32_168406_q = $unsigned(32'b00000000000000000000000010101000);

    // i_pivot89_afs_abort_to_error91(COMPARE,225)@2
    assign i_pivot89_afs_abort_to_error91_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot89_afs_abort_to_error91_b = $unsigned({{2{c_i32_168406_q[31]}}, c_i32_168406_q});
    assign i_pivot89_afs_abort_to_error91_o = $unsigned($signed(i_pivot89_afs_abort_to_error91_a) - $signed(i_pivot89_afs_abort_to_error91_b));
    assign i_pivot89_afs_abort_to_error91_c[0] = i_pivot89_afs_abort_to_error91_o[33];

    // c_i32_167362_recast_x(CONSTANT,423)
    assign c_i32_167362_recast_x_q = $unsigned(32'b00000000000000000000000010100111);

    // i_pivot193_afs_abort_to_error3(COMPARE,192)@2
    assign i_pivot193_afs_abort_to_error3_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot193_afs_abort_to_error3_b = $unsigned({{2{c_i32_167362_recast_x_q[31]}}, c_i32_167362_recast_x_q});
    assign i_pivot193_afs_abort_to_error3_o = $unsigned($signed(i_pivot193_afs_abort_to_error3_a) - $signed(i_pivot193_afs_abort_to_error3_b));
    assign i_pivot193_afs_abort_to_error3_c[0] = i_pivot193_afs_abort_to_error3_o[33];

    // i_acl_301_afs_abort_to_error211(LOGICAL,47)@2
    assign i_acl_301_afs_abort_to_error211_q = i_pivot193_afs_abort_to_error3_c ^ i_pivot89_afs_abort_to_error91_c;

    // i_unnamed_afs_abort_to_error212(LOGICAL,261)@2 + 1
    assign i_unnamed_afs_abort_to_error212_qi = i_acl_301_afs_abort_to_error211_q | i_acl_292_afs_abort_to_error210_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_afs_abort_to_error212_delay ( .xin(i_unnamed_afs_abort_to_error212_qi), .xout(i_unnamed_afs_abort_to_error212_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist70_i_pivot193_afs_abort_to_error3_c_1(DELAY,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_pivot193_afs_abort_to_error3_c_1_q <= '0;
        end
        else
        begin
            redist70_i_pivot193_afs_abort_to_error3_c_1_q <= $unsigned(i_pivot193_afs_abort_to_error3_c);
        end
    end

    // c_i32_166427_recast_x(CONSTANT,422)
    assign c_i32_166427_recast_x_q = $unsigned(32'b00000000000000000000000010100110);

    // i_pivot75_afs_abort_to_error140(COMPARE,218)@2 + 1
    assign i_pivot75_afs_abort_to_error140_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot75_afs_abort_to_error140_b = $unsigned({{2{c_i32_166427_recast_x_q[31]}}, c_i32_166427_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot75_afs_abort_to_error140_o <= 34'b0;
        end
        else
        begin
            i_pivot75_afs_abort_to_error140_o <= $unsigned($signed(i_pivot75_afs_abort_to_error140_a) - $signed(i_pivot75_afs_abort_to_error140_b));
        end
    end
    assign i_pivot75_afs_abort_to_error140_c[0] = i_pivot75_afs_abort_to_error140_o[33];

    // i_acl_308_afs_abort_to_error213(LOGICAL,48)@3
    assign i_acl_308_afs_abort_to_error213_q = i_pivot75_afs_abort_to_error140_c ^ redist70_i_pivot193_afs_abort_to_error3_c_1_q;

    // i_unnamed_afs_abort_to_error214(LOGICAL,262)@3
    assign i_unnamed_afs_abort_to_error214_q = i_acl_308_afs_abort_to_error213_q | i_unnamed_afs_abort_to_error212_q;

    // i_acl_309_afs_abort_to_error215(MUX,49)@3
    assign i_acl_309_afs_abort_to_error215_s = i_unnamed_afs_abort_to_error214_q;
    always @(i_acl_309_afs_abort_to_error215_s or i_acl_289_afs_abort_to_error209_q or redist34_sync_together447_aunroll_x_in_c1_eni1_21_tpl_2_q)
    begin
        unique case (i_acl_309_afs_abort_to_error215_s)
            1'b0 : i_acl_309_afs_abort_to_error215_q = i_acl_289_afs_abort_to_error209_q;
            1'b1 : i_acl_309_afs_abort_to_error215_q = redist34_sync_together447_aunroll_x_in_c1_eni1_21_tpl_2_q;
            default : i_acl_309_afs_abort_to_error215_q = 64'b0;
        endcase
    end

    // c_i32_174435_recast_x(CONSTANT,428)
    assign c_i32_174435_recast_x_q = $unsigned(32'b00000000000000000000000010101110);

    // c_i32_4434(CONSTANT,10)
    assign c_i32_4434_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_afs_abort_to_error218(LOGICAL,263)@3
    assign i_unnamed_afs_abort_to_error218_q = redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q | c_i32_4434_q;

    // i_unnamed_afs_abort_to_error218_vt_select_1_merged_bit_select(BITSELECT,495)@3
    assign i_unnamed_afs_abort_to_error218_vt_select_1_merged_bit_select_b = i_unnamed_afs_abort_to_error218_q[1:0];
    assign i_unnamed_afs_abort_to_error218_vt_select_1_merged_bit_select_c = i_unnamed_afs_abort_to_error218_q[31:3];

    // i_unnamed_afs_abort_to_error218_vt_join(BITJOIN,265)@3
    assign i_unnamed_afs_abort_to_error218_vt_join_q = {i_unnamed_afs_abort_to_error218_vt_select_1_merged_bit_select_c, VCC_q, i_unnamed_afs_abort_to_error218_vt_select_1_merged_bit_select_b};

    // i_unnamed_afs_abort_to_error219(LOGICAL,268)@3
    assign i_unnamed_afs_abort_to_error219_q = $unsigned(i_unnamed_afs_abort_to_error218_vt_join_q == c_i32_174435_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_177436_recast_x(CONSTANT,430)
    assign c_i32_177436_recast_x_q = $unsigned(32'b00000000000000000000000010110001);

    // i_unnamed_afs_abort_to_error221(LOGICAL,269)@3
    assign i_unnamed_afs_abort_to_error221_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_177436_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_afs_abort_to_error_1_afs_abort_to_error224(LOGICAL,229)@3
    assign i_reduction_afs_abort_to_error_1_afs_abort_to_error224_q = i_unnamed_afs_abort_to_error221_q | i_unnamed_afs_abort_to_error219_q;

    // c_i32_179407_recast_x(CONSTANT,432)
    assign c_i32_179407_recast_x_q = $unsigned(32'b00000000000000000000000010110011);

    // i_pivot107_afs_abort_to_error93(COMPARE,158)@2 + 1
    assign i_pivot107_afs_abort_to_error93_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot107_afs_abort_to_error93_b = $unsigned({{2{c_i32_179407_recast_x_q[31]}}, c_i32_179407_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot107_afs_abort_to_error93_o <= 34'b0;
        end
        else
        begin
            i_pivot107_afs_abort_to_error93_o <= $unsigned($signed(i_pivot107_afs_abort_to_error93_a) - $signed(i_pivot107_afs_abort_to_error93_b));
        end
    end
    assign i_pivot107_afs_abort_to_error93_c[0] = i_pivot107_afs_abort_to_error93_o[33];

    // c_i32_178367_recast_x(CONSTANT,431)
    assign c_i32_178367_recast_x_q = $unsigned(32'b00000000000000000000000010110010);

    // i_pivot133_afs_abort_to_error13(COMPARE,168)@2 + 1
    assign i_pivot133_afs_abort_to_error13_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot133_afs_abort_to_error13_b = $unsigned({{2{c_i32_178367_recast_x_q[31]}}, c_i32_178367_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot133_afs_abort_to_error13_o <= 34'b0;
        end
        else
        begin
            i_pivot133_afs_abort_to_error13_o <= $unsigned($signed(i_pivot133_afs_abort_to_error13_a) - $signed(i_pivot133_afs_abort_to_error13_b));
        end
    end
    assign i_pivot133_afs_abort_to_error13_c[0] = i_pivot133_afs_abort_to_error13_o[33];

    // i_acl_312_afs_abort_to_error216(LOGICAL,50)@3
    assign i_acl_312_afs_abort_to_error216_q = i_pivot133_afs_abort_to_error13_c ^ i_pivot107_afs_abort_to_error93_c;

    // c_i32_180384_recast_x(CONSTANT,433)
    assign c_i32_180384_recast_x_q = $unsigned(32'b00000000000000000000000010110100);

    // i_pivot117_afs_abort_to_error47(COMPARE,161)@2 + 1
    assign i_pivot117_afs_abort_to_error47_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot117_afs_abort_to_error47_b = $unsigned({{2{c_i32_180384_recast_x_q[31]}}, c_i32_180384_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot117_afs_abort_to_error47_o <= 34'b0;
        end
        else
        begin
            i_pivot117_afs_abort_to_error47_o <= $unsigned($signed(i_pivot117_afs_abort_to_error47_a) - $signed(i_pivot117_afs_abort_to_error47_b));
        end
    end
    assign i_pivot117_afs_abort_to_error47_c[0] = i_pivot117_afs_abort_to_error47_o[33];

    // i_acl_316_afs_abort_to_error217(LOGICAL,51)@3
    assign i_acl_316_afs_abort_to_error217_q = i_pivot107_afs_abort_to_error93_c ^ i_pivot117_afs_abort_to_error47_c;

    // i_reduction_afs_abort_to_error_0_afs_abort_to_error223(LOGICAL,228)@3
    assign i_reduction_afs_abort_to_error_0_afs_abort_to_error223_q = i_acl_316_afs_abort_to_error217_q | i_acl_312_afs_abort_to_error216_q;

    // i_reduction_afs_abort_to_error_2_afs_abort_to_error225(LOGICAL,230)@3
    assign i_reduction_afs_abort_to_error_2_afs_abort_to_error225_q = i_reduction_afs_abort_to_error_0_afs_abort_to_error223_q | i_reduction_afs_abort_to_error_1_afs_abort_to_error224_q;

    // i_acl_340_afs_abort_to_error226(MUX,52)@3
    assign i_acl_340_afs_abort_to_error226_s = i_reduction_afs_abort_to_error_2_afs_abort_to_error225_q;
    always @(i_acl_340_afs_abort_to_error226_s or i_acl_309_afs_abort_to_error215_q or redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_q)
    begin
        unique case (i_acl_340_afs_abort_to_error226_s)
            1'b0 : i_acl_340_afs_abort_to_error226_q = i_acl_309_afs_abort_to_error215_q;
            1'b1 : i_acl_340_afs_abort_to_error226_q = redist18_sync_together447_aunroll_x_in_c1_eni1_11_tpl_2_q;
            default : i_acl_340_afs_abort_to_error226_q = 64'b0;
        endcase
    end

    // c_i32_157382_recast_x(CONSTANT,415)
    assign c_i32_157382_recast_x_q = $unsigned(32'b00000000000000000000000010011101);

    // i_pivot69_afs_abort_to_error43(COMPARE,216)@2
    assign i_pivot69_afs_abort_to_error43_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot69_afs_abort_to_error43_b = $unsigned({{2{c_i32_157382_recast_x_q[31]}}, c_i32_157382_recast_x_q});
    assign i_pivot69_afs_abort_to_error43_o = $unsigned($signed(i_pivot69_afs_abort_to_error43_a) - $signed(i_pivot69_afs_abort_to_error43_b));
    assign i_pivot69_afs_abort_to_error43_c[0] = i_pivot69_afs_abort_to_error43_o[33];

    // c_i32_156402_recast_x(CONSTANT,414)
    assign c_i32_156402_recast_x_q = $unsigned(32'b00000000000000000000000010011100);

    // i_pivot61_afs_abort_to_error83(COMPARE,213)@2
    assign i_pivot61_afs_abort_to_error83_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot61_afs_abort_to_error83_b = $unsigned({{2{c_i32_156402_recast_x_q[31]}}, c_i32_156402_recast_x_q});
    assign i_pivot61_afs_abort_to_error83_o = $unsigned($signed(i_pivot61_afs_abort_to_error83_a) - $signed(i_pivot61_afs_abort_to_error83_b));
    assign i_pivot61_afs_abort_to_error83_c[0] = i_pivot61_afs_abort_to_error83_o[33];

    // i_acl_341_afs_abort_to_error227(LOGICAL,53)@2 + 1
    assign i_acl_341_afs_abort_to_error227_qi = i_pivot61_afs_abort_to_error83_c ^ i_pivot69_afs_abort_to_error43_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_341_afs_abort_to_error227_delay ( .xin(i_acl_341_afs_abort_to_error227_qi), .xout(i_acl_341_afs_abort_to_error227_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_346_afs_abort_to_error228(MUX,54)@3 + 1
    assign i_acl_346_afs_abort_to_error228_s = i_acl_341_afs_abort_to_error227_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_346_afs_abort_to_error228_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_346_afs_abort_to_error228_s)
                1'b0 : i_acl_346_afs_abort_to_error228_q <= i_acl_340_afs_abort_to_error226_q;
                1'b1 : i_acl_346_afs_abort_to_error228_q <= redist16_sync_together447_aunroll_x_in_c1_eni1_10_tpl_2_q;
                default : i_acl_346_afs_abort_to_error228_q <= 64'b0;
            endcase
        end
    end

    // dupName_1_comparator_x(LOGICAL,482)@3 + 1
    assign dupName_1_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_168406_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_158403(CONSTANT,7)
    assign c_i32_158403_q = $unsigned(32'b00000000000000000000000010011110);

    // dupName_0_comparator_x(LOGICAL,463)@3 + 1
    assign dupName_0_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_158403_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_154366(CONSTANT,6)
    assign c_i32_154366_q = $unsigned(32'b00000000000000000000000010011010);

    // comparator(LOGICAL,17)@3 + 1
    assign comparator_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_154366_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230(SELECTOR,152)@4
    always @(comparator_q or redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_q or dupName_0_comparator_x_q or dupName_1_comparator_x_q or redist14_sync_together447_aunroll_x_in_c1_eni1_9_tpl_3_q or i_acl_346_afs_abort_to_error228_q)
    begin
        i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230_q = i_acl_346_afs_abort_to_error228_q;
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230_q = redist14_sync_together447_aunroll_x_in_c1_eni1_9_tpl_3_q;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230_q = redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230_q = redist30_sync_together447_aunroll_x_in_c1_eni1_19_tpl_3_q;
        end
    end

    // i_unnamed_afs_abort_to_error232(LOGICAL,270)@3
    assign i_unnamed_afs_abort_to_error232_q = $unsigned(i_unnamed_afs_abort_to_error218_vt_join_q == c_i32_180384_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_172438_recast_x(CONSTANT,427)
    assign c_i32_172438_recast_x_q = $unsigned(32'b00000000000000000000000010101100);

    // i_unnamed_afs_abort_to_error234(LOGICAL,271)@3
    assign i_unnamed_afs_abort_to_error234_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_172438_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_afs_abort_to_error_4_afs_abort_to_error238(LOGICAL,232)@3
    assign i_reduction_afs_abort_to_error_4_afs_abort_to_error238_q = i_unnamed_afs_abort_to_error234_q | i_unnamed_afs_abort_to_error232_q;

    // i_pivot83_afs_abort_to_error11(COMPARE,223)@3
    assign i_pivot83_afs_abort_to_error11_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot83_afs_abort_to_error11_b = $unsigned({{2{c_i32_154366_q[31]}}, c_i32_154366_q});
    assign i_pivot83_afs_abort_to_error11_o = $unsigned($signed(i_pivot83_afs_abort_to_error11_a) - $signed(i_pivot83_afs_abort_to_error11_b));
    assign i_pivot83_afs_abort_to_error11_c[0] = i_pivot83_afs_abort_to_error11_o[33];

    // c_i32_153425_recast_x(CONSTANT,412)
    assign c_i32_153425_recast_x_q = $unsigned(32'b00000000000000000000000010011001);

    // i_pivot51_afs_abort_to_error132(COMPARE,209)@3
    assign i_pivot51_afs_abort_to_error132_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot51_afs_abort_to_error132_b = $unsigned({{2{c_i32_153425_recast_x_q[31]}}, c_i32_153425_recast_x_q});
    assign i_pivot51_afs_abort_to_error132_o = $unsigned($signed(i_pivot51_afs_abort_to_error132_a) - $signed(i_pivot51_afs_abort_to_error132_b));
    assign i_pivot51_afs_abort_to_error132_c[0] = i_pivot51_afs_abort_to_error132_o[33];

    // i_acl_379_afs_abort_to_error231(LOGICAL,55)@3
    assign i_acl_379_afs_abort_to_error231_q = i_pivot51_afs_abort_to_error132_c ^ i_pivot83_afs_abort_to_error11_c;

    // c_i32_165405_recast_x(CONSTANT,421)
    assign c_i32_165405_recast_x_q = $unsigned(32'b00000000000000000000000010100101);

    // i_pivot77_afs_abort_to_error89(COMPARE,219)@3
    assign i_pivot77_afs_abort_to_error89_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot77_afs_abort_to_error89_b = $unsigned({{2{c_i32_165405_recast_x_q[31]}}, c_i32_165405_recast_x_q});
    assign i_pivot77_afs_abort_to_error89_o = $unsigned($signed(i_pivot77_afs_abort_to_error89_a) - $signed(i_pivot77_afs_abort_to_error89_b));
    assign i_pivot77_afs_abort_to_error89_c[0] = i_pivot77_afs_abort_to_error89_o[33];

    // i_acl_397_afs_abort_to_error236(LOGICAL,56)@3
    assign i_acl_397_afs_abort_to_error236_q = i_pivot79_afs_abort_to_error45_c ^ i_pivot77_afs_abort_to_error89_c;

    // i_reduction_afs_abort_to_error_3_afs_abort_to_error237(LOGICAL,231)@3
    assign i_reduction_afs_abort_to_error_3_afs_abort_to_error237_q = i_acl_397_afs_abort_to_error236_q | i_acl_379_afs_abort_to_error231_q;

    // i_reduction_afs_abort_to_error_5_afs_abort_to_error239(LOGICAL,233)@3 + 1
    assign i_reduction_afs_abort_to_error_5_afs_abort_to_error239_qi = i_reduction_afs_abort_to_error_3_afs_abort_to_error237_q | i_reduction_afs_abort_to_error_4_afs_abort_to_error238_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_afs_abort_to_error_5_afs_abort_to_error239_delay ( .xin(i_reduction_afs_abort_to_error_5_afs_abort_to_error239_qi), .xout(i_reduction_afs_abort_to_error_5_afs_abort_to_error239_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_402_afs_abort_to_error240(MUX,57)@4
    assign i_acl_402_afs_abort_to_error240_s = i_reduction_afs_abort_to_error_5_afs_abort_to_error239_q;
    always @(i_acl_402_afs_abort_to_error240_s or i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230_q or redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q)
    begin
        unique case (i_acl_402_afs_abort_to_error240_s)
            1'b0 : i_acl_402_afs_abort_to_error240_q = i_llvm_fpga_case_p1024i32_i32_v3i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_0s_case_stmt_afs_abort_to_error230_q;
            1'b1 : i_acl_402_afs_abort_to_error240_q = redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q;
            default : i_acl_402_afs_abort_to_error240_q = 64'b0;
        endcase
    end

    // i_acl_403_afs_abort_to_error241(LOGICAL,58)@3 + 1
    assign i_acl_403_afs_abort_to_error241_qi = i_pivot77_afs_abort_to_error89_c ^ i_pivot75_afs_abort_to_error140_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_403_afs_abort_to_error241_delay ( .xin(i_acl_403_afs_abort_to_error241_qi), .xout(i_acl_403_afs_abort_to_error241_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_409_afs_abort_to_error242(MUX,59)@4
    assign i_acl_409_afs_abort_to_error242_s = i_acl_403_afs_abort_to_error241_q;
    always @(i_acl_409_afs_abort_to_error242_s or i_acl_402_afs_abort_to_error240_q or redist6_sync_together447_aunroll_x_in_c1_eni1_5_tpl_3_q)
    begin
        unique case (i_acl_409_afs_abort_to_error242_s)
            1'b0 : i_acl_409_afs_abort_to_error242_q = i_acl_402_afs_abort_to_error240_q;
            1'b1 : i_acl_409_afs_abort_to_error242_q = redist6_sync_together447_aunroll_x_in_c1_eni1_5_tpl_3_q;
            default : i_acl_409_afs_abort_to_error242_q = 64'b0;
        endcase
    end

    // c_i32_171439_recast_x(CONSTANT,426)
    assign c_i32_171439_recast_x_q = $unsigned(32'b00000000000000000000000010101011);

    // i_unnamed_afs_abort_to_error243(LOGICAL,272)@3 + 1
    assign i_unnamed_afs_abort_to_error243_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_171439_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_afs_abort_to_error243_delay ( .xin(i_unnamed_afs_abort_to_error243_qi), .xout(i_unnamed_afs_abort_to_error243_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_416_afs_abort_to_error245(MUX,60)@4
    assign i_acl_416_afs_abort_to_error245_s = i_unnamed_afs_abort_to_error243_q;
    always @(i_acl_416_afs_abort_to_error245_s or i_acl_409_afs_abort_to_error242_q or redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_q)
    begin
        unique case (i_acl_416_afs_abort_to_error245_s)
            1'b0 : i_acl_416_afs_abort_to_error245_q = i_acl_409_afs_abort_to_error242_q;
            1'b1 : i_acl_416_afs_abort_to_error245_q = redist4_sync_together447_aunroll_x_in_c1_eni1_4_tpl_3_mem_q;
            default : i_acl_416_afs_abort_to_error245_q = 64'b0;
        endcase
    end

    // c_i32_175441_recast_x(CONSTANT,429)
    assign c_i32_175441_recast_x_q = $unsigned(32'b00000000000000000000000010101111);

    // c_i32_2440(CONSTANT,9)
    assign c_i32_2440_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_afs_abort_to_error246(LOGICAL,273)@3
    assign i_unnamed_afs_abort_to_error246_q = redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q | c_i32_2440_q;

    // i_unnamed_afs_abort_to_error246_vt_select_0_merged_bit_select(BITSELECT,496)@3
    assign i_unnamed_afs_abort_to_error246_vt_select_0_merged_bit_select_b = i_unnamed_afs_abort_to_error246_q[0:0];
    assign i_unnamed_afs_abort_to_error246_vt_select_0_merged_bit_select_c = i_unnamed_afs_abort_to_error246_q[31:2];

    // i_unnamed_afs_abort_to_error246_vt_join(BITJOIN,275)@3
    assign i_unnamed_afs_abort_to_error246_vt_join_q = {i_unnamed_afs_abort_to_error246_vt_select_0_merged_bit_select_c, VCC_q, i_unnamed_afs_abort_to_error246_vt_select_0_merged_bit_select_b};

    // i_unnamed_afs_abort_to_error247(LOGICAL,278)@3 + 1
    assign i_unnamed_afs_abort_to_error247_qi = $unsigned(i_unnamed_afs_abort_to_error246_vt_join_q == c_i32_175441_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_afs_abort_to_error247_delay ( .xin(i_unnamed_afs_abort_to_error247_qi), .xout(i_unnamed_afs_abort_to_error247_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_428_afs_abort_to_error249(MUX,61)@4
    assign i_acl_428_afs_abort_to_error249_s = i_unnamed_afs_abort_to_error247_q;
    always @(i_acl_428_afs_abort_to_error249_s or i_acl_416_afs_abort_to_error245_q or redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q)
    begin
        unique case (i_acl_428_afs_abort_to_error249_s)
            1'b0 : i_acl_428_afs_abort_to_error249_q = i_acl_416_afs_abort_to_error245_q;
            1'b1 : i_acl_428_afs_abort_to_error249_q = redist19_sync_together447_aunroll_x_in_c1_eni1_11_tpl_3_q;
            default : i_acl_428_afs_abort_to_error249_q = 64'b0;
        endcase
    end

    // c_i32_49733377428_recast_x(CONSTANT,437)
    assign c_i32_49733377428_recast_x_q = $unsigned(32'b00000010111101101101111100000001);

    // i_pivot113_afs_abort_to_error144(COMPARE,159)@3
    assign i_pivot113_afs_abort_to_error144_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot113_afs_abort_to_error144_b = $unsigned({{2{c_i32_49733377428_recast_x_q[31]}}, c_i32_49733377428_recast_x_q});
    assign i_pivot113_afs_abort_to_error144_o = $unsigned($signed(i_pivot113_afs_abort_to_error144_a) - $signed(i_pivot113_afs_abort_to_error144_b));
    assign i_pivot113_afs_abort_to_error144_c[0] = i_pivot113_afs_abort_to_error144_o[33];

    // c_i32_49733376408_recast_x(CONSTANT,436)
    assign c_i32_49733376408_recast_x_q = $unsigned(32'b00000010111101101101111100000000);

    // i_pivot115_afs_abort_to_error95(COMPARE,160)@3
    assign i_pivot115_afs_abort_to_error95_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot115_afs_abort_to_error95_b = $unsigned({{2{c_i32_49733376408_recast_x_q[31]}}, c_i32_49733376408_recast_x_q});
    assign i_pivot115_afs_abort_to_error95_o = $unsigned($signed(i_pivot115_afs_abort_to_error95_a) - $signed(i_pivot115_afs_abort_to_error95_b));
    assign i_pivot115_afs_abort_to_error95_c[0] = i_pivot115_afs_abort_to_error95_o[33];

    // i_acl_429_afs_abort_to_error250(LOGICAL,62)@3 + 1
    assign i_acl_429_afs_abort_to_error250_qi = i_pivot115_afs_abort_to_error95_c ^ i_pivot113_afs_abort_to_error144_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_429_afs_abort_to_error250_delay ( .xin(i_acl_429_afs_abort_to_error250_qi), .xout(i_acl_429_afs_abort_to_error250_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_435_afs_abort_to_error251(MUX,63)@4 + 1
    assign i_acl_435_afs_abort_to_error251_s = i_acl_429_afs_abort_to_error250_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_435_afs_abort_to_error251_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_435_afs_abort_to_error251_s)
                1'b0 : i_acl_435_afs_abort_to_error251_q <= i_acl_428_afs_abort_to_error249_q;
                1'b1 : i_acl_435_afs_abort_to_error251_q <= redist43_sync_together447_aunroll_x_in_c1_eni1_29_tpl_3_mem_q;
                default : i_acl_435_afs_abort_to_error251_q <= 64'b0;
            endcase
        end
    end

    // i_switchleaf111_afs_abort_to_error171(LOGICAL,239)@3
    assign i_switchleaf111_afs_abort_to_error171_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733377428_recast_x_q ? 1'b1 : 1'b0);

    // redist65_i_switchleaf111_afs_abort_to_error171_q_2(DELAY,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_switchleaf111_afs_abort_to_error171_q_2_delay_0 <= '0;
            redist65_i_switchleaf111_afs_abort_to_error171_q_2_q <= '0;
        end
        else
        begin
            redist65_i_switchleaf111_afs_abort_to_error171_q_2_delay_0 <= $unsigned(i_switchleaf111_afs_abort_to_error171_q);
            redist65_i_switchleaf111_afs_abort_to_error171_q_2_q <= redist65_i_switchleaf111_afs_abort_to_error171_q_2_delay_0;
        end
    end

    // i_acl_443_afs_abort_to_error252(MUX,64)@5
    assign i_acl_443_afs_abort_to_error252_s = redist65_i_switchleaf111_afs_abort_to_error171_q_2_q;
    always @(i_acl_443_afs_abort_to_error252_s or i_acl_435_afs_abort_to_error251_q or redist31_sync_together447_aunroll_x_in_c1_eni1_19_tpl_4_q)
    begin
        unique case (i_acl_443_afs_abort_to_error252_s)
            1'b0 : i_acl_443_afs_abort_to_error252_q = i_acl_435_afs_abort_to_error251_q;
            1'b1 : i_acl_443_afs_abort_to_error252_q = redist31_sync_together447_aunroll_x_in_c1_eni1_19_tpl_4_q;
            default : i_acl_443_afs_abort_to_error252_q = 64'b0;
        endcase
    end

    // c_i32_49733380373_recast_x(CONSTANT,438)
    assign c_i32_49733380373_recast_x_q = $unsigned(32'b00000010111101101101111100000100);

    // i_switchleaf119_afs_abort_to_error146(LOGICAL,241)@3
    assign i_switchleaf119_afs_abort_to_error146_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733380373_recast_x_q ? 1'b1 : 1'b0);

    // redist64_i_switchleaf119_afs_abort_to_error146_q_2(DELAY,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_switchleaf119_afs_abort_to_error146_q_2_delay_0 <= '0;
            redist64_i_switchleaf119_afs_abort_to_error146_q_2_q <= '0;
        end
        else
        begin
            redist64_i_switchleaf119_afs_abort_to_error146_q_2_delay_0 <= $unsigned(i_switchleaf119_afs_abort_to_error146_q);
            redist64_i_switchleaf119_afs_abort_to_error146_q_2_q <= redist64_i_switchleaf119_afs_abort_to_error146_q_2_delay_0;
        end
    end

    // i_acl_450_afs_abort_to_error253(MUX,65)@5
    assign i_acl_450_afs_abort_to_error253_s = redist64_i_switchleaf119_afs_abort_to_error146_q_2_q;
    always @(i_acl_450_afs_abort_to_error253_s or i_acl_443_afs_abort_to_error252_q or redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_q)
    begin
        unique case (i_acl_450_afs_abort_to_error253_s)
            1'b0 : i_acl_450_afs_abort_to_error253_q = i_acl_443_afs_abort_to_error252_q;
            1'b1 : i_acl_450_afs_abort_to_error253_q = redist22_sync_together447_aunroll_x_in_c1_eni1_12_tpl_4_mem_q;
            default : i_acl_450_afs_abort_to_error253_q = 64'b0;
        endcase
    end

    // c_i32_49733387385_recast_x(CONSTANT,440)
    assign c_i32_49733387385_recast_x_q = $unsigned(32'b00000010111101101101111100001011);

    // i_pivot129_afs_abort_to_error49(COMPARE,166)@3
    assign i_pivot129_afs_abort_to_error49_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot129_afs_abort_to_error49_b = $unsigned({{2{c_i32_49733387385_recast_x_q[31]}}, c_i32_49733387385_recast_x_q});
    assign i_pivot129_afs_abort_to_error49_o = $unsigned($signed(i_pivot129_afs_abort_to_error49_a) - $signed(i_pivot129_afs_abort_to_error49_b));
    assign i_pivot129_afs_abort_to_error49_c[0] = i_pivot129_afs_abort_to_error49_o[33];

    // c_i32_49733386409_recast_x(CONSTANT,439)
    assign c_i32_49733386409_recast_x_q = $unsigned(32'b00000010111101101101111100001010);

    // i_pivot121_afs_abort_to_error97(COMPARE,163)@3
    assign i_pivot121_afs_abort_to_error97_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot121_afs_abort_to_error97_b = $unsigned({{2{c_i32_49733386409_recast_x_q[31]}}, c_i32_49733386409_recast_x_q});
    assign i_pivot121_afs_abort_to_error97_o = $unsigned($signed(i_pivot121_afs_abort_to_error97_a) - $signed(i_pivot121_afs_abort_to_error97_b));
    assign i_pivot121_afs_abort_to_error97_c[0] = i_pivot121_afs_abort_to_error97_o[33];

    // i_acl_451_afs_abort_to_error254(LOGICAL,66)@3 + 1
    assign i_acl_451_afs_abort_to_error254_qi = i_pivot121_afs_abort_to_error97_c ^ i_pivot129_afs_abort_to_error49_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_451_afs_abort_to_error254_delay ( .xin(i_acl_451_afs_abort_to_error254_qi), .xout(i_acl_451_afs_abort_to_error254_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist89_i_acl_451_afs_abort_to_error254_q_2(DELAY,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_acl_451_afs_abort_to_error254_q_2_q <= '0;
        end
        else
        begin
            redist89_i_acl_451_afs_abort_to_error254_q_2_q <= $unsigned(i_acl_451_afs_abort_to_error254_q);
        end
    end

    // i_acl_456_afs_abort_to_error255(MUX,67)@5
    assign i_acl_456_afs_abort_to_error255_s = redist89_i_acl_451_afs_abort_to_error254_q_2_q;
    always @(i_acl_456_afs_abort_to_error255_s or i_acl_450_afs_abort_to_error253_q or redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_q)
    begin
        unique case (i_acl_456_afs_abort_to_error255_s)
            1'b0 : i_acl_456_afs_abort_to_error255_q = i_acl_450_afs_abort_to_error253_q;
            1'b1 : i_acl_456_afs_abort_to_error255_q = redist3_sync_together447_aunroll_x_in_c1_eni1_3_tpl_4_mem_q;
            default : i_acl_456_afs_abort_to_error255_q = 64'b0;
        endcase
    end

    // c_i32_49733388410_recast_x(CONSTANT,441)
    assign c_i32_49733388410_recast_x_q = $unsigned(32'b00000010111101101101111100001100);

    // i_pivot127_afs_abort_to_error99(COMPARE,165)@3
    assign i_pivot127_afs_abort_to_error99_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot127_afs_abort_to_error99_b = $unsigned({{2{c_i32_49733388410_recast_x_q[31]}}, c_i32_49733388410_recast_x_q});
    assign i_pivot127_afs_abort_to_error99_o = $unsigned($signed(i_pivot127_afs_abort_to_error99_a) - $signed(i_pivot127_afs_abort_to_error99_b));
    assign i_pivot127_afs_abort_to_error99_c[0] = i_pivot127_afs_abort_to_error99_o[33];

    // i_acl_457_afs_abort_to_error256(LOGICAL,68)@3 + 1
    assign i_acl_457_afs_abort_to_error256_qi = i_pivot129_afs_abort_to_error49_c ^ i_pivot127_afs_abort_to_error99_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_457_afs_abort_to_error256_delay ( .xin(i_acl_457_afs_abort_to_error256_qi), .xout(i_acl_457_afs_abort_to_error256_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist88_i_acl_457_afs_abort_to_error256_q_2(DELAY,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_acl_457_afs_abort_to_error256_q_2_q <= '0;
        end
        else
        begin
            redist88_i_acl_457_afs_abort_to_error256_q_2_q <= $unsigned(i_acl_457_afs_abort_to_error256_q);
        end
    end

    // i_acl_462_afs_abort_to_error257(MUX,69)@5
    assign i_acl_462_afs_abort_to_error257_s = redist88_i_acl_457_afs_abort_to_error256_q_2_q;
    always @(i_acl_462_afs_abort_to_error257_s or i_acl_456_afs_abort_to_error255_q or redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_q)
    begin
        unique case (i_acl_462_afs_abort_to_error257_s)
            1'b0 : i_acl_462_afs_abort_to_error257_q = i_acl_456_afs_abort_to_error255_q;
            1'b1 : i_acl_462_afs_abort_to_error257_q = redist35_sync_together447_aunroll_x_in_c1_eni1_22_tpl_4_mem_q;
            default : i_acl_462_afs_abort_to_error257_q = 64'b0;
        endcase
    end

    // c_i32_49733392364_recast_x(CONSTANT,443)
    assign c_i32_49733392364_recast_x_q = $unsigned(32'b00000010111101101101111100010000);

    // i_pivot191_afs_abort_to_error7(COMPARE,191)@3 + 1
    assign i_pivot191_afs_abort_to_error7_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot191_afs_abort_to_error7_b = $unsigned({{2{c_i32_49733392364_recast_x_q[31]}}, c_i32_49733392364_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot191_afs_abort_to_error7_o <= 34'b0;
        end
        else
        begin
            i_pivot191_afs_abort_to_error7_o <= $unsigned($signed(i_pivot191_afs_abort_to_error7_a) - $signed(i_pivot191_afs_abort_to_error7_b));
        end
    end
    assign i_pivot191_afs_abort_to_error7_c[0] = i_pivot191_afs_abort_to_error7_o[33];

    // c_i32_49733391429_recast_x(CONSTANT,442)
    assign c_i32_49733391429_recast_x_q = $unsigned(32'b00000010111101101101111100001111);

    // i_pivot125_afs_abort_to_error148(COMPARE,164)@3
    assign i_pivot125_afs_abort_to_error148_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot125_afs_abort_to_error148_b = $unsigned({{2{c_i32_49733391429_recast_x_q[31]}}, c_i32_49733391429_recast_x_q});
    assign i_pivot125_afs_abort_to_error148_o = $unsigned($signed(i_pivot125_afs_abort_to_error148_a) - $signed(i_pivot125_afs_abort_to_error148_b));
    assign i_pivot125_afs_abort_to_error148_c[0] = i_pivot125_afs_abort_to_error148_o[33];

    // redist73_i_pivot125_afs_abort_to_error148_c_1(DELAY,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_pivot125_afs_abort_to_error148_c_1_q <= '0;
        end
        else
        begin
            redist73_i_pivot125_afs_abort_to_error148_c_1_q <= $unsigned(i_pivot125_afs_abort_to_error148_c);
        end
    end

    // i_acl_467_afs_abort_to_error258(LOGICAL,70)@4 + 1
    assign i_acl_467_afs_abort_to_error258_qi = redist73_i_pivot125_afs_abort_to_error148_c_1_q ^ i_pivot191_afs_abort_to_error7_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_467_afs_abort_to_error258_delay ( .xin(i_acl_467_afs_abort_to_error258_qi), .xout(i_acl_467_afs_abort_to_error258_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_469_afs_abort_to_error259(MUX,71)@5
    assign i_acl_469_afs_abort_to_error259_s = i_acl_467_afs_abort_to_error258_q;
    always @(i_acl_469_afs_abort_to_error259_s or i_acl_462_afs_abort_to_error257_q or redist7_sync_together447_aunroll_x_in_c1_eni1_5_tpl_4_q)
    begin
        unique case (i_acl_469_afs_abort_to_error259_s)
            1'b0 : i_acl_469_afs_abort_to_error259_q = i_acl_462_afs_abort_to_error257_q;
            1'b1 : i_acl_469_afs_abort_to_error259_q = redist7_sync_together447_aunroll_x_in_c1_eni1_5_tpl_4_q;
            default : i_acl_469_afs_abort_to_error259_q = 64'b0;
        endcase
    end

    // c_i32_49733393411_recast_x(CONSTANT,444)
    assign c_i32_49733393411_recast_x_q = $unsigned(32'b00000010111101101101111100010001);

    // i_pivot135_afs_abort_to_error101(COMPARE,169)@3 + 1
    assign i_pivot135_afs_abort_to_error101_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot135_afs_abort_to_error101_b = $unsigned({{2{c_i32_49733393411_recast_x_q[31]}}, c_i32_49733393411_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot135_afs_abort_to_error101_o <= 34'b0;
        end
        else
        begin
            i_pivot135_afs_abort_to_error101_o <= $unsigned($signed(i_pivot135_afs_abort_to_error101_a) - $signed(i_pivot135_afs_abort_to_error101_b));
        end
    end
    assign i_pivot135_afs_abort_to_error101_c[0] = i_pivot135_afs_abort_to_error101_o[33];

    // i_acl_473_afs_abort_to_error260(LOGICAL,72)@4 + 1
    assign i_acl_473_afs_abort_to_error260_qi = i_pivot191_afs_abort_to_error7_c ^ i_pivot135_afs_abort_to_error101_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_473_afs_abort_to_error260_delay ( .xin(i_acl_473_afs_abort_to_error260_qi), .xout(i_acl_473_afs_abort_to_error260_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_475_afs_abort_to_error261(MUX,73)@5
    assign i_acl_475_afs_abort_to_error261_s = i_acl_473_afs_abort_to_error260_q;
    always @(i_acl_475_afs_abort_to_error261_s or i_acl_469_afs_abort_to_error259_q or redist15_sync_together447_aunroll_x_in_c1_eni1_9_tpl_4_q)
    begin
        unique case (i_acl_475_afs_abort_to_error261_s)
            1'b0 : i_acl_475_afs_abort_to_error261_q = i_acl_469_afs_abort_to_error259_q;
            1'b1 : i_acl_475_afs_abort_to_error261_q = redist15_sync_together447_aunroll_x_in_c1_eni1_9_tpl_4_q;
            default : i_acl_475_afs_abort_to_error261_q = 64'b0;
        endcase
    end

    // c_i32_49733394386_recast_x(CONSTANT,445)
    assign c_i32_49733394386_recast_x_q = $unsigned(32'b00000010111101101101111100010010);

    // i_pivot141_afs_abort_to_error51(COMPARE,173)@3 + 1
    assign i_pivot141_afs_abort_to_error51_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot141_afs_abort_to_error51_b = $unsigned({{2{c_i32_49733394386_recast_x_q[31]}}, c_i32_49733394386_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot141_afs_abort_to_error51_o <= 34'b0;
        end
        else
        begin
            i_pivot141_afs_abort_to_error51_o <= $unsigned($signed(i_pivot141_afs_abort_to_error51_a) - $signed(i_pivot141_afs_abort_to_error51_b));
        end
    end
    assign i_pivot141_afs_abort_to_error51_c[0] = i_pivot141_afs_abort_to_error51_o[33];

    // i_acl_476_afs_abort_to_error262(LOGICAL,74)@4 + 1
    assign i_acl_476_afs_abort_to_error262_qi = i_pivot135_afs_abort_to_error101_c ^ i_pivot141_afs_abort_to_error51_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_476_afs_abort_to_error262_delay ( .xin(i_acl_476_afs_abort_to_error262_qi), .xout(i_acl_476_afs_abort_to_error262_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_481_afs_abort_to_error263(MUX,75)@5 + 1
    assign i_acl_481_afs_abort_to_error263_s = i_acl_476_afs_abort_to_error262_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_481_afs_abort_to_error263_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_481_afs_abort_to_error263_s)
                1'b0 : i_acl_481_afs_abort_to_error263_q <= i_acl_475_afs_abort_to_error261_q;
                1'b1 : i_acl_481_afs_abort_to_error263_q <= redist50_sync_together447_aunroll_x_in_c1_eni1_36_tpl_4_mem_q;
                default : i_acl_481_afs_abort_to_error263_q <= 64'b0;
            endcase
        end
    end

    // c_i32_49733395412_recast_x(CONSTANT,446)
    assign c_i32_49733395412_recast_x_q = $unsigned(32'b00000010111101101101111100010011);

    // i_pivot139_afs_abort_to_error103(COMPARE,171)@3 + 1
    assign i_pivot139_afs_abort_to_error103_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot139_afs_abort_to_error103_b = $unsigned({{2{c_i32_49733395412_recast_x_q[31]}}, c_i32_49733395412_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot139_afs_abort_to_error103_o <= 34'b0;
        end
        else
        begin
            i_pivot139_afs_abort_to_error103_o <= $unsigned($signed(i_pivot139_afs_abort_to_error103_a) - $signed(i_pivot139_afs_abort_to_error103_b));
        end
    end
    assign i_pivot139_afs_abort_to_error103_c[0] = i_pivot139_afs_abort_to_error103_o[33];

    // i_acl_482_afs_abort_to_error264(LOGICAL,76)@4 + 1
    assign i_acl_482_afs_abort_to_error264_qi = i_pivot141_afs_abort_to_error51_c ^ i_pivot139_afs_abort_to_error103_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_482_afs_abort_to_error264_delay ( .xin(i_acl_482_afs_abort_to_error264_qi), .xout(i_acl_482_afs_abort_to_error264_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist87_i_acl_482_afs_abort_to_error264_q_2(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_acl_482_afs_abort_to_error264_q_2_q <= '0;
        end
        else
        begin
            redist87_i_acl_482_afs_abort_to_error264_q_2_q <= $unsigned(i_acl_482_afs_abort_to_error264_q);
        end
    end

    // i_acl_487_afs_abort_to_error265(MUX,77)@6
    assign i_acl_487_afs_abort_to_error265_s = redist87_i_acl_482_afs_abort_to_error264_q_2_q;
    always @(i_acl_487_afs_abort_to_error265_s or i_acl_481_afs_abort_to_error263_q or redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_q)
    begin
        unique case (i_acl_487_afs_abort_to_error265_s)
            1'b0 : i_acl_487_afs_abort_to_error265_q = i_acl_481_afs_abort_to_error263_q;
            1'b1 : i_acl_487_afs_abort_to_error265_q = redist28_sync_together447_aunroll_x_in_c1_eni1_18_tpl_5_mem_q;
            default : i_acl_487_afs_abort_to_error265_q = 64'b0;
        endcase
    end

    // c_i32_49733396430_recast_x(CONSTANT,447)
    assign c_i32_49733396430_recast_x_q = $unsigned(32'b00000010111101101101111100010100);

    // i_pivot137_afs_abort_to_error150(COMPARE,170)@3 + 1
    assign i_pivot137_afs_abort_to_error150_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot137_afs_abort_to_error150_b = $unsigned({{2{c_i32_49733396430_recast_x_q[31]}}, c_i32_49733396430_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot137_afs_abort_to_error150_o <= 34'b0;
        end
        else
        begin
            i_pivot137_afs_abort_to_error150_o <= $unsigned($signed(i_pivot137_afs_abort_to_error150_a) - $signed(i_pivot137_afs_abort_to_error150_b));
        end
    end
    assign i_pivot137_afs_abort_to_error150_c[0] = i_pivot137_afs_abort_to_error150_o[33];

    // i_acl_488_afs_abort_to_error266(LOGICAL,78)@4 + 1
    assign i_acl_488_afs_abort_to_error266_qi = i_pivot139_afs_abort_to_error103_c ^ i_pivot137_afs_abort_to_error150_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_488_afs_abort_to_error266_delay ( .xin(i_acl_488_afs_abort_to_error266_qi), .xout(i_acl_488_afs_abort_to_error266_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist86_i_acl_488_afs_abort_to_error266_q_2(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_acl_488_afs_abort_to_error266_q_2_q <= '0;
        end
        else
        begin
            redist86_i_acl_488_afs_abort_to_error266_q_2_q <= $unsigned(i_acl_488_afs_abort_to_error266_q);
        end
    end

    // i_acl_494_afs_abort_to_error267(MUX,79)@6
    assign i_acl_494_afs_abort_to_error267_s = redist86_i_acl_488_afs_abort_to_error266_q_2_q;
    always @(i_acl_494_afs_abort_to_error267_s or i_acl_487_afs_abort_to_error265_q or redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_q)
    begin
        unique case (i_acl_494_afs_abort_to_error267_s)
            1'b0 : i_acl_494_afs_abort_to_error267_q = i_acl_487_afs_abort_to_error265_q;
            1'b1 : i_acl_494_afs_abort_to_error267_q = redist39_sync_together447_aunroll_x_in_c1_eni1_25_tpl_5_mem_q;
            default : i_acl_494_afs_abort_to_error267_q = 64'b0;
        endcase
    end

    // c_i32_49733397374_recast_x(CONSTANT,448)
    assign c_i32_49733397374_recast_x_q = $unsigned(32'b00000010111101101101111100010101);

    // i_pivot157_afs_abort_to_error27(COMPARE,178)@3 + 1
    assign i_pivot157_afs_abort_to_error27_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot157_afs_abort_to_error27_b = $unsigned({{2{c_i32_49733397374_recast_x_q[31]}}, c_i32_49733397374_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot157_afs_abort_to_error27_o <= 34'b0;
        end
        else
        begin
            i_pivot157_afs_abort_to_error27_o <= $unsigned($signed(i_pivot157_afs_abort_to_error27_a) - $signed(i_pivot157_afs_abort_to_error27_b));
        end
    end
    assign i_pivot157_afs_abort_to_error27_c[0] = i_pivot157_afs_abort_to_error27_o[33];

    // i_acl_497_afs_abort_to_error268(LOGICAL,80)@4 + 1
    assign i_acl_497_afs_abort_to_error268_qi = i_pivot137_afs_abort_to_error150_c ^ i_pivot157_afs_abort_to_error27_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_497_afs_abort_to_error268_delay ( .xin(i_acl_497_afs_abort_to_error268_qi), .xout(i_acl_497_afs_abort_to_error268_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist85_i_acl_497_afs_abort_to_error268_q_2(DELAY,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_acl_497_afs_abort_to_error268_q_2_q <= '0;
        end
        else
        begin
            redist85_i_acl_497_afs_abort_to_error268_q_2_q <= $unsigned(i_acl_497_afs_abort_to_error268_q);
        end
    end

    // i_acl_501_afs_abort_to_error269(MUX,81)@6
    assign i_acl_501_afs_abort_to_error269_s = redist85_i_acl_497_afs_abort_to_error268_q_2_q;
    always @(i_acl_501_afs_abort_to_error269_s or i_acl_494_afs_abort_to_error267_q or redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_q)
    begin
        unique case (i_acl_501_afs_abort_to_error269_s)
            1'b0 : i_acl_501_afs_abort_to_error269_q = i_acl_494_afs_abort_to_error267_q;
            1'b1 : i_acl_501_afs_abort_to_error269_q = redist23_sync_together447_aunroll_x_in_c1_eni1_13_tpl_5_mem_q;
            default : i_acl_501_afs_abort_to_error269_q = 64'b0;
        endcase
    end

    // i_switchleaf143_afs_abort_to_error152(LOGICAL,243)@3
    assign i_switchleaf143_afs_abort_to_error152_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733397374_recast_x_q ? 1'b1 : 1'b0);

    // redist63_i_switchleaf143_afs_abort_to_error152_q_3(DELAY,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_0 <= '0;
            redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_1 <= '0;
            redist63_i_switchleaf143_afs_abort_to_error152_q_3_q <= '0;
        end
        else
        begin
            redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_0 <= $unsigned(i_switchleaf143_afs_abort_to_error152_q);
            redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_1 <= redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_0;
            redist63_i_switchleaf143_afs_abort_to_error152_q_3_q <= redist63_i_switchleaf143_afs_abort_to_error152_q_3_delay_1;
        end
    end

    // i_acl_508_afs_abort_to_error270(MUX,82)@6
    assign i_acl_508_afs_abort_to_error270_s = redist63_i_switchleaf143_afs_abort_to_error152_q_3_q;
    always @(i_acl_508_afs_abort_to_error270_s or i_acl_501_afs_abort_to_error269_q or redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_q)
    begin
        unique case (i_acl_508_afs_abort_to_error270_s)
            1'b0 : i_acl_508_afs_abort_to_error270_q = i_acl_501_afs_abort_to_error269_q;
            1'b1 : i_acl_508_afs_abort_to_error270_q = redist20_sync_together447_aunroll_x_in_c1_eni1_11_tpl_5_q;
            default : i_acl_508_afs_abort_to_error270_q = 64'b0;
        endcase
    end

    // c_i32_49733403387_recast_x(CONSTANT,450)
    assign c_i32_49733403387_recast_x_q = $unsigned(32'b00000010111101101101111100011011);

    // i_pivot155_afs_abort_to_error53(COMPARE,177)@3
    assign i_pivot155_afs_abort_to_error53_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot155_afs_abort_to_error53_b = $unsigned({{2{c_i32_49733403387_recast_x_q[31]}}, c_i32_49733403387_recast_x_q});
    assign i_pivot155_afs_abort_to_error53_o = $unsigned($signed(i_pivot155_afs_abort_to_error53_a) - $signed(i_pivot155_afs_abort_to_error53_b));
    assign i_pivot155_afs_abort_to_error53_c[0] = i_pivot155_afs_abort_to_error53_o[33];

    // c_i32_49733402413_recast_x(CONSTANT,449)
    assign c_i32_49733402413_recast_x_q = $unsigned(32'b00000010111101101101111100011010);

    // i_pivot145_afs_abort_to_error105(COMPARE,174)@3
    assign i_pivot145_afs_abort_to_error105_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot145_afs_abort_to_error105_b = $unsigned({{2{c_i32_49733402413_recast_x_q[31]}}, c_i32_49733402413_recast_x_q});
    assign i_pivot145_afs_abort_to_error105_o = $unsigned($signed(i_pivot145_afs_abort_to_error105_a) - $signed(i_pivot145_afs_abort_to_error105_b));
    assign i_pivot145_afs_abort_to_error105_c[0] = i_pivot145_afs_abort_to_error105_o[33];

    // i_acl_509_afs_abort_to_error271(LOGICAL,83)@3 + 1
    assign i_acl_509_afs_abort_to_error271_qi = i_pivot145_afs_abort_to_error105_c ^ i_pivot155_afs_abort_to_error53_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_509_afs_abort_to_error271_delay ( .xin(i_acl_509_afs_abort_to_error271_qi), .xout(i_acl_509_afs_abort_to_error271_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist84_i_acl_509_afs_abort_to_error271_q_3(DELAY,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_acl_509_afs_abort_to_error271_q_3_delay_0 <= '0;
            redist84_i_acl_509_afs_abort_to_error271_q_3_q <= '0;
        end
        else
        begin
            redist84_i_acl_509_afs_abort_to_error271_q_3_delay_0 <= $unsigned(i_acl_509_afs_abort_to_error271_q);
            redist84_i_acl_509_afs_abort_to_error271_q_3_q <= redist84_i_acl_509_afs_abort_to_error271_q_3_delay_0;
        end
    end

    // i_acl_514_afs_abort_to_error272(MUX,84)@6
    assign i_acl_514_afs_abort_to_error272_s = redist84_i_acl_509_afs_abort_to_error271_q_3_q;
    always @(i_acl_514_afs_abort_to_error272_s or i_acl_508_afs_abort_to_error270_q or redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_q)
    begin
        unique case (i_acl_514_afs_abort_to_error272_s)
            1'b0 : i_acl_514_afs_abort_to_error272_q = i_acl_508_afs_abort_to_error270_q;
            1'b1 : i_acl_514_afs_abort_to_error272_q = redist17_sync_together447_aunroll_x_in_c1_eni1_10_tpl_5_mem_q;
            default : i_acl_514_afs_abort_to_error272_q = 64'b0;
        endcase
    end

    // i_switchleaf147_afs_abort_to_error154(LOGICAL,244)@3
    assign i_switchleaf147_afs_abort_to_error154_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733403387_recast_x_q ? 1'b1 : 1'b0);

    // redist62_i_switchleaf147_afs_abort_to_error154_q_3(DELAY,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_0 <= '0;
            redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_1 <= '0;
            redist62_i_switchleaf147_afs_abort_to_error154_q_3_q <= '0;
        end
        else
        begin
            redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_0 <= $unsigned(i_switchleaf147_afs_abort_to_error154_q);
            redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_1 <= redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_0;
            redist62_i_switchleaf147_afs_abort_to_error154_q_3_q <= redist62_i_switchleaf147_afs_abort_to_error154_q_3_delay_1;
        end
    end

    // i_acl_521_afs_abort_to_error273(MUX,85)@6
    assign i_acl_521_afs_abort_to_error273_s = redist62_i_switchleaf147_afs_abort_to_error154_q_3_q;
    always @(i_acl_521_afs_abort_to_error273_s or i_acl_514_afs_abort_to_error272_q or redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_q)
    begin
        unique case (i_acl_521_afs_abort_to_error273_s)
            1'b0 : i_acl_521_afs_abort_to_error273_q = i_acl_514_afs_abort_to_error272_q;
            1'b1 : i_acl_521_afs_abort_to_error273_q = redist37_sync_together447_aunroll_x_in_c1_eni1_23_tpl_5_mem_q;
            default : i_acl_521_afs_abort_to_error273_q = 64'b0;
        endcase
    end

    // c_i32_49733406431_recast_x(CONSTANT,452)
    assign c_i32_49733406431_recast_x_q = $unsigned(32'b00000010111101101101111100011110);

    // i_pivot151_afs_abort_to_error157(COMPARE,175)@3
    assign i_pivot151_afs_abort_to_error157_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot151_afs_abort_to_error157_b = $unsigned({{2{c_i32_49733406431_recast_x_q[31]}}, c_i32_49733406431_recast_x_q});
    assign i_pivot151_afs_abort_to_error157_o = $unsigned($signed(i_pivot151_afs_abort_to_error157_a) - $signed(i_pivot151_afs_abort_to_error157_b));
    assign i_pivot151_afs_abort_to_error157_c[0] = i_pivot151_afs_abort_to_error157_o[33];

    // c_i32_49733405414_recast_x(CONSTANT,451)
    assign c_i32_49733405414_recast_x_q = $unsigned(32'b00000010111101101101111100011101);

    // i_pivot153_afs_abort_to_error107(COMPARE,176)@3
    assign i_pivot153_afs_abort_to_error107_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot153_afs_abort_to_error107_b = $unsigned({{2{c_i32_49733405414_recast_x_q[31]}}, c_i32_49733405414_recast_x_q});
    assign i_pivot153_afs_abort_to_error107_o = $unsigned($signed(i_pivot153_afs_abort_to_error107_a) - $signed(i_pivot153_afs_abort_to_error107_b));
    assign i_pivot153_afs_abort_to_error107_c[0] = i_pivot153_afs_abort_to_error107_o[33];

    // i_acl_522_afs_abort_to_error274(LOGICAL,86)@3 + 1
    assign i_acl_522_afs_abort_to_error274_qi = i_pivot153_afs_abort_to_error107_c ^ i_pivot151_afs_abort_to_error157_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_522_afs_abort_to_error274_delay ( .xin(i_acl_522_afs_abort_to_error274_qi), .xout(i_acl_522_afs_abort_to_error274_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist83_i_acl_522_afs_abort_to_error274_q_3(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_acl_522_afs_abort_to_error274_q_3_delay_0 <= '0;
            redist83_i_acl_522_afs_abort_to_error274_q_3_q <= '0;
        end
        else
        begin
            redist83_i_acl_522_afs_abort_to_error274_q_3_delay_0 <= $unsigned(i_acl_522_afs_abort_to_error274_q);
            redist83_i_acl_522_afs_abort_to_error274_q_3_q <= redist83_i_acl_522_afs_abort_to_error274_q_3_delay_0;
        end
    end

    // i_acl_528_afs_abort_to_error275(MUX,87)@6 + 1
    assign i_acl_528_afs_abort_to_error275_s = redist83_i_acl_522_afs_abort_to_error274_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_528_afs_abort_to_error275_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_528_afs_abort_to_error275_s)
                1'b0 : i_acl_528_afs_abort_to_error275_q <= i_acl_521_afs_abort_to_error273_q;
                1'b1 : i_acl_528_afs_abort_to_error275_q <= redist47_sync_together447_aunroll_x_in_c1_eni1_33_tpl_5_mem_q;
                default : i_acl_528_afs_abort_to_error275_q <= 64'b0;
            endcase
        end
    end

    // i_switchleaf149_afs_abort_to_error176(LOGICAL,246)@3
    assign i_switchleaf149_afs_abort_to_error176_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733406431_recast_x_q ? 1'b1 : 1'b0);

    // redist61_i_switchleaf149_afs_abort_to_error176_q_4(DELAY,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_0 <= '0;
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_1 <= '0;
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_2 <= '0;
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_q <= '0;
        end
        else
        begin
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_0 <= $unsigned(i_switchleaf149_afs_abort_to_error176_q);
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_1 <= redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_0;
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_2 <= redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_1;
            redist61_i_switchleaf149_afs_abort_to_error176_q_4_q <= redist61_i_switchleaf149_afs_abort_to_error176_q_4_delay_2;
        end
    end

    // i_acl_536_afs_abort_to_error276(MUX,88)@7
    assign i_acl_536_afs_abort_to_error276_s = redist61_i_switchleaf149_afs_abort_to_error176_q_4_q;
    always @(i_acl_536_afs_abort_to_error276_s or i_acl_528_afs_abort_to_error275_q or redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_q)
    begin
        unique case (i_acl_536_afs_abort_to_error276_s)
            1'b0 : i_acl_536_afs_abort_to_error276_q = i_acl_528_afs_abort_to_error275_q;
            1'b1 : i_acl_536_afs_abort_to_error276_q = redist26_sync_together447_aunroll_x_in_c1_eni1_16_tpl_6_mem_q;
            default : i_acl_536_afs_abort_to_error276_q = 64'b0;
        endcase
    end

    // c_i32_49733409415_recast_x(CONSTANT,454)
    assign c_i32_49733409415_recast_x_q = $unsigned(32'b00000010111101101101111100100001);

    // i_pivot159_afs_abort_to_error109(COMPARE,179)@3 + 1
    assign i_pivot159_afs_abort_to_error109_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot159_afs_abort_to_error109_b = $unsigned({{2{c_i32_49733409415_recast_x_q[31]}}, c_i32_49733409415_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot159_afs_abort_to_error109_o <= 34'b0;
        end
        else
        begin
            i_pivot159_afs_abort_to_error109_o <= $unsigned($signed(i_pivot159_afs_abort_to_error109_a) - $signed(i_pivot159_afs_abort_to_error109_b));
        end
    end
    assign i_pivot159_afs_abort_to_error109_c[0] = i_pivot159_afs_abort_to_error109_o[33];

    // c_i32_49733408368_recast_x(CONSTANT,453)
    assign c_i32_49733408368_recast_x_q = $unsigned(32'b00000010111101101101111100100000);

    // i_pivot189_afs_abort_to_error15(COMPARE,190)@3 + 1
    assign i_pivot189_afs_abort_to_error15_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot189_afs_abort_to_error15_b = $unsigned({{2{c_i32_49733408368_recast_x_q[31]}}, c_i32_49733408368_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot189_afs_abort_to_error15_o <= 34'b0;
        end
        else
        begin
            i_pivot189_afs_abort_to_error15_o <= $unsigned($signed(i_pivot189_afs_abort_to_error15_a) - $signed(i_pivot189_afs_abort_to_error15_b));
        end
    end
    assign i_pivot189_afs_abort_to_error15_c[0] = i_pivot189_afs_abort_to_error15_o[33];

    // i_acl_539_afs_abort_to_error277(LOGICAL,89)@4 + 1
    assign i_acl_539_afs_abort_to_error277_qi = i_pivot189_afs_abort_to_error15_c ^ i_pivot159_afs_abort_to_error109_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_539_afs_abort_to_error277_delay ( .xin(i_acl_539_afs_abort_to_error277_qi), .xout(i_acl_539_afs_abort_to_error277_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist82_i_acl_539_afs_abort_to_error277_q_3(DELAY,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_acl_539_afs_abort_to_error277_q_3_delay_0 <= '0;
            redist82_i_acl_539_afs_abort_to_error277_q_3_q <= '0;
        end
        else
        begin
            redist82_i_acl_539_afs_abort_to_error277_q_3_delay_0 <= $unsigned(i_acl_539_afs_abort_to_error277_q);
            redist82_i_acl_539_afs_abort_to_error277_q_3_q <= redist82_i_acl_539_afs_abort_to_error277_q_3_delay_0;
        end
    end

    // i_acl_542_afs_abort_to_error278(MUX,90)@7
    assign i_acl_542_afs_abort_to_error278_s = redist82_i_acl_539_afs_abort_to_error277_q_3_q;
    always @(i_acl_542_afs_abort_to_error278_s or i_acl_536_afs_abort_to_error276_q or redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_q)
    begin
        unique case (i_acl_542_afs_abort_to_error278_s)
            1'b0 : i_acl_542_afs_abort_to_error278_q = i_acl_536_afs_abort_to_error276_q;
            1'b1 : i_acl_542_afs_abort_to_error278_q = redist9_sync_together447_aunroll_x_in_c1_eni1_7_tpl_6_mem_q;
            default : i_acl_542_afs_abort_to_error278_q = 64'b0;
        endcase
    end

    // c_i32_49733410388_recast_x(CONSTANT,455)
    assign c_i32_49733410388_recast_x_q = $unsigned(32'b00000010111101101101111100100010);

    // i_pivot167_afs_abort_to_error55(COMPARE,183)@3 + 1
    assign i_pivot167_afs_abort_to_error55_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot167_afs_abort_to_error55_b = $unsigned({{2{c_i32_49733410388_recast_x_q[31]}}, c_i32_49733410388_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot167_afs_abort_to_error55_o <= 34'b0;
        end
        else
        begin
            i_pivot167_afs_abort_to_error55_o <= $unsigned($signed(i_pivot167_afs_abort_to_error55_a) - $signed(i_pivot167_afs_abort_to_error55_b));
        end
    end
    assign i_pivot167_afs_abort_to_error55_c[0] = i_pivot167_afs_abort_to_error55_o[33];

    // i_acl_543_afs_abort_to_error279(LOGICAL,91)@4 + 1
    assign i_acl_543_afs_abort_to_error279_qi = i_pivot159_afs_abort_to_error109_c ^ i_pivot167_afs_abort_to_error55_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_543_afs_abort_to_error279_delay ( .xin(i_acl_543_afs_abort_to_error279_qi), .xout(i_acl_543_afs_abort_to_error279_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist81_i_acl_543_afs_abort_to_error279_q_3(DELAY,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_acl_543_afs_abort_to_error279_q_3_delay_0 <= '0;
            redist81_i_acl_543_afs_abort_to_error279_q_3_q <= '0;
        end
        else
        begin
            redist81_i_acl_543_afs_abort_to_error279_q_3_delay_0 <= $unsigned(i_acl_543_afs_abort_to_error279_q);
            redist81_i_acl_543_afs_abort_to_error279_q_3_q <= redist81_i_acl_543_afs_abort_to_error279_q_3_delay_0;
        end
    end

    // i_acl_548_afs_abort_to_error280(MUX,92)@7
    assign i_acl_548_afs_abort_to_error280_s = redist81_i_acl_543_afs_abort_to_error279_q_3_q;
    always @(i_acl_548_afs_abort_to_error280_s or i_acl_542_afs_abort_to_error278_q or redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_q)
    begin
        unique case (i_acl_548_afs_abort_to_error280_s)
            1'b0 : i_acl_548_afs_abort_to_error280_q = i_acl_542_afs_abort_to_error278_q;
            1'b1 : i_acl_548_afs_abort_to_error280_q = redist45_sync_together447_aunroll_x_in_c1_eni1_31_tpl_6_mem_q;
            default : i_acl_548_afs_abort_to_error280_q = 64'b0;
        endcase
    end

    // c_i32_49733411416_recast_x(CONSTANT,456)
    assign c_i32_49733411416_recast_x_q = $unsigned(32'b00000010111101101101111100100011);

    // i_pivot165_afs_abort_to_error111(COMPARE,182)@3 + 1
    assign i_pivot165_afs_abort_to_error111_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot165_afs_abort_to_error111_b = $unsigned({{2{c_i32_49733411416_recast_x_q[31]}}, c_i32_49733411416_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot165_afs_abort_to_error111_o <= 34'b0;
        end
        else
        begin
            i_pivot165_afs_abort_to_error111_o <= $unsigned($signed(i_pivot165_afs_abort_to_error111_a) - $signed(i_pivot165_afs_abort_to_error111_b));
        end
    end
    assign i_pivot165_afs_abort_to_error111_c[0] = i_pivot165_afs_abort_to_error111_o[33];

    // i_acl_549_afs_abort_to_error281(LOGICAL,93)@4 + 1
    assign i_acl_549_afs_abort_to_error281_qi = i_pivot167_afs_abort_to_error55_c ^ i_pivot165_afs_abort_to_error111_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_549_afs_abort_to_error281_delay ( .xin(i_acl_549_afs_abort_to_error281_qi), .xout(i_acl_549_afs_abort_to_error281_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist80_i_acl_549_afs_abort_to_error281_q_3(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_acl_549_afs_abort_to_error281_q_3_delay_0 <= '0;
            redist80_i_acl_549_afs_abort_to_error281_q_3_q <= '0;
        end
        else
        begin
            redist80_i_acl_549_afs_abort_to_error281_q_3_delay_0 <= $unsigned(i_acl_549_afs_abort_to_error281_q);
            redist80_i_acl_549_afs_abort_to_error281_q_3_q <= redist80_i_acl_549_afs_abort_to_error281_q_3_delay_0;
        end
    end

    // i_acl_554_afs_abort_to_error282(MUX,94)@7
    assign i_acl_554_afs_abort_to_error282_s = redist80_i_acl_549_afs_abort_to_error281_q_3_q;
    always @(i_acl_554_afs_abort_to_error282_s or i_acl_548_afs_abort_to_error280_q or redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_q)
    begin
        unique case (i_acl_554_afs_abort_to_error282_s)
            1'b0 : i_acl_554_afs_abort_to_error282_q = i_acl_548_afs_abort_to_error280_q;
            1'b1 : i_acl_554_afs_abort_to_error282_q = redist8_sync_together447_aunroll_x_in_c1_eni1_6_tpl_6_mem_q;
            default : i_acl_554_afs_abort_to_error282_q = 64'b0;
        endcase
    end

    // c_i32_49733412432(CONSTANT,11)
    assign c_i32_49733412432_q = $unsigned(32'b00000010111101101101111100100100);

    // i_pivot163_afs_abort_to_error159(COMPARE,181)@3 + 1
    assign i_pivot163_afs_abort_to_error159_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot163_afs_abort_to_error159_b = $unsigned({{2{c_i32_49733412432_q[31]}}, c_i32_49733412432_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot163_afs_abort_to_error159_o <= 34'b0;
        end
        else
        begin
            i_pivot163_afs_abort_to_error159_o <= $unsigned($signed(i_pivot163_afs_abort_to_error159_a) - $signed(i_pivot163_afs_abort_to_error159_b));
        end
    end
    assign i_pivot163_afs_abort_to_error159_c[0] = i_pivot163_afs_abort_to_error159_o[33];

    // i_acl_555_afs_abort_to_error283(LOGICAL,95)@4 + 1
    assign i_acl_555_afs_abort_to_error283_qi = i_pivot165_afs_abort_to_error111_c ^ i_pivot163_afs_abort_to_error159_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_555_afs_abort_to_error283_delay ( .xin(i_acl_555_afs_abort_to_error283_qi), .xout(i_acl_555_afs_abort_to_error283_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist79_i_acl_555_afs_abort_to_error283_q_3(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_acl_555_afs_abort_to_error283_q_3_delay_0 <= '0;
            redist79_i_acl_555_afs_abort_to_error283_q_3_q <= '0;
        end
        else
        begin
            redist79_i_acl_555_afs_abort_to_error283_q_3_delay_0 <= $unsigned(i_acl_555_afs_abort_to_error283_q);
            redist79_i_acl_555_afs_abort_to_error283_q_3_q <= redist79_i_acl_555_afs_abort_to_error283_q_3_delay_0;
        end
    end

    // i_acl_561_afs_abort_to_error284(MUX,96)@7
    assign i_acl_561_afs_abort_to_error284_s = redist79_i_acl_555_afs_abort_to_error283_q_3_q;
    always @(i_acl_561_afs_abort_to_error284_s or i_acl_554_afs_abort_to_error282_q or redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_q)
    begin
        unique case (i_acl_561_afs_abort_to_error284_s)
            1'b0 : i_acl_561_afs_abort_to_error284_q = i_acl_554_afs_abort_to_error282_q;
            1'b1 : i_acl_561_afs_abort_to_error284_q = redist27_sync_together447_aunroll_x_in_c1_eni1_17_tpl_6_mem_q;
            default : i_acl_561_afs_abort_to_error284_q = 64'b0;
        endcase
    end

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_notEnable(LOGICAL,631)
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_nor(LOGICAL,632)
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_nor_q = ~ (redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_notEnable_q | redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_sticky_ena_q);

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_last(CONSTANT,628)
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmp(LOGICAL,629)
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmp_b = {1'b0, redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_q};
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmp_q = $unsigned(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_last_q == redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmpReg(REG,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmpReg_q <= $unsigned(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmp_q);
        end
    end

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_sticky_ena(REG,633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_nor_q == 1'b1)
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_sticky_ena_q <= $unsigned(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_cmpReg_q);
        end
    end

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_enaAnd(LOGICAL,634)
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_enaAnd_q = redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_sticky_ena_q & VCC_q;

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt(COUNTER,626)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_i <= $unsigned(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_q = redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_i[1:0];

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_wraddr(REG,627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_wraddr_q <= $unsigned(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_q);
        end
    end

    // redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem(DUALMEM,625)
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_ia = $unsigned(redist10_sync_together447_aunroll_x_in_c1_eni1_8_tpl_1_q);
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_aa = redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_wraddr_q;
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_ab = redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_rdcnt_q;
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_dmem (
        .clocken1(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_aa),
        .data_a(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_ab),
        .q_b(redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_iq),
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
    assign redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_q = redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_iq[63:0];

    // c_i32_49733496433(CONSTANT,16)
    assign c_i32_49733496433_q = $unsigned(32'b00000010111101101101111101111000);

    // dupName_7_comparator_x(LOGICAL,489)@3 + 1
    assign dupName_7_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733496433_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_7_comparator_x_delay ( .xin(dupName_7_comparator_x_qi), .xout(dupName_7_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist52_dupName_7_comparator_x_q_4(DELAY,549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_dupName_7_comparator_x_q_4_delay_0 <= '0;
            redist52_dupName_7_comparator_x_q_4_delay_1 <= '0;
            redist52_dupName_7_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist52_dupName_7_comparator_x_q_4_delay_0 <= $unsigned(dupName_7_comparator_x_q);
            redist52_dupName_7_comparator_x_q_4_delay_1 <= redist52_dupName_7_comparator_x_q_4_delay_0;
            redist52_dupName_7_comparator_x_q_4_q <= redist52_dupName_7_comparator_x_q_4_delay_1;
        end
    end

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_notEnable(LOGICAL,838)
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_nor(LOGICAL,839)
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_nor_q = ~ (redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_notEnable_q | redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_sticky_ena_q);

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_last(CONSTANT,835)
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmp(LOGICAL,836)
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmp_q = $unsigned(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_last_q == redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmpReg(REG,837)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmpReg_q <= $unsigned(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmp_q);
        end
    end

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_sticky_ena(REG,840)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_nor_q == 1'b1)
        begin
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_sticky_ena_q <= $unsigned(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_cmpReg_q);
        end
    end

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_enaAnd(LOGICAL,841)
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_enaAnd_q = redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_sticky_ena_q & VCC_q;

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt(COUNTER,833)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i <= 3'd0;
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i == 3'd3)
            begin
                redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i <= $unsigned(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i <= $unsigned(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_q = redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_i[2:0];

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_wraddr(REG,834)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_wraddr_q <= $unsigned(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_q);
        end
    end

    // redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem(DUALMEM,832)
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_ia = $unsigned(in_c1_eni1_34_tpl);
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_aa = redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_wraddr_q;
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_ab = redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_rdcnt_q;
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_dmem (
        .clocken1(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_aa),
        .data_a(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_ab),
        .q_b(redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_iq),
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
    assign redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_q = redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_iq[63:0];

    // c_i32_49733484418(CONSTANT,15)
    assign c_i32_49733484418_q = $unsigned(32'b00000010111101101101111101101100);

    // dupName_6_comparator_x(LOGICAL,488)@3 + 1
    assign dupName_6_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733484418_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_6_comparator_x_delay ( .xin(dupName_6_comparator_x_qi), .xout(dupName_6_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist53_dupName_6_comparator_x_q_4(DELAY,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_dupName_6_comparator_x_q_4_delay_0 <= '0;
            redist53_dupName_6_comparator_x_q_4_delay_1 <= '0;
            redist53_dupName_6_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist53_dupName_6_comparator_x_q_4_delay_0 <= $unsigned(dupName_6_comparator_x_q);
            redist53_dupName_6_comparator_x_q_4_delay_1 <= redist53_dupName_6_comparator_x_q_4_delay_0;
            redist53_dupName_6_comparator_x_q_4_q <= redist53_dupName_6_comparator_x_q_4_delay_1;
        end
    end

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_notEnable(LOGICAL,748)
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_nor(LOGICAL,749)
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_nor_q = ~ (redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_notEnable_q | redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_sticky_ena_q);

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_last(CONSTANT,745)
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmp(LOGICAL,746)
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmp_q = $unsigned(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_last_q == redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmpReg(REG,747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmpReg_q <= $unsigned(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmp_q);
        end
    end

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_sticky_ena(REG,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_nor_q == 1'b1)
        begin
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_sticky_ena_q <= $unsigned(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_cmpReg_q);
        end
    end

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_enaAnd(LOGICAL,751)
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_enaAnd_q = redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_sticky_ena_q & VCC_q;

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt(COUNTER,743)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i <= 3'd0;
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i == 3'd3)
            begin
                redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i <= $unsigned(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i <= $unsigned(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_q = redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_i[2:0];

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_wraddr(REG,744)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_wraddr_q <= $unsigned(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_q);
        end
    end

    // redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem(DUALMEM,742)
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_ia = $unsigned(in_c1_eni1_24_tpl);
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_aa = redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_wraddr_q;
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_ab = redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_rdcnt_q;
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_dmem (
        .clocken1(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_aa),
        .data_a(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_ab),
        .q_b(redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_iq),
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
    assign redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_q = redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_iq[63:0];

    // c_i32_49733481389(CONSTANT,14)
    assign c_i32_49733481389_q = $unsigned(32'b00000010111101101101111101101001);

    // dupName_5_comparator_x(LOGICAL,487)@3 + 1
    assign dupName_5_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733481389_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_5_comparator_x_delay ( .xin(dupName_5_comparator_x_qi), .xout(dupName_5_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist54_dupName_5_comparator_x_q_4(DELAY,551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_dupName_5_comparator_x_q_4_delay_0 <= '0;
            redist54_dupName_5_comparator_x_q_4_delay_1 <= '0;
            redist54_dupName_5_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist54_dupName_5_comparator_x_q_4_delay_0 <= $unsigned(dupName_5_comparator_x_q);
            redist54_dupName_5_comparator_x_q_4_delay_1 <= redist54_dupName_5_comparator_x_q_4_delay_0;
            redist54_dupName_5_comparator_x_q_4_q <= redist54_dupName_5_comparator_x_q_4_delay_1;
        end
    end

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_notEnable(LOGICAL,848)
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_nor(LOGICAL,849)
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_nor_q = ~ (redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_notEnable_q | redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_sticky_ena_q);

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_last(CONSTANT,845)
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmp(LOGICAL,846)
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmp_q = $unsigned(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_last_q == redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmpReg(REG,847)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmpReg_q <= $unsigned(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmp_q);
        end
    end

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_sticky_ena(REG,850)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_nor_q == 1'b1)
        begin
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_sticky_ena_q <= $unsigned(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_cmpReg_q);
        end
    end

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_enaAnd(LOGICAL,851)
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_enaAnd_q = redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_sticky_ena_q & VCC_q;

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt(COUNTER,843)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i <= 3'd0;
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i == 3'd3)
            begin
                redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i <= $unsigned(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i <= $unsigned(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_q = redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_i[2:0];

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_wraddr(REG,844)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_wraddr_q <= $unsigned(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_q);
        end
    end

    // redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem(DUALMEM,842)
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_ia = $unsigned(in_c1_eni1_35_tpl);
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_aa = redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_wraddr_q;
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_ab = redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_rdcnt_q;
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_dmem (
        .clocken1(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_aa),
        .data_a(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_ab),
        .q_b(redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_iq),
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
    assign redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_q = redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_iq[63:0];

    // c_i32_49733416417(CONSTANT,13)
    assign c_i32_49733416417_q = $unsigned(32'b00000010111101101101111100101000);

    // dupName_4_comparator_x(LOGICAL,486)@3 + 1
    assign dupName_4_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733416417_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_4_comparator_x_delay ( .xin(dupName_4_comparator_x_qi), .xout(dupName_4_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist55_dupName_4_comparator_x_q_4(DELAY,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_dupName_4_comparator_x_q_4_delay_0 <= '0;
            redist55_dupName_4_comparator_x_q_4_delay_1 <= '0;
            redist55_dupName_4_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist55_dupName_4_comparator_x_q_4_delay_0 <= $unsigned(dupName_4_comparator_x_q);
            redist55_dupName_4_comparator_x_q_4_delay_1 <= redist55_dupName_4_comparator_x_q_4_delay_0;
            redist55_dupName_4_comparator_x_q_4_q <= redist55_dupName_4_comparator_x_q_4_delay_1;
        end
    end

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_notEnable(LOGICAL,768)
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_nor(LOGICAL,769)
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_nor_q = ~ (redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_notEnable_q | redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_sticky_ena_q);

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_last(CONSTANT,765)
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmp(LOGICAL,766)
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmp_q = $unsigned(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_last_q == redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmpReg(REG,767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmpReg_q <= $unsigned(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmp_q);
        end
    end

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_sticky_ena(REG,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_nor_q == 1'b1)
        begin
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_sticky_ena_q <= $unsigned(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_cmpReg_q);
        end
    end

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_enaAnd(LOGICAL,771)
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_enaAnd_q = redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_sticky_ena_q & VCC_q;

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt(COUNTER,763)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i <= 3'd0;
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i == 3'd3)
            begin
                redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i <= $unsigned(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i <= $unsigned(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_q = redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_i[2:0];

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_wraddr(REG,764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_wraddr_q <= $unsigned(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_q);
        end
    end

    // redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem(DUALMEM,762)
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_ia = $unsigned(in_c1_eni1_26_tpl);
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_aa = redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_wraddr_q;
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_ab = redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_rdcnt_q;
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_dmem (
        .clocken1(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_aa),
        .data_a(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_ab),
        .q_b(redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_iq),
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
    assign redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_q = redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_iq[63:0];

    // c_i32_49733414375(CONSTANT,12)
    assign c_i32_49733414375_q = $unsigned(32'b00000010111101101101111100100110);

    // dupName_3_comparator_x(LOGICAL,485)@3 + 1
    assign dupName_3_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733414375_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_3_comparator_x_delay ( .xin(dupName_3_comparator_x_qi), .xout(dupName_3_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist56_dupName_3_comparator_x_q_4(DELAY,553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_dupName_3_comparator_x_q_4_delay_0 <= '0;
            redist56_dupName_3_comparator_x_q_4_delay_1 <= '0;
            redist56_dupName_3_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist56_dupName_3_comparator_x_q_4_delay_0 <= $unsigned(dupName_3_comparator_x_q);
            redist56_dupName_3_comparator_x_q_4_delay_1 <= redist56_dupName_3_comparator_x_q_4_delay_0;
            redist56_dupName_3_comparator_x_q_4_q <= redist56_dupName_3_comparator_x_q_4_delay_1;
        end
    end

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_notEnable(LOGICAL,718)
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_nor(LOGICAL,719)
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_nor_q = ~ (redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_notEnable_q | redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_sticky_ena_q);

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_last(CONSTANT,715)
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmp(LOGICAL,716)
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmp_q = $unsigned(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_last_q == redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmpReg(REG,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmpReg_q <= $unsigned(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmp_q);
        end
    end

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_sticky_ena(REG,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_nor_q == 1'b1)
        begin
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_sticky_ena_q <= $unsigned(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_cmpReg_q);
        end
    end

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_enaAnd(LOGICAL,721)
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_enaAnd_q = redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_sticky_ena_q & VCC_q;

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt(COUNTER,713)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i <= 3'd0;
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i == 3'd3)
            begin
                redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i <= $unsigned(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i <= $unsigned(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_q = redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_i[2:0];

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_wraddr(REG,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_wraddr_q <= $unsigned(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_q);
        end
    end

    // redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem(DUALMEM,712)
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_ia = $unsigned(in_c1_eni1_20_tpl);
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_aa = redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_wraddr_q;
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_ab = redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_rdcnt_q;
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_dmem (
        .clocken1(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_aa),
        .data_a(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_ab),
        .q_b(redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_iq),
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
    assign redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_q = redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_iq[63:0];

    // dupName_2_comparator_x(LOGICAL,484)@3 + 1
    assign dupName_2_comparator_x_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733412432_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist57_dupName_2_comparator_x_q_4(DELAY,554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_dupName_2_comparator_x_q_4_delay_0 <= '0;
            redist57_dupName_2_comparator_x_q_4_delay_1 <= '0;
            redist57_dupName_2_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist57_dupName_2_comparator_x_q_4_delay_0 <= $unsigned(dupName_2_comparator_x_q);
            redist57_dupName_2_comparator_x_q_4_delay_1 <= redist57_dupName_2_comparator_x_q_4_delay_0;
            redist57_dupName_2_comparator_x_q_4_q <= redist57_dupName_2_comparator_x_q_4_delay_1;
        end
    end

    // i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286(SELECTOR,153)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= 64'b0;
        end
        else
        begin
            i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= i_acl_561_afs_abort_to_error284_q;
            if (redist52_dupName_7_comparator_x_q_4_q == 1'b1)
            begin
                i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= redist11_sync_together447_aunroll_x_in_c1_eni1_8_tpl_6_mem_q;
            end
            if (redist53_dupName_6_comparator_x_q_4_q == 1'b1)
            begin
                i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= redist48_sync_together447_aunroll_x_in_c1_eni1_34_tpl_6_mem_q;
            end
            if (redist54_dupName_5_comparator_x_q_4_q == 1'b1)
            begin
                i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= redist38_sync_together447_aunroll_x_in_c1_eni1_24_tpl_6_mem_q;
            end
            if (redist55_dupName_4_comparator_x_q_4_q == 1'b1)
            begin
                i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= redist49_sync_together447_aunroll_x_in_c1_eni1_35_tpl_6_mem_q;
            end
            if (redist56_dupName_3_comparator_x_q_4_q == 1'b1)
            begin
                i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= redist40_sync_together447_aunroll_x_in_c1_eni1_26_tpl_6_mem_q;
            end
            if (redist57_dupName_2_comparator_x_q_4_q == 1'b1)
            begin
                i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q <= redist32_sync_together447_aunroll_x_in_c1_eni1_20_tpl_6_mem_q;
            end
        end
    end

    // c_i32_147399_recast_x(CONSTANT,406)
    assign c_i32_147399_recast_x_q = $unsigned(32'b00000000000000000000000010010011);

    // i_pivot45_afs_abort_to_error77(COMPARE,206)@3
    assign i_pivot45_afs_abort_to_error77_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot45_afs_abort_to_error77_b = $unsigned({{2{c_i32_147399_recast_x_q[31]}}, c_i32_147399_recast_x_q});
    assign i_pivot45_afs_abort_to_error77_o = $unsigned($signed(i_pivot45_afs_abort_to_error77_a) - $signed(i_pivot45_afs_abort_to_error77_b));
    assign i_pivot45_afs_abort_to_error77_c[0] = i_pivot45_afs_abort_to_error77_o[33];

    // c_i32_146380_recast_x(CONSTANT,405)
    assign c_i32_146380_recast_x_q = $unsigned(32'b00000000000000000000000010010010);

    // i_pivot47_afs_abort_to_error39(COMPARE,207)@3
    assign i_pivot47_afs_abort_to_error39_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot47_afs_abort_to_error39_b = $unsigned({{2{c_i32_146380_recast_x_q[31]}}, c_i32_146380_recast_x_q});
    assign i_pivot47_afs_abort_to_error39_o = $unsigned($signed(i_pivot47_afs_abort_to_error39_a) - $signed(i_pivot47_afs_abort_to_error39_b));
    assign i_pivot47_afs_abort_to_error39_c[0] = i_pivot47_afs_abort_to_error39_o[33];

    // i_acl_607_afs_abort_to_error287(LOGICAL,97)@3
    assign i_acl_607_afs_abort_to_error287_q = i_pivot47_afs_abort_to_error39_c ^ i_pivot45_afs_abort_to_error77_c;

    // c_i32_143423_recast_x(CONSTANT,402)
    assign c_i32_143423_recast_x_q = $unsigned(32'b00000000000000000000000010001111);

    // i_pivot31_afs_abort_to_error128(COMPARE,199)@3
    assign i_pivot31_afs_abort_to_error128_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot31_afs_abort_to_error128_b = $unsigned({{2{c_i32_143423_recast_x_q[31]}}, c_i32_143423_recast_x_q});
    assign i_pivot31_afs_abort_to_error128_o = $unsigned($signed(i_pivot31_afs_abort_to_error128_a) - $signed(i_pivot31_afs_abort_to_error128_b));
    assign i_pivot31_afs_abort_to_error128_c[0] = i_pivot31_afs_abort_to_error128_o[33];

    // c_i32_142397_recast_x(CONSTANT,401)
    assign c_i32_142397_recast_x_q = $unsigned(32'b00000000000000000000000010001110);

    // i_pivot33_afs_abort_to_error73(COMPARE,200)@3
    assign i_pivot33_afs_abort_to_error73_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot33_afs_abort_to_error73_b = $unsigned({{2{c_i32_142397_recast_x_q[31]}}, c_i32_142397_recast_x_q});
    assign i_pivot33_afs_abort_to_error73_o = $unsigned($signed(i_pivot33_afs_abort_to_error73_a) - $signed(i_pivot33_afs_abort_to_error73_b));
    assign i_pivot33_afs_abort_to_error73_c[0] = i_pivot33_afs_abort_to_error73_o[33];

    // i_acl_613_afs_abort_to_error288(LOGICAL,98)@3
    assign i_acl_613_afs_abort_to_error288_q = i_pivot33_afs_abort_to_error73_c ^ i_pivot31_afs_abort_to_error128_c;

    // i_unnamed_afs_abort_to_error289(LOGICAL,279)@3 + 1
    assign i_unnamed_afs_abort_to_error289_qi = i_acl_613_afs_abort_to_error288_q | i_acl_607_afs_abort_to_error287_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_afs_abort_to_error289_delay ( .xin(i_unnamed_afs_abort_to_error289_qi), .xout(i_unnamed_afs_abort_to_error289_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist60_i_unnamed_afs_abort_to_error289_q_5(DELAY,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_unnamed_afs_abort_to_error289_q_5_delay_0 <= '0;
            redist60_i_unnamed_afs_abort_to_error289_q_5_delay_1 <= '0;
            redist60_i_unnamed_afs_abort_to_error289_q_5_delay_2 <= '0;
            redist60_i_unnamed_afs_abort_to_error289_q_5_q <= '0;
        end
        else
        begin
            redist60_i_unnamed_afs_abort_to_error289_q_5_delay_0 <= $unsigned(i_unnamed_afs_abort_to_error289_q);
            redist60_i_unnamed_afs_abort_to_error289_q_5_delay_1 <= redist60_i_unnamed_afs_abort_to_error289_q_5_delay_0;
            redist60_i_unnamed_afs_abort_to_error289_q_5_delay_2 <= redist60_i_unnamed_afs_abort_to_error289_q_5_delay_1;
            redist60_i_unnamed_afs_abort_to_error289_q_5_q <= redist60_i_unnamed_afs_abort_to_error289_q_5_delay_2;
        end
    end

    // i_acl_619_afs_abort_to_error290(MUX,99)@8
    assign i_acl_619_afs_abort_to_error290_s = redist60_i_unnamed_afs_abort_to_error289_q_5_q;
    always @(i_acl_619_afs_abort_to_error290_s or i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q or redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0_q)
    begin
        unique case (i_acl_619_afs_abort_to_error290_s)
            1'b0 : i_acl_619_afs_abort_to_error290_q = i_llvm_fpga_case_p1024i32_i32_v6i32_s_case_assign_struct_afs_abort_to_error_fpgaunique_1s_case_stmt747_afs_abort_to_error286_q;
            1'b1 : i_acl_619_afs_abort_to_error290_q = redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0_q;
            default : i_acl_619_afs_abort_to_error290_q = 64'b0;
        endcase
    end

    // c_i32_145398_recast_x(CONSTANT,404)
    assign c_i32_145398_recast_x_q = $unsigned(32'b00000000000000000000000010010001);

    // i_pivot41_afs_abort_to_error75(COMPARE,204)@3
    assign i_pivot41_afs_abort_to_error75_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot41_afs_abort_to_error75_b = $unsigned({{2{c_i32_145398_recast_x_q[31]}}, c_i32_145398_recast_x_q});
    assign i_pivot41_afs_abort_to_error75_o = $unsigned($signed(i_pivot41_afs_abort_to_error75_a) - $signed(i_pivot41_afs_abort_to_error75_b));
    assign i_pivot41_afs_abort_to_error75_c[0] = i_pivot41_afs_abort_to_error75_o[33];

    // i_acl_620_afs_abort_to_error291(LOGICAL,100)@3
    assign i_acl_620_afs_abort_to_error291_q = i_pivot41_afs_abort_to_error75_c ^ i_pivot47_afs_abort_to_error39_c;

    // c_i32_141379_recast_x(CONSTANT,400)
    assign c_i32_141379_recast_x_q = $unsigned(32'b00000000000000000000000010001101);

    // i_pivot35_afs_abort_to_error37(COMPARE,201)@3
    assign i_pivot35_afs_abort_to_error37_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot35_afs_abort_to_error37_b = $unsigned({{2{c_i32_141379_recast_x_q[31]}}, c_i32_141379_recast_x_q});
    assign i_pivot35_afs_abort_to_error37_o = $unsigned($signed(i_pivot35_afs_abort_to_error37_a) - $signed(i_pivot35_afs_abort_to_error37_b));
    assign i_pivot35_afs_abort_to_error37_c[0] = i_pivot35_afs_abort_to_error37_o[33];

    // c_i32_140396_recast_x(CONSTANT,399)
    assign c_i32_140396_recast_x_q = $unsigned(32'b00000000000000000000000010001100);

    // i_pivot29_afs_abort_to_error71(COMPARE,198)@3
    assign i_pivot29_afs_abort_to_error71_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot29_afs_abort_to_error71_b = $unsigned({{2{c_i32_140396_recast_x_q[31]}}, c_i32_140396_recast_x_q});
    assign i_pivot29_afs_abort_to_error71_o = $unsigned($signed(i_pivot29_afs_abort_to_error71_a) - $signed(i_pivot29_afs_abort_to_error71_b));
    assign i_pivot29_afs_abort_to_error71_c[0] = i_pivot29_afs_abort_to_error71_o[33];

    // i_acl_626_afs_abort_to_error292(LOGICAL,101)@3
    assign i_acl_626_afs_abort_to_error292_q = i_pivot29_afs_abort_to_error71_c ^ i_pivot35_afs_abort_to_error37_c;

    // i_unnamed_afs_abort_to_error293(LOGICAL,280)@3 + 1
    assign i_unnamed_afs_abort_to_error293_qi = i_acl_626_afs_abort_to_error292_q | i_acl_620_afs_abort_to_error291_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_afs_abort_to_error293_delay ( .xin(i_unnamed_afs_abort_to_error293_qi), .xout(i_unnamed_afs_abort_to_error293_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist59_i_unnamed_afs_abort_to_error293_q_5(DELAY,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_unnamed_afs_abort_to_error293_q_5_delay_0 <= '0;
            redist59_i_unnamed_afs_abort_to_error293_q_5_delay_1 <= '0;
            redist59_i_unnamed_afs_abort_to_error293_q_5_delay_2 <= '0;
            redist59_i_unnamed_afs_abort_to_error293_q_5_q <= '0;
        end
        else
        begin
            redist59_i_unnamed_afs_abort_to_error293_q_5_delay_0 <= $unsigned(i_unnamed_afs_abort_to_error293_q);
            redist59_i_unnamed_afs_abort_to_error293_q_5_delay_1 <= redist59_i_unnamed_afs_abort_to_error293_q_5_delay_0;
            redist59_i_unnamed_afs_abort_to_error293_q_5_delay_2 <= redist59_i_unnamed_afs_abort_to_error293_q_5_delay_1;
            redist59_i_unnamed_afs_abort_to_error293_q_5_q <= redist59_i_unnamed_afs_abort_to_error293_q_5_delay_2;
        end
    end

    // i_acl_631_afs_abort_to_error294(MUX,102)@8
    assign i_acl_631_afs_abort_to_error294_s = redist59_i_unnamed_afs_abort_to_error293_q_5_q;
    always @(i_acl_631_afs_abort_to_error294_s or i_acl_619_afs_abort_to_error290_q or redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q)
    begin
        unique case (i_acl_631_afs_abort_to_error294_s)
            1'b0 : i_acl_631_afs_abort_to_error294_q = i_acl_619_afs_abort_to_error290_q;
            1'b1 : i_acl_631_afs_abort_to_error294_q = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q;
            default : i_acl_631_afs_abort_to_error294_q = 64'b0;
        endcase
    end

    // c_i32_144363_recast_x(CONSTANT,403)
    assign c_i32_144363_recast_x_q = $unsigned(32'b00000000000000000000000010010000);

    // i_pivot85_afs_abort_to_error5(COMPARE,224)@3
    assign i_pivot85_afs_abort_to_error5_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot85_afs_abort_to_error5_b = $unsigned({{2{c_i32_144363_recast_x_q[31]}}, c_i32_144363_recast_x_q});
    assign i_pivot85_afs_abort_to_error5_o = $unsigned($signed(i_pivot85_afs_abort_to_error5_a) - $signed(i_pivot85_afs_abort_to_error5_b));
    assign i_pivot85_afs_abort_to_error5_c[0] = i_pivot85_afs_abort_to_error5_o[33];

    // i_acl_636_afs_abort_to_error295(LOGICAL,103)@3 + 1
    assign i_acl_636_afs_abort_to_error295_qi = i_pivot31_afs_abort_to_error128_c ^ i_pivot85_afs_abort_to_error5_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_636_afs_abort_to_error295_delay ( .xin(i_acl_636_afs_abort_to_error295_qi), .xout(i_acl_636_afs_abort_to_error295_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist78_i_acl_636_afs_abort_to_error295_q_5(DELAY,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_acl_636_afs_abort_to_error295_q_5_delay_0 <= '0;
            redist78_i_acl_636_afs_abort_to_error295_q_5_delay_1 <= '0;
            redist78_i_acl_636_afs_abort_to_error295_q_5_delay_2 <= '0;
            redist78_i_acl_636_afs_abort_to_error295_q_5_q <= '0;
        end
        else
        begin
            redist78_i_acl_636_afs_abort_to_error295_q_5_delay_0 <= $unsigned(i_acl_636_afs_abort_to_error295_q);
            redist78_i_acl_636_afs_abort_to_error295_q_5_delay_1 <= redist78_i_acl_636_afs_abort_to_error295_q_5_delay_0;
            redist78_i_acl_636_afs_abort_to_error295_q_5_delay_2 <= redist78_i_acl_636_afs_abort_to_error295_q_5_delay_1;
            redist78_i_acl_636_afs_abort_to_error295_q_5_q <= redist78_i_acl_636_afs_abort_to_error295_q_5_delay_2;
        end
    end

    // i_acl_638_afs_abort_to_error296(MUX,104)@8
    assign i_acl_638_afs_abort_to_error296_s = redist78_i_acl_636_afs_abort_to_error295_q_5_q;
    always @(i_acl_638_afs_abort_to_error296_s or i_acl_631_afs_abort_to_error294_q or redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0_q)
    begin
        unique case (i_acl_638_afs_abort_to_error296_s)
            1'b0 : i_acl_638_afs_abort_to_error296_q = i_acl_631_afs_abort_to_error294_q;
            1'b1 : i_acl_638_afs_abort_to_error296_q = redist44_sync_together447_aunroll_x_in_c1_eni1_30_tpl_7_outputreg0_q;
            default : i_acl_638_afs_abort_to_error296_q = 64'b0;
        endcase
    end

    // i_acl_642_afs_abort_to_error297(LOGICAL,105)@3
    assign i_acl_642_afs_abort_to_error297_q = i_pivot85_afs_abort_to_error5_c ^ i_pivot41_afs_abort_to_error75_c;

    // c_i32_152401_recast_x(CONSTANT,411)
    assign c_i32_152401_recast_x_q = $unsigned(32'b00000000000000000000000010011000);

    // i_pivot53_afs_abort_to_error81(COMPARE,210)@3
    assign i_pivot53_afs_abort_to_error81_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot53_afs_abort_to_error81_b = $unsigned({{2{c_i32_152401_recast_x_q[31]}}, c_i32_152401_recast_x_q});
    assign i_pivot53_afs_abort_to_error81_o = $unsigned($signed(i_pivot53_afs_abort_to_error81_a) - $signed(i_pivot53_afs_abort_to_error81_b));
    assign i_pivot53_afs_abort_to_error81_c[0] = i_pivot53_afs_abort_to_error81_o[33];

    // c_i32_151381_recast_x(CONSTANT,410)
    assign c_i32_151381_recast_x_q = $unsigned(32'b00000000000000000000000010010111);

    // i_pivot55_afs_abort_to_error41(COMPARE,211)@3
    assign i_pivot55_afs_abort_to_error41_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot55_afs_abort_to_error41_b = $unsigned({{2{c_i32_151381_recast_x_q[31]}}, c_i32_151381_recast_x_q});
    assign i_pivot55_afs_abort_to_error41_o = $unsigned($signed(i_pivot55_afs_abort_to_error41_a) - $signed(i_pivot55_afs_abort_to_error41_b));
    assign i_pivot55_afs_abort_to_error41_c[0] = i_pivot55_afs_abort_to_error41_o[33];

    // i_acl_645_afs_abort_to_error298(LOGICAL,106)@3
    assign i_acl_645_afs_abort_to_error298_q = i_pivot55_afs_abort_to_error41_c ^ i_pivot53_afs_abort_to_error81_c;

    // i_reduction_afs_abort_to_error_7_afs_abort_to_error302(LOGICAL,235)@3
    assign i_reduction_afs_abort_to_error_7_afs_abort_to_error302_q = i_acl_645_afs_abort_to_error298_q | i_acl_642_afs_abort_to_error297_q;

    // c_i32_150400_recast_x(CONSTANT,409)
    assign c_i32_150400_recast_x_q = $unsigned(32'b00000000000000000000000010010110);

    // i_pivot49_afs_abort_to_error79(COMPARE,208)@3
    assign i_pivot49_afs_abort_to_error79_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot49_afs_abort_to_error79_b = $unsigned({{2{c_i32_150400_recast_x_q[31]}}, c_i32_150400_recast_x_q});
    assign i_pivot49_afs_abort_to_error79_o = $unsigned($signed(i_pivot49_afs_abort_to_error79_a) - $signed(i_pivot49_afs_abort_to_error79_b));
    assign i_pivot49_afs_abort_to_error79_c[0] = i_pivot49_afs_abort_to_error79_o[33];

    // i_acl_651_afs_abort_to_error299(LOGICAL,107)@3
    assign i_acl_651_afs_abort_to_error299_q = i_pivot49_afs_abort_to_error79_c ^ i_pivot55_afs_abort_to_error41_c;

    // i_acl_658_afs_abort_to_error300(LOGICAL,108)@3
    assign i_acl_658_afs_abort_to_error300_q = i_pivot37_afs_abort_to_error19_c ^ i_pivot29_afs_abort_to_error71_c;

    // i_reduction_afs_abort_to_error_6_afs_abort_to_error301(LOGICAL,234)@3
    assign i_reduction_afs_abort_to_error_6_afs_abort_to_error301_q = i_acl_658_afs_abort_to_error300_q | i_acl_651_afs_abort_to_error299_q;

    // i_reduction_afs_abort_to_error_8_afs_abort_to_error303(LOGICAL,236)@3 + 1
    assign i_reduction_afs_abort_to_error_8_afs_abort_to_error303_qi = i_reduction_afs_abort_to_error_6_afs_abort_to_error301_q | i_reduction_afs_abort_to_error_7_afs_abort_to_error302_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_afs_abort_to_error_8_afs_abort_to_error303_delay ( .xin(i_reduction_afs_abort_to_error_8_afs_abort_to_error303_qi), .xout(i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5(DELAY,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_0 <= '0;
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_1 <= '0;
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_2 <= '0;
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_q <= '0;
        end
        else
        begin
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_0 <= $unsigned(i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q);
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_1 <= redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_0;
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_2 <= redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_1;
            redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_q <= redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_delay_2;
        end
    end

    // i_acl_662_afs_abort_to_error304(MUX,109)@8
    assign i_acl_662_afs_abort_to_error304_s = redist66_i_reduction_afs_abort_to_error_8_afs_abort_to_error303_q_5_q;
    always @(i_acl_662_afs_abort_to_error304_s or i_acl_638_afs_abort_to_error296_q or redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q)
    begin
        unique case (i_acl_662_afs_abort_to_error304_s)
            1'b0 : i_acl_662_afs_abort_to_error304_q = i_acl_638_afs_abort_to_error296_q;
            1'b1 : i_acl_662_afs_abort_to_error304_q = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q;
            default : i_acl_662_afs_abort_to_error304_q = 64'b0;
        endcase
    end

    // c_i32_149371_recast_x(CONSTANT,408)
    assign c_i32_149371_recast_x_q = $unsigned(32'b00000000000000000000000010010101);

    // i_pivot57_afs_abort_to_error21(COMPARE,212)@3
    assign i_pivot57_afs_abort_to_error21_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot57_afs_abort_to_error21_b = $unsigned({{2{c_i32_149371_recast_x_q[31]}}, c_i32_149371_recast_x_q});
    assign i_pivot57_afs_abort_to_error21_o = $unsigned($signed(i_pivot57_afs_abort_to_error21_a) - $signed(i_pivot57_afs_abort_to_error21_b));
    assign i_pivot57_afs_abort_to_error21_c[0] = i_pivot57_afs_abort_to_error21_o[33];

    // c_i32_148424_recast_x(CONSTANT,407)
    assign c_i32_148424_recast_x_q = $unsigned(32'b00000000000000000000000010010100);

    // i_pivot43_afs_abort_to_error130(COMPARE,205)@3
    assign i_pivot43_afs_abort_to_error130_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot43_afs_abort_to_error130_b = $unsigned({{2{c_i32_148424_recast_x_q[31]}}, c_i32_148424_recast_x_q});
    assign i_pivot43_afs_abort_to_error130_o = $unsigned($signed(i_pivot43_afs_abort_to_error130_a) - $signed(i_pivot43_afs_abort_to_error130_b));
    assign i_pivot43_afs_abort_to_error130_c[0] = i_pivot43_afs_abort_to_error130_o[33];

    // i_acl_665_afs_abort_to_error305(LOGICAL,110)@3 + 1
    assign i_acl_665_afs_abort_to_error305_qi = i_pivot43_afs_abort_to_error130_c ^ i_pivot57_afs_abort_to_error21_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_665_afs_abort_to_error305_delay ( .xin(i_acl_665_afs_abort_to_error305_qi), .xout(i_acl_665_afs_abort_to_error305_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist77_i_acl_665_afs_abort_to_error305_q_5(DELAY,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_acl_665_afs_abort_to_error305_q_5_delay_0 <= '0;
            redist77_i_acl_665_afs_abort_to_error305_q_5_delay_1 <= '0;
            redist77_i_acl_665_afs_abort_to_error305_q_5_delay_2 <= '0;
            redist77_i_acl_665_afs_abort_to_error305_q_5_q <= '0;
        end
        else
        begin
            redist77_i_acl_665_afs_abort_to_error305_q_5_delay_0 <= $unsigned(i_acl_665_afs_abort_to_error305_q);
            redist77_i_acl_665_afs_abort_to_error305_q_5_delay_1 <= redist77_i_acl_665_afs_abort_to_error305_q_5_delay_0;
            redist77_i_acl_665_afs_abort_to_error305_q_5_delay_2 <= redist77_i_acl_665_afs_abort_to_error305_q_5_delay_1;
            redist77_i_acl_665_afs_abort_to_error305_q_5_q <= redist77_i_acl_665_afs_abort_to_error305_q_5_delay_2;
        end
    end

    // i_acl_669_afs_abort_to_error306(MUX,111)@8
    assign i_acl_669_afs_abort_to_error306_s = redist77_i_acl_665_afs_abort_to_error305_q_5_q;
    always @(i_acl_669_afs_abort_to_error306_s or i_acl_662_afs_abort_to_error304_q or redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_q)
    begin
        unique case (i_acl_669_afs_abort_to_error306_s)
            1'b0 : i_acl_669_afs_abort_to_error306_q = i_acl_662_afs_abort_to_error304_q;
            1'b1 : i_acl_669_afs_abort_to_error306_q = redist24_sync_together447_aunroll_x_in_c1_eni1_14_tpl_7_mem_q;
            default : i_acl_669_afs_abort_to_error306_q = 64'b0;
        endcase
    end

    // i_acl_670_afs_abort_to_error307(LOGICAL,112)@3
    assign i_acl_670_afs_abort_to_error307_q = i_pivot35_afs_abort_to_error37_c ^ i_pivot33_afs_abort_to_error73_c;

    // i_acl_677_afs_abort_to_error308(LOGICAL,113)@3
    assign i_acl_677_afs_abort_to_error308_q = i_pivot57_afs_abort_to_error21_c ^ i_pivot49_afs_abort_to_error79_c;

    // i_unnamed_afs_abort_to_error309(LOGICAL,281)@3
    assign i_unnamed_afs_abort_to_error309_q = i_acl_677_afs_abort_to_error308_q | i_acl_670_afs_abort_to_error307_q;

    // i_acl_682_afs_abort_to_error310(LOGICAL,114)@3
    assign i_acl_682_afs_abort_to_error310_q = i_pivot45_afs_abort_to_error77_c ^ i_pivot43_afs_abort_to_error130_c;

    // i_unnamed_afs_abort_to_error311(LOGICAL,282)@3 + 1
    assign i_unnamed_afs_abort_to_error311_qi = i_acl_682_afs_abort_to_error310_q | i_unnamed_afs_abort_to_error309_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_afs_abort_to_error311_delay ( .xin(i_unnamed_afs_abort_to_error311_qi), .xout(i_unnamed_afs_abort_to_error311_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist58_i_unnamed_afs_abort_to_error311_q_5(DELAY,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_unnamed_afs_abort_to_error311_q_5_delay_0 <= '0;
            redist58_i_unnamed_afs_abort_to_error311_q_5_delay_1 <= '0;
            redist58_i_unnamed_afs_abort_to_error311_q_5_delay_2 <= '0;
            redist58_i_unnamed_afs_abort_to_error311_q_5_q <= '0;
        end
        else
        begin
            redist58_i_unnamed_afs_abort_to_error311_q_5_delay_0 <= $unsigned(i_unnamed_afs_abort_to_error311_q);
            redist58_i_unnamed_afs_abort_to_error311_q_5_delay_1 <= redist58_i_unnamed_afs_abort_to_error311_q_5_delay_0;
            redist58_i_unnamed_afs_abort_to_error311_q_5_delay_2 <= redist58_i_unnamed_afs_abort_to_error311_q_5_delay_1;
            redist58_i_unnamed_afs_abort_to_error311_q_5_q <= redist58_i_unnamed_afs_abort_to_error311_q_5_delay_2;
        end
    end

    // i_acl_688_afs_abort_to_error312(MUX,115)@8
    assign i_acl_688_afs_abort_to_error312_s = redist58_i_unnamed_afs_abort_to_error311_q_5_q;
    always @(i_acl_688_afs_abort_to_error312_s or i_acl_669_afs_abort_to_error306_q or redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q)
    begin
        unique case (i_acl_688_afs_abort_to_error312_s)
            1'b0 : i_acl_688_afs_abort_to_error312_q = i_acl_669_afs_abort_to_error306_q;
            1'b1 : i_acl_688_afs_abort_to_error312_q = redist25_sync_together447_aunroll_x_in_c1_eni1_15_tpl_7_outputreg0_q;
            default : i_acl_688_afs_abort_to_error312_q = 64'b0;
        endcase
    end

    // i_acl_689_afs_abort_to_error313(LOGICAL,116)@3 + 1
    assign i_acl_689_afs_abort_to_error313_qi = i_pivot53_afs_abort_to_error81_c ^ i_pivot51_afs_abort_to_error132_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_689_afs_abort_to_error313_delay ( .xin(i_acl_689_afs_abort_to_error313_qi), .xout(i_acl_689_afs_abort_to_error313_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist76_i_acl_689_afs_abort_to_error313_q_5(DELAY,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_acl_689_afs_abort_to_error313_q_5_delay_0 <= '0;
            redist76_i_acl_689_afs_abort_to_error313_q_5_delay_1 <= '0;
            redist76_i_acl_689_afs_abort_to_error313_q_5_delay_2 <= '0;
            redist76_i_acl_689_afs_abort_to_error313_q_5_q <= '0;
        end
        else
        begin
            redist76_i_acl_689_afs_abort_to_error313_q_5_delay_0 <= $unsigned(i_acl_689_afs_abort_to_error313_q);
            redist76_i_acl_689_afs_abort_to_error313_q_5_delay_1 <= redist76_i_acl_689_afs_abort_to_error313_q_5_delay_0;
            redist76_i_acl_689_afs_abort_to_error313_q_5_delay_2 <= redist76_i_acl_689_afs_abort_to_error313_q_5_delay_1;
            redist76_i_acl_689_afs_abort_to_error313_q_5_q <= redist76_i_acl_689_afs_abort_to_error313_q_5_delay_2;
        end
    end

    // i_acl_695_afs_abort_to_error314(MUX,117)@8 + 1
    assign i_acl_695_afs_abort_to_error314_s = redist76_i_acl_689_afs_abort_to_error313_q_5_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_695_afs_abort_to_error314_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_695_afs_abort_to_error314_s)
                1'b0 : i_acl_695_afs_abort_to_error314_q <= i_acl_688_afs_abort_to_error312_q;
                1'b1 : i_acl_695_afs_abort_to_error314_q <= redist41_sync_together447_aunroll_x_in_c1_eni1_27_tpl_7_mem_q;
                default : i_acl_695_afs_abort_to_error314_q <= 64'b0;
            endcase
        end
    end

    // c_i32_13419_recast_x(CONSTANT,392)
    assign c_i32_13419_recast_x_q = $unsigned(32'b00000000000000000000000000001101);

    // i_switchleaf_afs_abort_to_error117(LOGICAL,259)@1
    assign i_switchleaf_afs_abort_to_error117_q = $unsigned(in_c1_eni1_1_tpl != c_i32_13419_recast_x_q ? 1'b1 : 1'b0);

    // i_switchleaf3_not_afs_abort_to_error121(LOGICAL,254)@1
    assign i_switchleaf3_not_afs_abort_to_error121_q = i_switchleaf3_afs_abort_to_error119_q ^ VCC_q;

    // i_pivot_afs_abort_to_error59(COMPARE,227)@1
    assign i_pivot_afs_abort_to_error59_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot_afs_abort_to_error59_b = $unsigned({{2{c_i32_27390_recast_x_q[31]}}, c_i32_27390_recast_x_q});
    assign i_pivot_afs_abort_to_error59_o = $unsigned($signed(i_pivot_afs_abort_to_error59_a) - $signed(i_pivot_afs_abort_to_error59_b));
    assign i_pivot_afs_abort_to_error59_c[0] = i_pivot_afs_abort_to_error59_o[33];

    // i_acl_696_afs_abort_to_error315(MUX,118)@1
    assign i_acl_696_afs_abort_to_error315_s = i_pivot_afs_abort_to_error59_c;
    always @(i_acl_696_afs_abort_to_error315_s or i_switchleaf3_not_afs_abort_to_error121_q or i_switchleaf_afs_abort_to_error117_q)
    begin
        unique case (i_acl_696_afs_abort_to_error315_s)
            1'b0 : i_acl_696_afs_abort_to_error315_q = i_switchleaf3_not_afs_abort_to_error121_q;
            1'b1 : i_acl_696_afs_abort_to_error315_q = i_switchleaf_afs_abort_to_error117_q;
            default : i_acl_696_afs_abort_to_error315_q = 1'b0;
        endcase
    end

    // i_acl_697_afs_abort_to_error316(LOGICAL,119)@1
    assign i_acl_697_afs_abort_to_error316_q = i_switchleaf5_afs_abort_to_error122_q ^ i_pivot7_afs_abort_to_error61_c;

    // i_pivot9_afs_abort_to_error31(COMPARE,226)@1
    assign i_pivot9_afs_abort_to_error31_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot9_afs_abort_to_error31_b = $unsigned({{2{c_i32_30376_recast_x_q[31]}}, c_i32_30376_recast_x_q});
    assign i_pivot9_afs_abort_to_error31_o = $unsigned($signed(i_pivot9_afs_abort_to_error31_a) - $signed(i_pivot9_afs_abort_to_error31_b));
    assign i_pivot9_afs_abort_to_error31_c[0] = i_pivot9_afs_abort_to_error31_o[33];

    // i_acl_698_afs_abort_to_error317(MUX,120)@1
    assign i_acl_698_afs_abort_to_error317_s = i_pivot9_afs_abort_to_error31_c;
    always @(i_acl_698_afs_abort_to_error317_s or i_acl_697_afs_abort_to_error316_q or i_acl_696_afs_abort_to_error315_q)
    begin
        unique case (i_acl_698_afs_abort_to_error317_s)
            1'b0 : i_acl_698_afs_abort_to_error317_q = i_acl_697_afs_abort_to_error316_q;
            1'b1 : i_acl_698_afs_abort_to_error317_q = i_acl_696_afs_abort_to_error315_q;
            default : i_acl_698_afs_abort_to_error317_q = 1'b0;
        endcase
    end

    // i_acl_699_afs_abort_to_error318(LOGICAL,121)@1 + 1
    assign i_acl_699_afs_abort_to_error318_qi = i_pivot19_afs_abort_to_error17_c & i_acl_698_afs_abort_to_error317_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_699_afs_abort_to_error318_delay ( .xin(i_acl_699_afs_abort_to_error318_qi), .xout(i_acl_699_afs_abort_to_error318_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist75_i_acl_699_afs_abort_to_error318_q_2(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_acl_699_afs_abort_to_error318_q_2_q <= '0;
        end
        else
        begin
            redist75_i_acl_699_afs_abort_to_error318_q_2_q <= $unsigned(i_acl_699_afs_abort_to_error318_q);
        end
    end

    // i_not_pivot83_afs_abort_to_error325(LOGICAL,157)@3
    assign i_not_pivot83_afs_abort_to_error325_q = i_pivot83_afs_abort_to_error11_c ^ VCC_q;

    // i_switchleaf59_afs_abort_to_error134(LOGICAL,255)@2
    assign i_switchleaf59_afs_abort_to_error134_q = $unsigned(redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q != c_i32_154366_q ? 1'b1 : 1'b0);

    // i_unnamed_afs_abort_to_error319(LOGICAL,283)@2
    assign i_unnamed_afs_abort_to_error319_q = i_switchleaf59_afs_abort_to_error134_q & i_pivot61_afs_abort_to_error83_c;

    // i_switchleaf63_afs_abort_to_error169(LOGICAL,257)@2
    assign i_switchleaf63_afs_abort_to_error169_q = $unsigned(redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q != c_i32_158403_q ? 1'b1 : 1'b0);

    // i_unnamed_afs_abort_to_error320(LOGICAL,284)@2
    assign i_unnamed_afs_abort_to_error320_q = i_switchleaf63_afs_abort_to_error169_q & i_pivot65_afs_abort_to_error136_c;

    // i_pivot67_afs_abort_to_error85(COMPARE,215)@2
    assign i_pivot67_afs_abort_to_error85_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot67_afs_abort_to_error85_b = $unsigned({{2{c_i32_158403_q[31]}}, c_i32_158403_q});
    assign i_pivot67_afs_abort_to_error85_o = $unsigned($signed(i_pivot67_afs_abort_to_error85_a) - $signed(i_pivot67_afs_abort_to_error85_b));
    assign i_pivot67_afs_abort_to_error85_c[0] = i_pivot67_afs_abort_to_error85_o[33];

    // i_acl_703_afs_abort_to_error321(LOGICAL,122)@2
    assign i_acl_703_afs_abort_to_error321_q = i_pivot67_afs_abort_to_error85_c ^ i_unnamed_afs_abort_to_error320_q;

    // i_acl_704_afs_abort_to_error322(MUX,123)@2 + 1
    assign i_acl_704_afs_abort_to_error322_s = i_pivot69_afs_abort_to_error43_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_704_afs_abort_to_error322_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_704_afs_abort_to_error322_s)
                1'b0 : i_acl_704_afs_abort_to_error322_q <= i_acl_703_afs_abort_to_error321_q;
                1'b1 : i_acl_704_afs_abort_to_error322_q <= i_unnamed_afs_abort_to_error319_q;
                default : i_acl_704_afs_abort_to_error322_q <= 1'b0;
            endcase
        end
    end

    // i_acl_705_afs_abort_to_error323(LOGICAL,124)@3
    assign i_acl_705_afs_abort_to_error323_q = i_switchleaf71_afs_abort_to_error138_q ^ i_pivot73_afs_abort_to_error87_c;

    // redist67_i_pivot81_afs_abort_to_error23_c_1(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_pivot81_afs_abort_to_error23_c_1_q <= '0;
        end
        else
        begin
            redist67_i_pivot81_afs_abort_to_error23_c_1_q <= $unsigned(i_pivot81_afs_abort_to_error23_c);
        end
    end

    // i_acl_707_afs_abort_to_error324(MUX,125)@3
    assign i_acl_707_afs_abort_to_error324_s = redist67_i_pivot81_afs_abort_to_error23_c_1_q;
    always @(i_acl_707_afs_abort_to_error324_s or i_acl_705_afs_abort_to_error323_q or i_acl_704_afs_abort_to_error322_q)
    begin
        unique case (i_acl_707_afs_abort_to_error324_s)
            1'b0 : i_acl_707_afs_abort_to_error324_q = i_acl_705_afs_abort_to_error323_q;
            1'b1 : i_acl_707_afs_abort_to_error324_q = i_acl_704_afs_abort_to_error322_q;
            default : i_acl_707_afs_abort_to_error324_q = 1'b0;
        endcase
    end

    // i_acl_708_afs_abort_to_error326(LOGICAL,126)@3
    assign i_acl_708_afs_abort_to_error326_q = i_acl_707_afs_abort_to_error324_q & i_not_pivot83_afs_abort_to_error325_q;

    // i_acl_709_afs_abort_to_error327(MUX,127)@3 + 1
    assign i_acl_709_afs_abort_to_error327_s = i_pivot85_afs_abort_to_error5_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_709_afs_abort_to_error327_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_709_afs_abort_to_error327_s)
                1'b0 : i_acl_709_afs_abort_to_error327_q <= i_acl_708_afs_abort_to_error326_q;
                1'b1 : i_acl_709_afs_abort_to_error327_q <= redist75_i_acl_699_afs_abort_to_error318_q_2_q;
                default : i_acl_709_afs_abort_to_error327_q <= 1'b0;
            endcase
        end
    end

    // c_i32_169443_recast_x(CONSTANT,425)
    assign c_i32_169443_recast_x_q = $unsigned(32'b00000000000000000000000010101001);

    // i_unnamed_afs_abort_to_error328(LOGICAL,285)@3 + 1
    assign i_unnamed_afs_abort_to_error328_qi = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_169443_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_afs_abort_to_error328_delay ( .xin(i_unnamed_afs_abort_to_error328_qi), .xout(i_unnamed_afs_abort_to_error328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_not_pivot117_afs_abort_to_error332(LOGICAL,155)@3
    assign i_not_pivot117_afs_abort_to_error332_q = i_pivot117_afs_abort_to_error47_c ^ VCC_q;

    // i_switchleaf109_afs_abort_to_error142(LOGICAL,238)@3
    assign i_switchleaf109_afs_abort_to_error142_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q != c_i32_180384_recast_x_q ? 1'b1 : 1'b0);

    // i_switchleaf111_not_afs_abort_to_error173(LOGICAL,240)@3
    assign i_switchleaf111_not_afs_abort_to_error173_q = i_switchleaf111_afs_abort_to_error171_q ^ VCC_q;

    // i_acl_713_afs_abort_to_error330(LOGICAL,128)@3
    assign i_acl_713_afs_abort_to_error330_q = i_pivot113_afs_abort_to_error144_c ^ i_switchleaf111_not_afs_abort_to_error173_q;

    // i_acl_714_afs_abort_to_error331(MUX,129)@3
    assign i_acl_714_afs_abort_to_error331_s = i_pivot115_afs_abort_to_error95_c;
    always @(i_acl_714_afs_abort_to_error331_s or i_acl_713_afs_abort_to_error330_q or i_switchleaf109_afs_abort_to_error142_q)
    begin
        unique case (i_acl_714_afs_abort_to_error331_s)
            1'b0 : i_acl_714_afs_abort_to_error331_q = i_acl_713_afs_abort_to_error330_q;
            1'b1 : i_acl_714_afs_abort_to_error331_q = i_switchleaf109_afs_abort_to_error142_q;
            default : i_acl_714_afs_abort_to_error331_q = 1'b0;
        endcase
    end

    // i_acl_715_afs_abort_to_error333(LOGICAL,130)@3 + 1
    assign i_acl_715_afs_abort_to_error333_qi = i_acl_714_afs_abort_to_error331_q & i_not_pivot117_afs_abort_to_error332_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_715_afs_abort_to_error333_delay ( .xin(i_acl_715_afs_abort_to_error333_qi), .xout(i_acl_715_afs_abort_to_error333_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_716_afs_abort_to_error334(LOGICAL,131)@3
    assign i_acl_716_afs_abort_to_error334_q = i_switchleaf119_afs_abort_to_error146_q ^ i_pivot121_afs_abort_to_error97_c;

    // i_switchleaf123_afs_abort_to_error174(LOGICAL,242)@3
    assign i_switchleaf123_afs_abort_to_error174_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q != c_i32_49733388410_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_717_afs_abort_to_error335(LOGICAL,132)@3
    assign i_acl_717_afs_abort_to_error335_q = i_pivot125_afs_abort_to_error148_c & i_switchleaf123_afs_abort_to_error174_q;

    // i_acl_718_afs_abort_to_error336(LOGICAL,133)@3
    assign i_acl_718_afs_abort_to_error336_q = i_pivot127_afs_abort_to_error99_c ^ i_acl_717_afs_abort_to_error335_q;

    // i_acl_719_afs_abort_to_error337(MUX,134)@3 + 1
    assign i_acl_719_afs_abort_to_error337_s = i_pivot129_afs_abort_to_error49_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_719_afs_abort_to_error337_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_719_afs_abort_to_error337_s)
                1'b0 : i_acl_719_afs_abort_to_error337_q <= i_acl_718_afs_abort_to_error336_q;
                1'b1 : i_acl_719_afs_abort_to_error337_q <= i_acl_716_afs_abort_to_error334_q;
                default : i_acl_719_afs_abort_to_error337_q <= 1'b0;
            endcase
        end
    end

    // i_pivot131_afs_abort_to_error25(COMPARE,167)@3 + 1
    assign i_pivot131_afs_abort_to_error25_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot131_afs_abort_to_error25_b = $unsigned({{2{c_i32_49733380373_recast_x_q[31]}}, c_i32_49733380373_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot131_afs_abort_to_error25_o <= 34'b0;
        end
        else
        begin
            i_pivot131_afs_abort_to_error25_o <= $unsigned($signed(i_pivot131_afs_abort_to_error25_a) - $signed(i_pivot131_afs_abort_to_error25_b));
        end
    end
    assign i_pivot131_afs_abort_to_error25_c[0] = i_pivot131_afs_abort_to_error25_o[33];

    // i_acl_720_afs_abort_to_error338(MUX,135)@4
    assign i_acl_720_afs_abort_to_error338_s = i_pivot131_afs_abort_to_error25_c;
    always @(i_acl_720_afs_abort_to_error338_s or i_acl_719_afs_abort_to_error337_q or i_acl_715_afs_abort_to_error333_q)
    begin
        unique case (i_acl_720_afs_abort_to_error338_s)
            1'b0 : i_acl_720_afs_abort_to_error338_q = i_acl_719_afs_abort_to_error337_q;
            1'b1 : i_acl_720_afs_abort_to_error338_q = i_acl_715_afs_abort_to_error333_q;
            default : i_acl_720_afs_abort_to_error338_q = 1'b0;
        endcase
    end

    // redist72_i_pivot133_afs_abort_to_error13_c_2(DELAY,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_pivot133_afs_abort_to_error13_c_2_q <= '0;
        end
        else
        begin
            redist72_i_pivot133_afs_abort_to_error13_c_2_q <= $unsigned(i_pivot133_afs_abort_to_error13_c);
        end
    end

    // i_acl_721_afs_abort_to_error339(MUX,136)@4
    assign i_acl_721_afs_abort_to_error339_s = redist72_i_pivot133_afs_abort_to_error13_c_2_q;
    always @(i_acl_721_afs_abort_to_error339_s or i_acl_720_afs_abort_to_error338_q or i_unnamed_afs_abort_to_error328_q)
    begin
        unique case (i_acl_721_afs_abort_to_error339_s)
            1'b0 : i_acl_721_afs_abort_to_error339_q = i_acl_720_afs_abort_to_error338_q;
            1'b1 : i_acl_721_afs_abort_to_error339_q = i_unnamed_afs_abort_to_error328_q;
            default : i_acl_721_afs_abort_to_error339_q = 1'b0;
        endcase
    end

    // i_not_pivot157_afs_abort_to_error344(LOGICAL,156)@4
    assign i_not_pivot157_afs_abort_to_error344_q = i_pivot157_afs_abort_to_error27_c ^ VCC_q;

    // i_acl_722_afs_abort_to_error340(LOGICAL,137)@3
    assign i_acl_722_afs_abort_to_error340_q = i_switchleaf143_afs_abort_to_error152_q ^ i_pivot145_afs_abort_to_error105_c;

    // i_switchleaf147_not_afs_abort_to_error156(LOGICAL,245)@3
    assign i_switchleaf147_not_afs_abort_to_error156_q = i_switchleaf147_afs_abort_to_error154_q ^ VCC_q;

    // i_switchleaf149_not_afs_abort_to_error178(LOGICAL,247)@3
    assign i_switchleaf149_not_afs_abort_to_error178_q = i_switchleaf149_afs_abort_to_error176_q ^ VCC_q;

    // i_acl_723_afs_abort_to_error341(LOGICAL,138)@3
    assign i_acl_723_afs_abort_to_error341_q = i_pivot151_afs_abort_to_error157_c ^ i_switchleaf149_not_afs_abort_to_error178_q;

    // i_acl_724_afs_abort_to_error342(MUX,139)@3
    assign i_acl_724_afs_abort_to_error342_s = i_pivot153_afs_abort_to_error107_c;
    always @(i_acl_724_afs_abort_to_error342_s or i_acl_723_afs_abort_to_error341_q or i_switchleaf147_not_afs_abort_to_error156_q)
    begin
        unique case (i_acl_724_afs_abort_to_error342_s)
            1'b0 : i_acl_724_afs_abort_to_error342_q = i_acl_723_afs_abort_to_error341_q;
            1'b1 : i_acl_724_afs_abort_to_error342_q = i_switchleaf147_not_afs_abort_to_error156_q;
            default : i_acl_724_afs_abort_to_error342_q = 1'b0;
        endcase
    end

    // i_acl_725_afs_abort_to_error343(MUX,140)@3 + 1
    assign i_acl_725_afs_abort_to_error343_s = i_pivot155_afs_abort_to_error53_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_725_afs_abort_to_error343_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_725_afs_abort_to_error343_s)
                1'b0 : i_acl_725_afs_abort_to_error343_q <= i_acl_724_afs_abort_to_error342_q;
                1'b1 : i_acl_725_afs_abort_to_error343_q <= i_acl_722_afs_abort_to_error340_q;
                default : i_acl_725_afs_abort_to_error343_q <= 1'b0;
            endcase
        end
    end

    // i_acl_726_afs_abort_to_error345(LOGICAL,141)@4
    assign i_acl_726_afs_abort_to_error345_q = i_acl_725_afs_abort_to_error343_q & i_not_pivot157_afs_abort_to_error344_q;

    // i_unnamed_afs_abort_to_error346(COMPARE,286)@3
    assign i_unnamed_afs_abort_to_error346_a = $unsigned({{2{c_i32_49733412432_q[31]}}, c_i32_49733412432_q});
    assign i_unnamed_afs_abort_to_error346_b = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_unnamed_afs_abort_to_error346_o = $unsigned($signed(i_unnamed_afs_abort_to_error346_a) - $signed(i_unnamed_afs_abort_to_error346_b));
    assign i_unnamed_afs_abort_to_error346_c[0] = i_unnamed_afs_abort_to_error346_o[33];

    // i_switchleaf169_afs_abort_to_error161(LOGICAL,248)@3
    assign i_switchleaf169_afs_abort_to_error161_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733414375_q ? 1'b1 : 1'b0);

    // i_switchleaf171_afs_abort_to_error163(LOGICAL,249)@3
    assign i_switchleaf171_afs_abort_to_error163_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733416417_q ? 1'b1 : 1'b0);

    // i_pivot173_afs_abort_to_error113(COMPARE,184)@3
    assign i_pivot173_afs_abort_to_error113_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot173_afs_abort_to_error113_b = $unsigned({{2{c_i32_49733416417_q[31]}}, c_i32_49733416417_q});
    assign i_pivot173_afs_abort_to_error113_o = $unsigned($signed(i_pivot173_afs_abort_to_error113_a) - $signed(i_pivot173_afs_abort_to_error113_b));
    assign i_pivot173_afs_abort_to_error113_c[0] = i_pivot173_afs_abort_to_error113_o[33];

    // i_acl_730_v_afs_abort_to_error348(MUX,142)@3
    assign i_acl_730_v_afs_abort_to_error348_s = i_pivot173_afs_abort_to_error113_c;
    always @(i_acl_730_v_afs_abort_to_error348_s or i_switchleaf171_afs_abort_to_error163_q or i_switchleaf169_afs_abort_to_error161_q)
    begin
        unique case (i_acl_730_v_afs_abort_to_error348_s)
            1'b0 : i_acl_730_v_afs_abort_to_error348_q = i_switchleaf171_afs_abort_to_error163_q;
            1'b1 : i_acl_730_v_afs_abort_to_error348_q = i_switchleaf169_afs_abort_to_error161_q;
            default : i_acl_730_v_afs_abort_to_error348_q = 1'b0;
        endcase
    end

    // i_switchleaf175_afs_abort_to_error165(LOGICAL,250)@3
    assign i_switchleaf175_afs_abort_to_error165_q = $unsigned(redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q == c_i32_49733481389_q ? 1'b1 : 1'b0);

    // i_switchleaf177_afs_abort_to_error179(LOGICAL,251)@2
    assign i_switchleaf177_afs_abort_to_error179_q = $unsigned(redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q == c_i32_49733484418_q ? 1'b1 : 1'b0);

    // i_switchleaf179_afs_abort_to_error181(LOGICAL,252)@2
    assign i_switchleaf179_afs_abort_to_error181_q = $unsigned(redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q == c_i32_49733496433_q ? 1'b1 : 1'b0);

    // i_pivot181_afs_abort_to_error167(COMPARE,186)@2
    assign i_pivot181_afs_abort_to_error167_a = $unsigned({{2{redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist1_sync_together447_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot181_afs_abort_to_error167_b = $unsigned({{2{c_i32_49733496433_q[31]}}, c_i32_49733496433_q});
    assign i_pivot181_afs_abort_to_error167_o = $unsigned($signed(i_pivot181_afs_abort_to_error167_a) - $signed(i_pivot181_afs_abort_to_error167_b));
    assign i_pivot181_afs_abort_to_error167_c[0] = i_pivot181_afs_abort_to_error167_o[33];

    // i_acl_731_v_afs_abort_to_error349(MUX,143)@2 + 1
    assign i_acl_731_v_afs_abort_to_error349_s = i_pivot181_afs_abort_to_error167_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_731_v_afs_abort_to_error349_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_731_v_afs_abort_to_error349_s)
                1'b0 : i_acl_731_v_afs_abort_to_error349_q <= i_switchleaf179_afs_abort_to_error181_q;
                1'b1 : i_acl_731_v_afs_abort_to_error349_q <= i_switchleaf177_afs_abort_to_error179_q;
                default : i_acl_731_v_afs_abort_to_error349_q <= 1'b0;
            endcase
        end
    end

    // i_pivot183_afs_abort_to_error115(COMPARE,187)@3
    assign i_pivot183_afs_abort_to_error115_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot183_afs_abort_to_error115_b = $unsigned({{2{c_i32_49733484418_q[31]}}, c_i32_49733484418_q});
    assign i_pivot183_afs_abort_to_error115_o = $unsigned($signed(i_pivot183_afs_abort_to_error115_a) - $signed(i_pivot183_afs_abort_to_error115_b));
    assign i_pivot183_afs_abort_to_error115_c[0] = i_pivot183_afs_abort_to_error115_o[33];

    // i_acl_732_v_afs_abort_to_error350(MUX,144)@3
    assign i_acl_732_v_afs_abort_to_error350_s = i_pivot183_afs_abort_to_error115_c;
    always @(i_acl_732_v_afs_abort_to_error350_s or i_acl_731_v_afs_abort_to_error349_q or i_switchleaf175_afs_abort_to_error165_q)
    begin
        unique case (i_acl_732_v_afs_abort_to_error350_s)
            1'b0 : i_acl_732_v_afs_abort_to_error350_q = i_acl_731_v_afs_abort_to_error349_q;
            1'b1 : i_acl_732_v_afs_abort_to_error350_q = i_switchleaf175_afs_abort_to_error165_q;
            default : i_acl_732_v_afs_abort_to_error350_q = 1'b0;
        endcase
    end

    // i_pivot185_afs_abort_to_error57(COMPARE,188)@3
    assign i_pivot185_afs_abort_to_error57_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot185_afs_abort_to_error57_b = $unsigned({{2{c_i32_49733481389_q[31]}}, c_i32_49733481389_q});
    assign i_pivot185_afs_abort_to_error57_o = $unsigned($signed(i_pivot185_afs_abort_to_error57_a) - $signed(i_pivot185_afs_abort_to_error57_b));
    assign i_pivot185_afs_abort_to_error57_c[0] = i_pivot185_afs_abort_to_error57_o[33];

    // i_acl_733_v_afs_abort_to_error351(MUX,146)@3
    assign i_acl_733_v_afs_abort_to_error351_s = i_pivot185_afs_abort_to_error57_c;
    always @(i_acl_733_v_afs_abort_to_error351_s or i_acl_732_v_afs_abort_to_error350_q or i_acl_730_v_afs_abort_to_error348_q)
    begin
        unique case (i_acl_733_v_afs_abort_to_error351_s)
            1'b0 : i_acl_733_v_afs_abort_to_error351_q = i_acl_732_v_afs_abort_to_error350_q;
            1'b1 : i_acl_733_v_afs_abort_to_error351_q = i_acl_730_v_afs_abort_to_error348_q;
            default : i_acl_733_v_afs_abort_to_error351_q = 1'b0;
        endcase
    end

    // i_acl_733_afs_abort_to_error352(LOGICAL,145)@3
    assign i_acl_733_afs_abort_to_error352_q = i_acl_733_v_afs_abort_to_error351_q ^ VCC_q;

    // i_pivot187_afs_abort_to_error29(COMPARE,189)@3
    assign i_pivot187_afs_abort_to_error29_a = $unsigned({{2{redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist2_sync_together447_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot187_afs_abort_to_error29_b = $unsigned({{2{c_i32_49733414375_q[31]}}, c_i32_49733414375_q});
    assign i_pivot187_afs_abort_to_error29_o = $unsigned($signed(i_pivot187_afs_abort_to_error29_a) - $signed(i_pivot187_afs_abort_to_error29_b));
    assign i_pivot187_afs_abort_to_error29_c[0] = i_pivot187_afs_abort_to_error29_o[33];

    // i_acl_734_afs_abort_to_error353(MUX,147)@3 + 1
    assign i_acl_734_afs_abort_to_error353_s = i_pivot187_afs_abort_to_error29_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_734_afs_abort_to_error353_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_734_afs_abort_to_error353_s)
                1'b0 : i_acl_734_afs_abort_to_error353_q <= i_acl_733_afs_abort_to_error352_q;
                1'b1 : i_acl_734_afs_abort_to_error353_q <= i_unnamed_afs_abort_to_error346_c;
                default : i_acl_734_afs_abort_to_error353_q <= 1'b0;
            endcase
        end
    end

    // i_acl_735_afs_abort_to_error354(MUX,148)@4
    assign i_acl_735_afs_abort_to_error354_s = i_pivot189_afs_abort_to_error15_c;
    always @(i_acl_735_afs_abort_to_error354_s or i_acl_734_afs_abort_to_error353_q or i_acl_726_afs_abort_to_error345_q)
    begin
        unique case (i_acl_735_afs_abort_to_error354_s)
            1'b0 : i_acl_735_afs_abort_to_error354_q = i_acl_734_afs_abort_to_error353_q;
            1'b1 : i_acl_735_afs_abort_to_error354_q = i_acl_726_afs_abort_to_error345_q;
            default : i_acl_735_afs_abort_to_error354_q = 1'b0;
        endcase
    end

    // i_acl_736_afs_abort_to_error355(MUX,149)@4
    assign i_acl_736_afs_abort_to_error355_s = i_pivot191_afs_abort_to_error7_c;
    always @(i_acl_736_afs_abort_to_error355_s or i_acl_735_afs_abort_to_error354_q or i_acl_721_afs_abort_to_error339_q)
    begin
        unique case (i_acl_736_afs_abort_to_error355_s)
            1'b0 : i_acl_736_afs_abort_to_error355_q = i_acl_735_afs_abort_to_error354_q;
            1'b1 : i_acl_736_afs_abort_to_error355_q = i_acl_721_afs_abort_to_error339_q;
            default : i_acl_736_afs_abort_to_error355_q = 1'b0;
        endcase
    end

    // redist71_i_pivot193_afs_abort_to_error3_c_2(DELAY,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_pivot193_afs_abort_to_error3_c_2_q <= '0;
        end
        else
        begin
            redist71_i_pivot193_afs_abort_to_error3_c_2_q <= $unsigned(redist70_i_pivot193_afs_abort_to_error3_c_1_q);
        end
    end

    // i_acl_737_afs_abort_to_error356(MUX,150)@4 + 1
    assign i_acl_737_afs_abort_to_error356_s = redist71_i_pivot193_afs_abort_to_error3_c_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_737_afs_abort_to_error356_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_737_afs_abort_to_error356_s)
                1'b0 : i_acl_737_afs_abort_to_error356_q <= i_acl_736_afs_abort_to_error355_q;
                1'b1 : i_acl_737_afs_abort_to_error356_q <= i_acl_709_afs_abort_to_error327_q;
                default : i_acl_737_afs_abort_to_error356_q <= 1'b0;
            endcase
        end
    end

    // redist74_i_acl_737_afs_abort_to_error356_q_5(DELAY,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_acl_737_afs_abort_to_error356_q_5_delay_0 <= '0;
            redist74_i_acl_737_afs_abort_to_error356_q_5_delay_1 <= '0;
            redist74_i_acl_737_afs_abort_to_error356_q_5_delay_2 <= '0;
            redist74_i_acl_737_afs_abort_to_error356_q_5_q <= '0;
        end
        else
        begin
            redist74_i_acl_737_afs_abort_to_error356_q_5_delay_0 <= $unsigned(i_acl_737_afs_abort_to_error356_q);
            redist74_i_acl_737_afs_abort_to_error356_q_5_delay_1 <= redist74_i_acl_737_afs_abort_to_error356_q_5_delay_0;
            redist74_i_acl_737_afs_abort_to_error356_q_5_delay_2 <= redist74_i_acl_737_afs_abort_to_error356_q_5_delay_1;
            redist74_i_acl_737_afs_abort_to_error356_q_5_q <= redist74_i_acl_737_afs_abort_to_error356_q_5_delay_2;
        end
    end

    // i_acl_738_afs_abort_to_error357(MUX,151)@9
    assign i_acl_738_afs_abort_to_error357_s = redist74_i_acl_737_afs_abort_to_error356_q_5_q;
    always @(i_acl_738_afs_abort_to_error357_s or i_acl_695_afs_abort_to_error314_q or redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_outputreg0_q)
    begin
        unique case (i_acl_738_afs_abort_to_error357_s)
            1'b0 : i_acl_738_afs_abort_to_error357_q = i_acl_695_afs_abort_to_error314_q;
            1'b1 : i_acl_738_afs_abort_to_error357_q = redist46_sync_together447_aunroll_x_in_c1_eni1_32_tpl_8_outputreg0_q;
            default : i_acl_738_afs_abort_to_error357_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_mem_pn1_afs_abort_to_error358(BLACKBOX,154)@9
    // in in_i_stall@20000000
    // out out_o_readdata@14
    // out out_o_stall@13
    // out out_o_valid@14
    // out out_pn1_afs_abort_to_error_avm_address@20000000
    // out out_pn1_afs_abort_to_error_avm_burstcount@20000000
    // out out_pn1_afs_abort_to_error_avm_byteenable@20000000
    // out out_pn1_afs_abort_to_error_avm_enable@20000000
    // out out_pn1_afs_abort_to_error_avm_read@20000000
    // out out_pn1_afs_abort_to_error_avm_write@20000000
    // out out_pn1_afs_abort_to_error_avm_writedata@20000000
    afs_abort_to_error_i_llvm_fpga_mem_pn1_0 thei_llvm_fpga_mem_pn1_afs_abort_to_error358 (
        .in_flush(in_flush),
        .in_i_address(i_acl_738_afs_abort_to_error357_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_pn1_afs_abort_to_error_avm_readdata(in_pn1_afs_abort_to_error_avm_readdata),
        .in_pn1_afs_abort_to_error_avm_readdatavalid(in_pn1_afs_abort_to_error_avm_readdatavalid),
        .in_pn1_afs_abort_to_error_avm_waitrequest(in_pn1_afs_abort_to_error_avm_waitrequest),
        .in_pn1_afs_abort_to_error_avm_writeack(in_pn1_afs_abort_to_error_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_pn1_afs_abort_to_error_avm_address(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_address),
        .out_pn1_afs_abort_to_error_avm_burstcount(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_burstcount),
        .out_pn1_afs_abort_to_error_avm_byteenable(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_byteenable),
        .out_pn1_afs_abort_to_error_avm_enable(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_enable),
        .out_pn1_afs_abort_to_error_avm_read(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_read),
        .out_pn1_afs_abort_to_error_avm_write(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_write),
        .out_pn1_afs_abort_to_error_avm_writedata(i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_pn1_afs_abort_to_error_avm_address = i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_address;
    assign out_pn1_afs_abort_to_error_avm_enable = i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_enable;
    assign out_pn1_afs_abort_to_error_avm_read = i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_read;
    assign out_pn1_afs_abort_to_error_avm_write = i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_write;
    assign out_pn1_afs_abort_to_error_avm_writedata = i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_writedata;
    assign out_pn1_afs_abort_to_error_avm_byteenable = i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_byteenable;
    assign out_pn1_afs_abort_to_error_avm_burstcount = i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_pn1_afs_abort_to_error_avm_burstcount;

    // valid_fanout_reg0(REG,492)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist51_sync_together447_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist0_valid_fanout_reg0_q_5(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_5_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_3 <= '0;
            redist0_valid_fanout_reg0_q_5_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_5_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_5_delay_1 <= redist0_valid_fanout_reg0_q_5_delay_0;
            redist0_valid_fanout_reg0_q_5_delay_2 <= redist0_valid_fanout_reg0_q_5_delay_1;
            redist0_valid_fanout_reg0_q_5_delay_3 <= redist0_valid_fanout_reg0_q_5_delay_2;
            redist0_valid_fanout_reg0_q_5_q <= redist0_valid_fanout_reg0_q_5_delay_3;
        end
    end

    // c_i32_0444(CONSTANT,5)
    assign c_i32_0444_q = $unsigned(32'b00000000000000000000000000000000);

    // i_retval_0_afs_abort_to_error359(SUB,237)@14
    assign i_retval_0_afs_abort_to_error359_a = {1'b0, c_i32_0444_q};
    assign i_retval_0_afs_abort_to_error359_b = {1'b0, i_llvm_fpga_mem_pn1_afs_abort_to_error358_out_o_readdata};
    assign i_retval_0_afs_abort_to_error359_o = $unsigned(i_retval_0_afs_abort_to_error359_a) - $unsigned(i_retval_0_afs_abort_to_error359_b);
    assign i_retval_0_afs_abort_to_error359_q = i_retval_0_afs_abort_to_error359_o[32:0];

    // bgTrunc_i_retval_0_afs_abort_to_error359_sel_x(BITSELECT,385)@14
    assign bgTrunc_i_retval_0_afs_abort_to_error359_sel_x_b = $unsigned(i_retval_0_afs_abort_to_error359_q[31:0]);

    // sync_out_aunroll_x(GPOUT,490)@14
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = bgTrunc_i_retval_0_afs_abort_to_error359_sel_x_b;
    assign out_o_valid = redist0_valid_fanout_reg0_q_5_q;
    assign out_unnamed_afs_abort_to_error1 = GND_q;

endmodule
