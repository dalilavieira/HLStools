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

// SystemVerilog created from sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z54c2463b0c2463a0455u
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z54c2463b0c2463a0455u (
    input wire [63:0] in_0,
    output wire [63:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] expX_uid6_block_rsrvd_fix_b;
    wire [0:0] signX_uid7_block_rsrvd_fix_b;
    wire [10:0] cstAllOWE_uid8_block_rsrvd_fix_q;
    wire [51:0] cstZeroWF_uid9_block_rsrvd_fix_q;
    wire [10:0] cstAllZWE_uid10_block_rsrvd_fix_q;
    wire [51:0] frac_x_uid12_block_rsrvd_fix_b;
    wire [0:0] expXIsZero_uid13_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid14_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid15_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid16_block_rsrvd_fix_q;
    wire [0:0] excZ_x_uid17_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid17_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid18_block_rsrvd_fix_qi;
    reg [0:0] excI_x_uid18_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid19_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid19_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid20_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid21_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid22_block_rsrvd_fix_qi;
    reg [0:0] excR_x_uid22_block_rsrvd_fix_q;
    wire [0:0] excXSubnorm_uid25_block_rsrvd_fix_q;
    wire [10:0] sBias_uid26_block_rsrvd_fix_q;
    wire [0:0] invExcXSubnorm_uid28_block_rsrvd_fix_q;
    wire [52:0] oFracX_uid29_block_rsrvd_fix_q;
    wire [51:0] fracX_uid32_block_rsrvd_fix_in;
    wire [51:0] fracX_uid32_block_rsrvd_fix_b;
    wire [11:0] expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_a;
    wire [11:0] expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_b;
    logic [11:0] expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_o;
    wire [11:0] expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_q;
    wire [12:0] expXPostSubnorm_uid34_block_rsrvd_fix_a;
    wire [12:0] expXPostSubnorm_uid34_block_rsrvd_fix_b;
    logic [12:0] expXPostSubnorm_uid34_block_rsrvd_fix_o;
    wire [12:0] expXPostSubnorm_uid34_block_rsrvd_fix_q;
    wire [14:0] expEvenSig_uid35_block_rsrvd_fix_a;
    wire [14:0] expEvenSig_uid35_block_rsrvd_fix_b;
    logic [14:0] expEvenSig_uid35_block_rsrvd_fix_o;
    wire [13:0] expEvenSig_uid35_block_rsrvd_fix_q;
    wire [11:0] expREven_uid36_block_rsrvd_fix_in;
    wire [10:0] expREven_uid36_block_rsrvd_fix_b;
    wire [10:0] sBiasM1_uid37_block_rsrvd_fix_q;
    wire [14:0] expOddSig_uid38_block_rsrvd_fix_a;
    wire [14:0] expOddSig_uid38_block_rsrvd_fix_b;
    logic [14:0] expOddSig_uid38_block_rsrvd_fix_o;
    wire [13:0] expOddSig_uid38_block_rsrvd_fix_q;
    wire [11:0] expROdd_uid39_block_rsrvd_fix_in;
    wire [10:0] expROdd_uid39_block_rsrvd_fix_b;
    wire [0:0] expX0PS_uid40_block_rsrvd_fix_in;
    wire [0:0] expX0PS_uid40_block_rsrvd_fix_b;
    wire [0:0] expOddSelect_uid41_block_rsrvd_fix_q;
    wire [0:0] expRMux_uid42_block_rsrvd_fix_s;
    reg [10:0] expRMux_uid42_block_rsrvd_fix_q;
    wire [52:0] addrFull_uid44_block_rsrvd_fix_q;
    wire [7:0] yAddr_uid46_block_rsrvd_fix_b;
    wire [44:0] yForPe_uid47_block_rsrvd_fix_in;
    wire [44:0] yForPe_uid47_block_rsrvd_fix_b;
    wire [59:0] expIncPEOnly_uid49_block_rsrvd_fix_in;
    wire [0:0] expIncPEOnly_uid49_block_rsrvd_fix_b;
    wire [57:0] fracRPreCR_uid50_block_rsrvd_fix_in;
    wire [52:0] fracRPreCR_uid50_block_rsrvd_fix_b;
    wire [53:0] fracPaddingOne_uid52_block_rsrvd_fix_q;
    wire [52:0] oFracX_uid55_block_rsrvd_fix_q;
    wire [53:0] oFracXZ_mergedSignalTM_uid58_block_rsrvd_fix_q;
    wire [53:0] oFracXSignExt_mergedSignalTM_uid63_block_rsrvd_fix_q;
    wire [0:0] normalizedXForComp_uid65_block_rsrvd_fix_s;
    reg [53:0] normalizedXForComp_uid65_block_rsrvd_fix_q;
    wire [53:0] paddingY_uid66_block_rsrvd_fix_q;
    wire [107:0] updatedY_uid67_block_rsrvd_fix_q;
    wire [109:0] squaredResultGTEIn_uid66_block_rsrvd_fix_a;
    wire [109:0] squaredResultGTEIn_uid66_block_rsrvd_fix_b;
    logic [109:0] squaredResultGTEIn_uid66_block_rsrvd_fix_o;
    wire [0:0] squaredResultGTEIn_uid66_block_rsrvd_fix_n;
    wire [0:0] pLTOne_uid69_block_rsrvd_fix_q;
    wire [53:0] fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_a;
    wire [53:0] fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_b;
    logic [53:0] fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_o;
    wire [53:0] fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_q;
    wire [0:0] fracPENotOne_uid73_block_rsrvd_fix_q;
    wire [0:0] fracPENotOneAndCRRoundsExp_uid74_block_rsrvd_fix_q;
    wire [0:0] expInc_uid75_block_rsrvd_fix_qi;
    reg [0:0] expInc_uid75_block_rsrvd_fix_q;
    wire [11:0] expR_uid77_block_rsrvd_fix_a;
    wire [11:0] expR_uid77_block_rsrvd_fix_b;
    logic [11:0] expR_uid77_block_rsrvd_fix_o;
    wire [11:0] expR_uid77_block_rsrvd_fix_q;
    wire [0:0] invSignX_uid78_block_rsrvd_fix_q;
    wire [0:0] inInfAndNotNeg_uid79_block_rsrvd_fix_q;
    wire [0:0] excXRegOrSubnorm_uid80_block_rsrvd_fix_q;
    wire [0:0] minReg_uid81_block_rsrvd_fix_q;
    wire [0:0] minInf_uid82_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid83_block_rsrvd_fix_q;
    wire [2:0] excConc_uid84_block_rsrvd_fix_q;
    wire [3:0] fracSelIn_uid85_block_rsrvd_fix_q;
    reg [1:0] fracSel_uid86_block_rsrvd_fix_q;
    wire [10:0] expRR_uid89_block_rsrvd_fix_in;
    wire [10:0] expRR_uid89_block_rsrvd_fix_b;
    wire [1:0] expRPostExc_uid91_block_rsrvd_fix_s;
    reg [10:0] expRPostExc_uid91_block_rsrvd_fix_q;
    wire [51:0] fracNaN_uid92_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid96_block_rsrvd_fix_s;
    reg [51:0] fracRPostExc_uid96_block_rsrvd_fix_q;
    wire [0:0] negZero_uid97_block_rsrvd_fix_qi;
    reg [0:0] negZero_uid97_block_rsrvd_fix_q;
    wire [63:0] RSqrt_uid98_block_rsrvd_fix_q;
    wire [31:0] zs_uid100_lzx_uid30_block_rsrvd_fix_q;
    wire [31:0] rVStage_uid101_lzx_uid30_block_rsrvd_fix_b;
    wire [0:0] vCount_uid102_lzx_uid30_block_rsrvd_fix_q;
    wire [10:0] mO_uid103_lzx_uid30_block_rsrvd_fix_q;
    wire [20:0] vStage_uid104_lzx_uid30_block_rsrvd_fix_in;
    wire [20:0] vStage_uid104_lzx_uid30_block_rsrvd_fix_b;
    wire [31:0] cStage_uid105_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid107_lzx_uid30_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid107_lzx_uid30_block_rsrvd_fix_q;
    wire [15:0] zs_uid108_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vCount_uid110_lzx_uid30_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid110_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid113_lzx_uid30_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid113_lzx_uid30_block_rsrvd_fix_q;
    wire [7:0] zs_uid114_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vCount_uid116_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid119_lzx_uid30_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid119_lzx_uid30_block_rsrvd_fix_q;
    wire [3:0] zs_uid120_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vCount_uid122_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid125_lzx_uid30_block_rsrvd_fix_s;
    reg [3:0] vStagei_uid125_lzx_uid30_block_rsrvd_fix_q;
    wire [1:0] zs_uid126_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vCount_uid128_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid131_lzx_uid30_block_rsrvd_fix_s;
    reg [1:0] vStagei_uid131_lzx_uid30_block_rsrvd_fix_q;
    wire [0:0] rVStage_uid133_lzx_uid30_block_rsrvd_fix_b;
    wire [0:0] vCount_uid134_lzx_uid30_block_rsrvd_fix_q;
    wire [5:0] r_uid135_lzx_uid30_block_rsrvd_fix_q;
    wire [57:0] os_uid139_sqrtTables_q;
    wire [49:0] os_uid143_sqrtTables_q;
    wire [40:0] os_uid147_sqrtTables_q;
    wire [17:0] yT1_uid164_invPolyEval_b;
    wire [0:0] lowRangeB_uid166_invPolyEval_in;
    wire [0:0] lowRangeB_uid166_invPolyEval_b;
    wire [17:0] highBBits_uid167_invPolyEval_b;
    wire [25:0] s1sumAHighB_uid168_invPolyEval_a;
    wire [25:0] s1sumAHighB_uid168_invPolyEval_b;
    logic [25:0] s1sumAHighB_uid168_invPolyEval_o;
    wire [25:0] s1sumAHighB_uid168_invPolyEval_q;
    wire [26:0] s1_uid169_invPolyEval_q;
    wire [24:0] yT2_uid170_invPolyEval_b;
    wire [0:0] lowRangeB_uid172_invPolyEval_in;
    wire [0:0] lowRangeB_uid172_invPolyEval_b;
    wire [26:0] highBBits_uid173_invPolyEval_b;
    wire [34:0] s2sumAHighB_uid174_invPolyEval_a;
    wire [34:0] s2sumAHighB_uid174_invPolyEval_b;
    logic [34:0] s2sumAHighB_uid174_invPolyEval_o;
    wire [34:0] s2sumAHighB_uid174_invPolyEval_q;
    wire [35:0] s2_uid175_invPolyEval_q;
    wire [33:0] yT3_uid176_invPolyEval_b;
    wire [0:0] lowRangeB_uid178_invPolyEval_in;
    wire [0:0] lowRangeB_uid178_invPolyEval_b;
    wire [33:0] highBBits_uid179_invPolyEval_b;
    wire [41:0] s3sumAHighB_uid180_invPolyEval_a;
    wire [41:0] s3sumAHighB_uid180_invPolyEval_b;
    logic [41:0] s3sumAHighB_uid180_invPolyEval_o;
    wire [41:0] s3sumAHighB_uid180_invPolyEval_q;
    wire [42:0] s3_uid181_invPolyEval_q;
    wire [40:0] yT4_uid182_invPolyEval_b;
    wire [0:0] lowRangeB_uid184_invPolyEval_in;
    wire [0:0] lowRangeB_uid184_invPolyEval_b;
    wire [41:0] highBBits_uid185_invPolyEval_b;
    wire [50:0] s4sumAHighB_uid186_invPolyEval_a;
    wire [50:0] s4sumAHighB_uid186_invPolyEval_b;
    logic [50:0] s4sumAHighB_uid186_invPolyEval_o;
    wire [50:0] s4sumAHighB_uid186_invPolyEval_q;
    wire [51:0] s4_uid187_invPolyEval_q;
    wire [1:0] lowRangeB_uid190_invPolyEval_in;
    wire [1:0] lowRangeB_uid190_invPolyEval_b;
    wire [50:0] highBBits_uid191_invPolyEval_b;
    wire [58:0] s5sumAHighB_uid192_invPolyEval_a;
    wire [58:0] s5sumAHighB_uid192_invPolyEval_b;
    logic [58:0] s5sumAHighB_uid192_invPolyEval_o;
    wire [58:0] s5sumAHighB_uid192_invPolyEval_q;
    wire [60:0] s5_uid193_invPolyEval_q;
    wire [18:0] osig_uid196_pT1_uid165_invPolyEval_b;
    wire [27:0] osig_uid199_pT2_uid171_invPolyEval_b;
    wire [34:0] nx_mergedSignalTM_uid213_pT3_uid177_invPolyEval_q;
    wire [17:0] topRangeX_uid215_pT3_uid177_invPolyEval_b;
    wire [17:0] topRangeY_uid216_pT3_uid177_invPolyEval_b;
    wire [17:0] aboveLeftY_uid218_pT3_uid177_invPolyEval_in;
    wire [17:0] aboveLeftY_uid218_pT3_uid177_invPolyEval_b;
    wire [16:0] rightBottomX_bottomRange_uid220_pT3_uid177_invPolyEval_in;
    wire [16:0] rightBottomX_bottomRange_uid220_pT3_uid177_invPolyEval_b;
    wire [17:0] rightBottomX_mergedSignalTM_uid221_pT3_uid177_invPolyEval_q;
    wire [16:0] aboveLeftX_uid224_pT3_uid177_invPolyEval_in;
    wire [1:0] aboveLeftX_uid224_pT3_uid177_invPolyEval_b;
    wire [17:0] aboveLeftY_uid225_pT3_uid177_invPolyEval_in;
    wire [1:0] aboveLeftY_uid225_pT3_uid177_invPolyEval_b;
    reg [1:0] sm0_uid229_pT3_uid177_invPolyEval_a0;
    reg [1:0] sm0_uid229_pT3_uid177_invPolyEval_b0;
    reg [1:0] sm0_uid229_pT3_uid177_invPolyEval_a1;
    reg [1:0] sm0_uid229_pT3_uid177_invPolyEval_b1;
    reg [3:0] sm0_uid229_pT3_uid177_invPolyEval_s1;
    (* multstyle =  "logic" *) wire [3:0] sm0_uid229_pT3_uid177_invPolyEval_pr;
    reg [3:0] sm0_uid229_pT3_uid177_invPolyEval_q;
    wire [39:0] sumAb_uid230_pT3_uid177_invPolyEval_q;
    wire [13:0] lowRangeB_uid231_pT3_uid177_invPolyEval_in;
    wire [13:0] lowRangeB_uid231_pT3_uid177_invPolyEval_b;
    wire [22:0] highBBits_uid232_pT3_uid177_invPolyEval_b;
    wire [40:0] lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_a;
    wire [40:0] lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_b;
    logic [40:0] lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_o;
    wire [40:0] lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_q;
    wire [54:0] lev1_a0_uid234_pT3_uid177_invPolyEval_q;
    wire [52:0] os_uid235_pT3_uid177_invPolyEval_in;
    wire [34:0] os_uid235_pT3_uid177_invPolyEval_b;
    wire [41:0] nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval_q;
    wire [26:0] topRangeX_uid251_pT4_uid183_invPolyEval_b;
    wire [26:0] topRangeY_uid252_pT4_uid183_invPolyEval_b;
    wire [17:0] aboveLeftX_uid253_pT4_uid183_invPolyEval_b;
    wire [15:0] aboveLeftY_bottomRange_uid255_pT4_uid183_invPolyEval_in;
    wire [15:0] aboveLeftY_bottomRange_uid255_pT4_uid183_invPolyEval_b;
    wire [17:0] aboveLeftY_mergedSignalTM_uid256_pT4_uid183_invPolyEval_q;
    wire [2:0] rightBottomX_bottomExtension_uid258_pT4_uid183_invPolyEval_q;
    wire [14:0] rightBottomX_bottomRange_uid259_pT4_uid183_invPolyEval_in;
    wire [14:0] rightBottomX_bottomRange_uid259_pT4_uid183_invPolyEval_b;
    wire [17:0] rightBottomX_mergedSignalTM_uid260_pT4_uid183_invPolyEval_q;
    wire [17:0] rightBottomY_uid262_pT4_uid183_invPolyEval_b;
    wire [23:0] rightBottomX_uid263_pT4_uid183_invPolyEval_in;
    wire [1:0] rightBottomX_uid263_pT4_uid183_invPolyEval_b;
    wire [15:0] rightBottomY_uid264_pT4_uid183_invPolyEval_in;
    wire [1:0] rightBottomY_uid264_pT4_uid183_invPolyEval_b;
    wire [14:0] aboveLeftX_uid265_pT4_uid183_invPolyEval_in;
    wire [1:0] aboveLeftX_uid265_pT4_uid183_invPolyEval_b;
    wire [24:0] aboveLeftY_uid266_pT4_uid183_invPolyEval_in;
    wire [1:0] aboveLeftY_uid266_pT4_uid183_invPolyEval_b;
    wire [8:0] lowRangeB_uid272_pT4_uid183_invPolyEval_in;
    wire [8:0] lowRangeB_uid272_pT4_uid183_invPolyEval_b;
    wire [27:0] highBBits_uid273_pT4_uid183_invPolyEval_b;
    wire [54:0] lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_a;
    wire [54:0] lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_b;
    logic [54:0] lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_o;
    wire [54:0] lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_q;
    wire [63:0] lev1_a0_uid275_pT4_uid183_invPolyEval_q;
    wire [13:0] lowRangeA_uid277_pT4_uid183_invPolyEval_in;
    wire [13:0] lowRangeA_uid277_pT4_uid183_invPolyEval_b;
    wire [49:0] highABits_uid278_pT4_uid183_invPolyEval_b;
    wire [51:0] lev2_a0high_uid279_pT4_uid183_invPolyEval_a;
    wire [51:0] lev2_a0high_uid279_pT4_uid183_invPolyEval_b;
    logic [51:0] lev2_a0high_uid279_pT4_uid183_invPolyEval_o;
    wire [50:0] lev2_a0high_uid279_pT4_uid183_invPolyEval_q;
    wire [64:0] lev2_a0_uid280_pT4_uid183_invPolyEval_q;
    wire [61:0] os_uid281_pT4_uid183_invPolyEval_in;
    wire [42:0] os_uid281_pT4_uid183_invPolyEval_b;
    wire [45:0] nx_mergedSignalTM_uid295_pT5_uid189_invPolyEval_q;
    wire [26:0] topRangeX_uid297_pT5_uid189_invPolyEval_b;
    wire [26:0] topRangeY_uid298_pT5_uid189_invPolyEval_b;
    wire [24:0] aboveLeftY_bottomRange_uid301_pT5_uid189_invPolyEval_in;
    wire [24:0] aboveLeftY_bottomRange_uid301_pT5_uid189_invPolyEval_b;
    wire [26:0] aboveLeftY_mergedSignalTM_uid302_pT5_uid189_invPolyEval_q;
    wire [18:0] rightBottomX_bottomRange_uid305_pT5_uid189_invPolyEval_in;
    wire [18:0] rightBottomX_bottomRange_uid305_pT5_uid189_invPolyEval_b;
    wire [26:0] rightBottomX_mergedSignalTM_uid306_pT5_uid189_invPolyEval_q;
    wire [18:0] aboveLeftX_uid309_pT5_uid189_invPolyEval_in;
    wire [2:0] aboveLeftX_uid309_pT5_uid189_invPolyEval_b;
    wire [24:0] aboveLeftY_uid310_pT5_uid189_invPolyEval_in;
    wire [2:0] aboveLeftY_uid310_pT5_uid189_invPolyEval_b;
    reg [2:0] sm0_uid314_pT5_uid189_invPolyEval_a0;
    reg [2:0] sm0_uid314_pT5_uid189_invPolyEval_b0;
    reg [2:0] sm0_uid314_pT5_uid189_invPolyEval_a1;
    reg [2:0] sm0_uid314_pT5_uid189_invPolyEval_b1;
    reg [5:0] sm0_uid314_pT5_uid189_invPolyEval_s1;
    (* multstyle =  "logic" *) wire [5:0] sm0_uid314_pT5_uid189_invPolyEval_pr;
    reg [5:0] sm0_uid314_pT5_uid189_invPolyEval_q;
    wire [59:0] sumAb_uid315_pT5_uid189_invPolyEval_q;
    wire [20:0] lowRangeB_uid316_pT5_uid189_invPolyEval_in;
    wire [20:0] lowRangeB_uid316_pT5_uid189_invPolyEval_b;
    wire [33:0] highBBits_uid317_pT5_uid189_invPolyEval_b;
    wire [60:0] lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_a;
    wire [60:0] lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_b;
    logic [60:0] lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_o;
    wire [60:0] lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_q;
    wire [81:0] lev1_a0_uid319_pT5_uid189_invPolyEval_q;
    wire [79:0] os_uid320_pT5_uid189_invPolyEval_in;
    wire [52:0] os_uid320_pT5_uid189_invPolyEval_b;
    wire [0:0] memoryC2_uid146_sqrtTables_q_const_q;
    wire [36:0] leftShiftStage0Idx1Rng16_uid327_aligX_uid31_block_rsrvd_fix_in;
    wire [36:0] leftShiftStage0Idx1Rng16_uid327_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage0Idx1_uid328_aligX_uid31_block_rsrvd_fix_q;
    wire [52:0] leftShiftStage0Idx2_uid331_aligX_uid31_block_rsrvd_fix_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid332_aligX_uid31_block_rsrvd_fix_q;
    wire [4:0] leftShiftStage0Idx3Rng48_uid333_aligX_uid31_block_rsrvd_fix_in;
    wire [4:0] leftShiftStage0Idx3Rng48_uid333_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage0Idx3_uid334_aligX_uid31_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q;
    wire [48:0] leftShiftStage1Idx1Rng4_uid338_aligX_uid31_block_rsrvd_fix_in;
    wire [48:0] leftShiftStage1Idx1Rng4_uid338_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx1_uid339_aligX_uid31_block_rsrvd_fix_q;
    wire [44:0] leftShiftStage1Idx2Rng8_uid341_aligX_uid31_block_rsrvd_fix_in;
    wire [44:0] leftShiftStage1Idx2Rng8_uid341_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx2_uid342_aligX_uid31_block_rsrvd_fix_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid343_aligX_uid31_block_rsrvd_fix_q;
    wire [40:0] leftShiftStage1Idx3Rng12_uid344_aligX_uid31_block_rsrvd_fix_in;
    wire [40:0] leftShiftStage1Idx3Rng12_uid344_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx3_uid345_aligX_uid31_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q;
    wire [51:0] leftShiftStage2Idx1Rng1_uid349_aligX_uid31_block_rsrvd_fix_in;
    wire [51:0] leftShiftStage2Idx1Rng1_uid349_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx1_uid350_aligX_uid31_block_rsrvd_fix_q;
    wire [50:0] leftShiftStage2Idx2Rng2_uid352_aligX_uid31_block_rsrvd_fix_in;
    wire [50:0] leftShiftStage2Idx2Rng2_uid352_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx2_uid353_aligX_uid31_block_rsrvd_fix_q;
    wire [49:0] leftShiftStage2Idx3Rng3_uid355_aligX_uid31_block_rsrvd_fix_in;
    wire [49:0] leftShiftStage2Idx3Rng3_uid355_aligX_uid31_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx3_uid356_aligX_uid31_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_q;
    wire [107:0] squaredResult_uid53_block_rsrvd_fix_sums_join_0_q;
    wire [81:0] squaredResult_uid53_block_rsrvd_fix_sums_align_1_q;
    wire [81:0] squaredResult_uid53_block_rsrvd_fix_sums_align_1_qint;
    wire [108:0] squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_a;
    wire [108:0] squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_b;
    logic [108:0] squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_o;
    wire [108:0] squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_q;
    wire memoryC0_uid137_sqrtTables_lutmem_reset0;
    wire [39:0] memoryC0_uid137_sqrtTables_lutmem_ia;
    wire [7:0] memoryC0_uid137_sqrtTables_lutmem_aa;
    wire [7:0] memoryC0_uid137_sqrtTables_lutmem_ab;
    wire [39:0] memoryC0_uid137_sqrtTables_lutmem_ir;
    wire [39:0] memoryC0_uid137_sqrtTables_lutmem_r;
    wire memoryC0_uid138_sqrtTables_lutmem_reset0;
    wire [17:0] memoryC0_uid138_sqrtTables_lutmem_ia;
    wire [7:0] memoryC0_uid138_sqrtTables_lutmem_aa;
    wire [7:0] memoryC0_uid138_sqrtTables_lutmem_ab;
    wire [17:0] memoryC0_uid138_sqrtTables_lutmem_ir;
    wire [17:0] memoryC0_uid138_sqrtTables_lutmem_r;
    wire memoryC1_uid141_sqrtTables_lutmem_reset0;
    wire [39:0] memoryC1_uid141_sqrtTables_lutmem_ia;
    wire [7:0] memoryC1_uid141_sqrtTables_lutmem_aa;
    wire [7:0] memoryC1_uid141_sqrtTables_lutmem_ab;
    wire [39:0] memoryC1_uid141_sqrtTables_lutmem_ir;
    wire [39:0] memoryC1_uid141_sqrtTables_lutmem_r;
    wire memoryC1_uid142_sqrtTables_lutmem_reset0;
    wire [9:0] memoryC1_uid142_sqrtTables_lutmem_ia;
    wire [7:0] memoryC1_uid142_sqrtTables_lutmem_aa;
    wire [7:0] memoryC1_uid142_sqrtTables_lutmem_ab;
    wire [9:0] memoryC1_uid142_sqrtTables_lutmem_ir;
    wire [9:0] memoryC1_uid142_sqrtTables_lutmem_r;
    wire memoryC2_uid145_sqrtTables_lutmem_reset0;
    wire [39:0] memoryC2_uid145_sqrtTables_lutmem_ia;
    wire [7:0] memoryC2_uid145_sqrtTables_lutmem_aa;
    wire [7:0] memoryC2_uid145_sqrtTables_lutmem_ab;
    wire [39:0] memoryC2_uid145_sqrtTables_lutmem_ir;
    wire [39:0] memoryC2_uid145_sqrtTables_lutmem_r;
    wire memoryC3_uid149_sqrtTables_lutmem_reset0;
    wire [33:0] memoryC3_uid149_sqrtTables_lutmem_ia;
    wire [7:0] memoryC3_uid149_sqrtTables_lutmem_aa;
    wire [7:0] memoryC3_uid149_sqrtTables_lutmem_ab;
    wire [33:0] memoryC3_uid149_sqrtTables_lutmem_ir;
    wire [33:0] memoryC3_uid149_sqrtTables_lutmem_r;
    wire memoryC4_uid152_sqrtTables_lutmem_reset0;
    wire [24:0] memoryC4_uid152_sqrtTables_lutmem_ia;
    wire [7:0] memoryC4_uid152_sqrtTables_lutmem_aa;
    wire [7:0] memoryC4_uid152_sqrtTables_lutmem_ab;
    wire [24:0] memoryC4_uid152_sqrtTables_lutmem_ir;
    wire [24:0] memoryC4_uid152_sqrtTables_lutmem_r;
    wire memoryC5_uid155_sqrtTables_lutmem_reset0;
    wire [17:0] memoryC5_uid155_sqrtTables_lutmem_ia;
    wire [7:0] memoryC5_uid155_sqrtTables_lutmem_aa;
    wire [7:0] memoryC5_uid155_sqrtTables_lutmem_ab;
    wire [17:0] memoryC5_uid155_sqrtTables_lutmem_ir;
    wire [17:0] memoryC5_uid155_sqrtTables_lutmem_r;
    wire prodXY_uid195_pT1_uid165_invPolyEval_cma_reset;
    wire [17:0] prodXY_uid195_pT1_uid165_invPolyEval_cma_a0;
    wire [17:0] prodXY_uid195_pT1_uid165_invPolyEval_cma_c0;
    wire [35:0] prodXY_uid195_pT1_uid165_invPolyEval_cma_s0;
    wire [35:0] prodXY_uid195_pT1_uid165_invPolyEval_cma_qq;
    wire [35:0] prodXY_uid195_pT1_uid165_invPolyEval_cma_q;
    wire prodXY_uid195_pT1_uid165_invPolyEval_cma_ena0;
    wire prodXY_uid195_pT1_uid165_invPolyEval_cma_ena1;
    wire prodXY_uid195_pT1_uid165_invPolyEval_cma_ena2;
    wire prodXY_uid198_pT2_uid171_invPolyEval_cma_reset;
    wire [24:0] prodXY_uid198_pT2_uid171_invPolyEval_cma_a0;
    wire [26:0] prodXY_uid198_pT2_uid171_invPolyEval_cma_c0;
    wire [51:0] prodXY_uid198_pT2_uid171_invPolyEval_cma_s0;
    wire [51:0] prodXY_uid198_pT2_uid171_invPolyEval_cma_qq;
    wire [51:0] prodXY_uid198_pT2_uid171_invPolyEval_cma_q;
    wire prodXY_uid198_pT2_uid171_invPolyEval_cma_ena0;
    wire prodXY_uid198_pT2_uid171_invPolyEval_cma_ena1;
    wire prodXY_uid198_pT2_uid171_invPolyEval_cma_ena2;
    wire sm0_uid226_pT3_uid177_invPolyEval_cma_reset;
    wire [17:0] sm0_uid226_pT3_uid177_invPolyEval_cma_a0;
    wire [17:0] sm0_uid226_pT3_uid177_invPolyEval_cma_c0;
    wire [35:0] sm0_uid226_pT3_uid177_invPolyEval_cma_s0;
    wire [35:0] sm0_uid226_pT3_uid177_invPolyEval_cma_qq;
    wire [35:0] sm0_uid226_pT3_uid177_invPolyEval_cma_q;
    wire sm0_uid226_pT3_uid177_invPolyEval_cma_ena0;
    wire sm0_uid226_pT3_uid177_invPolyEval_cma_ena1;
    wire sm0_uid226_pT3_uid177_invPolyEval_cma_ena2;
    wire sm0_uid267_pT4_uid183_invPolyEval_cma_reset;
    wire [26:0] sm0_uid267_pT4_uid183_invPolyEval_cma_a0;
    wire [26:0] sm0_uid267_pT4_uid183_invPolyEval_cma_c0;
    wire [53:0] sm0_uid267_pT4_uid183_invPolyEval_cma_s0;
    wire [53:0] sm0_uid267_pT4_uid183_invPolyEval_cma_qq;
    wire [53:0] sm0_uid267_pT4_uid183_invPolyEval_cma_q;
    wire sm0_uid267_pT4_uid183_invPolyEval_cma_ena0;
    wire sm0_uid267_pT4_uid183_invPolyEval_cma_ena1;
    wire sm0_uid267_pT4_uid183_invPolyEval_cma_ena2;
    wire sm0_uid311_pT5_uid189_invPolyEval_cma_reset;
    wire [26:0] sm0_uid311_pT5_uid189_invPolyEval_cma_a0;
    wire [26:0] sm0_uid311_pT5_uid189_invPolyEval_cma_c0;
    wire [53:0] sm0_uid311_pT5_uid189_invPolyEval_cma_s0;
    wire [53:0] sm0_uid311_pT5_uid189_invPolyEval_cma_qq;
    wire [53:0] sm0_uid311_pT5_uid189_invPolyEval_cma_q;
    wire sm0_uid311_pT5_uid189_invPolyEval_cma_ena0;
    wire sm0_uid311_pT5_uid189_invPolyEval_cma_ena1;
    wire sm0_uid311_pT5_uid189_invPolyEval_cma_ena2;
    wire squaredResult_uid53_block_rsrvd_fix_im0_cma_reset;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_im0_cma_a0;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_im0_cma_c0;
    wire [53:0] squaredResult_uid53_block_rsrvd_fix_im0_cma_s0;
    wire [53:0] squaredResult_uid53_block_rsrvd_fix_im0_cma_qq;
    wire [53:0] squaredResult_uid53_block_rsrvd_fix_im0_cma_q;
    wire squaredResult_uid53_block_rsrvd_fix_im0_cma_ena0;
    wire squaredResult_uid53_block_rsrvd_fix_im0_cma_ena1;
    wire squaredResult_uid53_block_rsrvd_fix_im0_cma_ena2;
    wire squaredResult_uid53_block_rsrvd_fix_im8_cma_reset;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_im8_cma_a0;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_im8_cma_c0;
    wire [53:0] squaredResult_uid53_block_rsrvd_fix_im8_cma_s0;
    wire [53:0] squaredResult_uid53_block_rsrvd_fix_im8_cma_qq;
    wire [53:0] squaredResult_uid53_block_rsrvd_fix_im8_cma_q;
    wire squaredResult_uid53_block_rsrvd_fix_im8_cma_ena0;
    wire squaredResult_uid53_block_rsrvd_fix_im8_cma_ena1;
    wire squaredResult_uid53_block_rsrvd_fix_im8_cma_ena2;
    wire multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_reset;
    wire [17:0] multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena2;
    wire multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_reset;
    wire [17:0] multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena2;
    wire multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_reset;
    wire [26:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_a0;
    wire [26:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_c0;
    wire [26:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_a1;
    wire [26:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_c1;
    wire [54:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_s0;
    wire [63:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_s1;
    wire [54:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_qq;
    wire [54:0] multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena2;
    wire sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_reset;
    wire [1:0] sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_a0;
    wire [9:0] sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_c0;
    wire [1:0] sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_a1;
    wire [9:0] sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_c1;
    wire [12:0] sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_s0;
    wire [12:0] sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_qq;
    wire [4:0] sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q;
    wire sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena0;
    wire sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena1;
    wire sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena2;
    wire squaredResult_uid53_block_rsrvd_fix_ma3_cma_reset;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_a0;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_c0;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_a1;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_c1;
    wire [54:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_s0;
    wire [63:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_s1;
    wire [54:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_qq;
    wire [54:0] squaredResult_uid53_block_rsrvd_fix_ma3_cma_q;
    wire squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena0;
    wire squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena1;
    wire squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena2;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_b;
    wire [26:0] squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_c;
    wire [0:0] expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_b;
    wire [51:0] expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c;
    wire [15:0] rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d;
    reg [1:0] redist0_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [1:0] redist1_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d_1_q;
    reg [15:0] redist2_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [15:0] redist3_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [51:0] redist4_expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [4:0] redist5_sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q_1_q;
    reg [17:0] redist6_memoryC5_uid155_sqrtTables_lutmem_r_1_q;
    reg [8:0] redist7_lowRangeB_uid272_pT4_uid183_invPolyEval_b_1_q;
    reg [34:0] redist8_os_uid235_pT3_uid177_invPolyEval_b_1_q;
    reg [50:0] redist9_highBBits_uid191_invPolyEval_b_1_q;
    reg [1:0] redist10_lowRangeB_uid190_invPolyEval_b_1_q;
    reg [0:0] redist11_lowRangeB_uid184_invPolyEval_b_1_q;
    reg [0:0] redist12_lowRangeB_uid178_invPolyEval_b_1_q;
    reg [0:0] redist13_lowRangeB_uid172_invPolyEval_b_1_q;
    reg [0:0] redist14_lowRangeB_uid166_invPolyEval_b_1_q;
    reg [5:0] redist15_r_uid135_lzx_uid30_block_rsrvd_fix_q_1_q;
    reg [0:0] redist16_vCount_uid116_lzx_uid30_block_rsrvd_fix_q_1_q;
    reg [0:0] redist17_vCount_uid110_lzx_uid30_block_rsrvd_fix_q_2_q;
    reg [20:0] redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_q;
    reg [20:0] redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_delay_0;
    reg [0:0] redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_q;
    reg [0:0] redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_delay_0;
    reg [0:0] redist20_negZero_uid97_block_rsrvd_fix_q_35_q;
    reg [1:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_q;
    reg [52:0] redist22_fracRPreCR_uid50_block_rsrvd_fix_b_1_q;
    reg [0:0] redist24_expIncPEOnly_uid49_block_rsrvd_fix_b_6_q;
    reg [44:0] redist25_yForPe_uid47_block_rsrvd_fix_b_4_q;
    reg [44:0] redist25_yForPe_uid47_block_rsrvd_fix_b_4_delay_0;
    reg [44:0] redist26_yForPe_uid47_block_rsrvd_fix_b_8_q;
    reg [44:0] redist26_yForPe_uid47_block_rsrvd_fix_b_8_delay_0;
    reg [7:0] redist29_yAddr_uid46_block_rsrvd_fix_b_4_q;
    reg [7:0] redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_0;
    reg [7:0] redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_1;
    reg [7:0] redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_2;
    reg [7:0] redist30_yAddr_uid46_block_rsrvd_fix_b_8_q;
    reg [7:0] redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_0;
    reg [7:0] redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_1;
    reg [7:0] redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_2;
    reg [7:0] redist31_yAddr_uid46_block_rsrvd_fix_b_13_q;
    reg [7:0] redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_0;
    reg [7:0] redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_1;
    reg [7:0] redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_2;
    reg [7:0] redist32_yAddr_uid46_block_rsrvd_fix_b_18_q;
    reg [7:0] redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_0;
    reg [7:0] redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_1;
    reg [7:0] redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_2;
    reg [7:0] redist33_yAddr_uid46_block_rsrvd_fix_b_23_q;
    reg [7:0] redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_0;
    reg [7:0] redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_1;
    reg [7:0] redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_2;
    reg [0:0] redist35_expOddSelect_uid41_block_rsrvd_fix_q_1_q;
    reg [0:0] redist36_expOddSelect_uid41_block_rsrvd_fix_q_30_q;
    reg [12:0] redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1_q;
    reg [51:0] redist38_fracX_uid32_block_rsrvd_fix_b_3_q;
    reg [51:0] redist38_fracX_uid32_block_rsrvd_fix_b_3_delay_0;
    reg [52:0] redist40_oFracX_uid29_block_rsrvd_fix_q_2_q;
    reg [52:0] redist40_oFracX_uid29_block_rsrvd_fix_q_2_delay_0;
    reg [0:0] redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_q;
    reg [0:0] redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_delay_0;
    reg [51:0] redist42_frac_x_uid12_block_rsrvd_fix_b_1_q;
    reg [0:0] redist43_signX_uid7_block_rsrvd_fix_b_1_q;
    reg [10:0] redist44_expX_uid6_block_rsrvd_fix_b_3_q;
    reg [10:0] redist44_expX_uid6_block_rsrvd_fix_b_3_delay_0;
    reg [10:0] redist44_expX_uid6_block_rsrvd_fix_b_3_delay_1;
    reg [52:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_outputreg0_q;
    wire redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_reset0;
    wire [52:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_ia;
    wire [1:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_aa;
    wire [1:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_ab;
    wire [52:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_iq;
    wire [52:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_q;
    wire [1:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_q;
    (* preserve *) reg [1:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i;
    (* preserve *) reg redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_eq;
    reg [1:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_wraddr_q;
    wire [1:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_last_q;
    wire [0:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmp_q;
    (* dont_merge *) reg [0:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmpReg_q;
    wire [0:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_notEnable_q;
    wire [0:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_nor_q;
    (* dont_merge *) reg [0:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_sticky_ena_q;
    wire [0:0] redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_enaAnd_q;
    reg [44:0] redist25_yForPe_uid47_block_rsrvd_fix_b_4_inputreg0_q;
    reg [44:0] redist25_yForPe_uid47_block_rsrvd_fix_b_4_outputreg0_q;
    reg [44:0] redist26_yForPe_uid47_block_rsrvd_fix_b_8_inputreg0_q;
    reg [44:0] redist26_yForPe_uid47_block_rsrvd_fix_b_8_outputreg0_q;
    reg [44:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_inputreg0_q;
    reg [44:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_outputreg0_q;
    wire redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_reset0;
    wire [44:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_ia;
    wire [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_aa;
    wire [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_ab;
    wire [44:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_iq;
    wire [44:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_q;
    wire [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_q;
    (* preserve *) reg [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_i;
    reg [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_wraddr_q;
    (* dont_merge *) reg [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_cmpReg_q;
    wire [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_notEnable_q;
    wire [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_sticky_ena_q;
    wire [0:0] redist27_yForPe_uid47_block_rsrvd_fix_b_13_enaAnd_q;
    reg [44:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_inputreg0_q;
    reg [44:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_outputreg0_q;
    wire redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_reset0;
    wire [44:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_ia;
    wire [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_aa;
    wire [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_ab;
    wire [44:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_iq;
    wire [44:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_q;
    wire [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_q;
    (* preserve *) reg [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_i;
    reg [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_wraddr_q;
    (* dont_merge *) reg [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_cmpReg_q;
    wire [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_notEnable_q;
    wire [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_nor_q;
    (* dont_merge *) reg [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_sticky_ena_q;
    wire [0:0] redist28_yForPe_uid47_block_rsrvd_fix_b_18_enaAnd_q;
    reg [7:0] redist31_yAddr_uid46_block_rsrvd_fix_b_13_outputreg0_q;
    reg [7:0] redist32_yAddr_uid46_block_rsrvd_fix_b_18_inputreg0_q;
    reg [7:0] redist33_yAddr_uid46_block_rsrvd_fix_b_23_inputreg0_q;
    reg [10:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_outputreg0_q;
    wire redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_reset0;
    wire [10:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_ia;
    wire [4:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_aa;
    wire [4:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_ab;
    wire [10:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_iq;
    wire [10:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_q;
    wire [4:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_q;
    (* preserve *) reg [4:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i;
    (* preserve *) reg redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_eq;
    reg [4:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_wraddr_q;
    wire [5:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_last_q;
    wire [5:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmp_b;
    wire [0:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmp_q;
    (* dont_merge *) reg [0:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmpReg_q;
    wire [0:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_notEnable_q;
    wire [0:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_nor_q;
    (* dont_merge *) reg [0:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_sticky_ena_q;
    wire [0:0] redist34_expRMux_uid42_block_rsrvd_fix_q_31_enaAnd_q;
    reg [51:0] redist38_fracX_uid32_block_rsrvd_fix_b_3_outputreg0_q;
    reg [51:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_inputreg0_q;
    wire redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_reset0;
    wire [51:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_ia;
    wire [4:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_aa;
    wire [4:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_ab;
    wire [51:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_iq;
    wire [51:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_q;
    wire [4:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_q;
    (* preserve *) reg [4:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i;
    (* preserve *) reg redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_eq;
    reg [4:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_wraddr_q;
    wire [5:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_last_q;
    wire [5:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_cmp_b;
    wire [0:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_cmp_q;
    (* dont_merge *) reg [0:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_cmpReg_q;
    wire [0:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_notEnable_q;
    wire [0:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_nor_q;
    (* dont_merge *) reg [0:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_sticky_ena_q;
    wire [0:0] redist39_fracX_uid32_block_rsrvd_fix_b_30_enaAnd_q;
    wire redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_reset0;
    wire [1:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_ia;
    wire [4:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_aa;
    wire [4:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_ab;
    wire [1:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_iq;
    wire [1:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_q;
    wire [4:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_i;
    reg [4:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_wraddr_q;
    wire [5:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_last_q;
    wire [5:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmp_b;
    wire [0:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmpReg_q;
    wire [0:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_notEnable_q;
    wire [0:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_sticky_ena_q;
    wire [0:0] redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    assign signX_uid7_block_rsrvd_fix_b = $unsigned(in_0[63:63]);

    // redist43_signX_uid7_block_rsrvd_fix_b_1(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_signX_uid7_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist43_signX_uid7_block_rsrvd_fix_b_1_q <= $unsigned(signX_uid7_block_rsrvd_fix_b);
        end
    end

    // frac_x_uid12_block_rsrvd_fix(BITSELECT,11)@0
    assign frac_x_uid12_block_rsrvd_fix_b = in_0[51:0];

    // cstZeroWF_uid9_block_rsrvd_fix(CONSTANT,8)
    assign cstZeroWF_uid9_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // fracXIsZero_uid15_block_rsrvd_fix(LOGICAL,14)@0
    assign fracXIsZero_uid15_block_rsrvd_fix_q = $unsigned(cstZeroWF_uid9_block_rsrvd_fix_q == frac_x_uid12_block_rsrvd_fix_b ? 1'b1 : 1'b0);

    // cstAllZWE_uid10_block_rsrvd_fix(CONSTANT,9)
    assign cstAllZWE_uid10_block_rsrvd_fix_q = $unsigned(11'b00000000000);

    // expX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    assign expX_uid6_block_rsrvd_fix_b = in_0[62:52];

    // expXIsZero_uid13_block_rsrvd_fix(LOGICAL,12)@0
    assign expXIsZero_uid13_block_rsrvd_fix_q = $unsigned(expX_uid6_block_rsrvd_fix_b == cstAllZWE_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // excZ_x_uid17_block_rsrvd_fix(LOGICAL,16)@0 + 1
    assign excZ_x_uid17_block_rsrvd_fix_qi = expXIsZero_uid13_block_rsrvd_fix_q & fracXIsZero_uid15_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid17_block_rsrvd_fix_delay ( .xin(excZ_x_uid17_block_rsrvd_fix_qi), .xout(excZ_x_uid17_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // negZero_uid97_block_rsrvd_fix(LOGICAL,96)@1 + 1
    assign negZero_uid97_block_rsrvd_fix_qi = excZ_x_uid17_block_rsrvd_fix_q & redist43_signX_uid7_block_rsrvd_fix_b_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    negZero_uid97_block_rsrvd_fix_delay ( .xin(negZero_uid97_block_rsrvd_fix_qi), .xout(negZero_uid97_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_negZero_uid97_block_rsrvd_fix_q_35(DELAY,421)
    dspba_delay_ver #( .width(1), .depth(34), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_negZero_uid97_block_rsrvd_fix_q_35 ( .xin(negZero_uid97_block_rsrvd_fix_q), .xout(redist20_negZero_uid97_block_rsrvd_fix_q_35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllOWE_uid8_block_rsrvd_fix(CONSTANT,7)
    assign cstAllOWE_uid8_block_rsrvd_fix_q = $unsigned(11'b11111111111);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_notEnable(LOGICAL,504)
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_nor(LOGICAL,505)
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_nor_q = ~ (redist39_fracX_uid32_block_rsrvd_fix_b_30_notEnable_q | redist39_fracX_uid32_block_rsrvd_fix_b_30_sticky_ena_q);

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_last(CONSTANT,501)
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_last_q = $unsigned(6'b010111);

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_cmp(LOGICAL,502)
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_cmp_b = {1'b0, redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_q};
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_cmp_q = $unsigned(redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_last_q == redist39_fracX_uid32_block_rsrvd_fix_b_30_cmp_b ? 1'b1 : 1'b0);

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_cmpReg(REG,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_cmpReg_q <= $unsigned(redist39_fracX_uid32_block_rsrvd_fix_b_30_cmp_q);
        end
    end

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_sticky_ena(REG,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_fracX_uid32_block_rsrvd_fix_b_30_nor_q == 1'b1)
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_sticky_ena_q <= $unsigned(redist39_fracX_uid32_block_rsrvd_fix_b_30_cmpReg_q);
        end
    end

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_enaAnd(LOGICAL,507)
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_enaAnd_q = redist39_fracX_uid32_block_rsrvd_fix_b_30_sticky_ena_q & VCC_q;

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt(COUNTER,499)
    // low=0, high=24, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i <= 5'd0;
            redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i == 5'd23)
            begin
                redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_eq <= 1'b0;
            end
            if (redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_eq == 1'b1)
            begin
                redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i <= $unsigned(redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i) + $unsigned(5'd8);
            end
            else
            begin
                redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i <= $unsigned(redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_q = redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_i[4:0];

    // leftShiftStage2Idx3Rng3_uid355_aligX_uid31_block_rsrvd_fix(BITSELECT,354)@4
    assign leftShiftStage2Idx3Rng3_uid355_aligX_uid31_block_rsrvd_fix_in = leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q[49:0];
    assign leftShiftStage2Idx3Rng3_uid355_aligX_uid31_block_rsrvd_fix_b = leftShiftStage2Idx3Rng3_uid355_aligX_uid31_block_rsrvd_fix_in[49:0];

    // rightBottomX_bottomExtension_uid258_pT4_uid183_invPolyEval(CONSTANT,257)
    assign rightBottomX_bottomExtension_uid258_pT4_uid183_invPolyEval_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid356_aligX_uid31_block_rsrvd_fix(BITJOIN,355)@4
    assign leftShiftStage2Idx3_uid356_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage2Idx3Rng3_uid355_aligX_uid31_block_rsrvd_fix_b, rightBottomX_bottomExtension_uid258_pT4_uid183_invPolyEval_q};

    // leftShiftStage2Idx2Rng2_uid352_aligX_uid31_block_rsrvd_fix(BITSELECT,351)@4
    assign leftShiftStage2Idx2Rng2_uid352_aligX_uid31_block_rsrvd_fix_in = leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q[50:0];
    assign leftShiftStage2Idx2Rng2_uid352_aligX_uid31_block_rsrvd_fix_b = leftShiftStage2Idx2Rng2_uid352_aligX_uid31_block_rsrvd_fix_in[50:0];

    // zs_uid126_lzx_uid30_block_rsrvd_fix(CONSTANT,125)
    assign zs_uid126_lzx_uid30_block_rsrvd_fix_q = $unsigned(2'b00);

    // leftShiftStage2Idx2_uid353_aligX_uid31_block_rsrvd_fix(BITJOIN,352)@4
    assign leftShiftStage2Idx2_uid353_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage2Idx2Rng2_uid352_aligX_uid31_block_rsrvd_fix_b, zs_uid126_lzx_uid30_block_rsrvd_fix_q};

    // leftShiftStage2Idx1Rng1_uid349_aligX_uid31_block_rsrvd_fix(BITSELECT,348)@4
    assign leftShiftStage2Idx1Rng1_uid349_aligX_uid31_block_rsrvd_fix_in = leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q[51:0];
    assign leftShiftStage2Idx1Rng1_uid349_aligX_uid31_block_rsrvd_fix_b = leftShiftStage2Idx1Rng1_uid349_aligX_uid31_block_rsrvd_fix_in[51:0];

    // leftShiftStage2Idx1_uid350_aligX_uid31_block_rsrvd_fix(BITJOIN,349)@4
    assign leftShiftStage2Idx1_uid350_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage2Idx1Rng1_uid349_aligX_uid31_block_rsrvd_fix_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid344_aligX_uid31_block_rsrvd_fix(BITSELECT,343)@4
    assign leftShiftStage1Idx3Rng12_uid344_aligX_uid31_block_rsrvd_fix_in = leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q[40:0];
    assign leftShiftStage1Idx3Rng12_uid344_aligX_uid31_block_rsrvd_fix_b = leftShiftStage1Idx3Rng12_uid344_aligX_uid31_block_rsrvd_fix_in[40:0];

    // leftShiftStage1Idx3Pad12_uid343_aligX_uid31_block_rsrvd_fix(CONSTANT,342)
    assign leftShiftStage1Idx3Pad12_uid343_aligX_uid31_block_rsrvd_fix_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid345_aligX_uid31_block_rsrvd_fix(BITJOIN,344)@4
    assign leftShiftStage1Idx3_uid345_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage1Idx3Rng12_uid344_aligX_uid31_block_rsrvd_fix_b, leftShiftStage1Idx3Pad12_uid343_aligX_uid31_block_rsrvd_fix_q};

    // leftShiftStage1Idx2Rng8_uid341_aligX_uid31_block_rsrvd_fix(BITSELECT,340)@4
    assign leftShiftStage1Idx2Rng8_uid341_aligX_uid31_block_rsrvd_fix_in = leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q[44:0];
    assign leftShiftStage1Idx2Rng8_uid341_aligX_uid31_block_rsrvd_fix_b = leftShiftStage1Idx2Rng8_uid341_aligX_uid31_block_rsrvd_fix_in[44:0];

    // zs_uid114_lzx_uid30_block_rsrvd_fix(CONSTANT,113)
    assign zs_uid114_lzx_uid30_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid342_aligX_uid31_block_rsrvd_fix(BITJOIN,341)@4
    assign leftShiftStage1Idx2_uid342_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage1Idx2Rng8_uid341_aligX_uid31_block_rsrvd_fix_b, zs_uid114_lzx_uid30_block_rsrvd_fix_q};

    // leftShiftStage1Idx1Rng4_uid338_aligX_uid31_block_rsrvd_fix(BITSELECT,337)@4
    assign leftShiftStage1Idx1Rng4_uid338_aligX_uid31_block_rsrvd_fix_in = leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q[48:0];
    assign leftShiftStage1Idx1Rng4_uid338_aligX_uid31_block_rsrvd_fix_b = leftShiftStage1Idx1Rng4_uid338_aligX_uid31_block_rsrvd_fix_in[48:0];

    // zs_uid120_lzx_uid30_block_rsrvd_fix(CONSTANT,119)
    assign zs_uid120_lzx_uid30_block_rsrvd_fix_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid339_aligX_uid31_block_rsrvd_fix(BITJOIN,338)@4
    assign leftShiftStage1Idx1_uid339_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage1Idx1Rng4_uid338_aligX_uid31_block_rsrvd_fix_b, zs_uid120_lzx_uid30_block_rsrvd_fix_q};

    // leftShiftStage0Idx3Rng48_uid333_aligX_uid31_block_rsrvd_fix(BITSELECT,332)@3
    assign leftShiftStage0Idx3Rng48_uid333_aligX_uid31_block_rsrvd_fix_in = redist40_oFracX_uid29_block_rsrvd_fix_q_2_q[4:0];
    assign leftShiftStage0Idx3Rng48_uid333_aligX_uid31_block_rsrvd_fix_b = leftShiftStage0Idx3Rng48_uid333_aligX_uid31_block_rsrvd_fix_in[4:0];

    // leftShiftStage0Idx3Pad48_uid332_aligX_uid31_block_rsrvd_fix(CONSTANT,331)
    assign leftShiftStage0Idx3Pad48_uid332_aligX_uid31_block_rsrvd_fix_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid334_aligX_uid31_block_rsrvd_fix(BITJOIN,333)@3
    assign leftShiftStage0Idx3_uid334_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage0Idx3Rng48_uid333_aligX_uid31_block_rsrvd_fix_b, leftShiftStage0Idx3Pad48_uid332_aligX_uid31_block_rsrvd_fix_q};

    // fracXIsNotZero_uid16_block_rsrvd_fix(LOGICAL,15)@0
    assign fracXIsNotZero_uid16_block_rsrvd_fix_q = ~ (fracXIsZero_uid15_block_rsrvd_fix_q);

    // expXIsMax_uid14_block_rsrvd_fix(LOGICAL,13)@0
    assign expXIsMax_uid14_block_rsrvd_fix_q = $unsigned(expX_uid6_block_rsrvd_fix_b == cstAllOWE_uid8_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // excN_x_uid19_block_rsrvd_fix(LOGICAL,18)@0 + 1
    assign excN_x_uid19_block_rsrvd_fix_qi = expXIsMax_uid14_block_rsrvd_fix_q & fracXIsNotZero_uid16_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid19_block_rsrvd_fix_delay ( .xin(excN_x_uid19_block_rsrvd_fix_qi), .xout(excN_x_uid19_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excI_x_uid18_block_rsrvd_fix(LOGICAL,17)@0 + 1
    assign excI_x_uid18_block_rsrvd_fix_qi = expXIsMax_uid14_block_rsrvd_fix_q & fracXIsZero_uid15_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_x_uid18_block_rsrvd_fix_delay ( .xin(excI_x_uid18_block_rsrvd_fix_qi), .xout(excI_x_uid18_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid20_block_rsrvd_fix(LOGICAL,19)@0
    assign invExpXIsMax_uid20_block_rsrvd_fix_q = ~ (expXIsMax_uid14_block_rsrvd_fix_q);

    // InvExpXIsZero_uid21_block_rsrvd_fix(LOGICAL,20)@0
    assign InvExpXIsZero_uid21_block_rsrvd_fix_q = ~ (expXIsZero_uid13_block_rsrvd_fix_q);

    // excR_x_uid22_block_rsrvd_fix(LOGICAL,21)@0 + 1
    assign excR_x_uid22_block_rsrvd_fix_qi = InvExpXIsZero_uid21_block_rsrvd_fix_q & invExpXIsMax_uid20_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_x_uid22_block_rsrvd_fix_delay ( .xin(excR_x_uid22_block_rsrvd_fix_qi), .xout(excR_x_uid22_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXSubnorm_uid25_block_rsrvd_fix(LOGICAL,24)@1
    assign excXSubnorm_uid25_block_rsrvd_fix_q = ~ (excZ_x_uid17_block_rsrvd_fix_q | excR_x_uid22_block_rsrvd_fix_q | excI_x_uid18_block_rsrvd_fix_q | excN_x_uid19_block_rsrvd_fix_q);

    // invExcXSubnorm_uid28_block_rsrvd_fix(LOGICAL,27)@1
    assign invExcXSubnorm_uid28_block_rsrvd_fix_q = ~ (excXSubnorm_uid25_block_rsrvd_fix_q);

    // redist42_frac_x_uid12_block_rsrvd_fix_b_1(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_frac_x_uid12_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist42_frac_x_uid12_block_rsrvd_fix_b_1_q <= $unsigned(frac_x_uid12_block_rsrvd_fix_b);
        end
    end

    // oFracX_uid29_block_rsrvd_fix(BITJOIN,28)@1
    assign oFracX_uid29_block_rsrvd_fix_q = {invExcXSubnorm_uid28_block_rsrvd_fix_q, redist42_frac_x_uid12_block_rsrvd_fix_b_1_q};

    // vStage_uid104_lzx_uid30_block_rsrvd_fix(BITSELECT,103)@1
    assign vStage_uid104_lzx_uid30_block_rsrvd_fix_in = oFracX_uid29_block_rsrvd_fix_q[20:0];
    assign vStage_uid104_lzx_uid30_block_rsrvd_fix_b = vStage_uid104_lzx_uid30_block_rsrvd_fix_in[20:0];

    // redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_delay_0 <= $unsigned(vStage_uid104_lzx_uid30_block_rsrvd_fix_b);
            redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_q <= redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // zs_uid100_lzx_uid30_block_rsrvd_fix(CONSTANT,99)
    assign zs_uid100_lzx_uid30_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage0Idx2_uid331_aligX_uid31_block_rsrvd_fix(BITJOIN,330)@3
    assign leftShiftStage0Idx2_uid331_aligX_uid31_block_rsrvd_fix_q = {redist18_vStage_uid104_lzx_uid30_block_rsrvd_fix_b_2_q, zs_uid100_lzx_uid30_block_rsrvd_fix_q};

    // leftShiftStage0Idx1Rng16_uid327_aligX_uid31_block_rsrvd_fix(BITSELECT,326)@3
    assign leftShiftStage0Idx1Rng16_uid327_aligX_uid31_block_rsrvd_fix_in = redist40_oFracX_uid29_block_rsrvd_fix_q_2_q[36:0];
    assign leftShiftStage0Idx1Rng16_uid327_aligX_uid31_block_rsrvd_fix_b = leftShiftStage0Idx1Rng16_uid327_aligX_uid31_block_rsrvd_fix_in[36:0];

    // zs_uid108_lzx_uid30_block_rsrvd_fix(CONSTANT,107)
    assign zs_uid108_lzx_uid30_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // leftShiftStage0Idx1_uid328_aligX_uid31_block_rsrvd_fix(BITJOIN,327)@3
    assign leftShiftStage0Idx1_uid328_aligX_uid31_block_rsrvd_fix_q = {leftShiftStage0Idx1Rng16_uid327_aligX_uid31_block_rsrvd_fix_b, zs_uid108_lzx_uid30_block_rsrvd_fix_q};

    // redist40_oFracX_uid29_block_rsrvd_fix_q_2(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_oFracX_uid29_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist40_oFracX_uid29_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist40_oFracX_uid29_block_rsrvd_fix_q_2_delay_0 <= $unsigned(oFracX_uid29_block_rsrvd_fix_q);
            redist40_oFracX_uid29_block_rsrvd_fix_q_2_q <= redist40_oFracX_uid29_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // rVStage_uid101_lzx_uid30_block_rsrvd_fix(BITSELECT,100)@1
    assign rVStage_uid101_lzx_uid30_block_rsrvd_fix_b = oFracX_uid29_block_rsrvd_fix_q[52:21];

    // vCount_uid102_lzx_uid30_block_rsrvd_fix(LOGICAL,101)@1
    assign vCount_uid102_lzx_uid30_block_rsrvd_fix_q = $unsigned(rVStage_uid101_lzx_uid30_block_rsrvd_fix_b == zs_uid100_lzx_uid30_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_delay_0 <= $unsigned(vCount_uid102_lzx_uid30_block_rsrvd_fix_q);
            redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_q <= redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // mO_uid103_lzx_uid30_block_rsrvd_fix(CONSTANT,102)
    assign mO_uid103_lzx_uid30_block_rsrvd_fix_q = $unsigned(11'b11111111111);

    // cStage_uid105_lzx_uid30_block_rsrvd_fix(BITJOIN,104)@1
    assign cStage_uid105_lzx_uid30_block_rsrvd_fix_q = {vStage_uid104_lzx_uid30_block_rsrvd_fix_b, mO_uid103_lzx_uid30_block_rsrvd_fix_q};

    // vStagei_uid107_lzx_uid30_block_rsrvd_fix(MUX,106)@1
    assign vStagei_uid107_lzx_uid30_block_rsrvd_fix_s = vCount_uid102_lzx_uid30_block_rsrvd_fix_q;
    always @(vStagei_uid107_lzx_uid30_block_rsrvd_fix_s or rVStage_uid101_lzx_uid30_block_rsrvd_fix_b or cStage_uid105_lzx_uid30_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid107_lzx_uid30_block_rsrvd_fix_s)
            1'b0 : vStagei_uid107_lzx_uid30_block_rsrvd_fix_q = rVStage_uid101_lzx_uid30_block_rsrvd_fix_b;
            1'b1 : vStagei_uid107_lzx_uid30_block_rsrvd_fix_q = cStage_uid105_lzx_uid30_block_rsrvd_fix_q;
            default : vStagei_uid107_lzx_uid30_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select(BITSELECT,396)@1
    assign rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b = vStagei_uid107_lzx_uid30_block_rsrvd_fix_q[31:16];
    assign rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c = vStagei_uid107_lzx_uid30_block_rsrvd_fix_q[15:0];

    // vCount_uid110_lzx_uid30_block_rsrvd_fix(LOGICAL,109)@1 + 1
    assign vCount_uid110_lzx_uid30_block_rsrvd_fix_qi = $unsigned(rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b == zs_uid108_lzx_uid30_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid110_lzx_uid30_block_rsrvd_fix_delay ( .xin(vCount_uid110_lzx_uid30_block_rsrvd_fix_qi), .xout(vCount_uid110_lzx_uid30_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_vCount_uid110_lzx_uid30_block_rsrvd_fix_q_2(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_vCount_uid110_lzx_uid30_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist17_vCount_uid110_lzx_uid30_block_rsrvd_fix_q_2_q <= $unsigned(vCount_uid110_lzx_uid30_block_rsrvd_fix_q);
        end
    end

    // redist3_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c_1(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist2_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b_1(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid113_lzx_uid30_block_rsrvd_fix(MUX,112)@2
    assign vStagei_uid113_lzx_uid30_block_rsrvd_fix_s = vCount_uid110_lzx_uid30_block_rsrvd_fix_q;
    always @(vStagei_uid113_lzx_uid30_block_rsrvd_fix_s or redist2_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b_1_q or redist3_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid113_lzx_uid30_block_rsrvd_fix_s)
            1'b0 : vStagei_uid113_lzx_uid30_block_rsrvd_fix_q = redist2_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid113_lzx_uid30_block_rsrvd_fix_q = redist3_rVStage_uid109_lzx_uid30_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid113_lzx_uid30_block_rsrvd_fix_q = 16'b0;
        endcase
    end

    // rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select(BITSELECT,397)@2
    assign rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select_b = vStagei_uid113_lzx_uid30_block_rsrvd_fix_q[15:8];
    assign rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select_c = vStagei_uid113_lzx_uid30_block_rsrvd_fix_q[7:0];

    // vCount_uid116_lzx_uid30_block_rsrvd_fix(LOGICAL,115)@2
    assign vCount_uid116_lzx_uid30_block_rsrvd_fix_q = $unsigned(rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select_b == zs_uid114_lzx_uid30_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist16_vCount_uid116_lzx_uid30_block_rsrvd_fix_q_1(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_vCount_uid116_lzx_uid30_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist16_vCount_uid116_lzx_uid30_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid116_lzx_uid30_block_rsrvd_fix_q);
        end
    end

    // vStagei_uid119_lzx_uid30_block_rsrvd_fix(MUX,118)@2 + 1
    assign vStagei_uid119_lzx_uid30_block_rsrvd_fix_s = vCount_uid116_lzx_uid30_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid119_lzx_uid30_block_rsrvd_fix_q <= 8'b0;
        end
        else
        begin
            unique case (vStagei_uid119_lzx_uid30_block_rsrvd_fix_s)
                1'b0 : vStagei_uid119_lzx_uid30_block_rsrvd_fix_q <= rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select_b;
                1'b1 : vStagei_uid119_lzx_uid30_block_rsrvd_fix_q <= rVStage_uid115_lzx_uid30_block_rsrvd_fix_merged_bit_select_c;
                default : vStagei_uid119_lzx_uid30_block_rsrvd_fix_q <= 8'b0;
            endcase
        end
    end

    // rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select(BITSELECT,398)@3
    assign rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_b = vStagei_uid119_lzx_uid30_block_rsrvd_fix_q[7:4];
    assign rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_c = vStagei_uid119_lzx_uid30_block_rsrvd_fix_q[3:0];

    // vCount_uid122_lzx_uid30_block_rsrvd_fix(LOGICAL,121)@3
    assign vCount_uid122_lzx_uid30_block_rsrvd_fix_q = $unsigned(rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_b == zs_uid120_lzx_uid30_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid125_lzx_uid30_block_rsrvd_fix(MUX,124)@3
    assign vStagei_uid125_lzx_uid30_block_rsrvd_fix_s = vCount_uid122_lzx_uid30_block_rsrvd_fix_q;
    always @(vStagei_uid125_lzx_uid30_block_rsrvd_fix_s or rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_b or rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid125_lzx_uid30_block_rsrvd_fix_s)
            1'b0 : vStagei_uid125_lzx_uid30_block_rsrvd_fix_q = rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid125_lzx_uid30_block_rsrvd_fix_q = rVStage_uid121_lzx_uid30_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid125_lzx_uid30_block_rsrvd_fix_q = 4'b0;
        endcase
    end

    // rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select(BITSELECT,399)@3
    assign rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_b = vStagei_uid125_lzx_uid30_block_rsrvd_fix_q[3:2];
    assign rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_c = vStagei_uid125_lzx_uid30_block_rsrvd_fix_q[1:0];

    // vCount_uid128_lzx_uid30_block_rsrvd_fix(LOGICAL,127)@3
    assign vCount_uid128_lzx_uid30_block_rsrvd_fix_q = $unsigned(rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_b == zs_uid126_lzx_uid30_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid131_lzx_uid30_block_rsrvd_fix(MUX,130)@3
    assign vStagei_uid131_lzx_uid30_block_rsrvd_fix_s = vCount_uid128_lzx_uid30_block_rsrvd_fix_q;
    always @(vStagei_uid131_lzx_uid30_block_rsrvd_fix_s or rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_b or rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid131_lzx_uid30_block_rsrvd_fix_s)
            1'b0 : vStagei_uid131_lzx_uid30_block_rsrvd_fix_q = rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid131_lzx_uid30_block_rsrvd_fix_q = rVStage_uid127_lzx_uid30_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid131_lzx_uid30_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // rVStage_uid133_lzx_uid30_block_rsrvd_fix(BITSELECT,132)@3
    assign rVStage_uid133_lzx_uid30_block_rsrvd_fix_b = vStagei_uid131_lzx_uid30_block_rsrvd_fix_q[1:1];

    // vCount_uid134_lzx_uid30_block_rsrvd_fix(LOGICAL,133)@3
    assign vCount_uid134_lzx_uid30_block_rsrvd_fix_q = $unsigned(rVStage_uid133_lzx_uid30_block_rsrvd_fix_b == GND_q ? 1'b1 : 1'b0);

    // r_uid135_lzx_uid30_block_rsrvd_fix(BITJOIN,134)@3
    assign r_uid135_lzx_uid30_block_rsrvd_fix_q = {redist19_vCount_uid102_lzx_uid30_block_rsrvd_fix_q_2_q, redist17_vCount_uid110_lzx_uid30_block_rsrvd_fix_q_2_q, redist16_vCount_uid116_lzx_uid30_block_rsrvd_fix_q_1_q, vCount_uid122_lzx_uid30_block_rsrvd_fix_q, vCount_uid128_lzx_uid30_block_rsrvd_fix_q, vCount_uid134_lzx_uid30_block_rsrvd_fix_q};

    // leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select(BITSELECT,400)@3
    assign leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_b = r_uid135_lzx_uid30_block_rsrvd_fix_q[5:4];
    assign leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c = r_uid135_lzx_uid30_block_rsrvd_fix_q[3:2];
    assign leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d = r_uid135_lzx_uid30_block_rsrvd_fix_q[1:0];

    // leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix(MUX,335)@3 + 1
    assign leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q <= 53'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_s)
                2'b00 : leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q <= redist40_oFracX_uid29_block_rsrvd_fix_q_2_q;
                2'b01 : leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid328_aligX_uid31_block_rsrvd_fix_q;
                2'b10 : leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid331_aligX_uid31_block_rsrvd_fix_q;
                2'b11 : leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid334_aligX_uid31_block_rsrvd_fix_q;
                default : leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q <= 53'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c_1(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix(MUX,346)@4
    assign leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_s = redist0_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_s or leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q or leftShiftStage1Idx1_uid339_aligX_uid31_block_rsrvd_fix_q or leftShiftStage1Idx2_uid342_aligX_uid31_block_rsrvd_fix_q or leftShiftStage1Idx3_uid345_aligX_uid31_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_s)
            2'b00 : leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q = leftShiftStage0_uid336_aligX_uid31_block_rsrvd_fix_q;
            2'b01 : leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q = leftShiftStage1Idx1_uid339_aligX_uid31_block_rsrvd_fix_q;
            2'b10 : leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q = leftShiftStage1Idx2_uid342_aligX_uid31_block_rsrvd_fix_q;
            2'b11 : leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q = leftShiftStage1Idx3_uid345_aligX_uid31_block_rsrvd_fix_q;
            default : leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d_1(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist1_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix(MUX,357)@4
    assign leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_s = redist1_leftShiftStageSel0Dto4_uid335_aligX_uid31_block_rsrvd_fix_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_s or leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q or leftShiftStage2Idx1_uid350_aligX_uid31_block_rsrvd_fix_q or leftShiftStage2Idx2_uid353_aligX_uid31_block_rsrvd_fix_q or leftShiftStage2Idx3_uid356_aligX_uid31_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_s)
            2'b00 : leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_q = leftShiftStage1_uid347_aligX_uid31_block_rsrvd_fix_q;
            2'b01 : leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_q = leftShiftStage2Idx1_uid350_aligX_uid31_block_rsrvd_fix_q;
            2'b10 : leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_q = leftShiftStage2Idx2_uid353_aligX_uid31_block_rsrvd_fix_q;
            2'b11 : leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_q = leftShiftStage2Idx3_uid356_aligX_uid31_block_rsrvd_fix_q;
            default : leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // fracX_uid32_block_rsrvd_fix(BITSELECT,31)@4
    assign fracX_uid32_block_rsrvd_fix_in = leftShiftStage2_uid358_aligX_uid31_block_rsrvd_fix_q[51:0];
    assign fracX_uid32_block_rsrvd_fix_b = fracX_uid32_block_rsrvd_fix_in[51:0];

    // redist38_fracX_uid32_block_rsrvd_fix_b_3(DELAY,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_fracX_uid32_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist38_fracX_uid32_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist38_fracX_uid32_block_rsrvd_fix_b_3_delay_0 <= $unsigned(fracX_uid32_block_rsrvd_fix_b);
            redist38_fracX_uid32_block_rsrvd_fix_b_3_q <= redist38_fracX_uid32_block_rsrvd_fix_b_3_delay_0;
        end
    end

    // redist38_fracX_uid32_block_rsrvd_fix_b_3_outputreg0(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_fracX_uid32_block_rsrvd_fix_b_3_outputreg0_q <= '0;
        end
        else
        begin
            redist38_fracX_uid32_block_rsrvd_fix_b_3_outputreg0_q <= $unsigned(redist38_fracX_uid32_block_rsrvd_fix_b_3_q);
        end
    end

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_inputreg0(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_inputreg0_q <= '0;
        end
        else
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_inputreg0_q <= $unsigned(redist38_fracX_uid32_block_rsrvd_fix_b_3_outputreg0_q);
        end
    end

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_wraddr(REG,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_wraddr_q <= $unsigned(5'b11000);
        end
        else
        begin
            redist39_fracX_uid32_block_rsrvd_fix_b_30_wraddr_q <= $unsigned(redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_q);
        end
    end

    // redist39_fracX_uid32_block_rsrvd_fix_b_30_mem(DUALMEM,498)
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_ia = $unsigned(redist39_fracX_uid32_block_rsrvd_fix_b_30_inputreg0_q);
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_aa = redist39_fracX_uid32_block_rsrvd_fix_b_30_wraddr_q;
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_ab = redist39_fracX_uid32_block_rsrvd_fix_b_30_rdcnt_q;
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(52),
        .widthad_a(5),
        .numwords_a(25),
        .width_b(52),
        .widthad_b(5),
        .numwords_b(25),
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
    ) redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_dmem (
        .clocken1(redist39_fracX_uid32_block_rsrvd_fix_b_30_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_reset0),
        .clock1(clock),
        .address_a(redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_aa),
        .data_a(redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_ab),
        .q_b(redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_iq),
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
    assign redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_q = redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_iq[51:0];

    // oFracX_uid55_block_rsrvd_fix(BITJOIN,54)@34
    assign oFracX_uid55_block_rsrvd_fix_q = {VCC_q, redist39_fracX_uid32_block_rsrvd_fix_b_30_mem_q};

    // oFracXZ_mergedSignalTM_uid58_block_rsrvd_fix(BITJOIN,57)@34
    assign oFracXZ_mergedSignalTM_uid58_block_rsrvd_fix_q = {oFracX_uid55_block_rsrvd_fix_q, GND_q};

    // oFracXSignExt_mergedSignalTM_uid63_block_rsrvd_fix(BITJOIN,62)@34
    assign oFracXSignExt_mergedSignalTM_uid63_block_rsrvd_fix_q = {GND_q, oFracX_uid55_block_rsrvd_fix_q};

    // redist15_r_uid135_lzx_uid30_block_rsrvd_fix_q_1(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_r_uid135_lzx_uid30_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist15_r_uid135_lzx_uid30_block_rsrvd_fix_q_1_q <= $unsigned(r_uid135_lzx_uid30_block_rsrvd_fix_q);
        end
    end

    // redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_delay_0 <= $unsigned(excXSubnorm_uid25_block_rsrvd_fix_q);
            redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_q <= redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // redist44_expX_uid6_block_rsrvd_fix_b_3(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_expX_uid6_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist44_expX_uid6_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist44_expX_uid6_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist44_expX_uid6_block_rsrvd_fix_b_3_delay_0 <= $unsigned(expX_uid6_block_rsrvd_fix_b);
            redist44_expX_uid6_block_rsrvd_fix_b_3_delay_1 <= redist44_expX_uid6_block_rsrvd_fix_b_3_delay_0;
            redist44_expX_uid6_block_rsrvd_fix_b_3_q <= redist44_expX_uid6_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix(ADD,32)@3 + 1
    assign expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_a = {1'b0, redist44_expX_uid6_block_rsrvd_fix_b_3_q};
    assign expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_b = {11'b00000000000, redist41_excXSubnorm_uid25_block_rsrvd_fix_q_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_o <= $unsigned(expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_a) + $unsigned(expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_b);
        end
    end
    assign expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_q = expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_o[11:0];

    // expXPostSubnorm_uid34_block_rsrvd_fix(SUB,33)@4
    assign expXPostSubnorm_uid34_block_rsrvd_fix_a = {1'b0, expXPostSubnormPostSubnormOffset_uid33_block_rsrvd_fix_q};
    assign expXPostSubnorm_uid34_block_rsrvd_fix_b = {7'b0000000, redist15_r_uid135_lzx_uid30_block_rsrvd_fix_q_1_q};
    assign expXPostSubnorm_uid34_block_rsrvd_fix_o = $unsigned(expXPostSubnorm_uid34_block_rsrvd_fix_a) - $unsigned(expXPostSubnorm_uid34_block_rsrvd_fix_b);
    assign expXPostSubnorm_uid34_block_rsrvd_fix_q = expXPostSubnorm_uid34_block_rsrvd_fix_o[12:0];

    // expX0PS_uid40_block_rsrvd_fix(BITSELECT,39)@4
    assign expX0PS_uid40_block_rsrvd_fix_in = $unsigned(expXPostSubnorm_uid34_block_rsrvd_fix_q[0:0]);
    assign expX0PS_uid40_block_rsrvd_fix_b = $unsigned(expX0PS_uid40_block_rsrvd_fix_in[0:0]);

    // expOddSelect_uid41_block_rsrvd_fix(LOGICAL,40)@4
    assign expOddSelect_uid41_block_rsrvd_fix_q = ~ (expX0PS_uid40_block_rsrvd_fix_b);

    // redist35_expOddSelect_uid41_block_rsrvd_fix_q_1(DELAY,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_expOddSelect_uid41_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist35_expOddSelect_uid41_block_rsrvd_fix_q_1_q <= $unsigned(expOddSelect_uid41_block_rsrvd_fix_q);
        end
    end

    // redist36_expOddSelect_uid41_block_rsrvd_fix_q_30(DELAY,437)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_expOddSelect_uid41_block_rsrvd_fix_q_30 ( .xin(redist35_expOddSelect_uid41_block_rsrvd_fix_q_1_q), .xout(redist36_expOddSelect_uid41_block_rsrvd_fix_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normalizedXForComp_uid65_block_rsrvd_fix(MUX,64)@34
    assign normalizedXForComp_uid65_block_rsrvd_fix_s = redist36_expOddSelect_uid41_block_rsrvd_fix_q_30_q;
    always @(normalizedXForComp_uid65_block_rsrvd_fix_s or oFracXSignExt_mergedSignalTM_uid63_block_rsrvd_fix_q or oFracXZ_mergedSignalTM_uid58_block_rsrvd_fix_q)
    begin
        unique case (normalizedXForComp_uid65_block_rsrvd_fix_s)
            1'b0 : normalizedXForComp_uid65_block_rsrvd_fix_q = oFracXSignExt_mergedSignalTM_uid63_block_rsrvd_fix_q;
            1'b1 : normalizedXForComp_uid65_block_rsrvd_fix_q = oFracXZ_mergedSignalTM_uid58_block_rsrvd_fix_q;
            default : normalizedXForComp_uid65_block_rsrvd_fix_q = 54'b0;
        endcase
    end

    // paddingY_uid66_block_rsrvd_fix(CONSTANT,65)
    assign paddingY_uid66_block_rsrvd_fix_q = $unsigned(54'b000000000000000000000000000000000000000000000000000000);

    // updatedY_uid67_block_rsrvd_fix(BITJOIN,66)@34
    assign updatedY_uid67_block_rsrvd_fix_q = {normalizedXForComp_uid65_block_rsrvd_fix_q, paddingY_uid66_block_rsrvd_fix_q};

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_notEnable(LOGICAL,478)
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_nor(LOGICAL,479)
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_nor_q = ~ (redist28_yForPe_uid47_block_rsrvd_fix_b_18_notEnable_q | redist28_yForPe_uid47_block_rsrvd_fix_b_18_sticky_ena_q);

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_cmpReg(REG,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_sticky_ena(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_yForPe_uid47_block_rsrvd_fix_b_18_nor_q == 1'b1)
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_sticky_ena_q <= $unsigned(redist28_yForPe_uid47_block_rsrvd_fix_b_18_cmpReg_q);
        end
    end

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_enaAnd(LOGICAL,481)
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_enaAnd_q = redist28_yForPe_uid47_block_rsrvd_fix_b_18_sticky_ena_q & VCC_q;

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt(COUNTER,475)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_i <= $unsigned(redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_q = redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_i[0:0];

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_notEnable(LOGICAL,468)
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_nor(LOGICAL,469)
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_nor_q = ~ (redist27_yForPe_uid47_block_rsrvd_fix_b_13_notEnable_q | redist27_yForPe_uid47_block_rsrvd_fix_b_13_sticky_ena_q);

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_cmpReg(REG,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_sticky_ena(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_yForPe_uid47_block_rsrvd_fix_b_13_nor_q == 1'b1)
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(redist27_yForPe_uid47_block_rsrvd_fix_b_13_cmpReg_q);
        end
    end

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_enaAnd(LOGICAL,471)
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_enaAnd_q = redist27_yForPe_uid47_block_rsrvd_fix_b_13_sticky_ena_q & VCC_q;

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt(COUNTER,465)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_q = redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_i[0:0];

    // yForPe_uid47_block_rsrvd_fix(BITSELECT,46)@7
    assign yForPe_uid47_block_rsrvd_fix_in = redist38_fracX_uid32_block_rsrvd_fix_b_3_outputreg0_q[44:0];
    assign yForPe_uid47_block_rsrvd_fix_b = yForPe_uid47_block_rsrvd_fix_in[44:0];

    // redist25_yForPe_uid47_block_rsrvd_fix_b_4_inputreg0(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_inputreg0_q <= $unsigned(yForPe_uid47_block_rsrvd_fix_b);
        end
    end

    // redist25_yForPe_uid47_block_rsrvd_fix_b_4(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist25_yForPe_uid47_block_rsrvd_fix_b_4_inputreg0_q);
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_q <= redist25_yForPe_uid47_block_rsrvd_fix_b_4_delay_0;
        end
    end

    // redist25_yForPe_uid47_block_rsrvd_fix_b_4_outputreg0(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist25_yForPe_uid47_block_rsrvd_fix_b_4_outputreg0_q <= $unsigned(redist25_yForPe_uid47_block_rsrvd_fix_b_4_q);
        end
    end

    // redist26_yForPe_uid47_block_rsrvd_fix_b_8_inputreg0(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_inputreg0_q <= '0;
        end
        else
        begin
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_inputreg0_q <= $unsigned(redist25_yForPe_uid47_block_rsrvd_fix_b_4_outputreg0_q);
        end
    end

    // redist26_yForPe_uid47_block_rsrvd_fix_b_8(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_delay_0 <= '0;
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_q <= '0;
        end
        else
        begin
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_delay_0 <= $unsigned(redist26_yForPe_uid47_block_rsrvd_fix_b_8_inputreg0_q);
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_q <= redist26_yForPe_uid47_block_rsrvd_fix_b_8_delay_0;
        end
    end

    // redist26_yForPe_uid47_block_rsrvd_fix_b_8_outputreg0(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_outputreg0_q <= '0;
        end
        else
        begin
            redist26_yForPe_uid47_block_rsrvd_fix_b_8_outputreg0_q <= $unsigned(redist26_yForPe_uid47_block_rsrvd_fix_b_8_q);
        end
    end

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_inputreg0(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_inputreg0_q <= $unsigned(redist26_yForPe_uid47_block_rsrvd_fix_b_8_outputreg0_q);
        end
    end

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_wraddr(REG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_q);
        end
    end

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem(DUALMEM,464)
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_ia = $unsigned(redist27_yForPe_uid47_block_rsrvd_fix_b_13_inputreg0_q);
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_aa = redist27_yForPe_uid47_block_rsrvd_fix_b_13_wraddr_q;
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_ab = redist27_yForPe_uid47_block_rsrvd_fix_b_13_rdcnt_q;
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(45),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(45),
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
    ) redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_dmem (
        .clocken1(redist27_yForPe_uid47_block_rsrvd_fix_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_aa),
        .data_a(redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_ab),
        .q_b(redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_iq),
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
    assign redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_q = redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_iq[44:0];

    // redist27_yForPe_uid47_block_rsrvd_fix_b_13_outputreg0(DELAY,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_outputreg0_q <= '0;
        end
        else
        begin
            redist27_yForPe_uid47_block_rsrvd_fix_b_13_outputreg0_q <= $unsigned(redist27_yForPe_uid47_block_rsrvd_fix_b_13_mem_q);
        end
    end

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_inputreg0(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_inputreg0_q <= '0;
        end
        else
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_inputreg0_q <= $unsigned(redist27_yForPe_uid47_block_rsrvd_fix_b_13_outputreg0_q);
        end
    end

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_wraddr(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_wraddr_q <= $unsigned(redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_q);
        end
    end

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem(DUALMEM,474)
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_ia = $unsigned(redist28_yForPe_uid47_block_rsrvd_fix_b_18_inputreg0_q);
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_aa = redist28_yForPe_uid47_block_rsrvd_fix_b_18_wraddr_q;
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_ab = redist28_yForPe_uid47_block_rsrvd_fix_b_18_rdcnt_q;
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(45),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(45),
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
    ) redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_dmem (
        .clocken1(redist28_yForPe_uid47_block_rsrvd_fix_b_18_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_reset0),
        .clock1(clock),
        .address_a(redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_aa),
        .data_a(redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_ab),
        .q_b(redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_iq),
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
    assign redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_q = redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_iq[44:0];

    // redist28_yForPe_uid47_block_rsrvd_fix_b_18_outputreg0(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_outputreg0_q <= '0;
        end
        else
        begin
            redist28_yForPe_uid47_block_rsrvd_fix_b_18_outputreg0_q <= $unsigned(redist28_yForPe_uid47_block_rsrvd_fix_b_18_mem_q);
        end
    end

    // nx_mergedSignalTM_uid295_pT5_uid189_invPolyEval(BITJOIN,294)@25
    assign nx_mergedSignalTM_uid295_pT5_uid189_invPolyEval_q = {GND_q, redist28_yForPe_uid47_block_rsrvd_fix_b_18_outputreg0_q};

    // topRangeX_uid297_pT5_uid189_invPolyEval(BITSELECT,296)@25
    assign topRangeX_uid297_pT5_uid189_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid295_pT5_uid189_invPolyEval_q[45:19]);

    // yT4_uid182_invPolyEval(BITSELECT,181)@20
    assign yT4_uid182_invPolyEval_b = redist27_yForPe_uid47_block_rsrvd_fix_b_13_outputreg0_q[44:4];

    // nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval(BITJOIN,248)@20
    assign nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval_q = {GND_q, yT4_uid182_invPolyEval_b};

    // rightBottomX_uid263_pT4_uid183_invPolyEval(BITSELECT,262)@20
    assign rightBottomX_uid263_pT4_uid183_invPolyEval_in = nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval_q[23:0];
    assign rightBottomX_uid263_pT4_uid183_invPolyEval_b = rightBottomX_uid263_pT4_uid183_invPolyEval_in[23:22];

    // yT3_uid176_invPolyEval(BITSELECT,175)@15
    assign yT3_uid176_invPolyEval_b = redist26_yForPe_uid47_block_rsrvd_fix_b_8_outputreg0_q[44:11];

    // nx_mergedSignalTM_uid213_pT3_uid177_invPolyEval(BITJOIN,212)@15
    assign nx_mergedSignalTM_uid213_pT3_uid177_invPolyEval_q = {GND_q, yT3_uid176_invPolyEval_b};

    // topRangeX_uid215_pT3_uid177_invPolyEval(BITSELECT,214)@15
    assign topRangeX_uid215_pT3_uid177_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid213_pT3_uid177_invPolyEval_q[34:17]);

    // addrFull_uid44_block_rsrvd_fix(BITJOIN,43)@4
    assign addrFull_uid44_block_rsrvd_fix_q = {expOddSelect_uid41_block_rsrvd_fix_q, fracX_uid32_block_rsrvd_fix_b};

    // yAddr_uid46_block_rsrvd_fix(BITSELECT,45)@4
    assign yAddr_uid46_block_rsrvd_fix_b = addrFull_uid44_block_rsrvd_fix_q[52:45];

    // memoryC5_uid155_sqrtTables_lutmem(DUALMEM,381)@4 + 2
    // in j@20000000
    assign memoryC5_uid155_sqrtTables_lutmem_aa = yAddr_uid46_block_rsrvd_fix_b;
    assign memoryC5_uid155_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(18),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z55_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC5_uid155_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC5_uid155_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC5_uid155_sqrtTables_lutmem_aa),
        .q_a(memoryC5_uid155_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC5_uid155_sqrtTables_lutmem_r = memoryC5_uid155_sqrtTables_lutmem_ir[17:0];

    // redist6_memoryC5_uid155_sqrtTables_lutmem_r_1(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_memoryC5_uid155_sqrtTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist6_memoryC5_uid155_sqrtTables_lutmem_r_1_q <= $unsigned(memoryC5_uid155_sqrtTables_lutmem_r);
        end
    end

    // yT1_uid164_invPolyEval(BITSELECT,163)@7
    assign yT1_uid164_invPolyEval_b = yForPe_uid47_block_rsrvd_fix_b[44:27];

    // prodXY_uid195_pT1_uid165_invPolyEval_cma(CHAINMULTADD,382)@7 + 3
    assign prodXY_uid195_pT1_uid165_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid195_pT1_uid165_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid195_pT1_uid165_invPolyEval_cma_ena1 = prodXY_uid195_pT1_uid165_invPolyEval_cma_ena0;
    assign prodXY_uid195_pT1_uid165_invPolyEval_cma_ena2 = prodXY_uid195_pT1_uid165_invPolyEval_cma_ena0;

    assign prodXY_uid195_pT1_uid165_invPolyEval_cma_a0 = yT1_uid164_invPolyEval_b;
    assign prodXY_uid195_pT1_uid165_invPolyEval_cma_c0 = $unsigned(redist6_memoryC5_uid155_sqrtTables_lutmem_r_1_q);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) prodXY_uid195_pT1_uid165_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid195_pT1_uid165_invPolyEval_cma_ena2, prodXY_uid195_pT1_uid165_invPolyEval_cma_ena1, prodXY_uid195_pT1_uid165_invPolyEval_cma_ena0 }),
        .aclr({ prodXY_uid195_pT1_uid165_invPolyEval_cma_reset, prodXY_uid195_pT1_uid165_invPolyEval_cma_reset }),
        .ay(prodXY_uid195_pT1_uid165_invPolyEval_cma_a0),
        .ax(prodXY_uid195_pT1_uid165_invPolyEval_cma_c0),
        .resulta(prodXY_uid195_pT1_uid165_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid195_pT1_uid165_invPolyEval_cma_delay ( .xin(prodXY_uid195_pT1_uid165_invPolyEval_cma_s0), .xout(prodXY_uid195_pT1_uid165_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid195_pT1_uid165_invPolyEval_cma_q = $unsigned(prodXY_uid195_pT1_uid165_invPolyEval_cma_qq[35:0]);

    // osig_uid196_pT1_uid165_invPolyEval(BITSELECT,195)@10
    assign osig_uid196_pT1_uid165_invPolyEval_b = $unsigned(prodXY_uid195_pT1_uid165_invPolyEval_cma_q[35:17]);

    // highBBits_uid167_invPolyEval(BITSELECT,166)@10
    assign highBBits_uid167_invPolyEval_b = $unsigned(osig_uid196_pT1_uid165_invPolyEval_b[18:1]);

    // redist29_yAddr_uid46_block_rsrvd_fix_b_4(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_2 <= '0;
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_0 <= $unsigned(yAddr_uid46_block_rsrvd_fix_b);
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_1 <= redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_0;
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_2 <= redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_1;
            redist29_yAddr_uid46_block_rsrvd_fix_b_4_q <= redist29_yAddr_uid46_block_rsrvd_fix_b_4_delay_2;
        end
    end

    // memoryC4_uid152_sqrtTables_lutmem(DUALMEM,380)@8 + 2
    // in j@20000000
    assign memoryC4_uid152_sqrtTables_lutmem_aa = redist29_yAddr_uid46_block_rsrvd_fix_b_4_q;
    assign memoryC4_uid152_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(25),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z52_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC4_uid152_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC4_uid152_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC4_uid152_sqrtTables_lutmem_aa),
        .q_a(memoryC4_uid152_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC4_uid152_sqrtTables_lutmem_r = memoryC4_uid152_sqrtTables_lutmem_ir[24:0];

    // s1sumAHighB_uid168_invPolyEval(ADD,167)@10 + 1
    assign s1sumAHighB_uid168_invPolyEval_a = $unsigned({{1{memoryC4_uid152_sqrtTables_lutmem_r[24]}}, memoryC4_uid152_sqrtTables_lutmem_r});
    assign s1sumAHighB_uid168_invPolyEval_b = $unsigned({{8{highBBits_uid167_invPolyEval_b[17]}}, highBBits_uid167_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid168_invPolyEval_o <= 26'b0;
        end
        else
        begin
            s1sumAHighB_uid168_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid168_invPolyEval_a) + $signed(s1sumAHighB_uid168_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid168_invPolyEval_q = s1sumAHighB_uid168_invPolyEval_o[25:0];

    // lowRangeB_uid166_invPolyEval(BITSELECT,165)@10
    assign lowRangeB_uid166_invPolyEval_in = osig_uid196_pT1_uid165_invPolyEval_b[0:0];
    assign lowRangeB_uid166_invPolyEval_b = lowRangeB_uid166_invPolyEval_in[0:0];

    // redist14_lowRangeB_uid166_invPolyEval_b_1(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_lowRangeB_uid166_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist14_lowRangeB_uid166_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid166_invPolyEval_b);
        end
    end

    // s1_uid169_invPolyEval(BITJOIN,168)@11
    assign s1_uid169_invPolyEval_q = {s1sumAHighB_uid168_invPolyEval_q, redist14_lowRangeB_uid166_invPolyEval_b_1_q};

    // yT2_uid170_invPolyEval(BITSELECT,169)@11
    assign yT2_uid170_invPolyEval_b = redist25_yForPe_uid47_block_rsrvd_fix_b_4_outputreg0_q[44:20];

    // prodXY_uid198_pT2_uid171_invPolyEval_cma(CHAINMULTADD,383)@11 + 3
    assign prodXY_uid198_pT2_uid171_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid198_pT2_uid171_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid198_pT2_uid171_invPolyEval_cma_ena1 = prodXY_uid198_pT2_uid171_invPolyEval_cma_ena0;
    assign prodXY_uid198_pT2_uid171_invPolyEval_cma_ena2 = prodXY_uid198_pT2_uid171_invPolyEval_cma_ena0;

    assign prodXY_uid198_pT2_uid171_invPolyEval_cma_a0 = yT2_uid170_invPolyEval_b;
    assign prodXY_uid198_pT2_uid171_invPolyEval_cma_c0 = $unsigned(s1_uid169_invPolyEval_q);
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(25),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(52)
    ) prodXY_uid198_pT2_uid171_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid198_pT2_uid171_invPolyEval_cma_ena2, prodXY_uid198_pT2_uid171_invPolyEval_cma_ena1, prodXY_uid198_pT2_uid171_invPolyEval_cma_ena0 }),
        .aclr({ prodXY_uid198_pT2_uid171_invPolyEval_cma_reset, prodXY_uid198_pT2_uid171_invPolyEval_cma_reset }),
        .ay(prodXY_uid198_pT2_uid171_invPolyEval_cma_a0),
        .ax(prodXY_uid198_pT2_uid171_invPolyEval_cma_c0),
        .resulta(prodXY_uid198_pT2_uid171_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(52), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid198_pT2_uid171_invPolyEval_cma_delay ( .xin(prodXY_uid198_pT2_uid171_invPolyEval_cma_s0), .xout(prodXY_uid198_pT2_uid171_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid198_pT2_uid171_invPolyEval_cma_q = $unsigned(prodXY_uid198_pT2_uid171_invPolyEval_cma_qq[51:0]);

    // osig_uid199_pT2_uid171_invPolyEval(BITSELECT,198)@14
    assign osig_uid199_pT2_uid171_invPolyEval_b = $unsigned(prodXY_uid198_pT2_uid171_invPolyEval_cma_q[51:24]);

    // highBBits_uid173_invPolyEval(BITSELECT,172)@14
    assign highBBits_uid173_invPolyEval_b = $unsigned(osig_uid199_pT2_uid171_invPolyEval_b[27:1]);

    // redist30_yAddr_uid46_block_rsrvd_fix_b_8(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_0 <= '0;
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_1 <= '0;
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_2 <= '0;
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_q <= '0;
        end
        else
        begin
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_0 <= $unsigned(redist29_yAddr_uid46_block_rsrvd_fix_b_4_q);
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_1 <= redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_0;
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_2 <= redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_1;
            redist30_yAddr_uid46_block_rsrvd_fix_b_8_q <= redist30_yAddr_uid46_block_rsrvd_fix_b_8_delay_2;
        end
    end

    // memoryC3_uid149_sqrtTables_lutmem(DUALMEM,379)@12 + 2
    // in j@20000000
    assign memoryC3_uid149_sqrtTables_lutmem_aa = redist30_yAddr_uid46_block_rsrvd_fix_b_8_q;
    assign memoryC3_uid149_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(34),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z49_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC3_uid149_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC3_uid149_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC3_uid149_sqrtTables_lutmem_aa),
        .q_a(memoryC3_uid149_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC3_uid149_sqrtTables_lutmem_r = memoryC3_uid149_sqrtTables_lutmem_ir[33:0];

    // s2sumAHighB_uid174_invPolyEval(ADD,173)@14 + 1
    assign s2sumAHighB_uid174_invPolyEval_a = $unsigned({{1{memoryC3_uid149_sqrtTables_lutmem_r[33]}}, memoryC3_uid149_sqrtTables_lutmem_r});
    assign s2sumAHighB_uid174_invPolyEval_b = $unsigned({{8{highBBits_uid173_invPolyEval_b[26]}}, highBBits_uid173_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s2sumAHighB_uid174_invPolyEval_o <= 35'b0;
        end
        else
        begin
            s2sumAHighB_uid174_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid174_invPolyEval_a) + $signed(s2sumAHighB_uid174_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid174_invPolyEval_q = s2sumAHighB_uid174_invPolyEval_o[34:0];

    // lowRangeB_uid172_invPolyEval(BITSELECT,171)@14
    assign lowRangeB_uid172_invPolyEval_in = osig_uid199_pT2_uid171_invPolyEval_b[0:0];
    assign lowRangeB_uid172_invPolyEval_b = lowRangeB_uid172_invPolyEval_in[0:0];

    // redist13_lowRangeB_uid172_invPolyEval_b_1(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_lowRangeB_uid172_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist13_lowRangeB_uid172_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid172_invPolyEval_b);
        end
    end

    // s2_uid175_invPolyEval(BITJOIN,174)@15
    assign s2_uid175_invPolyEval_q = {s2sumAHighB_uid174_invPolyEval_q, redist13_lowRangeB_uid172_invPolyEval_b_1_q};

    // aboveLeftY_uid218_pT3_uid177_invPolyEval(BITSELECT,217)@15
    assign aboveLeftY_uid218_pT3_uid177_invPolyEval_in = s2_uid175_invPolyEval_q[17:0];
    assign aboveLeftY_uid218_pT3_uid177_invPolyEval_b = aboveLeftY_uid218_pT3_uid177_invPolyEval_in[17:0];

    // topRangeY_uid216_pT3_uid177_invPolyEval(BITSELECT,215)@15
    assign topRangeY_uid216_pT3_uid177_invPolyEval_b = $unsigned(s2_uid175_invPolyEval_q[35:18]);

    // rightBottomX_bottomRange_uid220_pT3_uid177_invPolyEval(BITSELECT,219)@15
    assign rightBottomX_bottomRange_uid220_pT3_uid177_invPolyEval_in = $unsigned(nx_mergedSignalTM_uid213_pT3_uid177_invPolyEval_q[16:0]);
    assign rightBottomX_bottomRange_uid220_pT3_uid177_invPolyEval_b = $unsigned(rightBottomX_bottomRange_uid220_pT3_uid177_invPolyEval_in[16:0]);

    // rightBottomX_mergedSignalTM_uid221_pT3_uid177_invPolyEval(BITJOIN,220)@15
    assign rightBottomX_mergedSignalTM_uid221_pT3_uid177_invPolyEval_q = {rightBottomX_bottomRange_uid220_pT3_uid177_invPolyEval_b, GND_q};

    // multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma(CHAINMULTADD,389)@15 + 3
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena1 = multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena2 = multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid221_pT3_uid177_invPolyEval_q;
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_c0 = $unsigned(topRangeY_uid216_pT3_uid177_invPolyEval_b);
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_a1 = aboveLeftY_uid218_pT3_uid177_invPolyEval_b;
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_c1 = $unsigned(topRangeX_uid215_pT3_uid177_invPolyEval_b);
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .by_clock("0"),
        .by_width(18),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(37)
    ) multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena2, multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena1, multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_reset, multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(37), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_qq[36:0]);

    // highBBits_uid232_pT3_uid177_invPolyEval(BITSELECT,231)@18
    assign highBBits_uid232_pT3_uid177_invPolyEval_b = $unsigned(multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_q[36:14]);

    // sm0_uid226_pT3_uid177_invPolyEval_cma(CHAINMULTADD,384)@15 + 3
    assign sm0_uid226_pT3_uid177_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid226_pT3_uid177_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid226_pT3_uid177_invPolyEval_cma_ena1 = sm0_uid226_pT3_uid177_invPolyEval_cma_ena0;
    assign sm0_uid226_pT3_uid177_invPolyEval_cma_ena2 = sm0_uid226_pT3_uid177_invPolyEval_cma_ena0;

    assign sm0_uid226_pT3_uid177_invPolyEval_cma_a0 = $unsigned(topRangeX_uid215_pT3_uid177_invPolyEval_b);
    assign sm0_uid226_pT3_uid177_invPolyEval_cma_c0 = $unsigned(topRangeY_uid216_pT3_uid177_invPolyEval_b);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) sm0_uid226_pT3_uid177_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid226_pT3_uid177_invPolyEval_cma_ena2, sm0_uid226_pT3_uid177_invPolyEval_cma_ena1, sm0_uid226_pT3_uid177_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid226_pT3_uid177_invPolyEval_cma_reset, sm0_uid226_pT3_uid177_invPolyEval_cma_reset }),
        .ay(sm0_uid226_pT3_uid177_invPolyEval_cma_a0),
        .ax(sm0_uid226_pT3_uid177_invPolyEval_cma_c0),
        .resulta(sm0_uid226_pT3_uid177_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid226_pT3_uid177_invPolyEval_cma_delay ( .xin(sm0_uid226_pT3_uid177_invPolyEval_cma_s0), .xout(sm0_uid226_pT3_uid177_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid226_pT3_uid177_invPolyEval_cma_q = $unsigned(sm0_uid226_pT3_uid177_invPolyEval_cma_qq[35:0]);

    // aboveLeftY_uid225_pT3_uid177_invPolyEval(BITSELECT,224)@15
    assign aboveLeftY_uid225_pT3_uid177_invPolyEval_in = s2_uid175_invPolyEval_q[17:0];
    assign aboveLeftY_uid225_pT3_uid177_invPolyEval_b = aboveLeftY_uid225_pT3_uid177_invPolyEval_in[17:16];

    // aboveLeftX_uid224_pT3_uid177_invPolyEval(BITSELECT,223)@15
    assign aboveLeftX_uid224_pT3_uid177_invPolyEval_in = nx_mergedSignalTM_uid213_pT3_uid177_invPolyEval_q[16:0];
    assign aboveLeftX_uid224_pT3_uid177_invPolyEval_b = aboveLeftX_uid224_pT3_uid177_invPolyEval_in[16:15];

    // sm0_uid229_pT3_uid177_invPolyEval(MULT,228)@15 + 3
    assign sm0_uid229_pT3_uid177_invPolyEval_pr = $unsigned(sm0_uid229_pT3_uid177_invPolyEval_a1) * $unsigned(sm0_uid229_pT3_uid177_invPolyEval_b1);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid229_pT3_uid177_invPolyEval_a0 <= 2'b0;
            sm0_uid229_pT3_uid177_invPolyEval_b0 <= 2'b0;
            sm0_uid229_pT3_uid177_invPolyEval_a1 <= 2'b0;
            sm0_uid229_pT3_uid177_invPolyEval_b1 <= 2'b0;
            sm0_uid229_pT3_uid177_invPolyEval_s1 <= 4'b0;
        end
        else
        begin
            sm0_uid229_pT3_uid177_invPolyEval_a0 <= aboveLeftX_uid224_pT3_uid177_invPolyEval_b;
            sm0_uid229_pT3_uid177_invPolyEval_b0 <= aboveLeftY_uid225_pT3_uid177_invPolyEval_b;
            sm0_uid229_pT3_uid177_invPolyEval_a1 <= sm0_uid229_pT3_uid177_invPolyEval_a0;
            sm0_uid229_pT3_uid177_invPolyEval_b1 <= sm0_uid229_pT3_uid177_invPolyEval_b0;
            sm0_uid229_pT3_uid177_invPolyEval_s1 <= sm0_uid229_pT3_uid177_invPolyEval_pr;
        end
    end
    assign sm0_uid229_pT3_uid177_invPolyEval_q = sm0_uid229_pT3_uid177_invPolyEval_s1;

    // sumAb_uid230_pT3_uid177_invPolyEval(BITJOIN,229)@18
    assign sumAb_uid230_pT3_uid177_invPolyEval_q = {sm0_uid226_pT3_uid177_invPolyEval_cma_q, sm0_uid229_pT3_uid177_invPolyEval_q};

    // lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval(ADD,232)@18
    assign lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_a = $unsigned({{1{sumAb_uid230_pT3_uid177_invPolyEval_q[39]}}, sumAb_uid230_pT3_uid177_invPolyEval_q});
    assign lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_b = $unsigned({{18{highBBits_uid232_pT3_uid177_invPolyEval_b[22]}}, highBBits_uid232_pT3_uid177_invPolyEval_b});
    assign lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_b));
    assign lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_q = lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_o[40:0];

    // lowRangeB_uid231_pT3_uid177_invPolyEval(BITSELECT,230)@18
    assign lowRangeB_uid231_pT3_uid177_invPolyEval_in = multSumOfTwoTS_uid227_pT3_uid177_invPolyEval_cma_q[13:0];
    assign lowRangeB_uid231_pT3_uid177_invPolyEval_b = lowRangeB_uid231_pT3_uid177_invPolyEval_in[13:0];

    // lev1_a0_uid234_pT3_uid177_invPolyEval(BITJOIN,233)@18
    assign lev1_a0_uid234_pT3_uid177_invPolyEval_q = {lev1_a0sumAHighB_uid233_pT3_uid177_invPolyEval_q, lowRangeB_uid231_pT3_uid177_invPolyEval_b};

    // os_uid235_pT3_uid177_invPolyEval(BITSELECT,234)@18
    assign os_uid235_pT3_uid177_invPolyEval_in = $unsigned(lev1_a0_uid234_pT3_uid177_invPolyEval_q[52:0]);
    assign os_uid235_pT3_uid177_invPolyEval_b = $unsigned(os_uid235_pT3_uid177_invPolyEval_in[52:18]);

    // redist8_os_uid235_pT3_uid177_invPolyEval_b_1(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_os_uid235_pT3_uid177_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist8_os_uid235_pT3_uid177_invPolyEval_b_1_q <= $unsigned(os_uid235_pT3_uid177_invPolyEval_b);
        end
    end

    // highBBits_uid179_invPolyEval(BITSELECT,178)@19
    assign highBBits_uid179_invPolyEval_b = $unsigned(redist8_os_uid235_pT3_uid177_invPolyEval_b_1_q[34:1]);

    // memoryC2_uid146_sqrtTables_q_const(CONSTANT,321)
    assign memoryC2_uid146_sqrtTables_q_const_q = $unsigned(1'b1);

    // redist31_yAddr_uid46_block_rsrvd_fix_b_13(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_0 <= '0;
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_1 <= '0;
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_2 <= '0;
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_q <= '0;
        end
        else
        begin
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_0 <= $unsigned(redist30_yAddr_uid46_block_rsrvd_fix_b_8_q);
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_1 <= redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_0;
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_2 <= redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_1;
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_q <= redist31_yAddr_uid46_block_rsrvd_fix_b_13_delay_2;
        end
    end

    // redist31_yAddr_uid46_block_rsrvd_fix_b_13_outputreg0(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_outputreg0_q <= '0;
        end
        else
        begin
            redist31_yAddr_uid46_block_rsrvd_fix_b_13_outputreg0_q <= $unsigned(redist31_yAddr_uid46_block_rsrvd_fix_b_13_q);
        end
    end

    // memoryC2_uid145_sqrtTables_lutmem(DUALMEM,378)@17 + 2
    // in j@20000000
    assign memoryC2_uid145_sqrtTables_lutmem_aa = redist31_yAddr_uid46_block_rsrvd_fix_b_13_outputreg0_q;
    assign memoryC2_uid145_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(40),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z45_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC2_uid145_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid145_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid145_sqrtTables_lutmem_aa),
        .q_a(memoryC2_uid145_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC2_uid145_sqrtTables_lutmem_r = memoryC2_uid145_sqrtTables_lutmem_ir[39:0];

    // os_uid147_sqrtTables(BITJOIN,146)@19
    assign os_uid147_sqrtTables_q = {memoryC2_uid146_sqrtTables_q_const_q, memoryC2_uid145_sqrtTables_lutmem_r};

    // s3sumAHighB_uid180_invPolyEval(ADD,179)@19 + 1
    assign s3sumAHighB_uid180_invPolyEval_a = $unsigned({{1{os_uid147_sqrtTables_q[40]}}, os_uid147_sqrtTables_q});
    assign s3sumAHighB_uid180_invPolyEval_b = $unsigned({{8{highBBits_uid179_invPolyEval_b[33]}}, highBBits_uid179_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s3sumAHighB_uid180_invPolyEval_o <= 42'b0;
        end
        else
        begin
            s3sumAHighB_uid180_invPolyEval_o <= $unsigned($signed(s3sumAHighB_uid180_invPolyEval_a) + $signed(s3sumAHighB_uid180_invPolyEval_b));
        end
    end
    assign s3sumAHighB_uid180_invPolyEval_q = s3sumAHighB_uid180_invPolyEval_o[41:0];

    // lowRangeB_uid178_invPolyEval(BITSELECT,177)@19
    assign lowRangeB_uid178_invPolyEval_in = redist8_os_uid235_pT3_uid177_invPolyEval_b_1_q[0:0];
    assign lowRangeB_uid178_invPolyEval_b = lowRangeB_uid178_invPolyEval_in[0:0];

    // redist12_lowRangeB_uid178_invPolyEval_b_1(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_lowRangeB_uid178_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist12_lowRangeB_uid178_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid178_invPolyEval_b);
        end
    end

    // s3_uid181_invPolyEval(BITJOIN,180)@20
    assign s3_uid181_invPolyEval_q = {s3sumAHighB_uid180_invPolyEval_q, redist12_lowRangeB_uid178_invPolyEval_b_1_q};

    // rightBottomY_uid264_pT4_uid183_invPolyEval(BITSELECT,263)@20
    assign rightBottomY_uid264_pT4_uid183_invPolyEval_in = s3_uid181_invPolyEval_q[15:0];
    assign rightBottomY_uid264_pT4_uid183_invPolyEval_b = rightBottomY_uid264_pT4_uid183_invPolyEval_in[15:14];

    // aboveLeftX_uid265_pT4_uid183_invPolyEval(BITSELECT,264)@20
    assign aboveLeftX_uid265_pT4_uid183_invPolyEval_in = nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval_q[14:0];
    assign aboveLeftX_uid265_pT4_uid183_invPolyEval_b = aboveLeftX_uid265_pT4_uid183_invPolyEval_in[14:13];

    // aboveLeftY_uid266_pT4_uid183_invPolyEval(BITSELECT,265)@20
    assign aboveLeftY_uid266_pT4_uid183_invPolyEval_in = s3_uid181_invPolyEval_q[24:0];
    assign aboveLeftY_uid266_pT4_uid183_invPolyEval_b = aboveLeftY_uid266_pT4_uid183_invPolyEval_in[24:23];

    // sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma(CHAINMULTADD,392)@20 + 3
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_reset = ~ (resetn);
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena0 = 1'b1;
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena1 = sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena0;
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena2 = sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena0;

    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_a0 = aboveLeftY_uid266_pT4_uid183_invPolyEval_b;
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_c0 = {8'b00000000, aboveLeftX_uid265_pT4_uid183_invPolyEval_b[1:0]};
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_a1 = rightBottomY_uid264_pT4_uid183_invPolyEval_b;
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_c1 = {8'b00000000, rightBottomX_uid263_pT4_uid183_invPolyEval_b[1:0]};
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(2),
        .by_clock("0"),
        .by_width(2),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(10),
        .bx_width(10),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(13)
    ) sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena2, sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena1, sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_ena0 }),
        .aclr({ sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_reset, sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_reset }),
        .ay(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_a1),
        .by(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_a0),
        .ax(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_c1),
        .bx(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_c0),
        .resulta(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(13), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_delay ( .xin(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_s0), .xout(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q = $unsigned(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_qq[4:0]);

    // redist5_sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q_1(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q_1_q <= '0;
        end
        else
        begin
            redist5_sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q_1_q <= $unsigned(sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q);
        end
    end

    // aboveLeftX_uid253_pT4_uid183_invPolyEval(BITSELECT,252)@20
    assign aboveLeftX_uid253_pT4_uid183_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval_q[41:24]);

    // aboveLeftY_bottomRange_uid255_pT4_uid183_invPolyEval(BITSELECT,254)@20
    assign aboveLeftY_bottomRange_uid255_pT4_uid183_invPolyEval_in = $unsigned(s3_uid181_invPolyEval_q[15:0]);
    assign aboveLeftY_bottomRange_uid255_pT4_uid183_invPolyEval_b = $unsigned(aboveLeftY_bottomRange_uid255_pT4_uid183_invPolyEval_in[15:0]);

    // aboveLeftY_mergedSignalTM_uid256_pT4_uid183_invPolyEval(BITJOIN,255)@20
    assign aboveLeftY_mergedSignalTM_uid256_pT4_uid183_invPolyEval_q = {aboveLeftY_bottomRange_uid255_pT4_uid183_invPolyEval_b, zs_uid126_lzx_uid30_block_rsrvd_fix_q};

    // rightBottomY_uid262_pT4_uid183_invPolyEval(BITSELECT,261)@20
    assign rightBottomY_uid262_pT4_uid183_invPolyEval_b = $unsigned(s3_uid181_invPolyEval_q[42:25]);

    // rightBottomX_bottomRange_uid259_pT4_uid183_invPolyEval(BITSELECT,258)@20
    assign rightBottomX_bottomRange_uid259_pT4_uid183_invPolyEval_in = $unsigned(nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval_q[14:0]);
    assign rightBottomX_bottomRange_uid259_pT4_uid183_invPolyEval_b = $unsigned(rightBottomX_bottomRange_uid259_pT4_uid183_invPolyEval_in[14:0]);

    // rightBottomX_mergedSignalTM_uid260_pT4_uid183_invPolyEval(BITJOIN,259)@20
    assign rightBottomX_mergedSignalTM_uid260_pT4_uid183_invPolyEval_q = {rightBottomX_bottomRange_uid259_pT4_uid183_invPolyEval_b, rightBottomX_bottomExtension_uid258_pT4_uid183_invPolyEval_q};

    // multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma(CHAINMULTADD,390)@20 + 3
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena1 = multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena2 = multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid260_pT4_uid183_invPolyEval_q;
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_c0 = $unsigned(rightBottomY_uid262_pT4_uid183_invPolyEval_b);
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_a1 = aboveLeftY_mergedSignalTM_uid256_pT4_uid183_invPolyEval_q;
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_c1 = $unsigned(aboveLeftX_uid253_pT4_uid183_invPolyEval_b);
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .by_clock("0"),
        .by_width(18),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(37)
    ) multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena2, multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena1, multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_reset, multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(37), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_qq[36:0]);

    // highBBits_uid273_pT4_uid183_invPolyEval(BITSELECT,272)@23
    assign highBBits_uid273_pT4_uid183_invPolyEval_b = $unsigned(multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_q[36:9]);

    // topRangeY_uid252_pT4_uid183_invPolyEval(BITSELECT,251)@20
    assign topRangeY_uid252_pT4_uid183_invPolyEval_b = $unsigned(s3_uid181_invPolyEval_q[42:16]);

    // topRangeX_uid251_pT4_uid183_invPolyEval(BITSELECT,250)@20
    assign topRangeX_uid251_pT4_uid183_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid249_pT4_uid183_invPolyEval_q[41:15]);

    // sm0_uid267_pT4_uid183_invPolyEval_cma(CHAINMULTADD,385)@20 + 3
    assign sm0_uid267_pT4_uid183_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid267_pT4_uid183_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid267_pT4_uid183_invPolyEval_cma_ena1 = sm0_uid267_pT4_uid183_invPolyEval_cma_ena0;
    assign sm0_uid267_pT4_uid183_invPolyEval_cma_ena2 = sm0_uid267_pT4_uid183_invPolyEval_cma_ena0;

    assign sm0_uid267_pT4_uid183_invPolyEval_cma_a0 = $unsigned(topRangeX_uid251_pT4_uid183_invPolyEval_b);
    assign sm0_uid267_pT4_uid183_invPolyEval_cma_c0 = $unsigned(topRangeY_uid252_pT4_uid183_invPolyEval_b);
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(54)
    ) sm0_uid267_pT4_uid183_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid267_pT4_uid183_invPolyEval_cma_ena2, sm0_uid267_pT4_uid183_invPolyEval_cma_ena1, sm0_uid267_pT4_uid183_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid267_pT4_uid183_invPolyEval_cma_reset, sm0_uid267_pT4_uid183_invPolyEval_cma_reset }),
        .ay(sm0_uid267_pT4_uid183_invPolyEval_cma_a0),
        .ax(sm0_uid267_pT4_uid183_invPolyEval_cma_c0),
        .resulta(sm0_uid267_pT4_uid183_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(54), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid267_pT4_uid183_invPolyEval_cma_delay ( .xin(sm0_uid267_pT4_uid183_invPolyEval_cma_s0), .xout(sm0_uid267_pT4_uid183_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid267_pT4_uid183_invPolyEval_cma_q = $unsigned(sm0_uid267_pT4_uid183_invPolyEval_cma_qq[53:0]);

    // lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval(ADD,273)@23 + 1
    assign lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_a = $unsigned({{1{sm0_uid267_pT4_uid183_invPolyEval_cma_q[53]}}, sm0_uid267_pT4_uid183_invPolyEval_cma_q});
    assign lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_b = $unsigned({{27{highBBits_uid273_pT4_uid183_invPolyEval_b[27]}}, highBBits_uid273_pT4_uid183_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_o <= 55'b0;
        end
        else
        begin
            lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_o <= $unsigned($signed(lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_b));
        end
    end
    assign lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_q = lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_o[54:0];

    // lowRangeB_uid272_pT4_uid183_invPolyEval(BITSELECT,271)@23
    assign lowRangeB_uid272_pT4_uid183_invPolyEval_in = multSumOfTwoTS_uid268_pT4_uid183_invPolyEval_cma_q[8:0];
    assign lowRangeB_uid272_pT4_uid183_invPolyEval_b = lowRangeB_uid272_pT4_uid183_invPolyEval_in[8:0];

    // redist7_lowRangeB_uid272_pT4_uid183_invPolyEval_b_1(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_lowRangeB_uid272_pT4_uid183_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist7_lowRangeB_uid272_pT4_uid183_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid272_pT4_uid183_invPolyEval_b);
        end
    end

    // lev1_a0_uid275_pT4_uid183_invPolyEval(BITJOIN,274)@24
    assign lev1_a0_uid275_pT4_uid183_invPolyEval_q = {lev1_a0sumAHighB_uid274_pT4_uid183_invPolyEval_q, redist7_lowRangeB_uid272_pT4_uid183_invPolyEval_b_1_q};

    // highABits_uid278_pT4_uid183_invPolyEval(BITSELECT,277)@24
    assign highABits_uid278_pT4_uid183_invPolyEval_b = $unsigned(lev1_a0_uid275_pT4_uid183_invPolyEval_q[63:14]);

    // lev2_a0high_uid279_pT4_uid183_invPolyEval(ADD,278)@24
    assign lev2_a0high_uid279_pT4_uid183_invPolyEval_a = $unsigned({{2{highABits_uid278_pT4_uid183_invPolyEval_b[49]}}, highABits_uid278_pT4_uid183_invPolyEval_b});
    assign lev2_a0high_uid279_pT4_uid183_invPolyEval_b = $unsigned({47'b00000000000000000000000000000000000000000000000, redist5_sm0_uid270_pT4_uid183_invPolyEval_lev1_a1_uid276_pT4_uid183_invPolyEval_sm1_uid271_pT4_uid183_invPolyEval_merged_cma_q_1_q});
    assign lev2_a0high_uid279_pT4_uid183_invPolyEval_o = $unsigned($signed(lev2_a0high_uid279_pT4_uid183_invPolyEval_a) + $signed(lev2_a0high_uid279_pT4_uid183_invPolyEval_b));
    assign lev2_a0high_uid279_pT4_uid183_invPolyEval_q = lev2_a0high_uid279_pT4_uid183_invPolyEval_o[50:0];

    // lowRangeA_uid277_pT4_uid183_invPolyEval(BITSELECT,276)@24
    assign lowRangeA_uid277_pT4_uid183_invPolyEval_in = lev1_a0_uid275_pT4_uid183_invPolyEval_q[13:0];
    assign lowRangeA_uid277_pT4_uid183_invPolyEval_b = lowRangeA_uid277_pT4_uid183_invPolyEval_in[13:0];

    // lev2_a0_uid280_pT4_uid183_invPolyEval(BITJOIN,279)@24
    assign lev2_a0_uid280_pT4_uid183_invPolyEval_q = {lev2_a0high_uid279_pT4_uid183_invPolyEval_q, lowRangeA_uid277_pT4_uid183_invPolyEval_b};

    // os_uid281_pT4_uid183_invPolyEval(BITSELECT,280)@24
    assign os_uid281_pT4_uid183_invPolyEval_in = $unsigned(lev2_a0_uid280_pT4_uid183_invPolyEval_q[61:0]);
    assign os_uid281_pT4_uid183_invPolyEval_b = $unsigned(os_uid281_pT4_uid183_invPolyEval_in[61:19]);

    // highBBits_uid185_invPolyEval(BITSELECT,184)@24
    assign highBBits_uid185_invPolyEval_b = $unsigned(os_uid281_pT4_uid183_invPolyEval_b[42:1]);

    // redist32_yAddr_uid46_block_rsrvd_fix_b_18_inputreg0(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_inputreg0_q <= '0;
        end
        else
        begin
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_inputreg0_q <= $unsigned(redist31_yAddr_uid46_block_rsrvd_fix_b_13_outputreg0_q);
        end
    end

    // redist32_yAddr_uid46_block_rsrvd_fix_b_18(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_0 <= '0;
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_1 <= '0;
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_2 <= '0;
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_q <= '0;
        end
        else
        begin
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_0 <= $unsigned(redist32_yAddr_uid46_block_rsrvd_fix_b_18_inputreg0_q);
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_1 <= redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_0;
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_2 <= redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_1;
            redist32_yAddr_uid46_block_rsrvd_fix_b_18_q <= redist32_yAddr_uid46_block_rsrvd_fix_b_18_delay_2;
        end
    end

    // memoryC1_uid142_sqrtTables_lutmem(DUALMEM,377)@22 + 2
    // in j@20000000
    assign memoryC1_uid142_sqrtTables_lutmem_aa = redist32_yAddr_uid46_block_rsrvd_fix_b_18_q;
    assign memoryC1_uid142_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z42_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC1_uid142_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid142_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid142_sqrtTables_lutmem_aa),
        .q_a(memoryC1_uid142_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid142_sqrtTables_lutmem_r = memoryC1_uid142_sqrtTables_lutmem_ir[9:0];

    // memoryC1_uid141_sqrtTables_lutmem(DUALMEM,376)@22 + 2
    // in j@20000000
    assign memoryC1_uid141_sqrtTables_lutmem_aa = redist32_yAddr_uid46_block_rsrvd_fix_b_18_q;
    assign memoryC1_uid141_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(40),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z41_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC1_uid141_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid141_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid141_sqrtTables_lutmem_aa),
        .q_a(memoryC1_uid141_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid141_sqrtTables_lutmem_r = memoryC1_uid141_sqrtTables_lutmem_ir[39:0];

    // os_uid143_sqrtTables(BITJOIN,142)@24
    assign os_uid143_sqrtTables_q = {memoryC1_uid142_sqrtTables_lutmem_r, memoryC1_uid141_sqrtTables_lutmem_r};

    // s4sumAHighB_uid186_invPolyEval(ADD,185)@24 + 1
    assign s4sumAHighB_uid186_invPolyEval_a = $unsigned({{1{os_uid143_sqrtTables_q[49]}}, os_uid143_sqrtTables_q});
    assign s4sumAHighB_uid186_invPolyEval_b = $unsigned({{9{highBBits_uid185_invPolyEval_b[41]}}, highBBits_uid185_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s4sumAHighB_uid186_invPolyEval_o <= 51'b0;
        end
        else
        begin
            s4sumAHighB_uid186_invPolyEval_o <= $unsigned($signed(s4sumAHighB_uid186_invPolyEval_a) + $signed(s4sumAHighB_uid186_invPolyEval_b));
        end
    end
    assign s4sumAHighB_uid186_invPolyEval_q = s4sumAHighB_uid186_invPolyEval_o[50:0];

    // lowRangeB_uid184_invPolyEval(BITSELECT,183)@24
    assign lowRangeB_uid184_invPolyEval_in = os_uid281_pT4_uid183_invPolyEval_b[0:0];
    assign lowRangeB_uid184_invPolyEval_b = lowRangeB_uid184_invPolyEval_in[0:0];

    // redist11_lowRangeB_uid184_invPolyEval_b_1(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_lowRangeB_uid184_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist11_lowRangeB_uid184_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid184_invPolyEval_b);
        end
    end

    // s4_uid187_invPolyEval(BITJOIN,186)@25
    assign s4_uid187_invPolyEval_q = {s4sumAHighB_uid186_invPolyEval_q, redist11_lowRangeB_uid184_invPolyEval_b_1_q};

    // aboveLeftY_bottomRange_uid301_pT5_uid189_invPolyEval(BITSELECT,300)@25
    assign aboveLeftY_bottomRange_uid301_pT5_uid189_invPolyEval_in = $unsigned(s4_uid187_invPolyEval_q[24:0]);
    assign aboveLeftY_bottomRange_uid301_pT5_uid189_invPolyEval_b = $unsigned(aboveLeftY_bottomRange_uid301_pT5_uid189_invPolyEval_in[24:0]);

    // aboveLeftY_mergedSignalTM_uid302_pT5_uid189_invPolyEval(BITJOIN,301)@25
    assign aboveLeftY_mergedSignalTM_uid302_pT5_uid189_invPolyEval_q = {aboveLeftY_bottomRange_uid301_pT5_uid189_invPolyEval_b, zs_uid126_lzx_uid30_block_rsrvd_fix_q};

    // topRangeY_uid298_pT5_uid189_invPolyEval(BITSELECT,297)@25
    assign topRangeY_uid298_pT5_uid189_invPolyEval_b = $unsigned(s4_uid187_invPolyEval_q[51:25]);

    // rightBottomX_bottomRange_uid305_pT5_uid189_invPolyEval(BITSELECT,304)@25
    assign rightBottomX_bottomRange_uid305_pT5_uid189_invPolyEval_in = $unsigned(nx_mergedSignalTM_uid295_pT5_uid189_invPolyEval_q[18:0]);
    assign rightBottomX_bottomRange_uid305_pT5_uid189_invPolyEval_b = $unsigned(rightBottomX_bottomRange_uid305_pT5_uid189_invPolyEval_in[18:0]);

    // rightBottomX_mergedSignalTM_uid306_pT5_uid189_invPolyEval(BITJOIN,305)@25
    assign rightBottomX_mergedSignalTM_uid306_pT5_uid189_invPolyEval_q = {rightBottomX_bottomRange_uid305_pT5_uid189_invPolyEval_b, zs_uid114_lzx_uid30_block_rsrvd_fix_q};

    // multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma(CHAINMULTADD,391)@25 + 3
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena1 = multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena2 = multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid306_pT5_uid189_invPolyEval_q;
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_c0 = $unsigned(topRangeY_uid298_pT5_uid189_invPolyEval_b);
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_a1 = aboveLeftY_mergedSignalTM_uid302_pT5_uid189_invPolyEval_q;
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_c1 = $unsigned(topRangeX_uid297_pT5_uid189_invPolyEval_b);
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("none")
    ) multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_DSP1 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena2, multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena1, multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_reset, multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_a1),
        .ax(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_c1),
        .chainout(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_s1),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .resulta(),
        .resultb(),
        .dftout()
    );
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("true"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(55)
    ) multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena2, multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena1, multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_reset, multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_c0),
        .chainin(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_s1),
        .resulta(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(55), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_qq[54:0]);

    // highBBits_uid317_pT5_uid189_invPolyEval(BITSELECT,316)@28
    assign highBBits_uid317_pT5_uid189_invPolyEval_b = $unsigned(multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_q[54:21]);

    // sm0_uid311_pT5_uid189_invPolyEval_cma(CHAINMULTADD,386)@25 + 3
    assign sm0_uid311_pT5_uid189_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid311_pT5_uid189_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid311_pT5_uid189_invPolyEval_cma_ena1 = sm0_uid311_pT5_uid189_invPolyEval_cma_ena0;
    assign sm0_uid311_pT5_uid189_invPolyEval_cma_ena2 = sm0_uid311_pT5_uid189_invPolyEval_cma_ena0;

    assign sm0_uid311_pT5_uid189_invPolyEval_cma_a0 = $unsigned(topRangeX_uid297_pT5_uid189_invPolyEval_b);
    assign sm0_uid311_pT5_uid189_invPolyEval_cma_c0 = $unsigned(topRangeY_uid298_pT5_uid189_invPolyEval_b);
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(54)
    ) sm0_uid311_pT5_uid189_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid311_pT5_uid189_invPolyEval_cma_ena2, sm0_uid311_pT5_uid189_invPolyEval_cma_ena1, sm0_uid311_pT5_uid189_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid311_pT5_uid189_invPolyEval_cma_reset, sm0_uid311_pT5_uid189_invPolyEval_cma_reset }),
        .ay(sm0_uid311_pT5_uid189_invPolyEval_cma_a0),
        .ax(sm0_uid311_pT5_uid189_invPolyEval_cma_c0),
        .resulta(sm0_uid311_pT5_uid189_invPolyEval_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(54), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid311_pT5_uid189_invPolyEval_cma_delay ( .xin(sm0_uid311_pT5_uid189_invPolyEval_cma_s0), .xout(sm0_uid311_pT5_uid189_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid311_pT5_uid189_invPolyEval_cma_q = $unsigned(sm0_uid311_pT5_uid189_invPolyEval_cma_qq[53:0]);

    // aboveLeftY_uid310_pT5_uid189_invPolyEval(BITSELECT,309)@25
    assign aboveLeftY_uid310_pT5_uid189_invPolyEval_in = s4_uid187_invPolyEval_q[24:0];
    assign aboveLeftY_uid310_pT5_uid189_invPolyEval_b = aboveLeftY_uid310_pT5_uid189_invPolyEval_in[24:22];

    // aboveLeftX_uid309_pT5_uid189_invPolyEval(BITSELECT,308)@25
    assign aboveLeftX_uid309_pT5_uid189_invPolyEval_in = nx_mergedSignalTM_uid295_pT5_uid189_invPolyEval_q[18:0];
    assign aboveLeftX_uid309_pT5_uid189_invPolyEval_b = aboveLeftX_uid309_pT5_uid189_invPolyEval_in[18:16];

    // sm0_uid314_pT5_uid189_invPolyEval(MULT,313)@25 + 3
    assign sm0_uid314_pT5_uid189_invPolyEval_pr = $unsigned(sm0_uid314_pT5_uid189_invPolyEval_a1) * $unsigned(sm0_uid314_pT5_uid189_invPolyEval_b1);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid314_pT5_uid189_invPolyEval_a0 <= 3'b0;
            sm0_uid314_pT5_uid189_invPolyEval_b0 <= 3'b0;
            sm0_uid314_pT5_uid189_invPolyEval_a1 <= 3'b0;
            sm0_uid314_pT5_uid189_invPolyEval_b1 <= 3'b0;
            sm0_uid314_pT5_uid189_invPolyEval_s1 <= 6'b0;
        end
        else
        begin
            sm0_uid314_pT5_uid189_invPolyEval_a0 <= aboveLeftX_uid309_pT5_uid189_invPolyEval_b;
            sm0_uid314_pT5_uid189_invPolyEval_b0 <= aboveLeftY_uid310_pT5_uid189_invPolyEval_b;
            sm0_uid314_pT5_uid189_invPolyEval_a1 <= sm0_uid314_pT5_uid189_invPolyEval_a0;
            sm0_uid314_pT5_uid189_invPolyEval_b1 <= sm0_uid314_pT5_uid189_invPolyEval_b0;
            sm0_uid314_pT5_uid189_invPolyEval_s1 <= sm0_uid314_pT5_uid189_invPolyEval_pr;
        end
    end
    assign sm0_uid314_pT5_uid189_invPolyEval_q = sm0_uid314_pT5_uid189_invPolyEval_s1;

    // sumAb_uid315_pT5_uid189_invPolyEval(BITJOIN,314)@28
    assign sumAb_uid315_pT5_uid189_invPolyEval_q = {sm0_uid311_pT5_uid189_invPolyEval_cma_q, sm0_uid314_pT5_uid189_invPolyEval_q};

    // lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval(ADD,317)@28
    assign lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_a = $unsigned({{1{sumAb_uid315_pT5_uid189_invPolyEval_q[59]}}, sumAb_uid315_pT5_uid189_invPolyEval_q});
    assign lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_b = $unsigned({{27{highBBits_uid317_pT5_uid189_invPolyEval_b[33]}}, highBBits_uid317_pT5_uid189_invPolyEval_b});
    assign lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_b));
    assign lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_q = lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_o[60:0];

    // lowRangeB_uid316_pT5_uid189_invPolyEval(BITSELECT,315)@28
    assign lowRangeB_uid316_pT5_uid189_invPolyEval_in = multSumOfTwoTS_uid312_pT5_uid189_invPolyEval_cma_q[20:0];
    assign lowRangeB_uid316_pT5_uid189_invPolyEval_b = lowRangeB_uid316_pT5_uid189_invPolyEval_in[20:0];

    // lev1_a0_uid319_pT5_uid189_invPolyEval(BITJOIN,318)@28
    assign lev1_a0_uid319_pT5_uid189_invPolyEval_q = {lev1_a0sumAHighB_uid318_pT5_uid189_invPolyEval_q, lowRangeB_uid316_pT5_uid189_invPolyEval_b};

    // os_uid320_pT5_uid189_invPolyEval(BITSELECT,319)@28
    assign os_uid320_pT5_uid189_invPolyEval_in = $unsigned(lev1_a0_uid319_pT5_uid189_invPolyEval_q[79:0]);
    assign os_uid320_pT5_uid189_invPolyEval_b = $unsigned(os_uid320_pT5_uid189_invPolyEval_in[79:27]);

    // highBBits_uid191_invPolyEval(BITSELECT,190)@28
    assign highBBits_uid191_invPolyEval_b = $unsigned(os_uid320_pT5_uid189_invPolyEval_b[52:2]);

    // redist9_highBBits_uid191_invPolyEval_b_1(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_highBBits_uid191_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist9_highBBits_uid191_invPolyEval_b_1_q <= $unsigned(highBBits_uid191_invPolyEval_b);
        end
    end

    // redist33_yAddr_uid46_block_rsrvd_fix_b_23_inputreg0(DELAY,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_inputreg0_q <= '0;
        end
        else
        begin
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_inputreg0_q <= $unsigned(redist32_yAddr_uid46_block_rsrvd_fix_b_18_q);
        end
    end

    // redist33_yAddr_uid46_block_rsrvd_fix_b_23(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_0 <= '0;
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_1 <= '0;
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_2 <= '0;
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_q <= '0;
        end
        else
        begin
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_0 <= $unsigned(redist33_yAddr_uid46_block_rsrvd_fix_b_23_inputreg0_q);
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_1 <= redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_0;
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_2 <= redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_1;
            redist33_yAddr_uid46_block_rsrvd_fix_b_23_q <= redist33_yAddr_uid46_block_rsrvd_fix_b_23_delay_2;
        end
    end

    // memoryC0_uid138_sqrtTables_lutmem(DUALMEM,375)@27 + 2
    // in j@20000000
    assign memoryC0_uid138_sqrtTables_lutmem_aa = redist33_yAddr_uid46_block_rsrvd_fix_b_23_q;
    assign memoryC0_uid138_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(18),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z38_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC0_uid138_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid138_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid138_sqrtTables_lutmem_aa),
        .q_a(memoryC0_uid138_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid138_sqrtTables_lutmem_r = memoryC0_uid138_sqrtTables_lutmem_ir[17:0];

    // memoryC0_uid137_sqrtTables_lutmem(DUALMEM,374)@27 + 2
    // in j@20000000
    assign memoryC0_uid137_sqrtTables_lutmem_aa = redist33_yAddr_uid46_block_rsrvd_fix_b_23_q;
    assign memoryC0_uid137_sqrtTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(40),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z37_sqrtTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC0_uid137_sqrtTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid137_sqrtTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid137_sqrtTables_lutmem_aa),
        .q_a(memoryC0_uid137_sqrtTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid137_sqrtTables_lutmem_r = memoryC0_uid137_sqrtTables_lutmem_ir[39:0];

    // os_uid139_sqrtTables(BITJOIN,138)@29
    assign os_uid139_sqrtTables_q = {memoryC0_uid138_sqrtTables_lutmem_r, memoryC0_uid137_sqrtTables_lutmem_r};

    // s5sumAHighB_uid192_invPolyEval(ADD,191)@29
    assign s5sumAHighB_uid192_invPolyEval_a = $unsigned({{1{os_uid139_sqrtTables_q[57]}}, os_uid139_sqrtTables_q});
    assign s5sumAHighB_uid192_invPolyEval_b = $unsigned({{8{redist9_highBBits_uid191_invPolyEval_b_1_q[50]}}, redist9_highBBits_uid191_invPolyEval_b_1_q});
    assign s5sumAHighB_uid192_invPolyEval_o = $unsigned($signed(s5sumAHighB_uid192_invPolyEval_a) + $signed(s5sumAHighB_uid192_invPolyEval_b));
    assign s5sumAHighB_uid192_invPolyEval_q = s5sumAHighB_uid192_invPolyEval_o[58:0];

    // lowRangeB_uid190_invPolyEval(BITSELECT,189)@28
    assign lowRangeB_uid190_invPolyEval_in = os_uid320_pT5_uid189_invPolyEval_b[1:0];
    assign lowRangeB_uid190_invPolyEval_b = lowRangeB_uid190_invPolyEval_in[1:0];

    // redist10_lowRangeB_uid190_invPolyEval_b_1(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_lowRangeB_uid190_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist10_lowRangeB_uid190_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid190_invPolyEval_b);
        end
    end

    // s5_uid193_invPolyEval(BITJOIN,192)@29
    assign s5_uid193_invPolyEval_q = {s5sumAHighB_uid192_invPolyEval_q, redist10_lowRangeB_uid190_invPolyEval_b_1_q};

    // fracRPreCR_uid50_block_rsrvd_fix(BITSELECT,49)@29
    assign fracRPreCR_uid50_block_rsrvd_fix_in = s5_uid193_invPolyEval_q[57:0];
    assign fracRPreCR_uid50_block_rsrvd_fix_b = fracRPreCR_uid50_block_rsrvd_fix_in[57:5];

    // redist22_fracRPreCR_uid50_block_rsrvd_fix_b_1(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_fracRPreCR_uid50_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist22_fracRPreCR_uid50_block_rsrvd_fix_b_1_q <= $unsigned(fracRPreCR_uid50_block_rsrvd_fix_b);
        end
    end

    // fracPaddingOne_uid52_block_rsrvd_fix(BITJOIN,51)@30
    assign fracPaddingOne_uid52_block_rsrvd_fix_q = {VCC_q, redist22_fracRPreCR_uid50_block_rsrvd_fix_b_1_q};

    // squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,394)@30
    assign squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_b = fracPaddingOne_uid52_block_rsrvd_fix_q[53:27];
    assign squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_c = fracPaddingOne_uid52_block_rsrvd_fix_q[26:0];

    // squaredResult_uid53_block_rsrvd_fix_ma3_cma(CHAINMULTADD,393)@30 + 3
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_reset = ~ (resetn);
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena0 = 1'b1;
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena1 = squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena0;
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena2 = squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena0;

    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_a0 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_c;
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_c0 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_b;
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_a1 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_b;
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_c1 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("none")
    ) squaredResult_uid53_block_rsrvd_fix_ma3_cma_DSP1 (
        .clk({clock,clock,clock}),
        .ena({ squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena2, squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena1, squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena0 }),
        .aclr({ squaredResult_uid53_block_rsrvd_fix_ma3_cma_reset, squaredResult_uid53_block_rsrvd_fix_ma3_cma_reset }),
        .ay(squaredResult_uid53_block_rsrvd_fix_ma3_cma_a1),
        .ax(squaredResult_uid53_block_rsrvd_fix_ma3_cma_c1),
        .chainout(squaredResult_uid53_block_rsrvd_fix_ma3_cma_s1),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .resulta(),
        .resultb(),
        .dftout()
    );
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("true"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(55)
    ) squaredResult_uid53_block_rsrvd_fix_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena2, squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena1, squaredResult_uid53_block_rsrvd_fix_ma3_cma_ena0 }),
        .aclr({ squaredResult_uid53_block_rsrvd_fix_ma3_cma_reset, squaredResult_uid53_block_rsrvd_fix_ma3_cma_reset }),
        .ay(squaredResult_uid53_block_rsrvd_fix_ma3_cma_a0),
        .ax(squaredResult_uid53_block_rsrvd_fix_ma3_cma_c0),
        .chainin(squaredResult_uid53_block_rsrvd_fix_ma3_cma_s1),
        .resulta(squaredResult_uid53_block_rsrvd_fix_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(55), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    squaredResult_uid53_block_rsrvd_fix_ma3_cma_delay ( .xin(squaredResult_uid53_block_rsrvd_fix_ma3_cma_s0), .xout(squaredResult_uid53_block_rsrvd_fix_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign squaredResult_uid53_block_rsrvd_fix_ma3_cma_q = $unsigned(squaredResult_uid53_block_rsrvd_fix_ma3_cma_qq[54:0]);

    // squaredResult_uid53_block_rsrvd_fix_sums_align_1(BITSHIFT,371)@33
    assign squaredResult_uid53_block_rsrvd_fix_sums_align_1_qint = { squaredResult_uid53_block_rsrvd_fix_ma3_cma_q, 27'b000000000000000000000000000 };
    assign squaredResult_uid53_block_rsrvd_fix_sums_align_1_q = squaredResult_uid53_block_rsrvd_fix_sums_align_1_qint[81:0];

    // squaredResult_uid53_block_rsrvd_fix_im0_cma(CHAINMULTADD,387)@30 + 3
    assign squaredResult_uid53_block_rsrvd_fix_im0_cma_reset = ~ (resetn);
    assign squaredResult_uid53_block_rsrvd_fix_im0_cma_ena0 = 1'b1;
    assign squaredResult_uid53_block_rsrvd_fix_im0_cma_ena1 = squaredResult_uid53_block_rsrvd_fix_im0_cma_ena0;
    assign squaredResult_uid53_block_rsrvd_fix_im0_cma_ena2 = squaredResult_uid53_block_rsrvd_fix_im0_cma_ena0;

    assign squaredResult_uid53_block_rsrvd_fix_im0_cma_a0 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_b;
    assign squaredResult_uid53_block_rsrvd_fix_im0_cma_c0 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(54)
    ) squaredResult_uid53_block_rsrvd_fix_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ squaredResult_uid53_block_rsrvd_fix_im0_cma_ena2, squaredResult_uid53_block_rsrvd_fix_im0_cma_ena1, squaredResult_uid53_block_rsrvd_fix_im0_cma_ena0 }),
        .aclr({ squaredResult_uid53_block_rsrvd_fix_im0_cma_reset, squaredResult_uid53_block_rsrvd_fix_im0_cma_reset }),
        .ay(squaredResult_uid53_block_rsrvd_fix_im0_cma_a0),
        .ax(squaredResult_uid53_block_rsrvd_fix_im0_cma_c0),
        .resulta(squaredResult_uid53_block_rsrvd_fix_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(54), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    squaredResult_uid53_block_rsrvd_fix_im0_cma_delay ( .xin(squaredResult_uid53_block_rsrvd_fix_im0_cma_s0), .xout(squaredResult_uid53_block_rsrvd_fix_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign squaredResult_uid53_block_rsrvd_fix_im0_cma_q = $unsigned(squaredResult_uid53_block_rsrvd_fix_im0_cma_qq[53:0]);

    // squaredResult_uid53_block_rsrvd_fix_im8_cma(CHAINMULTADD,388)@30 + 3
    assign squaredResult_uid53_block_rsrvd_fix_im8_cma_reset = ~ (resetn);
    assign squaredResult_uid53_block_rsrvd_fix_im8_cma_ena0 = 1'b1;
    assign squaredResult_uid53_block_rsrvd_fix_im8_cma_ena1 = squaredResult_uid53_block_rsrvd_fix_im8_cma_ena0;
    assign squaredResult_uid53_block_rsrvd_fix_im8_cma_ena2 = squaredResult_uid53_block_rsrvd_fix_im8_cma_ena0;

    assign squaredResult_uid53_block_rsrvd_fix_im8_cma_a0 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_c;
    assign squaredResult_uid53_block_rsrvd_fix_im8_cma_c0 = squaredResult_uid53_block_rsrvd_fix_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(27),
        .ax_clock("0"),
        .ax_width(27),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(54)
    ) squaredResult_uid53_block_rsrvd_fix_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ squaredResult_uid53_block_rsrvd_fix_im8_cma_ena2, squaredResult_uid53_block_rsrvd_fix_im8_cma_ena1, squaredResult_uid53_block_rsrvd_fix_im8_cma_ena0 }),
        .aclr({ squaredResult_uid53_block_rsrvd_fix_im8_cma_reset, squaredResult_uid53_block_rsrvd_fix_im8_cma_reset }),
        .ay(squaredResult_uid53_block_rsrvd_fix_im8_cma_a0),
        .ax(squaredResult_uid53_block_rsrvd_fix_im8_cma_c0),
        .resulta(squaredResult_uid53_block_rsrvd_fix_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(54), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    squaredResult_uid53_block_rsrvd_fix_im8_cma_delay ( .xin(squaredResult_uid53_block_rsrvd_fix_im8_cma_s0), .xout(squaredResult_uid53_block_rsrvd_fix_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign squaredResult_uid53_block_rsrvd_fix_im8_cma_q = $unsigned(squaredResult_uid53_block_rsrvd_fix_im8_cma_qq[53:0]);

    // squaredResult_uid53_block_rsrvd_fix_sums_join_0(BITJOIN,370)@33
    assign squaredResult_uid53_block_rsrvd_fix_sums_join_0_q = {squaredResult_uid53_block_rsrvd_fix_im0_cma_q, squaredResult_uid53_block_rsrvd_fix_im8_cma_q};

    // squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0(ADD,373)@33 + 1
    assign squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_a = {1'b0, squaredResult_uid53_block_rsrvd_fix_sums_join_0_q};
    assign squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_b = {27'b000000000000000000000000000, squaredResult_uid53_block_rsrvd_fix_sums_align_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_o <= 109'b0;
        end
        else
        begin
            squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_o <= $unsigned(squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_a) + $unsigned(squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_b);
        end
    end
    assign squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_q = squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_o[108:0];

    // squaredResultGTEIn_uid66_block_rsrvd_fix(COMPARE,67)@34 + 1
    assign squaredResultGTEIn_uid66_block_rsrvd_fix_a = {1'b0, squaredResult_uid53_block_rsrvd_fix_sums_result_add_0_0_q};
    assign squaredResultGTEIn_uid66_block_rsrvd_fix_b = {2'b00, updatedY_uid67_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResultGTEIn_uid66_block_rsrvd_fix_o <= 110'b0;
        end
        else
        begin
            squaredResultGTEIn_uid66_block_rsrvd_fix_o <= $unsigned(squaredResultGTEIn_uid66_block_rsrvd_fix_a) - $unsigned(squaredResultGTEIn_uid66_block_rsrvd_fix_b);
        end
    end
    assign squaredResultGTEIn_uid66_block_rsrvd_fix_n[0] = ~ (squaredResultGTEIn_uid66_block_rsrvd_fix_o[109]);

    // pLTOne_uid69_block_rsrvd_fix(LOGICAL,68)@35
    assign pLTOne_uid69_block_rsrvd_fix_q = ~ (squaredResultGTEIn_uid66_block_rsrvd_fix_n);

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_notEnable(LOGICAL,454)
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_nor(LOGICAL,455)
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_nor_q = ~ (redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_notEnable_q | redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_sticky_ena_q);

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_last(CONSTANT,451)
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_last_q = $unsigned(2'b01);

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmp(LOGICAL,452)
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmp_q = $unsigned(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_last_q == redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmpReg(REG,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmp_q);
        end
    end

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_sticky_ena(REG,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_nor_q == 1'b1)
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_cmpReg_q);
        end
    end

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_enaAnd(LOGICAL,457)
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_enaAnd_q = redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_sticky_ena_q & VCC_q;

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt(COUNTER,449)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i <= 2'd0;
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i == 2'd1)
            begin
                redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b0;
            end
            if (redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_eq == 1'b1)
            begin
                redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i <= $unsigned(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i <= $unsigned(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_q = redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_i[1:0];

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_wraddr(REG,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_q);
        end
    end

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem(DUALMEM,448)
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_ia = $unsigned(redist22_fracRPreCR_uid50_block_rsrvd_fix_b_1_q);
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_aa = redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_wraddr_q;
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_ab = redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_rdcnt_q;
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(53),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(53),
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
    ) redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_dmem (
        .clocken1(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_reset0),
        .clock1(clock),
        .address_a(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_aa),
        .data_a(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_ab),
        .q_b(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_iq),
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
    assign redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_q = redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_iq[52:0];

    // redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_outputreg0(DELAY,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_outputreg0_q <= '0;
        end
        else
        begin
            redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_outputreg0_q <= $unsigned(redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_mem_q);
        end
    end

    // fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix(ADD,70)@35
    assign fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_a = {1'b0, redist23_fracRPreCR_uid50_block_rsrvd_fix_b_6_outputreg0_q};
    assign fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_b = {53'b00000000000000000000000000000000000000000000000000000, pLTOne_uid69_block_rsrvd_fix_q};
    assign fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_o = $unsigned(fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_a) + $unsigned(fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_b);
    assign fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_q = fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_o[53:0];

    // expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select(BITSELECT,395)@35
    assign expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_b = fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_q[53:53];
    assign expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c = fxpSqrtResPostUpdateE_uid71_block_rsrvd_fix_q[52:1];

    // fracPENotOne_uid73_block_rsrvd_fix(LOGICAL,72)@35
    assign fracPENotOne_uid73_block_rsrvd_fix_q = ~ (redist24_expIncPEOnly_uid49_block_rsrvd_fix_b_6_q);

    // fracPENotOneAndCRRoundsExp_uid74_block_rsrvd_fix(LOGICAL,73)@35
    assign fracPENotOneAndCRRoundsExp_uid74_block_rsrvd_fix_q = fracPENotOne_uid73_block_rsrvd_fix_q & expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_b;

    // expIncPEOnly_uid49_block_rsrvd_fix(BITSELECT,48)@29
    assign expIncPEOnly_uid49_block_rsrvd_fix_in = $unsigned(s5_uid193_invPolyEval_q[59:0]);
    assign expIncPEOnly_uid49_block_rsrvd_fix_b = $unsigned(expIncPEOnly_uid49_block_rsrvd_fix_in[59:59]);

    // redist24_expIncPEOnly_uid49_block_rsrvd_fix_b_6(DELAY,425)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_expIncPEOnly_uid49_block_rsrvd_fix_b_6 ( .xin(expIncPEOnly_uid49_block_rsrvd_fix_b), .xout(redist24_expIncPEOnly_uid49_block_rsrvd_fix_b_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expInc_uid75_block_rsrvd_fix(LOGICAL,74)@35 + 1
    assign expInc_uid75_block_rsrvd_fix_qi = redist24_expIncPEOnly_uid49_block_rsrvd_fix_b_6_q | fracPENotOneAndCRRoundsExp_uid74_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expInc_uid75_block_rsrvd_fix_delay ( .xin(expInc_uid75_block_rsrvd_fix_qi), .xout(expInc_uid75_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_notEnable(LOGICAL,492)
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_nor(LOGICAL,493)
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_nor_q = ~ (redist34_expRMux_uid42_block_rsrvd_fix_q_31_notEnable_q | redist34_expRMux_uid42_block_rsrvd_fix_q_31_sticky_ena_q);

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_last(CONSTANT,489)
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_last_q = $unsigned(6'b011010);

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmp(LOGICAL,490)
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmp_b = {1'b0, redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_q};
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmp_q = $unsigned(redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_last_q == redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmp_b ? 1'b1 : 1'b0);

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmpReg(REG,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmpReg_q <= $unsigned(redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmp_q);
        end
    end

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_sticky_ena(REG,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_expRMux_uid42_block_rsrvd_fix_q_31_nor_q == 1'b1)
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_sticky_ena_q <= $unsigned(redist34_expRMux_uid42_block_rsrvd_fix_q_31_cmpReg_q);
        end
    end

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_enaAnd(LOGICAL,495)
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_enaAnd_q = redist34_expRMux_uid42_block_rsrvd_fix_q_31_sticky_ena_q & VCC_q;

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt(COUNTER,487)
    // low=0, high=27, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i <= 5'd0;
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i == 5'd26)
            begin
                redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_eq <= 1'b0;
            end
            if (redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_eq == 1'b1)
            begin
                redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i <= $unsigned(redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i) + $unsigned(5'd5);
            end
            else
            begin
                redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i <= $unsigned(redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_q = redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_i[4:0];

    // sBiasM1_uid37_block_rsrvd_fix(CONSTANT,36)
    assign sBiasM1_uid37_block_rsrvd_fix_q = $unsigned(11'b01111111110);

    // redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1(DELAY,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1_q <= $unsigned(expXPostSubnorm_uid34_block_rsrvd_fix_q);
        end
    end

    // expOddSig_uid38_block_rsrvd_fix(ADD,37)@5
    assign expOddSig_uid38_block_rsrvd_fix_a = $unsigned({{2{redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1_q[12]}}, redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1_q});
    assign expOddSig_uid38_block_rsrvd_fix_b = $unsigned({4'b0000, sBiasM1_uid37_block_rsrvd_fix_q});
    assign expOddSig_uid38_block_rsrvd_fix_o = $unsigned($signed(expOddSig_uid38_block_rsrvd_fix_a) + $signed(expOddSig_uid38_block_rsrvd_fix_b));
    assign expOddSig_uid38_block_rsrvd_fix_q = expOddSig_uid38_block_rsrvd_fix_o[13:0];

    // expROdd_uid39_block_rsrvd_fix(BITSELECT,38)@5
    assign expROdd_uid39_block_rsrvd_fix_in = expOddSig_uid38_block_rsrvd_fix_q[11:0];
    assign expROdd_uid39_block_rsrvd_fix_b = expROdd_uid39_block_rsrvd_fix_in[11:1];

    // sBias_uid26_block_rsrvd_fix(CONSTANT,25)
    assign sBias_uid26_block_rsrvd_fix_q = $unsigned(11'b01111111111);

    // expEvenSig_uid35_block_rsrvd_fix(ADD,34)@5
    assign expEvenSig_uid35_block_rsrvd_fix_a = $unsigned({{2{redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1_q[12]}}, redist37_expXPostSubnorm_uid34_block_rsrvd_fix_q_1_q});
    assign expEvenSig_uid35_block_rsrvd_fix_b = $unsigned({4'b0000, sBias_uid26_block_rsrvd_fix_q});
    assign expEvenSig_uid35_block_rsrvd_fix_o = $unsigned($signed(expEvenSig_uid35_block_rsrvd_fix_a) + $signed(expEvenSig_uid35_block_rsrvd_fix_b));
    assign expEvenSig_uid35_block_rsrvd_fix_q = expEvenSig_uid35_block_rsrvd_fix_o[13:0];

    // expREven_uid36_block_rsrvd_fix(BITSELECT,35)@5
    assign expREven_uid36_block_rsrvd_fix_in = expEvenSig_uid35_block_rsrvd_fix_q[11:0];
    assign expREven_uid36_block_rsrvd_fix_b = expREven_uid36_block_rsrvd_fix_in[11:1];

    // expRMux_uid42_block_rsrvd_fix(MUX,41)@5 + 1
    assign expRMux_uid42_block_rsrvd_fix_s = redist35_expOddSelect_uid41_block_rsrvd_fix_q_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRMux_uid42_block_rsrvd_fix_q <= 11'b0;
        end
        else
        begin
            unique case (expRMux_uid42_block_rsrvd_fix_s)
                1'b0 : expRMux_uid42_block_rsrvd_fix_q <= expREven_uid36_block_rsrvd_fix_b;
                1'b1 : expRMux_uid42_block_rsrvd_fix_q <= expROdd_uid39_block_rsrvd_fix_b;
                default : expRMux_uid42_block_rsrvd_fix_q <= 11'b0;
            endcase
        end
    end

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_wraddr(REG,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_wraddr_q <= $unsigned(5'b11011);
        end
        else
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_wraddr_q <= $unsigned(redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_q);
        end
    end

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem(DUALMEM,486)
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_ia = $unsigned(expRMux_uid42_block_rsrvd_fix_q);
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_aa = redist34_expRMux_uid42_block_rsrvd_fix_q_31_wraddr_q;
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_ab = redist34_expRMux_uid42_block_rsrvd_fix_q_31_rdcnt_q;
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(5),
        .numwords_a(28),
        .width_b(11),
        .widthad_b(5),
        .numwords_b(28),
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
    ) redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_dmem (
        .clocken1(redist34_expRMux_uid42_block_rsrvd_fix_q_31_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_reset0),
        .clock1(clock),
        .address_a(redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_aa),
        .data_a(redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_ab),
        .q_b(redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_iq),
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
    assign redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_q = redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_iq[10:0];

    // redist34_expRMux_uid42_block_rsrvd_fix_q_31_outputreg0(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_outputreg0_q <= '0;
        end
        else
        begin
            redist34_expRMux_uid42_block_rsrvd_fix_q_31_outputreg0_q <= $unsigned(redist34_expRMux_uid42_block_rsrvd_fix_q_31_mem_q);
        end
    end

    // expR_uid77_block_rsrvd_fix(ADD,76)@36
    assign expR_uid77_block_rsrvd_fix_a = {1'b0, redist34_expRMux_uid42_block_rsrvd_fix_q_31_outputreg0_q};
    assign expR_uid77_block_rsrvd_fix_b = {11'b00000000000, expInc_uid75_block_rsrvd_fix_q};
    assign expR_uid77_block_rsrvd_fix_o = $unsigned(expR_uid77_block_rsrvd_fix_a) + $unsigned(expR_uid77_block_rsrvd_fix_b);
    assign expR_uid77_block_rsrvd_fix_q = expR_uid77_block_rsrvd_fix_o[11:0];

    // expRR_uid89_block_rsrvd_fix(BITSELECT,88)@36
    assign expRR_uid89_block_rsrvd_fix_in = expR_uid77_block_rsrvd_fix_q[10:0];
    assign expRR_uid89_block_rsrvd_fix_b = expRR_uid89_block_rsrvd_fix_in[10:0];

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_notEnable(LOGICAL,514)
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_nor(LOGICAL,515)
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_nor_q = ~ (redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_notEnable_q | redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_sticky_ena_q);

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_last(CONSTANT,511)
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_last_q = $unsigned(6'b011110);

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmp(LOGICAL,512)
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmp_b = {1'b0, redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_q};
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmp_q = $unsigned(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_last_q == redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmpReg(REG,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmpReg_q <= $unsigned(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmp_q);
        end
    end

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_sticky_ena(REG,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_nor_q == 1'b1)
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_sticky_ena_q <= $unsigned(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_cmpReg_q);
        end
    end

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_enaAnd(LOGICAL,517)
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_enaAnd_q = redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_sticky_ena_q & VCC_q;

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt(COUNTER,509)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_i <= $unsigned(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_q = redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_i[4:0];

    // excXRegOrSubnorm_uid80_block_rsrvd_fix(LOGICAL,79)@1
    assign excXRegOrSubnorm_uid80_block_rsrvd_fix_q = excR_x_uid22_block_rsrvd_fix_q | excXSubnorm_uid25_block_rsrvd_fix_q;

    // minReg_uid81_block_rsrvd_fix(LOGICAL,80)@1
    assign minReg_uid81_block_rsrvd_fix_q = excXRegOrSubnorm_uid80_block_rsrvd_fix_q & redist43_signX_uid7_block_rsrvd_fix_b_1_q;

    // minInf_uid82_block_rsrvd_fix(LOGICAL,81)@1
    assign minInf_uid82_block_rsrvd_fix_q = excI_x_uid18_block_rsrvd_fix_q & redist43_signX_uid7_block_rsrvd_fix_b_1_q;

    // excRNaN_uid83_block_rsrvd_fix(LOGICAL,82)@1
    assign excRNaN_uid83_block_rsrvd_fix_q = excN_x_uid19_block_rsrvd_fix_q | minInf_uid82_block_rsrvd_fix_q | minReg_uid81_block_rsrvd_fix_q;

    // invSignX_uid78_block_rsrvd_fix(LOGICAL,77)@1
    assign invSignX_uid78_block_rsrvd_fix_q = ~ (redist43_signX_uid7_block_rsrvd_fix_b_1_q);

    // inInfAndNotNeg_uid79_block_rsrvd_fix(LOGICAL,78)@1
    assign inInfAndNotNeg_uid79_block_rsrvd_fix_q = excI_x_uid18_block_rsrvd_fix_q & invSignX_uid78_block_rsrvd_fix_q;

    // excConc_uid84_block_rsrvd_fix(BITJOIN,83)@1
    assign excConc_uid84_block_rsrvd_fix_q = {excRNaN_uid83_block_rsrvd_fix_q, inInfAndNotNeg_uid79_block_rsrvd_fix_q, excZ_x_uid17_block_rsrvd_fix_q};

    // fracSelIn_uid85_block_rsrvd_fix(BITJOIN,84)@1
    assign fracSelIn_uid85_block_rsrvd_fix_q = {redist43_signX_uid7_block_rsrvd_fix_b_1_q, excConc_uid84_block_rsrvd_fix_q};

    // fracSel_uid86_block_rsrvd_fix(LOOKUP,85)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracSel_uid86_block_rsrvd_fix_q <= $unsigned(2'b01);
        end
        else
        begin
            unique case (fracSelIn_uid85_block_rsrvd_fix_q)
                4'b0000 : fracSel_uid86_block_rsrvd_fix_q <= 2'b01;
                4'b0001 : fracSel_uid86_block_rsrvd_fix_q <= 2'b00;
                4'b0010 : fracSel_uid86_block_rsrvd_fix_q <= 2'b10;
                4'b0011 : fracSel_uid86_block_rsrvd_fix_q <= 2'b00;
                4'b0100 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                4'b0101 : fracSel_uid86_block_rsrvd_fix_q <= 2'b00;
                4'b0110 : fracSel_uid86_block_rsrvd_fix_q <= 2'b10;
                4'b0111 : fracSel_uid86_block_rsrvd_fix_q <= 2'b00;
                4'b1000 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                4'b1001 : fracSel_uid86_block_rsrvd_fix_q <= 2'b00;
                4'b1010 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                4'b1011 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                4'b1100 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                4'b1101 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                4'b1110 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                4'b1111 : fracSel_uid86_block_rsrvd_fix_q <= 2'b11;
                default : begin
                              // unreachable
                              fracSel_uid86_block_rsrvd_fix_q <= 2'bxx;
                          end
            endcase
        end
    end

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_wraddr(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_wraddr_q <= $unsigned(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_q);
        end
    end

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem(DUALMEM,508)
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_ia = $unsigned(fracSel_uid86_block_rsrvd_fix_q);
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_aa = redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_wraddr_q;
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_ab = redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_rdcnt_q;
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(2),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(2),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_dmem (
        .clocken1(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_aa),
        .data_a(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_ab),
        .q_b(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_iq),
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
    assign redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_q = redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_iq[1:0];

    // redist21_fracSel_uid86_block_rsrvd_fix_q_35(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_q <= '0;
        end
        else
        begin
            redist21_fracSel_uid86_block_rsrvd_fix_q_35_q <= $unsigned(redist21_fracSel_uid86_block_rsrvd_fix_q_35_split_0_mem_q);
        end
    end

    // expRPostExc_uid91_block_rsrvd_fix(MUX,90)@36
    assign expRPostExc_uid91_block_rsrvd_fix_s = redist21_fracSel_uid86_block_rsrvd_fix_q_35_q;
    always @(expRPostExc_uid91_block_rsrvd_fix_s or cstAllZWE_uid10_block_rsrvd_fix_q or expRR_uid89_block_rsrvd_fix_b or cstAllOWE_uid8_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid91_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid91_block_rsrvd_fix_q = cstAllZWE_uid10_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid91_block_rsrvd_fix_q = expRR_uid89_block_rsrvd_fix_b;
            2'b10 : expRPostExc_uid91_block_rsrvd_fix_q = cstAllOWE_uid8_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid91_block_rsrvd_fix_q = cstAllOWE_uid8_block_rsrvd_fix_q;
            default : expRPostExc_uid91_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // fracNaN_uid92_block_rsrvd_fix(CONSTANT,91)
    assign fracNaN_uid92_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000001);

    // redist4_expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c_1(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist4_expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // fracRPostExc_uid96_block_rsrvd_fix(MUX,95)@36
    assign fracRPostExc_uid96_block_rsrvd_fix_s = redist21_fracSel_uid86_block_rsrvd_fix_q_35_q;
    always @(fracRPostExc_uid96_block_rsrvd_fix_s or cstZeroWF_uid9_block_rsrvd_fix_q or redist4_expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c_1_q or fracNaN_uid92_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid96_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid96_block_rsrvd_fix_q = cstZeroWF_uid9_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid96_block_rsrvd_fix_q = redist4_expUpdateCRU_uid72_block_rsrvd_fix_merged_bit_select_c_1_q;
            2'b10 : fracRPostExc_uid96_block_rsrvd_fix_q = cstZeroWF_uid9_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid96_block_rsrvd_fix_q = fracNaN_uid92_block_rsrvd_fix_q;
            default : fracRPostExc_uid96_block_rsrvd_fix_q = 52'b0;
        endcase
    end

    // RSqrt_uid98_block_rsrvd_fix(BITJOIN,97)@36
    assign RSqrt_uid98_block_rsrvd_fix_q = {redist20_negZero_uid97_block_rsrvd_fix_q_35_q, expRPostExc_uid91_block_rsrvd_fix_q, fracRPostExc_uid96_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@36
    assign out_primWireOut = RSqrt_uid98_block_rsrvd_fix_q;

endmodule
