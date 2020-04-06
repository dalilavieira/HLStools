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

// SystemVerilog created from euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Zcd06cj0of0cdj6oq3cz0
// SystemVerilog created on Mon Apr  6 10:27:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Zcd06cj0of0cdj6oq3cz0 (
    input wire [63:0] in_0,
    input wire [63:0] in_1,
    output wire [63:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] cstBiasM1_uid7_block_rsrvd_fix_q;
    wire [10:0] expX_uid10_block_rsrvd_fix_b;
    wire [51:0] fracX_uid11_block_rsrvd_fix_b;
    wire [0:0] signX_uid12_block_rsrvd_fix_b;
    wire [10:0] expY_uid13_block_rsrvd_fix_b;
    wire [51:0] fracY_uid14_block_rsrvd_fix_b;
    wire [0:0] signY_uid15_block_rsrvd_fix_b;
    wire [51:0] paddingY_uid16_block_rsrvd_fix_q;
    wire [52:0] updatedY_uid17_block_rsrvd_fix_q;
    wire [52:0] fracYZero_uid16_block_rsrvd_fix_a;
    wire [0:0] fracYZero_uid16_block_rsrvd_fix_qi;
    reg [0:0] fracYZero_uid16_block_rsrvd_fix_q;
    wire [10:0] cstAllOWE_uid19_block_rsrvd_fix_q;
    wire [10:0] cstAllZWE_uid21_block_rsrvd_fix_q;
    wire [0:0] expXIsZero_uid24_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid25_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid26_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid27_block_rsrvd_fix_q;
    wire [0:0] excZ_x_uid28_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid28_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid29_block_rsrvd_fix_qi;
    reg [0:0] excI_x_uid29_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid30_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid30_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid31_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid32_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid33_block_rsrvd_fix_q;
    wire [0:0] expXIsZero_uid41_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid42_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid43_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid44_block_rsrvd_fix_q;
    wire [0:0] excZ_y_uid45_block_rsrvd_fix_qi;
    reg [0:0] excZ_y_uid45_block_rsrvd_fix_q;
    wire [0:0] excI_y_uid46_block_rsrvd_fix_qi;
    reg [0:0] excI_y_uid46_block_rsrvd_fix_q;
    wire [0:0] excN_y_uid47_block_rsrvd_fix_qi;
    reg [0:0] excN_y_uid47_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid48_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid49_block_rsrvd_fix_q;
    wire [0:0] excR_y_uid50_block_rsrvd_fix_q;
    wire [0:0] yNotSubnormal_uid53_block_rsrvd_fix_q;
    wire [0:0] excYSubnorm_uid54_block_rsrvd_fix_q;
    wire [0:0] xNotSubnormal_uid55_block_rsrvd_fix_q;
    wire [0:0] excXSubnorm_uid56_block_rsrvd_fix_q;
    wire [0:0] signR_uid57_block_rsrvd_fix_qi;
    reg [0:0] signR_uid57_block_rsrvd_fix_q;
    wire [11:0] expXSubnorm_uid58_block_rsrvd_fix_a;
    wire [11:0] expXSubnorm_uid58_block_rsrvd_fix_b;
    logic [11:0] expXSubnorm_uid58_block_rsrvd_fix_o;
    wire [11:0] expXSubnorm_uid58_block_rsrvd_fix_q;
    wire [11:0] expYSubnorm_uid59_block_rsrvd_fix_a;
    wire [11:0] expYSubnorm_uid59_block_rsrvd_fix_b;
    logic [11:0] expYSubnorm_uid59_block_rsrvd_fix_o;
    wire [11:0] expYSubnorm_uid59_block_rsrvd_fix_q;
    wire [12:0] expXmY_uid60_block_rsrvd_fix_a;
    wire [12:0] expXmY_uid60_block_rsrvd_fix_b;
    logic [12:0] expXmY_uid60_block_rsrvd_fix_o;
    wire [12:0] expXmY_uid60_block_rsrvd_fix_q;
    wire [14:0] expR_uid61_block_rsrvd_fix_a;
    wire [14:0] expR_uid61_block_rsrvd_fix_b;
    logic [14:0] expR_uid61_block_rsrvd_fix_o;
    wire [13:0] expR_uid61_block_rsrvd_fix_q;
    wire [52:0] fracOYForLZC_uid62_block_rsrvd_fix_q;
    wire [51:0] addrFull_uid66_block_rsrvd_fix_in;
    wire [51:0] addrFull_uid66_block_rsrvd_fix_b;
    wire [9:0] yAddr_uid68_block_rsrvd_fix_b;
    wire [41:0] yPE_uid69_block_rsrvd_fix_in;
    wire [41:0] yPE_uid69_block_rsrvd_fix_b;
    wire [59:0] invY_uid71_block_rsrvd_fix_in;
    wire [54:0] invY_uid71_block_rsrvd_fix_b;
    wire [52:0] hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q;
    wire [0:0] fracPostNormIsNotZero_uid79_block_rsrvd_fix_q;
    wire [0:0] fracPostNormIsZero_uid80_block_rsrvd_fix_q;
    wire [0:0] divValPreNormSelect_uid81_block_rsrvd_fix_qi;
    reg [0:0] divValPreNormSelect_uid81_block_rsrvd_fix_q;
    wire [1:0] z4_uid82_block_rsrvd_fix_q;
    wire [54:0] oFracXZ4_uid83_block_rsrvd_fix_q;
    wire [0:0] divValPreNormYPow2Exc_uid85_block_rsrvd_fix_s;
    reg [54:0] divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q;
    wire [0:0] norm_uid86_block_rsrvd_fix_b;
    wire [6:0] addSubnormAdditions_uid87_block_rsrvd_fix_a;
    wire [6:0] addSubnormAdditions_uid87_block_rsrvd_fix_b;
    logic [6:0] addSubnormAdditions_uid87_block_rsrvd_fix_o;
    wire [6:0] addSubnormAdditions_uid87_block_rsrvd_fix_q;
    wire [15:0] expRPostNormHandling0_uid88_block_rsrvd_fix_a;
    wire [15:0] expRPostNormHandling0_uid88_block_rsrvd_fix_b;
    logic [15:0] expRPostNormHandling0_uid88_block_rsrvd_fix_o;
    wire [14:0] expRPostNormHandling0_uid88_block_rsrvd_fix_q;
    wire [15:0] expRPostNormHandling_uid89_block_rsrvd_fix_a;
    wire [15:0] expRPostNormHandling_uid89_block_rsrvd_fix_b;
    logic [15:0] expRPostNormHandling_uid89_block_rsrvd_fix_o;
    wire [15:0] expRPostNormHandling_uid89_block_rsrvd_fix_q;
    wire [53:0] divValPreNormHigh_uid90_block_rsrvd_fix_in;
    wire [52:0] divValPreNormHigh_uid90_block_rsrvd_fix_b;
    wire [52:0] divValPreNormLow_uid91_block_rsrvd_fix_in;
    wire [52:0] divValPreNormLow_uid91_block_rsrvd_fix_b;
    wire [0:0] normFracRnd_uid92_block_rsrvd_fix_s;
    reg [52:0] normFracRnd_uid92_block_rsrvd_fix_q;
    wire [17:0] subnormalRes_uid94_block_rsrvd_fix_a;
    wire [17:0] subnormalRes_uid94_block_rsrvd_fix_b;
    logic [17:0] subnormalRes_uid94_block_rsrvd_fix_o;
    wire [0:0] subnormalRes_uid94_block_rsrvd_fix_n;
    wire [17:0] mExpRPostNormHandling_uid95_block_rsrvd_fix_a;
    wire [17:0] mExpRPostNormHandling_uid95_block_rsrvd_fix_b;
    logic [17:0] mExpRPostNormHandling_uid95_block_rsrvd_fix_o;
    wire [16:0] mExpRPostNormHandling_uid95_block_rsrvd_fix_q;
    wire [0:0] invNorm_uid96_block_rsrvd_fix_q;
    wire [1:0] zInvNorm_uid97_block_rsrvd_fix_q;
    wire [16:0] muxNotSubnormalRightShiftValue_to17_uid98_in;
    wire [16:0] muxNotSubnormalRightShiftValue_to17_uid98_b;
    wire [0:0] rightShiftFractionValue_uid100_block_rsrvd_fix_s;
    reg [16:0] rightShiftFractionValue_uid100_block_rsrvd_fix_q;
    wire [53:0] padConst_uid101_block_rsrvd_fix_q;
    wire [108:0] rightPaddedIn_uid102_block_rsrvd_fix_q;
    wire [107:0] alignedResultFracForRnd_uid104_block_rsrvd_fix_in;
    wire [52:0] alignedResultFracForRnd_uid104_block_rsrvd_fix_b;
    wire [0:0] fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_s;
    reg [52:0] fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_q;
    wire [0:0] xMSB_uid106_block_rsrvd_fix_b;
    wire [0:0] invExpRPostNormHandlingSign_uid108_block_rsrvd_fix_q;
    wire [15:0] forwardExponentResult_uid109_block_rsrvd_fix_b;
    wire [15:0] forwardExponentResult_uid109_block_rsrvd_fix_q;
    wire [12:0] fwdExponentResult_uid110_block_rsrvd_fix_in;
    wire [12:0] fwdExponentResult_uid110_block_rsrvd_fix_b;
    wire [65:0] expFracRnd_uid111_block_rsrvd_fix_q;
    wire [67:0] expFracPostRnd_uid114_block_rsrvd_fix_a;
    wire [67:0] expFracPostRnd_uid114_block_rsrvd_fix_b;
    logic [67:0] expFracPostRnd_uid114_block_rsrvd_fix_o;
    wire [66:0] expFracPostRnd_uid114_block_rsrvd_fix_q;
    wire [52:0] fracPostRndF_uid115_block_rsrvd_fix_in;
    wire [51:0] fracPostRndF_uid115_block_rsrvd_fix_b;
    wire [63:0] expPostRndF_uid116_block_rsrvd_fix_in;
    wire [10:0] expPostRndF_uid116_block_rsrvd_fix_b;
    wire [13:0] expRExt_uid117_block_rsrvd_fix_b;
    wire [15:0] expUdf_uid118_block_rsrvd_fix_a;
    wire [15:0] expUdf_uid118_block_rsrvd_fix_b;
    logic [15:0] expUdf_uid118_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid118_block_rsrvd_fix_n;
    wire [0:0] invSubnormalRes_uid119_block_rsrvd_fix_q;
    wire [0:0] rUnderflow_uid120_block_rsrvd_fix_q;
    wire [15:0] expOvf_uid123_block_rsrvd_fix_a;
    wire [15:0] expOvf_uid123_block_rsrvd_fix_b;
    logic [15:0] expOvf_uid123_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid123_block_rsrvd_fix_n;
    wire [0:0] xRegOrSubnormal_uid124_block_rsrvd_fix_qi;
    reg [0:0] xRegOrSubnormal_uid124_block_rsrvd_fix_q;
    wire [0:0] yRegOrSubnormal_uid125_block_rsrvd_fix_qi;
    reg [0:0] yRegOrSubnormal_uid125_block_rsrvd_fix_q;
    wire [0:0] zeroOverReg_uid126_block_rsrvd_fix_q;
    wire [0:0] regOverRegWithUf_uid127_block_rsrvd_fix_q;
    wire [0:0] xRegOrZero_uid128_block_rsrvd_fix_q;
    wire [0:0] regOrZeroOverInf_uid129_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid130_block_rsrvd_fix_q;
    wire [0:0] excXRYZ_uid131_block_rsrvd_fix_q;
    wire [0:0] excXRYROvf_uid132_block_rsrvd_fix_q;
    wire [0:0] excXIYZ_uid133_block_rsrvd_fix_q;
    wire [0:0] excXIYR_uid134_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid135_block_rsrvd_fix_q;
    wire [0:0] excXZYZ_uid136_block_rsrvd_fix_q;
    wire [0:0] excXIYI_uid137_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid138_block_rsrvd_fix_qi;
    reg [0:0] excRNaN_uid138_block_rsrvd_fix_q;
    wire [2:0] concExc_uid139_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid140_block_rsrvd_fix_q;
    wire [51:0] oneFracRPostExc2_uid141_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid144_block_rsrvd_fix_s;
    reg [51:0] fracRPostExc_uid144_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid148_block_rsrvd_fix_s;
    reg [10:0] expRPostExc_uid148_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid149_block_rsrvd_fix_q;
    wire [0:0] sRPostExc_uid150_block_rsrvd_fix_qi;
    reg [0:0] sRPostExc_uid150_block_rsrvd_fix_q;
    wire [63:0] divR_uid151_block_rsrvd_fix_q;
    wire [31:0] zs_uid153_lzFracY_uid63_block_rsrvd_fix_q;
    wire [31:0] rVStage_uid154_lzFracY_uid63_block_rsrvd_fix_b;
    wire [0:0] vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q;
    wire [10:0] mO_uid156_lzFracY_uid63_block_rsrvd_fix_q;
    wire [20:0] vStage_uid157_lzFracY_uid63_block_rsrvd_fix_in;
    wire [20:0] vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b;
    wire [31:0] cStage_uid158_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_q;
    wire [15:0] zs_uid161_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_q;
    wire [7:0] zs_uid167_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vCount_uid169_lzFracY_uid63_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid169_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_q;
    wire [3:0] zs_uid173_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vCount_uid175_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_s;
    reg [3:0] vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vCount_uid181_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_s;
    reg [1:0] vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_q;
    wire [0:0] rVStage_uid186_lzFracY_uid63_block_rsrvd_fix_b;
    wire [0:0] vCount_uid187_lzFracY_uid63_block_rsrvd_fix_q;
    wire [5:0] r_uid188_lzFracY_uid63_block_rsrvd_fix_q;
    wire [59:0] os_uid193_invTables_q;
    wire [48:0] os_uid198_invTables_q;
    wire [38:0] os_uid202_invTables_q;
    wire [29:0] os_uid206_invTables_q;
    wire [18:0] yT1_uid216_invPolyEval_b;
    wire [0:0] lowRangeB_uid218_invPolyEval_in;
    wire [0:0] lowRangeB_uid218_invPolyEval_b;
    wire [19:0] highBBits_uid219_invPolyEval_b;
    wire [30:0] s1sumAHighB_uid220_invPolyEval_a;
    wire [30:0] s1sumAHighB_uid220_invPolyEval_b;
    logic [30:0] s1sumAHighB_uid220_invPolyEval_o;
    wire [30:0] s1sumAHighB_uid220_invPolyEval_q;
    wire [31:0] s1_uid221_invPolyEval_q;
    wire [29:0] yT2_uid222_invPolyEval_b;
    wire [0:0] lowRangeB_uid224_invPolyEval_in;
    wire [0:0] lowRangeB_uid224_invPolyEval_b;
    wire [29:0] highBBits_uid225_invPolyEval_b;
    wire [39:0] s2sumAHighB_uid226_invPolyEval_a;
    wire [39:0] s2sumAHighB_uid226_invPolyEval_b;
    logic [39:0] s2sumAHighB_uid226_invPolyEval_o;
    wire [39:0] s2sumAHighB_uid226_invPolyEval_q;
    wire [40:0] s2_uid227_invPolyEval_q;
    wire [38:0] yT3_uid228_invPolyEval_b;
    wire [0:0] lowRangeB_uid230_invPolyEval_in;
    wire [0:0] lowRangeB_uid230_invPolyEval_b;
    wire [39:0] highBBits_uid231_invPolyEval_b;
    wire [49:0] s3sumAHighB_uid232_invPolyEval_a;
    wire [49:0] s3sumAHighB_uid232_invPolyEval_b;
    logic [49:0] s3sumAHighB_uid232_invPolyEval_o;
    wire [49:0] s3sumAHighB_uid232_invPolyEval_q;
    wire [50:0] s3_uid233_invPolyEval_q;
    wire [1:0] lowRangeB_uid236_invPolyEval_in;
    wire [1:0] lowRangeB_uid236_invPolyEval_b;
    wire [49:0] highBBits_uid237_invPolyEval_b;
    wire [60:0] s4sumAHighB_uid238_invPolyEval_a;
    wire [60:0] s4sumAHighB_uid238_invPolyEval_b;
    logic [60:0] s4sumAHighB_uid238_invPolyEval_o;
    wire [60:0] s4sumAHighB_uid238_invPolyEval_q;
    wire [62:0] s4_uid239_invPolyEval_q;
    wire [31:0] rVStage_uid242_lzoFracX_uid75_block_rsrvd_fix_b;
    wire [0:0] vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [20:0] vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_in;
    wire [20:0] vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b;
    wire [31:0] cStage_uid246_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vCount_uid263_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_s;
    reg [3:0] vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vCount_uid269_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_s;
    reg [1:0] vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [0:0] rVStage_uid274_lzoFracX_uid75_block_rsrvd_fix_b;
    wire [0:0] vCount_uid275_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [5:0] r_uid276_lzoFracX_uid75_block_rsrvd_fix_q;
    wire [26:0] topRangeX_uid288_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [26:0] topRangeY_uid289_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [25:0] aboveLeftY_bottomRange_uid292_prodDivPreNormProd_uid77_block_rsrvd_fix_in;
    wire [25:0] aboveLeftY_bottomRange_uid292_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [26:0] aboveLeftY_mergedSignalTM_uid293_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    wire [27:0] rightBottomX_uid295_prodDivPreNormProd_uid77_block_rsrvd_fix_in;
    wire [26:0] rightBottomX_uid295_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [27:0] aboveLeftX_uid297_prodDivPreNormProd_uid77_block_rsrvd_fix_in;
    wire [4:0] aboveLeftX_uid297_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [25:0] aboveLeftY_uid298_prodDivPreNormProd_uid77_block_rsrvd_fix_in;
    wire [4:0] aboveLeftY_uid298_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [0:0] rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_in;
    wire [0:0] rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [2:0] rightBottomY_uid300_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    reg [4:0] sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a0;
    reg [4:0] sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b0;
    reg [4:0] sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a1;
    reg [4:0] sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b1;
    reg [9:0] sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_s1;
    (* multstyle =  "logic" *) wire [9:0] sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_pr;
    reg [9:0] sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    reg [0:0] sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a0;
    reg [2:0] sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b0;
    reg [0:0] sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a1;
    reg [2:0] sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b1;
    reg [3:0] sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_s1;
    (* multstyle =  "logic" *) wire [3:0] sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_pr;
    reg [3:0] sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    wire [63:0] sumAb_uid306_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    wire [64:0] lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_a;
    wire [64:0] lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    logic [64:0] lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_o;
    wire [64:0] lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    wire [81:0] lev1_a0_uid310_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    wire [59:0] lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_a;
    wire [59:0] lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    logic [59:0] lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_o;
    wire [59:0] lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    wire [82:0] lev2_a0_uid314_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    wire [80:0] os_uid315_prodDivPreNormProd_uid77_block_rsrvd_fix_in;
    wire [54:0] os_uid315_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    wire [20:0] osig_uid318_pT1_uid217_invPolyEval_b;
    wire [30:0] nx_mergedSignalTM_uid332_pT2_uid223_invPolyEval_q;
    wire [17:0] aboveLeftY_mergedSignalTM_uid339_pT2_uid223_invPolyEval_q;
    wire [4:0] rightBottomX_bottomExtension_uid341_pT2_uid223_invPolyEval_q;
    wire [17:0] rightBottomX_mergedSignalTM_uid343_pT2_uid223_invPolyEval_q;
    wire [17:0] lowRangeB_uid349_pT2_uid223_invPolyEval_in;
    wire [17:0] lowRangeB_uid349_pT2_uid223_invPolyEval_b;
    wire [18:0] highBBits_uid350_pT2_uid223_invPolyEval_b;
    wire [36:0] lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_a;
    wire [36:0] lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_b;
    logic [36:0] lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_o;
    wire [36:0] lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_q;
    wire [54:0] lev1_a0_uid352_pT2_uid223_invPolyEval_q;
    wire [52:0] os_uid353_pT2_uid223_invPolyEval_in;
    wire [30:0] os_uid353_pT2_uid223_invPolyEval_b;
    wire [39:0] nx_mergedSignalTM_uid367_pT3_uid229_invPolyEval_q;
    wire [26:0] topRangeX_uid369_pT3_uid229_invPolyEval_b;
    wire [26:0] topRangeY_uid370_pT3_uid229_invPolyEval_b;
    wire [17:0] aboveLeftX_uid371_pT3_uid229_invPolyEval_b;
    wire [13:0] aboveLeftY_bottomRange_uid373_pT3_uid229_invPolyEval_in;
    wire [13:0] aboveLeftY_bottomRange_uid373_pT3_uid229_invPolyEval_b;
    wire [17:0] aboveLeftY_mergedSignalTM_uid374_pT3_uid229_invPolyEval_q;
    wire [12:0] rightBottomX_bottomRange_uid377_pT3_uid229_invPolyEval_in;
    wire [12:0] rightBottomX_bottomRange_uid377_pT3_uid229_invPolyEval_b;
    wire [17:0] rightBottomX_mergedSignalTM_uid378_pT3_uid229_invPolyEval_q;
    wire [17:0] rightBottomY_uid380_pT3_uid229_invPolyEval_b;
    wire [8:0] lowRangeB_uid384_pT3_uid229_invPolyEval_in;
    wire [8:0] lowRangeB_uid384_pT3_uid229_invPolyEval_b;
    wire [27:0] highBBits_uid385_pT3_uid229_invPolyEval_b;
    wire [54:0] lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_a;
    wire [54:0] lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_b;
    logic [54:0] lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_o;
    wire [54:0] lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_q;
    wire [63:0] lev1_a0_uid387_pT3_uid229_invPolyEval_q;
    wire [61:0] os_uid388_pT3_uid229_invPolyEval_in;
    wire [40:0] os_uid388_pT3_uid229_invPolyEval_b;
    wire [42:0] nx_mergedSignalTM_uid402_pT4_uid235_invPolyEval_q;
    wire [26:0] topRangeX_uid404_pT4_uid235_invPolyEval_b;
    wire [26:0] topRangeY_uid405_pT4_uid235_invPolyEval_b;
    wire [2:0] aboveLeftY_bottomExtension_uid407_pT4_uid235_invPolyEval_q;
    wire [23:0] aboveLeftY_bottomRange_uid408_pT4_uid235_invPolyEval_in;
    wire [23:0] aboveLeftY_bottomRange_uid408_pT4_uid235_invPolyEval_b;
    wire [26:0] aboveLeftY_mergedSignalTM_uid409_pT4_uid235_invPolyEval_q;
    wire [15:0] rightBottomX_bottomRange_uid412_pT4_uid235_invPolyEval_in;
    wire [15:0] rightBottomX_bottomRange_uid412_pT4_uid235_invPolyEval_b;
    wire [26:0] rightBottomX_mergedSignalTM_uid413_pT4_uid235_invPolyEval_q;
    wire [15:0] aboveLeftX_uid416_pT4_uid235_invPolyEval_in;
    wire [1:0] aboveLeftX_uid416_pT4_uid235_invPolyEval_b;
    wire [23:0] aboveLeftY_uid417_pT4_uid235_invPolyEval_in;
    wire [1:0] aboveLeftY_uid417_pT4_uid235_invPolyEval_b;
    reg [1:0] sm0_uid421_pT4_uid235_invPolyEval_a0;
    reg [1:0] sm0_uid421_pT4_uid235_invPolyEval_b0;
    reg [1:0] sm0_uid421_pT4_uid235_invPolyEval_a1;
    reg [1:0] sm0_uid421_pT4_uid235_invPolyEval_b1;
    reg [3:0] sm0_uid421_pT4_uid235_invPolyEval_s1;
    (* multstyle =  "logic" *) wire [3:0] sm0_uid421_pT4_uid235_invPolyEval_pr;
    reg [3:0] sm0_uid421_pT4_uid235_invPolyEval_q;
    wire [57:0] sumAb_uid422_pT4_uid235_invPolyEval_q;
    wire [22:0] lowRangeB_uid423_pT4_uid235_invPolyEval_in;
    wire [22:0] lowRangeB_uid423_pT4_uid235_invPolyEval_b;
    wire [31:0] highBBits_uid424_pT4_uid235_invPolyEval_b;
    wire [58:0] lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_a;
    wire [58:0] lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_b;
    logic [58:0] lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_o;
    wire [58:0] lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_q;
    wire [81:0] lev1_a0_uid426_pT4_uid235_invPolyEval_q;
    wire [79:0] os_uid427_pT4_uid235_invPolyEval_in;
    wire [51:0] os_uid427_pT4_uid235_invPolyEval_b;
    wire [36:0] leftShiftStage0Idx1Rng16_uid432_normY_uid64_block_rsrvd_fix_in;
    wire [36:0] leftShiftStage0Idx1Rng16_uid432_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage0Idx1_uid433_normY_uid64_block_rsrvd_fix_q;
    wire [52:0] leftShiftStage0Idx2_uid436_normY_uid64_block_rsrvd_fix_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid437_normY_uid64_block_rsrvd_fix_q;
    wire [4:0] leftShiftStage0Idx3Rng48_uid438_normY_uid64_block_rsrvd_fix_in;
    wire [4:0] leftShiftStage0Idx3Rng48_uid438_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage0Idx3_uid439_normY_uid64_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q;
    wire [48:0] leftShiftStage1Idx1Rng4_uid443_normY_uid64_block_rsrvd_fix_in;
    wire [48:0] leftShiftStage1Idx1Rng4_uid443_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx1_uid444_normY_uid64_block_rsrvd_fix_q;
    wire [44:0] leftShiftStage1Idx2Rng8_uid446_normY_uid64_block_rsrvd_fix_in;
    wire [44:0] leftShiftStage1Idx2Rng8_uid446_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx2_uid447_normY_uid64_block_rsrvd_fix_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid448_normY_uid64_block_rsrvd_fix_q;
    wire [40:0] leftShiftStage1Idx3Rng12_uid449_normY_uid64_block_rsrvd_fix_in;
    wire [40:0] leftShiftStage1Idx3Rng12_uid449_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx3_uid450_normY_uid64_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q;
    wire [51:0] leftShiftStage2Idx1Rng1_uid454_normY_uid64_block_rsrvd_fix_in;
    wire [51:0] leftShiftStage2Idx1Rng1_uid454_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx1_uid455_normY_uid64_block_rsrvd_fix_q;
    wire [50:0] leftShiftStage2Idx2Rng2_uid457_normY_uid64_block_rsrvd_fix_in;
    wire [50:0] leftShiftStage2Idx2Rng2_uid457_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx2_uid458_normY_uid64_block_rsrvd_fix_q;
    wire [49:0] leftShiftStage2Idx3Rng3_uid460_normY_uid64_block_rsrvd_fix_in;
    wire [49:0] leftShiftStage2Idx3Rng3_uid460_normY_uid64_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx3_uid461_normY_uid64_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q;
    wire [36:0] leftShiftStage0Idx1Rng16_uid468_normOFracX_uid76_block_rsrvd_fix_in;
    wire [36:0] leftShiftStage0Idx1Rng16_uid468_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage0Idx1_uid469_normOFracX_uid76_block_rsrvd_fix_q;
    wire [52:0] leftShiftStage0Idx2_uid472_normOFracX_uid76_block_rsrvd_fix_q;
    wire [4:0] leftShiftStage0Idx3Rng48_uid474_normOFracX_uid76_block_rsrvd_fix_in;
    wire [4:0] leftShiftStage0Idx3Rng48_uid474_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage0Idx3_uid475_normOFracX_uid76_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q;
    wire [48:0] leftShiftStage1Idx1Rng4_uid479_normOFracX_uid76_block_rsrvd_fix_in;
    wire [48:0] leftShiftStage1Idx1Rng4_uid479_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx1_uid480_normOFracX_uid76_block_rsrvd_fix_q;
    wire [44:0] leftShiftStage1Idx2Rng8_uid482_normOFracX_uid76_block_rsrvd_fix_in;
    wire [44:0] leftShiftStage1Idx2Rng8_uid482_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx2_uid483_normOFracX_uid76_block_rsrvd_fix_q;
    wire [40:0] leftShiftStage1Idx3Rng12_uid485_normOFracX_uid76_block_rsrvd_fix_in;
    wire [40:0] leftShiftStage1Idx3Rng12_uid485_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage1Idx3_uid486_normOFracX_uid76_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q;
    wire [51:0] leftShiftStage2Idx1Rng1_uid490_normOFracX_uid76_block_rsrvd_fix_in;
    wire [51:0] leftShiftStage2Idx1Rng1_uid490_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx1_uid491_normOFracX_uid76_block_rsrvd_fix_q;
    wire [50:0] leftShiftStage2Idx2Rng2_uid493_normOFracX_uid76_block_rsrvd_fix_in;
    wire [50:0] leftShiftStage2Idx2Rng2_uid493_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx2_uid494_normOFracX_uid76_block_rsrvd_fix_q;
    wire [49:0] leftShiftStage2Idx3Rng3_uid496_normOFracX_uid76_block_rsrvd_fix_in;
    wire [49:0] leftShiftStage2Idx3Rng3_uid496_normOFracX_uid76_block_rsrvd_fix_b;
    wire [52:0] leftShiftStage2Idx3_uid497_normOFracX_uid76_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_s;
    reg [52:0] leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q;
    wire [6:0] wIntCst_uid503_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [18:0] shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_a;
    wire [18:0] shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_b;
    logic [18:0] shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_n;
    wire [107:0] rightShiftStage0Idx1Rng1_uid505_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage0Idx1_uid507_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [106:0] rightShiftStage0Idx2Rng2_uid508_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage0Idx2_uid510_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [105:0] rightShiftStage0Idx3Rng3_uid511_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage0Idx3_uid513_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_s;
    reg [108:0] rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [104:0] rightShiftStage1Idx1Rng4_uid516_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage1Idx1_uid518_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [100:0] rightShiftStage1Idx2Rng8_uid519_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage1Idx2_uid521_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [96:0] rightShiftStage1Idx3Rng12_uid522_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage1Idx3_uid524_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_s;
    reg [108:0] rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [92:0] rightShiftStage2Idx1Rng16_uid527_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage2Idx1_uid529_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [76:0] rightShiftStage2Idx2Rng32_uid530_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage2Idx2_uid532_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [60:0] rightShiftStage2Idx3Rng48_uid533_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [108:0] rightShiftStage2Idx3_uid535_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_s;
    reg [108:0] rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [44:0] rightShiftStage3Idx1Rng64_uid538_alignedResultFraction_uid101_block_rsrvd_fix_b;
    wire [63:0] rightShiftStage3Idx1Pad64_uid539_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [108:0] rightShiftStage3Idx1_uid540_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [0:0] rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_s;
    reg [108:0] rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [108:0] zeroOutCst_uid543_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire [0:0] r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_s;
    reg [108:0] r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_q;
    wire memoryC0_uid190_invTables_lutmem_reset0;
    wire [19:0] memoryC0_uid190_invTables_lutmem_ia;
    wire [9:0] memoryC0_uid190_invTables_lutmem_aa;
    wire [9:0] memoryC0_uid190_invTables_lutmem_ab;
    wire [19:0] memoryC0_uid190_invTables_lutmem_ir;
    wire [19:0] memoryC0_uid190_invTables_lutmem_r;
    wire memoryC0_uid191_invTables_lutmem_reset0;
    wire [19:0] memoryC0_uid191_invTables_lutmem_ia;
    wire [9:0] memoryC0_uid191_invTables_lutmem_aa;
    wire [9:0] memoryC0_uid191_invTables_lutmem_ab;
    wire [19:0] memoryC0_uid191_invTables_lutmem_ir;
    wire [19:0] memoryC0_uid191_invTables_lutmem_r;
    wire memoryC0_uid192_invTables_lutmem_reset0;
    wire [19:0] memoryC0_uid192_invTables_lutmem_ia;
    wire [9:0] memoryC0_uid192_invTables_lutmem_aa;
    wire [9:0] memoryC0_uid192_invTables_lutmem_ab;
    wire [19:0] memoryC0_uid192_invTables_lutmem_ir;
    wire [19:0] memoryC0_uid192_invTables_lutmem_r;
    wire memoryC1_uid195_invTables_lutmem_reset0;
    wire [19:0] memoryC1_uid195_invTables_lutmem_ia;
    wire [9:0] memoryC1_uid195_invTables_lutmem_aa;
    wire [9:0] memoryC1_uid195_invTables_lutmem_ab;
    wire [19:0] memoryC1_uid195_invTables_lutmem_ir;
    wire [19:0] memoryC1_uid195_invTables_lutmem_r;
    wire memoryC1_uid196_invTables_lutmem_reset0;
    wire [19:0] memoryC1_uid196_invTables_lutmem_ia;
    wire [9:0] memoryC1_uid196_invTables_lutmem_aa;
    wire [9:0] memoryC1_uid196_invTables_lutmem_ab;
    wire [19:0] memoryC1_uid196_invTables_lutmem_ir;
    wire [19:0] memoryC1_uid196_invTables_lutmem_r;
    wire memoryC1_uid197_invTables_lutmem_reset0;
    wire [8:0] memoryC1_uid197_invTables_lutmem_ia;
    wire [9:0] memoryC1_uid197_invTables_lutmem_aa;
    wire [9:0] memoryC1_uid197_invTables_lutmem_ab;
    wire [8:0] memoryC1_uid197_invTables_lutmem_ir;
    wire [8:0] memoryC1_uid197_invTables_lutmem_r;
    wire memoryC2_uid200_invTables_lutmem_reset0;
    wire [19:0] memoryC2_uid200_invTables_lutmem_ia;
    wire [9:0] memoryC2_uid200_invTables_lutmem_aa;
    wire [9:0] memoryC2_uid200_invTables_lutmem_ab;
    wire [19:0] memoryC2_uid200_invTables_lutmem_ir;
    wire [19:0] memoryC2_uid200_invTables_lutmem_r;
    wire memoryC2_uid201_invTables_lutmem_reset0;
    wire [18:0] memoryC2_uid201_invTables_lutmem_ia;
    wire [9:0] memoryC2_uid201_invTables_lutmem_aa;
    wire [9:0] memoryC2_uid201_invTables_lutmem_ab;
    wire [18:0] memoryC2_uid201_invTables_lutmem_ir;
    wire [18:0] memoryC2_uid201_invTables_lutmem_r;
    wire memoryC3_uid204_invTables_lutmem_reset0;
    wire [19:0] memoryC3_uid204_invTables_lutmem_ia;
    wire [9:0] memoryC3_uid204_invTables_lutmem_aa;
    wire [9:0] memoryC3_uid204_invTables_lutmem_ab;
    wire [19:0] memoryC3_uid204_invTables_lutmem_ir;
    wire [19:0] memoryC3_uid204_invTables_lutmem_r;
    wire memoryC3_uid205_invTables_lutmem_reset0;
    wire [9:0] memoryC3_uid205_invTables_lutmem_ia;
    wire [9:0] memoryC3_uid205_invTables_lutmem_aa;
    wire [9:0] memoryC3_uid205_invTables_lutmem_ab;
    wire [9:0] memoryC3_uid205_invTables_lutmem_ir;
    wire [9:0] memoryC3_uid205_invTables_lutmem_r;
    wire memoryC4_uid208_invTables_lutmem_reset0;
    wire [18:0] memoryC4_uid208_invTables_lutmem_ia;
    wire [9:0] memoryC4_uid208_invTables_lutmem_aa;
    wire [9:0] memoryC4_uid208_invTables_lutmem_ab;
    wire [18:0] memoryC4_uid208_invTables_lutmem_ir;
    wire [18:0] memoryC4_uid208_invTables_lutmem_r;
    wire sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset;
    wire [26:0] sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a0;
    wire [26:0] sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c0;
    wire [53:0] sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s0;
    wire [53:0] sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_qq;
    wire [53:0] sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_q;
    wire sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0;
    wire sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena1;
    wire sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena2;
    wire prodXY_uid317_pT1_uid217_invPolyEval_cma_reset;
    wire [18:0] prodXY_uid317_pT1_uid217_invPolyEval_cma_a0;
    wire [18:0] prodXY_uid317_pT1_uid217_invPolyEval_cma_c0;
    wire [37:0] prodXY_uid317_pT1_uid217_invPolyEval_cma_s0;
    wire [37:0] prodXY_uid317_pT1_uid217_invPolyEval_cma_qq;
    wire [37:0] prodXY_uid317_pT1_uid217_invPolyEval_cma_q;
    wire prodXY_uid317_pT1_uid217_invPolyEval_cma_ena0;
    wire prodXY_uid317_pT1_uid217_invPolyEval_cma_ena1;
    wire prodXY_uid317_pT1_uid217_invPolyEval_cma_ena2;
    wire sm0_uid346_pT2_uid223_invPolyEval_cma_reset;
    wire [17:0] sm0_uid346_pT2_uid223_invPolyEval_cma_a0;
    wire [17:0] sm0_uid346_pT2_uid223_invPolyEval_cma_c0;
    wire [35:0] sm0_uid346_pT2_uid223_invPolyEval_cma_s0;
    wire [35:0] sm0_uid346_pT2_uid223_invPolyEval_cma_qq;
    wire [35:0] sm0_uid346_pT2_uid223_invPolyEval_cma_q;
    wire sm0_uid346_pT2_uid223_invPolyEval_cma_ena0;
    wire sm0_uid346_pT2_uid223_invPolyEval_cma_ena1;
    wire sm0_uid346_pT2_uid223_invPolyEval_cma_ena2;
    wire sm0_uid381_pT3_uid229_invPolyEval_cma_reset;
    wire [26:0] sm0_uid381_pT3_uid229_invPolyEval_cma_a0;
    wire [26:0] sm0_uid381_pT3_uid229_invPolyEval_cma_c0;
    wire [53:0] sm0_uid381_pT3_uid229_invPolyEval_cma_s0;
    wire [53:0] sm0_uid381_pT3_uid229_invPolyEval_cma_qq;
    wire [53:0] sm0_uid381_pT3_uid229_invPolyEval_cma_q;
    wire sm0_uid381_pT3_uid229_invPolyEval_cma_ena0;
    wire sm0_uid381_pT3_uid229_invPolyEval_cma_ena1;
    wire sm0_uid381_pT3_uid229_invPolyEval_cma_ena2;
    wire sm0_uid418_pT4_uid235_invPolyEval_cma_reset;
    wire [26:0] sm0_uid418_pT4_uid235_invPolyEval_cma_a0;
    wire [26:0] sm0_uid418_pT4_uid235_invPolyEval_cma_c0;
    wire [53:0] sm0_uid418_pT4_uid235_invPolyEval_cma_s0;
    wire [53:0] sm0_uid418_pT4_uid235_invPolyEval_cma_qq;
    wire [53:0] sm0_uid418_pT4_uid235_invPolyEval_cma_q;
    wire sm0_uid418_pT4_uid235_invPolyEval_cma_ena0;
    wire sm0_uid418_pT4_uid235_invPolyEval_cma_ena1;
    wire sm0_uid418_pT4_uid235_invPolyEval_cma_ena2;
    wire multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset;
    wire [26:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a0;
    wire [26:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c0;
    wire [26:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a1;
    wire [26:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c1;
    wire [54:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s0;
    wire [63:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s1;
    wire [54:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_qq;
    wire [54:0] multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_q;
    wire multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0;
    wire multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena1;
    wire multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena2;
    wire multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_reset;
    wire [17:0] multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena2;
    wire multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_reset;
    wire [17:0] multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena2;
    wire multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_reset;
    wire [26:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_a0;
    wire [26:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_c0;
    wire [26:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_a1;
    wire [26:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_c1;
    wire [54:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_s0;
    wire [63:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_s1;
    wire [54:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_qq;
    wire [54:0] multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena2;
    wire [6:0] rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_in;
    wire [1:0] rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d;
    wire [0:0] rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e;
    wire [15:0] rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_d;
    wire [17:0] topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select_b;
    wire [13:0] topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select_c;
    wire [15:0] rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_d;
    wire [16:0] lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b;
    wire [37:0] lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_c;
    wire [22:0] lowRangeA_uid311_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b;
    wire [58:0] lowRangeA_uid311_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_c;
    wire [17:0] topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select_b;
    wire [12:0] topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select_c;
    reg [16:0] redist0_lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [7:0] redist1_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [7:0] redist2_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [7:0] redist3_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [7:0] redist4_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [1:0] redist5_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d_1_q;
    reg [0:0] redist6_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e_1_q;
    reg [18:0] redist7_memoryC4_uid208_invTables_lutmem_r_1_q;
    reg [52:0] redist8_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_1_q;
    reg [51:0] redist10_os_uid427_pT4_uid235_invPolyEval_b_1_q;
    reg [40:0] redist11_os_uid388_pT3_uid229_invPolyEval_b_1_q;
    reg [0:0] redist12_rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b_1_q;
    reg [5:0] redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1_q;
    reg [0:0] redist14_vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q_1_q;
    reg [20:0] redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_q;
    reg [20:0] redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_0;
    reg [20:0] redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_1;
    reg [0:0] redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_q;
    reg [0:0] redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_delay_0;
    reg [0:0] redist17_lowRangeB_uid230_invPolyEval_b_1_q;
    reg [29:0] redist18_highBBits_uid225_invPolyEval_b_1_q;
    reg [0:0] redist19_lowRangeB_uid224_invPolyEval_b_2_q;
    reg [0:0] redist19_lowRangeB_uid224_invPolyEval_b_2_delay_0;
    reg [0:0] redist20_lowRangeB_uid218_invPolyEval_b_1_q;
    reg [5:0] redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1_q;
    reg [0:0] redist23_vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q_1_q;
    reg [20:0] redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_q;
    reg [20:0] redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_0;
    reg [20:0] redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_1;
    reg [0:0] redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_q;
    reg [0:0] redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_delay_0;
    reg [2:0] redist26_concExc_uid139_block_rsrvd_fix_q_1_q;
    reg [0:0] redist27_excRNaN_uid138_block_rsrvd_fix_q_12_q;
    reg [0:0] redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12_q;
    reg [0:0] redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12_q;
    reg [10:0] redist30_expPostRndF_uid116_block_rsrvd_fix_b_1_q;
    reg [51:0] redist31_fracPostRndF_uid115_block_rsrvd_fix_b_1_q;
    reg [12:0] redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_q;
    reg [12:0] redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_0;
    reg [12:0] redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_1;
    reg [52:0] redist33_alignedResultFracForRnd_uid104_block_rsrvd_fix_b_1_q;
    reg [0:0] redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_q;
    reg [0:0] redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_delay_0;
    reg [0:0] redist35_subnormalRes_uid94_block_rsrvd_fix_n_4_q;
    reg [52:0] redist36_normFracRnd_uid92_block_rsrvd_fix_q_2_q;
    reg [6:0] redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_q;
    reg [6:0] redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_0;
    reg [6:0] redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_1;
    reg [6:0] redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist38_norm_uid86_block_rsrvd_fix_b_1_q;
    reg [0:0] redist39_norm_uid86_block_rsrvd_fix_b_2_q;
    reg [54:0] redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_q;
    reg [54:0] redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist41_divValPreNormSelect_uid81_block_rsrvd_fix_q_25_q;
    reg [52:0] redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_q;
    reg [52:0] redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_delay_0;
    reg [54:0] redist43_invY_uid71_block_rsrvd_fix_b_1_q;
    reg [41:0] redist44_yPE_uid69_block_rsrvd_fix_b_3_q;
    reg [41:0] redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_0;
    reg [41:0] redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_1;
    reg [41:0] redist45_yPE_uid69_block_rsrvd_fix_b_7_q;
    reg [41:0] redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_0;
    reg [41:0] redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_1;
    reg [41:0] redist46_yPE_uid69_block_rsrvd_fix_b_12_q;
    reg [41:0] redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_0;
    reg [41:0] redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_1;
    reg [41:0] redist47_yPE_uid69_block_rsrvd_fix_b_17_q;
    reg [41:0] redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_0;
    reg [41:0] redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_1;
    reg [9:0] redist48_yAddr_uid68_block_rsrvd_fix_b_4_q;
    reg [9:0] redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_0;
    reg [9:0] redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_1;
    reg [9:0] redist49_yAddr_uid68_block_rsrvd_fix_b_9_q;
    reg [9:0] redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_0;
    reg [9:0] redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_1;
    reg [9:0] redist50_yAddr_uid68_block_rsrvd_fix_b_14_q;
    reg [9:0] redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_0;
    reg [9:0] redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_1;
    reg [9:0] redist51_yAddr_uid68_block_rsrvd_fix_b_19_q;
    reg [9:0] redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_0;
    reg [9:0] redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_1;
    reg [51:0] redist52_addrFull_uid66_block_rsrvd_fix_b_1_q;
    reg [52:0] redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_q;
    reg [52:0] redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist55_signR_uid57_block_rsrvd_fix_q_13_q;
    reg [0:0] redist56_excR_y_uid50_block_rsrvd_fix_q_23_q;
    reg [0:0] redist57_excN_y_uid47_block_rsrvd_fix_q_23_q;
    reg [0:0] redist58_excI_y_uid46_block_rsrvd_fix_q_23_q;
    reg [0:0] redist59_excI_y_uid46_block_rsrvd_fix_q_35_q;
    reg [0:0] redist60_excZ_y_uid45_block_rsrvd_fix_q_23_q;
    reg [0:0] redist61_excZ_y_uid45_block_rsrvd_fix_q_35_q;
    reg [0:0] redist62_excR_x_uid33_block_rsrvd_fix_q_1_q;
    reg [0:0] redist63_excI_x_uid29_block_rsrvd_fix_q_13_q;
    reg [0:0] redist64_excZ_x_uid28_block_rsrvd_fix_q_13_q;
    reg [0:0] redist65_fracYZero_uid16_block_rsrvd_fix_q_4_q;
    reg [0:0] redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist66_signY_uid15_block_rsrvd_fix_b_22_q;
    reg [10:0] redist68_expX_uid10_block_rsrvd_fix_b_1_q;
    wire redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_reset0;
    wire [52:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_ia;
    wire [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_aa;
    wire [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_ab;
    wire [52:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_iq;
    wire [52:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_q;
    wire [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_i;
    reg [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_cmpReg_q;
    wire [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_notEnable_q;
    wire [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_sticky_ena_q;
    wire [0:0] redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_enaAnd_q;
    wire redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_reset0;
    wire [5:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_ia;
    wire [4:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_aa;
    wire [4:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_ab;
    wire [5:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_iq;
    wire [5:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_q;
    wire [4:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_q;
    (* preserve *) reg [4:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i;
    (* preserve *) reg redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_eq;
    reg [4:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_wraddr_q;
    wire [5:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_last_q;
    wire [5:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmp_b;
    wire [0:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmp_q;
    (* dont_merge *) reg [0:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmpReg_q;
    wire [0:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_notEnable_q;
    wire [0:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_nor_q;
    (* dont_merge *) reg [0:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_sticky_ena_q;
    wire [0:0] redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_enaAnd_q;
    reg [52:0] redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_inputreg0_q;
    reg [41:0] redist45_yPE_uid69_block_rsrvd_fix_b_7_outputreg0_q;
    reg [41:0] redist46_yPE_uid69_block_rsrvd_fix_b_12_inputreg0_q;
    reg [41:0] redist46_yPE_uid69_block_rsrvd_fix_b_12_outputreg0_q;
    reg [41:0] redist47_yPE_uid69_block_rsrvd_fix_b_17_inputreg0_q;
    reg [41:0] redist47_yPE_uid69_block_rsrvd_fix_b_17_outputreg0_q;
    reg [9:0] redist48_yAddr_uid68_block_rsrvd_fix_b_4_inputreg0_q;
    reg [9:0] redist49_yAddr_uid68_block_rsrvd_fix_b_9_inputreg0_q;
    reg [9:0] redist49_yAddr_uid68_block_rsrvd_fix_b_9_outputreg0_q;
    reg [9:0] redist50_yAddr_uid68_block_rsrvd_fix_b_14_inputreg0_q;
    reg [9:0] redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0_q;
    reg [9:0] redist51_yAddr_uid68_block_rsrvd_fix_b_19_inputreg0_q;
    reg [9:0] redist51_yAddr_uid68_block_rsrvd_fix_b_19_outputreg0_q;
    reg [52:0] redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_inputreg0_q;
    wire redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_reset0;
    wire [12:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_ia;
    wire [1:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_aa;
    wire [1:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_ab;
    wire [12:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_iq;
    wire [12:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_q;
    wire [1:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_q;
    (* preserve *) reg [1:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_i;
    reg [1:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_wraddr_q;
    wire [2:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_last_q;
    wire [2:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmp_b;
    wire [0:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmp_q;
    (* dont_merge *) reg [0:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmpReg_q;
    wire [0:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_notEnable_q;
    wire [0:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_nor_q;
    (* dont_merge *) reg [0:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_sticky_ena_q;
    wire [0:0] redist54_expXmY_uid60_block_rsrvd_fix_q_6_enaAnd_q;
    reg [10:0] redist67_expY_uid13_block_rsrvd_fix_b_23_outputreg0_q;
    wire redist67_expY_uid13_block_rsrvd_fix_b_23_mem_reset0;
    wire [10:0] redist67_expY_uid13_block_rsrvd_fix_b_23_mem_ia;
    wire [4:0] redist67_expY_uid13_block_rsrvd_fix_b_23_mem_aa;
    wire [4:0] redist67_expY_uid13_block_rsrvd_fix_b_23_mem_ab;
    wire [10:0] redist67_expY_uid13_block_rsrvd_fix_b_23_mem_iq;
    wire [10:0] redist67_expY_uid13_block_rsrvd_fix_b_23_mem_q;
    wire [4:0] redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_q;
    (* preserve *) reg [4:0] redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i;
    (* preserve *) reg redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_eq;
    reg [4:0] redist67_expY_uid13_block_rsrvd_fix_b_23_wraddr_q;
    wire [5:0] redist67_expY_uid13_block_rsrvd_fix_b_23_mem_last_q;
    wire [5:0] redist67_expY_uid13_block_rsrvd_fix_b_23_cmp_b;
    wire [0:0] redist67_expY_uid13_block_rsrvd_fix_b_23_cmp_q;
    (* dont_merge *) reg [0:0] redist67_expY_uid13_block_rsrvd_fix_b_23_cmpReg_q;
    wire [0:0] redist67_expY_uid13_block_rsrvd_fix_b_23_notEnable_q;
    wire [0:0] redist67_expY_uid13_block_rsrvd_fix_b_23_nor_q;
    (* dont_merge *) reg [0:0] redist67_expY_uid13_block_rsrvd_fix_b_23_sticky_ena_q;
    wire [0:0] redist67_expY_uid13_block_rsrvd_fix_b_23_enaAnd_q;


    // fracY_uid14_block_rsrvd_fix(BITSELECT,13)@0
    assign fracY_uid14_block_rsrvd_fix_b = in_1[51:0];

    // paddingY_uid16_block_rsrvd_fix(CONSTANT,15)
    assign paddingY_uid16_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // fracXIsZero_uid43_block_rsrvd_fix(LOGICAL,42)@0
    assign fracXIsZero_uid43_block_rsrvd_fix_q = $unsigned(paddingY_uid16_block_rsrvd_fix_q == fracY_uid14_block_rsrvd_fix_b ? 1'b1 : 1'b0);

    // cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    assign cstAllOWE_uid19_block_rsrvd_fix_q = $unsigned(11'b11111111111);

    // expY_uid13_block_rsrvd_fix(BITSELECT,12)@0
    assign expY_uid13_block_rsrvd_fix_b = in_1[62:52];

    // expXIsMax_uid42_block_rsrvd_fix(LOGICAL,41)@0
    assign expXIsMax_uid42_block_rsrvd_fix_q = $unsigned(expY_uid13_block_rsrvd_fix_b == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // excI_y_uid46_block_rsrvd_fix(LOGICAL,45)@0 + 1
    assign excI_y_uid46_block_rsrvd_fix_qi = expXIsMax_uid42_block_rsrvd_fix_q & fracXIsZero_uid43_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_y_uid46_block_rsrvd_fix_delay ( .xin(excI_y_uid46_block_rsrvd_fix_qi), .xout(excI_y_uid46_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist58_excI_y_uid46_block_rsrvd_fix_q_23(DELAY,638)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist58_excI_y_uid46_block_rsrvd_fix_q_23 ( .xin(excI_y_uid46_block_rsrvd_fix_q), .xout(redist58_excI_y_uid46_block_rsrvd_fix_q_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracX_uid11_block_rsrvd_fix(BITSELECT,10)@22
    assign fracX_uid11_block_rsrvd_fix_b = in_0[51:0];

    // fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@22
    assign fracXIsZero_uid26_block_rsrvd_fix_q = $unsigned(paddingY_uid16_block_rsrvd_fix_q == fracX_uid11_block_rsrvd_fix_b ? 1'b1 : 1'b0);

    // expX_uid10_block_rsrvd_fix(BITSELECT,9)@22
    assign expX_uid10_block_rsrvd_fix_b = in_0[62:52];

    // expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@22
    assign expXIsMax_uid25_block_rsrvd_fix_q = $unsigned(expX_uid10_block_rsrvd_fix_b == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // excI_x_uid29_block_rsrvd_fix(LOGICAL,28)@22 + 1
    assign excI_x_uid29_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & fracXIsZero_uid26_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_x_uid29_block_rsrvd_fix_delay ( .xin(excI_x_uid29_block_rsrvd_fix_qi), .xout(excI_x_uid29_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXIYI_uid137_block_rsrvd_fix(LOGICAL,136)@23
    assign excXIYI_uid137_block_rsrvd_fix_q = excI_x_uid29_block_rsrvd_fix_q & redist58_excI_y_uid46_block_rsrvd_fix_q_23_q;

    // fracXIsNotZero_uid44_block_rsrvd_fix(LOGICAL,43)@0
    assign fracXIsNotZero_uid44_block_rsrvd_fix_q = ~ (fracXIsZero_uid43_block_rsrvd_fix_q);

    // excN_y_uid47_block_rsrvd_fix(LOGICAL,46)@0 + 1
    assign excN_y_uid47_block_rsrvd_fix_qi = expXIsMax_uid42_block_rsrvd_fix_q & fracXIsNotZero_uid44_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid47_block_rsrvd_fix_delay ( .xin(excN_y_uid47_block_rsrvd_fix_qi), .xout(excN_y_uid47_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist57_excN_y_uid47_block_rsrvd_fix_q_23(DELAY,637)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist57_excN_y_uid47_block_rsrvd_fix_q_23 ( .xin(excN_y_uid47_block_rsrvd_fix_q), .xout(redist57_excN_y_uid47_block_rsrvd_fix_q_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@22
    assign fracXIsNotZero_uid27_block_rsrvd_fix_q = ~ (fracXIsZero_uid26_block_rsrvd_fix_q);

    // excN_x_uid30_block_rsrvd_fix(LOGICAL,29)@22 + 1
    assign excN_x_uid30_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & fracXIsNotZero_uid27_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid30_block_rsrvd_fix_delay ( .xin(excN_x_uid30_block_rsrvd_fix_qi), .xout(excN_x_uid30_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    assign cstAllZWE_uid21_block_rsrvd_fix_q = $unsigned(11'b00000000000);

    // expXIsZero_uid41_block_rsrvd_fix(LOGICAL,40)@0
    assign expXIsZero_uid41_block_rsrvd_fix_q = $unsigned(expY_uid13_block_rsrvd_fix_b == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // excZ_y_uid45_block_rsrvd_fix(LOGICAL,44)@0 + 1
    assign excZ_y_uid45_block_rsrvd_fix_qi = expXIsZero_uid41_block_rsrvd_fix_q & fracXIsZero_uid43_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid45_block_rsrvd_fix_delay ( .xin(excZ_y_uid45_block_rsrvd_fix_qi), .xout(excZ_y_uid45_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist60_excZ_y_uid45_block_rsrvd_fix_q_23(DELAY,640)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist60_excZ_y_uid45_block_rsrvd_fix_q_23 ( .xin(excZ_y_uid45_block_rsrvd_fix_q), .xout(redist60_excZ_y_uid45_block_rsrvd_fix_q_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expXIsZero_uid24_block_rsrvd_fix(LOGICAL,23)@22
    assign expXIsZero_uid24_block_rsrvd_fix_q = $unsigned(expX_uid10_block_rsrvd_fix_b == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // excZ_x_uid28_block_rsrvd_fix(LOGICAL,27)@22 + 1
    assign excZ_x_uid28_block_rsrvd_fix_qi = expXIsZero_uid24_block_rsrvd_fix_q & fracXIsZero_uid26_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid28_block_rsrvd_fix_delay ( .xin(excZ_x_uid28_block_rsrvd_fix_qi), .xout(excZ_x_uid28_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXZYZ_uid136_block_rsrvd_fix(LOGICAL,135)@23
    assign excXZYZ_uid136_block_rsrvd_fix_q = excZ_x_uid28_block_rsrvd_fix_q & redist60_excZ_y_uid45_block_rsrvd_fix_q_23_q;

    // excRNaN_uid138_block_rsrvd_fix(LOGICAL,137)@23 + 1
    assign excRNaN_uid138_block_rsrvd_fix_qi = excXZYZ_uid136_block_rsrvd_fix_q | excN_x_uid30_block_rsrvd_fix_q | redist57_excN_y_uid47_block_rsrvd_fix_q_23_q | excXIYI_uid137_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRNaN_uid138_block_rsrvd_fix_delay ( .xin(excRNaN_uid138_block_rsrvd_fix_qi), .xout(excRNaN_uid138_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_excRNaN_uid138_block_rsrvd_fix_q_12(DELAY,607)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_excRNaN_uid138_block_rsrvd_fix_q_12 ( .xin(excRNaN_uid138_block_rsrvd_fix_q), .xout(redist27_excRNaN_uid138_block_rsrvd_fix_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcRNaN_uid149_block_rsrvd_fix(LOGICAL,148)@35
    assign invExcRNaN_uid149_block_rsrvd_fix_q = ~ (redist27_excRNaN_uid138_block_rsrvd_fix_q_12_q);

    // signY_uid15_block_rsrvd_fix(BITSELECT,14)@0
    assign signY_uid15_block_rsrvd_fix_b = $unsigned(in_1[63:63]);

    // redist66_signY_uid15_block_rsrvd_fix_b_22(DELAY,646)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist66_signY_uid15_block_rsrvd_fix_b_22 ( .xin(signY_uid15_block_rsrvd_fix_b), .xout(redist66_signY_uid15_block_rsrvd_fix_b_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signX_uid12_block_rsrvd_fix(BITSELECT,11)@22
    assign signX_uid12_block_rsrvd_fix_b = $unsigned(in_0[63:63]);

    // signR_uid57_block_rsrvd_fix(LOGICAL,56)@22 + 1
    assign signR_uid57_block_rsrvd_fix_qi = signX_uid12_block_rsrvd_fix_b ^ redist66_signY_uid15_block_rsrvd_fix_b_22_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signR_uid57_block_rsrvd_fix_delay ( .xin(signR_uid57_block_rsrvd_fix_qi), .xout(signR_uid57_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist55_signR_uid57_block_rsrvd_fix_q_13(DELAY,635)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist55_signR_uid57_block_rsrvd_fix_q_13 ( .xin(signR_uid57_block_rsrvd_fix_q), .xout(redist55_signR_uid57_block_rsrvd_fix_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // sRPostExc_uid150_block_rsrvd_fix(LOGICAL,149)@35 + 1
    assign sRPostExc_uid150_block_rsrvd_fix_qi = redist55_signR_uid57_block_rsrvd_fix_q_13_q & invExcRNaN_uid149_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sRPostExc_uid150_block_rsrvd_fix_delay ( .xin(sRPostExc_uid150_block_rsrvd_fix_qi), .xout(sRPostExc_uid150_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // xMSB_uid106_block_rsrvd_fix(BITSELECT,105)@31
    assign xMSB_uid106_block_rsrvd_fix_b = $unsigned(expRPostNormHandling_uid89_block_rsrvd_fix_q[15:15]);

    // invExpRPostNormHandlingSign_uid108_block_rsrvd_fix(LOGICAL,107)@31
    assign invExpRPostNormHandlingSign_uid108_block_rsrvd_fix_q = ~ (xMSB_uid106_block_rsrvd_fix_b);

    // zs_uid153_lzFracY_uid63_block_rsrvd_fix(CONSTANT,152)
    assign zs_uid153_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // invExpXIsMax_uid31_block_rsrvd_fix(LOGICAL,30)@22
    assign invExpXIsMax_uid31_block_rsrvd_fix_q = ~ (expXIsMax_uid25_block_rsrvd_fix_q);

    // InvExpXIsZero_uid32_block_rsrvd_fix(LOGICAL,31)@22
    assign InvExpXIsZero_uid32_block_rsrvd_fix_q = ~ (expXIsZero_uid24_block_rsrvd_fix_q);

    // excR_x_uid33_block_rsrvd_fix(LOGICAL,32)@22
    assign excR_x_uid33_block_rsrvd_fix_q = InvExpXIsZero_uid32_block_rsrvd_fix_q & invExpXIsMax_uid31_block_rsrvd_fix_q;

    // hiddenOnefracXForLZC_uid74_block_rsrvd_fix(BITJOIN,73)@22
    assign hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q = {excR_x_uid33_block_rsrvd_fix_q, fracX_uid11_block_rsrvd_fix_b};

    // rVStage_uid242_lzoFracX_uid75_block_rsrvd_fix(BITSELECT,241)@22
    assign rVStage_uid242_lzoFracX_uid75_block_rsrvd_fix_b = hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q[52:21];

    // vCount_uid243_lzoFracX_uid75_block_rsrvd_fix(LOGICAL,242)@22
    assign vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q = $unsigned(rVStage_uid242_lzoFracX_uid75_block_rsrvd_fix_b == zs_uid153_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2(DELAY,596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_delay_0 <= $unsigned(vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q);
            redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_q <= redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // zs_uid161_lzFracY_uid63_block_rsrvd_fix(CONSTANT,160)
    assign zs_uid161_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // vStage_uid245_lzoFracX_uid75_block_rsrvd_fix(BITSELECT,244)@22
    assign vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_in = hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q[20:0];
    assign vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b = vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_in[20:0];

    // mO_uid156_lzFracY_uid63_block_rsrvd_fix(CONSTANT,155)
    assign mO_uid156_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(11'b11111111111);

    // cStage_uid246_lzoFracX_uid75_block_rsrvd_fix(BITJOIN,245)@22
    assign cStage_uid246_lzoFracX_uid75_block_rsrvd_fix_q = {vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b, mO_uid156_lzFracY_uid63_block_rsrvd_fix_q};

    // vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix(MUX,247)@22 + 1
    assign vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_s = vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_s)
                1'b0 : vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_q <= rVStage_uid242_lzoFracX_uid75_block_rsrvd_fix_b;
                1'b1 : vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_q <= cStage_uid246_lzoFracX_uid75_block_rsrvd_fix_q;
                default : vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,572)@23
    assign rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b = vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_q[31:16];
    assign rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c = vStagei_uid248_lzoFracX_uid75_block_rsrvd_fix_q[15:0];

    // vCount_uid251_lzoFracX_uid75_block_rsrvd_fix(LOGICAL,250)@23
    assign vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q = $unsigned(rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b == zs_uid161_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist14_vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q_1(DELAY,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist14_vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q);
        end
    end

    // zs_uid167_lzFracY_uid63_block_rsrvd_fix(CONSTANT,166)
    assign zs_uid167_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix(MUX,253)@23
    assign vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_s = vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q;
    always @(vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_s or rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b or rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_s)
            1'b0 : vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_q = rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_q = rVStage_uid250_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_q = 16'b0;
        endcase
    end

    // rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,573)@23
    assign rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b = vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_q[15:8];
    assign rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c = vStagei_uid254_lzoFracX_uid75_block_rsrvd_fix_q[7:0];

    // vCount_uid257_lzoFracX_uid75_block_rsrvd_fix(LOGICAL,256)@23 + 1
    assign vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_qi = $unsigned(rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b == zs_uid167_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_delay ( .xin(vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_qi), .xout(vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zs_uid173_lzFracY_uid63_block_rsrvd_fix(CONSTANT,172)
    assign zs_uid173_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(4'b0000);

    // redist2_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c_1(DELAY,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist1_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b_1(DELAY,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist1_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix(MUX,259)@24
    assign vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_s = vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_q;
    always @(vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_s or redist1_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b_1_q or redist2_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_s)
            1'b0 : vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_q = redist1_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_q = redist2_rVStage_uid256_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,574)@24
    assign rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b = vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_q[7:4];
    assign rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c = vStagei_uid260_lzoFracX_uid75_block_rsrvd_fix_q[3:0];

    // vCount_uid263_lzoFracX_uid75_block_rsrvd_fix(LOGICAL,262)@24
    assign vCount_uid263_lzoFracX_uid75_block_rsrvd_fix_q = $unsigned(rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b == zs_uid173_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // z4_uid82_block_rsrvd_fix(CONSTANT,81)
    assign z4_uid82_block_rsrvd_fix_q = $unsigned(2'b00);

    // vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix(MUX,265)@24
    assign vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_s = vCount_uid263_lzoFracX_uid75_block_rsrvd_fix_q;
    always @(vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_s or rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b or rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_s)
            1'b0 : vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_q = rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_q = rVStage_uid262_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_q = 4'b0;
        endcase
    end

    // rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,575)@24
    assign rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b = vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_q[3:2];
    assign rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c = vStagei_uid266_lzoFracX_uid75_block_rsrvd_fix_q[1:0];

    // vCount_uid269_lzoFracX_uid75_block_rsrvd_fix(LOGICAL,268)@24
    assign vCount_uid269_lzoFracX_uid75_block_rsrvd_fix_q = $unsigned(rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b == z4_uid82_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix(MUX,271)@24
    assign vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_s = vCount_uid269_lzoFracX_uid75_block_rsrvd_fix_q;
    always @(vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_s or rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b or rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_s)
            1'b0 : vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_q = rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_q = rVStage_uid268_lzoFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // rVStage_uid274_lzoFracX_uid75_block_rsrvd_fix(BITSELECT,273)@24
    assign rVStage_uid274_lzoFracX_uid75_block_rsrvd_fix_b = vStagei_uid272_lzoFracX_uid75_block_rsrvd_fix_q[1:1];

    // vCount_uid275_lzoFracX_uid75_block_rsrvd_fix(LOGICAL,274)@24
    assign vCount_uid275_lzoFracX_uid75_block_rsrvd_fix_q = $unsigned(rVStage_uid274_lzoFracX_uid75_block_rsrvd_fix_b == GND_q ? 1'b1 : 1'b0);

    // r_uid276_lzoFracX_uid75_block_rsrvd_fix(BITJOIN,275)@24
    assign r_uid276_lzoFracX_uid75_block_rsrvd_fix_q = {redist16_vCount_uid243_lzoFracX_uid75_block_rsrvd_fix_q_2_q, redist14_vCount_uid251_lzoFracX_uid75_block_rsrvd_fix_q_1_q, vCount_uid257_lzoFracX_uid75_block_rsrvd_fix_q, vCount_uid263_lzoFracX_uid75_block_rsrvd_fix_q, vCount_uid269_lzoFracX_uid75_block_rsrvd_fix_q, vCount_uid275_lzoFracX_uid75_block_rsrvd_fix_q};

    // redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1(DELAY,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1_q <= $unsigned(r_uid276_lzoFracX_uid75_block_rsrvd_fix_q);
        end
    end

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_notEnable(LOGICAL,663)
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_nor(LOGICAL,664)
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_nor_q = ~ (redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_notEnable_q | redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_sticky_ena_q);

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_last(CONSTANT,660)
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_last_q = $unsigned(6'b010011);

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmp(LOGICAL,661)
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmp_b = {1'b0, redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_q};
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmp_q = $unsigned(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_last_q == redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmp_b ? 1'b1 : 1'b0);

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmpReg(REG,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmpReg_q <= $unsigned(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmp_q);
        end
    end

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_sticky_ena(REG,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_nor_q == 1'b1)
        begin
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_sticky_ena_q <= $unsigned(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_cmpReg_q);
        end
    end

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_enaAnd(LOGICAL,666)
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_enaAnd_q = redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_sticky_ena_q & VCC_q;

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt(COUNTER,658)
    // low=0, high=20, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i <= 5'd0;
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i == 5'd19)
            begin
                redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_eq <= 1'b0;
            end
            if (redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_eq == 1'b1)
            begin
                redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i <= $unsigned(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i) + $unsigned(5'd12);
            end
            else
            begin
                redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i <= $unsigned(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_q = redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_i[4:0];

    // invExpXIsMax_uid48_block_rsrvd_fix(LOGICAL,47)@0
    assign invExpXIsMax_uid48_block_rsrvd_fix_q = ~ (expXIsMax_uid42_block_rsrvd_fix_q);

    // InvExpXIsZero_uid49_block_rsrvd_fix(LOGICAL,48)@0
    assign InvExpXIsZero_uid49_block_rsrvd_fix_q = ~ (expXIsZero_uid41_block_rsrvd_fix_q);

    // excR_y_uid50_block_rsrvd_fix(LOGICAL,49)@0
    assign excR_y_uid50_block_rsrvd_fix_q = InvExpXIsZero_uid49_block_rsrvd_fix_q & invExpXIsMax_uid48_block_rsrvd_fix_q;

    // fracOYForLZC_uid62_block_rsrvd_fix(BITJOIN,61)@0
    assign fracOYForLZC_uid62_block_rsrvd_fix_q = {excR_y_uid50_block_rsrvd_fix_q, fracY_uid14_block_rsrvd_fix_b};

    // rVStage_uid154_lzFracY_uid63_block_rsrvd_fix(BITSELECT,153)@0
    assign rVStage_uid154_lzFracY_uid63_block_rsrvd_fix_b = fracOYForLZC_uid62_block_rsrvd_fix_q[52:21];

    // vCount_uid155_lzFracY_uid63_block_rsrvd_fix(LOGICAL,154)@0
    assign vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(rVStage_uid154_lzFracY_uid63_block_rsrvd_fix_b == zs_uid153_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2(DELAY,605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_delay_0 <= $unsigned(vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q);
            redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_q <= redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // vStage_uid157_lzFracY_uid63_block_rsrvd_fix(BITSELECT,156)@0
    assign vStage_uid157_lzFracY_uid63_block_rsrvd_fix_in = fracOYForLZC_uid62_block_rsrvd_fix_q[20:0];
    assign vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b = vStage_uid157_lzFracY_uid63_block_rsrvd_fix_in[20:0];

    // cStage_uid158_lzFracY_uid63_block_rsrvd_fix(BITJOIN,157)@0
    assign cStage_uid158_lzFracY_uid63_block_rsrvd_fix_q = {vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b, mO_uid156_lzFracY_uid63_block_rsrvd_fix_q};

    // vStagei_uid160_lzFracY_uid63_block_rsrvd_fix(MUX,159)@0 + 1
    assign vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_s = vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_s)
                1'b0 : vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid154_lzFracY_uid63_block_rsrvd_fix_b;
                1'b1 : vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_q <= cStage_uid158_lzFracY_uid63_block_rsrvd_fix_q;
                default : vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,566)@1
    assign rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_q[31:16];
    assign rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c = vStagei_uid160_lzFracY_uid63_block_rsrvd_fix_q[15:0];

    // vCount_uid163_lzFracY_uid63_block_rsrvd_fix(LOGICAL,162)@1
    assign vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b == zs_uid161_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist23_vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q_1(DELAY,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist23_vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q);
        end
    end

    // vStagei_uid166_lzFracY_uid63_block_rsrvd_fix(MUX,165)@1
    assign vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_s = vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q;
    always @(vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_s or rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b or rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_s)
            1'b0 : vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_q = rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_q = rVStage_uid162_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_q = 16'b0;
        endcase
    end

    // rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,567)@1
    assign rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_q[15:8];
    assign rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c = vStagei_uid166_lzFracY_uid63_block_rsrvd_fix_q[7:0];

    // vCount_uid169_lzFracY_uid63_block_rsrvd_fix(LOGICAL,168)@1 + 1
    assign vCount_uid169_lzFracY_uid63_block_rsrvd_fix_qi = $unsigned(rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b == zs_uid167_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid169_lzFracY_uid63_block_rsrvd_fix_delay ( .xin(vCount_uid169_lzFracY_uid63_block_rsrvd_fix_qi), .xout(vCount_uid169_lzFracY_uid63_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c_1(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist4_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist3_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b_1(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist3_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid172_lzFracY_uid63_block_rsrvd_fix(MUX,171)@2
    assign vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_s = vCount_uid169_lzFracY_uid63_block_rsrvd_fix_q;
    always @(vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_s or redist3_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b_1_q or redist4_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_s)
            1'b0 : vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_q = redist3_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_q = redist4_rVStage_uid168_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,568)@2
    assign rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_q[7:4];
    assign rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c = vStagei_uid172_lzFracY_uid63_block_rsrvd_fix_q[3:0];

    // vCount_uid175_lzFracY_uid63_block_rsrvd_fix(LOGICAL,174)@2
    assign vCount_uid175_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b == zs_uid173_lzFracY_uid63_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid178_lzFracY_uid63_block_rsrvd_fix(MUX,177)@2
    assign vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_s = vCount_uid175_lzFracY_uid63_block_rsrvd_fix_q;
    always @(vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_s or rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b or rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_s)
            1'b0 : vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_q = rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_q = rVStage_uid174_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_q = 4'b0;
        endcase
    end

    // rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,569)@2
    assign rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_q[3:2];
    assign rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c = vStagei_uid178_lzFracY_uid63_block_rsrvd_fix_q[1:0];

    // vCount_uid181_lzFracY_uid63_block_rsrvd_fix(LOGICAL,180)@2
    assign vCount_uid181_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b == z4_uid82_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid184_lzFracY_uid63_block_rsrvd_fix(MUX,183)@2
    assign vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_s = vCount_uid181_lzFracY_uid63_block_rsrvd_fix_q;
    always @(vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_s or rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b or rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_s)
            1'b0 : vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_q = rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_q = rVStage_uid180_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // rVStage_uid186_lzFracY_uid63_block_rsrvd_fix(BITSELECT,185)@2
    assign rVStage_uid186_lzFracY_uid63_block_rsrvd_fix_b = vStagei_uid184_lzFracY_uid63_block_rsrvd_fix_q[1:1];

    // vCount_uid187_lzFracY_uid63_block_rsrvd_fix(LOGICAL,186)@2
    assign vCount_uid187_lzFracY_uid63_block_rsrvd_fix_q = $unsigned(rVStage_uid186_lzFracY_uid63_block_rsrvd_fix_b == GND_q ? 1'b1 : 1'b0);

    // r_uid188_lzFracY_uid63_block_rsrvd_fix(BITJOIN,187)@2
    assign r_uid188_lzFracY_uid63_block_rsrvd_fix_q = {redist25_vCount_uid155_lzFracY_uid63_block_rsrvd_fix_q_2_q, redist23_vCount_uid163_lzFracY_uid63_block_rsrvd_fix_q_1_q, vCount_uid169_lzFracY_uid63_block_rsrvd_fix_q, vCount_uid175_lzFracY_uid63_block_rsrvd_fix_q, vCount_uid181_lzFracY_uid63_block_rsrvd_fix_q, vCount_uid187_lzFracY_uid63_block_rsrvd_fix_q};

    // redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1(DELAY,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1_q <= $unsigned(r_uid188_lzFracY_uid63_block_rsrvd_fix_q);
        end
    end

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_wraddr(REG,659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_wraddr_q <= $unsigned(5'b10100);
        end
        else
        begin
            redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_wraddr_q <= $unsigned(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_q);
        end
    end

    // redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem(DUALMEM,657)
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_ia = $unsigned(redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1_q);
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_aa = redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_wraddr_q;
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_ab = redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_rdcnt_q;
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(6),
        .widthad_a(5),
        .numwords_a(21),
        .width_b(6),
        .widthad_b(5),
        .numwords_b(21),
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
    ) redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_dmem (
        .clocken1(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_reset0),
        .clock1(clock),
        .address_a(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_aa),
        .data_a(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_ab),
        .q_b(redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_iq),
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
    assign redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_q = redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_iq[5:0];

    // addSubnormAdditions_uid87_block_rsrvd_fix(SUB,86)@25 + 1
    assign addSubnormAdditions_uid87_block_rsrvd_fix_a = {1'b0, redist22_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_23_mem_q};
    assign addSubnormAdditions_uid87_block_rsrvd_fix_b = {1'b0, redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addSubnormAdditions_uid87_block_rsrvd_fix_o <= 7'b0;
        end
        else
        begin
            addSubnormAdditions_uid87_block_rsrvd_fix_o <= $unsigned(addSubnormAdditions_uid87_block_rsrvd_fix_a) - $unsigned(addSubnormAdditions_uid87_block_rsrvd_fix_b);
        end
    end
    assign addSubnormAdditions_uid87_block_rsrvd_fix_q = addSubnormAdditions_uid87_block_rsrvd_fix_o[6:0];

    // redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5(DELAY,617)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_0 <= $unsigned(addSubnormAdditions_uid87_block_rsrvd_fix_q);
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_1 <= redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_0;
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_2 <= redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_1;
            redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_q <= redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_notEnable(LOGICAL,653)
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_nor(LOGICAL,654)
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_nor_q = ~ (redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_notEnable_q | redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_sticky_ena_q);

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_cmpReg(REG,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_sticky_ena(REG,655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_nor_q == 1'b1)
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_sticky_ena_q <= $unsigned(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_cmpReg_q);
        end
    end

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_enaAnd(LOGICAL,656)
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_enaAnd_q = redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_sticky_ena_q & VCC_q;

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt(COUNTER,650)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_i <= $unsigned(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_q = redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_i[0:0];

    // leftShiftStage2Idx3Rng3_uid496_normOFracX_uid76_block_rsrvd_fix(BITSELECT,495)@25
    assign leftShiftStage2Idx3Rng3_uid496_normOFracX_uid76_block_rsrvd_fix_in = leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q[49:0];
    assign leftShiftStage2Idx3Rng3_uid496_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage2Idx3Rng3_uid496_normOFracX_uid76_block_rsrvd_fix_in[49:0];

    // aboveLeftY_bottomExtension_uid407_pT4_uid235_invPolyEval(CONSTANT,406)
    assign aboveLeftY_bottomExtension_uid407_pT4_uid235_invPolyEval_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid497_normOFracX_uid76_block_rsrvd_fix(BITJOIN,496)@25
    assign leftShiftStage2Idx3_uid497_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage2Idx3Rng3_uid496_normOFracX_uid76_block_rsrvd_fix_b, aboveLeftY_bottomExtension_uid407_pT4_uid235_invPolyEval_q};

    // leftShiftStage2Idx2Rng2_uid493_normOFracX_uid76_block_rsrvd_fix(BITSELECT,492)@25
    assign leftShiftStage2Idx2Rng2_uid493_normOFracX_uid76_block_rsrvd_fix_in = leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q[50:0];
    assign leftShiftStage2Idx2Rng2_uid493_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage2Idx2Rng2_uid493_normOFracX_uid76_block_rsrvd_fix_in[50:0];

    // leftShiftStage2Idx2_uid494_normOFracX_uid76_block_rsrvd_fix(BITJOIN,493)@25
    assign leftShiftStage2Idx2_uid494_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage2Idx2Rng2_uid493_normOFracX_uid76_block_rsrvd_fix_b, z4_uid82_block_rsrvd_fix_q};

    // leftShiftStage2Idx1Rng1_uid490_normOFracX_uid76_block_rsrvd_fix(BITSELECT,489)@25
    assign leftShiftStage2Idx1Rng1_uid490_normOFracX_uid76_block_rsrvd_fix_in = leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q[51:0];
    assign leftShiftStage2Idx1Rng1_uid490_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage2Idx1Rng1_uid490_normOFracX_uid76_block_rsrvd_fix_in[51:0];

    // leftShiftStage2Idx1_uid491_normOFracX_uid76_block_rsrvd_fix(BITJOIN,490)@25
    assign leftShiftStage2Idx1_uid491_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage2Idx1Rng1_uid490_normOFracX_uid76_block_rsrvd_fix_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid485_normOFracX_uid76_block_rsrvd_fix(BITSELECT,484)@25
    assign leftShiftStage1Idx3Rng12_uid485_normOFracX_uid76_block_rsrvd_fix_in = leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q[40:0];
    assign leftShiftStage1Idx3Rng12_uid485_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage1Idx3Rng12_uid485_normOFracX_uid76_block_rsrvd_fix_in[40:0];

    // leftShiftStage1Idx3Pad12_uid448_normY_uid64_block_rsrvd_fix(CONSTANT,447)
    assign leftShiftStage1Idx3Pad12_uid448_normY_uid64_block_rsrvd_fix_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid486_normOFracX_uid76_block_rsrvd_fix(BITJOIN,485)@25
    assign leftShiftStage1Idx3_uid486_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage1Idx3Rng12_uid485_normOFracX_uid76_block_rsrvd_fix_b, leftShiftStage1Idx3Pad12_uid448_normY_uid64_block_rsrvd_fix_q};

    // leftShiftStage1Idx2Rng8_uid482_normOFracX_uid76_block_rsrvd_fix(BITSELECT,481)@25
    assign leftShiftStage1Idx2Rng8_uid482_normOFracX_uid76_block_rsrvd_fix_in = leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q[44:0];
    assign leftShiftStage1Idx2Rng8_uid482_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage1Idx2Rng8_uid482_normOFracX_uid76_block_rsrvd_fix_in[44:0];

    // leftShiftStage1Idx2_uid483_normOFracX_uid76_block_rsrvd_fix(BITJOIN,482)@25
    assign leftShiftStage1Idx2_uid483_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage1Idx2Rng8_uid482_normOFracX_uid76_block_rsrvd_fix_b, zs_uid167_lzFracY_uid63_block_rsrvd_fix_q};

    // leftShiftStage1Idx1Rng4_uid479_normOFracX_uid76_block_rsrvd_fix(BITSELECT,478)@25
    assign leftShiftStage1Idx1Rng4_uid479_normOFracX_uid76_block_rsrvd_fix_in = leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q[48:0];
    assign leftShiftStage1Idx1Rng4_uid479_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage1Idx1Rng4_uid479_normOFracX_uid76_block_rsrvd_fix_in[48:0];

    // leftShiftStage1Idx1_uid480_normOFracX_uid76_block_rsrvd_fix(BITJOIN,479)@25
    assign leftShiftStage1Idx1_uid480_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage1Idx1Rng4_uid479_normOFracX_uid76_block_rsrvd_fix_b, zs_uid173_lzFracY_uid63_block_rsrvd_fix_q};

    // leftShiftStage0Idx3Rng48_uid474_normOFracX_uid76_block_rsrvd_fix(BITSELECT,473)@25
    assign leftShiftStage0Idx3Rng48_uid474_normOFracX_uid76_block_rsrvd_fix_in = redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_q[4:0];
    assign leftShiftStage0Idx3Rng48_uid474_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage0Idx3Rng48_uid474_normOFracX_uid76_block_rsrvd_fix_in[4:0];

    // leftShiftStage0Idx3Pad48_uid437_normY_uid64_block_rsrvd_fix(CONSTANT,436)
    assign leftShiftStage0Idx3Pad48_uid437_normY_uid64_block_rsrvd_fix_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid475_normOFracX_uid76_block_rsrvd_fix(BITJOIN,474)@25
    assign leftShiftStage0Idx3_uid475_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage0Idx3Rng48_uid474_normOFracX_uid76_block_rsrvd_fix_b, leftShiftStage0Idx3Pad48_uid437_normY_uid64_block_rsrvd_fix_q};

    // redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3(DELAY,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_0 <= $unsigned(vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b);
            redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_1 <= redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_0;
            redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_q <= redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // leftShiftStage0Idx2_uid472_normOFracX_uid76_block_rsrvd_fix(BITJOIN,471)@25
    assign leftShiftStage0Idx2_uid472_normOFracX_uid76_block_rsrvd_fix_q = {redist15_vStage_uid245_lzoFracX_uid75_block_rsrvd_fix_b_3_q, zs_uid153_lzFracY_uid63_block_rsrvd_fix_q};

    // leftShiftStage0Idx1Rng16_uid468_normOFracX_uid76_block_rsrvd_fix(BITSELECT,467)@25
    assign leftShiftStage0Idx1Rng16_uid468_normOFracX_uid76_block_rsrvd_fix_in = redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_q[36:0];
    assign leftShiftStage0Idx1Rng16_uid468_normOFracX_uid76_block_rsrvd_fix_b = leftShiftStage0Idx1Rng16_uid468_normOFracX_uid76_block_rsrvd_fix_in[36:0];

    // leftShiftStage0Idx1_uid469_normOFracX_uid76_block_rsrvd_fix(BITJOIN,468)@25
    assign leftShiftStage0Idx1_uid469_normOFracX_uid76_block_rsrvd_fix_q = {leftShiftStage0Idx1Rng16_uid468_normOFracX_uid76_block_rsrvd_fix_b, zs_uid161_lzFracY_uid63_block_rsrvd_fix_q};

    // redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_inputreg0(DELAY,667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_inputreg0_q <= '0;
        end
        else
        begin
            redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_inputreg0_q <= $unsigned(hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q);
        end
    end

    // redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3(DELAY,622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_delay_0 <= $unsigned(redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_inputreg0_q);
            redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_q <= redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix(MUX,476)@25
    assign leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_b;
    always @(leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_s or redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_q or leftShiftStage0Idx1_uid469_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage0Idx2_uid472_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage0Idx3_uid475_normOFracX_uid76_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_s)
            2'b00 : leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q = redist42_hiddenOnefracXForLZC_uid74_block_rsrvd_fix_q_3_q;
            2'b01 : leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage0Idx1_uid469_normOFracX_uid76_block_rsrvd_fix_q;
            2'b10 : leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage0Idx2_uid472_normOFracX_uid76_block_rsrvd_fix_q;
            2'b11 : leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage0Idx3_uid475_normOFracX_uid76_block_rsrvd_fix_q;
            default : leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix(MUX,487)@25
    assign leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_c;
    always @(leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_s or leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage1Idx1_uid480_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage1Idx2_uid483_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage1Idx3_uid486_normOFracX_uid76_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_s)
            2'b00 : leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage0_uid477_normOFracX_uid76_block_rsrvd_fix_q;
            2'b01 : leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage1Idx1_uid480_normOFracX_uid76_block_rsrvd_fix_q;
            2'b10 : leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage1Idx2_uid483_normOFracX_uid76_block_rsrvd_fix_q;
            2'b11 : leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage1Idx3_uid486_normOFracX_uid76_block_rsrvd_fix_q;
            default : leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select(BITSELECT,576)@25
    assign leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_b = redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1_q[5:4];
    assign leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_c = redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1_q[3:2];
    assign leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_d = redist13_r_uid276_lzoFracX_uid75_block_rsrvd_fix_q_1_q[1:0];

    // leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix(MUX,498)@25
    assign leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid476_normOFracX_uid76_block_rsrvd_fix_merged_bit_select_d;
    always @(leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_s or leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage2Idx1_uid491_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage2Idx2_uid494_normOFracX_uid76_block_rsrvd_fix_q or leftShiftStage2Idx3_uid497_normOFracX_uid76_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_s)
            2'b00 : leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage1_uid488_normOFracX_uid76_block_rsrvd_fix_q;
            2'b01 : leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage2Idx1_uid491_normOFracX_uid76_block_rsrvd_fix_q;
            2'b10 : leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage2Idx2_uid494_normOFracX_uid76_block_rsrvd_fix_q;
            2'b11 : leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q = leftShiftStage2Idx3_uid497_normOFracX_uid76_block_rsrvd_fix_q;
            default : leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // redist8_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_1(DELAY,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist8_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_1_q <= $unsigned(leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q);
        end
    end

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_wraddr(REG,651)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_wraddr_q <= $unsigned(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_q);
        end
    end

    // redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem(DUALMEM,649)
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_ia = $unsigned(redist8_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_1_q);
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_aa = redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_wraddr_q;
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_ab = redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_rdcnt_q;
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(53),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(53),
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
    ) redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_dmem (
        .clocken1(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_aa),
        .data_a(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_ab),
        .q_b(redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_iq),
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
    assign redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_q = redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_iq[52:0];

    // oFracXZ4_uid83_block_rsrvd_fix(BITJOIN,82)@29
    assign oFracXZ4_uid83_block_rsrvd_fix_q = {redist9_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_4_mem_q, z4_uid82_block_rsrvd_fix_q};

    // rightBottomY_uid300_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,299)@26
    assign rightBottomY_uid300_prodDivPreNormProd_uid77_block_rsrvd_fix_b = redist8_leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q_1_q[52:50];

    // leftShiftStage2Idx3Rng3_uid460_normY_uid64_block_rsrvd_fix(BITSELECT,459)@3
    assign leftShiftStage2Idx3Rng3_uid460_normY_uid64_block_rsrvd_fix_in = leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q[49:0];
    assign leftShiftStage2Idx3Rng3_uid460_normY_uid64_block_rsrvd_fix_b = leftShiftStage2Idx3Rng3_uid460_normY_uid64_block_rsrvd_fix_in[49:0];

    // leftShiftStage2Idx3_uid461_normY_uid64_block_rsrvd_fix(BITJOIN,460)@3
    assign leftShiftStage2Idx3_uid461_normY_uid64_block_rsrvd_fix_q = {leftShiftStage2Idx3Rng3_uid460_normY_uid64_block_rsrvd_fix_b, aboveLeftY_bottomExtension_uid407_pT4_uid235_invPolyEval_q};

    // leftShiftStage2Idx2Rng2_uid457_normY_uid64_block_rsrvd_fix(BITSELECT,456)@3
    assign leftShiftStage2Idx2Rng2_uid457_normY_uid64_block_rsrvd_fix_in = leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q[50:0];
    assign leftShiftStage2Idx2Rng2_uid457_normY_uid64_block_rsrvd_fix_b = leftShiftStage2Idx2Rng2_uid457_normY_uid64_block_rsrvd_fix_in[50:0];

    // leftShiftStage2Idx2_uid458_normY_uid64_block_rsrvd_fix(BITJOIN,457)@3
    assign leftShiftStage2Idx2_uid458_normY_uid64_block_rsrvd_fix_q = {leftShiftStage2Idx2Rng2_uid457_normY_uid64_block_rsrvd_fix_b, z4_uid82_block_rsrvd_fix_q};

    // leftShiftStage2Idx1Rng1_uid454_normY_uid64_block_rsrvd_fix(BITSELECT,453)@3
    assign leftShiftStage2Idx1Rng1_uid454_normY_uid64_block_rsrvd_fix_in = leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q[51:0];
    assign leftShiftStage2Idx1Rng1_uid454_normY_uid64_block_rsrvd_fix_b = leftShiftStage2Idx1Rng1_uid454_normY_uid64_block_rsrvd_fix_in[51:0];

    // leftShiftStage2Idx1_uid455_normY_uid64_block_rsrvd_fix(BITJOIN,454)@3
    assign leftShiftStage2Idx1_uid455_normY_uid64_block_rsrvd_fix_q = {leftShiftStage2Idx1Rng1_uid454_normY_uid64_block_rsrvd_fix_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid449_normY_uid64_block_rsrvd_fix(BITSELECT,448)@3
    assign leftShiftStage1Idx3Rng12_uid449_normY_uid64_block_rsrvd_fix_in = leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q[40:0];
    assign leftShiftStage1Idx3Rng12_uid449_normY_uid64_block_rsrvd_fix_b = leftShiftStage1Idx3Rng12_uid449_normY_uid64_block_rsrvd_fix_in[40:0];

    // leftShiftStage1Idx3_uid450_normY_uid64_block_rsrvd_fix(BITJOIN,449)@3
    assign leftShiftStage1Idx3_uid450_normY_uid64_block_rsrvd_fix_q = {leftShiftStage1Idx3Rng12_uid449_normY_uid64_block_rsrvd_fix_b, leftShiftStage1Idx3Pad12_uid448_normY_uid64_block_rsrvd_fix_q};

    // leftShiftStage1Idx2Rng8_uid446_normY_uid64_block_rsrvd_fix(BITSELECT,445)@3
    assign leftShiftStage1Idx2Rng8_uid446_normY_uid64_block_rsrvd_fix_in = leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q[44:0];
    assign leftShiftStage1Idx2Rng8_uid446_normY_uid64_block_rsrvd_fix_b = leftShiftStage1Idx2Rng8_uid446_normY_uid64_block_rsrvd_fix_in[44:0];

    // leftShiftStage1Idx2_uid447_normY_uid64_block_rsrvd_fix(BITJOIN,446)@3
    assign leftShiftStage1Idx2_uid447_normY_uid64_block_rsrvd_fix_q = {leftShiftStage1Idx2Rng8_uid446_normY_uid64_block_rsrvd_fix_b, zs_uid167_lzFracY_uid63_block_rsrvd_fix_q};

    // leftShiftStage1Idx1Rng4_uid443_normY_uid64_block_rsrvd_fix(BITSELECT,442)@3
    assign leftShiftStage1Idx1Rng4_uid443_normY_uid64_block_rsrvd_fix_in = leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q[48:0];
    assign leftShiftStage1Idx1Rng4_uid443_normY_uid64_block_rsrvd_fix_b = leftShiftStage1Idx1Rng4_uid443_normY_uid64_block_rsrvd_fix_in[48:0];

    // leftShiftStage1Idx1_uid444_normY_uid64_block_rsrvd_fix(BITJOIN,443)@3
    assign leftShiftStage1Idx1_uid444_normY_uid64_block_rsrvd_fix_q = {leftShiftStage1Idx1Rng4_uid443_normY_uid64_block_rsrvd_fix_b, zs_uid173_lzFracY_uid63_block_rsrvd_fix_q};

    // leftShiftStage0Idx3Rng48_uid438_normY_uid64_block_rsrvd_fix(BITSELECT,437)@3
    assign leftShiftStage0Idx3Rng48_uid438_normY_uid64_block_rsrvd_fix_in = redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_q[4:0];
    assign leftShiftStage0Idx3Rng48_uid438_normY_uid64_block_rsrvd_fix_b = leftShiftStage0Idx3Rng48_uid438_normY_uid64_block_rsrvd_fix_in[4:0];

    // leftShiftStage0Idx3_uid439_normY_uid64_block_rsrvd_fix(BITJOIN,438)@3
    assign leftShiftStage0Idx3_uid439_normY_uid64_block_rsrvd_fix_q = {leftShiftStage0Idx3Rng48_uid438_normY_uid64_block_rsrvd_fix_b, leftShiftStage0Idx3Pad48_uid437_normY_uid64_block_rsrvd_fix_q};

    // redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3(DELAY,604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_0 <= $unsigned(vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b);
            redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_1 <= redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_0;
            redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_q <= redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // leftShiftStage0Idx2_uid436_normY_uid64_block_rsrvd_fix(BITJOIN,435)@3
    assign leftShiftStage0Idx2_uid436_normY_uid64_block_rsrvd_fix_q = {redist24_vStage_uid157_lzFracY_uid63_block_rsrvd_fix_b_3_q, zs_uid153_lzFracY_uid63_block_rsrvd_fix_q};

    // leftShiftStage0Idx1Rng16_uid432_normY_uid64_block_rsrvd_fix(BITSELECT,431)@3
    assign leftShiftStage0Idx1Rng16_uid432_normY_uid64_block_rsrvd_fix_in = redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_q[36:0];
    assign leftShiftStage0Idx1Rng16_uid432_normY_uid64_block_rsrvd_fix_b = leftShiftStage0Idx1Rng16_uid432_normY_uid64_block_rsrvd_fix_in[36:0];

    // leftShiftStage0Idx1_uid433_normY_uid64_block_rsrvd_fix(BITJOIN,432)@3
    assign leftShiftStage0Idx1_uid433_normY_uid64_block_rsrvd_fix_q = {leftShiftStage0Idx1Rng16_uid432_normY_uid64_block_rsrvd_fix_b, zs_uid161_lzFracY_uid63_block_rsrvd_fix_q};

    // redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_inputreg0(DELAY,680)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_inputreg0_q <= '0;
        end
        else
        begin
            redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_inputreg0_q <= $unsigned(fracOYForLZC_uid62_block_rsrvd_fix_q);
        end
    end

    // redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3(DELAY,633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_delay_0 <= $unsigned(redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_inputreg0_q);
            redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_q <= redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix(MUX,440)@3
    assign leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_b;
    always @(leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_s or redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_q or leftShiftStage0Idx1_uid433_normY_uid64_block_rsrvd_fix_q or leftShiftStage0Idx2_uid436_normY_uid64_block_rsrvd_fix_q or leftShiftStage0Idx3_uid439_normY_uid64_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_s)
            2'b00 : leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q = redist53_fracOYForLZC_uid62_block_rsrvd_fix_q_3_q;
            2'b01 : leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q = leftShiftStage0Idx1_uid433_normY_uid64_block_rsrvd_fix_q;
            2'b10 : leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q = leftShiftStage0Idx2_uid436_normY_uid64_block_rsrvd_fix_q;
            2'b11 : leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q = leftShiftStage0Idx3_uid439_normY_uid64_block_rsrvd_fix_q;
            default : leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix(MUX,451)@3
    assign leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_c;
    always @(leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_s or leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q or leftShiftStage1Idx1_uid444_normY_uid64_block_rsrvd_fix_q or leftShiftStage1Idx2_uid447_normY_uid64_block_rsrvd_fix_q or leftShiftStage1Idx3_uid450_normY_uid64_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_s)
            2'b00 : leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q = leftShiftStage0_uid441_normY_uid64_block_rsrvd_fix_q;
            2'b01 : leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q = leftShiftStage1Idx1_uid444_normY_uid64_block_rsrvd_fix_q;
            2'b10 : leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q = leftShiftStage1Idx2_uid447_normY_uid64_block_rsrvd_fix_q;
            2'b11 : leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q = leftShiftStage1Idx3_uid450_normY_uid64_block_rsrvd_fix_q;
            default : leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select(BITSELECT,570)@3
    assign leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_b = redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1_q[5:4];
    assign leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_c = redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1_q[3:2];
    assign leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_d = redist21_r_uid188_lzFracY_uid63_block_rsrvd_fix_q_1_q[1:0];

    // leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix(MUX,462)@3
    assign leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid440_normY_uid64_block_rsrvd_fix_merged_bit_select_d;
    always @(leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_s or leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q or leftShiftStage2Idx1_uid455_normY_uid64_block_rsrvd_fix_q or leftShiftStage2Idx2_uid458_normY_uid64_block_rsrvd_fix_q or leftShiftStage2Idx3_uid461_normY_uid64_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_s)
            2'b00 : leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q = leftShiftStage1_uid452_normY_uid64_block_rsrvd_fix_q;
            2'b01 : leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q = leftShiftStage2Idx1_uid455_normY_uid64_block_rsrvd_fix_q;
            2'b10 : leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q = leftShiftStage2Idx2_uid458_normY_uid64_block_rsrvd_fix_q;
            2'b11 : leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q = leftShiftStage2Idx3_uid461_normY_uid64_block_rsrvd_fix_q;
            default : leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // yPE_uid69_block_rsrvd_fix(BITSELECT,68)@3
    assign yPE_uid69_block_rsrvd_fix_in = leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q[41:0];
    assign yPE_uid69_block_rsrvd_fix_b = yPE_uid69_block_rsrvd_fix_in[41:0];

    // redist44_yPE_uid69_block_rsrvd_fix_b_3(DELAY,624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist44_yPE_uid69_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_0 <= $unsigned(yPE_uid69_block_rsrvd_fix_b);
            redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_1 <= redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_0;
            redist44_yPE_uid69_block_rsrvd_fix_b_3_q <= redist44_yPE_uid69_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // redist45_yPE_uid69_block_rsrvd_fix_b_7(DELAY,625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_0 <= '0;
            redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_1 <= '0;
            redist45_yPE_uid69_block_rsrvd_fix_b_7_q <= '0;
        end
        else
        begin
            redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_0 <= $unsigned(redist44_yPE_uid69_block_rsrvd_fix_b_3_q);
            redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_1 <= redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_0;
            redist45_yPE_uid69_block_rsrvd_fix_b_7_q <= redist45_yPE_uid69_block_rsrvd_fix_b_7_delay_1;
        end
    end

    // redist45_yPE_uid69_block_rsrvd_fix_b_7_outputreg0(DELAY,668)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_yPE_uid69_block_rsrvd_fix_b_7_outputreg0_q <= '0;
        end
        else
        begin
            redist45_yPE_uid69_block_rsrvd_fix_b_7_outputreg0_q <= $unsigned(redist45_yPE_uid69_block_rsrvd_fix_b_7_q);
        end
    end

    // redist46_yPE_uid69_block_rsrvd_fix_b_12_inputreg0(DELAY,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_yPE_uid69_block_rsrvd_fix_b_12_inputreg0_q <= '0;
        end
        else
        begin
            redist46_yPE_uid69_block_rsrvd_fix_b_12_inputreg0_q <= $unsigned(redist45_yPE_uid69_block_rsrvd_fix_b_7_outputreg0_q);
        end
    end

    // redist46_yPE_uid69_block_rsrvd_fix_b_12(DELAY,626)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_0 <= '0;
            redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_1 <= '0;
            redist46_yPE_uid69_block_rsrvd_fix_b_12_q <= '0;
        end
        else
        begin
            redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_0 <= $unsigned(redist46_yPE_uid69_block_rsrvd_fix_b_12_inputreg0_q);
            redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_1 <= redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_0;
            redist46_yPE_uid69_block_rsrvd_fix_b_12_q <= redist46_yPE_uid69_block_rsrvd_fix_b_12_delay_1;
        end
    end

    // redist46_yPE_uid69_block_rsrvd_fix_b_12_outputreg0(DELAY,670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_yPE_uid69_block_rsrvd_fix_b_12_outputreg0_q <= '0;
        end
        else
        begin
            redist46_yPE_uid69_block_rsrvd_fix_b_12_outputreg0_q <= $unsigned(redist46_yPE_uid69_block_rsrvd_fix_b_12_q);
        end
    end

    // redist47_yPE_uid69_block_rsrvd_fix_b_17_inputreg0(DELAY,671)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_yPE_uid69_block_rsrvd_fix_b_17_inputreg0_q <= '0;
        end
        else
        begin
            redist47_yPE_uid69_block_rsrvd_fix_b_17_inputreg0_q <= $unsigned(redist46_yPE_uid69_block_rsrvd_fix_b_12_outputreg0_q);
        end
    end

    // redist47_yPE_uid69_block_rsrvd_fix_b_17(DELAY,627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_0 <= '0;
            redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_1 <= '0;
            redist47_yPE_uid69_block_rsrvd_fix_b_17_q <= '0;
        end
        else
        begin
            redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_0 <= $unsigned(redist47_yPE_uid69_block_rsrvd_fix_b_17_inputreg0_q);
            redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_1 <= redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_0;
            redist47_yPE_uid69_block_rsrvd_fix_b_17_q <= redist47_yPE_uid69_block_rsrvd_fix_b_17_delay_1;
        end
    end

    // redist47_yPE_uid69_block_rsrvd_fix_b_17_outputreg0(DELAY,672)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_yPE_uid69_block_rsrvd_fix_b_17_outputreg0_q <= '0;
        end
        else
        begin
            redist47_yPE_uid69_block_rsrvd_fix_b_17_outputreg0_q <= $unsigned(redist47_yPE_uid69_block_rsrvd_fix_b_17_q);
        end
    end

    // nx_mergedSignalTM_uid402_pT4_uid235_invPolyEval(BITJOIN,401)@20
    assign nx_mergedSignalTM_uid402_pT4_uid235_invPolyEval_q = {GND_q, redist47_yPE_uid69_block_rsrvd_fix_b_17_outputreg0_q};

    // topRangeX_uid404_pT4_uid235_invPolyEval(BITSELECT,403)@20
    assign topRangeX_uid404_pT4_uid235_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid402_pT4_uid235_invPolyEval_q[42:16]);

    // yT3_uid228_invPolyEval(BITSELECT,227)@15
    assign yT3_uid228_invPolyEval_b = redist46_yPE_uid69_block_rsrvd_fix_b_12_outputreg0_q[41:3];

    // nx_mergedSignalTM_uid367_pT3_uid229_invPolyEval(BITJOIN,366)@15
    assign nx_mergedSignalTM_uid367_pT3_uid229_invPolyEval_q = {GND_q, yT3_uid228_invPolyEval_b};

    // aboveLeftX_uid371_pT3_uid229_invPolyEval(BITSELECT,370)@15
    assign aboveLeftX_uid371_pT3_uid229_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid367_pT3_uid229_invPolyEval_q[39:22]);

    // yT2_uid222_invPolyEval(BITSELECT,221)@10
    assign yT2_uid222_invPolyEval_b = redist45_yPE_uid69_block_rsrvd_fix_b_7_outputreg0_q[41:12];

    // nx_mergedSignalTM_uid332_pT2_uid223_invPolyEval(BITJOIN,331)@10
    assign nx_mergedSignalTM_uid332_pT2_uid223_invPolyEval_q = {GND_q, yT2_uid222_invPolyEval_b};

    // topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select(BITSELECT,579)@10
    assign topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select_b = $unsigned(nx_mergedSignalTM_uid332_pT2_uid223_invPolyEval_q[30:13]);
    assign topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select_c = $unsigned(nx_mergedSignalTM_uid332_pT2_uid223_invPolyEval_q[12:0]);

    // aboveLeftY_mergedSignalTM_uid339_pT2_uid223_invPolyEval(BITJOIN,338)@10
    assign aboveLeftY_mergedSignalTM_uid339_pT2_uid223_invPolyEval_q = {topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select_c, zs_uid173_lzFracY_uid63_block_rsrvd_fix_q};

    // addrFull_uid66_block_rsrvd_fix(BITSELECT,65)@3
    assign addrFull_uid66_block_rsrvd_fix_in = leftShiftStage2_uid463_normY_uid64_block_rsrvd_fix_q[51:0];
    assign addrFull_uid66_block_rsrvd_fix_b = addrFull_uid66_block_rsrvd_fix_in[51:0];

    // yAddr_uid68_block_rsrvd_fix(BITSELECT,67)@3
    assign yAddr_uid68_block_rsrvd_fix_b = addrFull_uid66_block_rsrvd_fix_b[51:42];

    // memoryC4_uid208_invTables_lutmem(DUALMEM,555)@3 + 2
    // in j@20000000
    assign memoryC4_uid208_invTables_lutmem_aa = yAddr_uid68_block_rsrvd_fix_b;
    assign memoryC4_uid208_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(19),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z208_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC4_uid208_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC4_uid208_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC4_uid208_invTables_lutmem_aa),
        .q_a(memoryC4_uid208_invTables_lutmem_ir),
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
    assign memoryC4_uid208_invTables_lutmem_r = memoryC4_uid208_invTables_lutmem_ir[18:0];

    // redist7_memoryC4_uid208_invTables_lutmem_r_1(DELAY,587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_memoryC4_uid208_invTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist7_memoryC4_uid208_invTables_lutmem_r_1_q <= $unsigned(memoryC4_uid208_invTables_lutmem_r);
        end
    end

    // yT1_uid216_invPolyEval(BITSELECT,215)@6
    assign yT1_uid216_invPolyEval_b = redist44_yPE_uid69_block_rsrvd_fix_b_3_q[41:23];

    // prodXY_uid317_pT1_uid217_invPolyEval_cma(CHAINMULTADD,557)@6 + 3
    assign prodXY_uid317_pT1_uid217_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid317_pT1_uid217_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid317_pT1_uid217_invPolyEval_cma_ena1 = prodXY_uid317_pT1_uid217_invPolyEval_cma_ena0;
    assign prodXY_uid317_pT1_uid217_invPolyEval_cma_ena2 = prodXY_uid317_pT1_uid217_invPolyEval_cma_ena0;

    assign prodXY_uid317_pT1_uid217_invPolyEval_cma_a0 = yT1_uid216_invPolyEval_b;
    assign prodXY_uid317_pT1_uid217_invPolyEval_cma_c0 = $unsigned(redist7_memoryC4_uid208_invTables_lutmem_r_1_q);
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(19),
        .ax_clock("0"),
        .ax_width(19),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(38)
    ) prodXY_uid317_pT1_uid217_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid317_pT1_uid217_invPolyEval_cma_ena2, prodXY_uid317_pT1_uid217_invPolyEval_cma_ena1, prodXY_uid317_pT1_uid217_invPolyEval_cma_ena0 }),
        .aclr({ prodXY_uid317_pT1_uid217_invPolyEval_cma_reset, prodXY_uid317_pT1_uid217_invPolyEval_cma_reset }),
        .ay(prodXY_uid317_pT1_uid217_invPolyEval_cma_a0),
        .ax(prodXY_uid317_pT1_uid217_invPolyEval_cma_c0),
        .resulta(prodXY_uid317_pT1_uid217_invPolyEval_cma_s0),
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
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid317_pT1_uid217_invPolyEval_cma_delay ( .xin(prodXY_uid317_pT1_uid217_invPolyEval_cma_s0), .xout(prodXY_uid317_pT1_uid217_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid317_pT1_uid217_invPolyEval_cma_q = $unsigned(prodXY_uid317_pT1_uid217_invPolyEval_cma_qq[37:0]);

    // osig_uid318_pT1_uid217_invPolyEval(BITSELECT,317)@9
    assign osig_uid318_pT1_uid217_invPolyEval_b = $unsigned(prodXY_uid317_pT1_uid217_invPolyEval_cma_q[37:17]);

    // highBBits_uid219_invPolyEval(BITSELECT,218)@9
    assign highBBits_uid219_invPolyEval_b = $unsigned(osig_uid318_pT1_uid217_invPolyEval_b[20:1]);

    // redist48_yAddr_uid68_block_rsrvd_fix_b_4_inputreg0(DELAY,673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_inputreg0_q <= $unsigned(yAddr_uid68_block_rsrvd_fix_b);
        end
    end

    // redist48_yAddr_uid68_block_rsrvd_fix_b_4(DELAY,628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist48_yAddr_uid68_block_rsrvd_fix_b_4_inputreg0_q);
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_1 <= redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_0;
            redist48_yAddr_uid68_block_rsrvd_fix_b_4_q <= redist48_yAddr_uid68_block_rsrvd_fix_b_4_delay_1;
        end
    end

    // memoryC3_uid205_invTables_lutmem(DUALMEM,554)@7 + 2
    // in j@20000000
    assign memoryC3_uid205_invTables_lutmem_aa = redist48_yAddr_uid68_block_rsrvd_fix_b_4_q;
    assign memoryC3_uid205_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z205_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC3_uid205_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC3_uid205_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC3_uid205_invTables_lutmem_aa),
        .q_a(memoryC3_uid205_invTables_lutmem_ir),
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
    assign memoryC3_uid205_invTables_lutmem_r = memoryC3_uid205_invTables_lutmem_ir[9:0];

    // memoryC3_uid204_invTables_lutmem(DUALMEM,553)@7 + 2
    // in j@20000000
    assign memoryC3_uid204_invTables_lutmem_aa = redist48_yAddr_uid68_block_rsrvd_fix_b_4_q;
    assign memoryC3_uid204_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z204_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC3_uid204_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC3_uid204_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC3_uid204_invTables_lutmem_aa),
        .q_a(memoryC3_uid204_invTables_lutmem_ir),
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
    assign memoryC3_uid204_invTables_lutmem_r = memoryC3_uid204_invTables_lutmem_ir[19:0];

    // os_uid206_invTables(BITJOIN,205)@9
    assign os_uid206_invTables_q = {memoryC3_uid205_invTables_lutmem_r, memoryC3_uid204_invTables_lutmem_r};

    // s1sumAHighB_uid220_invPolyEval(ADD,219)@9 + 1
    assign s1sumAHighB_uid220_invPolyEval_a = $unsigned({{1{os_uid206_invTables_q[29]}}, os_uid206_invTables_q});
    assign s1sumAHighB_uid220_invPolyEval_b = $unsigned({{11{highBBits_uid219_invPolyEval_b[19]}}, highBBits_uid219_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid220_invPolyEval_o <= 31'b0;
        end
        else
        begin
            s1sumAHighB_uid220_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid220_invPolyEval_a) + $signed(s1sumAHighB_uid220_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid220_invPolyEval_q = s1sumAHighB_uid220_invPolyEval_o[30:0];

    // lowRangeB_uid218_invPolyEval(BITSELECT,217)@9
    assign lowRangeB_uid218_invPolyEval_in = osig_uid318_pT1_uid217_invPolyEval_b[0:0];
    assign lowRangeB_uid218_invPolyEval_b = lowRangeB_uid218_invPolyEval_in[0:0];

    // redist20_lowRangeB_uid218_invPolyEval_b_1(DELAY,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_lowRangeB_uid218_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist20_lowRangeB_uid218_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid218_invPolyEval_b);
        end
    end

    // s1_uid221_invPolyEval(BITJOIN,220)@10
    assign s1_uid221_invPolyEval_q = {s1sumAHighB_uid220_invPolyEval_q, redist20_lowRangeB_uid218_invPolyEval_b_1_q};

    // topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select(BITSELECT,571)@10
    assign topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select_b = $unsigned(s1_uid221_invPolyEval_q[31:14]);
    assign topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select_c = $unsigned(s1_uid221_invPolyEval_q[13:0]);

    // rightBottomX_bottomExtension_uid341_pT2_uid223_invPolyEval(CONSTANT,340)
    assign rightBottomX_bottomExtension_uid341_pT2_uid223_invPolyEval_q = $unsigned(5'b00000);

    // rightBottomX_mergedSignalTM_uid343_pT2_uid223_invPolyEval(BITJOIN,342)@10
    assign rightBottomX_mergedSignalTM_uid343_pT2_uid223_invPolyEval_q = {topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select_c, rightBottomX_bottomExtension_uid341_pT2_uid223_invPolyEval_q};

    // multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma(CHAINMULTADD,562)@10 + 3
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena1 = multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena2 = multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid343_pT2_uid223_invPolyEval_q;
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_c0 = $unsigned(topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select_b);
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_a1 = aboveLeftY_mergedSignalTM_uid339_pT2_uid223_invPolyEval_q;
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_c1 = $unsigned(topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select_b);
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
    ) multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena2, multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena1, multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_reset, multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_s0),
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
    multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_qq[36:0]);

    // highBBits_uid350_pT2_uid223_invPolyEval(BITSELECT,349)@13
    assign highBBits_uid350_pT2_uid223_invPolyEval_b = $unsigned(multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_q[36:18]);

    // sm0_uid346_pT2_uid223_invPolyEval_cma(CHAINMULTADD,558)@10 + 3
    assign sm0_uid346_pT2_uid223_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid346_pT2_uid223_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid346_pT2_uid223_invPolyEval_cma_ena1 = sm0_uid346_pT2_uid223_invPolyEval_cma_ena0;
    assign sm0_uid346_pT2_uid223_invPolyEval_cma_ena2 = sm0_uid346_pT2_uid223_invPolyEval_cma_ena0;

    assign sm0_uid346_pT2_uid223_invPolyEval_cma_a0 = $unsigned(topRangeX_uid334_pT2_uid223_invPolyEval_merged_bit_select_b);
    assign sm0_uid346_pT2_uid223_invPolyEval_cma_c0 = $unsigned(topRangeY_uid335_pT2_uid223_invPolyEval_merged_bit_select_b);
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
    ) sm0_uid346_pT2_uid223_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid346_pT2_uid223_invPolyEval_cma_ena2, sm0_uid346_pT2_uid223_invPolyEval_cma_ena1, sm0_uid346_pT2_uid223_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid346_pT2_uid223_invPolyEval_cma_reset, sm0_uid346_pT2_uid223_invPolyEval_cma_reset }),
        .ay(sm0_uid346_pT2_uid223_invPolyEval_cma_a0),
        .ax(sm0_uid346_pT2_uid223_invPolyEval_cma_c0),
        .resulta(sm0_uid346_pT2_uid223_invPolyEval_cma_s0),
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
    sm0_uid346_pT2_uid223_invPolyEval_cma_delay ( .xin(sm0_uid346_pT2_uid223_invPolyEval_cma_s0), .xout(sm0_uid346_pT2_uid223_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid346_pT2_uid223_invPolyEval_cma_q = $unsigned(sm0_uid346_pT2_uid223_invPolyEval_cma_qq[35:0]);

    // lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval(ADD,350)@13
    assign lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_a = $unsigned({{1{sm0_uid346_pT2_uid223_invPolyEval_cma_q[35]}}, sm0_uid346_pT2_uid223_invPolyEval_cma_q});
    assign lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_b = $unsigned({{18{highBBits_uid350_pT2_uid223_invPolyEval_b[18]}}, highBBits_uid350_pT2_uid223_invPolyEval_b});
    assign lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_b));
    assign lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_q = lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_o[36:0];

    // lowRangeB_uid349_pT2_uid223_invPolyEval(BITSELECT,348)@13
    assign lowRangeB_uid349_pT2_uid223_invPolyEval_in = multSumOfTwoTS_uid347_pT2_uid223_invPolyEval_cma_q[17:0];
    assign lowRangeB_uid349_pT2_uid223_invPolyEval_b = lowRangeB_uid349_pT2_uid223_invPolyEval_in[17:0];

    // lev1_a0_uid352_pT2_uid223_invPolyEval(BITJOIN,351)@13
    assign lev1_a0_uid352_pT2_uid223_invPolyEval_q = {lev1_a0sumAHighB_uid351_pT2_uid223_invPolyEval_q, lowRangeB_uid349_pT2_uid223_invPolyEval_b};

    // os_uid353_pT2_uid223_invPolyEval(BITSELECT,352)@13
    assign os_uid353_pT2_uid223_invPolyEval_in = $unsigned(lev1_a0_uid352_pT2_uid223_invPolyEval_q[52:0]);
    assign os_uid353_pT2_uid223_invPolyEval_b = $unsigned(os_uid353_pT2_uid223_invPolyEval_in[52:22]);

    // highBBits_uid225_invPolyEval(BITSELECT,224)@13
    assign highBBits_uid225_invPolyEval_b = $unsigned(os_uid353_pT2_uid223_invPolyEval_b[30:1]);

    // redist18_highBBits_uid225_invPolyEval_b_1(DELAY,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_highBBits_uid225_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist18_highBBits_uid225_invPolyEval_b_1_q <= $unsigned(highBBits_uid225_invPolyEval_b);
        end
    end

    // redist49_yAddr_uid68_block_rsrvd_fix_b_9_inputreg0(DELAY,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_inputreg0_q <= '0;
        end
        else
        begin
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_inputreg0_q <= $unsigned(redist48_yAddr_uid68_block_rsrvd_fix_b_4_q);
        end
    end

    // redist49_yAddr_uid68_block_rsrvd_fix_b_9(DELAY,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_0 <= '0;
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_1 <= '0;
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_q <= '0;
        end
        else
        begin
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_0 <= $unsigned(redist49_yAddr_uid68_block_rsrvd_fix_b_9_inputreg0_q);
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_1 <= redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_0;
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_q <= redist49_yAddr_uid68_block_rsrvd_fix_b_9_delay_1;
        end
    end

    // redist49_yAddr_uid68_block_rsrvd_fix_b_9_outputreg0(DELAY,675)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_outputreg0_q <= '0;
        end
        else
        begin
            redist49_yAddr_uid68_block_rsrvd_fix_b_9_outputreg0_q <= $unsigned(redist49_yAddr_uid68_block_rsrvd_fix_b_9_q);
        end
    end

    // memoryC2_uid201_invTables_lutmem(DUALMEM,552)@12 + 2
    // in j@20000000
    assign memoryC2_uid201_invTables_lutmem_aa = redist49_yAddr_uid68_block_rsrvd_fix_b_9_outputreg0_q;
    assign memoryC2_uid201_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(19),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z201_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC2_uid201_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid201_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid201_invTables_lutmem_aa),
        .q_a(memoryC2_uid201_invTables_lutmem_ir),
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
    assign memoryC2_uid201_invTables_lutmem_r = memoryC2_uid201_invTables_lutmem_ir[18:0];

    // memoryC2_uid200_invTables_lutmem(DUALMEM,551)@12 + 2
    // in j@20000000
    assign memoryC2_uid200_invTables_lutmem_aa = redist49_yAddr_uid68_block_rsrvd_fix_b_9_outputreg0_q;
    assign memoryC2_uid200_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z200_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC2_uid200_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid200_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid200_invTables_lutmem_aa),
        .q_a(memoryC2_uid200_invTables_lutmem_ir),
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
    assign memoryC2_uid200_invTables_lutmem_r = memoryC2_uid200_invTables_lutmem_ir[19:0];

    // os_uid202_invTables(BITJOIN,201)@14
    assign os_uid202_invTables_q = {memoryC2_uid201_invTables_lutmem_r, memoryC2_uid200_invTables_lutmem_r};

    // s2sumAHighB_uid226_invPolyEval(ADD,225)@14 + 1
    assign s2sumAHighB_uid226_invPolyEval_a = $unsigned({{1{os_uid202_invTables_q[38]}}, os_uid202_invTables_q});
    assign s2sumAHighB_uid226_invPolyEval_b = $unsigned({{10{redist18_highBBits_uid225_invPolyEval_b_1_q[29]}}, redist18_highBBits_uid225_invPolyEval_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s2sumAHighB_uid226_invPolyEval_o <= 40'b0;
        end
        else
        begin
            s2sumAHighB_uid226_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid226_invPolyEval_a) + $signed(s2sumAHighB_uid226_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid226_invPolyEval_q = s2sumAHighB_uid226_invPolyEval_o[39:0];

    // lowRangeB_uid224_invPolyEval(BITSELECT,223)@13
    assign lowRangeB_uid224_invPolyEval_in = os_uid353_pT2_uid223_invPolyEval_b[0:0];
    assign lowRangeB_uid224_invPolyEval_b = lowRangeB_uid224_invPolyEval_in[0:0];

    // redist19_lowRangeB_uid224_invPolyEval_b_2(DELAY,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_lowRangeB_uid224_invPolyEval_b_2_delay_0 <= '0;
            redist19_lowRangeB_uid224_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist19_lowRangeB_uid224_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid224_invPolyEval_b);
            redist19_lowRangeB_uid224_invPolyEval_b_2_q <= redist19_lowRangeB_uid224_invPolyEval_b_2_delay_0;
        end
    end

    // s2_uid227_invPolyEval(BITJOIN,226)@15
    assign s2_uid227_invPolyEval_q = {s2sumAHighB_uid226_invPolyEval_q, redist19_lowRangeB_uid224_invPolyEval_b_2_q};

    // aboveLeftY_bottomRange_uid373_pT3_uid229_invPolyEval(BITSELECT,372)@15
    assign aboveLeftY_bottomRange_uid373_pT3_uid229_invPolyEval_in = $unsigned(s2_uid227_invPolyEval_q[13:0]);
    assign aboveLeftY_bottomRange_uid373_pT3_uid229_invPolyEval_b = $unsigned(aboveLeftY_bottomRange_uid373_pT3_uid229_invPolyEval_in[13:0]);

    // aboveLeftY_mergedSignalTM_uid374_pT3_uid229_invPolyEval(BITJOIN,373)@15
    assign aboveLeftY_mergedSignalTM_uid374_pT3_uid229_invPolyEval_q = {aboveLeftY_bottomRange_uid373_pT3_uid229_invPolyEval_b, zs_uid173_lzFracY_uid63_block_rsrvd_fix_q};

    // rightBottomY_uid380_pT3_uid229_invPolyEval(BITSELECT,379)@15
    assign rightBottomY_uid380_pT3_uid229_invPolyEval_b = $unsigned(s2_uid227_invPolyEval_q[40:23]);

    // rightBottomX_bottomRange_uid377_pT3_uid229_invPolyEval(BITSELECT,376)@15
    assign rightBottomX_bottomRange_uid377_pT3_uid229_invPolyEval_in = $unsigned(nx_mergedSignalTM_uid367_pT3_uid229_invPolyEval_q[12:0]);
    assign rightBottomX_bottomRange_uid377_pT3_uid229_invPolyEval_b = $unsigned(rightBottomX_bottomRange_uid377_pT3_uid229_invPolyEval_in[12:0]);

    // rightBottomX_mergedSignalTM_uid378_pT3_uid229_invPolyEval(BITJOIN,377)@15
    assign rightBottomX_mergedSignalTM_uid378_pT3_uid229_invPolyEval_q = {rightBottomX_bottomRange_uid377_pT3_uid229_invPolyEval_b, rightBottomX_bottomExtension_uid341_pT2_uid223_invPolyEval_q};

    // multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma(CHAINMULTADD,563)@15 + 3
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena1 = multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena2 = multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid378_pT3_uid229_invPolyEval_q;
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_c0 = $unsigned(rightBottomY_uid380_pT3_uid229_invPolyEval_b);
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_a1 = aboveLeftY_mergedSignalTM_uid374_pT3_uid229_invPolyEval_q;
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_c1 = $unsigned(aboveLeftX_uid371_pT3_uid229_invPolyEval_b);
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
    ) multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena2, multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena1, multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_reset, multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_s0),
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
    multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_qq[36:0]);

    // highBBits_uid385_pT3_uid229_invPolyEval(BITSELECT,384)@18
    assign highBBits_uid385_pT3_uid229_invPolyEval_b = $unsigned(multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_q[36:9]);

    // topRangeY_uid370_pT3_uid229_invPolyEval(BITSELECT,369)@15
    assign topRangeY_uid370_pT3_uid229_invPolyEval_b = $unsigned(s2_uid227_invPolyEval_q[40:14]);

    // topRangeX_uid369_pT3_uid229_invPolyEval(BITSELECT,368)@15
    assign topRangeX_uid369_pT3_uid229_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid367_pT3_uid229_invPolyEval_q[39:13]);

    // sm0_uid381_pT3_uid229_invPolyEval_cma(CHAINMULTADD,559)@15 + 3
    assign sm0_uid381_pT3_uid229_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid381_pT3_uid229_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid381_pT3_uid229_invPolyEval_cma_ena1 = sm0_uid381_pT3_uid229_invPolyEval_cma_ena0;
    assign sm0_uid381_pT3_uid229_invPolyEval_cma_ena2 = sm0_uid381_pT3_uid229_invPolyEval_cma_ena0;

    assign sm0_uid381_pT3_uid229_invPolyEval_cma_a0 = $unsigned(topRangeX_uid369_pT3_uid229_invPolyEval_b);
    assign sm0_uid381_pT3_uid229_invPolyEval_cma_c0 = $unsigned(topRangeY_uid370_pT3_uid229_invPolyEval_b);
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
    ) sm0_uid381_pT3_uid229_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid381_pT3_uid229_invPolyEval_cma_ena2, sm0_uid381_pT3_uid229_invPolyEval_cma_ena1, sm0_uid381_pT3_uid229_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid381_pT3_uid229_invPolyEval_cma_reset, sm0_uid381_pT3_uid229_invPolyEval_cma_reset }),
        .ay(sm0_uid381_pT3_uid229_invPolyEval_cma_a0),
        .ax(sm0_uid381_pT3_uid229_invPolyEval_cma_c0),
        .resulta(sm0_uid381_pT3_uid229_invPolyEval_cma_s0),
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
    sm0_uid381_pT3_uid229_invPolyEval_cma_delay ( .xin(sm0_uid381_pT3_uid229_invPolyEval_cma_s0), .xout(sm0_uid381_pT3_uid229_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid381_pT3_uid229_invPolyEval_cma_q = $unsigned(sm0_uid381_pT3_uid229_invPolyEval_cma_qq[53:0]);

    // lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval(ADD,385)@18
    assign lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_a = $unsigned({{1{sm0_uid381_pT3_uid229_invPolyEval_cma_q[53]}}, sm0_uid381_pT3_uid229_invPolyEval_cma_q});
    assign lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_b = $unsigned({{27{highBBits_uid385_pT3_uid229_invPolyEval_b[27]}}, highBBits_uid385_pT3_uid229_invPolyEval_b});
    assign lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_b));
    assign lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_q = lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_o[54:0];

    // lowRangeB_uid384_pT3_uid229_invPolyEval(BITSELECT,383)@18
    assign lowRangeB_uid384_pT3_uid229_invPolyEval_in = multSumOfTwoTS_uid382_pT3_uid229_invPolyEval_cma_q[8:0];
    assign lowRangeB_uid384_pT3_uid229_invPolyEval_b = lowRangeB_uid384_pT3_uid229_invPolyEval_in[8:0];

    // lev1_a0_uid387_pT3_uid229_invPolyEval(BITJOIN,386)@18
    assign lev1_a0_uid387_pT3_uid229_invPolyEval_q = {lev1_a0sumAHighB_uid386_pT3_uid229_invPolyEval_q, lowRangeB_uid384_pT3_uid229_invPolyEval_b};

    // os_uid388_pT3_uid229_invPolyEval(BITSELECT,387)@18
    assign os_uid388_pT3_uid229_invPolyEval_in = $unsigned(lev1_a0_uid387_pT3_uid229_invPolyEval_q[61:0]);
    assign os_uid388_pT3_uid229_invPolyEval_b = $unsigned(os_uid388_pT3_uid229_invPolyEval_in[61:21]);

    // redist11_os_uid388_pT3_uid229_invPolyEval_b_1(DELAY,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_os_uid388_pT3_uid229_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist11_os_uid388_pT3_uid229_invPolyEval_b_1_q <= $unsigned(os_uid388_pT3_uid229_invPolyEval_b);
        end
    end

    // highBBits_uid231_invPolyEval(BITSELECT,230)@19
    assign highBBits_uid231_invPolyEval_b = $unsigned(redist11_os_uid388_pT3_uid229_invPolyEval_b_1_q[40:1]);

    // redist50_yAddr_uid68_block_rsrvd_fix_b_14_inputreg0(DELAY,676)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_inputreg0_q <= '0;
        end
        else
        begin
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_inputreg0_q <= $unsigned(redist49_yAddr_uid68_block_rsrvd_fix_b_9_outputreg0_q);
        end
    end

    // redist50_yAddr_uid68_block_rsrvd_fix_b_14(DELAY,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_0 <= '0;
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_1 <= '0;
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_q <= '0;
        end
        else
        begin
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_0 <= $unsigned(redist50_yAddr_uid68_block_rsrvd_fix_b_14_inputreg0_q);
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_1 <= redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_0;
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_q <= redist50_yAddr_uid68_block_rsrvd_fix_b_14_delay_1;
        end
    end

    // redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0(DELAY,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0_q <= '0;
        end
        else
        begin
            redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0_q <= $unsigned(redist50_yAddr_uid68_block_rsrvd_fix_b_14_q);
        end
    end

    // memoryC1_uid197_invTables_lutmem(DUALMEM,550)@17 + 2
    // in j@20000000
    assign memoryC1_uid197_invTables_lutmem_aa = redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0_q;
    assign memoryC1_uid197_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(9),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z197_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC1_uid197_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid197_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid197_invTables_lutmem_aa),
        .q_a(memoryC1_uid197_invTables_lutmem_ir),
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
    assign memoryC1_uid197_invTables_lutmem_r = memoryC1_uid197_invTables_lutmem_ir[8:0];

    // memoryC1_uid196_invTables_lutmem(DUALMEM,549)@17 + 2
    // in j@20000000
    assign memoryC1_uid196_invTables_lutmem_aa = redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0_q;
    assign memoryC1_uid196_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z196_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC1_uid196_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid196_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid196_invTables_lutmem_aa),
        .q_a(memoryC1_uid196_invTables_lutmem_ir),
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
    assign memoryC1_uid196_invTables_lutmem_r = memoryC1_uid196_invTables_lutmem_ir[19:0];

    // memoryC1_uid195_invTables_lutmem(DUALMEM,548)@17 + 2
    // in j@20000000
    assign memoryC1_uid195_invTables_lutmem_aa = redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0_q;
    assign memoryC1_uid195_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z195_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC1_uid195_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid195_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid195_invTables_lutmem_aa),
        .q_a(memoryC1_uid195_invTables_lutmem_ir),
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
    assign memoryC1_uid195_invTables_lutmem_r = memoryC1_uid195_invTables_lutmem_ir[19:0];

    // os_uid198_invTables(BITJOIN,197)@19
    assign os_uid198_invTables_q = {memoryC1_uid197_invTables_lutmem_r, memoryC1_uid196_invTables_lutmem_r, memoryC1_uid195_invTables_lutmem_r};

    // s3sumAHighB_uid232_invPolyEval(ADD,231)@19 + 1
    assign s3sumAHighB_uid232_invPolyEval_a = $unsigned({{1{os_uid198_invTables_q[48]}}, os_uid198_invTables_q});
    assign s3sumAHighB_uid232_invPolyEval_b = $unsigned({{10{highBBits_uid231_invPolyEval_b[39]}}, highBBits_uid231_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s3sumAHighB_uid232_invPolyEval_o <= 50'b0;
        end
        else
        begin
            s3sumAHighB_uid232_invPolyEval_o <= $unsigned($signed(s3sumAHighB_uid232_invPolyEval_a) + $signed(s3sumAHighB_uid232_invPolyEval_b));
        end
    end
    assign s3sumAHighB_uid232_invPolyEval_q = s3sumAHighB_uid232_invPolyEval_o[49:0];

    // lowRangeB_uid230_invPolyEval(BITSELECT,229)@19
    assign lowRangeB_uid230_invPolyEval_in = redist11_os_uid388_pT3_uid229_invPolyEval_b_1_q[0:0];
    assign lowRangeB_uid230_invPolyEval_b = lowRangeB_uid230_invPolyEval_in[0:0];

    // redist17_lowRangeB_uid230_invPolyEval_b_1(DELAY,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_lowRangeB_uid230_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist17_lowRangeB_uid230_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid230_invPolyEval_b);
        end
    end

    // s3_uid233_invPolyEval(BITJOIN,232)@20
    assign s3_uid233_invPolyEval_q = {s3sumAHighB_uid232_invPolyEval_q, redist17_lowRangeB_uid230_invPolyEval_b_1_q};

    // aboveLeftY_bottomRange_uid408_pT4_uid235_invPolyEval(BITSELECT,407)@20
    assign aboveLeftY_bottomRange_uid408_pT4_uid235_invPolyEval_in = $unsigned(s3_uid233_invPolyEval_q[23:0]);
    assign aboveLeftY_bottomRange_uid408_pT4_uid235_invPolyEval_b = $unsigned(aboveLeftY_bottomRange_uid408_pT4_uid235_invPolyEval_in[23:0]);

    // aboveLeftY_mergedSignalTM_uid409_pT4_uid235_invPolyEval(BITJOIN,408)@20
    assign aboveLeftY_mergedSignalTM_uid409_pT4_uid235_invPolyEval_q = {aboveLeftY_bottomRange_uid408_pT4_uid235_invPolyEval_b, aboveLeftY_bottomExtension_uid407_pT4_uid235_invPolyEval_q};

    // topRangeY_uid405_pT4_uid235_invPolyEval(BITSELECT,404)@20
    assign topRangeY_uid405_pT4_uid235_invPolyEval_b = $unsigned(s3_uid233_invPolyEval_q[50:24]);

    // rightBottomX_bottomRange_uid412_pT4_uid235_invPolyEval(BITSELECT,411)@20
    assign rightBottomX_bottomRange_uid412_pT4_uid235_invPolyEval_in = $unsigned(nx_mergedSignalTM_uid402_pT4_uid235_invPolyEval_q[15:0]);
    assign rightBottomX_bottomRange_uid412_pT4_uid235_invPolyEval_b = $unsigned(rightBottomX_bottomRange_uid412_pT4_uid235_invPolyEval_in[15:0]);

    // rightBottomX_mergedSignalTM_uid413_pT4_uid235_invPolyEval(BITJOIN,412)@20
    assign rightBottomX_mergedSignalTM_uid413_pT4_uid235_invPolyEval_q = {rightBottomX_bottomRange_uid412_pT4_uid235_invPolyEval_b, cstAllZWE_uid21_block_rsrvd_fix_q};

    // multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma(CHAINMULTADD,564)@20 + 3
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena1 = multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena2 = multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid413_pT4_uid235_invPolyEval_q;
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_c0 = $unsigned(topRangeY_uid405_pT4_uid235_invPolyEval_b);
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_a1 = aboveLeftY_mergedSignalTM_uid409_pT4_uid235_invPolyEval_q;
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_c1 = $unsigned(topRangeX_uid404_pT4_uid235_invPolyEval_b);
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
    ) multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_DSP1 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena2, multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena1, multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_reset, multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_a1),
        .ax(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_c1),
        .chainout(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_s1),
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
    ) multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena2, multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena1, multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_reset, multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_c0),
        .chainin(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_s1),
        .resulta(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_s0),
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
    multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_qq[54:0]);

    // highBBits_uid424_pT4_uid235_invPolyEval(BITSELECT,423)@23
    assign highBBits_uid424_pT4_uid235_invPolyEval_b = $unsigned(multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_q[54:23]);

    // sm0_uid418_pT4_uid235_invPolyEval_cma(CHAINMULTADD,560)@20 + 3
    assign sm0_uid418_pT4_uid235_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid418_pT4_uid235_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid418_pT4_uid235_invPolyEval_cma_ena1 = sm0_uid418_pT4_uid235_invPolyEval_cma_ena0;
    assign sm0_uid418_pT4_uid235_invPolyEval_cma_ena2 = sm0_uid418_pT4_uid235_invPolyEval_cma_ena0;

    assign sm0_uid418_pT4_uid235_invPolyEval_cma_a0 = $unsigned(topRangeX_uid404_pT4_uid235_invPolyEval_b);
    assign sm0_uid418_pT4_uid235_invPolyEval_cma_c0 = $unsigned(topRangeY_uid405_pT4_uid235_invPolyEval_b);
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
    ) sm0_uid418_pT4_uid235_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid418_pT4_uid235_invPolyEval_cma_ena2, sm0_uid418_pT4_uid235_invPolyEval_cma_ena1, sm0_uid418_pT4_uid235_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid418_pT4_uid235_invPolyEval_cma_reset, sm0_uid418_pT4_uid235_invPolyEval_cma_reset }),
        .ay(sm0_uid418_pT4_uid235_invPolyEval_cma_a0),
        .ax(sm0_uid418_pT4_uid235_invPolyEval_cma_c0),
        .resulta(sm0_uid418_pT4_uid235_invPolyEval_cma_s0),
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
    sm0_uid418_pT4_uid235_invPolyEval_cma_delay ( .xin(sm0_uid418_pT4_uid235_invPolyEval_cma_s0), .xout(sm0_uid418_pT4_uid235_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid418_pT4_uid235_invPolyEval_cma_q = $unsigned(sm0_uid418_pT4_uid235_invPolyEval_cma_qq[53:0]);

    // aboveLeftY_uid417_pT4_uid235_invPolyEval(BITSELECT,416)@20
    assign aboveLeftY_uid417_pT4_uid235_invPolyEval_in = s3_uid233_invPolyEval_q[23:0];
    assign aboveLeftY_uid417_pT4_uid235_invPolyEval_b = aboveLeftY_uid417_pT4_uid235_invPolyEval_in[23:22];

    // aboveLeftX_uid416_pT4_uid235_invPolyEval(BITSELECT,415)@20
    assign aboveLeftX_uid416_pT4_uid235_invPolyEval_in = nx_mergedSignalTM_uid402_pT4_uid235_invPolyEval_q[15:0];
    assign aboveLeftX_uid416_pT4_uid235_invPolyEval_b = aboveLeftX_uid416_pT4_uid235_invPolyEval_in[15:14];

    // sm0_uid421_pT4_uid235_invPolyEval(MULT,420)@20 + 3
    assign sm0_uid421_pT4_uid235_invPolyEval_pr = $unsigned(sm0_uid421_pT4_uid235_invPolyEval_a1) * $unsigned(sm0_uid421_pT4_uid235_invPolyEval_b1);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid421_pT4_uid235_invPolyEval_a0 <= 2'b0;
            sm0_uid421_pT4_uid235_invPolyEval_b0 <= 2'b0;
            sm0_uid421_pT4_uid235_invPolyEval_a1 <= 2'b0;
            sm0_uid421_pT4_uid235_invPolyEval_b1 <= 2'b0;
            sm0_uid421_pT4_uid235_invPolyEval_s1 <= 4'b0;
        end
        else
        begin
            sm0_uid421_pT4_uid235_invPolyEval_a0 <= aboveLeftX_uid416_pT4_uid235_invPolyEval_b;
            sm0_uid421_pT4_uid235_invPolyEval_b0 <= aboveLeftY_uid417_pT4_uid235_invPolyEval_b;
            sm0_uid421_pT4_uid235_invPolyEval_a1 <= sm0_uid421_pT4_uid235_invPolyEval_a0;
            sm0_uid421_pT4_uid235_invPolyEval_b1 <= sm0_uid421_pT4_uid235_invPolyEval_b0;
            sm0_uid421_pT4_uid235_invPolyEval_s1 <= sm0_uid421_pT4_uid235_invPolyEval_pr;
        end
    end
    assign sm0_uid421_pT4_uid235_invPolyEval_q = sm0_uid421_pT4_uid235_invPolyEval_s1;

    // sumAb_uid422_pT4_uid235_invPolyEval(BITJOIN,421)@23
    assign sumAb_uid422_pT4_uid235_invPolyEval_q = {sm0_uid418_pT4_uid235_invPolyEval_cma_q, sm0_uid421_pT4_uid235_invPolyEval_q};

    // lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval(ADD,424)@23
    assign lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_a = $unsigned({{1{sumAb_uid422_pT4_uid235_invPolyEval_q[57]}}, sumAb_uid422_pT4_uid235_invPolyEval_q});
    assign lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_b = $unsigned({{27{highBBits_uid424_pT4_uid235_invPolyEval_b[31]}}, highBBits_uid424_pT4_uid235_invPolyEval_b});
    assign lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_b));
    assign lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_q = lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_o[58:0];

    // lowRangeB_uid423_pT4_uid235_invPolyEval(BITSELECT,422)@23
    assign lowRangeB_uid423_pT4_uid235_invPolyEval_in = multSumOfTwoTS_uid419_pT4_uid235_invPolyEval_cma_q[22:0];
    assign lowRangeB_uid423_pT4_uid235_invPolyEval_b = lowRangeB_uid423_pT4_uid235_invPolyEval_in[22:0];

    // lev1_a0_uid426_pT4_uid235_invPolyEval(BITJOIN,425)@23
    assign lev1_a0_uid426_pT4_uid235_invPolyEval_q = {lev1_a0sumAHighB_uid425_pT4_uid235_invPolyEval_q, lowRangeB_uid423_pT4_uid235_invPolyEval_b};

    // os_uid427_pT4_uid235_invPolyEval(BITSELECT,426)@23
    assign os_uid427_pT4_uid235_invPolyEval_in = $unsigned(lev1_a0_uid426_pT4_uid235_invPolyEval_q[79:0]);
    assign os_uid427_pT4_uid235_invPolyEval_b = $unsigned(os_uid427_pT4_uid235_invPolyEval_in[79:28]);

    // redist10_os_uid427_pT4_uid235_invPolyEval_b_1(DELAY,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_os_uid427_pT4_uid235_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist10_os_uid427_pT4_uid235_invPolyEval_b_1_q <= $unsigned(os_uid427_pT4_uid235_invPolyEval_b);
        end
    end

    // highBBits_uid237_invPolyEval(BITSELECT,236)@24
    assign highBBits_uid237_invPolyEval_b = $unsigned(redist10_os_uid427_pT4_uid235_invPolyEval_b_1_q[51:2]);

    // redist51_yAddr_uid68_block_rsrvd_fix_b_19_inputreg0(DELAY,678)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_inputreg0_q <= '0;
        end
        else
        begin
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_inputreg0_q <= $unsigned(redist50_yAddr_uid68_block_rsrvd_fix_b_14_outputreg0_q);
        end
    end

    // redist51_yAddr_uid68_block_rsrvd_fix_b_19(DELAY,631)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_0 <= '0;
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_1 <= '0;
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_q <= '0;
        end
        else
        begin
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_0 <= $unsigned(redist51_yAddr_uid68_block_rsrvd_fix_b_19_inputreg0_q);
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_1 <= redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_0;
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_q <= redist51_yAddr_uid68_block_rsrvd_fix_b_19_delay_1;
        end
    end

    // redist51_yAddr_uid68_block_rsrvd_fix_b_19_outputreg0(DELAY,679)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_outputreg0_q <= '0;
        end
        else
        begin
            redist51_yAddr_uid68_block_rsrvd_fix_b_19_outputreg0_q <= $unsigned(redist51_yAddr_uid68_block_rsrvd_fix_b_19_q);
        end
    end

    // memoryC0_uid192_invTables_lutmem(DUALMEM,547)@22 + 2
    // in j@20000000
    assign memoryC0_uid192_invTables_lutmem_aa = redist51_yAddr_uid68_block_rsrvd_fix_b_19_outputreg0_q;
    assign memoryC0_uid192_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z192_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC0_uid192_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid192_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid192_invTables_lutmem_aa),
        .q_a(memoryC0_uid192_invTables_lutmem_ir),
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
    assign memoryC0_uid192_invTables_lutmem_r = memoryC0_uid192_invTables_lutmem_ir[19:0];

    // memoryC0_uid191_invTables_lutmem(DUALMEM,546)@22 + 2
    // in j@20000000
    assign memoryC0_uid191_invTables_lutmem_aa = redist51_yAddr_uid68_block_rsrvd_fix_b_19_outputreg0_q;
    assign memoryC0_uid191_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z191_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC0_uid191_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid191_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid191_invTables_lutmem_aa),
        .q_a(memoryC0_uid191_invTables_lutmem_ir),
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
    assign memoryC0_uid191_invTables_lutmem_r = memoryC0_uid191_invTables_lutmem_ir[19:0];

    // memoryC0_uid190_invTables_lutmem(DUALMEM,545)@22 + 2
    // in j@20000000
    assign memoryC0_uid190_invTables_lutmem_aa = redist51_yAddr_uid68_block_rsrvd_fix_b_19_outputreg0_q;
    assign memoryC0_uid190_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z190_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC0_uid190_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid190_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid190_invTables_lutmem_aa),
        .q_a(memoryC0_uid190_invTables_lutmem_ir),
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
    assign memoryC0_uid190_invTables_lutmem_r = memoryC0_uid190_invTables_lutmem_ir[19:0];

    // os_uid193_invTables(BITJOIN,192)@24
    assign os_uid193_invTables_q = {memoryC0_uid192_invTables_lutmem_r, memoryC0_uid191_invTables_lutmem_r, memoryC0_uid190_invTables_lutmem_r};

    // s4sumAHighB_uid238_invPolyEval(ADD,237)@24
    assign s4sumAHighB_uid238_invPolyEval_a = $unsigned({{1{os_uid193_invTables_q[59]}}, os_uid193_invTables_q});
    assign s4sumAHighB_uid238_invPolyEval_b = $unsigned({{11{highBBits_uid237_invPolyEval_b[49]}}, highBBits_uid237_invPolyEval_b});
    assign s4sumAHighB_uid238_invPolyEval_o = $unsigned($signed(s4sumAHighB_uid238_invPolyEval_a) + $signed(s4sumAHighB_uid238_invPolyEval_b));
    assign s4sumAHighB_uid238_invPolyEval_q = s4sumAHighB_uid238_invPolyEval_o[60:0];

    // lowRangeB_uid236_invPolyEval(BITSELECT,235)@24
    assign lowRangeB_uid236_invPolyEval_in = redist10_os_uid427_pT4_uid235_invPolyEval_b_1_q[1:0];
    assign lowRangeB_uid236_invPolyEval_b = lowRangeB_uid236_invPolyEval_in[1:0];

    // s4_uid239_invPolyEval(BITJOIN,238)@24
    assign s4_uid239_invPolyEval_q = {s4sumAHighB_uid238_invPolyEval_q, lowRangeB_uid236_invPolyEval_b};

    // invY_uid71_block_rsrvd_fix(BITSELECT,70)@24
    assign invY_uid71_block_rsrvd_fix_in = s4_uid239_invPolyEval_q[59:0];
    assign invY_uid71_block_rsrvd_fix_b = invY_uid71_block_rsrvd_fix_in[59:5];

    // redist43_invY_uid71_block_rsrvd_fix_b_1(DELAY,623)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_invY_uid71_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist43_invY_uid71_block_rsrvd_fix_b_1_q <= $unsigned(invY_uid71_block_rsrvd_fix_b);
        end
    end

    // rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,298)@25
    assign rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_in = redist43_invY_uid71_block_rsrvd_fix_b_1_q[0:0];
    assign rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b = rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_in[0:0];

    // redist12_rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b_1(DELAY,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist12_rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b_1_q <= $unsigned(rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b);
        end
    end

    // sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix(MULT,304)@26 + 3
    assign sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_pr = $unsigned(sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a1) * $unsigned(sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b1);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a0 <= 1'b0;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b0 <= 3'b0;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a1 <= 1'b0;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b1 <= 3'b0;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_s1 <= 4'b0;
        end
        else
        begin
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a0 <= redist12_rightBottomX_uid299_prodDivPreNormProd_uid77_block_rsrvd_fix_b_1_q;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b0 <= rightBottomY_uid300_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a1 <= sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_a0;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b1 <= sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_b0;
            sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_s1 <= sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_pr;
        end
    end
    assign sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_q = sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_s1;

    // lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix(ADD,312)@29
    assign lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_a = {1'b0, lowRangeA_uid311_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_c};
    assign lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_b = {56'b00000000000000000000000000000000000000000000000000000000, sm0_uid305_prodDivPreNormProd_uid77_block_rsrvd_fix_q};
    assign lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_o = $unsigned(lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_a) + $unsigned(lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_b);
    assign lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_q = lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_o[59:0];

    // topRangeX_uid288_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,287)@25
    assign topRangeX_uid288_prodDivPreNormProd_uid77_block_rsrvd_fix_b = redist43_invY_uid71_block_rsrvd_fix_b_1_q[54:28];

    // aboveLeftY_bottomRange_uid292_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,291)@25
    assign aboveLeftY_bottomRange_uid292_prodDivPreNormProd_uid77_block_rsrvd_fix_in = leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q[25:0];
    assign aboveLeftY_bottomRange_uid292_prodDivPreNormProd_uid77_block_rsrvd_fix_b = aboveLeftY_bottomRange_uid292_prodDivPreNormProd_uid77_block_rsrvd_fix_in[25:0];

    // aboveLeftY_mergedSignalTM_uid293_prodDivPreNormProd_uid77_block_rsrvd_fix(BITJOIN,292)@25
    assign aboveLeftY_mergedSignalTM_uid293_prodDivPreNormProd_uid77_block_rsrvd_fix_q = {aboveLeftY_bottomRange_uid292_prodDivPreNormProd_uid77_block_rsrvd_fix_b, GND_q};

    // rightBottomX_uid295_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,294)@25
    assign rightBottomX_uid295_prodDivPreNormProd_uid77_block_rsrvd_fix_in = redist43_invY_uid71_block_rsrvd_fix_b_1_q[27:0];
    assign rightBottomX_uid295_prodDivPreNormProd_uid77_block_rsrvd_fix_b = rightBottomX_uid295_prodDivPreNormProd_uid77_block_rsrvd_fix_in[27:1];

    // topRangeY_uid289_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,288)@25
    assign topRangeY_uid289_prodDivPreNormProd_uid77_block_rsrvd_fix_b = leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q[52:26];

    // multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma(CHAINMULTADD,561)@25 + 3
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena1 = multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0;
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena2 = multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0;

    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a0 = topRangeY_uid289_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c0 = rightBottomX_uid295_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a1 = aboveLeftY_mergedSignalTM_uid293_prodDivPreNormProd_uid77_block_rsrvd_fix_q;
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c1 = topRangeX_uid288_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
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
    ) multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_DSP1 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena2, multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena1, multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset, multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset }),
        .ay(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a1),
        .ax(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c1),
        .chainout(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s1),
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
    ) multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena2, multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena1, multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset, multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset }),
        .ay(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a0),
        .ax(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c0),
        .chainin(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s1),
        .resulta(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s0),
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
    multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_delay ( .xin(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s0), .xout(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_q = $unsigned(multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_qq[54:0]);

    // lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select(BITSELECT,577)@28
    assign lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b = multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_q[16:0];
    assign lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_c = multSumOfTwoTS_uid302_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_q[54:17];

    // sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma(CHAINMULTADD,556)@25 + 3
    assign sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset = ~ (resetn);
    assign sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0 = 1'b1;
    assign sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena1 = sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0;
    assign sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena2 = sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0;

    assign sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a0 = topRangeX_uid288_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
    assign sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c0 = topRangeY_uid289_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
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
    ) sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena2, sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena1, sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_ena0 }),
        .aclr({ sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset, sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_reset }),
        .ay(sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_a0),
        .ax(sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_c0),
        .resulta(sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s0),
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
    sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_delay ( .xin(sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_s0), .xout(sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_q = $unsigned(sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_qq[53:0]);

    // aboveLeftY_uid298_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,297)@25
    assign aboveLeftY_uid298_prodDivPreNormProd_uid77_block_rsrvd_fix_in = leftShiftStage2_uid499_normOFracX_uid76_block_rsrvd_fix_q[25:0];
    assign aboveLeftY_uid298_prodDivPreNormProd_uid77_block_rsrvd_fix_b = aboveLeftY_uid298_prodDivPreNormProd_uid77_block_rsrvd_fix_in[25:21];

    // aboveLeftX_uid297_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,296)@25
    assign aboveLeftX_uid297_prodDivPreNormProd_uid77_block_rsrvd_fix_in = redist43_invY_uid71_block_rsrvd_fix_b_1_q[27:0];
    assign aboveLeftX_uid297_prodDivPreNormProd_uid77_block_rsrvd_fix_b = aboveLeftX_uid297_prodDivPreNormProd_uid77_block_rsrvd_fix_in[27:23];

    // sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix(MULT,303)@25 + 3
    assign sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_pr = $unsigned(sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a1) * $unsigned(sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b1);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a0 <= 5'b0;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b0 <= 5'b0;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a1 <= 5'b0;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b1 <= 5'b0;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_s1 <= 10'b0;
        end
        else
        begin
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a0 <= aboveLeftX_uid297_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b0 <= aboveLeftY_uid298_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a1 <= sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_a0;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b1 <= sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_b0;
            sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_s1 <= sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_pr;
        end
    end
    assign sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_q = sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_s1;

    // sumAb_uid306_prodDivPreNormProd_uid77_block_rsrvd_fix(BITJOIN,305)@28
    assign sumAb_uid306_prodDivPreNormProd_uid77_block_rsrvd_fix_q = {sm0_uid301_prodDivPreNormProd_uid77_block_rsrvd_fix_cma_q, sm0_uid304_prodDivPreNormProd_uid77_block_rsrvd_fix_q};

    // lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix(ADD,308)@28 + 1
    assign lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_a = {1'b0, sumAb_uid306_prodDivPreNormProd_uid77_block_rsrvd_fix_q};
    assign lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_b = {27'b000000000000000000000000000, lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_o <= 65'b0;
        end
        else
        begin
            lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_o <= $unsigned(lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_a) + $unsigned(lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_b);
        end
    end
    assign lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_q = lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_o[64:0];

    // redist0_lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b_1(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // lev1_a0_uid310_prodDivPreNormProd_uid77_block_rsrvd_fix(BITJOIN,309)@29
    assign lev1_a0_uid310_prodDivPreNormProd_uid77_block_rsrvd_fix_q = {lev1_a0sumAHighB_uid309_prodDivPreNormProd_uid77_block_rsrvd_fix_q, redist0_lowRangeB_uid307_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b_1_q};

    // lowRangeA_uid311_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select(BITSELECT,578)@29
    assign lowRangeA_uid311_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b = lev1_a0_uid310_prodDivPreNormProd_uid77_block_rsrvd_fix_q[22:0];
    assign lowRangeA_uid311_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_c = lev1_a0_uid310_prodDivPreNormProd_uid77_block_rsrvd_fix_q[81:23];

    // lev2_a0_uid314_prodDivPreNormProd_uid77_block_rsrvd_fix(BITJOIN,313)@29
    assign lev2_a0_uid314_prodDivPreNormProd_uid77_block_rsrvd_fix_q = {lev2_a0high_uid313_prodDivPreNormProd_uid77_block_rsrvd_fix_q, lowRangeA_uid311_prodDivPreNormProd_uid77_block_rsrvd_fix_merged_bit_select_b};

    // os_uid315_prodDivPreNormProd_uid77_block_rsrvd_fix(BITSELECT,314)@29
    assign os_uid315_prodDivPreNormProd_uid77_block_rsrvd_fix_in = lev2_a0_uid314_prodDivPreNormProd_uid77_block_rsrvd_fix_q[80:0];
    assign os_uid315_prodDivPreNormProd_uid77_block_rsrvd_fix_b = os_uid315_prodDivPreNormProd_uid77_block_rsrvd_fix_in[80:26];

    // redist52_addrFull_uid66_block_rsrvd_fix_b_1(DELAY,632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_addrFull_uid66_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist52_addrFull_uid66_block_rsrvd_fix_b_1_q <= $unsigned(addrFull_uid66_block_rsrvd_fix_b);
        end
    end

    // fracPostNormIsNotZero_uid79_block_rsrvd_fix(LOGICAL,78)@4
    assign fracPostNormIsNotZero_uid79_block_rsrvd_fix_q = $unsigned(redist52_addrFull_uid66_block_rsrvd_fix_b_1_q != 52'b0000000000000000000000000000000000000000000000000000 ? 1'b1 : 1'b0);

    // fracPostNormIsZero_uid80_block_rsrvd_fix(LOGICAL,79)@4
    assign fracPostNormIsZero_uid80_block_rsrvd_fix_q = ~ (fracPostNormIsNotZero_uid79_block_rsrvd_fix_q);

    // updatedY_uid17_block_rsrvd_fix(BITJOIN,16)@0
    assign updatedY_uid17_block_rsrvd_fix_q = {GND_q, paddingY_uid16_block_rsrvd_fix_q};

    // fracYZero_uid16_block_rsrvd_fix(LOGICAL,17)@0 + 1
    assign fracYZero_uid16_block_rsrvd_fix_a = {1'b0, fracY_uid14_block_rsrvd_fix_b};
    assign fracYZero_uid16_block_rsrvd_fix_qi = $unsigned(fracYZero_uid16_block_rsrvd_fix_a == updatedY_uid17_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracYZero_uid16_block_rsrvd_fix_delay ( .xin(fracYZero_uid16_block_rsrvd_fix_qi), .xout(fracYZero_uid16_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist65_fracYZero_uid16_block_rsrvd_fix_q_4(DELAY,645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist65_fracYZero_uid16_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_0 <= $unsigned(fracYZero_uid16_block_rsrvd_fix_q);
            redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_1 <= redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_0;
            redist65_fracYZero_uid16_block_rsrvd_fix_q_4_q <= redist65_fracYZero_uid16_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // divValPreNormSelect_uid81_block_rsrvd_fix(LOGICAL,80)@4 + 1
    assign divValPreNormSelect_uid81_block_rsrvd_fix_qi = redist65_fracYZero_uid16_block_rsrvd_fix_q_4_q | fracPostNormIsZero_uid80_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    divValPreNormSelect_uid81_block_rsrvd_fix_delay ( .xin(divValPreNormSelect_uid81_block_rsrvd_fix_qi), .xout(divValPreNormSelect_uid81_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_divValPreNormSelect_uid81_block_rsrvd_fix_q_25(DELAY,621)
    dspba_delay_ver #( .width(1), .depth(24), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist41_divValPreNormSelect_uid81_block_rsrvd_fix_q_25 ( .xin(divValPreNormSelect_uid81_block_rsrvd_fix_q), .xout(redist41_divValPreNormSelect_uid81_block_rsrvd_fix_q_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // divValPreNormYPow2Exc_uid85_block_rsrvd_fix(MUX,84)@29 + 1
    assign divValPreNormYPow2Exc_uid85_block_rsrvd_fix_s = redist41_divValPreNormSelect_uid81_block_rsrvd_fix_q_25_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q <= 55'b0;
        end
        else
        begin
            unique case (divValPreNormYPow2Exc_uid85_block_rsrvd_fix_s)
                1'b0 : divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q <= os_uid315_prodDivPreNormProd_uid77_block_rsrvd_fix_b;
                1'b1 : divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q <= oFracXZ4_uid83_block_rsrvd_fix_q;
                default : divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q <= 55'b0;
            endcase
        end
    end

    // norm_uid86_block_rsrvd_fix(BITSELECT,85)@30
    assign norm_uid86_block_rsrvd_fix_b = $unsigned(divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q[54:54]);

    // cstBiasM1_uid7_block_rsrvd_fix(CONSTANT,6)
    assign cstBiasM1_uid7_block_rsrvd_fix_q = $unsigned(11'b01111111110);

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_notEnable(LOGICAL,687)
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_nor(LOGICAL,688)
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_nor_q = ~ (redist54_expXmY_uid60_block_rsrvd_fix_q_6_notEnable_q | redist54_expXmY_uid60_block_rsrvd_fix_q_6_sticky_ena_q);

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_last(CONSTANT,684)
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_last_q = $unsigned(3'b010);

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmp(LOGICAL,685)
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmp_b = {1'b0, redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_q};
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmp_q = $unsigned(redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_last_q == redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmp_b ? 1'b1 : 1'b0);

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmpReg(REG,686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmpReg_q <= $unsigned(redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmp_q);
        end
    end

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_sticky_ena(REG,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist54_expXmY_uid60_block_rsrvd_fix_q_6_nor_q == 1'b1)
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_sticky_ena_q <= $unsigned(redist54_expXmY_uid60_block_rsrvd_fix_q_6_cmpReg_q);
        end
    end

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_enaAnd(LOGICAL,690)
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_enaAnd_q = redist54_expXmY_uid60_block_rsrvd_fix_q_6_sticky_ena_q & VCC_q;

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt(COUNTER,682)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_i <= $unsigned(redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_q = redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_i[1:0];

    // redist56_excR_y_uid50_block_rsrvd_fix_q_23(DELAY,636)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist56_excR_y_uid50_block_rsrvd_fix_q_23 ( .xin(excR_y_uid50_block_rsrvd_fix_q), .xout(redist56_excR_y_uid50_block_rsrvd_fix_q_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yNotSubnormal_uid53_block_rsrvd_fix(LOGICAL,52)@23
    assign yNotSubnormal_uid53_block_rsrvd_fix_q = redist60_excZ_y_uid45_block_rsrvd_fix_q_23_q | redist56_excR_y_uid50_block_rsrvd_fix_q_23_q | redist58_excI_y_uid46_block_rsrvd_fix_q_23_q | redist57_excN_y_uid47_block_rsrvd_fix_q_23_q;

    // excYSubnorm_uid54_block_rsrvd_fix(LOGICAL,53)@23
    assign excYSubnorm_uid54_block_rsrvd_fix_q = ~ (yNotSubnormal_uid53_block_rsrvd_fix_q);

    // redist67_expY_uid13_block_rsrvd_fix_b_23_notEnable(LOGICAL,698)
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_notEnable_q = $unsigned(~ (VCC_q));

    // redist67_expY_uid13_block_rsrvd_fix_b_23_nor(LOGICAL,699)
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_nor_q = ~ (redist67_expY_uid13_block_rsrvd_fix_b_23_notEnable_q | redist67_expY_uid13_block_rsrvd_fix_b_23_sticky_ena_q);

    // redist67_expY_uid13_block_rsrvd_fix_b_23_mem_last(CONSTANT,695)
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_mem_last_q = $unsigned(6'b010011);

    // redist67_expY_uid13_block_rsrvd_fix_b_23_cmp(LOGICAL,696)
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_cmp_b = {1'b0, redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_q};
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_cmp_q = $unsigned(redist67_expY_uid13_block_rsrvd_fix_b_23_mem_last_q == redist67_expY_uid13_block_rsrvd_fix_b_23_cmp_b ? 1'b1 : 1'b0);

    // redist67_expY_uid13_block_rsrvd_fix_b_23_cmpReg(REG,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_cmpReg_q <= $unsigned(redist67_expY_uid13_block_rsrvd_fix_b_23_cmp_q);
        end
    end

    // redist67_expY_uid13_block_rsrvd_fix_b_23_sticky_ena(REG,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist67_expY_uid13_block_rsrvd_fix_b_23_nor_q == 1'b1)
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_sticky_ena_q <= $unsigned(redist67_expY_uid13_block_rsrvd_fix_b_23_cmpReg_q);
        end
    end

    // redist67_expY_uid13_block_rsrvd_fix_b_23_enaAnd(LOGICAL,701)
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_enaAnd_q = redist67_expY_uid13_block_rsrvd_fix_b_23_sticky_ena_q & VCC_q;

    // redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt(COUNTER,693)
    // low=0, high=20, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i <= 5'd0;
            redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i == 5'd19)
            begin
                redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_eq <= 1'b0;
            end
            if (redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_eq == 1'b1)
            begin
                redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i <= $unsigned(redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i) + $unsigned(5'd12);
            end
            else
            begin
                redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i <= $unsigned(redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_q = redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_i[4:0];

    // redist67_expY_uid13_block_rsrvd_fix_b_23_wraddr(REG,694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_wraddr_q <= $unsigned(5'b10100);
        end
        else
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_wraddr_q <= $unsigned(redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_q);
        end
    end

    // redist67_expY_uid13_block_rsrvd_fix_b_23_mem(DUALMEM,692)
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_mem_ia = $unsigned(expY_uid13_block_rsrvd_fix_b);
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_mem_aa = redist67_expY_uid13_block_rsrvd_fix_b_23_wraddr_q;
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_mem_ab = redist67_expY_uid13_block_rsrvd_fix_b_23_rdcnt_q;
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(5),
        .numwords_a(21),
        .width_b(11),
        .widthad_b(5),
        .numwords_b(21),
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
    ) redist67_expY_uid13_block_rsrvd_fix_b_23_mem_dmem (
        .clocken1(redist67_expY_uid13_block_rsrvd_fix_b_23_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist67_expY_uid13_block_rsrvd_fix_b_23_mem_reset0),
        .clock1(clock),
        .address_a(redist67_expY_uid13_block_rsrvd_fix_b_23_mem_aa),
        .data_a(redist67_expY_uid13_block_rsrvd_fix_b_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist67_expY_uid13_block_rsrvd_fix_b_23_mem_ab),
        .q_b(redist67_expY_uid13_block_rsrvd_fix_b_23_mem_iq),
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
    assign redist67_expY_uid13_block_rsrvd_fix_b_23_mem_q = redist67_expY_uid13_block_rsrvd_fix_b_23_mem_iq[10:0];

    // redist67_expY_uid13_block_rsrvd_fix_b_23_outputreg0(DELAY,691)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_outputreg0_q <= '0;
        end
        else
        begin
            redist67_expY_uid13_block_rsrvd_fix_b_23_outputreg0_q <= $unsigned(redist67_expY_uid13_block_rsrvd_fix_b_23_mem_q);
        end
    end

    // expYSubnorm_uid59_block_rsrvd_fix(ADD,58)@23
    assign expYSubnorm_uid59_block_rsrvd_fix_a = {1'b0, redist67_expY_uid13_block_rsrvd_fix_b_23_outputreg0_q};
    assign expYSubnorm_uid59_block_rsrvd_fix_b = {11'b00000000000, excYSubnorm_uid54_block_rsrvd_fix_q};
    assign expYSubnorm_uid59_block_rsrvd_fix_o = $unsigned(expYSubnorm_uid59_block_rsrvd_fix_a) + $unsigned(expYSubnorm_uid59_block_rsrvd_fix_b);
    assign expYSubnorm_uid59_block_rsrvd_fix_q = expYSubnorm_uid59_block_rsrvd_fix_o[11:0];

    // redist62_excR_x_uid33_block_rsrvd_fix_q_1(DELAY,642)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_excR_x_uid33_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist62_excR_x_uid33_block_rsrvd_fix_q_1_q <= $unsigned(excR_x_uid33_block_rsrvd_fix_q);
        end
    end

    // xNotSubnormal_uid55_block_rsrvd_fix(LOGICAL,54)@23
    assign xNotSubnormal_uid55_block_rsrvd_fix_q = excZ_x_uid28_block_rsrvd_fix_q | redist62_excR_x_uid33_block_rsrvd_fix_q_1_q | excI_x_uid29_block_rsrvd_fix_q | excN_x_uid30_block_rsrvd_fix_q;

    // excXSubnorm_uid56_block_rsrvd_fix(LOGICAL,55)@23
    assign excXSubnorm_uid56_block_rsrvd_fix_q = ~ (xNotSubnormal_uid55_block_rsrvd_fix_q);

    // redist68_expX_uid10_block_rsrvd_fix_b_1(DELAY,648)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_expX_uid10_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist68_expX_uid10_block_rsrvd_fix_b_1_q <= $unsigned(expX_uid10_block_rsrvd_fix_b);
        end
    end

    // expXSubnorm_uid58_block_rsrvd_fix(ADD,57)@23
    assign expXSubnorm_uid58_block_rsrvd_fix_a = {1'b0, redist68_expX_uid10_block_rsrvd_fix_b_1_q};
    assign expXSubnorm_uid58_block_rsrvd_fix_b = {11'b00000000000, excXSubnorm_uid56_block_rsrvd_fix_q};
    assign expXSubnorm_uid58_block_rsrvd_fix_o = $unsigned(expXSubnorm_uid58_block_rsrvd_fix_a) + $unsigned(expXSubnorm_uid58_block_rsrvd_fix_b);
    assign expXSubnorm_uid58_block_rsrvd_fix_q = expXSubnorm_uid58_block_rsrvd_fix_o[11:0];

    // expXmY_uid60_block_rsrvd_fix(SUB,59)@23 + 1
    assign expXmY_uid60_block_rsrvd_fix_a = {1'b0, expXSubnorm_uid58_block_rsrvd_fix_q};
    assign expXmY_uid60_block_rsrvd_fix_b = {1'b0, expYSubnorm_uid59_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expXmY_uid60_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expXmY_uid60_block_rsrvd_fix_o <= $unsigned(expXmY_uid60_block_rsrvd_fix_a) - $unsigned(expXmY_uid60_block_rsrvd_fix_b);
        end
    end
    assign expXmY_uid60_block_rsrvd_fix_q = expXmY_uid60_block_rsrvd_fix_o[12:0];

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_wraddr(REG,683)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist54_expXmY_uid60_block_rsrvd_fix_q_6_wraddr_q <= $unsigned(redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_q);
        end
    end

    // redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem(DUALMEM,681)
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_ia = $unsigned(expXmY_uid60_block_rsrvd_fix_q);
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_aa = redist54_expXmY_uid60_block_rsrvd_fix_q_6_wraddr_q;
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_ab = redist54_expXmY_uid60_block_rsrvd_fix_q_6_rdcnt_q;
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(13),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(13),
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
    ) redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_dmem (
        .clocken1(redist54_expXmY_uid60_block_rsrvd_fix_q_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_reset0),
        .clock1(clock),
        .address_a(redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_aa),
        .data_a(redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_ab),
        .q_b(redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_iq),
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
    assign redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_q = redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_iq[12:0];

    // expR_uid61_block_rsrvd_fix(ADD,60)@29 + 1
    assign expR_uid61_block_rsrvd_fix_a = $unsigned({{2{redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_q[12]}}, redist54_expXmY_uid60_block_rsrvd_fix_q_6_mem_q});
    assign expR_uid61_block_rsrvd_fix_b = $unsigned({4'b0000, cstBiasM1_uid7_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expR_uid61_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            expR_uid61_block_rsrvd_fix_o <= $unsigned($signed(expR_uid61_block_rsrvd_fix_a) + $signed(expR_uid61_block_rsrvd_fix_b));
        end
    end
    assign expR_uid61_block_rsrvd_fix_q = expR_uid61_block_rsrvd_fix_o[13:0];

    // expRPostNormHandling0_uid88_block_rsrvd_fix(ADD,87)@30
    assign expRPostNormHandling0_uid88_block_rsrvd_fix_a = $unsigned({{2{expR_uid61_block_rsrvd_fix_q[13]}}, expR_uid61_block_rsrvd_fix_q});
    assign expRPostNormHandling0_uid88_block_rsrvd_fix_b = $unsigned({15'b000000000000000, norm_uid86_block_rsrvd_fix_b});
    assign expRPostNormHandling0_uid88_block_rsrvd_fix_o = $unsigned($signed(expRPostNormHandling0_uid88_block_rsrvd_fix_a) + $signed(expRPostNormHandling0_uid88_block_rsrvd_fix_b));
    assign expRPostNormHandling0_uid88_block_rsrvd_fix_q = expRPostNormHandling0_uid88_block_rsrvd_fix_o[14:0];

    // expRPostNormHandling_uid89_block_rsrvd_fix(ADD,88)@30 + 1
    assign expRPostNormHandling_uid89_block_rsrvd_fix_a = $unsigned({{1{expRPostNormHandling0_uid88_block_rsrvd_fix_q[14]}}, expRPostNormHandling0_uid88_block_rsrvd_fix_q});
    assign expRPostNormHandling_uid89_block_rsrvd_fix_b = $unsigned({{9{redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_q[6]}}, redist37_addSubnormAdditions_uid87_block_rsrvd_fix_q_5_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRPostNormHandling_uid89_block_rsrvd_fix_o <= 16'b0;
        end
        else
        begin
            expRPostNormHandling_uid89_block_rsrvd_fix_o <= $unsigned($signed(expRPostNormHandling_uid89_block_rsrvd_fix_a) + $signed(expRPostNormHandling_uid89_block_rsrvd_fix_b));
        end
    end
    assign expRPostNormHandling_uid89_block_rsrvd_fix_q = expRPostNormHandling_uid89_block_rsrvd_fix_o[15:0];

    // forwardExponentResult_uid109_block_rsrvd_fix(LOGICAL,108)@31
    assign forwardExponentResult_uid109_block_rsrvd_fix_b = $unsigned({{15{invExpRPostNormHandlingSign_uid108_block_rsrvd_fix_q[0]}}, invExpRPostNormHandlingSign_uid108_block_rsrvd_fix_q});
    assign forwardExponentResult_uid109_block_rsrvd_fix_q = expRPostNormHandling_uid89_block_rsrvd_fix_q & forwardExponentResult_uid109_block_rsrvd_fix_b;

    // fwdExponentResult_uid110_block_rsrvd_fix(BITSELECT,109)@31
    assign fwdExponentResult_uid110_block_rsrvd_fix_in = $unsigned(forwardExponentResult_uid109_block_rsrvd_fix_q[12:0]);
    assign fwdExponentResult_uid110_block_rsrvd_fix_b = $unsigned(fwdExponentResult_uid110_block_rsrvd_fix_in[12:0]);

    // redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3(DELAY,612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_0 <= $unsigned(fwdExponentResult_uid110_block_rsrvd_fix_b);
            redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_1 <= redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_0;
            redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_q <= redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // zeroOutCst_uid543_alignedResultFraction_uid101_block_rsrvd_fix(CONSTANT,542)
    assign zeroOutCst_uid543_alignedResultFraction_uid101_block_rsrvd_fix_q = $unsigned(109'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // rightShiftStage3Idx1Pad64_uid539_alignedResultFraction_uid101_block_rsrvd_fix(CONSTANT,538)
    assign rightShiftStage3Idx1Pad64_uid539_alignedResultFraction_uid101_block_rsrvd_fix_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // rightShiftStage3Idx1Rng64_uid538_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,537)@33
    assign rightShiftStage3Idx1Rng64_uid538_alignedResultFraction_uid101_block_rsrvd_fix_b = rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q[108:64];

    // rightShiftStage3Idx1_uid540_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,539)@33
    assign rightShiftStage3Idx1_uid540_alignedResultFraction_uid101_block_rsrvd_fix_q = {rightShiftStage3Idx1Pad64_uid539_alignedResultFraction_uid101_block_rsrvd_fix_q, rightShiftStage3Idx1Rng64_uid538_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage2Idx3Rng48_uid533_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,532)@33
    assign rightShiftStage2Idx3Rng48_uid533_alignedResultFraction_uid101_block_rsrvd_fix_b = rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q[108:48];

    // rightShiftStage2Idx3_uid535_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,534)@33
    assign rightShiftStage2Idx3_uid535_alignedResultFraction_uid101_block_rsrvd_fix_q = {leftShiftStage0Idx3Pad48_uid437_normY_uid64_block_rsrvd_fix_q, rightShiftStage2Idx3Rng48_uid533_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage2Idx2Rng32_uid530_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,529)@33
    assign rightShiftStage2Idx2Rng32_uid530_alignedResultFraction_uid101_block_rsrvd_fix_b = rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q[108:32];

    // rightShiftStage2Idx2_uid532_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,531)@33
    assign rightShiftStage2Idx2_uid532_alignedResultFraction_uid101_block_rsrvd_fix_q = {zs_uid153_lzFracY_uid63_block_rsrvd_fix_q, rightShiftStage2Idx2Rng32_uid530_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage2Idx1Rng16_uid527_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,526)@33
    assign rightShiftStage2Idx1Rng16_uid527_alignedResultFraction_uid101_block_rsrvd_fix_b = rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q[108:16];

    // rightShiftStage2Idx1_uid529_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,528)@33
    assign rightShiftStage2Idx1_uid529_alignedResultFraction_uid101_block_rsrvd_fix_q = {zs_uid161_lzFracY_uid63_block_rsrvd_fix_q, rightShiftStage2Idx1Rng16_uid527_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage1Idx3Rng12_uid522_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,521)@32
    assign rightShiftStage1Idx3Rng12_uid522_alignedResultFraction_uid101_block_rsrvd_fix_b = rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q[108:12];

    // rightShiftStage1Idx3_uid524_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,523)@32
    assign rightShiftStage1Idx3_uid524_alignedResultFraction_uid101_block_rsrvd_fix_q = {leftShiftStage1Idx3Pad12_uid448_normY_uid64_block_rsrvd_fix_q, rightShiftStage1Idx3Rng12_uid522_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage1Idx2Rng8_uid519_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,518)@32
    assign rightShiftStage1Idx2Rng8_uid519_alignedResultFraction_uid101_block_rsrvd_fix_b = rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q[108:8];

    // rightShiftStage1Idx2_uid521_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,520)@32
    assign rightShiftStage1Idx2_uid521_alignedResultFraction_uid101_block_rsrvd_fix_q = {zs_uid167_lzFracY_uid63_block_rsrvd_fix_q, rightShiftStage1Idx2Rng8_uid519_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage1Idx1Rng4_uid516_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,515)@32
    assign rightShiftStage1Idx1Rng4_uid516_alignedResultFraction_uid101_block_rsrvd_fix_b = rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q[108:4];

    // rightShiftStage1Idx1_uid518_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,517)@32
    assign rightShiftStage1Idx1_uid518_alignedResultFraction_uid101_block_rsrvd_fix_q = {zs_uid173_lzFracY_uid63_block_rsrvd_fix_q, rightShiftStage1Idx1Rng4_uid516_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage0Idx3Rng3_uid511_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,510)@32
    assign rightShiftStage0Idx3Rng3_uid511_alignedResultFraction_uid101_block_rsrvd_fix_b = rightPaddedIn_uid102_block_rsrvd_fix_q[108:3];

    // rightShiftStage0Idx3_uid513_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,512)@32
    assign rightShiftStage0Idx3_uid513_alignedResultFraction_uid101_block_rsrvd_fix_q = {aboveLeftY_bottomExtension_uid407_pT4_uid235_invPolyEval_q, rightShiftStage0Idx3Rng3_uid511_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage0Idx2Rng2_uid508_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,507)@32
    assign rightShiftStage0Idx2Rng2_uid508_alignedResultFraction_uid101_block_rsrvd_fix_b = rightPaddedIn_uid102_block_rsrvd_fix_q[108:2];

    // rightShiftStage0Idx2_uid510_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,509)@32
    assign rightShiftStage0Idx2_uid510_alignedResultFraction_uid101_block_rsrvd_fix_q = {z4_uid82_block_rsrvd_fix_q, rightShiftStage0Idx2Rng2_uid508_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid505_alignedResultFraction_uid101_block_rsrvd_fix(BITSELECT,504)@32
    assign rightShiftStage0Idx1Rng1_uid505_alignedResultFraction_uid101_block_rsrvd_fix_b = rightPaddedIn_uid102_block_rsrvd_fix_q[108:1];

    // rightShiftStage0Idx1_uid507_alignedResultFraction_uid101_block_rsrvd_fix(BITJOIN,506)@32
    assign rightShiftStage0Idx1_uid507_alignedResultFraction_uid101_block_rsrvd_fix_q = {GND_q, rightShiftStage0Idx1Rng1_uid505_alignedResultFraction_uid101_block_rsrvd_fix_b};

    // redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3(DELAY,620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_delay_0 <= $unsigned(divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q);
            redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_q <= redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // padConst_uid101_block_rsrvd_fix(CONSTANT,100)
    assign padConst_uid101_block_rsrvd_fix_q = $unsigned(54'b000000000000000000000000000000000000000000000000000000);

    // rightPaddedIn_uid102_block_rsrvd_fix(BITJOIN,101)@32
    assign rightPaddedIn_uid102_block_rsrvd_fix_q = {redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_q, padConst_uid101_block_rsrvd_fix_q};

    // rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix(MUX,514)@32
    assign rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_b;
    always @(rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_s or rightPaddedIn_uid102_block_rsrvd_fix_q or rightShiftStage0Idx1_uid507_alignedResultFraction_uid101_block_rsrvd_fix_q or rightShiftStage0Idx2_uid510_alignedResultFraction_uid101_block_rsrvd_fix_q or rightShiftStage0Idx3_uid513_alignedResultFraction_uid101_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_s)
            2'b00 : rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q = rightPaddedIn_uid102_block_rsrvd_fix_q;
            2'b01 : rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage0Idx1_uid507_alignedResultFraction_uid101_block_rsrvd_fix_q;
            2'b10 : rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage0Idx2_uid510_alignedResultFraction_uid101_block_rsrvd_fix_q;
            2'b11 : rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage0Idx3_uid513_alignedResultFraction_uid101_block_rsrvd_fix_q;
            default : rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q = 109'b0;
        endcase
    end

    // redist38_norm_uid86_block_rsrvd_fix_b_1(DELAY,618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_norm_uid86_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist38_norm_uid86_block_rsrvd_fix_b_1_q <= $unsigned(norm_uid86_block_rsrvd_fix_b);
        end
    end

    // mExpRPostNormHandling_uid95_block_rsrvd_fix(SUB,94)@31 + 1
    assign mExpRPostNormHandling_uid95_block_rsrvd_fix_a = $unsigned({17'b00000000000000000, redist38_norm_uid86_block_rsrvd_fix_b_1_q});
    assign mExpRPostNormHandling_uid95_block_rsrvd_fix_b = $unsigned({{2{expRPostNormHandling_uid89_block_rsrvd_fix_q[15]}}, expRPostNormHandling_uid89_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mExpRPostNormHandling_uid95_block_rsrvd_fix_o <= 18'b0;
        end
        else
        begin
            mExpRPostNormHandling_uid95_block_rsrvd_fix_o <= $unsigned($signed(mExpRPostNormHandling_uid95_block_rsrvd_fix_a) - $signed(mExpRPostNormHandling_uid95_block_rsrvd_fix_b));
        end
    end
    assign mExpRPostNormHandling_uid95_block_rsrvd_fix_q = mExpRPostNormHandling_uid95_block_rsrvd_fix_o[16:0];

    // redist39_norm_uid86_block_rsrvd_fix_b_2(DELAY,619)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_norm_uid86_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist39_norm_uid86_block_rsrvd_fix_b_2_q <= $unsigned(redist38_norm_uid86_block_rsrvd_fix_b_1_q);
        end
    end

    // invNorm_uid96_block_rsrvd_fix(LOGICAL,95)@32
    assign invNorm_uid96_block_rsrvd_fix_q = ~ (redist39_norm_uid86_block_rsrvd_fix_b_2_q);

    // zInvNorm_uid97_block_rsrvd_fix(BITJOIN,96)@32
    assign zInvNorm_uid97_block_rsrvd_fix_q = {GND_q, invNorm_uid96_block_rsrvd_fix_q};

    // muxNotSubnormalRightShiftValue_to17_uid98(BITSELECT,97)@32
    assign muxNotSubnormalRightShiftValue_to17_uid98_in = {15'b000000000000000, zInvNorm_uid97_block_rsrvd_fix_q};
    assign muxNotSubnormalRightShiftValue_to17_uid98_b = muxNotSubnormalRightShiftValue_to17_uid98_in[16:0];

    // subnormalRes_uid94_block_rsrvd_fix(COMPARE,93)@31 + 1
    assign subnormalRes_uid94_block_rsrvd_fix_a = $unsigned({17'b00000000000000000, GND_q});
    assign subnormalRes_uid94_block_rsrvd_fix_b = $unsigned({{2{expRPostNormHandling_uid89_block_rsrvd_fix_q[15]}}, expRPostNormHandling_uid89_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            subnormalRes_uid94_block_rsrvd_fix_o <= 18'b0;
        end
        else
        begin
            subnormalRes_uid94_block_rsrvd_fix_o <= $unsigned($signed(subnormalRes_uid94_block_rsrvd_fix_a) - $signed(subnormalRes_uid94_block_rsrvd_fix_b));
        end
    end
    assign subnormalRes_uid94_block_rsrvd_fix_n[0] = ~ (subnormalRes_uid94_block_rsrvd_fix_o[17]);

    // rightShiftFractionValue_uid100_block_rsrvd_fix(MUX,99)@32
    assign rightShiftFractionValue_uid100_block_rsrvd_fix_s = subnormalRes_uid94_block_rsrvd_fix_n;
    always @(rightShiftFractionValue_uid100_block_rsrvd_fix_s or muxNotSubnormalRightShiftValue_to17_uid98_b or mExpRPostNormHandling_uid95_block_rsrvd_fix_q)
    begin
        unique case (rightShiftFractionValue_uid100_block_rsrvd_fix_s)
            1'b0 : rightShiftFractionValue_uid100_block_rsrvd_fix_q = muxNotSubnormalRightShiftValue_to17_uid98_b;
            1'b1 : rightShiftFractionValue_uid100_block_rsrvd_fix_q = mExpRPostNormHandling_uid95_block_rsrvd_fix_q;
            default : rightShiftFractionValue_uid100_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select(BITSELECT,565)@32
    assign rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_in = rightShiftFractionValue_uid100_block_rsrvd_fix_q[6:0];
    assign rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_b = rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_in[1:0];
    assign rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_c = rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_in[3:2];
    assign rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d = rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_in[5:4];
    assign rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e = rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_in[6:6];

    // rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix(MUX,525)@32 + 1
    assign rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q <= 109'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_s)
                2'b00 : rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q <= rightShiftStage0_uid515_alignedResultFraction_uid101_block_rsrvd_fix_q;
                2'b01 : rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid518_alignedResultFraction_uid101_block_rsrvd_fix_q;
                2'b10 : rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid521_alignedResultFraction_uid101_block_rsrvd_fix_q;
                2'b11 : rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid524_alignedResultFraction_uid101_block_rsrvd_fix_q;
                default : rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q <= 109'b0;
            endcase
        end
    end

    // redist5_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d_1(DELAY,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist5_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix(MUX,536)@33
    assign rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_s = redist5_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_s or rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q or rightShiftStage2Idx1_uid529_alignedResultFraction_uid101_block_rsrvd_fix_q or rightShiftStage2Idx2_uid532_alignedResultFraction_uid101_block_rsrvd_fix_q or rightShiftStage2Idx3_uid535_alignedResultFraction_uid101_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_s)
            2'b00 : rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage1_uid526_alignedResultFraction_uid101_block_rsrvd_fix_q;
            2'b01 : rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage2Idx1_uid529_alignedResultFraction_uid101_block_rsrvd_fix_q;
            2'b10 : rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage2Idx2_uid532_alignedResultFraction_uid101_block_rsrvd_fix_q;
            2'b11 : rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage2Idx3_uid535_alignedResultFraction_uid101_block_rsrvd_fix_q;
            default : rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q = 109'b0;
        endcase
    end

    // redist6_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e_1(DELAY,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e_1_q <= '0;
        end
        else
        begin
            redist6_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e_1_q <= $unsigned(rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e);
        end
    end

    // rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix(MUX,541)@33
    assign rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_s = redist6_rightShiftStageSel0Dto0_uid514_alignedResultFraction_uid101_block_rsrvd_fix_merged_bit_select_e_1_q;
    always @(rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_s or rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q or rightShiftStage3Idx1_uid540_alignedResultFraction_uid101_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_s)
            1'b0 : rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage2_uid537_alignedResultFraction_uid101_block_rsrvd_fix_q;
            1'b1 : rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage3Idx1_uid540_alignedResultFraction_uid101_block_rsrvd_fix_q;
            default : rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_q = 109'b0;
        endcase
    end

    // wIntCst_uid503_alignedResultFraction_uid101_block_rsrvd_fix(CONSTANT,502)
    assign wIntCst_uid503_alignedResultFraction_uid101_block_rsrvd_fix_q = $unsigned(7'b1101101);

    // shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix(COMPARE,503)@32 + 1
    assign shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_a = {2'b00, rightShiftFractionValue_uid100_block_rsrvd_fix_q};
    assign shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_b = {12'b000000000000, wIntCst_uid503_alignedResultFraction_uid101_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_o <= 19'b0;
        end
        else
        begin
            shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_o <= $unsigned(shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_b);
        end
    end
    assign shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_n[0] = ~ (shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_o[18]);

    // r_uid544_alignedResultFraction_uid101_block_rsrvd_fix(MUX,543)@33
    assign r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_s = shiftedOut_uid504_alignedResultFraction_uid101_block_rsrvd_fix_n;
    always @(r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_s or rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_q or zeroOutCst_uid543_alignedResultFraction_uid101_block_rsrvd_fix_q)
    begin
        unique case (r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_s)
            1'b0 : r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_q = rightShiftStage3_uid542_alignedResultFraction_uid101_block_rsrvd_fix_q;
            1'b1 : r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_q = zeroOutCst_uid543_alignedResultFraction_uid101_block_rsrvd_fix_q;
            default : r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_q = 109'b0;
        endcase
    end

    // alignedResultFracForRnd_uid104_block_rsrvd_fix(BITSELECT,103)@33
    assign alignedResultFracForRnd_uid104_block_rsrvd_fix_in = r_uid544_alignedResultFraction_uid101_block_rsrvd_fix_q[107:0];
    assign alignedResultFracForRnd_uid104_block_rsrvd_fix_b = alignedResultFracForRnd_uid104_block_rsrvd_fix_in[107:55];

    // redist33_alignedResultFracForRnd_uid104_block_rsrvd_fix_b_1(DELAY,613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_alignedResultFracForRnd_uid104_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist33_alignedResultFracForRnd_uid104_block_rsrvd_fix_b_1_q <= $unsigned(alignedResultFracForRnd_uid104_block_rsrvd_fix_b);
        end
    end

    // divValPreNormHigh_uid90_block_rsrvd_fix(BITSELECT,89)@32
    assign divValPreNormHigh_uid90_block_rsrvd_fix_in = redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_q[53:0];
    assign divValPreNormHigh_uid90_block_rsrvd_fix_b = divValPreNormHigh_uid90_block_rsrvd_fix_in[53:1];

    // divValPreNormLow_uid91_block_rsrvd_fix(BITSELECT,90)@32
    assign divValPreNormLow_uid91_block_rsrvd_fix_in = redist40_divValPreNormYPow2Exc_uid85_block_rsrvd_fix_q_3_q[52:0];
    assign divValPreNormLow_uid91_block_rsrvd_fix_b = divValPreNormLow_uid91_block_rsrvd_fix_in[52:0];

    // normFracRnd_uid92_block_rsrvd_fix(MUX,91)@32 + 1
    assign normFracRnd_uid92_block_rsrvd_fix_s = redist39_norm_uid86_block_rsrvd_fix_b_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            normFracRnd_uid92_block_rsrvd_fix_q <= 53'b0;
        end
        else
        begin
            unique case (normFracRnd_uid92_block_rsrvd_fix_s)
                1'b0 : normFracRnd_uid92_block_rsrvd_fix_q <= divValPreNormLow_uid91_block_rsrvd_fix_b;
                1'b1 : normFracRnd_uid92_block_rsrvd_fix_q <= divValPreNormHigh_uid90_block_rsrvd_fix_b;
                default : normFracRnd_uid92_block_rsrvd_fix_q <= 53'b0;
            endcase
        end
    end

    // redist36_normFracRnd_uid92_block_rsrvd_fix_q_2(DELAY,616)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_normFracRnd_uid92_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist36_normFracRnd_uid92_block_rsrvd_fix_q_2_q <= $unsigned(normFracRnd_uid92_block_rsrvd_fix_q);
        end
    end

    // redist34_subnormalRes_uid94_block_rsrvd_fix_n_3(DELAY,614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_delay_0 <= '0;
            redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_q <= '0;
        end
        else
        begin
            redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_delay_0 <= $unsigned(subnormalRes_uid94_block_rsrvd_fix_n);
            redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_q <= redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_delay_0;
        end
    end

    // fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix(MUX,104)@34
    assign fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_s = redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_q;
    always @(fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_s or redist36_normFracRnd_uid92_block_rsrvd_fix_q_2_q or redist33_alignedResultFracForRnd_uid104_block_rsrvd_fix_b_1_q)
    begin
        unique case (fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_s)
            1'b0 : fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_q = redist36_normFracRnd_uid92_block_rsrvd_fix_q_2_q;
            1'b1 : fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_q = redist33_alignedResultFracForRnd_uid104_block_rsrvd_fix_b_1_q;
            default : fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // expFracRnd_uid111_block_rsrvd_fix(BITJOIN,110)@34
    assign expFracRnd_uid111_block_rsrvd_fix_q = {redist32_fwdExponentResult_uid110_block_rsrvd_fix_b_3_q, fwdAlignedResultFracForRnd_uid105_block_rsrvd_fix_q};

    // expFracPostRnd_uid114_block_rsrvd_fix(ADD,113)@34 + 1
    assign expFracPostRnd_uid114_block_rsrvd_fix_a = $unsigned({{2{expFracRnd_uid111_block_rsrvd_fix_q[65]}}, expFracRnd_uid111_block_rsrvd_fix_q});
    assign expFracPostRnd_uid114_block_rsrvd_fix_b = $unsigned({67'b0000000000000000000000000000000000000000000000000000000000000000000, VCC_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracPostRnd_uid114_block_rsrvd_fix_o <= 68'b0;
        end
        else
        begin
            expFracPostRnd_uid114_block_rsrvd_fix_o <= $unsigned($signed(expFracPostRnd_uid114_block_rsrvd_fix_a) + $signed(expFracPostRnd_uid114_block_rsrvd_fix_b));
        end
    end
    assign expFracPostRnd_uid114_block_rsrvd_fix_q = expFracPostRnd_uid114_block_rsrvd_fix_o[66:0];

    // expPostRndF_uid116_block_rsrvd_fix(BITSELECT,115)@35
    assign expPostRndF_uid116_block_rsrvd_fix_in = expFracPostRnd_uid114_block_rsrvd_fix_q[63:0];
    assign expPostRndF_uid116_block_rsrvd_fix_b = expPostRndF_uid116_block_rsrvd_fix_in[63:53];

    // redist30_expPostRndF_uid116_block_rsrvd_fix_b_1(DELAY,610)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_expPostRndF_uid116_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist30_expPostRndF_uid116_block_rsrvd_fix_b_1_q <= $unsigned(expPostRndF_uid116_block_rsrvd_fix_b);
        end
    end

    // yRegOrSubnormal_uid125_block_rsrvd_fix(LOGICAL,124)@23 + 1
    assign yRegOrSubnormal_uid125_block_rsrvd_fix_qi = redist56_excR_y_uid50_block_rsrvd_fix_q_23_q | excYSubnorm_uid54_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yRegOrSubnormal_uid125_block_rsrvd_fix_delay ( .xin(yRegOrSubnormal_uid125_block_rsrvd_fix_qi), .xout(yRegOrSubnormal_uid125_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12(DELAY,608)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12 ( .xin(yRegOrSubnormal_uid125_block_rsrvd_fix_q), .xout(redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist63_excI_x_uid29_block_rsrvd_fix_q_13(DELAY,643)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist63_excI_x_uid29_block_rsrvd_fix_q_13 ( .xin(excI_x_uid29_block_rsrvd_fix_q), .xout(redist63_excI_x_uid29_block_rsrvd_fix_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXIYR_uid134_block_rsrvd_fix(LOGICAL,133)@35
    assign excXIYR_uid134_block_rsrvd_fix_q = redist63_excI_x_uid29_block_rsrvd_fix_q_13_q & redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12_q;

    // redist61_excZ_y_uid45_block_rsrvd_fix_q_35(DELAY,641)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist61_excZ_y_uid45_block_rsrvd_fix_q_35 ( .xin(redist60_excZ_y_uid45_block_rsrvd_fix_q_23_q), .xout(redist61_excZ_y_uid45_block_rsrvd_fix_q_35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXIYZ_uid133_block_rsrvd_fix(LOGICAL,132)@35
    assign excXIYZ_uid133_block_rsrvd_fix_q = redist63_excI_x_uid29_block_rsrvd_fix_q_13_q & redist61_excZ_y_uid45_block_rsrvd_fix_q_35_q;

    // expRExt_uid117_block_rsrvd_fix(BITSELECT,116)@35
    assign expRExt_uid117_block_rsrvd_fix_b = $unsigned(expFracPostRnd_uid114_block_rsrvd_fix_q[66:53]);

    // expOvf_uid123_block_rsrvd_fix(COMPARE,122)@35
    assign expOvf_uid123_block_rsrvd_fix_a = $unsigned({{2{expRExt_uid117_block_rsrvd_fix_b[13]}}, expRExt_uid117_block_rsrvd_fix_b});
    assign expOvf_uid123_block_rsrvd_fix_b = $unsigned({5'b00000, cstAllOWE_uid19_block_rsrvd_fix_q});
    assign expOvf_uid123_block_rsrvd_fix_o = $unsigned($signed(expOvf_uid123_block_rsrvd_fix_a) - $signed(expOvf_uid123_block_rsrvd_fix_b));
    assign expOvf_uid123_block_rsrvd_fix_n[0] = ~ (expOvf_uid123_block_rsrvd_fix_o[15]);

    // xRegOrSubnormal_uid124_block_rsrvd_fix(LOGICAL,123)@23 + 1
    assign xRegOrSubnormal_uid124_block_rsrvd_fix_qi = redist62_excR_x_uid33_block_rsrvd_fix_q_1_q | excXSubnorm_uid56_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    xRegOrSubnormal_uid124_block_rsrvd_fix_delay ( .xin(xRegOrSubnormal_uid124_block_rsrvd_fix_qi), .xout(xRegOrSubnormal_uid124_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12(DELAY,609)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12 ( .xin(xRegOrSubnormal_uid124_block_rsrvd_fix_q), .xout(redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXRYROvf_uid132_block_rsrvd_fix(LOGICAL,131)@35
    assign excXRYROvf_uid132_block_rsrvd_fix_q = redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12_q & redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12_q & expOvf_uid123_block_rsrvd_fix_n;

    // excXRYZ_uid131_block_rsrvd_fix(LOGICAL,130)@35
    assign excXRYZ_uid131_block_rsrvd_fix_q = redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12_q & redist61_excZ_y_uid45_block_rsrvd_fix_q_35_q;

    // excRInf_uid135_block_rsrvd_fix(LOGICAL,134)@35
    assign excRInf_uid135_block_rsrvd_fix_q = excXRYZ_uid131_block_rsrvd_fix_q | excXRYROvf_uid132_block_rsrvd_fix_q | excXIYZ_uid133_block_rsrvd_fix_q | excXIYR_uid134_block_rsrvd_fix_q;

    // redist59_excI_y_uid46_block_rsrvd_fix_q_35(DELAY,639)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist59_excI_y_uid46_block_rsrvd_fix_q_35 ( .xin(redist58_excI_y_uid46_block_rsrvd_fix_q_23_q), .xout(redist59_excI_y_uid46_block_rsrvd_fix_q_35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist64_excZ_x_uid28_block_rsrvd_fix_q_13(DELAY,644)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist64_excZ_x_uid28_block_rsrvd_fix_q_13 ( .xin(excZ_x_uid28_block_rsrvd_fix_q), .xout(redist64_excZ_x_uid28_block_rsrvd_fix_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // xRegOrZero_uid128_block_rsrvd_fix(LOGICAL,127)@35
    assign xRegOrZero_uid128_block_rsrvd_fix_q = redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12_q | redist64_excZ_x_uid28_block_rsrvd_fix_q_13_q;

    // regOrZeroOverInf_uid129_block_rsrvd_fix(LOGICAL,128)@35
    assign regOrZeroOverInf_uid129_block_rsrvd_fix_q = xRegOrZero_uid128_block_rsrvd_fix_q & redist59_excI_y_uid46_block_rsrvd_fix_q_35_q;

    // redist35_subnormalRes_uid94_block_rsrvd_fix_n_4(DELAY,615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_subnormalRes_uid94_block_rsrvd_fix_n_4_q <= '0;
        end
        else
        begin
            redist35_subnormalRes_uid94_block_rsrvd_fix_n_4_q <= $unsigned(redist34_subnormalRes_uid94_block_rsrvd_fix_n_3_q);
        end
    end

    // invSubnormalRes_uid119_block_rsrvd_fix(LOGICAL,118)@35
    assign invSubnormalRes_uid119_block_rsrvd_fix_q = ~ (redist35_subnormalRes_uid94_block_rsrvd_fix_n_4_q);

    // expUdf_uid118_block_rsrvd_fix(COMPARE,117)@35
    assign expUdf_uid118_block_rsrvd_fix_a = $unsigned({15'b000000000000000, GND_q});
    assign expUdf_uid118_block_rsrvd_fix_b = $unsigned({{2{expRExt_uid117_block_rsrvd_fix_b[13]}}, expRExt_uid117_block_rsrvd_fix_b});
    assign expUdf_uid118_block_rsrvd_fix_o = $unsigned($signed(expUdf_uid118_block_rsrvd_fix_a) - $signed(expUdf_uid118_block_rsrvd_fix_b));
    assign expUdf_uid118_block_rsrvd_fix_n[0] = ~ (expUdf_uid118_block_rsrvd_fix_o[15]);

    // rUnderflow_uid120_block_rsrvd_fix(LOGICAL,119)@35
    assign rUnderflow_uid120_block_rsrvd_fix_q = expUdf_uid118_block_rsrvd_fix_n & invSubnormalRes_uid119_block_rsrvd_fix_q;

    // regOverRegWithUf_uid127_block_rsrvd_fix(LOGICAL,126)@35
    assign regOverRegWithUf_uid127_block_rsrvd_fix_q = rUnderflow_uid120_block_rsrvd_fix_q & redist29_xRegOrSubnormal_uid124_block_rsrvd_fix_q_12_q & redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12_q;

    // zeroOverReg_uid126_block_rsrvd_fix(LOGICAL,125)@35
    assign zeroOverReg_uid126_block_rsrvd_fix_q = redist64_excZ_x_uid28_block_rsrvd_fix_q_13_q & redist28_yRegOrSubnormal_uid125_block_rsrvd_fix_q_12_q;

    // excRZero_uid130_block_rsrvd_fix(LOGICAL,129)@35
    assign excRZero_uid130_block_rsrvd_fix_q = zeroOverReg_uid126_block_rsrvd_fix_q | regOverRegWithUf_uid127_block_rsrvd_fix_q | regOrZeroOverInf_uid129_block_rsrvd_fix_q;

    // concExc_uid139_block_rsrvd_fix(BITJOIN,138)@35
    assign concExc_uid139_block_rsrvd_fix_q = {redist27_excRNaN_uid138_block_rsrvd_fix_q_12_q, excRInf_uid135_block_rsrvd_fix_q, excRZero_uid130_block_rsrvd_fix_q};

    // redist26_concExc_uid139_block_rsrvd_fix_q_1(DELAY,606)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_concExc_uid139_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist26_concExc_uid139_block_rsrvd_fix_q_1_q <= $unsigned(concExc_uid139_block_rsrvd_fix_q);
        end
    end

    // excREnc_uid140_block_rsrvd_fix(LOOKUP,139)@36
    always @(redist26_concExc_uid139_block_rsrvd_fix_q_1_q)
    begin
        // Begin reserved scope level
        unique case (redist26_concExc_uid139_block_rsrvd_fix_q_1_q)
            3'b000 : excREnc_uid140_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid140_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid140_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid140_block_rsrvd_fix_q = 2'b00;
            3'b100 : excREnc_uid140_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid140_block_rsrvd_fix_q = 2'b00;
            3'b110 : excREnc_uid140_block_rsrvd_fix_q = 2'b00;
            3'b111 : excREnc_uid140_block_rsrvd_fix_q = 2'b00;
            default : begin
                          // unreachable
                          excREnc_uid140_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // expRPostExc_uid148_block_rsrvd_fix(MUX,147)@36
    assign expRPostExc_uid148_block_rsrvd_fix_s = excREnc_uid140_block_rsrvd_fix_q;
    always @(expRPostExc_uid148_block_rsrvd_fix_s or cstAllZWE_uid21_block_rsrvd_fix_q or redist30_expPostRndF_uid116_block_rsrvd_fix_b_1_q or cstAllOWE_uid19_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid148_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid148_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid148_block_rsrvd_fix_q = redist30_expPostRndF_uid116_block_rsrvd_fix_b_1_q;
            2'b10 : expRPostExc_uid148_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid148_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            default : expRPostExc_uid148_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // oneFracRPostExc2_uid141_block_rsrvd_fix(CONSTANT,140)
    assign oneFracRPostExc2_uid141_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000001);

    // fracPostRndF_uid115_block_rsrvd_fix(BITSELECT,114)@35
    assign fracPostRndF_uid115_block_rsrvd_fix_in = expFracPostRnd_uid114_block_rsrvd_fix_q[52:0];
    assign fracPostRndF_uid115_block_rsrvd_fix_b = fracPostRndF_uid115_block_rsrvd_fix_in[52:1];

    // redist31_fracPostRndF_uid115_block_rsrvd_fix_b_1(DELAY,611)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_fracPostRndF_uid115_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist31_fracPostRndF_uid115_block_rsrvd_fix_b_1_q <= $unsigned(fracPostRndF_uid115_block_rsrvd_fix_b);
        end
    end

    // fracRPostExc_uid144_block_rsrvd_fix(MUX,143)@36
    assign fracRPostExc_uid144_block_rsrvd_fix_s = excREnc_uid140_block_rsrvd_fix_q;
    always @(fracRPostExc_uid144_block_rsrvd_fix_s or paddingY_uid16_block_rsrvd_fix_q or redist31_fracPostRndF_uid115_block_rsrvd_fix_b_1_q or oneFracRPostExc2_uid141_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid144_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid144_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid144_block_rsrvd_fix_q = redist31_fracPostRndF_uid115_block_rsrvd_fix_b_1_q;
            2'b10 : fracRPostExc_uid144_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid144_block_rsrvd_fix_q = oneFracRPostExc2_uid141_block_rsrvd_fix_q;
            default : fracRPostExc_uid144_block_rsrvd_fix_q = 52'b0;
        endcase
    end

    // divR_uid151_block_rsrvd_fix(BITJOIN,150)@36
    assign divR_uid151_block_rsrvd_fix_q = {sRPostExc_uid150_block_rsrvd_fix_q, expRPostExc_uid148_block_rsrvd_fix_q, fracRPostExc_uid144_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@36
    assign out_primWireOut = divR_uid151_block_rsrvd_fix_q;

endmodule
