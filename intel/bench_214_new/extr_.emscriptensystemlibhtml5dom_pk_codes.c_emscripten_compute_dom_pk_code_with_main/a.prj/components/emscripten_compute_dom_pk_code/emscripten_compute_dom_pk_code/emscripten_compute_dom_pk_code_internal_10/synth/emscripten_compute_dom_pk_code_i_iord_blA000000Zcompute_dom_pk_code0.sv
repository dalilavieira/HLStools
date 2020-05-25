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

// SystemVerilog created from emscripten_compute_dom_pk_code_i_iord_blA000000Zcompute_dom_pk_code0
// SystemVerilog created on Sun May 24 21:16:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_i_iord_blA000000Zcompute_dom_pk_code0 (
    input wire [9919:0] in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata,
    input wire [0:0] in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid,
    output wire [0:0] out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_dependence,
    input wire [0:0] in_i_valid,
    output wire [63:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [63:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [63:0] out_o_data_8_tpl,
    output wire [63:0] out_o_data_9_tpl,
    output wire [63:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [63:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [63:0] out_o_data_15_tpl,
    output wire [63:0] out_o_data_16_tpl,
    output wire [63:0] out_o_data_17_tpl,
    output wire [63:0] out_o_data_18_tpl,
    output wire [63:0] out_o_data_19_tpl,
    output wire [63:0] out_o_data_20_tpl,
    output wire [63:0] out_o_data_21_tpl,
    output wire [63:0] out_o_data_22_tpl,
    output wire [63:0] out_o_data_23_tpl,
    output wire [63:0] out_o_data_24_tpl,
    output wire [63:0] out_o_data_25_tpl,
    output wire [63:0] out_o_data_26_tpl,
    output wire [63:0] out_o_data_27_tpl,
    output wire [63:0] out_o_data_28_tpl,
    output wire [63:0] out_o_data_29_tpl,
    output wire [63:0] out_o_data_30_tpl,
    output wire [63:0] out_o_data_31_tpl,
    output wire [63:0] out_o_data_32_tpl,
    output wire [63:0] out_o_data_33_tpl,
    output wire [63:0] out_o_data_34_tpl,
    output wire [63:0] out_o_data_35_tpl,
    output wire [63:0] out_o_data_36_tpl,
    output wire [63:0] out_o_data_37_tpl,
    output wire [63:0] out_o_data_38_tpl,
    output wire [63:0] out_o_data_39_tpl,
    output wire [63:0] out_o_data_40_tpl,
    output wire [63:0] out_o_data_41_tpl,
    output wire [63:0] out_o_data_42_tpl,
    output wire [63:0] out_o_data_43_tpl,
    output wire [63:0] out_o_data_44_tpl,
    output wire [63:0] out_o_data_45_tpl,
    output wire [63:0] out_o_data_46_tpl,
    output wire [63:0] out_o_data_47_tpl,
    output wire [63:0] out_o_data_48_tpl,
    output wire [63:0] out_o_data_49_tpl,
    output wire [63:0] out_o_data_50_tpl,
    output wire [63:0] out_o_data_51_tpl,
    output wire [63:0] out_o_data_52_tpl,
    output wire [63:0] out_o_data_53_tpl,
    output wire [63:0] out_o_data_54_tpl,
    output wire [63:0] out_o_data_55_tpl,
    output wire [63:0] out_o_data_56_tpl,
    output wire [63:0] out_o_data_57_tpl,
    output wire [63:0] out_o_data_58_tpl,
    output wire [63:0] out_o_data_59_tpl,
    output wire [63:0] out_o_data_60_tpl,
    output wire [63:0] out_o_data_61_tpl,
    output wire [63:0] out_o_data_62_tpl,
    output wire [63:0] out_o_data_63_tpl,
    output wire [63:0] out_o_data_64_tpl,
    output wire [63:0] out_o_data_65_tpl,
    output wire [63:0] out_o_data_66_tpl,
    output wire [63:0] out_o_data_67_tpl,
    output wire [63:0] out_o_data_68_tpl,
    output wire [63:0] out_o_data_69_tpl,
    output wire [63:0] out_o_data_70_tpl,
    output wire [63:0] out_o_data_71_tpl,
    output wire [63:0] out_o_data_72_tpl,
    output wire [63:0] out_o_data_73_tpl,
    output wire [63:0] out_o_data_74_tpl,
    output wire [63:0] out_o_data_75_tpl,
    output wire [63:0] out_o_data_76_tpl,
    output wire [63:0] out_o_data_77_tpl,
    output wire [63:0] out_o_data_78_tpl,
    output wire [63:0] out_o_data_79_tpl,
    output wire [63:0] out_o_data_80_tpl,
    output wire [63:0] out_o_data_81_tpl,
    output wire [63:0] out_o_data_82_tpl,
    output wire [63:0] out_o_data_83_tpl,
    output wire [63:0] out_o_data_84_tpl,
    output wire [63:0] out_o_data_85_tpl,
    output wire [63:0] out_o_data_86_tpl,
    output wire [63:0] out_o_data_87_tpl,
    output wire [63:0] out_o_data_88_tpl,
    output wire [63:0] out_o_data_89_tpl,
    output wire [63:0] out_o_data_90_tpl,
    output wire [63:0] out_o_data_91_tpl,
    output wire [63:0] out_o_data_92_tpl,
    output wire [63:0] out_o_data_93_tpl,
    output wire [63:0] out_o_data_94_tpl,
    output wire [63:0] out_o_data_95_tpl,
    output wire [63:0] out_o_data_96_tpl,
    output wire [63:0] out_o_data_97_tpl,
    output wire [63:0] out_o_data_98_tpl,
    output wire [63:0] out_o_data_99_tpl,
    output wire [63:0] out_o_data_100_tpl,
    output wire [63:0] out_o_data_101_tpl,
    output wire [63:0] out_o_data_102_tpl,
    output wire [63:0] out_o_data_103_tpl,
    output wire [63:0] out_o_data_104_tpl,
    output wire [63:0] out_o_data_105_tpl,
    output wire [63:0] out_o_data_106_tpl,
    output wire [63:0] out_o_data_107_tpl,
    output wire [63:0] out_o_data_108_tpl,
    output wire [63:0] out_o_data_109_tpl,
    output wire [63:0] out_o_data_110_tpl,
    output wire [63:0] out_o_data_111_tpl,
    output wire [63:0] out_o_data_112_tpl,
    output wire [63:0] out_o_data_113_tpl,
    output wire [63:0] out_o_data_114_tpl,
    output wire [63:0] out_o_data_115_tpl,
    output wire [63:0] out_o_data_116_tpl,
    output wire [63:0] out_o_data_117_tpl,
    output wire [63:0] out_o_data_118_tpl,
    output wire [63:0] out_o_data_119_tpl,
    output wire [63:0] out_o_data_120_tpl,
    output wire [63:0] out_o_data_121_tpl,
    output wire [63:0] out_o_data_122_tpl,
    output wire [63:0] out_o_data_123_tpl,
    output wire [63:0] out_o_data_124_tpl,
    output wire [63:0] out_o_data_125_tpl,
    output wire [63:0] out_o_data_126_tpl,
    output wire [63:0] out_o_data_127_tpl,
    output wire [63:0] out_o_data_128_tpl,
    output wire [63:0] out_o_data_129_tpl,
    output wire [63:0] out_o_data_130_tpl,
    output wire [63:0] out_o_data_131_tpl,
    output wire [63:0] out_o_data_132_tpl,
    output wire [63:0] out_o_data_133_tpl,
    output wire [63:0] out_o_data_134_tpl,
    output wire [63:0] out_o_data_135_tpl,
    output wire [63:0] out_o_data_136_tpl,
    output wire [63:0] out_o_data_137_tpl,
    output wire [63:0] out_o_data_138_tpl,
    output wire [63:0] out_o_data_139_tpl,
    output wire [63:0] out_o_data_140_tpl,
    output wire [63:0] out_o_data_141_tpl,
    output wire [63:0] out_o_data_142_tpl,
    output wire [63:0] out_o_data_143_tpl,
    output wire [63:0] out_o_data_144_tpl,
    output wire [63:0] out_o_data_145_tpl,
    output wire [63:0] out_o_data_146_tpl,
    output wire [63:0] out_o_data_147_tpl,
    output wire [63:0] out_o_data_148_tpl,
    output wire [63:0] out_o_data_149_tpl,
    output wire [63:0] out_o_data_150_tpl,
    output wire [63:0] out_o_data_151_tpl,
    output wire [63:0] out_o_data_152_tpl,
    output wire [63:0] out_o_data_153_tpl,
    output wire [63:0] out_o_data_154_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c32_0_q;
    wire [9919:0] iord_i_fifodata;
    wire [0:0] iord_i_fifoempty;
    wire iord_i_fifoempty_bitsignaltemp;
    wire [0:0] iord_i_fifoendofpacket;
    wire iord_i_fifoendofpacket_bitsignaltemp;
    wire [31:0] iord_i_fifosize;
    wire [0:0] iord_i_fifostartofpacket;
    wire iord_i_fifostartofpacket_bitsignaltemp;
    wire [0:0] iord_i_fifovalid;
    wire iord_i_fifovalid_bitsignaltemp;
    wire [0:0] iord_i_init;
    wire iord_i_init_bitsignaltemp;
    wire [0:0] iord_i_predicate;
    wire iord_i_predicate_bitsignaltemp;
    wire [0:0] iord_i_stall;
    wire iord_i_stall_bitsignaltemp;
    wire [0:0] iord_i_valid;
    wire iord_i_valid_bitsignaltemp;
    wire [9919:0] iord_o_data;
    wire [0:0] iord_o_fifoready;
    wire iord_o_fifoready_bitsignaltemp;
    wire [0:0] iord_o_stall;
    wire iord_o_stall_bitsignaltemp;
    wire [0:0] iord_o_valid;
    wire iord_o_valid_bitsignaltemp;
    wire [31:0] iord_profile_total_fifo_size_incr;
    wire [63:0] ip_dsdk_adapt_bitselect10_b;
    wire [63:0] ip_dsdk_adapt_bitselect100_b;
    wire [63:0] ip_dsdk_adapt_bitselect102_b;
    wire [63:0] ip_dsdk_adapt_bitselect104_b;
    wire [63:0] ip_dsdk_adapt_bitselect106_b;
    wire [63:0] ip_dsdk_adapt_bitselect108_b;
    wire [63:0] ip_dsdk_adapt_bitselect110_b;
    wire [63:0] ip_dsdk_adapt_bitselect112_b;
    wire [63:0] ip_dsdk_adapt_bitselect114_b;
    wire [63:0] ip_dsdk_adapt_bitselect116_b;
    wire [63:0] ip_dsdk_adapt_bitselect118_b;
    wire [63:0] ip_dsdk_adapt_bitselect12_b;
    wire [63:0] ip_dsdk_adapt_bitselect120_b;
    wire [63:0] ip_dsdk_adapt_bitselect122_b;
    wire [63:0] ip_dsdk_adapt_bitselect124_b;
    wire [63:0] ip_dsdk_adapt_bitselect126_b;
    wire [63:0] ip_dsdk_adapt_bitselect128_b;
    wire [63:0] ip_dsdk_adapt_bitselect130_b;
    wire [63:0] ip_dsdk_adapt_bitselect132_b;
    wire [63:0] ip_dsdk_adapt_bitselect134_b;
    wire [63:0] ip_dsdk_adapt_bitselect136_b;
    wire [63:0] ip_dsdk_adapt_bitselect138_b;
    wire [63:0] ip_dsdk_adapt_bitselect14_b;
    wire [63:0] ip_dsdk_adapt_bitselect140_b;
    wire [63:0] ip_dsdk_adapt_bitselect142_b;
    wire [63:0] ip_dsdk_adapt_bitselect144_b;
    wire [63:0] ip_dsdk_adapt_bitselect146_b;
    wire [63:0] ip_dsdk_adapt_bitselect148_b;
    wire [63:0] ip_dsdk_adapt_bitselect150_b;
    wire [63:0] ip_dsdk_adapt_bitselect152_b;
    wire [63:0] ip_dsdk_adapt_bitselect154_b;
    wire [63:0] ip_dsdk_adapt_bitselect156_b;
    wire [63:0] ip_dsdk_adapt_bitselect158_b;
    wire [63:0] ip_dsdk_adapt_bitselect16_b;
    wire [63:0] ip_dsdk_adapt_bitselect160_b;
    wire [63:0] ip_dsdk_adapt_bitselect162_b;
    wire [63:0] ip_dsdk_adapt_bitselect164_b;
    wire [63:0] ip_dsdk_adapt_bitselect166_b;
    wire [63:0] ip_dsdk_adapt_bitselect168_b;
    wire [63:0] ip_dsdk_adapt_bitselect170_b;
    wire [63:0] ip_dsdk_adapt_bitselect172_b;
    wire [63:0] ip_dsdk_adapt_bitselect174_b;
    wire [63:0] ip_dsdk_adapt_bitselect176_b;
    wire [63:0] ip_dsdk_adapt_bitselect178_b;
    wire [63:0] ip_dsdk_adapt_bitselect18_b;
    wire [63:0] ip_dsdk_adapt_bitselect180_b;
    wire [63:0] ip_dsdk_adapt_bitselect182_b;
    wire [63:0] ip_dsdk_adapt_bitselect184_b;
    wire [63:0] ip_dsdk_adapt_bitselect186_b;
    wire [63:0] ip_dsdk_adapt_bitselect188_b;
    wire [63:0] ip_dsdk_adapt_bitselect190_b;
    wire [63:0] ip_dsdk_adapt_bitselect192_b;
    wire [63:0] ip_dsdk_adapt_bitselect194_b;
    wire [63:0] ip_dsdk_adapt_bitselect196_b;
    wire [63:0] ip_dsdk_adapt_bitselect198_b;
    wire [63:0] ip_dsdk_adapt_bitselect2_b;
    wire [63:0] ip_dsdk_adapt_bitselect20_b;
    wire [63:0] ip_dsdk_adapt_bitselect200_b;
    wire [63:0] ip_dsdk_adapt_bitselect202_b;
    wire [63:0] ip_dsdk_adapt_bitselect204_b;
    wire [63:0] ip_dsdk_adapt_bitselect206_b;
    wire [63:0] ip_dsdk_adapt_bitselect208_b;
    wire [63:0] ip_dsdk_adapt_bitselect210_b;
    wire [63:0] ip_dsdk_adapt_bitselect212_b;
    wire [63:0] ip_dsdk_adapt_bitselect214_b;
    wire [63:0] ip_dsdk_adapt_bitselect216_b;
    wire [63:0] ip_dsdk_adapt_bitselect218_b;
    wire [63:0] ip_dsdk_adapt_bitselect22_b;
    wire [63:0] ip_dsdk_adapt_bitselect220_b;
    wire [63:0] ip_dsdk_adapt_bitselect222_b;
    wire [63:0] ip_dsdk_adapt_bitselect224_b;
    wire [63:0] ip_dsdk_adapt_bitselect226_b;
    wire [63:0] ip_dsdk_adapt_bitselect228_b;
    wire [63:0] ip_dsdk_adapt_bitselect230_b;
    wire [63:0] ip_dsdk_adapt_bitselect232_b;
    wire [63:0] ip_dsdk_adapt_bitselect234_b;
    wire [63:0] ip_dsdk_adapt_bitselect236_b;
    wire [63:0] ip_dsdk_adapt_bitselect238_b;
    wire [63:0] ip_dsdk_adapt_bitselect24_b;
    wire [63:0] ip_dsdk_adapt_bitselect240_b;
    wire [63:0] ip_dsdk_adapt_bitselect242_b;
    wire [63:0] ip_dsdk_adapt_bitselect244_b;
    wire [63:0] ip_dsdk_adapt_bitselect246_b;
    wire [63:0] ip_dsdk_adapt_bitselect248_b;
    wire [63:0] ip_dsdk_adapt_bitselect250_b;
    wire [63:0] ip_dsdk_adapt_bitselect252_b;
    wire [63:0] ip_dsdk_adapt_bitselect254_b;
    wire [63:0] ip_dsdk_adapt_bitselect256_b;
    wire [63:0] ip_dsdk_adapt_bitselect258_b;
    wire [63:0] ip_dsdk_adapt_bitselect26_b;
    wire [63:0] ip_dsdk_adapt_bitselect260_b;
    wire [63:0] ip_dsdk_adapt_bitselect262_b;
    wire [63:0] ip_dsdk_adapt_bitselect264_b;
    wire [63:0] ip_dsdk_adapt_bitselect266_b;
    wire [63:0] ip_dsdk_adapt_bitselect268_b;
    wire [63:0] ip_dsdk_adapt_bitselect270_b;
    wire [63:0] ip_dsdk_adapt_bitselect272_b;
    wire [63:0] ip_dsdk_adapt_bitselect274_b;
    wire [63:0] ip_dsdk_adapt_bitselect276_b;
    wire [63:0] ip_dsdk_adapt_bitselect278_b;
    wire [63:0] ip_dsdk_adapt_bitselect28_b;
    wire [63:0] ip_dsdk_adapt_bitselect280_b;
    wire [63:0] ip_dsdk_adapt_bitselect282_b;
    wire [63:0] ip_dsdk_adapt_bitselect284_b;
    wire [63:0] ip_dsdk_adapt_bitselect286_b;
    wire [63:0] ip_dsdk_adapt_bitselect288_b;
    wire [63:0] ip_dsdk_adapt_bitselect290_b;
    wire [63:0] ip_dsdk_adapt_bitselect292_b;
    wire [63:0] ip_dsdk_adapt_bitselect294_b;
    wire [63:0] ip_dsdk_adapt_bitselect296_b;
    wire [63:0] ip_dsdk_adapt_bitselect298_b;
    wire [63:0] ip_dsdk_adapt_bitselect30_b;
    wire [63:0] ip_dsdk_adapt_bitselect300_b;
    wire [63:0] ip_dsdk_adapt_bitselect302_b;
    wire [63:0] ip_dsdk_adapt_bitselect304_b;
    wire [63:0] ip_dsdk_adapt_bitselect306_b;
    wire [63:0] ip_dsdk_adapt_bitselect308_b;
    wire [63:0] ip_dsdk_adapt_bitselect310_b;
    wire [63:0] ip_dsdk_adapt_bitselect32_b;
    wire [63:0] ip_dsdk_adapt_bitselect34_b;
    wire [63:0] ip_dsdk_adapt_bitselect36_b;
    wire [63:0] ip_dsdk_adapt_bitselect38_b;
    wire [63:0] ip_dsdk_adapt_bitselect4_b;
    wire [63:0] ip_dsdk_adapt_bitselect40_b;
    wire [63:0] ip_dsdk_adapt_bitselect42_b;
    wire [63:0] ip_dsdk_adapt_bitselect44_b;
    wire [63:0] ip_dsdk_adapt_bitselect46_b;
    wire [63:0] ip_dsdk_adapt_bitselect48_b;
    wire [63:0] ip_dsdk_adapt_bitselect50_b;
    wire [63:0] ip_dsdk_adapt_bitselect52_b;
    wire [63:0] ip_dsdk_adapt_bitselect54_b;
    wire [63:0] ip_dsdk_adapt_bitselect56_b;
    wire [63:0] ip_dsdk_adapt_bitselect58_b;
    wire [63:0] ip_dsdk_adapt_bitselect6_b;
    wire [63:0] ip_dsdk_adapt_bitselect60_b;
    wire [63:0] ip_dsdk_adapt_bitselect62_b;
    wire [63:0] ip_dsdk_adapt_bitselect64_b;
    wire [63:0] ip_dsdk_adapt_bitselect66_b;
    wire [63:0] ip_dsdk_adapt_bitselect68_b;
    wire [63:0] ip_dsdk_adapt_bitselect70_b;
    wire [63:0] ip_dsdk_adapt_bitselect72_b;
    wire [63:0] ip_dsdk_adapt_bitselect74_b;
    wire [63:0] ip_dsdk_adapt_bitselect76_b;
    wire [63:0] ip_dsdk_adapt_bitselect78_b;
    wire [63:0] ip_dsdk_adapt_bitselect8_b;
    wire [63:0] ip_dsdk_adapt_bitselect80_b;
    wire [63:0] ip_dsdk_adapt_bitselect82_b;
    wire [63:0] ip_dsdk_adapt_bitselect84_b;
    wire [63:0] ip_dsdk_adapt_bitselect86_b;
    wire [63:0] ip_dsdk_adapt_bitselect88_b;
    wire [63:0] ip_dsdk_adapt_bitselect90_b;
    wire [63:0] ip_dsdk_adapt_bitselect92_b;
    wire [63:0] ip_dsdk_adapt_bitselect94_b;
    wire [63:0] ip_dsdk_adapt_bitselect96_b;
    wire [63:0] ip_dsdk_adapt_bitselect98_b;


    // c32_0(CONSTANT,3)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iord(EXTIFACE,6)
    assign iord_i_fifodata = in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata;
    assign iord_i_fifoempty = GND_q;
    assign iord_i_fifoendofpacket = GND_q;
    assign iord_i_fifosize = c32_0_q;
    assign iord_i_fifostartofpacket = GND_q;
    assign iord_i_fifovalid = in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid;
    assign iord_i_init = GND_q;
    assign iord_i_predicate = GND_q;
    assign iord_i_stall = in_i_stall;
    assign iord_i_valid = in_i_valid;
    assign iord_i_fifoempty_bitsignaltemp = iord_i_fifoempty[0];
    assign iord_i_fifoendofpacket_bitsignaltemp = iord_i_fifoendofpacket[0];
    assign iord_i_fifostartofpacket_bitsignaltemp = iord_i_fifostartofpacket[0];
    assign iord_i_fifovalid_bitsignaltemp = iord_i_fifovalid[0];
    assign iord_i_init_bitsignaltemp = iord_i_init[0];
    assign iord_i_predicate_bitsignaltemp = iord_i_predicate[0];
    assign iord_i_stall_bitsignaltemp = iord_i_stall[0];
    assign iord_i_valid_bitsignaltemp = iord_i_valid[0];
    assign iord_o_fifoready[0] = iord_o_fifoready_bitsignaltemp;
    assign iord_o_stall[0] = iord_o_stall_bitsignaltemp;
    assign iord_o_valid[0] = iord_o_valid_bitsignaltemp;
    st_read #(
        .STAGING_CAPACITY(0),
        .ASYNC_RESET(1),
        .DATA_WIDTH(9920),
        .EMPTY_WIDTH(0),
        .NON_BLOCKING(0),
        .SYNCHRONIZE_RESET(0)
    ) theiord (
        .i_fifodata(in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata),
        .i_fifoempty(iord_i_fifoempty_bitsignaltemp),
        .i_fifoendofpacket(iord_i_fifoendofpacket_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_fifostartofpacket(iord_i_fifostartofpacket_bitsignaltemp),
        .i_fifovalid(iord_i_fifovalid_bitsignaltemp),
        .i_init(iord_i_init_bitsignaltemp),
        .i_predicate(iord_i_predicate_bitsignaltemp),
        .i_stall(iord_i_stall_bitsignaltemp),
        .i_valid(iord_i_valid_bitsignaltemp),
        .o_data(iord_o_data),
        .o_fifoready(iord_o_fifoready_bitsignaltemp),
        .o_stall(iord_o_stall_bitsignaltemp),
        .o_valid(iord_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,319)
    assign out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready = iord_o_fifoready;

    // sync_out(GPOUT,321)@20000000
    assign out_o_stall = iord_o_stall;

    // ip_dsdk_adapt_bitselect310(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect310_b = iord_o_data[9919:9856];

    // ip_dsdk_adapt_bitselect308(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect308_b = iord_o_data[9855:9792];

    // ip_dsdk_adapt_bitselect306(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect306_b = iord_o_data[9791:9728];

    // ip_dsdk_adapt_bitselect304(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect304_b = iord_o_data[9727:9664];

    // ip_dsdk_adapt_bitselect302(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect302_b = iord_o_data[9663:9600];

    // ip_dsdk_adapt_bitselect300(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect300_b = iord_o_data[9599:9536];

    // ip_dsdk_adapt_bitselect298(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect298_b = iord_o_data[9535:9472];

    // ip_dsdk_adapt_bitselect296(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect296_b = iord_o_data[9471:9408];

    // ip_dsdk_adapt_bitselect294(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect294_b = iord_o_data[9407:9344];

    // ip_dsdk_adapt_bitselect292(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect292_b = iord_o_data[9343:9280];

    // ip_dsdk_adapt_bitselect290(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect290_b = iord_o_data[9279:9216];

    // ip_dsdk_adapt_bitselect288(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect288_b = iord_o_data[9215:9152];

    // ip_dsdk_adapt_bitselect286(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect286_b = iord_o_data[9151:9088];

    // ip_dsdk_adapt_bitselect284(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect284_b = iord_o_data[9087:9024];

    // ip_dsdk_adapt_bitselect282(BITSELECT,109)
    assign ip_dsdk_adapt_bitselect282_b = iord_o_data[9023:8960];

    // ip_dsdk_adapt_bitselect280(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect280_b = iord_o_data[8959:8896];

    // ip_dsdk_adapt_bitselect278(BITSELECT,106)
    assign ip_dsdk_adapt_bitselect278_b = iord_o_data[8895:8832];

    // ip_dsdk_adapt_bitselect276(BITSELECT,105)
    assign ip_dsdk_adapt_bitselect276_b = iord_o_data[8831:8768];

    // ip_dsdk_adapt_bitselect274(BITSELECT,104)
    assign ip_dsdk_adapt_bitselect274_b = iord_o_data[8767:8704];

    // ip_dsdk_adapt_bitselect272(BITSELECT,103)
    assign ip_dsdk_adapt_bitselect272_b = iord_o_data[8703:8640];

    // ip_dsdk_adapt_bitselect270(BITSELECT,102)
    assign ip_dsdk_adapt_bitselect270_b = iord_o_data[8639:8576];

    // ip_dsdk_adapt_bitselect268(BITSELECT,101)
    assign ip_dsdk_adapt_bitselect268_b = iord_o_data[8575:8512];

    // ip_dsdk_adapt_bitselect266(BITSELECT,100)
    assign ip_dsdk_adapt_bitselect266_b = iord_o_data[8511:8448];

    // ip_dsdk_adapt_bitselect264(BITSELECT,99)
    assign ip_dsdk_adapt_bitselect264_b = iord_o_data[8447:8384];

    // ip_dsdk_adapt_bitselect262(BITSELECT,98)
    assign ip_dsdk_adapt_bitselect262_b = iord_o_data[8383:8320];

    // ip_dsdk_adapt_bitselect260(BITSELECT,97)
    assign ip_dsdk_adapt_bitselect260_b = iord_o_data[8319:8256];

    // ip_dsdk_adapt_bitselect258(BITSELECT,95)
    assign ip_dsdk_adapt_bitselect258_b = iord_o_data[8255:8192];

    // ip_dsdk_adapt_bitselect256(BITSELECT,94)
    assign ip_dsdk_adapt_bitselect256_b = iord_o_data[8191:8128];

    // ip_dsdk_adapt_bitselect254(BITSELECT,93)
    assign ip_dsdk_adapt_bitselect254_b = iord_o_data[8127:8064];

    // ip_dsdk_adapt_bitselect252(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect252_b = iord_o_data[8063:8000];

    // ip_dsdk_adapt_bitselect250(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect250_b = iord_o_data[7999:7936];

    // ip_dsdk_adapt_bitselect248(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect248_b = iord_o_data[7935:7872];

    // ip_dsdk_adapt_bitselect246(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect246_b = iord_o_data[7871:7808];

    // ip_dsdk_adapt_bitselect244(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect244_b = iord_o_data[7807:7744];

    // ip_dsdk_adapt_bitselect242(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect242_b = iord_o_data[7743:7680];

    // ip_dsdk_adapt_bitselect240(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect240_b = iord_o_data[7679:7616];

    // ip_dsdk_adapt_bitselect238(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect238_b = iord_o_data[7615:7552];

    // ip_dsdk_adapt_bitselect236(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect236_b = iord_o_data[7551:7488];

    // ip_dsdk_adapt_bitselect234(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect234_b = iord_o_data[7487:7424];

    // ip_dsdk_adapt_bitselect232(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect232_b = iord_o_data[7423:7360];

    // ip_dsdk_adapt_bitselect230(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect230_b = iord_o_data[7359:7296];

    // ip_dsdk_adapt_bitselect228(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect228_b = iord_o_data[7295:7232];

    // ip_dsdk_adapt_bitselect226(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect226_b = iord_o_data[7231:7168];

    // ip_dsdk_adapt_bitselect224(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect224_b = iord_o_data[7167:7104];

    // ip_dsdk_adapt_bitselect222(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect222_b = iord_o_data[7103:7040];

    // ip_dsdk_adapt_bitselect220(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect220_b = iord_o_data[7039:6976];

    // ip_dsdk_adapt_bitselect218(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect218_b = iord_o_data[6975:6912];

    // ip_dsdk_adapt_bitselect216(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect216_b = iord_o_data[6911:6848];

    // ip_dsdk_adapt_bitselect214(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect214_b = iord_o_data[6847:6784];

    // ip_dsdk_adapt_bitselect212(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect212_b = iord_o_data[6783:6720];

    // ip_dsdk_adapt_bitselect210(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect210_b = iord_o_data[6719:6656];

    // ip_dsdk_adapt_bitselect208(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect208_b = iord_o_data[6655:6592];

    // ip_dsdk_adapt_bitselect206(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect206_b = iord_o_data[6591:6528];

    // ip_dsdk_adapt_bitselect204(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect204_b = iord_o_data[6527:6464];

    // ip_dsdk_adapt_bitselect202(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect202_b = iord_o_data[6463:6400];

    // ip_dsdk_adapt_bitselect200(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect200_b = iord_o_data[6399:6336];

    // ip_dsdk_adapt_bitselect198(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect198_b = iord_o_data[6335:6272];

    // ip_dsdk_adapt_bitselect196(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect196_b = iord_o_data[6271:6208];

    // ip_dsdk_adapt_bitselect194(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect194_b = iord_o_data[6207:6144];

    // ip_dsdk_adapt_bitselect192(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect192_b = iord_o_data[6143:6080];

    // ip_dsdk_adapt_bitselect190(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect190_b = iord_o_data[6079:6016];

    // ip_dsdk_adapt_bitselect188(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect188_b = iord_o_data[6015:5952];

    // ip_dsdk_adapt_bitselect186(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect186_b = iord_o_data[5951:5888];

    // ip_dsdk_adapt_bitselect184(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect184_b = iord_o_data[5887:5824];

    // ip_dsdk_adapt_bitselect182(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect182_b = iord_o_data[5823:5760];

    // ip_dsdk_adapt_bitselect180(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect180_b = iord_o_data[5759:5696];

    // ip_dsdk_adapt_bitselect178(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect178_b = iord_o_data[5695:5632];

    // ip_dsdk_adapt_bitselect176(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect176_b = iord_o_data[5631:5568];

    // ip_dsdk_adapt_bitselect174(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect174_b = iord_o_data[5567:5504];

    // ip_dsdk_adapt_bitselect172(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect172_b = iord_o_data[5503:5440];

    // ip_dsdk_adapt_bitselect170(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect170_b = iord_o_data[5439:5376];

    // ip_dsdk_adapt_bitselect168(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect168_b = iord_o_data[5375:5312];

    // ip_dsdk_adapt_bitselect166(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect166_b = iord_o_data[5311:5248];

    // ip_dsdk_adapt_bitselect164(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect164_b = iord_o_data[5247:5184];

    // ip_dsdk_adapt_bitselect162(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect162_b = iord_o_data[5183:5120];

    // ip_dsdk_adapt_bitselect160(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect160_b = iord_o_data[5119:5056];

    // ip_dsdk_adapt_bitselect158(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect158_b = iord_o_data[5055:4992];

    // ip_dsdk_adapt_bitselect156(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect156_b = iord_o_data[4991:4928];

    // ip_dsdk_adapt_bitselect154(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect154_b = iord_o_data[4927:4864];

    // ip_dsdk_adapt_bitselect152(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect152_b = iord_o_data[4863:4800];

    // ip_dsdk_adapt_bitselect150(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect150_b = iord_o_data[4799:4736];

    // ip_dsdk_adapt_bitselect148(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect148_b = iord_o_data[4735:4672];

    // ip_dsdk_adapt_bitselect146(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect146_b = iord_o_data[4671:4608];

    // ip_dsdk_adapt_bitselect144(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect144_b = iord_o_data[4607:4544];

    // ip_dsdk_adapt_bitselect142(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect142_b = iord_o_data[4543:4480];

    // ip_dsdk_adapt_bitselect140(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect140_b = iord_o_data[4479:4416];

    // ip_dsdk_adapt_bitselect138(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect138_b = iord_o_data[4415:4352];

    // ip_dsdk_adapt_bitselect136(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect136_b = iord_o_data[4351:4288];

    // ip_dsdk_adapt_bitselect134(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect134_b = iord_o_data[4287:4224];

    // ip_dsdk_adapt_bitselect132(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect132_b = iord_o_data[4223:4160];

    // ip_dsdk_adapt_bitselect130(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect130_b = iord_o_data[4159:4096];

    // ip_dsdk_adapt_bitselect128(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect128_b = iord_o_data[4095:4032];

    // ip_dsdk_adapt_bitselect126(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect126_b = iord_o_data[4031:3968];

    // ip_dsdk_adapt_bitselect124(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect124_b = iord_o_data[3967:3904];

    // ip_dsdk_adapt_bitselect122(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect122_b = iord_o_data[3903:3840];

    // ip_dsdk_adapt_bitselect120(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect120_b = iord_o_data[3839:3776];

    // ip_dsdk_adapt_bitselect118(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect118_b = iord_o_data[3775:3712];

    // ip_dsdk_adapt_bitselect116(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect116_b = iord_o_data[3711:3648];

    // ip_dsdk_adapt_bitselect114(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect114_b = iord_o_data[3647:3584];

    // ip_dsdk_adapt_bitselect112(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect112_b = iord_o_data[3583:3520];

    // ip_dsdk_adapt_bitselect110(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect110_b = iord_o_data[3519:3456];

    // ip_dsdk_adapt_bitselect108(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect108_b = iord_o_data[3455:3392];

    // ip_dsdk_adapt_bitselect106(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect106_b = iord_o_data[3391:3328];

    // ip_dsdk_adapt_bitselect104(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect104_b = iord_o_data[3327:3264];

    // ip_dsdk_adapt_bitselect102(BITSELECT,9)
    assign ip_dsdk_adapt_bitselect102_b = iord_o_data[3263:3200];

    // ip_dsdk_adapt_bitselect100(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect100_b = iord_o_data[3199:3136];

    // ip_dsdk_adapt_bitselect98(BITSELECT,161)
    assign ip_dsdk_adapt_bitselect98_b = iord_o_data[3135:3072];

    // ip_dsdk_adapt_bitselect96(BITSELECT,160)
    assign ip_dsdk_adapt_bitselect96_b = iord_o_data[3071:3008];

    // ip_dsdk_adapt_bitselect94(BITSELECT,159)
    assign ip_dsdk_adapt_bitselect94_b = iord_o_data[3007:2944];

    // ip_dsdk_adapt_bitselect92(BITSELECT,158)
    assign ip_dsdk_adapt_bitselect92_b = iord_o_data[2943:2880];

    // ip_dsdk_adapt_bitselect90(BITSELECT,157)
    assign ip_dsdk_adapt_bitselect90_b = iord_o_data[2879:2816];

    // ip_dsdk_adapt_bitselect88(BITSELECT,156)
    assign ip_dsdk_adapt_bitselect88_b = iord_o_data[2815:2752];

    // ip_dsdk_adapt_bitselect86(BITSELECT,155)
    assign ip_dsdk_adapt_bitselect86_b = iord_o_data[2751:2688];

    // ip_dsdk_adapt_bitselect84(BITSELECT,154)
    assign ip_dsdk_adapt_bitselect84_b = iord_o_data[2687:2624];

    // ip_dsdk_adapt_bitselect82(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect82_b = iord_o_data[2623:2560];

    // ip_dsdk_adapt_bitselect80(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect80_b = iord_o_data[2559:2496];

    // ip_dsdk_adapt_bitselect78(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect78_b = iord_o_data[2495:2432];

    // ip_dsdk_adapt_bitselect76(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect76_b = iord_o_data[2431:2368];

    // ip_dsdk_adapt_bitselect74(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect74_b = iord_o_data[2367:2304];

    // ip_dsdk_adapt_bitselect72(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect72_b = iord_o_data[2303:2240];

    // ip_dsdk_adapt_bitselect70(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect70_b = iord_o_data[2239:2176];

    // ip_dsdk_adapt_bitselect68(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect68_b = iord_o_data[2175:2112];

    // ip_dsdk_adapt_bitselect66(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect66_b = iord_o_data[2111:2048];

    // ip_dsdk_adapt_bitselect64(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect64_b = iord_o_data[2047:1984];

    // ip_dsdk_adapt_bitselect62(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect62_b = iord_o_data[1983:1920];

    // ip_dsdk_adapt_bitselect60(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect60_b = iord_o_data[1919:1856];

    // ip_dsdk_adapt_bitselect58(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect58_b = iord_o_data[1855:1792];

    // ip_dsdk_adapt_bitselect56(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect56_b = iord_o_data[1791:1728];

    // ip_dsdk_adapt_bitselect54(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect54_b = iord_o_data[1727:1664];

    // ip_dsdk_adapt_bitselect52(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect52_b = iord_o_data[1663:1600];

    // ip_dsdk_adapt_bitselect50(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect50_b = iord_o_data[1599:1536];

    // ip_dsdk_adapt_bitselect48(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect48_b = iord_o_data[1535:1472];

    // ip_dsdk_adapt_bitselect46(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect46_b = iord_o_data[1471:1408];

    // ip_dsdk_adapt_bitselect44(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect44_b = iord_o_data[1407:1344];

    // ip_dsdk_adapt_bitselect42(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect42_b = iord_o_data[1343:1280];

    // ip_dsdk_adapt_bitselect40(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect40_b = iord_o_data[1279:1216];

    // ip_dsdk_adapt_bitselect38(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect38_b = iord_o_data[1215:1152];

    // ip_dsdk_adapt_bitselect36(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect36_b = iord_o_data[1151:1088];

    // ip_dsdk_adapt_bitselect34(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect34_b = iord_o_data[1087:1024];

    // ip_dsdk_adapt_bitselect32(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect32_b = iord_o_data[1023:960];

    // ip_dsdk_adapt_bitselect30(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect30_b = iord_o_data[959:896];

    // ip_dsdk_adapt_bitselect28(BITSELECT,107)
    assign ip_dsdk_adapt_bitselect28_b = iord_o_data[895:832];

    // ip_dsdk_adapt_bitselect26(BITSELECT,96)
    assign ip_dsdk_adapt_bitselect26_b = iord_o_data[831:768];

    // ip_dsdk_adapt_bitselect24(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect24_b = iord_o_data[767:704];

    // ip_dsdk_adapt_bitselect22(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect22_b = iord_o_data[703:640];

    // ip_dsdk_adapt_bitselect20(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect20_b = iord_o_data[639:576];

    // ip_dsdk_adapt_bitselect18(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect18_b = iord_o_data[575:512];

    // ip_dsdk_adapt_bitselect16(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect16_b = iord_o_data[511:448];

    // ip_dsdk_adapt_bitselect14(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect14_b = iord_o_data[447:384];

    // ip_dsdk_adapt_bitselect12(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect12_b = iord_o_data[383:320];

    // ip_dsdk_adapt_bitselect10(BITSELECT,7)
    assign ip_dsdk_adapt_bitselect10_b = iord_o_data[319:256];

    // ip_dsdk_adapt_bitselect8(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect8_b = iord_o_data[255:192];

    // ip_dsdk_adapt_bitselect6(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect6_b = iord_o_data[191:128];

    // ip_dsdk_adapt_bitselect4(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect4_b = iord_o_data[127:64];

    // ip_dsdk_adapt_bitselect2(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect2_b = iord_o_data[63:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,323)@2
    assign out_o_data_0_tpl = ip_dsdk_adapt_bitselect2_b;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect4_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect6_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect8_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect10_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect12_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect14_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect16_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect18_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect20_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect24_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect66_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect68_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect70_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect72_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect74_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect76_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect78_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect80_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect82_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect84_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect86_b;
    assign out_o_data_43_tpl = ip_dsdk_adapt_bitselect88_b;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect90_b;
    assign out_o_data_45_tpl = ip_dsdk_adapt_bitselect92_b;
    assign out_o_data_46_tpl = ip_dsdk_adapt_bitselect94_b;
    assign out_o_data_47_tpl = ip_dsdk_adapt_bitselect96_b;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect98_b;
    assign out_o_data_49_tpl = ip_dsdk_adapt_bitselect100_b;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect102_b;
    assign out_o_data_51_tpl = ip_dsdk_adapt_bitselect104_b;
    assign out_o_data_52_tpl = ip_dsdk_adapt_bitselect106_b;
    assign out_o_data_53_tpl = ip_dsdk_adapt_bitselect108_b;
    assign out_o_data_54_tpl = ip_dsdk_adapt_bitselect110_b;
    assign out_o_data_55_tpl = ip_dsdk_adapt_bitselect112_b;
    assign out_o_data_56_tpl = ip_dsdk_adapt_bitselect114_b;
    assign out_o_data_57_tpl = ip_dsdk_adapt_bitselect116_b;
    assign out_o_data_58_tpl = ip_dsdk_adapt_bitselect118_b;
    assign out_o_data_59_tpl = ip_dsdk_adapt_bitselect120_b;
    assign out_o_data_60_tpl = ip_dsdk_adapt_bitselect122_b;
    assign out_o_data_61_tpl = ip_dsdk_adapt_bitselect124_b;
    assign out_o_data_62_tpl = ip_dsdk_adapt_bitselect126_b;
    assign out_o_data_63_tpl = ip_dsdk_adapt_bitselect128_b;
    assign out_o_data_64_tpl = ip_dsdk_adapt_bitselect130_b;
    assign out_o_data_65_tpl = ip_dsdk_adapt_bitselect132_b;
    assign out_o_data_66_tpl = ip_dsdk_adapt_bitselect134_b;
    assign out_o_data_67_tpl = ip_dsdk_adapt_bitselect136_b;
    assign out_o_data_68_tpl = ip_dsdk_adapt_bitselect138_b;
    assign out_o_data_69_tpl = ip_dsdk_adapt_bitselect140_b;
    assign out_o_data_70_tpl = ip_dsdk_adapt_bitselect142_b;
    assign out_o_data_71_tpl = ip_dsdk_adapt_bitselect144_b;
    assign out_o_data_72_tpl = ip_dsdk_adapt_bitselect146_b;
    assign out_o_data_73_tpl = ip_dsdk_adapt_bitselect148_b;
    assign out_o_data_74_tpl = ip_dsdk_adapt_bitselect150_b;
    assign out_o_data_75_tpl = ip_dsdk_adapt_bitselect152_b;
    assign out_o_data_76_tpl = ip_dsdk_adapt_bitselect154_b;
    assign out_o_data_77_tpl = ip_dsdk_adapt_bitselect156_b;
    assign out_o_data_78_tpl = ip_dsdk_adapt_bitselect158_b;
    assign out_o_data_79_tpl = ip_dsdk_adapt_bitselect160_b;
    assign out_o_data_80_tpl = ip_dsdk_adapt_bitselect162_b;
    assign out_o_data_81_tpl = ip_dsdk_adapt_bitselect164_b;
    assign out_o_data_82_tpl = ip_dsdk_adapt_bitselect166_b;
    assign out_o_data_83_tpl = ip_dsdk_adapt_bitselect168_b;
    assign out_o_data_84_tpl = ip_dsdk_adapt_bitselect170_b;
    assign out_o_data_85_tpl = ip_dsdk_adapt_bitselect172_b;
    assign out_o_data_86_tpl = ip_dsdk_adapt_bitselect174_b;
    assign out_o_data_87_tpl = ip_dsdk_adapt_bitselect176_b;
    assign out_o_data_88_tpl = ip_dsdk_adapt_bitselect178_b;
    assign out_o_data_89_tpl = ip_dsdk_adapt_bitselect180_b;
    assign out_o_data_90_tpl = ip_dsdk_adapt_bitselect182_b;
    assign out_o_data_91_tpl = ip_dsdk_adapt_bitselect184_b;
    assign out_o_data_92_tpl = ip_dsdk_adapt_bitselect186_b;
    assign out_o_data_93_tpl = ip_dsdk_adapt_bitselect188_b;
    assign out_o_data_94_tpl = ip_dsdk_adapt_bitselect190_b;
    assign out_o_data_95_tpl = ip_dsdk_adapt_bitselect192_b;
    assign out_o_data_96_tpl = ip_dsdk_adapt_bitselect194_b;
    assign out_o_data_97_tpl = ip_dsdk_adapt_bitselect196_b;
    assign out_o_data_98_tpl = ip_dsdk_adapt_bitselect198_b;
    assign out_o_data_99_tpl = ip_dsdk_adapt_bitselect200_b;
    assign out_o_data_100_tpl = ip_dsdk_adapt_bitselect202_b;
    assign out_o_data_101_tpl = ip_dsdk_adapt_bitselect204_b;
    assign out_o_data_102_tpl = ip_dsdk_adapt_bitselect206_b;
    assign out_o_data_103_tpl = ip_dsdk_adapt_bitselect208_b;
    assign out_o_data_104_tpl = ip_dsdk_adapt_bitselect210_b;
    assign out_o_data_105_tpl = ip_dsdk_adapt_bitselect212_b;
    assign out_o_data_106_tpl = ip_dsdk_adapt_bitselect214_b;
    assign out_o_data_107_tpl = ip_dsdk_adapt_bitselect216_b;
    assign out_o_data_108_tpl = ip_dsdk_adapt_bitselect218_b;
    assign out_o_data_109_tpl = ip_dsdk_adapt_bitselect220_b;
    assign out_o_data_110_tpl = ip_dsdk_adapt_bitselect222_b;
    assign out_o_data_111_tpl = ip_dsdk_adapt_bitselect224_b;
    assign out_o_data_112_tpl = ip_dsdk_adapt_bitselect226_b;
    assign out_o_data_113_tpl = ip_dsdk_adapt_bitselect228_b;
    assign out_o_data_114_tpl = ip_dsdk_adapt_bitselect230_b;
    assign out_o_data_115_tpl = ip_dsdk_adapt_bitselect232_b;
    assign out_o_data_116_tpl = ip_dsdk_adapt_bitselect234_b;
    assign out_o_data_117_tpl = ip_dsdk_adapt_bitselect236_b;
    assign out_o_data_118_tpl = ip_dsdk_adapt_bitselect238_b;
    assign out_o_data_119_tpl = ip_dsdk_adapt_bitselect240_b;
    assign out_o_data_120_tpl = ip_dsdk_adapt_bitselect242_b;
    assign out_o_data_121_tpl = ip_dsdk_adapt_bitselect244_b;
    assign out_o_data_122_tpl = ip_dsdk_adapt_bitselect246_b;
    assign out_o_data_123_tpl = ip_dsdk_adapt_bitselect248_b;
    assign out_o_data_124_tpl = ip_dsdk_adapt_bitselect250_b;
    assign out_o_data_125_tpl = ip_dsdk_adapt_bitselect252_b;
    assign out_o_data_126_tpl = ip_dsdk_adapt_bitselect254_b;
    assign out_o_data_127_tpl = ip_dsdk_adapt_bitselect256_b;
    assign out_o_data_128_tpl = ip_dsdk_adapt_bitselect258_b;
    assign out_o_data_129_tpl = ip_dsdk_adapt_bitselect260_b;
    assign out_o_data_130_tpl = ip_dsdk_adapt_bitselect262_b;
    assign out_o_data_131_tpl = ip_dsdk_adapt_bitselect264_b;
    assign out_o_data_132_tpl = ip_dsdk_adapt_bitselect266_b;
    assign out_o_data_133_tpl = ip_dsdk_adapt_bitselect268_b;
    assign out_o_data_134_tpl = ip_dsdk_adapt_bitselect270_b;
    assign out_o_data_135_tpl = ip_dsdk_adapt_bitselect272_b;
    assign out_o_data_136_tpl = ip_dsdk_adapt_bitselect274_b;
    assign out_o_data_137_tpl = ip_dsdk_adapt_bitselect276_b;
    assign out_o_data_138_tpl = ip_dsdk_adapt_bitselect278_b;
    assign out_o_data_139_tpl = ip_dsdk_adapt_bitselect280_b;
    assign out_o_data_140_tpl = ip_dsdk_adapt_bitselect282_b;
    assign out_o_data_141_tpl = ip_dsdk_adapt_bitselect284_b;
    assign out_o_data_142_tpl = ip_dsdk_adapt_bitselect286_b;
    assign out_o_data_143_tpl = ip_dsdk_adapt_bitselect288_b;
    assign out_o_data_144_tpl = ip_dsdk_adapt_bitselect290_b;
    assign out_o_data_145_tpl = ip_dsdk_adapt_bitselect292_b;
    assign out_o_data_146_tpl = ip_dsdk_adapt_bitselect294_b;
    assign out_o_data_147_tpl = ip_dsdk_adapt_bitselect296_b;
    assign out_o_data_148_tpl = ip_dsdk_adapt_bitselect298_b;
    assign out_o_data_149_tpl = ip_dsdk_adapt_bitselect300_b;
    assign out_o_data_150_tpl = ip_dsdk_adapt_bitselect302_b;
    assign out_o_data_151_tpl = ip_dsdk_adapt_bitselect304_b;
    assign out_o_data_152_tpl = ip_dsdk_adapt_bitselect306_b;
    assign out_o_data_153_tpl = ip_dsdk_adapt_bitselect308_b;
    assign out_o_data_154_tpl = ip_dsdk_adapt_bitselect310_b;
    assign out_o_valid = iord_o_valid;

endmodule
