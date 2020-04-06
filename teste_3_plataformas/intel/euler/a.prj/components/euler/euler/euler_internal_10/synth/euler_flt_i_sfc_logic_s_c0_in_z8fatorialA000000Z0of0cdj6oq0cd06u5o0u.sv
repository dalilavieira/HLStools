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

// SystemVerilog created from euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z0of0cdj6oq0cd06u5o0u
// SystemVerilog created on Mon Apr  6 12:54:32 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z0of0cdj6oq0cd06u5o0u (
    input wire [63:0] in_0,
    input wire [63:0] in_1,
    output wire [63:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [62:0] expFracX_uid7_block_rsrvd_fix_b;
    wire [62:0] expFracY_uid8_block_rsrvd_fix_b;
    wire [64:0] xGTEy_uid9_block_rsrvd_fix_a;
    wire [64:0] xGTEy_uid9_block_rsrvd_fix_b;
    logic [64:0] xGTEy_uid9_block_rsrvd_fix_o;
    wire [0:0] xGTEy_uid9_block_rsrvd_fix_n;
    wire [51:0] fracY_uid10_block_rsrvd_fix_b;
    wire [10:0] expY_uid11_block_rsrvd_fix_b;
    wire [0:0] sigY_uid12_block_rsrvd_fix_b;
    wire [63:0] ypn_uid13_block_rsrvd_fix_q;
    wire [0:0] aSig_uid17_block_rsrvd_fix_s;
    reg [63:0] aSig_uid17_block_rsrvd_fix_q;
    wire [0:0] bSig_uid18_block_rsrvd_fix_s;
    reg [63:0] bSig_uid18_block_rsrvd_fix_q;
    wire [10:0] cstAllOWE_uid19_block_rsrvd_fix_q;
    wire [51:0] cstZeroWF_uid20_block_rsrvd_fix_q;
    wire [10:0] cstAllZWE_uid21_block_rsrvd_fix_q;
    wire [62:0] exp_aSig_uid22_block_rsrvd_fix_in;
    wire [10:0] exp_aSig_uid22_block_rsrvd_fix_b;
    wire [51:0] frac_aSig_uid23_block_rsrvd_fix_in;
    wire [51:0] frac_aSig_uid23_block_rsrvd_fix_b;
    wire [0:0] expXIsZero_uid24_block_rsrvd_fix_qi;
    reg [0:0] expXIsZero_uid24_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid25_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid26_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid26_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid27_block_rsrvd_fix_q;
    wire [0:0] excZ_aSig_uid28_block_rsrvd_fix_qi;
    reg [0:0] excZ_aSig_uid28_block_rsrvd_fix_q;
    wire [0:0] excI_aSig_uid29_block_rsrvd_fix_q;
    wire [0:0] excN_aSig_uid30_block_rsrvd_fix_qi;
    reg [0:0] excN_aSig_uid30_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid31_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid32_block_rsrvd_fix_q;
    wire [0:0] excR_aSig_uid33_block_rsrvd_fix_q;
    wire [0:0] excS_aSig_uid34_block_rsrvd_fix_q;
    wire [62:0] exp_bSig_uid39_block_rsrvd_fix_in;
    wire [10:0] exp_bSig_uid39_block_rsrvd_fix_b;
    wire [51:0] frac_bSig_uid40_block_rsrvd_fix_in;
    wire [51:0] frac_bSig_uid40_block_rsrvd_fix_b;
    wire [0:0] expXIsZero_uid41_block_rsrvd_fix_qi;
    reg [0:0] expXIsZero_uid41_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid42_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid42_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid43_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid43_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid44_block_rsrvd_fix_q;
    wire [0:0] excZ_bSig_uid45_block_rsrvd_fix_q;
    wire [0:0] excI_bSig_uid46_block_rsrvd_fix_qi;
    reg [0:0] excI_bSig_uid46_block_rsrvd_fix_q;
    wire [0:0] excN_bSig_uid47_block_rsrvd_fix_qi;
    reg [0:0] excN_bSig_uid47_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid48_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid49_block_rsrvd_fix_q;
    wire [0:0] excR_bSig_uid50_block_rsrvd_fix_qi;
    reg [0:0] excR_bSig_uid50_block_rsrvd_fix_q;
    wire [0:0] excS_bSig_uid51_block_rsrvd_fix_q;
    wire [0:0] sigA_uid57_block_rsrvd_fix_b;
    wire [0:0] sigB_uid58_block_rsrvd_fix_b;
    wire [0:0] effSub_uid59_block_rsrvd_fix_q;
    wire [0:0] fracBz_uid63_block_rsrvd_fix_s;
    reg [51:0] fracBz_uid63_block_rsrvd_fix_q;
    wire [0:0] InvExcASubnormOrZero_uid64_block_rsrvd_fix_q;
    wire [52:0] oFracA_uid65_block_rsrvd_fix_q;
    wire [52:0] oFracB_uid67_block_rsrvd_fix_q;
    wire [11:0] expAmExpB_uid68_block_rsrvd_fix_a;
    wire [11:0] expAmExpB_uid68_block_rsrvd_fix_b;
    logic [11:0] expAmExpB_uid68_block_rsrvd_fix_o;
    wire [11:0] expAmExpB_uid68_block_rsrvd_fix_q;
    wire [11:0] oWE_uid69_block_rsrvd_fix_q;
    wire [13:0] closePathA_uid70_block_rsrvd_fix_a;
    wire [13:0] closePathA_uid70_block_rsrvd_fix_b;
    logic [13:0] closePathA_uid70_block_rsrvd_fix_o;
    wire [0:0] closePathA_uid70_block_rsrvd_fix_n;
    wire [0:0] closePath_uid71_block_rsrvd_fix_q;
    wire [0:0] aZeroOrSubnorm_uid72_block_rsrvd_fix_q;
    wire [0:0] bZeroOrSubnorm_uid73_block_rsrvd_fix_q;
    wire [55:0] oFracAE_uid74_block_rsrvd_fix_q;
    wire [55:0] oFracBR_uid76_block_rsrvd_fix_q;
    wire [55:0] oFracBREX_uid77_block_rsrvd_fix_b;
    wire [55:0] oFracBREX_uid77_block_rsrvd_fix_q;
    wire [56:0] oFracBREXC2_uid78_block_rsrvd_fix_a;
    wire [56:0] oFracBREXC2_uid78_block_rsrvd_fix_b;
    logic [56:0] oFracBREXC2_uid78_block_rsrvd_fix_o;
    wire [56:0] oFracBREXC2_uid78_block_rsrvd_fix_q;
    wire [55:0] oFracBREXC2S_uid79_block_rsrvd_fix_in;
    wire [55:0] oFracBREXC2S_uid79_block_rsrvd_fix_b;
    wire [55:0] oFracBREXC2HighBits_uid81_block_rsrvd_fix_in;
    wire [54:0] oFracBREXC2HighBits_uid81_block_rsrvd_fix_b;
    wire [0:0] xMSB_uid82_block_rsrvd_fix_b;
    wire [55:0] fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q;
    wire [0:0] expAmExpBZ_uid86_block_rsrvd_fix_in;
    wire [0:0] expAmExpBZ_uid86_block_rsrvd_fix_b;
    wire [0:0] aIsNotASubnorm_uid87_block_rsrvd_fix_q;
    wire [0:0] aNormalBSubnormal_uid88_block_rsrvd_fix_q;
    wire [0:0] aNormalBSubnromal_uid89_block_rsrvd_fix_q;
    wire [0:0] exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_qi;
    reg [0:0] exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_q;
    wire [0:0] oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s;
    reg [55:0] oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q;
    wire [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_a;
    wire [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_b;
    logic [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_o;
    wire [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_q;
    wire [55:0] fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_in;
    wire [55:0] fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b;
    wire [0:0] case0_uid95_block_rsrvd_fix_q;
    wire [10:0] expValueClosePath_Case0_uid96_block_rsrvd_fix_q;
    wire [11:0] expAP1_uid97_block_rsrvd_fix_a;
    wire [11:0] expAP1_uid97_block_rsrvd_fix_b;
    logic [11:0] expAP1_uid97_block_rsrvd_fix_o;
    wire [11:0] expAP1_uid97_block_rsrvd_fix_q;
    wire [10:0] expValueClosePath_Case11_uid98_block_rsrvd_fix_in;
    wire [10:0] expValueClosePath_Case11_uid98_block_rsrvd_fix_b;
    wire [4:0] zExt_uid99_block_rsrvd_fix_q;
    wire [10:0] expValueClosePath_Case12_uid100_block_rsrvd_fix_q;
    wire [0:0] aNormalAndClosePath_uid101_block_rsrvd_fix_q;
    wire [13:0] condCase11_uid102_block_rsrvd_fix_a;
    wire [13:0] condCase11_uid102_block_rsrvd_fix_b;
    logic [13:0] condCase11_uid102_block_rsrvd_fix_o;
    wire [0:0] condCase11_uid102_block_rsrvd_fix_n;
    wire [0:0] condCase12_uid103_block_rsrvd_fix_q;
    wire [0:0] case11_uid104_block_rsrvd_fix_qi;
    reg [0:0] case11_uid104_block_rsrvd_fix_q;
    wire [0:0] case12_uid105_block_rsrvd_fix_qi;
    reg [0:0] case12_uid105_block_rsrvd_fix_q;
    wire [10:0] case0Exponent_uid106_block_rsrvd_fix_b;
    wire [10:0] case0Exponent_uid106_block_rsrvd_fix_q;
    wire [10:0] case11Exponent_uid107_block_rsrvd_fix_b;
    wire [10:0] case11Exponent_uid107_block_rsrvd_fix_q;
    wire [10:0] case12Exponent_uid108_block_rsrvd_fix_b;
    wire [10:0] case12Exponent_uid108_block_rsrvd_fix_q;
    wire [10:0] expValueClosePathExt_uid109_block_rsrvd_fix_q;
    wire [10:0] shiftValC11_uid114_block_rsrvd_fix_b;
    wire [10:0] shiftValC11_uid114_block_rsrvd_fix_q;
    wire [10:0] shiftValueCloseAll_uid116_block_rsrvd_fix_q;
    wire [54:0] fracPostNorm_closePath_uid119_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_closePath_uid119_block_rsrvd_fix_b;
    wire [5:0] cAmA_uid120_block_rsrvd_fix_q;
    wire [0:0] aMinusA2_uid121_block_rsrvd_fix_q;
    wire [0:0] aMinusA_uid122_block_rsrvd_fix_q;
    wire [5:0] cWFP2_uid123_block_rsrvd_fix_q;
    wire [13:0] shiftedOut_uid125_block_rsrvd_fix_a;
    wire [13:0] shiftedOut_uid125_block_rsrvd_fix_b;
    logic [13:0] shiftedOut_uid125_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid125_block_rsrvd_fix_c;
    wire [5:0] shiftOutConst_uid126_block_rsrvd_fix_q;
    wire [13:0] expAmExpBm1_uid128_block_rsrvd_fix_a;
    wire [13:0] expAmExpBm1_uid128_block_rsrvd_fix_b;
    logic [13:0] expAmExpBm1_uid128_block_rsrvd_fix_o;
    wire [12:0] expAmExpBm1_uid128_block_rsrvd_fix_q;
    wire [5:0] expAmExpBm1RangeShift_uid129_block_rsrvd_fix_in;
    wire [5:0] expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b;
    wire [5:0] expAmExpBRangeShift_uid130_block_rsrvd_fix_in;
    wire [5:0] expAmExpBRangeShift_uid130_block_rsrvd_fix_b;
    wire [0:0] shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s;
    reg [5:0] shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q;
    wire [0:0] shiftValue_farPath_uid132_block_rsrvd_fix_s;
    reg [5:0] shiftValue_farPath_uid132_block_rsrvd_fix_q;
    wire [54:0] padConst_uid133_block_rsrvd_fix_q;
    wire [110:0] rightPaddedIn_uid134_block_rsrvd_fix_q;
    wire [54:0] lowRangeB_uid138_block_rsrvd_fix_in;
    wire [54:0] lowRangeB_uid138_block_rsrvd_fix_b;
    wire [55:0] highBBits_uid139_block_rsrvd_fix_b;
    wire [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_a;
    wire [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_b;
    logic [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o;
    wire [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_q;
    wire [111:0] fracAddResult_farPath_uid141_block_rsrvd_fix_q;
    wire [54:0] stickyTemp_uid142_block_rsrvd_fix_in;
    wire [54:0] stickyTemp_uid142_block_rsrvd_fix_b;
    wire [0:0] stickyPreMux_uid143_block_rsrvd_fix_q;
    wire [110:0] normBits_farPath_uid144_block_rsrvd_fix_in;
    wire [1:0] normBits_farPath_uid144_block_rsrvd_fix_b;
    wire [0:0] invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q;
    wire [0:0] invNormBits_farPathInternal0_uid148_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix_q;
    wire [1:0] oneOnTwoBits_uid154_block_rsrvd_fix_q;
    wire [0:0] normBits_farPathRnd_uid155_block_rsrvd_fix_s;
    reg [1:0] normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormal_uid156_block_rsrvd_fix_q;
    wire [1:0] threeOnTwoBits_uid157_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormalCst_uid159_block_rsrvd_fix_s;
    reg [1:0] aAndBSubnormalCst_uid159_block_rsrvd_fix_q;
    wire [0:0] normBits_farPathCnt_uid160_block_rsrvd_fix_s;
    reg [1:0] normBits_farPathCnt_uid160_block_rsrvd_fix_q;
    wire [109:0] fracPostNorm_farPath11_uid161_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_farPath11_uid161_block_rsrvd_fix_b;
    wire [108:0] fracPostNorm_farPath01_uid165_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_farPath01_uid165_block_rsrvd_fix_b;
    wire [107:0] fracPostNorm_farPath00_uid167_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_farPath00_uid167_block_rsrvd_fix_b;
    wire [1:0] fracPostNorm_farPath_uid169_block_rsrvd_fix_s;
    reg [52:0] fracPostNorm_farPath_uid169_block_rsrvd_fix_q;
    wire [1:0] cst2zeros_uid170_block_rsrvd_fix_q;
    wire [56:0] extra11_uid172_block_rsrvd_fix_in;
    wire [1:0] extra11_uid172_block_rsrvd_fix_b;
    wire [55:0] extra01_uid176_block_rsrvd_fix_in;
    wire [0:0] extra01_uid176_block_rsrvd_fix_b;
    wire [1:0] m01_uid177_block_rsrvd_fix_q;
    wire [1:0] stickyExtraBits_uid179_block_rsrvd_fix_s;
    reg [1:0] stickyExtraBits_uid179_block_rsrvd_fix_q;
    wire [2:0] stickyAllBits_uid180_block_rsrvd_fix_q;
    wire [0:0] sticky_uid181_block_rsrvd_fix_qi;
    reg [0:0] sticky_uid181_block_rsrvd_fix_q;
    wire [57:0] r11_uid182_block_rsrvd_fix_in;
    wire [0:0] r11_uid182_block_rsrvd_fix_b;
    wire [56:0] r01_uid186_block_rsrvd_fix_in;
    wire [0:0] r01_uid186_block_rsrvd_fix_b;
    wire [1:0] rBit_uid190_block_rsrvd_fix_s;
    reg [0:0] rBit_uid190_block_rsrvd_fix_q;
    wire [10:0] countValue_farPath00_uid194_block_rsrvd_fix_q;
    wire [1:0] countValue_farPath_uid195_block_rsrvd_fix_s;
    reg [10:0] countValue_farPath_uid195_block_rsrvd_fix_q;
    wire [1:0] lBit_uid196_block_rsrvd_fix_in;
    wire [0:0] lBit_uid196_block_rsrvd_fix_b;
    wire [2:0] concBits_uid197_block_rsrvd_fix_q;
    wire [2:0] cst2On3Bits_uid198_block_rsrvd_fix_q;
    wire [0:0] IrndVal_uid199_block_rsrvd_fix_qi;
    reg [0:0] IrndVal_uid199_block_rsrvd_fix_q;
    wire [0:0] rndVal_far_uid200_block_rsrvd_fix_q;
    wire [1:0] lsb2BitsClosePath_uid202_block_rsrvd_fix_in;
    wire [1:0] lsb2BitsClosePath_uid202_block_rsrvd_fix_b;
    wire [0:0] IrndVal_close_uid203_block_rsrvd_fix_q;
    wire [0:0] rndVal_close_uid204_block_rsrvd_fix_q;
    wire [0:0] countValue_uid205_block_rsrvd_fix_s;
    reg [10:0] countValue_uid205_block_rsrvd_fix_q;
    wire [12:0] expPostNorm_uid207_block_rsrvd_fix_a;
    wire [12:0] expPostNorm_uid207_block_rsrvd_fix_b;
    logic [12:0] expPostNorm_uid207_block_rsrvd_fix_o;
    wire [12:0] expPostNorm_uid207_block_rsrvd_fix_q;
    wire [0:0] fracPostNormPreRnd_uid210_block_rsrvd_fix_s;
    reg [52:0] fracPostNormPreRnd_uid210_block_rsrvd_fix_q;
    wire [0:0] rndValue_uid211_block_rsrvd_fix_s;
    reg [0:0] rndValue_uid211_block_rsrvd_fix_q;
    wire [65:0] countValFracPostNorm_uid212_block_rsrvd_fix_q;
    wire [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_a;
    wire [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_b;
    logic [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_o;
    wire [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_q;
    wire [65:0] countValue_uid214_block_rsrvd_fix_in;
    wire [12:0] countValue_uid214_block_rsrvd_fix_b;
    wire [52:0] fracValue_uid215_block_rsrvd_fix_in;
    wire [51:0] fracValue_uid215_block_rsrvd_fix_b;
    wire [12:0] wEP2AllOwE_uid216_block_rsrvd_fix_q;
    wire [15:0] rOvf_uid218_block_rsrvd_fix_a;
    wire [15:0] rOvf_uid218_block_rsrvd_fix_b;
    logic [15:0] rOvf_uid218_block_rsrvd_fix_o;
    wire [0:0] rOvf_uid218_block_rsrvd_fix_n;
    wire [10:0] expRPreExc_uid220_block_rsrvd_fix_in;
    wire [10:0] expRPreExc_uid220_block_rsrvd_fix_b;
    wire [0:0] regInputs_uid221_block_rsrvd_fix_qi;
    reg [0:0] regInputs_uid221_block_rsrvd_fix_q;
    wire [2:0] excRZeroVInC_uid222_block_rsrvd_fix_q;
    reg [0:0] excRZero_uid223_block_rsrvd_fix_q;
    wire [0:0] rInfOvf_uid224_block_rsrvd_fix_q;
    wire [5:0] excRInfVInC_uid225_block_rsrvd_fix_q;
    reg [0:0] excRInf_uid226_block_rsrvd_fix_q;
    wire [0:0] excRNaN2_uid227_block_rsrvd_fix_q;
    wire [0:0] excAIBISub_uid228_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid229_block_rsrvd_fix_q;
    wire [2:0] concExc_uid230_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid231_block_rsrvd_fix_q;
    wire [0:0] aIsRegOrSubnorm_uid232_block_rsrvd_fix_q;
    wire [0:0] bIsRegOrSubnorm_uid233_block_rsrvd_fix_q;
    wire [0:0] invAMinusA_uid234_block_rsrvd_fix_q;
    wire [0:0] signRReg_uid235_block_rsrvd_fix_q;
    wire [0:0] sigBBInf_uid236_block_rsrvd_fix_q;
    wire [0:0] sigAAInf_uid237_block_rsrvd_fix_q;
    wire [0:0] signRInf_uid238_block_rsrvd_fix_q;
    wire [0:0] excAZBZSigASigB_uid239_block_rsrvd_fix_q;
    wire [0:0] excBZARSigA_uid240_block_rsrvd_fix_q;
    wire [0:0] signRZero_uid241_block_rsrvd_fix_q;
    wire [0:0] signRInfRZRReg_uid242_block_rsrvd_fix_qi;
    reg [0:0] signRInfRZRReg_uid242_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid243_block_rsrvd_fix_q;
    wire [0:0] signRPostExc_uid244_block_rsrvd_fix_q;
    wire [51:0] oneFracRPostExc2_uid245_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid248_block_rsrvd_fix_s;
    reg [51:0] fracRPostExc_uid248_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid252_block_rsrvd_fix_s;
    reg [10:0] expRPostExc_uid252_block_rsrvd_fix_q;
    wire [63:0] R_uid253_block_rsrvd_fix_q;
    wire [31:0] zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [31:0] rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b;
    wire [0:0] vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [7:0] mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [23:0] vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_in;
    wire [23:0] vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b;
    wire [31:0] cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [15:0] zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [7:0] zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [3:0] zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [3:0] vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [1:0] vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix_b;
    wire [0:0] vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [5:0] r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [12:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_a;
    wire [12:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    logic [12:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_n;
    wire [39:0] leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [39:0] leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [55:0] leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [7:0] leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [7:0] leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [51:0] leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [51:0] leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [47:0] leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [47:0] leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [43:0] leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [43:0] leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [54:0] leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [54:0] leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [53:0] leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [53:0] leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [52:0] leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [52:0] leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [55:0] zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [0:0] r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [0:0] xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [109:0] rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] seMsb_to2_uid336_in;
    wire [1:0] seMsb_to2_uid336_b;
    wire [108:0] rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [2:0] seMsb_to3_uid339_in;
    wire [2:0] seMsb_to3_uid339_b;
    wire [107:0] rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s;
    reg [110:0] rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [3:0] seMsb_to4_uid344_in;
    wire [3:0] seMsb_to4_uid344_b;
    wire [106:0] rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [7:0] seMsb_to8_uid347_in;
    wire [7:0] seMsb_to8_uid347_b;
    wire [102:0] rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [11:0] seMsb_to12_uid350_in;
    wire [11:0] seMsb_to12_uid350_b;
    wire [98:0] rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_s;
    reg [110:0] rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [15:0] seMsb_to16_uid355_in;
    wire [15:0] seMsb_to16_uid355_b;
    wire [94:0] rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [31:0] seMsb_to32_uid358_in;
    wire [31:0] seMsb_to32_uid358_b;
    wire [78:0] rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [47:0] seMsb_to48_uid361_in;
    wire [47:0] seMsb_to48_uid361_b;
    wire [62:0] rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s;
    reg [110:0] rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [5:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in;
    wire [1:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_d;
    wire [1:0] rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d;
    wire [0:0] normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_b;
    wire [0:0] normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c;
    wire [15:0] rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    reg [1:0] redist0_rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d_1_q;
    reg [0:0] redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q;
    reg [5:0] redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q;
    reg [0:0] redist3_vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q;
    reg [0:0] redist4_vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q;
    reg [0:0] redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q;
    reg [0:0] redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_delay_0;
    reg [23:0] redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q;
    reg [23:0] redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0;
    reg [23:0] redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1;
    reg [0:0] redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_q;
    reg [0:0] redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_delay_0;
    reg [31:0] redist8_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q;
    reg [0:0] redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_q;
    reg [0:0] redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist10_excRZero_uid223_block_rsrvd_fix_q_4_q;
    reg [0:0] redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist11_regInputs_uid221_block_rsrvd_fix_q_4_q;
    reg [0:0] redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_1;
    reg [10:0] redist12_expRPreExc_uid220_block_rsrvd_fix_b_1_q;
    reg [51:0] redist13_fracValue_uid215_block_rsrvd_fix_b_1_q;
    reg [12:0] redist14_expPostNorm_uid207_block_rsrvd_fix_q_2_q;
    reg [0:0] redist15_IrndVal_uid199_block_rsrvd_fix_q_2_q;
    reg [52:0] redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_q;
    reg [52:0] redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_delay_0;
    reg [1:0] redist17_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q;
    reg [54:0] redist18_lowRangeB_uid138_block_rsrvd_fix_b_1_q;
    reg [11:0] redist19_expAP1_uid97_block_rsrvd_fix_q_1_q;
    reg [55:0] redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q;
    reg [55:0] redist22_oFracAE_uid74_block_rsrvd_fix_q_1_q;
    reg [0:0] redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_q;
    reg [0:0] redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_delay_0;
    reg [0:0] redist24_closePath_uid71_block_rsrvd_fix_q_1_q;
    reg [0:0] redist25_closePath_uid71_block_rsrvd_fix_q_2_q;
    reg [0:0] redist26_closePathA_uid70_block_rsrvd_fix_n_4_q;
    reg [0:0] redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_0;
    reg [0:0] redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_1;
    reg [0:0] redist27_effSub_uid59_block_rsrvd_fix_q_4_q;
    reg [0:0] redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_2;
    reg [0:0] redist28_effSub_uid59_block_rsrvd_fix_q_8_q;
    reg [0:0] redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_0;
    reg [0:0] redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_1;
    reg [0:0] redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_2;
    reg [0:0] redist29_sigB_uid58_block_rsrvd_fix_b_2_q;
    reg [0:0] redist29_sigB_uid58_block_rsrvd_fix_b_2_delay_0;
    reg [0:0] redist30_sigB_uid58_block_rsrvd_fix_b_6_q;
    reg [0:0] redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_0;
    reg [0:0] redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_1;
    reg [0:0] redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_2;
    reg [0:0] redist31_sigA_uid57_block_rsrvd_fix_b_2_q;
    reg [0:0] redist31_sigA_uid57_block_rsrvd_fix_b_2_delay_0;
    reg [0:0] redist32_sigA_uid57_block_rsrvd_fix_b_6_q;
    reg [0:0] redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_0;
    reg [0:0] redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_1;
    reg [0:0] redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_2;
    reg [0:0] redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_q;
    reg [0:0] redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1;
    reg [0:0] redist34_excS_bSig_uid51_block_rsrvd_fix_q_4_q;
    reg [0:0] redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_q;
    reg [0:0] redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist36_excN_bSig_uid47_block_rsrvd_fix_q_8_q;
    reg [0:0] redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_q;
    reg [0:0] redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_q;
    reg [0:0] redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_0;
    reg [0:0] redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_1;
    reg [0:0] redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_2;
    reg [0:0] redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_q;
    reg [0:0] redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1;
    reg [0:0] redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4_q;
    reg [51:0] redist41_frac_bSig_uid40_block_rsrvd_fix_b_1_q;
    reg [51:0] redist42_frac_bSig_uid40_block_rsrvd_fix_b_2_q;
    reg [10:0] redist43_exp_bSig_uid39_block_rsrvd_fix_b_1_q;
    reg [0:0] redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_q;
    reg [0:0] redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1;
    reg [0:0] redist45_excS_aSig_uid34_block_rsrvd_fix_q_4_q;
    reg [0:0] redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_q;
    reg [0:0] redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_q;
    reg [0:0] redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_2;
    reg [0:0] redist48_excZ_aSig_uid28_block_rsrvd_fix_q_2_q;
    reg [0:0] redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_q;
    reg [0:0] redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_2;
    reg [0:0] redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_q;
    reg [0:0] redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_q;
    reg [0:0] redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist52_expXIsZero_uid24_block_rsrvd_fix_q_2_q;
    reg [0:0] redist53_expXIsZero_uid24_block_rsrvd_fix_q_3_q;
    reg [0:0] redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_q;
    reg [0:0] redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_delay_0;
    reg [51:0] redist55_frac_aSig_uid23_block_rsrvd_fix_b_1_q;
    reg [51:0] redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_q;
    reg [51:0] redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_delay_0;
    reg [10:0] redist57_exp_aSig_uid22_block_rsrvd_fix_b_1_q;
    reg [10:0] redist59_exp_aSig_uid22_block_rsrvd_fix_b_7_q;
    wire redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_reset0;
    wire [55:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_ia;
    wire [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_aa;
    wire [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_ab;
    wire [55:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_iq;
    wire [55:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_q;
    wire [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_i;
    reg [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_cmpReg_q;
    wire [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_notEnable_q;
    wire [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_sticky_ena_q;
    wire [0:0] redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_enaAnd_q;
    wire redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_reset0;
    wire [10:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_ia;
    wire [1:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_aa;
    wire [1:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_ab;
    wire [10:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_iq;
    wire [10:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_q;
    wire [1:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_q;
    (* preserve *) reg [1:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_i;
    reg [1:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_wraddr_q;
    wire [2:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_last_q;
    wire [2:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmp_b;
    wire [0:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmp_q;
    (* dont_merge *) reg [0:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmpReg_q;
    wire [0:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_notEnable_q;
    wire [0:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_nor_q;
    (* dont_merge *) reg [0:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_sticky_ena_q;
    wire [0:0] redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_enaAnd_q;


    // cAmA_uid120_block_rsrvd_fix(CONSTANT,119)
    assign cAmA_uid120_block_rsrvd_fix_q = $unsigned(6'b111000);

    // zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,254)
    assign zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // xMSB_uid82_block_rsrvd_fix(BITSELECT,81)@3
    assign xMSB_uid82_block_rsrvd_fix_b = $unsigned(oFracBREXC2S_uid79_block_rsrvd_fix_b[55:55]);

    // sigY_uid12_block_rsrvd_fix(BITSELECT,11)@0
    assign sigY_uid12_block_rsrvd_fix_b = $unsigned(in_1[63:63]);

    // expY_uid11_block_rsrvd_fix(BITSELECT,10)@0
    assign expY_uid11_block_rsrvd_fix_b = in_1[62:52];

    // fracY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    assign fracY_uid10_block_rsrvd_fix_b = in_1[51:0];

    // ypn_uid13_block_rsrvd_fix(BITJOIN,12)@0
    assign ypn_uid13_block_rsrvd_fix_q = {sigY_uid12_block_rsrvd_fix_b, expY_uid11_block_rsrvd_fix_b, fracY_uid10_block_rsrvd_fix_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // expFracY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    assign expFracY_uid8_block_rsrvd_fix_b = in_1[62:0];

    // expFracX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    assign expFracX_uid7_block_rsrvd_fix_b = in_0[62:0];

    // xGTEy_uid9_block_rsrvd_fix(COMPARE,8)@0
    assign xGTEy_uid9_block_rsrvd_fix_a = {2'b00, expFracX_uid7_block_rsrvd_fix_b};
    assign xGTEy_uid9_block_rsrvd_fix_b = {2'b00, expFracY_uid8_block_rsrvd_fix_b};
    assign xGTEy_uid9_block_rsrvd_fix_o = $unsigned(xGTEy_uid9_block_rsrvd_fix_a) - $unsigned(xGTEy_uid9_block_rsrvd_fix_b);
    assign xGTEy_uid9_block_rsrvd_fix_n[0] = ~ (xGTEy_uid9_block_rsrvd_fix_o[64]);

    // bSig_uid18_block_rsrvd_fix(MUX,17)@0
    assign bSig_uid18_block_rsrvd_fix_s = xGTEy_uid9_block_rsrvd_fix_n;
    always @(bSig_uid18_block_rsrvd_fix_s or in_0 or ypn_uid13_block_rsrvd_fix_q)
    begin
        unique case (bSig_uid18_block_rsrvd_fix_s)
            1'b0 : bSig_uid18_block_rsrvd_fix_q = in_0;
            1'b1 : bSig_uid18_block_rsrvd_fix_q = ypn_uid13_block_rsrvd_fix_q;
            default : bSig_uid18_block_rsrvd_fix_q = 64'b0;
        endcase
    end

    // sigB_uid58_block_rsrvd_fix(BITSELECT,57)@0
    assign sigB_uid58_block_rsrvd_fix_b = $unsigned(bSig_uid18_block_rsrvd_fix_q[63:63]);

    // redist29_sigB_uid58_block_rsrvd_fix_b_2(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sigB_uid58_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist29_sigB_uid58_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist29_sigB_uid58_block_rsrvd_fix_b_2_delay_0 <= $unsigned(sigB_uid58_block_rsrvd_fix_b);
            redist29_sigB_uid58_block_rsrvd_fix_b_2_q <= redist29_sigB_uid58_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // aSig_uid17_block_rsrvd_fix(MUX,16)@0
    assign aSig_uid17_block_rsrvd_fix_s = xGTEy_uid9_block_rsrvd_fix_n;
    always @(aSig_uid17_block_rsrvd_fix_s or ypn_uid13_block_rsrvd_fix_q or in_0)
    begin
        unique case (aSig_uid17_block_rsrvd_fix_s)
            1'b0 : aSig_uid17_block_rsrvd_fix_q = ypn_uid13_block_rsrvd_fix_q;
            1'b1 : aSig_uid17_block_rsrvd_fix_q = in_0;
            default : aSig_uid17_block_rsrvd_fix_q = 64'b0;
        endcase
    end

    // sigA_uid57_block_rsrvd_fix(BITSELECT,56)@0
    assign sigA_uid57_block_rsrvd_fix_b = $unsigned(aSig_uid17_block_rsrvd_fix_q[63:63]);

    // redist31_sigA_uid57_block_rsrvd_fix_b_2(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sigA_uid57_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist31_sigA_uid57_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist31_sigA_uid57_block_rsrvd_fix_b_2_delay_0 <= $unsigned(sigA_uid57_block_rsrvd_fix_b);
            redist31_sigA_uid57_block_rsrvd_fix_b_2_q <= redist31_sigA_uid57_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // effSub_uid59_block_rsrvd_fix(LOGICAL,58)@2
    assign effSub_uid59_block_rsrvd_fix_q = redist31_sigA_uid57_block_rsrvd_fix_b_2_q ^ redist29_sigB_uid58_block_rsrvd_fix_b_2_q;

    // cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    assign cstAllZWE_uid21_block_rsrvd_fix_q = $unsigned(11'b00000000000);

    // exp_bSig_uid39_block_rsrvd_fix(BITSELECT,38)@0
    assign exp_bSig_uid39_block_rsrvd_fix_in = bSig_uid18_block_rsrvd_fix_q[62:0];
    assign exp_bSig_uid39_block_rsrvd_fix_b = exp_bSig_uid39_block_rsrvd_fix_in[62:52];

    // redist43_exp_bSig_uid39_block_rsrvd_fix_b_1(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_exp_bSig_uid39_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist43_exp_bSig_uid39_block_rsrvd_fix_b_1_q <= $unsigned(exp_bSig_uid39_block_rsrvd_fix_b);
        end
    end

    // expXIsZero_uid41_block_rsrvd_fix(LOGICAL,40)@1 + 1
    assign expXIsZero_uid41_block_rsrvd_fix_qi = $unsigned(redist43_exp_bSig_uid39_block_rsrvd_fix_b_1_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid41_block_rsrvd_fix_delay ( .xin(expXIsZero_uid41_block_rsrvd_fix_qi), .xout(expXIsZero_uid41_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid49_block_rsrvd_fix(LOGICAL,48)@2
    assign InvExpXIsZero_uid49_block_rsrvd_fix_q = ~ (expXIsZero_uid41_block_rsrvd_fix_q);

    // cstZeroWF_uid20_block_rsrvd_fix(CONSTANT,19)
    assign cstZeroWF_uid20_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // frac_bSig_uid40_block_rsrvd_fix(BITSELECT,39)@0
    assign frac_bSig_uid40_block_rsrvd_fix_in = bSig_uid18_block_rsrvd_fix_q[51:0];
    assign frac_bSig_uid40_block_rsrvd_fix_b = frac_bSig_uid40_block_rsrvd_fix_in[51:0];

    // redist41_frac_bSig_uid40_block_rsrvd_fix_b_1(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_frac_bSig_uid40_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist41_frac_bSig_uid40_block_rsrvd_fix_b_1_q <= $unsigned(frac_bSig_uid40_block_rsrvd_fix_b);
        end
    end

    // redist42_frac_bSig_uid40_block_rsrvd_fix_b_2(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_frac_bSig_uid40_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist42_frac_bSig_uid40_block_rsrvd_fix_b_2_q <= $unsigned(redist41_frac_bSig_uid40_block_rsrvd_fix_b_1_q);
        end
    end

    // fracXIsZero_uid43_block_rsrvd_fix(LOGICAL,42)@1 + 1
    assign fracXIsZero_uid43_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid20_block_rsrvd_fix_q == redist41_frac_bSig_uid40_block_rsrvd_fix_b_1_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid43_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid43_block_rsrvd_fix_qi), .xout(fracXIsZero_uid43_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_bSig_uid45_block_rsrvd_fix(LOGICAL,44)@2
    assign excZ_bSig_uid45_block_rsrvd_fix_q = expXIsZero_uid41_block_rsrvd_fix_q & fracXIsZero_uid43_block_rsrvd_fix_q;

    // fracBz_uid63_block_rsrvd_fix(MUX,62)@2
    assign fracBz_uid63_block_rsrvd_fix_s = excZ_bSig_uid45_block_rsrvd_fix_q;
    always @(fracBz_uid63_block_rsrvd_fix_s or redist42_frac_bSig_uid40_block_rsrvd_fix_b_2_q or cstZeroWF_uid20_block_rsrvd_fix_q)
    begin
        unique case (fracBz_uid63_block_rsrvd_fix_s)
            1'b0 : fracBz_uid63_block_rsrvd_fix_q = redist42_frac_bSig_uid40_block_rsrvd_fix_b_2_q;
            1'b1 : fracBz_uid63_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            default : fracBz_uid63_block_rsrvd_fix_q = 52'b0;
        endcase
    end

    // oFracB_uid67_block_rsrvd_fix(BITJOIN,66)@2
    assign oFracB_uid67_block_rsrvd_fix_q = {InvExpXIsZero_uid49_block_rsrvd_fix_q, fracBz_uid63_block_rsrvd_fix_q};

    // oFracBR_uid76_block_rsrvd_fix(BITJOIN,75)@2
    assign oFracBR_uid76_block_rsrvd_fix_q = {GND_q, oFracB_uid67_block_rsrvd_fix_q, GND_q, GND_q};

    // oFracBREX_uid77_block_rsrvd_fix(LOGICAL,76)@2
    assign oFracBREX_uid77_block_rsrvd_fix_b = $unsigned({{55{effSub_uid59_block_rsrvd_fix_q[0]}}, effSub_uid59_block_rsrvd_fix_q});
    assign oFracBREX_uid77_block_rsrvd_fix_q = oFracBR_uid76_block_rsrvd_fix_q ^ oFracBREX_uid77_block_rsrvd_fix_b;

    // oFracBREXC2_uid78_block_rsrvd_fix(ADD,77)@2 + 1
    assign oFracBREXC2_uid78_block_rsrvd_fix_a = {1'b0, oFracBREX_uid77_block_rsrvd_fix_q};
    assign oFracBREXC2_uid78_block_rsrvd_fix_b = {56'b00000000000000000000000000000000000000000000000000000000, effSub_uid59_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            oFracBREXC2_uid78_block_rsrvd_fix_o <= 57'b0;
        end
        else
        begin
            oFracBREXC2_uid78_block_rsrvd_fix_o <= $unsigned(oFracBREXC2_uid78_block_rsrvd_fix_a) + $unsigned(oFracBREXC2_uid78_block_rsrvd_fix_b);
        end
    end
    assign oFracBREXC2_uid78_block_rsrvd_fix_q = oFracBREXC2_uid78_block_rsrvd_fix_o[56:0];

    // oFracBREXC2HighBits_uid81_block_rsrvd_fix(BITSELECT,80)@3
    assign oFracBREXC2HighBits_uid81_block_rsrvd_fix_in = oFracBREXC2_uid78_block_rsrvd_fix_q[55:0];
    assign oFracBREXC2HighBits_uid81_block_rsrvd_fix_b = oFracBREXC2HighBits_uid81_block_rsrvd_fix_in[55:1];

    // fracBAlignLowCloseUR_uid84_block_rsrvd_fix(BITJOIN,83)@3
    assign fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q = {xMSB_uid82_block_rsrvd_fix_b, oFracBREXC2HighBits_uid81_block_rsrvd_fix_b};

    // oFracBREXC2S_uid79_block_rsrvd_fix(BITSELECT,78)@3
    assign oFracBREXC2S_uid79_block_rsrvd_fix_in = $unsigned(oFracBREXC2_uid78_block_rsrvd_fix_q[55:0]);
    assign oFracBREXC2S_uid79_block_rsrvd_fix_b = $unsigned(oFracBREXC2S_uid79_block_rsrvd_fix_in[55:0]);

    // fracXIsNotZero_uid44_block_rsrvd_fix(LOGICAL,43)@2
    assign fracXIsNotZero_uid44_block_rsrvd_fix_q = ~ (fracXIsZero_uid43_block_rsrvd_fix_q);

    // excS_bSig_uid51_block_rsrvd_fix(LOGICAL,50)@2
    assign excS_bSig_uid51_block_rsrvd_fix_q = expXIsZero_uid41_block_rsrvd_fix_q & fracXIsNotZero_uid44_block_rsrvd_fix_q;

    // frac_aSig_uid23_block_rsrvd_fix(BITSELECT,22)@0
    assign frac_aSig_uid23_block_rsrvd_fix_in = aSig_uid17_block_rsrvd_fix_q[51:0];
    assign frac_aSig_uid23_block_rsrvd_fix_b = frac_aSig_uid23_block_rsrvd_fix_in[51:0];

    // redist55_frac_aSig_uid23_block_rsrvd_fix_b_1(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_frac_aSig_uid23_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist55_frac_aSig_uid23_block_rsrvd_fix_b_1_q <= $unsigned(frac_aSig_uid23_block_rsrvd_fix_b);
        end
    end

    // fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@1 + 1
    assign fracXIsZero_uid26_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid20_block_rsrvd_fix_q == redist55_frac_aSig_uid23_block_rsrvd_fix_b_1_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid26_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid26_block_rsrvd_fix_qi), .xout(fracXIsZero_uid26_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@2
    assign fracXIsNotZero_uid27_block_rsrvd_fix_q = ~ (fracXIsZero_uid26_block_rsrvd_fix_q);

    // exp_aSig_uid22_block_rsrvd_fix(BITSELECT,21)@0
    assign exp_aSig_uid22_block_rsrvd_fix_in = aSig_uid17_block_rsrvd_fix_q[62:0];
    assign exp_aSig_uid22_block_rsrvd_fix_b = exp_aSig_uid22_block_rsrvd_fix_in[62:52];

    // redist57_exp_aSig_uid22_block_rsrvd_fix_b_1(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_exp_aSig_uid22_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist57_exp_aSig_uid22_block_rsrvd_fix_b_1_q <= $unsigned(exp_aSig_uid22_block_rsrvd_fix_b);
        end
    end

    // expXIsZero_uid24_block_rsrvd_fix(LOGICAL,23)@1 + 1
    assign expXIsZero_uid24_block_rsrvd_fix_qi = $unsigned(redist57_exp_aSig_uid22_block_rsrvd_fix_b_1_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid24_block_rsrvd_fix_delay ( .xin(expXIsZero_uid24_block_rsrvd_fix_qi), .xout(expXIsZero_uid24_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excS_aSig_uid34_block_rsrvd_fix(LOGICAL,33)@2
    assign excS_aSig_uid34_block_rsrvd_fix_q = expXIsZero_uid24_block_rsrvd_fix_q & fracXIsNotZero_uid27_block_rsrvd_fix_q;

    // aIsNotASubnorm_uid87_block_rsrvd_fix(LOGICAL,86)@2
    assign aIsNotASubnorm_uid87_block_rsrvd_fix_q = ~ (excS_aSig_uid34_block_rsrvd_fix_q);

    // aNormalBSubnormal_uid88_block_rsrvd_fix(LOGICAL,87)@2
    assign aNormalBSubnormal_uid88_block_rsrvd_fix_q = aIsNotASubnorm_uid87_block_rsrvd_fix_q & excS_bSig_uid51_block_rsrvd_fix_q;

    // aNormalBSubnromal_uid89_block_rsrvd_fix(LOGICAL,88)@2
    assign aNormalBSubnromal_uid89_block_rsrvd_fix_q = ~ (aNormalBSubnormal_uid88_block_rsrvd_fix_q);

    // expAmExpB_uid68_block_rsrvd_fix(SUB,67)@1 + 1
    assign expAmExpB_uid68_block_rsrvd_fix_a = {1'b0, redist57_exp_aSig_uid22_block_rsrvd_fix_b_1_q};
    assign expAmExpB_uid68_block_rsrvd_fix_b = {1'b0, redist43_exp_bSig_uid39_block_rsrvd_fix_b_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expAmExpB_uid68_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            expAmExpB_uid68_block_rsrvd_fix_o <= $unsigned(expAmExpB_uid68_block_rsrvd_fix_a) - $unsigned(expAmExpB_uid68_block_rsrvd_fix_b);
        end
    end
    assign expAmExpB_uid68_block_rsrvd_fix_q = expAmExpB_uid68_block_rsrvd_fix_o[11:0];

    // expAmExpBZ_uid86_block_rsrvd_fix(BITSELECT,85)@2
    assign expAmExpBZ_uid86_block_rsrvd_fix_in = $unsigned(expAmExpB_uid68_block_rsrvd_fix_q[0:0]);
    assign expAmExpBZ_uid86_block_rsrvd_fix_b = $unsigned(expAmExpBZ_uid86_block_rsrvd_fix_in[0:0]);

    // exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix(LOGICAL,89)@2 + 1
    assign exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_qi = expAmExpBZ_uid86_block_rsrvd_fix_b & aNormalBSubnromal_uid89_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_delay ( .xin(exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_qi), .xout(exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oFracBREXC2SPostAlign_uid91_block_rsrvd_fix(MUX,90)@3
    assign oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s = exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_q;
    always @(oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s or oFracBREXC2S_uid79_block_rsrvd_fix_b or fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q)
    begin
        unique case (oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s)
            1'b0 : oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q = oFracBREXC2S_uid79_block_rsrvd_fix_b;
            1'b1 : oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q = fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q;
            default : oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // redist52_expXIsZero_uid24_block_rsrvd_fix_q_2(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_expXIsZero_uid24_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist52_expXIsZero_uid24_block_rsrvd_fix_q_2_q <= $unsigned(expXIsZero_uid24_block_rsrvd_fix_q);
        end
    end

    // InvExcASubnormOrZero_uid64_block_rsrvd_fix(LOGICAL,63)@3
    assign InvExcASubnormOrZero_uid64_block_rsrvd_fix_q = ~ (redist52_expXIsZero_uid24_block_rsrvd_fix_q_2_q);

    // redist56_frac_aSig_uid23_block_rsrvd_fix_b_3(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_delay_0 <= $unsigned(redist55_frac_aSig_uid23_block_rsrvd_fix_b_1_q);
            redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_q <= redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_delay_0;
        end
    end

    // oFracA_uid65_block_rsrvd_fix(BITJOIN,64)@3
    assign oFracA_uid65_block_rsrvd_fix_q = {InvExcASubnormOrZero_uid64_block_rsrvd_fix_q, redist56_frac_aSig_uid23_block_rsrvd_fix_b_3_q};

    // oFracAE_uid74_block_rsrvd_fix(BITJOIN,73)@3
    assign oFracAE_uid74_block_rsrvd_fix_q = {GND_q, oFracA_uid65_block_rsrvd_fix_q, GND_q, GND_q};

    // fracAddResult_closePath_uid92_block_rsrvd_fix(ADD,91)@3
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_a = $unsigned({{1{oFracAE_uid74_block_rsrvd_fix_q[55]}}, oFracAE_uid74_block_rsrvd_fix_q});
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_b = $unsigned({{1{oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q[55]}}, oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q});
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_o = $unsigned($signed(fracAddResult_closePath_uid92_block_rsrvd_fix_a) + $signed(fracAddResult_closePath_uid92_block_rsrvd_fix_b));
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_q = fracAddResult_closePath_uid92_block_rsrvd_fix_o[56:0];

    // fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix(BITSELECT,92)@3
    assign fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_in = fracAddResult_closePath_uid92_block_rsrvd_fix_q[55:0];
    assign fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b = fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_in[55:0];

    // rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix(BITSELECT,255)@3
    assign rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b = fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b[55:24];

    // vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,256)@3 + 1
    assign vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_qi = $unsigned(rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b == zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_delay ( .xin(vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_qi), .xout(vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_delay_0 <= $unsigned(vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q);
            redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_q <= redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,262)
    assign zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q <= $unsigned(fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b);
        end
    end

    // vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix(BITSELECT,258)@4
    assign vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_in = redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q[23:0];
    assign vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b = vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_in[23:0];

    // mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,257)
    assign mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix(BITJOIN,259)@4
    assign cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q = {vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b, mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // redist8_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist8_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q <= $unsigned(rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b);
        end
    end

    // vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,261)@4
    assign vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s or redist8_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q or cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q = redist8_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q;
            1'b1 : vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q = cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q;
            default : vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,369)@4
    assign rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q[31:16];
    assign rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q[15:0];

    // vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,264)@4
    assign vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_delay_0 <= $unsigned(vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q);
            redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q <= redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,268)
    assign zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,267)@4 + 1
    assign vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q <= 16'b0;
        end
        else
        begin
            unique case (vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_s)
                1'b0 : vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q <= rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
                1'b1 : vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q <= rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
                default : vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q <= 16'b0;
            endcase
        end
    end

    // rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,370)@5
    assign rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q[15:8];
    assign rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q[7:0];

    // vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,270)@5
    assign vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist4_vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q_1(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist4_vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q);
        end
    end

    // zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,274)
    assign zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(4'b0000);

    // vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,273)@5
    assign vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s or rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b or rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,371)@5
    assign rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q[7:4];
    assign rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q[3:0];

    // vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,276)@5
    assign vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist3_vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist3_vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q);
        end
    end

    // cst2zeros_uid170_block_rsrvd_fix(CONSTANT,169)
    assign cst2zeros_uid170_block_rsrvd_fix_q = $unsigned(2'b00);

    // vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,279)@5 + 1
    assign vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q <= 4'b0;
        end
        else
        begin
            unique case (vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_s)
                1'b0 : vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q <= rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
                1'b1 : vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q <= rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
                default : vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q <= 4'b0;
            endcase
        end
    end

    // rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,372)@6
    assign rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q[3:2];
    assign rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q[1:0];

    // vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,282)@6
    assign vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == cst2zeros_uid170_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,285)@6
    assign vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s or rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b or rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix(BITSELECT,287)@6
    assign rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix_b = vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q[1:1];

    // vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,288)@6
    assign vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix_b == GND_q ? 1'b1 : 1'b0);

    // r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix(BITJOIN,289)@6
    assign r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q = {redist7_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_3_q, redist5_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q, redist4_vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q, redist3_vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q, vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q, vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // aMinusA2_uid121_block_rsrvd_fix(LOGICAL,120)@6
    assign aMinusA2_uid121_block_rsrvd_fix_q = $unsigned(r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q == cAmA_uid120_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist27_effSub_uid59_block_rsrvd_fix_q_4(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_2 <= '0;
            redist27_effSub_uid59_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_0 <= $unsigned(effSub_uid59_block_rsrvd_fix_q);
            redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_1 <= redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_0;
            redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_2 <= redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_1;
            redist27_effSub_uid59_block_rsrvd_fix_q_4_q <= redist27_effSub_uid59_block_rsrvd_fix_q_4_delay_2;
        end
    end

    // oWE_uid69_block_rsrvd_fix(CONSTANT,68)
    assign oWE_uid69_block_rsrvd_fix_q = $unsigned(12'b000000000001);

    // closePathA_uid70_block_rsrvd_fix(COMPARE,69)@2 + 1
    assign closePathA_uid70_block_rsrvd_fix_a = $unsigned({{2{oWE_uid69_block_rsrvd_fix_q[11]}}, oWE_uid69_block_rsrvd_fix_q});
    assign closePathA_uid70_block_rsrvd_fix_b = $unsigned({{2{expAmExpB_uid68_block_rsrvd_fix_q[11]}}, expAmExpB_uid68_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            closePathA_uid70_block_rsrvd_fix_o <= 14'b0;
        end
        else
        begin
            closePathA_uid70_block_rsrvd_fix_o <= $unsigned($signed(closePathA_uid70_block_rsrvd_fix_a) - $signed(closePathA_uid70_block_rsrvd_fix_b));
        end
    end
    assign closePathA_uid70_block_rsrvd_fix_n[0] = ~ (closePathA_uid70_block_rsrvd_fix_o[13]);

    // redist26_closePathA_uid70_block_rsrvd_fix_n_4(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_0 <= '0;
            redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_1 <= '0;
            redist26_closePathA_uid70_block_rsrvd_fix_n_4_q <= '0;
        end
        else
        begin
            redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_0 <= $unsigned(closePathA_uid70_block_rsrvd_fix_n);
            redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_1 <= redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_0;
            redist26_closePathA_uid70_block_rsrvd_fix_n_4_q <= redist26_closePathA_uid70_block_rsrvd_fix_n_4_delay_1;
        end
    end

    // closePath_uid71_block_rsrvd_fix(LOGICAL,70)@6
    assign closePath_uid71_block_rsrvd_fix_q = redist26_closePathA_uid70_block_rsrvd_fix_n_4_q & redist27_effSub_uid59_block_rsrvd_fix_q_4_q;

    // aMinusA_uid122_block_rsrvd_fix(LOGICAL,121)@6
    assign aMinusA_uid122_block_rsrvd_fix_q = closePath_uid71_block_rsrvd_fix_q & aMinusA2_uid121_block_rsrvd_fix_q;

    // invAMinusA_uid234_block_rsrvd_fix(LOGICAL,233)@6
    assign invAMinusA_uid234_block_rsrvd_fix_q = ~ (aMinusA_uid122_block_rsrvd_fix_q);

    // redist32_sigA_uid57_block_rsrvd_fix_b_6(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_0 <= '0;
            redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_1 <= '0;
            redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_2 <= '0;
            redist32_sigA_uid57_block_rsrvd_fix_b_6_q <= '0;
        end
        else
        begin
            redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_0 <= $unsigned(redist31_sigA_uid57_block_rsrvd_fix_b_2_q);
            redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_1 <= redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_0;
            redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_2 <= redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_1;
            redist32_sigA_uid57_block_rsrvd_fix_b_6_q <= redist32_sigA_uid57_block_rsrvd_fix_b_6_delay_2;
        end
    end

    // redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1 <= '0;
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0 <= $unsigned(excZ_bSig_uid45_block_rsrvd_fix_q);
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1 <= redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0;
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_q <= redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1;
        end
    end

    // redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4_q <= $unsigned(redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_q);
        end
    end

    // redist33_excS_bSig_uid51_block_rsrvd_fix_q_3(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1 <= '0;
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0 <= $unsigned(excS_bSig_uid51_block_rsrvd_fix_q);
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1 <= redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0;
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_q <= redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1;
        end
    end

    // redist34_excS_bSig_uid51_block_rsrvd_fix_q_4(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_excS_bSig_uid51_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist34_excS_bSig_uid51_block_rsrvd_fix_q_4_q <= $unsigned(redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_q);
        end
    end

    // cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    assign cstAllOWE_uid19_block_rsrvd_fix_q = $unsigned(11'b11111111111);

    // expXIsMax_uid42_block_rsrvd_fix(LOGICAL,41)@1 + 1
    assign expXIsMax_uid42_block_rsrvd_fix_qi = $unsigned(redist43_exp_bSig_uid39_block_rsrvd_fix_b_1_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid42_block_rsrvd_fix_delay ( .xin(expXIsMax_uid42_block_rsrvd_fix_qi), .xout(expXIsMax_uid42_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid48_block_rsrvd_fix(LOGICAL,47)@2
    assign invExpXIsMax_uid48_block_rsrvd_fix_q = ~ (expXIsMax_uid42_block_rsrvd_fix_q);

    // excR_bSig_uid50_block_rsrvd_fix(LOGICAL,49)@2 + 1
    assign excR_bSig_uid50_block_rsrvd_fix_qi = InvExpXIsZero_uid49_block_rsrvd_fix_q & invExpXIsMax_uid48_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_bSig_uid50_block_rsrvd_fix_delay ( .xin(excR_bSig_uid50_block_rsrvd_fix_qi), .xout(excR_bSig_uid50_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_excR_bSig_uid50_block_rsrvd_fix_q_4(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excR_bSig_uid50_block_rsrvd_fix_q);
            redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1 <= redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0;
            redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_q <= redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // bIsRegOrSubnorm_uid233_block_rsrvd_fix(LOGICAL,232)@6
    assign bIsRegOrSubnorm_uid233_block_rsrvd_fix_q = redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_q | redist34_excS_bSig_uid51_block_rsrvd_fix_q_4_q | redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4_q;

    // redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0 <= $unsigned(fracXIsZero_uid26_block_rsrvd_fix_q);
            redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_q <= redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // redist53_expXIsZero_uid24_block_rsrvd_fix_q_3(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_expXIsZero_uid24_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist53_expXIsZero_uid24_block_rsrvd_fix_q_3_q <= $unsigned(redist52_expXIsZero_uid24_block_rsrvd_fix_q_2_q);
        end
    end

    // excZ_aSig_uid28_block_rsrvd_fix(LOGICAL,27)@4 + 1
    assign excZ_aSig_uid28_block_rsrvd_fix_qi = redist53_expXIsZero_uid24_block_rsrvd_fix_q_3_q & redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_aSig_uid28_block_rsrvd_fix_delay ( .xin(excZ_aSig_uid28_block_rsrvd_fix_qi), .xout(excZ_aSig_uid28_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist48_excZ_aSig_uid28_block_rsrvd_fix_q_2(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_excZ_aSig_uid28_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist48_excZ_aSig_uid28_block_rsrvd_fix_q_2_q <= $unsigned(excZ_aSig_uid28_block_rsrvd_fix_q);
        end
    end

    // redist44_excS_aSig_uid34_block_rsrvd_fix_q_3(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1 <= '0;
            redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0 <= $unsigned(excS_aSig_uid34_block_rsrvd_fix_q);
            redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1 <= redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0;
            redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_q <= redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1;
        end
    end

    // redist45_excS_aSig_uid34_block_rsrvd_fix_q_4(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_excS_aSig_uid34_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist45_excS_aSig_uid34_block_rsrvd_fix_q_4_q <= $unsigned(redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_q);
        end
    end

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_notEnable(LOGICAL,447)
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_nor(LOGICAL,448)
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_nor_q = ~ (redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_notEnable_q | redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_sticky_ena_q);

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_last(CONSTANT,444)
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_last_q = $unsigned(3'b010);

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmp(LOGICAL,445)
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmp_b = {1'b0, redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_q};
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmp_q = $unsigned(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_last_q == redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmp_b ? 1'b1 : 1'b0);

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmpReg(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmp_q);
        end
    end

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_sticky_ena(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_nor_q == 1'b1)
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_cmpReg_q);
        end
    end

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_enaAnd(LOGICAL,450)
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_enaAnd_q = redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_sticky_ena_q & VCC_q;

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt(COUNTER,442)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_i <= $unsigned(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_q = redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_i[1:0];

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_wraddr(REG,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_q);
        end
    end

    // redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem(DUALMEM,441)
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_ia = $unsigned(redist57_exp_aSig_uid22_block_rsrvd_fix_b_1_q);
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_aa = redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_wraddr_q;
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_ab = redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_rdcnt_q;
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(11),
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
    ) redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_dmem (
        .clocken1(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_reset0),
        .clock1(clock),
        .address_a(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_aa),
        .data_a(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_ab),
        .q_b(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_iq),
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
    assign redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_q = redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_iq[10:0];

    // expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@6
    assign expXIsMax_uid25_block_rsrvd_fix_q = $unsigned(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // invExpXIsMax_uid31_block_rsrvd_fix(LOGICAL,30)@6
    assign invExpXIsMax_uid31_block_rsrvd_fix_q = ~ (expXIsMax_uid25_block_rsrvd_fix_q);

    // redist54_expXIsZero_uid24_block_rsrvd_fix_q_5(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_delay_0 <= $unsigned(redist53_expXIsZero_uid24_block_rsrvd_fix_q_3_q);
            redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_q <= redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_delay_0;
        end
    end

    // InvExpXIsZero_uid32_block_rsrvd_fix(LOGICAL,31)@6
    assign InvExpXIsZero_uid32_block_rsrvd_fix_q = ~ (redist54_expXIsZero_uid24_block_rsrvd_fix_q_5_q);

    // excR_aSig_uid33_block_rsrvd_fix(LOGICAL,32)@6
    assign excR_aSig_uid33_block_rsrvd_fix_q = InvExpXIsZero_uid32_block_rsrvd_fix_q & invExpXIsMax_uid31_block_rsrvd_fix_q;

    // aIsRegOrSubnorm_uid232_block_rsrvd_fix(LOGICAL,231)@6
    assign aIsRegOrSubnorm_uid232_block_rsrvd_fix_q = excR_aSig_uid33_block_rsrvd_fix_q | redist45_excS_aSig_uid34_block_rsrvd_fix_q_4_q | redist48_excZ_aSig_uid28_block_rsrvd_fix_q_2_q;

    // signRReg_uid235_block_rsrvd_fix(LOGICAL,234)@6
    assign signRReg_uid235_block_rsrvd_fix_q = aIsRegOrSubnorm_uid232_block_rsrvd_fix_q & bIsRegOrSubnorm_uid233_block_rsrvd_fix_q & redist32_sigA_uid57_block_rsrvd_fix_b_6_q & invAMinusA_uid234_block_rsrvd_fix_q;

    // redist30_sigB_uid58_block_rsrvd_fix_b_6(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_0 <= '0;
            redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_1 <= '0;
            redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_2 <= '0;
            redist30_sigB_uid58_block_rsrvd_fix_b_6_q <= '0;
        end
        else
        begin
            redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_0 <= $unsigned(redist29_sigB_uid58_block_rsrvd_fix_b_2_q);
            redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_1 <= redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_0;
            redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_2 <= redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_1;
            redist30_sigB_uid58_block_rsrvd_fix_b_6_q <= redist30_sigB_uid58_block_rsrvd_fix_b_6_delay_2;
        end
    end

    // excAZBZSigASigB_uid239_block_rsrvd_fix(LOGICAL,238)@6
    assign excAZBZSigASigB_uid239_block_rsrvd_fix_q = redist48_excZ_aSig_uid28_block_rsrvd_fix_q_2_q & redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4_q & redist32_sigA_uid57_block_rsrvd_fix_b_6_q & redist30_sigB_uid58_block_rsrvd_fix_b_6_q;

    // excBZARSigA_uid240_block_rsrvd_fix(LOGICAL,239)@6
    assign excBZARSigA_uid240_block_rsrvd_fix_q = redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4_q & excR_aSig_uid33_block_rsrvd_fix_q & redist32_sigA_uid57_block_rsrvd_fix_b_6_q;

    // signRZero_uid241_block_rsrvd_fix(LOGICAL,240)@6
    assign signRZero_uid241_block_rsrvd_fix_q = excBZARSigA_uid240_block_rsrvd_fix_q | excAZBZSigASigB_uid239_block_rsrvd_fix_q;

    // excI_bSig_uid46_block_rsrvd_fix(LOGICAL,45)@2 + 1
    assign excI_bSig_uid46_block_rsrvd_fix_qi = expXIsMax_uid42_block_rsrvd_fix_q & fracXIsZero_uid43_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_bSig_uid46_block_rsrvd_fix_delay ( .xin(excI_bSig_uid46_block_rsrvd_fix_qi), .xout(excI_bSig_uid46_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist37_excI_bSig_uid46_block_rsrvd_fix_q_4(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excI_bSig_uid46_block_rsrvd_fix_q);
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1 <= redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0;
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_q <= redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // sigBBInf_uid236_block_rsrvd_fix(LOGICAL,235)@6
    assign sigBBInf_uid236_block_rsrvd_fix_q = redist30_sigB_uid58_block_rsrvd_fix_b_6_q & redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_q;

    // redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0 <= $unsigned(redist50_fracXIsZero_uid26_block_rsrvd_fix_q_3_q);
            redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_q <= redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0;
        end
    end

    // excI_aSig_uid29_block_rsrvd_fix(LOGICAL,28)@6
    assign excI_aSig_uid29_block_rsrvd_fix_q = expXIsMax_uid25_block_rsrvd_fix_q & redist51_fracXIsZero_uid26_block_rsrvd_fix_q_5_q;

    // sigAAInf_uid237_block_rsrvd_fix(LOGICAL,236)@6
    assign sigAAInf_uid237_block_rsrvd_fix_q = redist32_sigA_uid57_block_rsrvd_fix_b_6_q & excI_aSig_uid29_block_rsrvd_fix_q;

    // signRInf_uid238_block_rsrvd_fix(LOGICAL,237)@6
    assign signRInf_uid238_block_rsrvd_fix_q = sigAAInf_uid237_block_rsrvd_fix_q | sigBBInf_uid236_block_rsrvd_fix_q;

    // signRInfRZRReg_uid242_block_rsrvd_fix(LOGICAL,241)@6 + 1
    assign signRInfRZRReg_uid242_block_rsrvd_fix_qi = signRInf_uid238_block_rsrvd_fix_q | signRZero_uid241_block_rsrvd_fix_q | signRReg_uid235_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRInfRZRReg_uid242_block_rsrvd_fix_delay ( .xin(signRInfRZRReg_uid242_block_rsrvd_fix_qi), .xout(signRInfRZRReg_uid242_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_0 <= $unsigned(signRInfRZRReg_uid242_block_rsrvd_fix_q);
            redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_1 <= redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_0;
            redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_q <= redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excN_bSig_uid47_block_rsrvd_fix(LOGICAL,46)@2 + 1
    assign excN_bSig_uid47_block_rsrvd_fix_qi = expXIsMax_uid42_block_rsrvd_fix_q & fracXIsNotZero_uid44_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_bSig_uid47_block_rsrvd_fix_delay ( .xin(excN_bSig_uid47_block_rsrvd_fix_qi), .xout(excN_bSig_uid47_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_excN_bSig_uid47_block_rsrvd_fix_q_8(DELAY,409)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_excN_bSig_uid47_block_rsrvd_fix_q_8 ( .xin(excN_bSig_uid47_block_rsrvd_fix_q), .xout(redist36_excN_bSig_uid47_block_rsrvd_fix_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_2 <= '0;
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_0 <= $unsigned(fracXIsNotZero_uid27_block_rsrvd_fix_q);
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_1 <= redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_0;
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_2 <= redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_1;
            redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_q <= redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_delay_2;
        end
    end

    // excN_aSig_uid30_block_rsrvd_fix(LOGICAL,29)@6 + 1
    assign excN_aSig_uid30_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & redist49_fracXIsNotZero_uid27_block_rsrvd_fix_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_aSig_uid30_block_rsrvd_fix_delay ( .xin(excN_aSig_uid30_block_rsrvd_fix_qi), .xout(excN_aSig_uid30_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist46_excN_aSig_uid30_block_rsrvd_fix_q_4(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excN_aSig_uid30_block_rsrvd_fix_q);
            redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1 <= redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0;
            redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_q <= redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excRNaN2_uid227_block_rsrvd_fix(LOGICAL,226)@10
    assign excRNaN2_uid227_block_rsrvd_fix_q = redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_q | redist36_excN_bSig_uid47_block_rsrvd_fix_q_8_q;

    // redist28_effSub_uid59_block_rsrvd_fix_q_8(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_0 <= '0;
            redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_1 <= '0;
            redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_2 <= '0;
            redist28_effSub_uid59_block_rsrvd_fix_q_8_q <= '0;
        end
        else
        begin
            redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_0 <= $unsigned(redist27_effSub_uid59_block_rsrvd_fix_q_4_q);
            redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_1 <= redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_0;
            redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_2 <= redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_1;
            redist28_effSub_uid59_block_rsrvd_fix_q_8_q <= redist28_effSub_uid59_block_rsrvd_fix_q_8_delay_2;
        end
    end

    // redist38_excI_bSig_uid46_block_rsrvd_fix_q_8(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_0 <= '0;
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_1 <= '0;
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_2 <= '0;
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_q <= '0;
        end
        else
        begin
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_0 <= $unsigned(redist37_excI_bSig_uid46_block_rsrvd_fix_q_4_q);
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_1 <= redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_0;
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_2 <= redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_1;
            redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_q <= redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_delay_2;
        end
    end

    // redist47_excI_aSig_uid29_block_rsrvd_fix_q_4(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_2 <= '0;
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excI_aSig_uid29_block_rsrvd_fix_q);
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1 <= redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0;
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_2 <= redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1;
            redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_q <= redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_2;
        end
    end

    // excAIBISub_uid228_block_rsrvd_fix(LOGICAL,227)@10
    assign excAIBISub_uid228_block_rsrvd_fix_q = redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_q & redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_q & redist28_effSub_uid59_block_rsrvd_fix_q_8_q;

    // excRNaN_uid229_block_rsrvd_fix(LOGICAL,228)@10
    assign excRNaN_uid229_block_rsrvd_fix_q = excAIBISub_uid228_block_rsrvd_fix_q | excRNaN2_uid227_block_rsrvd_fix_q;

    // invExcRNaN_uid243_block_rsrvd_fix(LOGICAL,242)@10
    assign invExcRNaN_uid243_block_rsrvd_fix_q = ~ (excRNaN_uid229_block_rsrvd_fix_q);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signRPostExc_uid244_block_rsrvd_fix(LOGICAL,243)@10
    assign signRPostExc_uid244_block_rsrvd_fix_q = invExcRNaN_uid243_block_rsrvd_fix_q & redist9_signRInfRZRReg_uid242_block_rsrvd_fix_q_4_q;

    // oneOnTwoBits_uid154_block_rsrvd_fix(CONSTANT,153)
    assign oneOnTwoBits_uid154_block_rsrvd_fix_q = $unsigned(2'b01);

    // zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,328)
    assign zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,324)@7
    assign leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[52:0];
    assign leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[52:0];

    // leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,323)
    assign leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,325)@7
    assign leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q};

    // leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,321)@7
    assign leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[53:0];
    assign leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[53:0];

    // leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,322)@7
    assign leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, cst2zeros_uid170_block_rsrvd_fix_q};

    // leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,318)@7
    assign leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[54:0];
    assign leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[54:0];

    // leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,319)@7
    assign leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,313)@7
    assign leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[43:0];
    assign leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[43:0];

    // leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,312)
    assign leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,314)@7
    assign leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q};

    // leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,310)@7
    assign leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[47:0];
    assign leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[47:0];

    // leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,311)@7
    assign leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,307)@7
    assign leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[51:0];
    assign leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[51:0];

    // leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,308)@7
    assign leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,302)@7
    assign leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_q[7:0];
    assign leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[7:0];

    // leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,301)
    assign leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,303)@7
    assign leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q};

    // redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0 <= $unsigned(vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b);
            redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1 <= redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0;
            redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q <= redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,300)@7
    assign leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {redist6_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q, zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,296)@7
    assign leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_q[39:0];
    assign leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[39:0];

    // leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,297)@7
    assign leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_notEnable(LOGICAL,437)
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_nor(LOGICAL,438)
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_nor_q = ~ (redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_notEnable_q | redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_sticky_ena_q);

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_cmpReg(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_sticky_ena(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_nor_q == 1'b1)
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_sticky_ena_q <= $unsigned(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_cmpReg_q);
        end
    end

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_enaAnd(LOGICAL,440)
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_enaAnd_q = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_sticky_ena_q & VCC_q;

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt(COUNTER,434)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_i <= $unsigned(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_q = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_i[0:0];

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_wraddr(REG,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_wraddr_q <= $unsigned(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_q);
        end
    end

    // redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem(DUALMEM,433)
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_ia = $unsigned(redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q);
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_aa = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_wraddr_q;
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_ab = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_rdcnt_q;
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(56),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(56),
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
    ) redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_dmem (
        .clocken1(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_aa),
        .data_a(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_ab),
        .q_b(redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_iq),
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
    assign redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_q = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_iq[55:0];

    // leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,305)@7
    assign leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_b;
    always @(leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s or redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_q or leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
            2'b00 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = redist21_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_mem_q;
            2'b01 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b10 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b11 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            default : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,316)@7
    assign leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_c;
    always @(leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s or leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
            2'b00 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b01 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b10 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b11 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            default : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // expAP1_uid97_block_rsrvd_fix(ADD,96)@6
    assign expAP1_uid97_block_rsrvd_fix_a = {1'b0, redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_q};
    assign expAP1_uid97_block_rsrvd_fix_b = {11'b00000000000, VCC_q};
    assign expAP1_uid97_block_rsrvd_fix_o = $unsigned(expAP1_uid97_block_rsrvd_fix_a) + $unsigned(expAP1_uid97_block_rsrvd_fix_b);
    assign expAP1_uid97_block_rsrvd_fix_q = expAP1_uid97_block_rsrvd_fix_o[11:0];

    // condCase11_uid102_block_rsrvd_fix(COMPARE,101)@6
    assign condCase11_uid102_block_rsrvd_fix_a = {8'b00000000, r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q};
    assign condCase11_uid102_block_rsrvd_fix_b = {2'b00, expAP1_uid97_block_rsrvd_fix_q};
    assign condCase11_uid102_block_rsrvd_fix_o = $unsigned(condCase11_uid102_block_rsrvd_fix_a) - $unsigned(condCase11_uid102_block_rsrvd_fix_b);
    assign condCase11_uid102_block_rsrvd_fix_n[0] = ~ (condCase11_uid102_block_rsrvd_fix_o[13]);

    // condCase12_uid103_block_rsrvd_fix(LOGICAL,102)@6
    assign condCase12_uid103_block_rsrvd_fix_q = ~ (condCase11_uid102_block_rsrvd_fix_n);

    // aNormalAndClosePath_uid101_block_rsrvd_fix(LOGICAL,100)@6
    assign aNormalAndClosePath_uid101_block_rsrvd_fix_q = excR_aSig_uid33_block_rsrvd_fix_q & closePath_uid71_block_rsrvd_fix_q;

    // case12_uid105_block_rsrvd_fix(LOGICAL,104)@6 + 1
    assign case12_uid105_block_rsrvd_fix_qi = aNormalAndClosePath_uid101_block_rsrvd_fix_q & condCase12_uid103_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    case12_uid105_block_rsrvd_fix_delay ( .xin(case12_uid105_block_rsrvd_fix_qi), .xout(case12_uid105_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zExt_uid99_block_rsrvd_fix(CONSTANT,98)
    assign zExt_uid99_block_rsrvd_fix_q = $unsigned(5'b00000);

    // redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= $unsigned(r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q);
        end
    end

    // expValueClosePath_Case12_uid100_block_rsrvd_fix(BITJOIN,99)@7
    assign expValueClosePath_Case12_uid100_block_rsrvd_fix_q = {zExt_uid99_block_rsrvd_fix_q, redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q};

    // case12Exponent_uid108_block_rsrvd_fix(LOGICAL,107)@7
    assign case12Exponent_uid108_block_rsrvd_fix_b = $unsigned({{10{case12_uid105_block_rsrvd_fix_q[0]}}, case12_uid105_block_rsrvd_fix_q});
    assign case12Exponent_uid108_block_rsrvd_fix_q = expValueClosePath_Case12_uid100_block_rsrvd_fix_q & case12Exponent_uid108_block_rsrvd_fix_b;

    // case11_uid104_block_rsrvd_fix(LOGICAL,103)@6 + 1
    assign case11_uid104_block_rsrvd_fix_qi = aNormalAndClosePath_uid101_block_rsrvd_fix_q & condCase11_uid102_block_rsrvd_fix_n;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    case11_uid104_block_rsrvd_fix_delay ( .xin(case11_uid104_block_rsrvd_fix_qi), .xout(case11_uid104_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist59_exp_aSig_uid22_block_rsrvd_fix_b_7(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_exp_aSig_uid22_block_rsrvd_fix_b_7_q <= '0;
        end
        else
        begin
            redist59_exp_aSig_uid22_block_rsrvd_fix_b_7_q <= $unsigned(redist58_exp_aSig_uid22_block_rsrvd_fix_b_6_mem_q);
        end
    end

    // shiftValC11_uid114_block_rsrvd_fix(LOGICAL,113)@7
    assign shiftValC11_uid114_block_rsrvd_fix_b = $unsigned({{10{case11_uid104_block_rsrvd_fix_q[0]}}, case11_uid104_block_rsrvd_fix_q});
    assign shiftValC11_uid114_block_rsrvd_fix_q = redist59_exp_aSig_uid22_block_rsrvd_fix_b_7_q & shiftValC11_uid114_block_rsrvd_fix_b;

    // redist24_closePath_uid71_block_rsrvd_fix_q_1(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_closePath_uid71_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist24_closePath_uid71_block_rsrvd_fix_q_1_q <= $unsigned(closePath_uid71_block_rsrvd_fix_q);
        end
    end

    // aZeroOrSubnorm_uid72_block_rsrvd_fix(LOGICAL,71)@5
    assign aZeroOrSubnorm_uid72_block_rsrvd_fix_q = excZ_aSig_uid28_block_rsrvd_fix_q | redist44_excS_aSig_uid34_block_rsrvd_fix_q_3_q;

    // redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_delay_0 <= $unsigned(aZeroOrSubnorm_uid72_block_rsrvd_fix_q);
            redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_q <= redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // case0_uid95_block_rsrvd_fix(LOGICAL,94)@7
    assign case0_uid95_block_rsrvd_fix_q = redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_q & redist23_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_2_q & redist24_closePath_uid71_block_rsrvd_fix_q_1_q;

    // expValueClosePath_Case0_uid96_block_rsrvd_fix(CONSTANT,95)
    assign expValueClosePath_Case0_uid96_block_rsrvd_fix_q = $unsigned(11'b00000000001);

    // case0Exponent_uid106_block_rsrvd_fix(LOGICAL,105)@7
    assign case0Exponent_uid106_block_rsrvd_fix_b = $unsigned({{10{case0_uid95_block_rsrvd_fix_q[0]}}, case0_uid95_block_rsrvd_fix_q});
    assign case0Exponent_uid106_block_rsrvd_fix_q = expValueClosePath_Case0_uid96_block_rsrvd_fix_q & case0Exponent_uid106_block_rsrvd_fix_b;

    // shiftValueCloseAll_uid116_block_rsrvd_fix(LOGICAL,115)@7
    assign shiftValueCloseAll_uid116_block_rsrvd_fix_q = case0Exponent_uid106_block_rsrvd_fix_q | shiftValC11_uid114_block_rsrvd_fix_q | case12Exponent_uid108_block_rsrvd_fix_q;

    // leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select(BITSELECT,366)@7
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in = shiftValueCloseAll_uid116_block_rsrvd_fix_q[5:0];
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_b = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in[5:4];
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_c = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in[3:2];
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_d = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in[1:0];

    // leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,327)@7 + 1
    assign leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_d;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q <= 56'b0;
        end
        else
        begin
            unique case (leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
                2'b00 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q <= leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
                2'b01 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
                2'b10 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q <= leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
                2'b11 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q <= leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
                default : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q <= 56'b0;
            endcase
        end
    end

    // shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(COMPARE,294)@7 + 1
    assign shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_a = {2'b00, shiftValueCloseAll_uid116_block_rsrvd_fix_q};
    assign shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = {7'b0000000, cAmA_uid120_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_o <= $unsigned(shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b);
        end
    end
    assign shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_n[0] = ~ (shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_o[12]);

    // r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,329)@8
    assign r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_n;
    always @(r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s or leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q)
    begin
        unique case (r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
            1'b0 : r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            1'b1 : r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            default : r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // fracPostNorm_closePath_uid119_block_rsrvd_fix(BITSELECT,118)@8
    assign fracPostNorm_closePath_uid119_block_rsrvd_fix_in = r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[54:0];
    assign fracPostNorm_closePath_uid119_block_rsrvd_fix_b = fracPostNorm_closePath_uid119_block_rsrvd_fix_in[54:2];

    // lsb2BitsClosePath_uid202_block_rsrvd_fix(BITSELECT,201)@8
    assign lsb2BitsClosePath_uid202_block_rsrvd_fix_in = fracPostNorm_closePath_uid119_block_rsrvd_fix_b[1:0];
    assign lsb2BitsClosePath_uid202_block_rsrvd_fix_b = lsb2BitsClosePath_uid202_block_rsrvd_fix_in[1:0];

    // IrndVal_close_uid203_block_rsrvd_fix(LOGICAL,202)@8
    assign IrndVal_close_uid203_block_rsrvd_fix_q = $unsigned(lsb2BitsClosePath_uid202_block_rsrvd_fix_b == oneOnTwoBits_uid154_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // rndVal_close_uid204_block_rsrvd_fix(LOGICAL,203)@8
    assign rndVal_close_uid204_block_rsrvd_fix_q = ~ (IrndVal_close_uid203_block_rsrvd_fix_q);

    // cst2On3Bits_uid198_block_rsrvd_fix(CONSTANT,197)
    assign cst2On3Bits_uid198_block_rsrvd_fix_q = $unsigned(3'b010);

    // padConst_uid133_block_rsrvd_fix(CONSTANT,132)
    assign padConst_uid133_block_rsrvd_fix_q = $unsigned(55'b0000000000000000000000000000000000000000000000000000000);

    // rightPaddedIn_uid134_block_rsrvd_fix(BITJOIN,133)@3
    assign rightPaddedIn_uid134_block_rsrvd_fix_q = {oFracBREXC2S_uid79_block_rsrvd_fix_b, padConst_uid133_block_rsrvd_fix_q};

    // xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,331)@3
    assign xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:110]);

    // redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q <= $unsigned(xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b);
        end
    end

    // seMsb_to48_uid361(BITSELECT,360)@4
    assign seMsb_to48_uid361_in = $unsigned({{47{redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q[0]}}, redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q});
    assign seMsb_to48_uid361_b = $unsigned(seMsb_to48_uid361_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,361)@4
    assign rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q[110:48]);

    // rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,362)@4
    assign rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to48_uid361_b, rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to32_uid358(BITSELECT,357)@4
    assign seMsb_to32_uid358_in = $unsigned({{31{redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q[0]}}, redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q});
    assign seMsb_to32_uid358_b = $unsigned(seMsb_to32_uid358_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,358)@4
    assign rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q[110:32]);

    // rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,359)@4
    assign rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to32_uid358_b, rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to16_uid355(BITSELECT,354)@4
    assign seMsb_to16_uid355_in = $unsigned({{15{redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q[0]}}, redist1_xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b_1_q});
    assign seMsb_to16_uid355_b = $unsigned(seMsb_to16_uid355_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,355)@4
    assign rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q[110:16]);

    // rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,356)@4
    assign rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to16_uid355_b, rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to12_uid350(BITSELECT,349)@3
    assign seMsb_to12_uid350_in = $unsigned({{11{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to12_uid350_b = $unsigned(seMsb_to12_uid350_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,350)@3
    assign rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q[110:12]);

    // rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,351)@3
    assign rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to12_uid350_b, rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to8_uid347(BITSELECT,346)@3
    assign seMsb_to8_uid347_in = $unsigned({{7{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to8_uid347_b = $unsigned(seMsb_to8_uid347_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,347)@3
    assign rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q[110:8]);

    // rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,348)@3
    assign rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to8_uid347_b, rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to4_uid344(BITSELECT,343)@3
    assign seMsb_to4_uid344_in = $unsigned({{3{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to4_uid344_b = $unsigned(seMsb_to4_uid344_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,344)@3
    assign rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q[110:4]);

    // rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,345)@3
    assign rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to4_uid344_b, rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to3_uid339(BITSELECT,338)@3
    assign seMsb_to3_uid339_in = $unsigned({{2{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to3_uid339_b = $unsigned(seMsb_to3_uid339_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,339)@3
    assign rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:3]);

    // rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,340)@3
    assign rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to3_uid339_b, rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to2_uid336(BITSELECT,335)@3
    assign seMsb_to2_uid336_in = $unsigned({{1{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to2_uid336_b = $unsigned(seMsb_to2_uid336_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,336)@3
    assign rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:2]);

    // rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,337)@3
    assign rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to2_uid336_b, rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,333)@3
    assign rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:1]);

    // rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,334)@3
    assign rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q = {xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b, rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix_b};

    // rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix(MUX,342)@3
    assign rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_b;
    always @(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s or rightPaddedIn_uid134_block_rsrvd_fix_q or rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s)
            2'b00 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightPaddedIn_uid134_block_rsrvd_fix_q;
            2'b01 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b10 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b11 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q;
            default : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = 111'b0;
        endcase
    end

    // shiftOutConst_uid126_block_rsrvd_fix(CONSTANT,125)
    assign shiftOutConst_uid126_block_rsrvd_fix_q = $unsigned(6'b110111);

    // expAmExpBm1_uid128_block_rsrvd_fix(SUB,127)@2
    assign expAmExpBm1_uid128_block_rsrvd_fix_a = $unsigned({{2{expAmExpB_uid68_block_rsrvd_fix_q[11]}}, expAmExpB_uid68_block_rsrvd_fix_q});
    assign expAmExpBm1_uid128_block_rsrvd_fix_b = $unsigned({13'b0000000000000, VCC_q});
    assign expAmExpBm1_uid128_block_rsrvd_fix_o = $unsigned($signed(expAmExpBm1_uid128_block_rsrvd_fix_a) - $signed(expAmExpBm1_uid128_block_rsrvd_fix_b));
    assign expAmExpBm1_uid128_block_rsrvd_fix_q = expAmExpBm1_uid128_block_rsrvd_fix_o[12:0];

    // expAmExpBm1RangeShift_uid129_block_rsrvd_fix(BITSELECT,128)@2
    assign expAmExpBm1RangeShift_uid129_block_rsrvd_fix_in = expAmExpBm1_uid128_block_rsrvd_fix_q[5:0];
    assign expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b = expAmExpBm1RangeShift_uid129_block_rsrvd_fix_in[5:0];

    // expAmExpBRangeShift_uid130_block_rsrvd_fix(BITSELECT,129)@2
    assign expAmExpBRangeShift_uid130_block_rsrvd_fix_in = expAmExpB_uid68_block_rsrvd_fix_q[5:0];
    assign expAmExpBRangeShift_uid130_block_rsrvd_fix_b = expAmExpBRangeShift_uid130_block_rsrvd_fix_in[5:0];

    // shiftValue_farPathPreSat_uid131_block_rsrvd_fix(MUX,130)@2
    assign shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s = aNormalBSubnormal_uid88_block_rsrvd_fix_q;
    always @(shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s or expAmExpBRangeShift_uid130_block_rsrvd_fix_b or expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b)
    begin
        unique case (shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s)
            1'b0 : shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q = expAmExpBRangeShift_uid130_block_rsrvd_fix_b;
            1'b1 : shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q = expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b;
            default : shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q = 6'b0;
        endcase
    end

    // cWFP2_uid123_block_rsrvd_fix(CONSTANT,122)
    assign cWFP2_uid123_block_rsrvd_fix_q = $unsigned(6'b110110);

    // shiftedOut_uid125_block_rsrvd_fix(COMPARE,124)@2
    assign shiftedOut_uid125_block_rsrvd_fix_a = {8'b00000000, cWFP2_uid123_block_rsrvd_fix_q};
    assign shiftedOut_uid125_block_rsrvd_fix_b = {2'b00, expAmExpB_uid68_block_rsrvd_fix_q};
    assign shiftedOut_uid125_block_rsrvd_fix_o = $unsigned(shiftedOut_uid125_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid125_block_rsrvd_fix_b);
    assign shiftedOut_uid125_block_rsrvd_fix_c[0] = shiftedOut_uid125_block_rsrvd_fix_o[13];

    // shiftValue_farPath_uid132_block_rsrvd_fix(MUX,131)@2 + 1
    assign shiftValue_farPath_uid132_block_rsrvd_fix_s = shiftedOut_uid125_block_rsrvd_fix_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftValue_farPath_uid132_block_rsrvd_fix_q <= 6'b0;
        end
        else
        begin
            unique case (shiftValue_farPath_uid132_block_rsrvd_fix_s)
                1'b0 : shiftValue_farPath_uid132_block_rsrvd_fix_q <= shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q;
                1'b1 : shiftValue_farPath_uid132_block_rsrvd_fix_q <= shiftOutConst_uid126_block_rsrvd_fix_q;
                default : shiftValue_farPath_uid132_block_rsrvd_fix_q <= 6'b0;
            endcase
        end
    end

    // rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select(BITSELECT,367)@3
    assign rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_b = shiftValue_farPath_uid132_block_rsrvd_fix_q[1:0];
    assign rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_c = shiftValue_farPath_uid132_block_rsrvd_fix_q[3:2];
    assign rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d = shiftValue_farPath_uid132_block_rsrvd_fix_q[5:4];

    // rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix(MUX,353)@3 + 1
    assign rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q <= 111'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_s)
                2'b00 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q <= rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q;
                2'b01 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix_q;
                2'b10 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix_q;
                2'b11 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix_q;
                default : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q <= 111'b0;
            endcase
        end
    end

    // redist0_rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist0_rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix(MUX,364)@4
    assign rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s = redist0_rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s or rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s)
            2'b00 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b01 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b10 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b11 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q;
            default : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = 111'b0;
        endcase
    end

    // highBBits_uid139_block_rsrvd_fix(BITSELECT,138)@4
    assign highBBits_uid139_block_rsrvd_fix_b = $unsigned(rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q[110:55]);

    // redist22_oFracAE_uid74_block_rsrvd_fix_q_1(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_oFracAE_uid74_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist22_oFracAE_uid74_block_rsrvd_fix_q_1_q <= $unsigned(oFracAE_uid74_block_rsrvd_fix_q);
        end
    end

    // fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix(ADD,139)@4 + 1
    assign fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_a = $unsigned({{1{redist22_oFracAE_uid74_block_rsrvd_fix_q_1_q[55]}}, redist22_oFracAE_uid74_block_rsrvd_fix_q_1_q});
    assign fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_b = $unsigned({{1{highBBits_uid139_block_rsrvd_fix_b[55]}}, highBBits_uid139_block_rsrvd_fix_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o <= 57'b0;
        end
        else
        begin
            fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o <= $unsigned($signed(fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_a) + $signed(fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_b));
        end
    end
    assign fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_q = fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o[56:0];

    // lowRangeB_uid138_block_rsrvd_fix(BITSELECT,137)@4
    assign lowRangeB_uid138_block_rsrvd_fix_in = rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q[54:0];
    assign lowRangeB_uid138_block_rsrvd_fix_b = lowRangeB_uid138_block_rsrvd_fix_in[54:0];

    // redist18_lowRangeB_uid138_block_rsrvd_fix_b_1(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_lowRangeB_uid138_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist18_lowRangeB_uid138_block_rsrvd_fix_b_1_q <= $unsigned(lowRangeB_uid138_block_rsrvd_fix_b);
        end
    end

    // fracAddResult_farPath_uid141_block_rsrvd_fix(BITJOIN,140)@5
    assign fracAddResult_farPath_uid141_block_rsrvd_fix_q = {fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_q, redist18_lowRangeB_uid138_block_rsrvd_fix_b_1_q};

    // fracPostNorm_farPath11_uid161_block_rsrvd_fix(BITSELECT,160)@5
    assign fracPostNorm_farPath11_uid161_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[109:0];
    assign fracPostNorm_farPath11_uid161_block_rsrvd_fix_b = fracPostNorm_farPath11_uid161_block_rsrvd_fix_in[109:57];

    // fracPostNorm_farPath01_uid165_block_rsrvd_fix(BITSELECT,164)@5
    assign fracPostNorm_farPath01_uid165_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[108:0];
    assign fracPostNorm_farPath01_uid165_block_rsrvd_fix_b = fracPostNorm_farPath01_uid165_block_rsrvd_fix_in[108:56];

    // fracPostNorm_farPath00_uid167_block_rsrvd_fix(BITSELECT,166)@5
    assign fracPostNorm_farPath00_uid167_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[107:0];
    assign fracPostNorm_farPath00_uid167_block_rsrvd_fix_b = fracPostNorm_farPath00_uid167_block_rsrvd_fix_in[107:55];

    // normBits_farPath_uid144_block_rsrvd_fix(BITSELECT,143)@5
    assign normBits_farPath_uid144_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[110:0];
    assign normBits_farPath_uid144_block_rsrvd_fix_b = normBits_farPath_uid144_block_rsrvd_fix_in[110:109];

    // normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select(BITSELECT,368)@5
    assign normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_b = $unsigned(normBits_farPath_uid144_block_rsrvd_fix_b[1:1]);
    assign normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c = $unsigned(normBits_farPath_uid144_block_rsrvd_fix_b[0:0]);

    // invNormBits_farPathInternal1_uid146_block_rsrvd_fix(LOGICAL,145)@5
    assign invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q = ~ (normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_b);

    // invNormBits_farPathInternal0_uid148_block_rsrvd_fix(LOGICAL,147)@5
    assign invNormBits_farPathInternal0_uid148_block_rsrvd_fix_q = ~ (normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c);

    // bZeroOrSubnorm_uid73_block_rsrvd_fix(LOGICAL,72)@5
    assign bZeroOrSubnorm_uid73_block_rsrvd_fix_q = redist39_excZ_bSig_uid45_block_rsrvd_fix_q_3_q | redist33_excS_bSig_uid51_block_rsrvd_fix_q_3_q;

    // aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix(LOGICAL,148)@5
    assign aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix_q = aZeroOrSubnorm_uid72_block_rsrvd_fix_q & bZeroOrSubnorm_uid73_block_rsrvd_fix_q & invNormBits_farPathInternal0_uid148_block_rsrvd_fix_q & invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q;

    // normBits_farPathRnd_uid155_block_rsrvd_fix(MUX,154)@5
    assign normBits_farPathRnd_uid155_block_rsrvd_fix_s = aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix_q;
    always @(normBits_farPathRnd_uid155_block_rsrvd_fix_s or normBits_farPath_uid144_block_rsrvd_fix_b or oneOnTwoBits_uid154_block_rsrvd_fix_q)
    begin
        unique case (normBits_farPathRnd_uid155_block_rsrvd_fix_s)
            1'b0 : normBits_farPathRnd_uid155_block_rsrvd_fix_q = normBits_farPath_uid144_block_rsrvd_fix_b;
            1'b1 : normBits_farPathRnd_uid155_block_rsrvd_fix_q = oneOnTwoBits_uid154_block_rsrvd_fix_q;
            default : normBits_farPathRnd_uid155_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // fracPostNorm_farPath_uid169_block_rsrvd_fix(MUX,168)@5 + 1
    assign fracPostNorm_farPath_uid169_block_rsrvd_fix_s = normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracPostNorm_farPath_uid169_block_rsrvd_fix_q <= 53'b0;
        end
        else
        begin
            unique case (fracPostNorm_farPath_uid169_block_rsrvd_fix_s)
                2'b00 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q <= fracPostNorm_farPath00_uid167_block_rsrvd_fix_b;
                2'b01 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q <= fracPostNorm_farPath01_uid165_block_rsrvd_fix_b;
                2'b10 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q <= fracPostNorm_farPath11_uid161_block_rsrvd_fix_b;
                2'b11 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q <= fracPostNorm_farPath11_uid161_block_rsrvd_fix_b;
                default : fracPostNorm_farPath_uid169_block_rsrvd_fix_q <= 53'b0;
            endcase
        end
    end

    // lBit_uid196_block_rsrvd_fix(BITSELECT,195)@6
    assign lBit_uid196_block_rsrvd_fix_in = $unsigned(fracPostNorm_farPath_uid169_block_rsrvd_fix_q[1:0]);
    assign lBit_uid196_block_rsrvd_fix_b = $unsigned(lBit_uid196_block_rsrvd_fix_in[1:1]);

    // r11_uid182_block_rsrvd_fix(BITSELECT,181)@5
    assign r11_uid182_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[57:0];
    assign r11_uid182_block_rsrvd_fix_b = r11_uid182_block_rsrvd_fix_in[57:57];

    // r01_uid186_block_rsrvd_fix(BITSELECT,185)@5
    assign r01_uid186_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[56:0];
    assign r01_uid186_block_rsrvd_fix_b = r01_uid186_block_rsrvd_fix_in[56:56];

    // extra01_uid176_block_rsrvd_fix(BITSELECT,175)@5
    assign extra01_uid176_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[55:0];
    assign extra01_uid176_block_rsrvd_fix_b = extra01_uid176_block_rsrvd_fix_in[55:55];

    // rBit_uid190_block_rsrvd_fix(MUX,189)@5 + 1
    assign rBit_uid190_block_rsrvd_fix_s = normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rBit_uid190_block_rsrvd_fix_q <= 1'b0;
        end
        else
        begin
            unique case (rBit_uid190_block_rsrvd_fix_s)
                2'b00 : rBit_uid190_block_rsrvd_fix_q <= extra01_uid176_block_rsrvd_fix_b;
                2'b01 : rBit_uid190_block_rsrvd_fix_q <= r01_uid186_block_rsrvd_fix_b;
                2'b10 : rBit_uid190_block_rsrvd_fix_q <= r11_uid182_block_rsrvd_fix_b;
                2'b11 : rBit_uid190_block_rsrvd_fix_q <= r11_uid182_block_rsrvd_fix_b;
                default : rBit_uid190_block_rsrvd_fix_q <= 1'b0;
            endcase
        end
    end

    // stickyTemp_uid142_block_rsrvd_fix(BITSELECT,141)@5
    assign stickyTemp_uid142_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[54:0];
    assign stickyTemp_uid142_block_rsrvd_fix_b = stickyTemp_uid142_block_rsrvd_fix_in[54:0];

    // stickyPreMux_uid143_block_rsrvd_fix(LOGICAL,142)@5
    assign stickyPreMux_uid143_block_rsrvd_fix_q = $unsigned(stickyTemp_uid142_block_rsrvd_fix_b != 55'b0000000000000000000000000000000000000000000000000000000 ? 1'b1 : 1'b0);

    // extra11_uid172_block_rsrvd_fix(BITSELECT,171)@5
    assign extra11_uid172_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[56:0];
    assign extra11_uid172_block_rsrvd_fix_b = extra11_uid172_block_rsrvd_fix_in[56:55];

    // m01_uid177_block_rsrvd_fix(BITJOIN,176)@5
    assign m01_uid177_block_rsrvd_fix_q = {extra01_uid176_block_rsrvd_fix_b, GND_q};

    // stickyExtraBits_uid179_block_rsrvd_fix(MUX,178)@5
    assign stickyExtraBits_uid179_block_rsrvd_fix_s = normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    always @(stickyExtraBits_uid179_block_rsrvd_fix_s or cst2zeros_uid170_block_rsrvd_fix_q or m01_uid177_block_rsrvd_fix_q or extra11_uid172_block_rsrvd_fix_b)
    begin
        unique case (stickyExtraBits_uid179_block_rsrvd_fix_s)
            2'b00 : stickyExtraBits_uid179_block_rsrvd_fix_q = cst2zeros_uid170_block_rsrvd_fix_q;
            2'b01 : stickyExtraBits_uid179_block_rsrvd_fix_q = m01_uid177_block_rsrvd_fix_q;
            2'b10 : stickyExtraBits_uid179_block_rsrvd_fix_q = extra11_uid172_block_rsrvd_fix_b;
            2'b11 : stickyExtraBits_uid179_block_rsrvd_fix_q = extra11_uid172_block_rsrvd_fix_b;
            default : stickyExtraBits_uid179_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // stickyAllBits_uid180_block_rsrvd_fix(BITJOIN,179)@5
    assign stickyAllBits_uid180_block_rsrvd_fix_q = {stickyPreMux_uid143_block_rsrvd_fix_q, stickyExtraBits_uid179_block_rsrvd_fix_q};

    // sticky_uid181_block_rsrvd_fix(LOGICAL,180)@5 + 1
    assign sticky_uid181_block_rsrvd_fix_qi = $unsigned(stickyAllBits_uid180_block_rsrvd_fix_q != 3'b000 ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sticky_uid181_block_rsrvd_fix_delay ( .xin(sticky_uid181_block_rsrvd_fix_qi), .xout(sticky_uid181_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // concBits_uid197_block_rsrvd_fix(BITJOIN,196)@6
    assign concBits_uid197_block_rsrvd_fix_q = {lBit_uid196_block_rsrvd_fix_b, rBit_uid190_block_rsrvd_fix_q, sticky_uid181_block_rsrvd_fix_q};

    // IrndVal_uid199_block_rsrvd_fix(LOGICAL,198)@6 + 1
    assign IrndVal_uid199_block_rsrvd_fix_qi = $unsigned(concBits_uid197_block_rsrvd_fix_q == cst2On3Bits_uid198_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    IrndVal_uid199_block_rsrvd_fix_delay ( .xin(IrndVal_uid199_block_rsrvd_fix_qi), .xout(IrndVal_uid199_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_IrndVal_uid199_block_rsrvd_fix_q_2(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_IrndVal_uid199_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist15_IrndVal_uid199_block_rsrvd_fix_q_2_q <= $unsigned(IrndVal_uid199_block_rsrvd_fix_q);
        end
    end

    // rndVal_far_uid200_block_rsrvd_fix(LOGICAL,199)@8
    assign rndVal_far_uid200_block_rsrvd_fix_q = ~ (redist15_IrndVal_uid199_block_rsrvd_fix_q_2_q);

    // redist25_closePath_uid71_block_rsrvd_fix_q_2(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_closePath_uid71_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist25_closePath_uid71_block_rsrvd_fix_q_2_q <= $unsigned(redist24_closePath_uid71_block_rsrvd_fix_q_1_q);
        end
    end

    // rndValue_uid211_block_rsrvd_fix(MUX,210)@8 + 1
    assign rndValue_uid211_block_rsrvd_fix_s = redist25_closePath_uid71_block_rsrvd_fix_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rndValue_uid211_block_rsrvd_fix_q <= 1'b0;
        end
        else
        begin
            unique case (rndValue_uid211_block_rsrvd_fix_s)
                1'b0 : rndValue_uid211_block_rsrvd_fix_q <= rndVal_far_uid200_block_rsrvd_fix_q;
                1'b1 : rndValue_uid211_block_rsrvd_fix_q <= rndVal_close_uid204_block_rsrvd_fix_q;
                default : rndValue_uid211_block_rsrvd_fix_q <= 1'b0;
            endcase
        end
    end

    // expValueClosePath_Case11_uid98_block_rsrvd_fix(BITSELECT,97)@7
    assign expValueClosePath_Case11_uid98_block_rsrvd_fix_in = redist19_expAP1_uid97_block_rsrvd_fix_q_1_q[10:0];
    assign expValueClosePath_Case11_uid98_block_rsrvd_fix_b = expValueClosePath_Case11_uid98_block_rsrvd_fix_in[10:0];

    // case11Exponent_uid107_block_rsrvd_fix(LOGICAL,106)@7
    assign case11Exponent_uid107_block_rsrvd_fix_b = $unsigned({{10{case11_uid104_block_rsrvd_fix_q[0]}}, case11_uid104_block_rsrvd_fix_q});
    assign case11Exponent_uid107_block_rsrvd_fix_q = expValueClosePath_Case11_uid98_block_rsrvd_fix_b & case11Exponent_uid107_block_rsrvd_fix_b;

    // expValueClosePathExt_uid109_block_rsrvd_fix(LOGICAL,108)@7
    assign expValueClosePathExt_uid109_block_rsrvd_fix_q = case0Exponent_uid106_block_rsrvd_fix_q | case11Exponent_uid107_block_rsrvd_fix_q | case12Exponent_uid108_block_rsrvd_fix_q;

    // countValue_farPath00_uid194_block_rsrvd_fix(CONSTANT,193)
    assign countValue_farPath00_uid194_block_rsrvd_fix_q = $unsigned(11'b00000000010);

    // threeOnTwoBits_uid157_block_rsrvd_fix(CONSTANT,156)
    assign threeOnTwoBits_uid157_block_rsrvd_fix_q = $unsigned(2'b11);

    // aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix(LOGICAL,152)@5
    assign aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix_q = aZeroOrSubnorm_uid72_block_rsrvd_fix_q & bZeroOrSubnorm_uid73_block_rsrvd_fix_q & normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c & invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q;

    // aAndBSubnormalCst_uid159_block_rsrvd_fix(MUX,158)@5
    assign aAndBSubnormalCst_uid159_block_rsrvd_fix_s = aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix_q;
    always @(aAndBSubnormalCst_uid159_block_rsrvd_fix_s or oneOnTwoBits_uid154_block_rsrvd_fix_q or threeOnTwoBits_uid157_block_rsrvd_fix_q)
    begin
        unique case (aAndBSubnormalCst_uid159_block_rsrvd_fix_s)
            1'b0 : aAndBSubnormalCst_uid159_block_rsrvd_fix_q = oneOnTwoBits_uid154_block_rsrvd_fix_q;
            1'b1 : aAndBSubnormalCst_uid159_block_rsrvd_fix_q = threeOnTwoBits_uid157_block_rsrvd_fix_q;
            default : aAndBSubnormalCst_uid159_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // aAndBSubnormal_uid156_block_rsrvd_fix(LOGICAL,155)@5
    assign aAndBSubnormal_uid156_block_rsrvd_fix_q = aZeroOrSubnorm_uid72_block_rsrvd_fix_q & bZeroOrSubnorm_uid73_block_rsrvd_fix_q;

    // normBits_farPathCnt_uid160_block_rsrvd_fix(MUX,159)@5 + 1
    assign normBits_farPathCnt_uid160_block_rsrvd_fix_s = aAndBSubnormal_uid156_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            normBits_farPathCnt_uid160_block_rsrvd_fix_q <= 2'b0;
        end
        else
        begin
            unique case (normBits_farPathCnt_uid160_block_rsrvd_fix_s)
                1'b0 : normBits_farPathCnt_uid160_block_rsrvd_fix_q <= normBits_farPath_uid144_block_rsrvd_fix_b;
                1'b1 : normBits_farPathCnt_uid160_block_rsrvd_fix_q <= aAndBSubnormalCst_uid159_block_rsrvd_fix_q;
                default : normBits_farPathCnt_uid160_block_rsrvd_fix_q <= 2'b0;
            endcase
        end
    end

    // redist17_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist17_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q <= $unsigned(normBits_farPathCnt_uid160_block_rsrvd_fix_q);
        end
    end

    // countValue_farPath_uid195_block_rsrvd_fix(MUX,194)@7
    assign countValue_farPath_uid195_block_rsrvd_fix_s = redist17_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q;
    always @(countValue_farPath_uid195_block_rsrvd_fix_s or countValue_farPath00_uid194_block_rsrvd_fix_q or expValueClosePath_Case0_uid96_block_rsrvd_fix_q or cstAllZWE_uid21_block_rsrvd_fix_q)
    begin
        unique case (countValue_farPath_uid195_block_rsrvd_fix_s)
            2'b00 : countValue_farPath_uid195_block_rsrvd_fix_q = countValue_farPath00_uid194_block_rsrvd_fix_q;
            2'b01 : countValue_farPath_uid195_block_rsrvd_fix_q = expValueClosePath_Case0_uid96_block_rsrvd_fix_q;
            2'b10 : countValue_farPath_uid195_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b11 : countValue_farPath_uid195_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            default : countValue_farPath_uid195_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // countValue_uid205_block_rsrvd_fix(MUX,204)@7
    assign countValue_uid205_block_rsrvd_fix_s = redist24_closePath_uid71_block_rsrvd_fix_q_1_q;
    always @(countValue_uid205_block_rsrvd_fix_s or countValue_farPath_uid195_block_rsrvd_fix_q or expValueClosePathExt_uid109_block_rsrvd_fix_q)
    begin
        unique case (countValue_uid205_block_rsrvd_fix_s)
            1'b0 : countValue_uid205_block_rsrvd_fix_q = countValue_farPath_uid195_block_rsrvd_fix_q;
            1'b1 : countValue_uid205_block_rsrvd_fix_q = expValueClosePathExt_uid109_block_rsrvd_fix_q;
            default : countValue_uid205_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // redist19_expAP1_uid97_block_rsrvd_fix_q_1(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_expAP1_uid97_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist19_expAP1_uid97_block_rsrvd_fix_q_1_q <= $unsigned(expAP1_uid97_block_rsrvd_fix_q);
        end
    end

    // expPostNorm_uid207_block_rsrvd_fix(SUB,206)@7 + 1
    assign expPostNorm_uid207_block_rsrvd_fix_a = {1'b0, redist19_expAP1_uid97_block_rsrvd_fix_q_1_q};
    assign expPostNorm_uid207_block_rsrvd_fix_b = {2'b00, countValue_uid205_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expPostNorm_uid207_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expPostNorm_uid207_block_rsrvd_fix_o <= $unsigned(expPostNorm_uid207_block_rsrvd_fix_a) - $unsigned(expPostNorm_uid207_block_rsrvd_fix_b);
        end
    end
    assign expPostNorm_uid207_block_rsrvd_fix_q = expPostNorm_uid207_block_rsrvd_fix_o[12:0];

    // redist14_expPostNorm_uid207_block_rsrvd_fix_q_2(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_expPostNorm_uid207_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist14_expPostNorm_uid207_block_rsrvd_fix_q_2_q <= $unsigned(expPostNorm_uid207_block_rsrvd_fix_q);
        end
    end

    // redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_delay_0 <= $unsigned(fracPostNorm_farPath_uid169_block_rsrvd_fix_q);
            redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_q <= redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // fracPostNormPreRnd_uid210_block_rsrvd_fix(MUX,209)@8 + 1
    assign fracPostNormPreRnd_uid210_block_rsrvd_fix_s = redist25_closePath_uid71_block_rsrvd_fix_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= 53'b0;
        end
        else
        begin
            unique case (fracPostNormPreRnd_uid210_block_rsrvd_fix_s)
                1'b0 : fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= redist16_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_3_q;
                1'b1 : fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= fracPostNorm_closePath_uid119_block_rsrvd_fix_b;
                default : fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= 53'b0;
            endcase
        end
    end

    // countValFracPostNorm_uid212_block_rsrvd_fix(BITJOIN,211)@9
    assign countValFracPostNorm_uid212_block_rsrvd_fix_q = {redist14_expPostNorm_uid207_block_rsrvd_fix_q_2_q, fracPostNormPreRnd_uid210_block_rsrvd_fix_q};

    // countValFracPostRnd_uid213_block_rsrvd_fix(ADD,212)@9
    assign countValFracPostRnd_uid213_block_rsrvd_fix_a = {1'b0, countValFracPostNorm_uid212_block_rsrvd_fix_q};
    assign countValFracPostRnd_uid213_block_rsrvd_fix_b = {66'b000000000000000000000000000000000000000000000000000000000000000000, rndValue_uid211_block_rsrvd_fix_q};
    assign countValFracPostRnd_uid213_block_rsrvd_fix_o = $unsigned(countValFracPostRnd_uid213_block_rsrvd_fix_a) + $unsigned(countValFracPostRnd_uid213_block_rsrvd_fix_b);
    assign countValFracPostRnd_uid213_block_rsrvd_fix_q = countValFracPostRnd_uid213_block_rsrvd_fix_o[66:0];

    // countValue_uid214_block_rsrvd_fix(BITSELECT,213)@9
    assign countValue_uid214_block_rsrvd_fix_in = $unsigned(countValFracPostRnd_uid213_block_rsrvd_fix_q[65:0]);
    assign countValue_uid214_block_rsrvd_fix_b = $unsigned(countValue_uid214_block_rsrvd_fix_in[65:53]);

    // expRPreExc_uid220_block_rsrvd_fix(BITSELECT,219)@9
    assign expRPreExc_uid220_block_rsrvd_fix_in = countValue_uid214_block_rsrvd_fix_b[10:0];
    assign expRPreExc_uid220_block_rsrvd_fix_b = expRPreExc_uid220_block_rsrvd_fix_in[10:0];

    // redist12_expRPreExc_uid220_block_rsrvd_fix_b_1(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_expRPreExc_uid220_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist12_expRPreExc_uid220_block_rsrvd_fix_b_1_q <= $unsigned(expRPreExc_uid220_block_rsrvd_fix_b);
        end
    end

    // wEP2AllOwE_uid216_block_rsrvd_fix(CONSTANT,215)
    assign wEP2AllOwE_uid216_block_rsrvd_fix_q = $unsigned(13'b0011111111111);

    // rOvf_uid218_block_rsrvd_fix(COMPARE,217)@9 + 1
    assign rOvf_uid218_block_rsrvd_fix_a = $unsigned({{3{countValue_uid214_block_rsrvd_fix_b[12]}}, countValue_uid214_block_rsrvd_fix_b});
    assign rOvf_uid218_block_rsrvd_fix_b = $unsigned({3'b000, wEP2AllOwE_uid216_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rOvf_uid218_block_rsrvd_fix_o <= 16'b0;
        end
        else
        begin
            rOvf_uid218_block_rsrvd_fix_o <= $unsigned($signed(rOvf_uid218_block_rsrvd_fix_a) - $signed(rOvf_uid218_block_rsrvd_fix_b));
        end
    end
    assign rOvf_uid218_block_rsrvd_fix_n[0] = ~ (rOvf_uid218_block_rsrvd_fix_o[15]);

    // regInputs_uid221_block_rsrvd_fix(LOGICAL,220)@6 + 1
    assign regInputs_uid221_block_rsrvd_fix_qi = excR_aSig_uid33_block_rsrvd_fix_q & redist35_excR_bSig_uid50_block_rsrvd_fix_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    regInputs_uid221_block_rsrvd_fix_delay ( .xin(regInputs_uid221_block_rsrvd_fix_qi), .xout(regInputs_uid221_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_regInputs_uid221_block_rsrvd_fix_q_4(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist11_regInputs_uid221_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_0 <= $unsigned(regInputs_uid221_block_rsrvd_fix_q);
            redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_1 <= redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_0;
            redist11_regInputs_uid221_block_rsrvd_fix_q_4_q <= redist11_regInputs_uid221_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // rInfOvf_uid224_block_rsrvd_fix(LOGICAL,223)@10
    assign rInfOvf_uid224_block_rsrvd_fix_q = redist11_regInputs_uid221_block_rsrvd_fix_q_4_q & rOvf_uid218_block_rsrvd_fix_n;

    // excRInfVInC_uid225_block_rsrvd_fix(BITJOIN,224)@10
    assign excRInfVInC_uid225_block_rsrvd_fix_q = {rInfOvf_uid224_block_rsrvd_fix_q, redist36_excN_bSig_uid47_block_rsrvd_fix_q_8_q, redist46_excN_aSig_uid30_block_rsrvd_fix_q_4_q, redist38_excI_bSig_uid46_block_rsrvd_fix_q_8_q, redist47_excI_aSig_uid29_block_rsrvd_fix_q_4_q, redist28_effSub_uid59_block_rsrvd_fix_q_8_q};

    // excRInf_uid226_block_rsrvd_fix(LOOKUP,225)@10
    always @(excRInfVInC_uid225_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (excRInfVInC_uid225_block_rsrvd_fix_q)
            6'b000000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b000001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b000010 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000011 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000100 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000101 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000110 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100000 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b100001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            default : begin
                          // unreachable
                          excRInf_uid226_block_rsrvd_fix_q = 1'bx;
                      end
        endcase
        // End reserved scope level
    end

    // excRZeroVInC_uid222_block_rsrvd_fix(BITJOIN,221)@6
    assign excRZeroVInC_uid222_block_rsrvd_fix_q = {aMinusA_uid122_block_rsrvd_fix_q, redist40_excZ_bSig_uid45_block_rsrvd_fix_q_4_q, redist48_excZ_aSig_uid28_block_rsrvd_fix_q_2_q};

    // excRZero_uid223_block_rsrvd_fix(LOOKUP,222)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            excRZero_uid223_block_rsrvd_fix_q <= $unsigned(1'b0);
        end
        else
        begin
            unique case (excRZeroVInC_uid222_block_rsrvd_fix_q)
                3'b000 : excRZero_uid223_block_rsrvd_fix_q <= 1'b0;
                3'b001 : excRZero_uid223_block_rsrvd_fix_q <= 1'b0;
                3'b010 : excRZero_uid223_block_rsrvd_fix_q <= 1'b0;
                3'b011 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b100 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b101 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b110 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b111 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                default : begin
                              // unreachable
                              excRZero_uid223_block_rsrvd_fix_q <= 1'bx;
                          end
            endcase
        end
    end

    // redist10_excRZero_uid223_block_rsrvd_fix_q_4(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist10_excRZero_uid223_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excRZero_uid223_block_rsrvd_fix_q);
            redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_1 <= redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_0;
            redist10_excRZero_uid223_block_rsrvd_fix_q_4_q <= redist10_excRZero_uid223_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // concExc_uid230_block_rsrvd_fix(BITJOIN,229)@10
    assign concExc_uid230_block_rsrvd_fix_q = {excRNaN_uid229_block_rsrvd_fix_q, excRInf_uid226_block_rsrvd_fix_q, redist10_excRZero_uid223_block_rsrvd_fix_q_4_q};

    // excREnc_uid231_block_rsrvd_fix(LOOKUP,230)@10
    always @(concExc_uid230_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (concExc_uid230_block_rsrvd_fix_q)
            3'b000 : excREnc_uid231_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid231_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid231_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid231_block_rsrvd_fix_q = 2'b10;
            3'b100 : excREnc_uid231_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid231_block_rsrvd_fix_q = 2'b11;
            3'b110 : excREnc_uid231_block_rsrvd_fix_q = 2'b11;
            3'b111 : excREnc_uid231_block_rsrvd_fix_q = 2'b11;
            default : begin
                          // unreachable
                          excREnc_uid231_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // expRPostExc_uid252_block_rsrvd_fix(MUX,251)@10
    assign expRPostExc_uid252_block_rsrvd_fix_s = excREnc_uid231_block_rsrvd_fix_q;
    always @(expRPostExc_uid252_block_rsrvd_fix_s or cstAllZWE_uid21_block_rsrvd_fix_q or redist12_expRPreExc_uid220_block_rsrvd_fix_b_1_q or cstAllOWE_uid19_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid252_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid252_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid252_block_rsrvd_fix_q = redist12_expRPreExc_uid220_block_rsrvd_fix_b_1_q;
            2'b10 : expRPostExc_uid252_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid252_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            default : expRPostExc_uid252_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // oneFracRPostExc2_uid245_block_rsrvd_fix(CONSTANT,244)
    assign oneFracRPostExc2_uid245_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000001);

    // fracValue_uid215_block_rsrvd_fix(BITSELECT,214)@9
    assign fracValue_uid215_block_rsrvd_fix_in = countValFracPostRnd_uid213_block_rsrvd_fix_q[52:0];
    assign fracValue_uid215_block_rsrvd_fix_b = fracValue_uid215_block_rsrvd_fix_in[52:1];

    // redist13_fracValue_uid215_block_rsrvd_fix_b_1(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_fracValue_uid215_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist13_fracValue_uid215_block_rsrvd_fix_b_1_q <= $unsigned(fracValue_uid215_block_rsrvd_fix_b);
        end
    end

    // fracRPostExc_uid248_block_rsrvd_fix(MUX,247)@10
    assign fracRPostExc_uid248_block_rsrvd_fix_s = excREnc_uid231_block_rsrvd_fix_q;
    always @(fracRPostExc_uid248_block_rsrvd_fix_s or cstZeroWF_uid20_block_rsrvd_fix_q or redist13_fracValue_uid215_block_rsrvd_fix_b_1_q or oneFracRPostExc2_uid245_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid248_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid248_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid248_block_rsrvd_fix_q = redist13_fracValue_uid215_block_rsrvd_fix_b_1_q;
            2'b10 : fracRPostExc_uid248_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid248_block_rsrvd_fix_q = oneFracRPostExc2_uid245_block_rsrvd_fix_q;
            default : fracRPostExc_uid248_block_rsrvd_fix_q = 52'b0;
        endcase
    end

    // R_uid253_block_rsrvd_fix(BITJOIN,252)@10
    assign R_uid253_block_rsrvd_fix_q = {signRPostExc_uid244_block_rsrvd_fix_q, expRPostExc_uid252_block_rsrvd_fix_q, fracRPostExc_uid248_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@10
    assign out_primWireOut = R_uid253_block_rsrvd_fix_q;

endmodule
