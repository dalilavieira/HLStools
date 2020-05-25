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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000007Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000007Z_xmlchecklanguageid0 (
    input wire [63:0] in_lm9225_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm9225_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm9225_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm9225_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_22_0,
    input wire [63:0] in_intel_reserved_ffwd_27_0,
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_29_0,
    input wire [0:0] in_intel_reserved_ffwd_30_0,
    input wire [0:0] in_intel_reserved_ffwd_31_0,
    input wire [0:0] in_intel_reserved_ffwd_32_0,
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_36_0,
    input wire [63:0] in_intel_reserved_ffwd_37_0,
    input wire [7:0] in_intel_reserved_ffwd_38_0,
    input wire [0:0] in_intel_reserved_ffwd_39_0,
    input wire [0:0] in_intel_reserved_ffwd_40_0,
    input wire [0:0] in_intel_reserved_ffwd_41_0,
    input wire [63:0] in_intel_reserved_ffwd_44_0,
    input wire [7:0] in_intel_reserved_ffwd_45_0,
    output wire [63:0] out_intel_reserved_ffwd_46_0,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_lm7426_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm7426_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm7426_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm7426_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_intel_reserved_ffwd_47_0,
    input wire [63:0] in_lm54627_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm54627_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm54627_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm54627_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_48_0,
    output wire [0:0] out_intel_reserved_ffwd_49_0,
    output wire [0:0] out_intel_reserved_ffwd_50_0,
    output wire [0:0] out_intel_reserved_ffwd_51_0,
    output wire [0:0] out_intel_reserved_ffwd_52_0,
    output wire [63:0] out_intel_reserved_ffwd_53_0,
    output wire [7:0] out_intel_reserved_ffwd_54_0,
    output wire [0:0] out_intel_reserved_ffwd_55_0,
    output wire [0:0] out_intel_reserved_ffwd_56_0,
    output wire [0:0] out_intel_reserved_ffwd_57_0,
    output wire [63:0] out_intel_reserved_ffwd_58_0,
    output wire [0:0] out_intel_reserved_ffwd_59_0,
    output wire [63:0] out_intel_reserved_ffwd_60_0,
    output wire [0:0] out_intel_reserved_ffwd_61_0,
    output wire [0:0] out_intel_reserved_ffwd_62_0,
    output wire [0:0] out_intel_reserved_ffwd_63_0,
    output wire [0:0] out_intel_reserved_ffwd_64_0,
    output wire [0:0] out_intel_reserved_ffwd_65_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_xmlCheckLanguageID109_0_tpl,
    output wire [0:0] out_unnamed_xmlCheckLanguageID7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_4212_q;
    wire [63:0] c_i64_5211_q;
    wire [7:0] c_i8_10217_q;
    wire [7:0] c_i8_26220_q;
    wire [7:0] c_i8_33218_q;
    wire [7:0] c_i8_48216_q;
    wire [7:0] c_i8_65219_q;
    wire [0:0] i_cmp201_xmlchecklanguageid13_qi;
    reg [0:0] i_cmp201_xmlchecklanguageid13_q;
    wire [0:0] i_cmp218_xmlchecklanguageid33_qi;
    reg [0:0] i_cmp218_xmlchecklanguageid33_q;
    wire [0:0] i_cmp223_xmlchecklanguageid47_qi;
    reg [0:0] i_cmp223_xmlchecklanguageid47_q;
    wire [0:0] i_cmp228_xmlchecklanguageid58_q;
    wire [0:0] i_lcssa164_select_xmlchecklanguageid8_s;
    reg [7:0] i_lcssa164_select_xmlchecklanguageid8_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6852_xmlchecklanguageid69_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6856_xmlchecklanguageid82_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp68_phi_decision1499_xor61_xmlchecklanguageid102_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1277_xmlchecklanguageid2_out_dest_data_out_41_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1278_xmlchecklanguageid6_out_dest_data_out_41_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid66_xmlchecklanguageid15_out_dest_data_out_30_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid67_xmlchecklanguageid17_out_dest_data_out_31_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid68_xmlchecklanguageid19_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid69_xmlchecklanguageid21_out_dest_data_out_40_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid70_xmlchecklanguageid25_out_dest_data_out_30_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid71_xmlchecklanguageid27_out_dest_data_out_32_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid72_xmlchecklanguageid29_out_dest_data_out_40_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid73_xmlchecklanguageid35_out_dest_data_out_39_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid74_xmlchecklanguageid37_out_dest_data_out_29_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid75_xmlchecklanguageid42_out_dest_data_out_29_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid76_xmlchecklanguageid45_out_dest_data_out_29_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid77_xmlchecklanguageid50_out_dest_data_out_22_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid78_xmlchecklanguageid51_out_dest_data_out_40_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid79_xmlchecklanguageid60_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid80_xmlchecklanguageid74_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid81_xmlchecklanguageid75_out_dest_data_out_39_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid82_xmlchecklanguageid89_out_dest_data_out_36_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid83_xmlchecklanguageid90_out_dest_data_out_40_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid84_xmlchecklanguageid92_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid85_xmlchecklanguageid93_out_dest_data_out_40_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid86_xmlchecklanguageid96_out_dest_data_out_39_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid87_xmlchecklanguageid104_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid88_xmlchecklanguageid112_out_dest_data_out_18_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lcssa147_select71_xmlchecklanguageid44_out_dest_data_out_28_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lm1552375_xmlchecklanguageid5_out_dest_data_out_38_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_pre155_lm2482_xmlchecklanguageid7_out_dest_data_out_45_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16772_xmlchecklanguageid95_out_dest_data_out_37_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16773_xmlchecklanguageid10_out_dest_data_out_37_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16774_xmlchecklanguageid1_out_dest_data_out_37_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr196170_replace_phi81_xmlchecklanguageid3_out_dest_data_out_44_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select46_xmlchecklanguageid98_out_dest_data_out_13_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select68_xmlchecklanguageid41_out_dest_data_out_27_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid100_xmlchecklanguageid139_out_intel_reserved_ffwd_57_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid102_xmlchecklanguageid141_out_intel_reserved_ffwd_59_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid104_xmlchecklanguageid143_out_intel_reserved_ffwd_61_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid105_xmlchecklanguageid144_out_intel_reserved_ffwd_62_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid106_xmlchecklanguageid145_out_intel_reserved_ffwd_63_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid107_xmlchecklanguageid146_out_intel_reserved_ffwd_64_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid108_xmlchecklanguageid147_out_intel_reserved_ffwd_65_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid91_xmlchecklanguageid130_out_intel_reserved_ffwd_48_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid92_xmlchecklanguageid131_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid93_xmlchecklanguageid132_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid94_xmlchecklanguageid133_out_intel_reserved_ffwd_51_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid95_xmlchecklanguageid134_out_intel_reserved_ffwd_52_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid98_xmlchecklanguageid137_out_intel_reserved_ffwd_55_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid99_xmlchecklanguageid138_out_intel_reserved_ffwd_56_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid90_xmlchecklanguageid129_out_intel_reserved_ffwd_47_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid97_xmlchecklanguageid136_out_intel_reserved_ffwd_54_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid101_xmlchecklanguageid140_out_intel_reserved_ffwd_58_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid103_xmlchecklanguageid142_out_intel_reserved_ffwd_60_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid89_xmlchecklanguageid128_out_intel_reserved_ffwd_46_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid96_xmlchecklanguageid135_out_intel_reserved_ffwd_53_0;
    wire [63:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_o_readdata;
    wire [0:0] i_not4_xmlchecklanguageid126_qi;
    reg [0:0] i_not4_xmlchecklanguageid126_q;
    wire [0:0] i_notlhs5_xmlchecklanguageid125_q;
    wire [0:0] i_nxt_2_lcssa_select_xmlchecklanguageid4_s;
    reg [63:0] i_nxt_2_lcssa_select_xmlchecklanguageid4_q;
    wire [0:0] i_nxt_3_select_xmlchecklanguageid43_s;
    reg [63:0] i_nxt_3_select_xmlchecklanguageid43_q;
    wire [0:0] i_nxt_8_select364_xmlchecklanguageid97_s;
    reg [63:0] i_nxt_8_select364_xmlchecklanguageid97_q;
    wire [0:0] i_nxt_8_select_xmlchecklanguageid99_s;
    reg [63:0] i_nxt_8_select_xmlchecklanguageid99_q;
    wire [8:0] i_off126_xmlchecklanguageid72_a;
    wire [8:0] i_off126_xmlchecklanguageid72_b;
    logic [8:0] i_off126_xmlchecklanguageid72_o;
    wire [8:0] i_off126_xmlchecklanguageid72_q;
    wire [8:0] i_off131_xmlchecklanguageid110_a;
    wire [8:0] i_off131_xmlchecklanguageid110_b;
    logic [8:0] i_off131_xmlchecklanguageid110_o;
    wire [8:0] i_off131_xmlchecklanguageid110_q;
    wire [8:0] i_off132_xmlchecklanguageid122_a;
    wire [8:0] i_off132_xmlchecklanguageid122_b;
    logic [8:0] i_off132_xmlchecklanguageid122_o;
    wire [8:0] i_off132_xmlchecklanguageid122_q;
    wire [0:0] i_phi_decision314_select_xmlchecklanguageid91_q;
    wire [0:0] i_phi_decision686_and_i0_not_xmlchecklanguageid68_q;
    wire [0:0] i_phi_decision94_select_xmlchecklanguageid94_q;
    wire [0:0] i_phi_decision_xor_xmlchecklanguageid124_q;
    wire [0:0] i_reduction_xmlchecklanguageid_13_xmlchecklanguageid36_q;
    wire [0:0] i_reduction_xmlchecklanguageid_14_xmlchecklanguageid38_q;
    wire [0:0] i_reduction_xmlchecklanguageid_15_xmlchecklanguageid39_q;
    wire [0:0] i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_q;
    wire [0:0] i_reduction_xmlchecklanguageid_17_xmlchecklanguageid52_q;
    wire [0:0] i_reduction_xmlchecklanguageid_18_xmlchecklanguageid53_q;
    wire [0:0] i_reduction_xmlchecklanguageid_19_xmlchecklanguageid54_q;
    wire [0:0] i_reduction_xmlchecklanguageid_20_xmlchecklanguageid55_q;
    wire [0:0] i_reduction_xmlchecklanguageid_22_xmlchecklanguageid61_q;
    wire [0:0] i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62_q;
    wire [0:0] i_reduction_xmlchecklanguageid_24_xmlchecklanguageid63_q;
    wire [0:0] i_reduction_xmlchecklanguageid_28_xmlchecklanguageid67_q;
    wire [0:0] i_reduction_xmlchecklanguageid_29_xmlchecklanguageid76_q;
    wire [0:0] i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77_q;
    wire [0:0] i_reduction_xmlchecklanguageid_31_xmlchecklanguageid78_q;
    wire [0:0] i_reduction_xmlchecklanguageid_32_xmlchecklanguageid101_q;
    wire [0:0] i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q;
    wire [0:0] i_reduction_xmlchecklanguageid_34_xmlchecklanguageid105_q;
    wire [0:0] i_reduction_xmlchecklanguageid_35_xmlchecklanguageid106_q;
    wire [0:0] i_reduction_xmlchecklanguageid_36_xmlchecklanguageid107_q;
    wire [0:0] i_reduction_xmlchecklanguageid_37_xmlchecklanguageid118_q;
    wire [0:0] i_reduction_xmlchecklanguageid_39_xmlchecklanguageid119_q;
    wire [0:0] i_select_xmlchecklanguageid46_s;
    reg [7:0] i_select_xmlchecklanguageid46_q;
    wire [64:0] i_sub_ptr_sub200_off_xmlchecklanguageid23_a;
    wire [64:0] i_sub_ptr_sub200_off_xmlchecklanguageid23_b;
    logic [64:0] i_sub_ptr_sub200_off_xmlchecklanguageid23_o;
    wire [64:0] i_sub_ptr_sub200_off_xmlchecklanguageid23_q;
    wire [64:0] i_sub_ptr_sub200_xmlchecklanguageid12_a;
    wire [64:0] i_sub_ptr_sub200_xmlchecklanguageid12_b;
    logic [64:0] i_sub_ptr_sub200_xmlchecklanguageid12_o;
    wire [64:0] i_sub_ptr_sub200_xmlchecklanguageid12_q;
    wire [0:0] i_unnamed_xmlchecklanguageid108_q;
    wire [9:0] i_unnamed_xmlchecklanguageid111_a;
    wire [9:0] i_unnamed_xmlchecklanguageid111_b;
    logic [9:0] i_unnamed_xmlchecklanguageid111_o;
    wire [0:0] i_unnamed_xmlchecklanguageid111_c;
    wire [0:0] i_unnamed_xmlchecklanguageid113_q;
    wire [0:0] i_unnamed_xmlchecklanguageid114_q;
    wire [0:0] i_unnamed_xmlchecklanguageid115_q;
    wire [0:0] i_unnamed_xmlchecklanguageid116_q;
    wire [0:0] i_unnamed_xmlchecklanguageid120_q;
    wire [9:0] i_unnamed_xmlchecklanguageid123_a;
    wire [9:0] i_unnamed_xmlchecklanguageid123_b;
    logic [9:0] i_unnamed_xmlchecklanguageid123_o;
    wire [0:0] i_unnamed_xmlchecklanguageid123_c;
    wire [0:0] i_unnamed_xmlchecklanguageid127_q;
    wire [0:0] i_unnamed_xmlchecklanguageid16_q;
    wire [0:0] i_unnamed_xmlchecklanguageid18_q;
    wire [0:0] i_unnamed_xmlchecklanguageid20_q;
    wire [0:0] i_unnamed_xmlchecklanguageid22_q;
    wire [65:0] i_unnamed_xmlchecklanguageid24_a;
    wire [65:0] i_unnamed_xmlchecklanguageid24_b;
    logic [65:0] i_unnamed_xmlchecklanguageid24_o;
    wire [0:0] i_unnamed_xmlchecklanguageid24_c;
    wire [0:0] i_unnamed_xmlchecklanguageid26_q;
    wire [0:0] i_unnamed_xmlchecklanguageid28_q;
    wire [0:0] i_unnamed_xmlchecklanguageid30_q;
    wire [0:0] i_unnamed_xmlchecklanguageid31_q;
    wire [0:0] i_unnamed_xmlchecklanguageid32_qi;
    reg [0:0] i_unnamed_xmlchecklanguageid32_q;
    wire [0:0] i_unnamed_xmlchecklanguageid49_q;
    wire [0:0] i_unnamed_xmlchecklanguageid56_q;
    wire [0:0] i_unnamed_xmlchecklanguageid57_q;
    wire [0:0] i_unnamed_xmlchecklanguageid64_q;
    wire [0:0] i_unnamed_xmlchecklanguageid65_q;
    wire [0:0] i_unnamed_xmlchecklanguageid70_q;
    wire [9:0] i_unnamed_xmlchecklanguageid73_a;
    wire [9:0] i_unnamed_xmlchecklanguageid73_b;
    logic [9:0] i_unnamed_xmlchecklanguageid73_o;
    wire [0:0] i_unnamed_xmlchecklanguageid73_c;
    wire [0:0] i_unnamed_xmlchecklanguageid79_q;
    wire [0:0] i_unnamed_xmlchecklanguageid80_q;
    wire [0:0] i_unnamed_xmlchecklanguageid81_q;
    wire [0:0] i_unnamed_xmlchecklanguageid83_q;
    wire [7:0] i_unnamed_xmlchecklanguageid84_q;
    wire [7:0] i_unnamed_xmlchecklanguageid84_vt_join_q;
    wire [8:0] i_unnamed_xmlchecklanguageid85_a;
    wire [8:0] i_unnamed_xmlchecklanguageid85_b;
    logic [8:0] i_unnamed_xmlchecklanguageid85_o;
    wire [8:0] i_unnamed_xmlchecklanguageid85_q;
    wire [9:0] i_unnamed_xmlchecklanguageid86_a;
    wire [9:0] i_unnamed_xmlchecklanguageid86_b;
    logic [9:0] i_unnamed_xmlchecklanguageid86_o;
    wire [0:0] i_unnamed_xmlchecklanguageid86_c;
    wire [0:0] i_unnamed_xmlchecklanguageid87_q;
    wire [7:0] bgTrunc_i_off126_xmlchecklanguageid72_sel_x_b;
    wire [7:0] bgTrunc_i_off131_xmlchecklanguageid110_sel_x_b;
    wire [7:0] bgTrunc_i_off132_xmlchecklanguageid122_sel_x_b;
    wire [63:0] bgTrunc_i_sub_ptr_sub200_off_xmlchecklanguageid23_sel_x_b;
    wire [63:0] bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b;
    wire [7:0] bgTrunc_i_unnamed_xmlchecklanguageid85_sel_x_b;
    wire [63:0] c_i64_2210_recast_x_q;
    wire [7:0] c_i8_0214_recast_x_q;
    wire [7:0] c_i8_45215_recast_x_q;
    wire [64:0] i_arrayidx332_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_arrayidx332_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_arrayidx332_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_arrayidx332_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_arrayidx332_xmlchecklanguageid0_c_i64_11_x_q;
    wire [63:0] i_arrayidx332_xmlchecklanguageid0_trunc_sel_x_b;
    wire [64:0] i_arrayidx340_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_arrayidx340_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_arrayidx340_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_arrayidx340_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_arrayidx340_xmlchecklanguageid0_trunc_sel_x_b;
    wire [64:0] i_incdec_ptr231_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_incdec_ptr231_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_incdec_ptr231_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_incdec_ptr231_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b;
    wire [64:0] i_incdec_ptr260166_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_incdec_ptr260166_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_incdec_ptr260166_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_incdec_ptr260166_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_incdec_ptr260166_xmlchecklanguageid0_trunc_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg56_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg57_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg58_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg59_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg60_q;
    wire [4:0] i_unnamed_xmlchecklanguageid84_vt_select_4_merged_bit_select_b;
    wire [1:0] i_unnamed_xmlchecklanguageid84_vt_select_4_merged_bit_select_c;
    reg [63:0] redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_q;
    reg [63:0] redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_delay_0;
    reg [63:0] redist2_bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b_1_q;
    reg [0:0] redist3_sync_together243_in_i_valid_2_q;
    reg [0:0] redist3_sync_together243_in_i_valid_2_delay_0;
    reg [0:0] redist4_sync_together243_in_i_valid_3_q;
    reg [0:0] redist5_sync_together243_in_i_valid_10_q;
    reg [0:0] redist6_sync_together243_in_i_valid_11_q;
    reg [0:0] redist7_sync_together243_in_i_valid_19_q;
    reg [0:0] redist8_sync_together243_in_i_valid_26_q;
    reg [0:0] redist9_i_unnamed_xmlchecklanguageid79_q_8_q;
    reg [0:0] redist10_i_unnamed_xmlchecklanguageid65_q_8_q;
    reg [0:0] redist11_i_unnamed_xmlchecklanguageid65_q_16_q;
    reg [0:0] redist12_i_unnamed_xmlchecklanguageid49_q_7_q;
    reg [0:0] redist13_i_unnamed_xmlchecklanguageid49_q_8_q;
    reg [0:0] redist14_i_unnamed_xmlchecklanguageid32_q_8_q;
    reg [0:0] redist15_i_unnamed_xmlchecklanguageid31_q_1_q;
    reg [0:0] redist16_i_unnamed_xmlchecklanguageid22_q_17_q;
    reg [0:0] redist17_i_unnamed_xmlchecklanguageid20_q_1_q;
    reg [0:0] redist18_i_unnamed_xmlchecklanguageid20_q_8_q;
    reg [0:0] redist19_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_8_q;
    reg [0:0] redist20_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_16_q;
    reg [0:0] redist21_i_phi_decision314_select_xmlchecklanguageid91_q_8_q;
    reg [63:0] redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_inputreg0_q;
    reg [63:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_outputreg0_q;
    wire redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_reset0;
    wire [63:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_ia;
    wire [2:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_aa;
    wire [2:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_ab;
    wire [63:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_iq;
    wire [63:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_q;
    wire [2:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_q;
    (* preserve *) reg [2:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i;
    (* preserve *) reg redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_eq;
    reg [2:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_wraddr_q;
    wire [3:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_last_q;
    wire [3:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmp_b;
    wire [0:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmp_q;
    (* dont_merge *) reg [0:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmpReg_q;
    wire [0:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_notEnable_q;
    wire [0:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_nor_q;
    (* dont_merge *) reg [0:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_sticky_ena_q;
    wire [0:0] redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_enaAnd_q;
    reg [63:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_inputreg0_q;
    reg [63:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_outputreg0_q;
    wire redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_reset0;
    wire [63:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_ia;
    wire [2:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_aa;
    wire [2:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_ab;
    wire [63:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_iq;
    wire [63:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_q;
    wire [2:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_q;
    (* preserve *) reg [2:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i;
    (* preserve *) reg redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_eq;
    reg [2:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_wraddr_q;
    wire [2:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_last_q;
    wire [0:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmpReg_q;
    wire [0:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_notEnable_q;
    wire [0:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_sticky_ena_q;
    wire [0:0] redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together243_in_i_valid_2(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together243_in_i_valid_2_delay_0 <= '0;
            redist3_sync_together243_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together243_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together243_in_i_valid_2_q <= redist3_sync_together243_in_i_valid_2_delay_0;
        end
    end

    // redist4_sync_together243_in_i_valid_3(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together243_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist4_sync_together243_in_i_valid_3_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg25(REG,323)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg11(REG,309)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid69_xmlchecklanguageid21(BLACKBOX,91)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000045Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid69_xmlchecklanguageid21 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid69_xmlchecklanguageid21_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,308)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid68_xmlchecklanguageid19(BLACKBOX,90)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000044Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid68_xmlchecklanguageid19 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid68_xmlchecklanguageid19_out_dest_data_out_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,306)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid66_xmlchecklanguageid15(BLACKBOX,88)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000042Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid66_xmlchecklanguageid15 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid66_xmlchecklanguageid15_out_dest_data_out_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_2210_recast_x(CONSTANT,254)
    assign c_i64_2210_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // valid_fanout_reg7(REG,305)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16773_xmlchecklanguageid10(BLACKBOX,115)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000069Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16773_xmlchecklanguageid10 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16773_xmlchecklanguageid10_out_dest_data_out_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,301)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr196170_replace_phi81_xmlchecklanguageid3(BLACKBOX,117)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000071Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr196170_replace_phi81_xmlchecklanguageid3 (
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_44_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr196170_replace_phi81_xmlchecklanguageid3_out_dest_data_out_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,299)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16774_xmlchecklanguageid1(BLACKBOX,116)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000070Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16774_xmlchecklanguageid1 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16774_xmlchecklanguageid1_out_dest_data_out_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,300)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1277_xmlchecklanguageid2(BLACKBOX,86)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000040Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1277_xmlchecklanguageid2 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1277_xmlchecklanguageid2_out_dest_data_out_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_nxt_2_lcssa_select_xmlchecklanguageid4(MUX,145)@1
    assign i_nxt_2_lcssa_select_xmlchecklanguageid4_s = i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1277_xmlchecklanguageid2_out_dest_data_out_41_0;
    always @(i_nxt_2_lcssa_select_xmlchecklanguageid4_s or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16774_xmlchecklanguageid1_out_dest_data_out_37_0 or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr196170_replace_phi81_xmlchecklanguageid3_out_dest_data_out_44_0)
    begin
        unique case (i_nxt_2_lcssa_select_xmlchecklanguageid4_s)
            1'b0 : i_nxt_2_lcssa_select_xmlchecklanguageid4_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16774_xmlchecklanguageid1_out_dest_data_out_37_0;
            1'b1 : i_nxt_2_lcssa_select_xmlchecklanguageid4_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr196170_replace_phi81_xmlchecklanguageid3_out_dest_data_out_44_0;
            default : i_nxt_2_lcssa_select_xmlchecklanguageid4_q = 64'b0;
        endcase
    end

    // i_sub_ptr_sub200_xmlchecklanguageid12(SUB,180)@1
    assign i_sub_ptr_sub200_xmlchecklanguageid12_a = {1'b0, i_nxt_2_lcssa_select_xmlchecklanguageid4_q};
    assign i_sub_ptr_sub200_xmlchecklanguageid12_b = {1'b0, i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16773_xmlchecklanguageid10_out_dest_data_out_37_0};
    assign i_sub_ptr_sub200_xmlchecklanguageid12_o = $unsigned(i_sub_ptr_sub200_xmlchecklanguageid12_a) - $unsigned(i_sub_ptr_sub200_xmlchecklanguageid12_b);
    assign i_sub_ptr_sub200_xmlchecklanguageid12_q = i_sub_ptr_sub200_xmlchecklanguageid12_o[64:0];

    // bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x(BITSELECT,252)@1
    assign bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b = $unsigned(i_sub_ptr_sub200_xmlchecklanguageid12_q[63:0]);

    // redist2_bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b);
        end
    end

    // i_cmp201_xmlchecklanguageid13(LOGICAL,78)@2 + 1
    assign i_cmp201_xmlchecklanguageid13_qi = $unsigned(redist2_bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b_1_q == c_i64_2210_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp201_xmlchecklanguageid13_delay ( .xin(i_cmp201_xmlchecklanguageid13_qi), .xout(i_cmp201_xmlchecklanguageid13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid16(LOGICAL,190)@3
    assign i_unnamed_xmlchecklanguageid16_q = i_cmp201_xmlchecklanguageid13_q & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid66_xmlchecklanguageid15_out_dest_data_out_30_0;

    // valid_fanout_reg9(REG,307)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid67_xmlchecklanguageid17(BLACKBOX,89)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000043Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid67_xmlchecklanguageid17 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid67_xmlchecklanguageid17_out_dest_data_out_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid18(LOGICAL,191)@3
    assign i_unnamed_xmlchecklanguageid18_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid67_xmlchecklanguageid17_out_dest_data_out_31_0 | i_unnamed_xmlchecklanguageid16_q;

    // i_unnamed_xmlchecklanguageid20(LOGICAL,192)@3
    assign i_unnamed_xmlchecklanguageid20_q = i_unnamed_xmlchecklanguageid18_q & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid68_xmlchecklanguageid19_out_dest_data_out_34_0;

    // i_unnamed_xmlchecklanguageid22(LOGICAL,193)@3
    assign i_unnamed_xmlchecklanguageid22_q = i_unnamed_xmlchecklanguageid20_q & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid69_xmlchecklanguageid21_out_dest_data_out_40_0;

    // i_unnamed_xmlchecklanguageid31(LOGICAL,198)@3
    assign i_unnamed_xmlchecklanguageid31_q = i_unnamed_xmlchecklanguageid22_q ^ VCC_q;

    // valid_fanout_reg14(REG,312)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid72_xmlchecklanguageid29(BLACKBOX,94)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000048Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid72_xmlchecklanguageid29 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid72_xmlchecklanguageid29_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,310)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid70_xmlchecklanguageid25(BLACKBOX,92)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000046Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid70_xmlchecklanguageid25 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid70_xmlchecklanguageid25_out_dest_data_out_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_4212(CONSTANT,69)
    assign c_i64_4212_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // c_i64_5211(CONSTANT,70)
    assign c_i64_5211_q = $unsigned(64'b1111111111111111111111111111111111111111111111111111111111111011);

    // i_sub_ptr_sub200_off_xmlchecklanguageid23(ADD,179)@2
    assign i_sub_ptr_sub200_off_xmlchecklanguageid23_a = {1'b0, redist2_bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b_1_q};
    assign i_sub_ptr_sub200_off_xmlchecklanguageid23_b = {1'b0, c_i64_5211_q};
    assign i_sub_ptr_sub200_off_xmlchecklanguageid23_o = $unsigned(i_sub_ptr_sub200_off_xmlchecklanguageid23_a) + $unsigned(i_sub_ptr_sub200_off_xmlchecklanguageid23_b);
    assign i_sub_ptr_sub200_off_xmlchecklanguageid23_q = i_sub_ptr_sub200_off_xmlchecklanguageid23_o[64:0];

    // bgTrunc_i_sub_ptr_sub200_off_xmlchecklanguageid23_sel_x(BITSELECT,251)@2
    assign bgTrunc_i_sub_ptr_sub200_off_xmlchecklanguageid23_sel_x_b = i_sub_ptr_sub200_off_xmlchecklanguageid23_q[63:0];

    // i_unnamed_xmlchecklanguageid24(COMPARE,194)@2 + 1
    assign i_unnamed_xmlchecklanguageid24_a = {2'b00, bgTrunc_i_sub_ptr_sub200_off_xmlchecklanguageid23_sel_x_b};
    assign i_unnamed_xmlchecklanguageid24_b = {2'b00, c_i64_4212_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_xmlchecklanguageid24_o <= 66'b0;
        end
        else
        begin
            i_unnamed_xmlchecklanguageid24_o <= $unsigned(i_unnamed_xmlchecklanguageid24_a) - $unsigned(i_unnamed_xmlchecklanguageid24_b);
        end
    end
    assign i_unnamed_xmlchecklanguageid24_c[0] = i_unnamed_xmlchecklanguageid24_o[65];

    // i_unnamed_xmlchecklanguageid26(LOGICAL,195)@3
    assign i_unnamed_xmlchecklanguageid26_q = i_unnamed_xmlchecklanguageid24_c & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid70_xmlchecklanguageid25_out_dest_data_out_30_0;

    // valid_fanout_reg13(REG,311)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid71_xmlchecklanguageid27(BLACKBOX,93)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000047Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid71_xmlchecklanguageid27 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid71_xmlchecklanguageid27_out_dest_data_out_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid28(LOGICAL,196)@3
    assign i_unnamed_xmlchecklanguageid28_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid71_xmlchecklanguageid27_out_dest_data_out_32_0 | i_unnamed_xmlchecklanguageid26_q;

    // i_unnamed_xmlchecklanguageid30(LOGICAL,197)@3
    assign i_unnamed_xmlchecklanguageid30_q = i_unnamed_xmlchecklanguageid28_q & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid72_xmlchecklanguageid29_out_dest_data_out_40_0;

    // i_unnamed_xmlchecklanguageid32(LOGICAL,199)@3 + 1
    assign i_unnamed_xmlchecklanguageid32_qi = i_unnamed_xmlchecklanguageid30_q & i_unnamed_xmlchecklanguageid31_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_xmlchecklanguageid32_delay ( .xin(i_unnamed_xmlchecklanguageid32_qi), .xout(i_unnamed_xmlchecklanguageid32_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid49(LOGICAL,200)@4
    assign i_unnamed_xmlchecklanguageid49_q = i_unnamed_xmlchecklanguageid32_q ^ VCC_q;

    // redist15_i_unnamed_xmlchecklanguageid31_q_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_unnamed_xmlchecklanguageid31_q_1_q <= '0;
        end
        else
        begin
            redist15_i_unnamed_xmlchecklanguageid31_q_1_q <= $unsigned(i_unnamed_xmlchecklanguageid31_q);
        end
    end

    // i_reduction_xmlchecklanguageid_18_xmlchecklanguageid53(LOGICAL,161)@4
    assign i_reduction_xmlchecklanguageid_18_xmlchecklanguageid53_q = redist15_i_unnamed_xmlchecklanguageid31_q_1_q & i_unnamed_xmlchecklanguageid49_q;

    // valid_fanout_reg22(REG,320)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid78_xmlchecklanguageid51(BLACKBOX,100)@4
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000054Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid78_xmlchecklanguageid51 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid78_xmlchecklanguageid51_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,319)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid77_xmlchecklanguageid50(BLACKBOX,99)@4
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000053Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid77_xmlchecklanguageid50 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid77_xmlchecklanguageid50_out_dest_data_out_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_17_xmlchecklanguageid52(LOGICAL,160)@4
    assign i_reduction_xmlchecklanguageid_17_xmlchecklanguageid52_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid77_xmlchecklanguageid50_out_dest_data_out_22_0 & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid78_xmlchecklanguageid51_out_dest_data_out_40_0;

    // i_reduction_xmlchecklanguageid_19_xmlchecklanguageid54(LOGICAL,162)@4
    assign i_reduction_xmlchecklanguageid_19_xmlchecklanguageid54_q = i_reduction_xmlchecklanguageid_17_xmlchecklanguageid52_q & i_reduction_xmlchecklanguageid_18_xmlchecklanguageid53_q;

    // valid_fanout_reg15(REG,313)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid73_xmlchecklanguageid35(BLACKBOX,95)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000049Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid73_xmlchecklanguageid35 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid73_xmlchecklanguageid35_out_dest_data_out_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_13_xmlchecklanguageid36(LOGICAL,156)@3
    assign i_reduction_xmlchecklanguageid_13_xmlchecklanguageid36_q = i_unnamed_xmlchecklanguageid28_q | i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid73_xmlchecklanguageid35_out_dest_data_out_39_0;

    // i_cmp218_xmlchecklanguageid33(LOGICAL,79)@2 + 1
    assign i_cmp218_xmlchecklanguageid33_qi = $unsigned(redist2_bgTrunc_i_sub_ptr_sub200_xmlchecklanguageid12_sel_x_b_1_q == c_i64_4212_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp218_xmlchecklanguageid33_delay ( .xin(i_cmp218_xmlchecklanguageid33_qi), .xout(i_cmp218_xmlchecklanguageid33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_15_xmlchecklanguageid39(LOGICAL,158)@3
    assign i_reduction_xmlchecklanguageid_15_xmlchecklanguageid39_q = i_cmp218_xmlchecklanguageid33_q | i_reduction_xmlchecklanguageid_13_xmlchecklanguageid36_q;

    // valid_fanout_reg16(REG,314)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid74_xmlchecklanguageid37(BLACKBOX,96)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000050Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid74_xmlchecklanguageid37 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid74_xmlchecklanguageid37_out_dest_data_out_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_14_xmlchecklanguageid38(LOGICAL,157)@3
    assign i_reduction_xmlchecklanguageid_14_xmlchecklanguageid38_q = i_unnamed_xmlchecklanguageid20_q | i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid74_xmlchecklanguageid37_out_dest_data_out_29_0;

    // i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40(LOGICAL,159)@3 + 1
    assign i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_qi = i_reduction_xmlchecklanguageid_14_xmlchecklanguageid38_q | i_reduction_xmlchecklanguageid_15_xmlchecklanguageid39_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_delay ( .xin(i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_qi), .xout(i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid56(LOGICAL,201)@4
    assign i_unnamed_xmlchecklanguageid56_q = i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_q ^ VCC_q;

    // c_i8_0214_recast_x(CONSTANT,256)
    assign c_i8_0214_recast_x_q = $unsigned(8'b00000000);

    // valid_fanout_reg19(REG,317)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lcssa147_select71_xmlchecklanguageid44(BLACKBOX,111)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000065Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lcssa147_select71_xmlchecklanguageid44 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i8_lcssa147_select71_xmlchecklanguageid44_out_dest_data_out_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,304)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_pre155_lm2482_xmlchecklanguageid7(BLACKBOX,113)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000067Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_pre155_lm2482_xmlchecklanguageid7 (
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_45_0(i_llvm_fpga_ffwd_dest_i8_pre155_lm2482_xmlchecklanguageid7_out_dest_data_out_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,302)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lm1552375_xmlchecklanguageid5(BLACKBOX,112)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000066Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lm1552375_xmlchecklanguageid5 (
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_38_0(i_llvm_fpga_ffwd_dest_i8_lm1552375_xmlchecklanguageid5_out_dest_data_out_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,303)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1278_xmlchecklanguageid6(BLACKBOX,87)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000041Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1278_xmlchecklanguageid6 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1278_xmlchecklanguageid6_out_dest_data_out_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_lcssa164_select_xmlchecklanguageid8(MUX,82)@3
    assign i_lcssa164_select_xmlchecklanguageid8_s = i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1278_xmlchecklanguageid6_out_dest_data_out_41_0;
    always @(i_lcssa164_select_xmlchecklanguageid8_s or i_llvm_fpga_ffwd_dest_i8_lm1552375_xmlchecklanguageid5_out_dest_data_out_38_0 or i_llvm_fpga_ffwd_dest_i8_pre155_lm2482_xmlchecklanguageid7_out_dest_data_out_45_0)
    begin
        unique case (i_lcssa164_select_xmlchecklanguageid8_s)
            1'b0 : i_lcssa164_select_xmlchecklanguageid8_q = i_llvm_fpga_ffwd_dest_i8_lm1552375_xmlchecklanguageid5_out_dest_data_out_38_0;
            1'b1 : i_lcssa164_select_xmlchecklanguageid8_q = i_llvm_fpga_ffwd_dest_i8_pre155_lm2482_xmlchecklanguageid7_out_dest_data_out_45_0;
            default : i_lcssa164_select_xmlchecklanguageid8_q = 8'b0;
        endcase
    end

    // valid_fanout_reg20(REG,318)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid76_xmlchecklanguageid45(BLACKBOX,98)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000052Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid76_xmlchecklanguageid45 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid76_xmlchecklanguageid45_out_dest_data_out_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select_xmlchecklanguageid46(MUX,178)@3
    assign i_select_xmlchecklanguageid46_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid76_xmlchecklanguageid45_out_dest_data_out_29_0;
    always @(i_select_xmlchecklanguageid46_s or i_lcssa164_select_xmlchecklanguageid8_q or i_llvm_fpga_ffwd_dest_i8_lcssa147_select71_xmlchecklanguageid44_out_dest_data_out_28_0)
    begin
        unique case (i_select_xmlchecklanguageid46_s)
            1'b0 : i_select_xmlchecklanguageid46_q = i_lcssa164_select_xmlchecklanguageid8_q;
            1'b1 : i_select_xmlchecklanguageid46_q = i_llvm_fpga_ffwd_dest_i8_lcssa147_select71_xmlchecklanguageid44_out_dest_data_out_28_0;
            default : i_select_xmlchecklanguageid46_q = 8'b0;
        endcase
    end

    // i_cmp223_xmlchecklanguageid47(LOGICAL,80)@3 + 1
    assign i_cmp223_xmlchecklanguageid47_qi = $unsigned(i_select_xmlchecklanguageid46_q == c_i8_0214_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp223_xmlchecklanguageid47_delay ( .xin(i_cmp223_xmlchecklanguageid47_qi), .xout(i_cmp223_xmlchecklanguageid47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_20_xmlchecklanguageid55(LOGICAL,163)@4
    assign i_reduction_xmlchecklanguageid_20_xmlchecklanguageid55_q = i_cmp223_xmlchecklanguageid47_q & i_reduction_xmlchecklanguageid_19_xmlchecklanguageid54_q;

    // i_unnamed_xmlchecklanguageid57(LOGICAL,202)@4
    assign i_unnamed_xmlchecklanguageid57_q = i_reduction_xmlchecklanguageid_20_xmlchecklanguageid55_q | i_unnamed_xmlchecklanguageid56_q;

    // i_unnamed_xmlchecklanguageid64(LOGICAL,203)@4
    assign i_unnamed_xmlchecklanguageid64_q = i_unnamed_xmlchecklanguageid57_q ^ VCC_q;

    // c_i8_45215_recast_x(CONSTANT,257)
    assign c_i8_45215_recast_x_q = $unsigned(8'b00101101);

    // i_cmp228_xmlchecklanguageid58(LOGICAL,81)@3
    assign i_cmp228_xmlchecklanguageid58_q = $unsigned(i_select_xmlchecklanguageid46_q == c_i8_45215_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62(LOGICAL,165)@3 + 1
    assign i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62_qi = i_cmp228_xmlchecklanguageid58_q | i_reduction_xmlchecklanguageid_13_xmlchecklanguageid36_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62_delay ( .xin(i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62_qi), .xout(i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg23(REG,321)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid79_xmlchecklanguageid60(BLACKBOX,101)@4
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000055Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid79_xmlchecklanguageid60 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid79_xmlchecklanguageid60_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_unnamed_xmlchecklanguageid20_q_1(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_unnamed_xmlchecklanguageid20_q_1_q <= '0;
        end
        else
        begin
            redist17_i_unnamed_xmlchecklanguageid20_q_1_q <= $unsigned(i_unnamed_xmlchecklanguageid20_q);
        end
    end

    // i_reduction_xmlchecklanguageid_22_xmlchecklanguageid61(LOGICAL,164)@4
    assign i_reduction_xmlchecklanguageid_22_xmlchecklanguageid61_q = redist17_i_unnamed_xmlchecklanguageid20_q_1_q | i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid79_xmlchecklanguageid60_out_dest_data_out_21_0;

    // i_reduction_xmlchecklanguageid_24_xmlchecklanguageid63(LOGICAL,166)@4
    assign i_reduction_xmlchecklanguageid_24_xmlchecklanguageid63_q = i_reduction_xmlchecklanguageid_22_xmlchecklanguageid61_q | i_reduction_xmlchecklanguageid_23_xmlchecklanguageid62_q;

    // i_unnamed_xmlchecklanguageid65(LOGICAL,204)@4
    assign i_unnamed_xmlchecklanguageid65_q = i_reduction_xmlchecklanguageid_24_xmlchecklanguageid63_q & i_unnamed_xmlchecklanguageid64_q;

    // i_reduction_xmlchecklanguageid_28_xmlchecklanguageid67(LOGICAL,167)@4
    assign i_reduction_xmlchecklanguageid_28_xmlchecklanguageid67_q = i_unnamed_xmlchecklanguageid65_q & i_reduction_xmlchecklanguageid_19_xmlchecklanguageid54_q;

    // i_phi_decision686_and_i0_not_xmlchecklanguageid68(LOGICAL,153)@4
    assign i_phi_decision686_and_i0_not_xmlchecklanguageid68_q = i_reduction_xmlchecklanguageid_28_xmlchecklanguageid67_q ^ VCC_q;

    // valid_fanout_reg24(REG,322)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp6852_xmlchecklanguageid69(BLACKBOX,83)@4
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000037Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp6852_xmlchecklanguageid69 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp6852_xmlchecklanguageid69_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid70(LOGICAL,205)@4
    assign i_unnamed_xmlchecklanguageid70_q = i_llvm_fpga_ffwd_dest_i1_cmp6852_xmlchecklanguageid69_out_dest_data_out_14_0 | i_phi_decision686_and_i0_not_xmlchecklanguageid68_q;

    // i_arrayidx332_xmlchecklanguageid0_c_i64_11_x(CONSTANT,282)
    assign i_arrayidx332_xmlchecklanguageid0_c_i64_11_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // valid_fanout_reg17(REG,315)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select68_xmlchecklanguageid41(BLACKBOX,119)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000073Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select68_xmlchecklanguageid41 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select68_xmlchecklanguageid41_out_dest_data_out_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg18(REG,316)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid75_xmlchecklanguageid42(BLACKBOX,97)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000051Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid75_xmlchecklanguageid42 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid75_xmlchecklanguageid42_out_dest_data_out_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_nxt_3_select_xmlchecklanguageid43(MUX,146)@1
    assign i_nxt_3_select_xmlchecklanguageid43_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid75_xmlchecklanguageid42_out_dest_data_out_29_0;
    always @(i_nxt_3_select_xmlchecklanguageid43_s or i_nxt_2_lcssa_select_xmlchecklanguageid4_q or i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select68_xmlchecklanguageid41_out_dest_data_out_27_0)
    begin
        unique case (i_nxt_3_select_xmlchecklanguageid43_s)
            1'b0 : i_nxt_3_select_xmlchecklanguageid43_q = i_nxt_2_lcssa_select_xmlchecklanguageid4_q;
            1'b1 : i_nxt_3_select_xmlchecklanguageid43_q = i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select68_xmlchecklanguageid41_out_dest_data_out_27_0;
            default : i_nxt_3_select_xmlchecklanguageid43_q = 64'b0;
        endcase
    end

    // i_incdec_ptr231_xmlchecklanguageid0_add_x(ADD,289)@1
    assign i_incdec_ptr231_xmlchecklanguageid0_add_x_a = {1'b0, i_nxt_3_select_xmlchecklanguageid43_q};
    assign i_incdec_ptr231_xmlchecklanguageid0_add_x_b = {1'b0, i_arrayidx332_xmlchecklanguageid0_c_i64_11_x_q};
    assign i_incdec_ptr231_xmlchecklanguageid0_add_x_o = $unsigned(i_incdec_ptr231_xmlchecklanguageid0_add_x_a) + $unsigned(i_incdec_ptr231_xmlchecklanguageid0_add_x_b);
    assign i_incdec_ptr231_xmlchecklanguageid0_add_x_q = i_incdec_ptr231_xmlchecklanguageid0_add_x_o[64:0];

    // i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x(BITSELECT,292)@1
    assign i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b = i_incdec_ptr231_xmlchecklanguageid0_add_x_q[63:0];

    // redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_inputreg0(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_inputreg0_q <= $unsigned(i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b);
        end
    end

    // redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_delay_0 <= '0;
            redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_delay_0 <= $unsigned(redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_inputreg0_q);
            redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_q <= redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_delay_0;
        end
    end

    // i_llvm_fpga_mem_lm9225_xmlchecklanguageid71(BLACKBOX,142)@4
    // in in_i_stall@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_address@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_read@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_write@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    xmlCheckLanguageID_i_llvm_fpga_mem_lm9225_xmlchecklanguageid0 thei_llvm_fpga_mem_lm9225_xmlchecklanguageid71 (
        .in_flush(in_flush),
        .in_i_address(redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_q),
        .in_i_predicate(i_unnamed_xmlchecklanguageid70_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg25_q),
        .in_lm9225_xmlCheckLanguageID_avm_readdata(in_lm9225_xmlCheckLanguageID_avm_readdata),
        .in_lm9225_xmlCheckLanguageID_avm_readdatavalid(in_lm9225_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm9225_xmlCheckLanguageID_avm_waitrequest(in_lm9225_xmlCheckLanguageID_avm_waitrequest),
        .in_lm9225_xmlCheckLanguageID_avm_writeack(in_lm9225_xmlCheckLanguageID_avm_writeack),
        .out_lm9225_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_address),
        .out_lm9225_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_burstcount),
        .out_lm9225_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_byteenable),
        .out_lm9225_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_enable),
        .out_lm9225_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_read),
        .out_lm9225_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_write),
        .out_lm9225_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,77)
    assign out_lm9225_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_address;
    assign out_lm9225_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_enable;
    assign out_lm9225_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_read;
    assign out_lm9225_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_write;
    assign out_lm9225_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_writedata;
    assign out_lm9225_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_byteenable;
    assign out_lm9225_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_lm9225_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg41(REG,339)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid89_xmlchecklanguageid128(BLACKBOX,138)@1
    // out out_intel_reserved_ffwd_46_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000064Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid89_xmlchecklanguageid128 (
        .in_predicate_in(GND_q),
        .in_src_data_in_46_0(i_nxt_2_lcssa_select_xmlchecklanguageid4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_46_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid89_xmlchecklanguageid128_out_intel_reserved_ffwd_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,245)
    assign out_intel_reserved_ffwd_46_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid89_xmlchecklanguageid128_out_intel_reserved_ffwd_46_0;

    // redist5_sync_together243_in_i_valid_10(DELAY,371)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together243_in_i_valid_10 ( .xin(redist4_sync_together243_in_i_valid_3_q), .xout(redist5_sync_together243_in_i_valid_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together243_in_i_valid_11(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together243_in_i_valid_11_q <= '0;
        end
        else
        begin
            redist6_sync_together243_in_i_valid_11_q <= $unsigned(redist5_sync_together243_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg38(REG,336)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg36(REG,334)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp68_phi_decision1499_xor61_xmlchecklanguageid102(BLACKBOX,85)@4
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000039Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp68_phi_decision1499_xor61_xmlchecklanguageid102 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_cmp68_phi_decision1499_xor61_xmlchecklanguageid102_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103(LOGICAL,172)@4
    assign i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q = redist15_i_unnamed_xmlchecklanguageid31_q_1_q & i_llvm_fpga_ffwd_dest_i1_cmp68_phi_decision1499_xor61_xmlchecklanguageid102_out_dest_data_out_19_0;

    // redist19_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_8(DELAY,385)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_8 ( .xin(i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q), .xout(redist19_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_unnamed_xmlchecklanguageid65_q_8(DELAY,376)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_unnamed_xmlchecklanguageid65_q_8 ( .xin(i_unnamed_xmlchecklanguageid65_q), .xout(redist10_i_unnamed_xmlchecklanguageid65_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_unnamed_xmlchecklanguageid49_q_7(DELAY,378)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_unnamed_xmlchecklanguageid49_q_7 ( .xin(i_unnamed_xmlchecklanguageid49_q), .xout(redist12_i_unnamed_xmlchecklanguageid49_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_unnamed_xmlchecklanguageid49_q_8(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_unnamed_xmlchecklanguageid49_q_8_q <= '0;
        end
        else
        begin
            redist13_i_unnamed_xmlchecklanguageid49_q_8_q <= $unsigned(redist12_i_unnamed_xmlchecklanguageid49_q_7_q);
        end
    end

    // c_i8_10217(CONSTANT,71)
    assign c_i8_10217_q = $unsigned(8'b00001010);

    // c_i8_48216(CONSTANT,74)
    assign c_i8_48216_q = $unsigned(8'b11010000);

    // i_off126_xmlchecklanguageid72(ADD,149)@11
    assign i_off126_xmlchecklanguageid72_a = {1'b0, i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_o_readdata};
    assign i_off126_xmlchecklanguageid72_b = {1'b0, c_i8_48216_q};
    assign i_off126_xmlchecklanguageid72_o = $unsigned(i_off126_xmlchecklanguageid72_a) + $unsigned(i_off126_xmlchecklanguageid72_b);
    assign i_off126_xmlchecklanguageid72_q = i_off126_xmlchecklanguageid72_o[8:0];

    // bgTrunc_i_off126_xmlchecklanguageid72_sel_x(BITSELECT,248)@11
    assign bgTrunc_i_off126_xmlchecklanguageid72_sel_x_b = i_off126_xmlchecklanguageid72_q[7:0];

    // i_unnamed_xmlchecklanguageid73(COMPARE,206)@11
    assign i_unnamed_xmlchecklanguageid73_a = {2'b00, bgTrunc_i_off126_xmlchecklanguageid72_sel_x_b};
    assign i_unnamed_xmlchecklanguageid73_b = {2'b00, c_i8_10217_q};
    assign i_unnamed_xmlchecklanguageid73_o = $unsigned(i_unnamed_xmlchecklanguageid73_a) - $unsigned(i_unnamed_xmlchecklanguageid73_b);
    assign i_unnamed_xmlchecklanguageid73_c[0] = i_unnamed_xmlchecklanguageid73_o[9];

    // redist18_i_unnamed_xmlchecklanguageid20_q_8(DELAY,384)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_i_unnamed_xmlchecklanguageid20_q_8 ( .xin(redist17_i_unnamed_xmlchecklanguageid20_q_1_q), .xout(redist18_i_unnamed_xmlchecklanguageid20_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77(LOGICAL,169)@11 + 1
    assign i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77_qi = redist18_i_unnamed_xmlchecklanguageid20_q_8_q | i_unnamed_xmlchecklanguageid73_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77_delay ( .xin(i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77_qi), .xout(i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg26(REG,324)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid80_xmlchecklanguageid74(BLACKBOX,102)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000056Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid80_xmlchecklanguageid74 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid80_xmlchecklanguageid74_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,325)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid81_xmlchecklanguageid75(BLACKBOX,103)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000057Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid81_xmlchecklanguageid75 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid81_xmlchecklanguageid75_out_dest_data_out_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_29_xmlchecklanguageid76(LOGICAL,168)@12
    assign i_reduction_xmlchecklanguageid_29_xmlchecklanguageid76_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid81_xmlchecklanguageid75_out_dest_data_out_39_0 | i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid80_xmlchecklanguageid74_out_dest_data_out_21_0;

    // i_reduction_xmlchecklanguageid_31_xmlchecklanguageid78(LOGICAL,170)@12
    assign i_reduction_xmlchecklanguageid_31_xmlchecklanguageid78_q = i_reduction_xmlchecklanguageid_29_xmlchecklanguageid76_q | i_reduction_xmlchecklanguageid_30_xmlchecklanguageid77_q;

    // i_unnamed_xmlchecklanguageid79(LOGICAL,207)@12
    assign i_unnamed_xmlchecklanguageid79_q = i_reduction_xmlchecklanguageid_31_xmlchecklanguageid78_q & redist13_i_unnamed_xmlchecklanguageid49_q_8_q;

    // i_reduction_xmlchecklanguageid_32_xmlchecklanguageid101(LOGICAL,171)@12
    assign i_reduction_xmlchecklanguageid_32_xmlchecklanguageid101_q = i_unnamed_xmlchecklanguageid79_q & redist10_i_unnamed_xmlchecklanguageid65_q_8_q;

    // i_reduction_xmlchecklanguageid_35_xmlchecklanguageid106(LOGICAL,174)@12
    assign i_reduction_xmlchecklanguageid_35_xmlchecklanguageid106_q = i_reduction_xmlchecklanguageid_32_xmlchecklanguageid101_q & redist19_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_8_q;

    // valid_fanout_reg37(REG,335)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid87_xmlchecklanguageid104(BLACKBOX,109)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000063Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid87_xmlchecklanguageid104 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid87_xmlchecklanguageid104_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg30(REG,328)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid83_xmlchecklanguageid90(BLACKBOX,105)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000059Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid83_xmlchecklanguageid90 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid83_xmlchecklanguageid90_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,327)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid82_xmlchecklanguageid89(BLACKBOX,104)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000058Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid82_xmlchecklanguageid89 (
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_dest_data_out_36_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid82_xmlchecklanguageid89_out_dest_data_out_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision314_select_xmlchecklanguageid91(LOGICAL,152)@12
    assign i_phi_decision314_select_xmlchecklanguageid91_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid82_xmlchecklanguageid89_out_dest_data_out_36_0 | i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid83_xmlchecklanguageid90_out_dest_data_out_40_0;

    // i_reduction_xmlchecklanguageid_34_xmlchecklanguageid105(LOGICAL,173)@12
    assign i_reduction_xmlchecklanguageid_34_xmlchecklanguageid105_q = i_phi_decision314_select_xmlchecklanguageid91_q & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid87_xmlchecklanguageid104_out_dest_data_out_18_0;

    // i_reduction_xmlchecklanguageid_36_xmlchecklanguageid107(LOGICAL,175)@12
    assign i_reduction_xmlchecklanguageid_36_xmlchecklanguageid107_q = i_reduction_xmlchecklanguageid_34_xmlchecklanguageid105_q & i_reduction_xmlchecklanguageid_35_xmlchecklanguageid106_q;

    // i_unnamed_xmlchecklanguageid108(LOGICAL,181)@12
    assign i_unnamed_xmlchecklanguageid108_q = i_reduction_xmlchecklanguageid_36_xmlchecklanguageid107_q ^ VCC_q;

    // valid_fanout_reg35(REG,333)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select46_xmlchecklanguageid98(BLACKBOX,118)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000072Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select46_xmlchecklanguageid98 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select46_xmlchecklanguageid98_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg33(REG,331)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16772_xmlchecklanguageid95(BLACKBOX,114)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000068Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16772_xmlchecklanguageid95 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16772_xmlchecklanguageid95_out_dest_data_out_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_notEnable(LOGICAL,397)
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_nor(LOGICAL,398)
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_nor_q = ~ (redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_notEnable_q | redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_sticky_ena_q);

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_last(CONSTANT,394)
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_last_q = $unsigned(4'b0100);

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmp(LOGICAL,395)
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmp_b = {1'b0, redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_q};
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmp_q = $unsigned(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_last_q == redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmp_b ? 1'b1 : 1'b0);

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmpReg(REG,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmpReg_q <= $unsigned(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmp_q);
        end
    end

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_sticky_ena(REG,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_nor_q == 1'b1)
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_sticky_ena_q <= $unsigned(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_cmpReg_q);
        end
    end

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_enaAnd(LOGICAL,400)
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_enaAnd_q = redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_sticky_ena_q & VCC_q;

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt(COUNTER,392)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i <= 3'd0;
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i == 3'd4)
            begin
                redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_eq <= 1'b0;
            end
            if (redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_eq == 1'b1)
            begin
                redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i <= $unsigned(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i <= $unsigned(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_q = redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_i[2:0];

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_wraddr(REG,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_wraddr_q <= $unsigned(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_q);
        end
    end

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem(DUALMEM,391)
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_ia = $unsigned(redist0_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_3_q);
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_aa = redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_wraddr_q;
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_ab = redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_rdcnt_q;
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_reset0 = ~ (resetn);
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
    ) redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_dmem (
        .clocken1(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_reset0),
        .clock1(clock),
        .address_a(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_aa),
        .data_a(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_ab),
        .q_b(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_iq),
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
    assign redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_q = redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_iq[63:0];

    // redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_outputreg0(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_outputreg0_q <= '0;
        end
        else
        begin
            redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_outputreg0_q <= $unsigned(redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_mem_q);
        end
    end

    // valid_fanout_reg34(REG,332)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid86_xmlchecklanguageid96(BLACKBOX,108)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000062Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid86_xmlchecklanguageid96 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid86_xmlchecklanguageid96_out_dest_data_out_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_nxt_8_select364_xmlchecklanguageid97(MUX,147)@12
    assign i_nxt_8_select364_xmlchecklanguageid97_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid86_xmlchecklanguageid96_out_dest_data_out_39_0;
    always @(i_nxt_8_select364_xmlchecklanguageid97_s or redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_outputreg0_q or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16772_xmlchecklanguageid95_out_dest_data_out_37_0)
    begin
        unique case (i_nxt_8_select364_xmlchecklanguageid97_s)
            1'b0 : i_nxt_8_select364_xmlchecklanguageid97_q = redist1_i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b_11_outputreg0_q;
            1'b1 : i_nxt_8_select364_xmlchecklanguageid97_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr16772_xmlchecklanguageid95_out_dest_data_out_37_0;
            default : i_nxt_8_select364_xmlchecklanguageid97_q = 64'b0;
        endcase
    end

    // valid_fanout_reg32(REG,330)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid85_xmlchecklanguageid93(BLACKBOX,107)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000061Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid85_xmlchecklanguageid93 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid85_xmlchecklanguageid93_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,329)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid84_xmlchecklanguageid92(BLACKBOX,106)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000060Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid84_xmlchecklanguageid92 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid84_xmlchecklanguageid92_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision94_select_xmlchecklanguageid94(LOGICAL,154)@12
    assign i_phi_decision94_select_xmlchecklanguageid94_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid84_xmlchecklanguageid92_out_dest_data_out_21_0 & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid85_xmlchecklanguageid93_out_dest_data_out_40_0;

    // i_nxt_8_select_xmlchecklanguageid99(MUX,148)@12
    assign i_nxt_8_select_xmlchecklanguageid99_s = i_phi_decision94_select_xmlchecklanguageid94_q;
    always @(i_nxt_8_select_xmlchecklanguageid99_s or i_nxt_8_select364_xmlchecklanguageid97_q or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select46_xmlchecklanguageid98_out_dest_data_out_13_0)
    begin
        unique case (i_nxt_8_select_xmlchecklanguageid99_s)
            1'b0 : i_nxt_8_select_xmlchecklanguageid99_q = i_nxt_8_select364_xmlchecklanguageid97_q;
            1'b1 : i_nxt_8_select_xmlchecklanguageid99_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select46_xmlchecklanguageid98_out_dest_data_out_13_0;
            default : i_nxt_8_select_xmlchecklanguageid99_q = 64'b0;
        endcase
    end

    // i_arrayidx332_xmlchecklanguageid0_add_x(ADD,281)@12
    assign i_arrayidx332_xmlchecklanguageid0_add_x_a = {1'b0, i_nxt_8_select_xmlchecklanguageid99_q};
    assign i_arrayidx332_xmlchecklanguageid0_add_x_b = {1'b0, i_arrayidx332_xmlchecklanguageid0_c_i64_11_x_q};
    assign i_arrayidx332_xmlchecklanguageid0_add_x_o = $unsigned(i_arrayidx332_xmlchecklanguageid0_add_x_a) + $unsigned(i_arrayidx332_xmlchecklanguageid0_add_x_b);
    assign i_arrayidx332_xmlchecklanguageid0_add_x_q = i_arrayidx332_xmlchecklanguageid0_add_x_o[64:0];

    // i_arrayidx332_xmlchecklanguageid0_trunc_sel_x(BITSELECT,284)@12
    assign i_arrayidx332_xmlchecklanguageid0_trunc_sel_x_b = i_arrayidx332_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm7426_xmlchecklanguageid109(BLACKBOX,141)@12
    // in in_i_stall@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_address@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_read@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_write@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@19
    // out out_o_stall@18
    // out out_o_valid@19
    xmlCheckLanguageID_i_llvm_fpga_mem_lm7426_xmlchecklanguageid0 thei_llvm_fpga_mem_lm7426_xmlchecklanguageid109 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx332_xmlchecklanguageid0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_xmlchecklanguageid108_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg38_q),
        .in_lm7426_xmlCheckLanguageID_avm_readdata(in_lm7426_xmlCheckLanguageID_avm_readdata),
        .in_lm7426_xmlCheckLanguageID_avm_readdatavalid(in_lm7426_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm7426_xmlCheckLanguageID_avm_waitrequest(in_lm7426_xmlCheckLanguageID_avm_waitrequest),
        .in_lm7426_xmlCheckLanguageID_avm_writeack(in_lm7426_xmlCheckLanguageID_avm_writeack),
        .out_lm7426_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_address),
        .out_lm7426_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_burstcount),
        .out_lm7426_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_byteenable),
        .out_lm7426_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_enable),
        .out_lm7426_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_read),
        .out_lm7426_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_write),
        .out_lm7426_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,259)
    assign out_lm7426_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_address;
    assign out_lm7426_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_enable;
    assign out_lm7426_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_read;
    assign out_lm7426_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_write;
    assign out_lm7426_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_writedata;
    assign out_lm7426_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_byteenable;
    assign out_lm7426_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_lm7426_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg42(REG,340)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid90_xmlchecklanguageid129(BLACKBOX,134)@3
    // out out_intel_reserved_ffwd_47_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000060Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid90_xmlchecklanguageid129 (
        .in_predicate_in(GND_q),
        .in_src_data_in_47_0(i_lcssa164_select_xmlchecklanguageid8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_47_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid90_xmlchecklanguageid129_out_intel_reserved_ffwd_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,260)
    assign out_intel_reserved_ffwd_47_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid90_xmlchecklanguageid129_out_intel_reserved_ffwd_47_0;

    // redist7_sync_together243_in_i_valid_19(DELAY,373)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together243_in_i_valid_19 ( .xin(redist6_sync_together243_in_i_valid_11_q), .xout(redist7_sync_together243_in_i_valid_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg40(REG,338)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist7_sync_together243_in_i_valid_19_q);
        end
    end

    // redist20_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_16(DELAY,386)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_16 ( .xin(redist19_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_8_q), .xout(redist20_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_off131_xmlchecklanguageid110(ADD,150)@19
    assign i_off131_xmlchecklanguageid110_a = {1'b0, i_llvm_fpga_mem_lm7426_xmlchecklanguageid109_out_o_readdata};
    assign i_off131_xmlchecklanguageid110_b = {1'b0, c_i8_48216_q};
    assign i_off131_xmlchecklanguageid110_o = $unsigned(i_off131_xmlchecklanguageid110_a) + $unsigned(i_off131_xmlchecklanguageid110_b);
    assign i_off131_xmlchecklanguageid110_q = i_off131_xmlchecklanguageid110_o[8:0];

    // bgTrunc_i_off131_xmlchecklanguageid110_sel_x(BITSELECT,249)@19
    assign bgTrunc_i_off131_xmlchecklanguageid110_sel_x_b = i_off131_xmlchecklanguageid110_q[7:0];

    // i_unnamed_xmlchecklanguageid111(COMPARE,182)@19 + 1
    assign i_unnamed_xmlchecklanguageid111_a = {2'b00, bgTrunc_i_off131_xmlchecklanguageid110_sel_x_b};
    assign i_unnamed_xmlchecklanguageid111_b = {2'b00, c_i8_10217_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_xmlchecklanguageid111_o <= 10'b0;
        end
        else
        begin
            i_unnamed_xmlchecklanguageid111_o <= $unsigned(i_unnamed_xmlchecklanguageid111_a) - $unsigned(i_unnamed_xmlchecklanguageid111_b);
        end
    end
    assign i_unnamed_xmlchecklanguageid111_c[0] = i_unnamed_xmlchecklanguageid111_o[9];

    // valid_fanout_reg39(REG,337)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist7_sync_together243_in_i_valid_19_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid88_xmlchecklanguageid112(BLACKBOX,110)@20
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000064Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid88_xmlchecklanguageid112 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid88_xmlchecklanguageid112_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid113(LOGICAL,183)@20
    assign i_unnamed_xmlchecklanguageid113_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid88_xmlchecklanguageid112_out_dest_data_out_18_0 & i_unnamed_xmlchecklanguageid111_c;

    // redist21_i_phi_decision314_select_xmlchecklanguageid91_q_8(DELAY,387)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_phi_decision314_select_xmlchecklanguageid91_q_8 ( .xin(i_phi_decision314_select_xmlchecklanguageid91_q), .xout(redist21_i_phi_decision314_select_xmlchecklanguageid91_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid114(LOGICAL,184)@20
    assign i_unnamed_xmlchecklanguageid114_q = redist21_i_phi_decision314_select_xmlchecklanguageid91_q_8_q & i_unnamed_xmlchecklanguageid113_q;

    // redist16_i_unnamed_xmlchecklanguageid22_q_17(DELAY,382)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_i_unnamed_xmlchecklanguageid22_q_17 ( .xin(i_unnamed_xmlchecklanguageid22_q), .xout(redist16_i_unnamed_xmlchecklanguageid22_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid115(LOGICAL,185)@20
    assign i_unnamed_xmlchecklanguageid115_q = redist16_i_unnamed_xmlchecklanguageid22_q_17_q | i_unnamed_xmlchecklanguageid114_q;

    // redist11_i_unnamed_xmlchecklanguageid65_q_16(DELAY,377)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_i_unnamed_xmlchecklanguageid65_q_16 ( .xin(redist10_i_unnamed_xmlchecklanguageid65_q_8_q), .xout(redist11_i_unnamed_xmlchecklanguageid65_q_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid116(LOGICAL,186)@20
    assign i_unnamed_xmlchecklanguageid116_q = redist11_i_unnamed_xmlchecklanguageid65_q_16_q & i_unnamed_xmlchecklanguageid115_q;

    // redist9_i_unnamed_xmlchecklanguageid79_q_8(DELAY,375)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_unnamed_xmlchecklanguageid79_q_8 ( .xin(i_unnamed_xmlchecklanguageid79_q), .xout(redist9_i_unnamed_xmlchecklanguageid79_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_37_xmlchecklanguageid118(LOGICAL,176)@20
    assign i_reduction_xmlchecklanguageid_37_xmlchecklanguageid118_q = redist9_i_unnamed_xmlchecklanguageid79_q_8_q & i_unnamed_xmlchecklanguageid116_q;

    // i_reduction_xmlchecklanguageid_39_xmlchecklanguageid119(LOGICAL,177)@20
    assign i_reduction_xmlchecklanguageid_39_xmlchecklanguageid119_q = i_reduction_xmlchecklanguageid_37_xmlchecklanguageid118_q & redist20_i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q_16_q;

    // i_unnamed_xmlchecklanguageid120(LOGICAL,187)@20
    assign i_unnamed_xmlchecklanguageid120_q = i_reduction_xmlchecklanguageid_39_xmlchecklanguageid119_q ^ VCC_q;

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_notEnable(LOGICAL,409)
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_nor(LOGICAL,410)
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_nor_q = ~ (redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_notEnable_q | redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_sticky_ena_q);

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_last(CONSTANT,406)
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_last_q = $unsigned(3'b011);

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmp(LOGICAL,407)
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmp_q = $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_last_q == redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_q ? 1'b1 : 1'b0);

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmpReg(REG,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmpReg_q <= $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmp_q);
        end
    end

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_sticky_ena(REG,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_nor_q == 1'b1)
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_sticky_ena_q <= $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_cmpReg_q);
        end
    end

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_enaAnd(LOGICAL,412)
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_enaAnd_q = redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_sticky_ena_q & VCC_q;

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt(COUNTER,404)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i <= 3'd0;
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i == 3'd3)
            begin
                redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_eq <= 1'b0;
            end
            if (redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_eq == 1'b1)
            begin
                redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i <= $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i <= $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_q = redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_i[2:0];

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_inputreg0(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_inputreg0_q <= '0;
        end
        else
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_inputreg0_q <= $unsigned(i_nxt_8_select_xmlchecklanguageid99_q);
        end
    end

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_wraddr(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_wraddr_q <= $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_q);
        end
    end

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem(DUALMEM,403)
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_ia = $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_inputreg0_q);
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_aa = redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_wraddr_q;
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_ab = redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_rdcnt_q;
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_reset0 = ~ (resetn);
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
    ) redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_dmem (
        .clocken1(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_aa),
        .data_a(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_ab),
        .q_b(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_iq),
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
    assign redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_q = redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_iq[63:0];

    // redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_outputreg0(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_outputreg0_q <= '0;
        end
        else
        begin
            redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_outputreg0_q <= $unsigned(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_mem_q);
        end
    end

    // i_arrayidx340_xmlchecklanguageid0_add_x(ADD,285)@20
    assign i_arrayidx340_xmlchecklanguageid0_add_x_a = {1'b0, redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_outputreg0_q};
    assign i_arrayidx340_xmlchecklanguageid0_add_x_b = {1'b0, c_i64_2210_recast_x_q};
    assign i_arrayidx340_xmlchecklanguageid0_add_x_o = $unsigned(i_arrayidx340_xmlchecklanguageid0_add_x_a) + $unsigned(i_arrayidx340_xmlchecklanguageid0_add_x_b);
    assign i_arrayidx340_xmlchecklanguageid0_add_x_q = i_arrayidx340_xmlchecklanguageid0_add_x_o[64:0];

    // i_arrayidx340_xmlchecklanguageid0_trunc_sel_x(BITSELECT,288)@20
    assign i_arrayidx340_xmlchecklanguageid0_trunc_sel_x_b = i_arrayidx340_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm54627_xmlchecklanguageid121(BLACKBOX,140)@20
    // in in_i_stall@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_address@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_read@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_write@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@27
    // out out_o_stall@26
    // out out_o_valid@27
    xmlCheckLanguageID_i_llvm_fpga_mem_lm54627_xmlchecklanguageid0 thei_llvm_fpga_mem_lm54627_xmlchecklanguageid121 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx340_xmlchecklanguageid0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_xmlchecklanguageid120_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg40_q),
        .in_lm54627_xmlCheckLanguageID_avm_readdata(in_lm54627_xmlCheckLanguageID_avm_readdata),
        .in_lm54627_xmlCheckLanguageID_avm_readdatavalid(in_lm54627_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm54627_xmlCheckLanguageID_avm_waitrequest(in_lm54627_xmlCheckLanguageID_avm_waitrequest),
        .in_lm54627_xmlCheckLanguageID_avm_writeack(in_lm54627_xmlCheckLanguageID_avm_writeack),
        .out_lm54627_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_address),
        .out_lm54627_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_burstcount),
        .out_lm54627_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_byteenable),
        .out_lm54627_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_enable),
        .out_lm54627_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_read),
        .out_lm54627_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_write),
        .out_lm54627_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,262)
    assign out_lm54627_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_address;
    assign out_lm54627_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_enable;
    assign out_lm54627_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_read;
    assign out_lm54627_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_write;
    assign out_lm54627_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_writedata;
    assign out_lm54627_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_byteenable;
    assign out_lm54627_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_lm54627_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg43(REG,341)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist3_sync_together243_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid91_xmlchecklanguageid130(BLACKBOX,127)@3
    // out out_intel_reserved_ffwd_48_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000053Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid91_xmlchecklanguageid130 (
        .in_predicate_in(GND_q),
        .in_src_data_in_48_0(i_unnamed_xmlchecklanguageid22_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_48_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid91_xmlchecklanguageid130_out_intel_reserved_ffwd_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,263)
    assign out_intel_reserved_ffwd_48_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid91_xmlchecklanguageid130_out_intel_reserved_ffwd_48_0;

    // valid_fanout_reg44(REG,342)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist5_sync_together243_in_i_valid_10_q);
        end
    end

    // redist14_i_unnamed_xmlchecklanguageid32_q_8(DELAY,380)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_unnamed_xmlchecklanguageid32_q_8 ( .xin(i_unnamed_xmlchecklanguageid32_q), .xout(redist14_i_unnamed_xmlchecklanguageid32_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid92_xmlchecklanguageid131(BLACKBOX,128)@11
    // out out_intel_reserved_ffwd_49_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000054Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid92_xmlchecklanguageid131 (
        .in_predicate_in(GND_q),
        .in_src_data_in_49_0(redist14_i_unnamed_xmlchecklanguageid32_q_8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_49_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid92_xmlchecklanguageid131_out_intel_reserved_ffwd_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,264)
    assign out_intel_reserved_ffwd_49_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid92_xmlchecklanguageid131_out_intel_reserved_ffwd_49_0;

    // valid_fanout_reg45(REG,343)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid93_xmlchecklanguageid132(BLACKBOX,129)@4
    // out out_intel_reserved_ffwd_50_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000055Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid93_xmlchecklanguageid132 (
        .in_predicate_in(GND_q),
        .in_src_data_in_50_0(i_reduction_xmlchecklanguageid_16_xmlchecklanguageid40_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_50_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid93_xmlchecklanguageid132_out_intel_reserved_ffwd_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,265)
    assign out_intel_reserved_ffwd_50_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid93_xmlchecklanguageid132_out_intel_reserved_ffwd_50_0;

    // valid_fanout_reg46(REG,344)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid94_xmlchecklanguageid133(BLACKBOX,130)@4
    // out out_intel_reserved_ffwd_51_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000056Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid94_xmlchecklanguageid133 (
        .in_predicate_in(GND_q),
        .in_src_data_in_51_0(i_unnamed_xmlchecklanguageid57_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_51_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid94_xmlchecklanguageid133_out_intel_reserved_ffwd_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,266)
    assign out_intel_reserved_ffwd_51_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid94_xmlchecklanguageid133_out_intel_reserved_ffwd_51_0;

    // valid_fanout_reg47(REG,345)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid95_xmlchecklanguageid134(BLACKBOX,131)@4
    // out out_intel_reserved_ffwd_52_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000057Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid95_xmlchecklanguageid134 (
        .in_predicate_in(GND_q),
        .in_src_data_in_52_0(i_unnamed_xmlchecklanguageid65_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_52_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid95_xmlchecklanguageid134_out_intel_reserved_ffwd_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,267)
    assign out_intel_reserved_ffwd_52_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid95_xmlchecklanguageid134_out_intel_reserved_ffwd_52_0;

    // valid_fanout_reg48(REG,346)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid96_xmlchecklanguageid135(BLACKBOX,139)@1
    // out out_intel_reserved_ffwd_53_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000065Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid96_xmlchecklanguageid135 (
        .in_predicate_in(GND_q),
        .in_src_data_in_53_0(i_incdec_ptr231_xmlchecklanguageid0_trunc_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_53_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid96_xmlchecklanguageid135_out_intel_reserved_ffwd_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,268)
    assign out_intel_reserved_ffwd_53_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid96_xmlchecklanguageid135_out_intel_reserved_ffwd_53_0;

    // valid_fanout_reg49(REG,347)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist5_sync_together243_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid97_xmlchecklanguageid136(BLACKBOX,135)@11
    // out out_intel_reserved_ffwd_54_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000061Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid97_xmlchecklanguageid136 (
        .in_predicate_in(GND_q),
        .in_src_data_in_54_0(i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_intel_reserved_ffwd_54_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid97_xmlchecklanguageid136_out_intel_reserved_ffwd_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,269)
    assign out_intel_reserved_ffwd_54_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid97_xmlchecklanguageid136_out_intel_reserved_ffwd_54_0;

    // valid_fanout_reg50(REG,348)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_unnamed_xmlchecklanguageid80(LOGICAL,208)@12
    assign i_unnamed_xmlchecklanguageid80_q = redist10_i_unnamed_xmlchecklanguageid65_q_8_q ^ VCC_q;

    // i_unnamed_xmlchecklanguageid81(LOGICAL,209)@12
    assign i_unnamed_xmlchecklanguageid81_q = i_unnamed_xmlchecklanguageid79_q | i_unnamed_xmlchecklanguageid80_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid98_xmlchecklanguageid137(BLACKBOX,132)@12
    // out out_intel_reserved_ffwd_55_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000058Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid98_xmlchecklanguageid137 (
        .in_predicate_in(GND_q),
        .in_src_data_in_55_0(i_unnamed_xmlchecklanguageid81_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_intel_reserved_ffwd_55_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid98_xmlchecklanguageid137_out_intel_reserved_ffwd_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,270)
    assign out_intel_reserved_ffwd_55_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid98_xmlchecklanguageid137_out_intel_reserved_ffwd_55_0;

    // valid_fanout_reg51(REG,349)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg28(REG,326)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp6856_xmlchecklanguageid82(BLACKBOX,84)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000038Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp6856_xmlchecklanguageid82 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp6856_xmlchecklanguageid82_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid83(LOGICAL,210)@12
    assign i_unnamed_xmlchecklanguageid83_q = i_llvm_fpga_ffwd_dest_i1_cmp6856_xmlchecklanguageid82_out_dest_data_out_14_0 | i_unnamed_xmlchecklanguageid81_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid99_xmlchecklanguageid138(BLACKBOX,133)@12
    // out out_intel_reserved_ffwd_56_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000059Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid99_xmlchecklanguageid138 (
        .in_predicate_in(GND_q),
        .in_src_data_in_56_0(i_unnamed_xmlchecklanguageid83_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_intel_reserved_ffwd_56_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid99_xmlchecklanguageid138_out_intel_reserved_ffwd_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,271)
    assign out_intel_reserved_ffwd_56_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid99_xmlchecklanguageid138_out_intel_reserved_ffwd_56_0;

    // valid_fanout_reg52(REG,350)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist5_sync_together243_in_i_valid_10_q);
        end
    end

    // c_i8_26220(CONSTANT,72)
    assign c_i8_26220_q = $unsigned(8'b00011010);

    // c_i8_65219(CONSTANT,75)
    assign c_i8_65219_q = $unsigned(8'b10111111);

    // c_i8_33218(CONSTANT,73)
    assign c_i8_33218_q = $unsigned(8'b11011111);

    // i_unnamed_xmlchecklanguageid84(LOGICAL,211)@11
    assign i_unnamed_xmlchecklanguageid84_q = i_llvm_fpga_mem_lm9225_xmlchecklanguageid71_out_o_readdata & c_i8_33218_q;

    // i_unnamed_xmlchecklanguageid84_vt_select_4_merged_bit_select(BITSELECT,365)@11
    assign i_unnamed_xmlchecklanguageid84_vt_select_4_merged_bit_select_b = i_unnamed_xmlchecklanguageid84_q[4:0];
    assign i_unnamed_xmlchecklanguageid84_vt_select_4_merged_bit_select_c = i_unnamed_xmlchecklanguageid84_q[7:6];

    // i_unnamed_xmlchecklanguageid84_vt_join(BITJOIN,213)@11
    assign i_unnamed_xmlchecklanguageid84_vt_join_q = {i_unnamed_xmlchecklanguageid84_vt_select_4_merged_bit_select_c, GND_q, i_unnamed_xmlchecklanguageid84_vt_select_4_merged_bit_select_b};

    // i_unnamed_xmlchecklanguageid85(ADD,216)@11
    assign i_unnamed_xmlchecklanguageid85_a = {1'b0, i_unnamed_xmlchecklanguageid84_vt_join_q};
    assign i_unnamed_xmlchecklanguageid85_b = {1'b0, c_i8_65219_q};
    assign i_unnamed_xmlchecklanguageid85_o = $unsigned(i_unnamed_xmlchecklanguageid85_a) + $unsigned(i_unnamed_xmlchecklanguageid85_b);
    assign i_unnamed_xmlchecklanguageid85_q = i_unnamed_xmlchecklanguageid85_o[8:0];

    // bgTrunc_i_unnamed_xmlchecklanguageid85_sel_x(BITSELECT,253)@11
    assign bgTrunc_i_unnamed_xmlchecklanguageid85_sel_x_b = i_unnamed_xmlchecklanguageid85_q[7:0];

    // i_unnamed_xmlchecklanguageid86(COMPARE,217)@11
    assign i_unnamed_xmlchecklanguageid86_a = {2'b00, bgTrunc_i_unnamed_xmlchecklanguageid85_sel_x_b};
    assign i_unnamed_xmlchecklanguageid86_b = {2'b00, c_i8_26220_q};
    assign i_unnamed_xmlchecklanguageid86_o = $unsigned(i_unnamed_xmlchecklanguageid86_a) - $unsigned(i_unnamed_xmlchecklanguageid86_b);
    assign i_unnamed_xmlchecklanguageid86_c[0] = i_unnamed_xmlchecklanguageid86_o[9];

    // i_unnamed_xmlchecklanguageid87(LOGICAL,218)@11
    assign i_unnamed_xmlchecklanguageid87_q = i_unnamed_xmlchecklanguageid86_c & redist12_i_unnamed_xmlchecklanguageid49_q_7_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid100_xmlchecklanguageid139(BLACKBOX,120)@11
    // out out_intel_reserved_ffwd_57_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000046Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid100_xmlchecklanguageid139 (
        .in_predicate_in(GND_q),
        .in_src_data_in_57_0(i_unnamed_xmlchecklanguageid87_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_intel_reserved_ffwd_57_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid100_xmlchecklanguageid139_out_intel_reserved_ffwd_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,272)
    assign out_intel_reserved_ffwd_57_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid100_xmlchecklanguageid139_out_intel_reserved_ffwd_57_0;

    // valid_fanout_reg53(REG,351)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(in_i_valid);
        end
    end

    // i_incdec_ptr260166_xmlchecklanguageid0_add_x(ADD,293)@1
    assign i_incdec_ptr260166_xmlchecklanguageid0_add_x_a = {1'b0, i_nxt_3_select_xmlchecklanguageid43_q};
    assign i_incdec_ptr260166_xmlchecklanguageid0_add_x_b = {1'b0, c_i64_2210_recast_x_q};
    assign i_incdec_ptr260166_xmlchecklanguageid0_add_x_o = $unsigned(i_incdec_ptr260166_xmlchecklanguageid0_add_x_a) + $unsigned(i_incdec_ptr260166_xmlchecklanguageid0_add_x_b);
    assign i_incdec_ptr260166_xmlchecklanguageid0_add_x_q = i_incdec_ptr260166_xmlchecklanguageid0_add_x_o[64:0];

    // i_incdec_ptr260166_xmlchecklanguageid0_trunc_sel_x(BITSELECT,296)@1
    assign i_incdec_ptr260166_xmlchecklanguageid0_trunc_sel_x_b = i_incdec_ptr260166_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid101_xmlchecklanguageid140(BLACKBOX,136)@1
    // out out_intel_reserved_ffwd_58_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000062Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid101_xmlchecklanguageid140 (
        .in_predicate_in(GND_q),
        .in_src_data_in_58_0(i_incdec_ptr260166_xmlchecklanguageid0_trunc_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_intel_reserved_ffwd_58_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid101_xmlchecklanguageid140_out_intel_reserved_ffwd_58_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,273)
    assign out_intel_reserved_ffwd_58_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid101_xmlchecklanguageid140_out_intel_reserved_ffwd_58_0;

    // valid_fanout_reg54(REG,352)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist7_sync_together243_in_i_valid_19_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid102_xmlchecklanguageid141(BLACKBOX,121)@20
    // out out_intel_reserved_ffwd_59_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000047Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid102_xmlchecklanguageid141 (
        .in_predicate_in(GND_q),
        .in_src_data_in_59_0(redist21_i_phi_decision314_select_xmlchecklanguageid91_q_8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_intel_reserved_ffwd_59_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid102_xmlchecklanguageid141_out_intel_reserved_ffwd_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,274)
    assign out_intel_reserved_ffwd_59_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid102_xmlchecklanguageid141_out_intel_reserved_ffwd_59_0;

    // valid_fanout_reg55(REG,353)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist7_sync_together243_in_i_valid_19_q);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid103_xmlchecklanguageid142(BLACKBOX,137)@20
    // out out_intel_reserved_ffwd_60_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000063Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid103_xmlchecklanguageid142 (
        .in_predicate_in(GND_q),
        .in_src_data_in_60_0(redist22_i_nxt_8_select_xmlchecklanguageid99_q_8_outputreg0_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_intel_reserved_ffwd_60_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid103_xmlchecklanguageid142_out_intel_reserved_ffwd_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,275)
    assign out_intel_reserved_ffwd_60_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid103_xmlchecklanguageid142_out_intel_reserved_ffwd_60_0;

    // valid_fanout_reg56(REG,354)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist4_sync_together243_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid104_xmlchecklanguageid143(BLACKBOX,122)@4
    // out out_intel_reserved_ffwd_61_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000048Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid104_xmlchecklanguageid143 (
        .in_predicate_in(GND_q),
        .in_src_data_in_61_0(i_reduction_xmlchecklanguageid_33_xmlchecklanguageid103_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_intel_reserved_ffwd_61_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid104_xmlchecklanguageid143_out_intel_reserved_ffwd_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,276)
    assign out_intel_reserved_ffwd_61_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid104_xmlchecklanguageid143_out_intel_reserved_ffwd_61_0;

    // valid_fanout_reg57(REG,355)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist7_sync_together243_in_i_valid_19_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid105_xmlchecklanguageid144(BLACKBOX,123)@20
    // out out_intel_reserved_ffwd_62_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000049Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid105_xmlchecklanguageid144 (
        .in_predicate_in(GND_q),
        .in_src_data_in_62_0(i_unnamed_xmlchecklanguageid116_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_intel_reserved_ffwd_62_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid105_xmlchecklanguageid144_out_intel_reserved_ffwd_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,277)
    assign out_intel_reserved_ffwd_62_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid105_xmlchecklanguageid144_out_intel_reserved_ffwd_62_0;

    // redist8_sync_together243_in_i_valid_26(DELAY,374)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together243_in_i_valid_26 ( .xin(redist7_sync_together243_in_i_valid_19_q), .xout(redist8_sync_together243_in_i_valid_26_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg58(REG,356)@26 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(redist8_sync_together243_in_i_valid_26_q);
        end
    end

    // i_off132_xmlchecklanguageid122(ADD,151)@27
    assign i_off132_xmlchecklanguageid122_a = {1'b0, i_llvm_fpga_mem_lm54627_xmlchecklanguageid121_out_o_readdata};
    assign i_off132_xmlchecklanguageid122_b = {1'b0, c_i8_48216_q};
    assign i_off132_xmlchecklanguageid122_o = $unsigned(i_off132_xmlchecklanguageid122_a) + $unsigned(i_off132_xmlchecklanguageid122_b);
    assign i_off132_xmlchecklanguageid122_q = i_off132_xmlchecklanguageid122_o[8:0];

    // bgTrunc_i_off132_xmlchecklanguageid122_sel_x(BITSELECT,250)@27
    assign bgTrunc_i_off132_xmlchecklanguageid122_sel_x_b = i_off132_xmlchecklanguageid122_q[7:0];

    // i_unnamed_xmlchecklanguageid123(COMPARE,188)@27
    assign i_unnamed_xmlchecklanguageid123_a = {2'b00, bgTrunc_i_off132_xmlchecklanguageid122_sel_x_b};
    assign i_unnamed_xmlchecklanguageid123_b = {2'b00, c_i8_10217_q};
    assign i_unnamed_xmlchecklanguageid123_o = $unsigned(i_unnamed_xmlchecklanguageid123_a) - $unsigned(i_unnamed_xmlchecklanguageid123_b);
    assign i_unnamed_xmlchecklanguageid123_c[0] = i_unnamed_xmlchecklanguageid123_o[9];

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid106_xmlchecklanguageid145(BLACKBOX,124)@27
    // out out_intel_reserved_ffwd_63_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000050Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid106_xmlchecklanguageid145 (
        .in_predicate_in(GND_q),
        .in_src_data_in_63_0(i_unnamed_xmlchecklanguageid123_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_intel_reserved_ffwd_63_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid106_xmlchecklanguageid145_out_intel_reserved_ffwd_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,278)
    assign out_intel_reserved_ffwd_63_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid106_xmlchecklanguageid145_out_intel_reserved_ffwd_63_0;

    // valid_fanout_reg59(REG,357)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_phi_decision_xor_xmlchecklanguageid124(LOGICAL,155)@12
    assign i_phi_decision_xor_xmlchecklanguageid124_q = i_unnamed_xmlchecklanguageid83_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid107_xmlchecklanguageid146(BLACKBOX,125)@12
    // out out_intel_reserved_ffwd_64_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000051Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid107_xmlchecklanguageid146 (
        .in_predicate_in(GND_q),
        .in_src_data_in_64_0(i_phi_decision_xor_xmlchecklanguageid124_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_intel_reserved_ffwd_64_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid107_xmlchecklanguageid146_out_intel_reserved_ffwd_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_17_regfree_osync_x(GPOUT,279)
    assign out_intel_reserved_ffwd_64_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid107_xmlchecklanguageid146_out_intel_reserved_ffwd_64_0;

    // valid_fanout_reg60(REG,358)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(redist6_sync_together243_in_i_valid_11_q);
        end
    end

    // i_notlhs5_xmlchecklanguageid125(LOGICAL,144)@11
    assign i_notlhs5_xmlchecklanguageid125_q = i_unnamed_xmlchecklanguageid86_c ^ VCC_q;

    // i_not4_xmlchecklanguageid126(LOGICAL,143)@11 + 1
    assign i_not4_xmlchecklanguageid126_qi = redist14_i_unnamed_xmlchecklanguageid32_q_8_q | i_notlhs5_xmlchecklanguageid125_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_not4_xmlchecklanguageid126_delay ( .xin(i_not4_xmlchecklanguageid126_qi), .xout(i_not4_xmlchecklanguageid126_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid127(LOGICAL,189)@12
    assign i_unnamed_xmlchecklanguageid127_q = i_unnamed_xmlchecklanguageid83_q | i_not4_xmlchecklanguageid126_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid108_xmlchecklanguageid147(BLACKBOX,126)@12
    // out out_intel_reserved_ffwd_65_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000052Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid108_xmlchecklanguageid147 (
        .in_predicate_in(GND_q),
        .in_src_data_in_65_0(i_unnamed_xmlchecklanguageid127_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_intel_reserved_ffwd_65_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid108_xmlchecklanguageid147_out_intel_reserved_ffwd_65_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_18_regfree_osync_x(GPOUT,280)
    assign out_intel_reserved_ffwd_65_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid108_xmlchecklanguageid147_out_intel_reserved_ffwd_65_0;

    // valid_fanout_reg0(REG,298)@26 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together243_in_i_valid_26_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,297)@27
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_xmlCheckLanguageID109_0_tpl = GND_q;
    assign out_unnamed_xmlCheckLanguageID7 = GND_q;

endmodule
