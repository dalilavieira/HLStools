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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000000Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000000Z_xmlchecklanguageid0 (
    input wire [63:0] in_lm14_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm14_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm14_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm14_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm14_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm14_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm14_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [63:0] in_lm415_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm415_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm415_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm415_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm415_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm415_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm415_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    input wire [63:0] in_lm1516_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm1516_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm1516_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm1516_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm1516_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm1516_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm1516_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_intel_reserved_ffwd_2_0,
    input wire [63:0] in_lm2417_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm2417_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm2417_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm2417_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm2417_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm2417_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm2417_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    input wire [63:0] in_lm3618_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm3618_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm3618_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm3618_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm3618_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm3618_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm3618_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_c0_exi1_0_tpl,
    output wire [0:0] out_c0_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_xmlCheckLanguageID7,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [63:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] c_i8_2673_q;
    wire [7:0] c_i8_3371_q;
    wire [7:0] c_i8_6572_q;
    wire [0:0] i_cmp11_xmlchecklanguageid22_q;
    wire [0:0] i_cmp15_not_xmlchecklanguageid28_q;
    wire [0:0] i_cmp15_xmlchecklanguageid26_qi;
    reg [0:0] i_cmp15_xmlchecklanguageid26_q;
    wire [0:0] i_cmp19_xmlchecklanguageid31_q;
    wire [0:0] i_cmp1_not_xmlchecklanguageid10_q;
    wire [0:0] i_cmp1_xmlchecklanguageid6_q;
    wire [0:0] i_cmp23_not_xmlchecklanguageid37_q;
    wire [0:0] i_cmp23_xmlchecklanguageid35_qi;
    reg [0:0] i_cmp23_xmlchecklanguageid35_q;
    wire [0:0] i_cmp27_xmlchecklanguageid40_q;
    wire [0:0] i_cmp4_xmlchecklanguageid13_q;
    wire [0:0] i_cmp7_not_xmlchecklanguageid19_q;
    wire [0:0] i_cmp7_xmlchecklanguageid17_qi;
    reg [0:0] i_cmp7_xmlchecklanguageid17_q;
    wire [0:0] i_cmp_xmlchecklanguageid3_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid2_xmlchecklanguageid48_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid5_xmlchecklanguageid51_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid6_xmlchecklanguageid52_out_intel_reserved_ffwd_5_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid3_xmlchecklanguageid49_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid1_xmlchecklanguageid47_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid4_xmlchecklanguageid50_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_o_readdata;
    wire [0:0] i_unnamed_xmlchecklanguageid11_q;
    wire [0:0] i_unnamed_xmlchecklanguageid15_q;
    wire [0:0] i_unnamed_xmlchecklanguageid16_q;
    wire [0:0] i_unnamed_xmlchecklanguageid20_q;
    wire [0:0] i_unnamed_xmlchecklanguageid24_q;
    wire [0:0] i_unnamed_xmlchecklanguageid25_q;
    wire [0:0] i_unnamed_xmlchecklanguageid29_q;
    wire [0:0] i_unnamed_xmlchecklanguageid33_q;
    wire [0:0] i_unnamed_xmlchecklanguageid34_q;
    wire [0:0] i_unnamed_xmlchecklanguageid38_q;
    wire [0:0] i_unnamed_xmlchecklanguageid42_q;
    wire [0:0] i_unnamed_xmlchecklanguageid43_q;
    wire [7:0] i_unnamed_xmlchecklanguageid44_q;
    wire [7:0] i_unnamed_xmlchecklanguageid44_vt_join_q;
    wire [8:0] i_unnamed_xmlchecklanguageid45_a;
    wire [8:0] i_unnamed_xmlchecklanguageid45_b;
    logic [8:0] i_unnamed_xmlchecklanguageid45_o;
    wire [8:0] i_unnamed_xmlchecklanguageid45_q;
    wire [9:0] i_unnamed_xmlchecklanguageid46_a;
    wire [9:0] i_unnamed_xmlchecklanguageid46_b;
    logic [9:0] i_unnamed_xmlchecklanguageid46_o;
    wire [0:0] i_unnamed_xmlchecklanguageid46_c;
    wire [0:0] i_unnamed_xmlchecklanguageid9_q;
    wire [7:0] bgTrunc_i_unnamed_xmlchecklanguageid45_sel_x_b;
    wire [7:0] c_i8_10565_recast_x_q;
    wire [7:0] c_i8_12069_recast_x_q;
    wire [7:0] c_i8_4567_recast_x_q;
    wire [7:0] c_i8_7368_recast_x_q;
    wire [7:0] c_i8_8870_recast_x_q;
    wire [63:0] cpn_i8_recast_x_q;
    wire [64:0] i_arrayidx2_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_arrayidx2_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_arrayidx2_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_arrayidx2_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_arrayidx2_xmlchecklanguageid0_c_i64_11_x_q;
    wire [63:0] i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b;
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
    wire [4:0] i_unnamed_xmlchecklanguageid44_vt_select_4_merged_bit_select_b;
    wire [1:0] i_unnamed_xmlchecklanguageid44_vt_select_4_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_7_q;
    reg [63:0] redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist2_sync_together76_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist3_sync_together76_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist4_sync_together76_aunroll_x_in_i_valid_21_q;
    reg [0:0] redist5_sync_together76_aunroll_x_in_i_valid_28_q;
    reg [0:0] redist10_i_unnamed_xmlchecklanguageid34_q_7_q;
    reg [0:0] redist11_i_unnamed_xmlchecklanguageid25_q_7_q;
    reg [0:0] redist12_i_unnamed_xmlchecklanguageid16_q_7_q;
    reg [0:0] redist13_i_cmp_xmlchecklanguageid3_q_7_q;
    reg [0:0] redist14_i_cmp_xmlchecklanguageid3_q_14_q;
    reg [0:0] redist15_i_cmp7_xmlchecklanguageid17_q_7_q;
    reg [0:0] redist16_i_cmp7_xmlchecklanguageid17_q_14_q;
    reg [0:0] redist17_i_cmp23_xmlchecklanguageid35_q_21_q;
    reg [0:0] redist18_i_cmp23_xmlchecklanguageid35_q_28_q;
    reg [0:0] redist19_i_cmp1_xmlchecklanguageid6_q_7_q;
    reg [0:0] redist20_i_cmp15_xmlchecklanguageid26_q_14_q;
    reg [0:0] redist21_i_cmp15_xmlchecklanguageid26_q_21_q;
    reg [63:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_outputreg0_q;
    wire redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_reset0;
    wire [63:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_ia;
    wire [2:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_aa;
    wire [2:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_ab;
    wire [63:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_iq;
    wire [63:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_q;
    wire [2:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_q;
    (* preserve *) reg [2:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i;
    (* preserve *) reg redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_eq;
    reg [2:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_wraddr_q;
    wire [2:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_last_q;
    wire [0:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmp_q;
    (* dont_merge *) reg [0:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmpReg_q;
    wire [0:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_notEnable_q;
    wire [0:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_sticky_ena_q;
    wire [0:0] redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_enaAnd_q;
    reg [63:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_outputreg0_q;
    wire redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_reset0;
    wire [63:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_ia;
    wire [2:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_aa;
    wire [2:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_ab;
    wire [63:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_iq;
    wire [63:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_q;
    wire [2:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_q;
    (* preserve *) reg [2:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i;
    (* preserve *) reg redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_eq;
    reg [2:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_wraddr_q;
    wire [2:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_last_q;
    wire [0:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmp_q;
    (* dont_merge *) reg [0:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmpReg_q;
    wire [0:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_notEnable_q;
    wire [0:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_sticky_ena_q;
    wire [0:0] redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_enaAnd_q;
    reg [63:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_outputreg0_q;
    wire redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_reset0;
    wire [63:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_ia;
    wire [2:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_aa;
    wire [2:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_ab;
    wire [63:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_iq;
    wire [63:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_q;
    wire [2:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_q;
    (* preserve *) reg [2:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i;
    (* preserve *) reg redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_eq;
    reg [2:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_wraddr_q;
    wire [2:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_last_q;
    wire [0:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmp_q;
    (* dont_merge *) reg [0:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmpReg_q;
    wire [0:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_notEnable_q;
    wire [0:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_nor_q;
    (* dont_merge *) reg [0:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_sticky_ena_q;
    wire [0:0] redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_enaAnd_q;
    reg [63:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_outputreg0_q;
    wire redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_reset0;
    wire [63:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_ia;
    wire [2:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_aa;
    wire [2:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_ab;
    wire [63:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_iq;
    wire [63:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_q;
    wire [2:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_q;
    (* preserve *) reg [2:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i;
    (* preserve *) reg redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_eq;
    reg [2:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_wraddr_q;
    wire [2:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_last_q;
    wire [0:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmp_q;
    (* dont_merge *) reg [0:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmpReg_q;
    wire [0:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_notEnable_q;
    wire [0:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_sticky_ena_q;
    wire [0:0] redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,106)@2 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // cpn_i8_recast_x(CONSTANT,82)
    assign cpn_i8_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_cmp_xmlchecklanguageid3(LOGICAL,32)@3
    assign i_cmp_xmlchecklanguageid3_q = $unsigned(redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1_q == cpn_i8_recast_x_q ? 1'b1 : 1'b0);

    // redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_mem_lm14_xmlchecklanguageid5(BLACKBOX,39)@3
    // in in_i_stall@20000000
    // out out_lm14_xmlCheckLanguageID_avm_address@20000000
    // out out_lm14_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm14_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm14_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm14_xmlCheckLanguageID_avm_read@20000000
    // out out_lm14_xmlCheckLanguageID_avm_write@20000000
    // out out_lm14_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    xmlCheckLanguageID_i_llvm_fpga_mem_lm14_xmlchecklanguageid0 thei_llvm_fpga_mem_lm14_xmlchecklanguageid5 (
        .in_flush(in_flush),
        .in_i_address(redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_i_predicate(i_cmp_xmlchecklanguageid3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_lm14_xmlCheckLanguageID_avm_readdata(in_lm14_xmlCheckLanguageID_avm_readdata),
        .in_lm14_xmlCheckLanguageID_avm_readdatavalid(in_lm14_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm14_xmlCheckLanguageID_avm_waitrequest(in_lm14_xmlCheckLanguageID_avm_waitrequest),
        .in_lm14_xmlCheckLanguageID_avm_writeack(in_lm14_xmlCheckLanguageID_avm_writeack),
        .out_lm14_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_address),
        .out_lm14_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_burstcount),
        .out_lm14_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_byteenable),
        .out_lm14_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_enable),
        .out_lm14_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_read),
        .out_lm14_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_write),
        .out_lm14_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_lm14_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_address;
    assign out_lm14_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_enable;
    assign out_lm14_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_read;
    assign out_lm14_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_write;
    assign out_lm14_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_writedata;
    assign out_lm14_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_byteenable;
    assign out_lm14_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_lm14_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg6(REG,111)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid1_xmlchecklanguageid47(BLACKBOX,37)@3
    // out out_intel_reserved_ffwd_0_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000004Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid1_xmlchecklanguageid47 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid1_xmlchecklanguageid47_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,74)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid1_xmlchecklanguageid47_out_intel_reserved_ffwd_0_0;

    // redist2_sync_together76_aunroll_x_in_i_valid_7(DELAY,121)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together76_aunroll_x_in_i_valid_7 ( .xin(in_i_valid), .xout(redist2_sync_together76_aunroll_x_in_i_valid_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg2(REG,107)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together76_aunroll_x_in_i_valid_7_q);
        end
    end

    // c_i8_10565_recast_x(CONSTANT,77)
    assign c_i8_10565_recast_x_q = $unsigned(8'b01101001);

    // i_cmp1_xmlchecklanguageid6(LOGICAL,25)@10
    assign i_cmp1_xmlchecklanguageid6_q = $unsigned(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata == c_i8_10565_recast_x_q ? 1'b1 : 1'b0);

    // i_cmp1_not_xmlchecklanguageid10(LOGICAL,24)@10
    assign i_cmp1_not_xmlchecklanguageid10_q = i_cmp1_xmlchecklanguageid6_q ^ VCC_q;

    // redist13_i_cmp_xmlchecklanguageid3_q_7(DELAY,132)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_cmp_xmlchecklanguageid3_q_7 ( .xin(i_cmp_xmlchecklanguageid3_q), .xout(redist13_i_cmp_xmlchecklanguageid3_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid11(LOGICAL,44)@10
    assign i_unnamed_xmlchecklanguageid11_q = redist13_i_cmp_xmlchecklanguageid3_q_7_q | i_cmp1_not_xmlchecklanguageid10_q;

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_notEnable(LOGICAL,148)
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_nor(LOGICAL,149)
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_nor_q = ~ (redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_notEnable_q | redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_sticky_ena_q);

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_last(CONSTANT,145)
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_last_q = $unsigned(3'b011);

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmp(LOGICAL,146)
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmp_q = $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_last_q == redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmpReg(REG,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmpReg_q <= $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmp_q);
        end
    end

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_sticky_ena(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_nor_q == 1'b1)
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_sticky_ena_q <= $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_cmpReg_q);
        end
    end

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_enaAnd(LOGICAL,151)
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_enaAnd_q = redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_sticky_ena_q & VCC_q;

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt(COUNTER,143)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i <= 3'd0;
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i == 3'd3)
            begin
                redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_eq <= 1'b0;
            end
            if (redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_eq == 1'b1)
            begin
                redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i <= $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i <= $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_q = redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_i[2:0];

    // i_arrayidx2_xmlchecklanguageid0_c_i64_11_x(CONSTANT,100)
    assign i_arrayidx2_xmlchecklanguageid0_c_i64_11_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_arrayidx2_xmlchecklanguageid0_add_x(ADD,99)@3
    assign i_arrayidx2_xmlchecklanguageid0_add_x_a = {1'b0, redist1_sync_together76_aunroll_x_in_c0_eni1_1_tpl_1_q};
    assign i_arrayidx2_xmlchecklanguageid0_add_x_b = {1'b0, i_arrayidx2_xmlchecklanguageid0_c_i64_11_x_q};
    assign i_arrayidx2_xmlchecklanguageid0_add_x_o = $unsigned(i_arrayidx2_xmlchecklanguageid0_add_x_a) + $unsigned(i_arrayidx2_xmlchecklanguageid0_add_x_b);
    assign i_arrayidx2_xmlchecklanguageid0_add_x_q = i_arrayidx2_xmlchecklanguageid0_add_x_o[64:0];

    // i_arrayidx2_xmlchecklanguageid0_trunc_sel_x(BITSELECT,102)@3
    assign i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b = i_arrayidx2_xmlchecklanguageid0_add_x_q[63:0];

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_wraddr(REG,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_wraddr_q <= $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_q);
        end
    end

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem(DUALMEM,142)
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_ia = $unsigned(i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b);
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_aa = redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_wraddr_q;
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_ab = redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_rdcnt_q;
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_reset0 = ~ (resetn);
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
    ) redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_dmem (
        .clocken1(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_aa),
        .data_a(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_ab),
        .q_b(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_iq),
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
    assign redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_q = redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_iq[63:0];

    // redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_outputreg0(DELAY,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_outputreg0_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_outputreg0_q <= $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_mem_q);
        end
    end

    // i_llvm_fpga_mem_lm415_xmlchecklanguageid12(BLACKBOX,43)@10
    // in in_i_stall@20000000
    // out out_lm415_xmlCheckLanguageID_avm_address@20000000
    // out out_lm415_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm415_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm415_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm415_xmlCheckLanguageID_avm_read@20000000
    // out out_lm415_xmlCheckLanguageID_avm_write@20000000
    // out out_lm415_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@17
    // out out_o_stall@16
    // out out_o_valid@17
    xmlCheckLanguageID_i_llvm_fpga_mem_lm415_xmlchecklanguageid0 thei_llvm_fpga_mem_lm415_xmlchecklanguageid12 (
        .in_flush(in_flush),
        .in_i_address(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_outputreg0_q),
        .in_i_predicate(i_unnamed_xmlchecklanguageid11_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_lm415_xmlCheckLanguageID_avm_readdata(in_lm415_xmlCheckLanguageID_avm_readdata),
        .in_lm415_xmlCheckLanguageID_avm_readdatavalid(in_lm415_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm415_xmlCheckLanguageID_avm_waitrequest(in_lm415_xmlCheckLanguageID_avm_waitrequest),
        .in_lm415_xmlCheckLanguageID_avm_writeack(in_lm415_xmlCheckLanguageID_avm_writeack),
        .out_lm415_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_address),
        .out_lm415_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_burstcount),
        .out_lm415_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_byteenable),
        .out_lm415_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_enable),
        .out_lm415_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_read),
        .out_lm415_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_write),
        .out_lm415_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,84)
    assign out_lm415_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_address;
    assign out_lm415_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_enable;
    assign out_lm415_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_read;
    assign out_lm415_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_write;
    assign out_lm415_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_writedata;
    assign out_lm415_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_byteenable;
    assign out_lm415_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_lm415_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg7(REG,112)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid2_xmlchecklanguageid48(BLACKBOX,33)@3
    // out out_intel_reserved_ffwd_1_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000000Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid2_xmlchecklanguageid48 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_cmp_xmlchecklanguageid3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid2_xmlchecklanguageid48_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,85)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid2_xmlchecklanguageid48_out_intel_reserved_ffwd_1_0;

    // redist3_sync_together76_aunroll_x_in_i_valid_14(DELAY,122)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together76_aunroll_x_in_i_valid_14 ( .xin(redist2_sync_together76_aunroll_x_in_i_valid_7_q), .xout(redist3_sync_together76_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg3(REG,108)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together76_aunroll_x_in_i_valid_14_q);
        end
    end

    // c_i8_7368_recast_x(CONSTANT,80)
    assign c_i8_7368_recast_x_q = $unsigned(8'b01001001);

    // i_cmp7_xmlchecklanguageid17(LOGICAL,31)@10 + 1
    assign i_cmp7_xmlchecklanguageid17_qi = $unsigned(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata == c_i8_7368_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp7_xmlchecklanguageid17_delay ( .xin(i_cmp7_xmlchecklanguageid17_qi), .xout(i_cmp7_xmlchecklanguageid17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_i_cmp7_xmlchecklanguageid17_q_7(DELAY,134)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_i_cmp7_xmlchecklanguageid17_q_7 ( .xin(i_cmp7_xmlchecklanguageid17_q), .xout(redist15_i_cmp7_xmlchecklanguageid17_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cmp7_not_xmlchecklanguageid19(LOGICAL,30)@17
    assign i_cmp7_not_xmlchecklanguageid19_q = redist15_i_cmp7_xmlchecklanguageid17_q_7_q ^ VCC_q;

    // c_i8_4567_recast_x(CONSTANT,79)
    assign c_i8_4567_recast_x_q = $unsigned(8'b00101101);

    // i_cmp4_xmlchecklanguageid13(LOGICAL,29)@17
    assign i_cmp4_xmlchecklanguageid13_q = $unsigned(i_llvm_fpga_mem_lm415_xmlchecklanguageid12_out_o_readdata == c_i8_4567_recast_x_q ? 1'b1 : 1'b0);

    // redist19_i_cmp1_xmlchecklanguageid6_q_7(DELAY,138)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_i_cmp1_xmlchecklanguageid6_q_7 ( .xin(i_cmp1_xmlchecklanguageid6_q), .xout(redist19_i_cmp1_xmlchecklanguageid6_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid15(LOGICAL,45)@17
    assign i_unnamed_xmlchecklanguageid15_q = redist19_i_cmp1_xmlchecklanguageid6_q_7_q & i_cmp4_xmlchecklanguageid13_q;

    // redist14_i_cmp_xmlchecklanguageid3_q_14(DELAY,133)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_cmp_xmlchecklanguageid3_q_14 ( .xin(redist13_i_cmp_xmlchecklanguageid3_q_7_q), .xout(redist14_i_cmp_xmlchecklanguageid3_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid16(LOGICAL,46)@17
    assign i_unnamed_xmlchecklanguageid16_q = redist14_i_cmp_xmlchecklanguageid3_q_14_q | i_unnamed_xmlchecklanguageid15_q;

    // i_unnamed_xmlchecklanguageid20(LOGICAL,47)@17
    assign i_unnamed_xmlchecklanguageid20_q = i_unnamed_xmlchecklanguageid16_q | i_cmp7_not_xmlchecklanguageid19_q;

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_notEnable(LOGICAL,159)
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_nor(LOGICAL,160)
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_nor_q = ~ (redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_notEnable_q | redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_sticky_ena_q);

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_last(CONSTANT,156)
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_last_q = $unsigned(3'b011);

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmp(LOGICAL,157)
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmp_q = $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_last_q == redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_q ? 1'b1 : 1'b0);

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmpReg(REG,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmpReg_q <= $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmp_q);
        end
    end

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_sticky_ena(REG,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_nor_q == 1'b1)
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_sticky_ena_q <= $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_cmpReg_q);
        end
    end

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_enaAnd(LOGICAL,162)
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_enaAnd_q = redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_sticky_ena_q & VCC_q;

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt(COUNTER,154)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i <= 3'd0;
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i == 3'd3)
            begin
                redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_eq <= 1'b0;
            end
            if (redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_eq == 1'b1)
            begin
                redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i <= $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i <= $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_q = redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_i[2:0];

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_wraddr(REG,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_wraddr_q <= $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_q);
        end
    end

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem(DUALMEM,153)
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_ia = $unsigned(redist6_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_7_outputreg0_q);
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_aa = redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_wraddr_q;
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_ab = redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_rdcnt_q;
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_reset0 = ~ (resetn);
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
    ) redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_dmem (
        .clocken1(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_aa),
        .data_a(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_ab),
        .q_b(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_iq),
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
    assign redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_q = redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_iq[63:0];

    // redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_outputreg0(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_outputreg0_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_outputreg0_q <= $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_mem_q);
        end
    end

    // i_llvm_fpga_mem_lm1516_xmlchecklanguageid21(BLACKBOX,40)@17
    // in in_i_stall@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_address@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_read@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_write@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@24
    // out out_o_stall@23
    // out out_o_valid@24
    xmlCheckLanguageID_i_llvm_fpga_mem_lm1516_xmlchecklanguageid0 thei_llvm_fpga_mem_lm1516_xmlchecklanguageid21 (
        .in_flush(in_flush),
        .in_i_address(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_outputreg0_q),
        .in_i_predicate(i_unnamed_xmlchecklanguageid20_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_lm1516_xmlCheckLanguageID_avm_readdata(in_lm1516_xmlCheckLanguageID_avm_readdata),
        .in_lm1516_xmlCheckLanguageID_avm_readdatavalid(in_lm1516_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm1516_xmlCheckLanguageID_avm_waitrequest(in_lm1516_xmlCheckLanguageID_avm_waitrequest),
        .in_lm1516_xmlCheckLanguageID_avm_writeack(in_lm1516_xmlCheckLanguageID_avm_writeack),
        .out_lm1516_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_address),
        .out_lm1516_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_burstcount),
        .out_lm1516_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_byteenable),
        .out_lm1516_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_enable),
        .out_lm1516_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_read),
        .out_lm1516_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_write),
        .out_lm1516_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,88)
    assign out_lm1516_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_address;
    assign out_lm1516_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_enable;
    assign out_lm1516_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_read;
    assign out_lm1516_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_write;
    assign out_lm1516_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_writedata;
    assign out_lm1516_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_byteenable;
    assign out_lm1516_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_lm1516_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg8(REG,113)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together76_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid3_xmlchecklanguageid49(BLACKBOX,36)@10
    // out out_intel_reserved_ffwd_2_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000003Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid3_xmlchecklanguageid49 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid3_xmlchecklanguageid49_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,89)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid3_xmlchecklanguageid49_out_intel_reserved_ffwd_2_0;

    // redist4_sync_together76_aunroll_x_in_i_valid_21(DELAY,123)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together76_aunroll_x_in_i_valid_21 ( .xin(redist3_sync_together76_aunroll_x_in_i_valid_14_q), .xout(redist4_sync_together76_aunroll_x_in_i_valid_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg4(REG,109)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist4_sync_together76_aunroll_x_in_i_valid_21_q);
        end
    end

    // c_i8_12069_recast_x(CONSTANT,78)
    assign c_i8_12069_recast_x_q = $unsigned(8'b01111000);

    // i_cmp15_xmlchecklanguageid26(LOGICAL,22)@10 + 1
    assign i_cmp15_xmlchecklanguageid26_qi = $unsigned(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata == c_i8_12069_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp15_xmlchecklanguageid26_delay ( .xin(i_cmp15_xmlchecklanguageid26_qi), .xout(i_cmp15_xmlchecklanguageid26_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_cmp15_xmlchecklanguageid26_q_14(DELAY,139)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_i_cmp15_xmlchecklanguageid26_q_14 ( .xin(i_cmp15_xmlchecklanguageid26_q), .xout(redist20_i_cmp15_xmlchecklanguageid26_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cmp15_not_xmlchecklanguageid28(LOGICAL,21)@24
    assign i_cmp15_not_xmlchecklanguageid28_q = redist20_i_cmp15_xmlchecklanguageid26_q_14_q ^ VCC_q;

    // i_cmp11_xmlchecklanguageid22(LOGICAL,20)@24
    assign i_cmp11_xmlchecklanguageid22_q = $unsigned(i_llvm_fpga_mem_lm1516_xmlchecklanguageid21_out_o_readdata == c_i8_4567_recast_x_q ? 1'b1 : 1'b0);

    // redist16_i_cmp7_xmlchecklanguageid17_q_14(DELAY,135)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_i_cmp7_xmlchecklanguageid17_q_14 ( .xin(redist15_i_cmp7_xmlchecklanguageid17_q_7_q), .xout(redist16_i_cmp7_xmlchecklanguageid17_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid24(LOGICAL,48)@24
    assign i_unnamed_xmlchecklanguageid24_q = redist16_i_cmp7_xmlchecklanguageid17_q_14_q & i_cmp11_xmlchecklanguageid22_q;

    // redist12_i_unnamed_xmlchecklanguageid16_q_7(DELAY,131)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_unnamed_xmlchecklanguageid16_q_7 ( .xin(i_unnamed_xmlchecklanguageid16_q), .xout(redist12_i_unnamed_xmlchecklanguageid16_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid25(LOGICAL,49)@24
    assign i_unnamed_xmlchecklanguageid25_q = redist12_i_unnamed_xmlchecklanguageid16_q_7_q | i_unnamed_xmlchecklanguageid24_q;

    // i_unnamed_xmlchecklanguageid29(LOGICAL,50)@24
    assign i_unnamed_xmlchecklanguageid29_q = i_unnamed_xmlchecklanguageid25_q | i_cmp15_not_xmlchecklanguageid28_q;

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_notEnable(LOGICAL,170)
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_nor(LOGICAL,171)
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_nor_q = ~ (redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_notEnable_q | redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_sticky_ena_q);

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_last(CONSTANT,167)
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_last_q = $unsigned(3'b011);

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmp(LOGICAL,168)
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmp_q = $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_last_q == redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_q ? 1'b1 : 1'b0);

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmpReg(REG,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmpReg_q <= $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmp_q);
        end
    end

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_sticky_ena(REG,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_nor_q == 1'b1)
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_sticky_ena_q <= $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_cmpReg_q);
        end
    end

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_enaAnd(LOGICAL,173)
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_enaAnd_q = redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_sticky_ena_q & VCC_q;

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt(COUNTER,165)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i <= 3'd0;
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i == 3'd3)
            begin
                redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_eq <= 1'b0;
            end
            if (redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_eq == 1'b1)
            begin
                redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i <= $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i <= $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_q = redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_i[2:0];

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_wraddr(REG,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_wraddr_q <= $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_q);
        end
    end

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem(DUALMEM,164)
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_ia = $unsigned(redist7_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_14_outputreg0_q);
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_aa = redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_wraddr_q;
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_ab = redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_rdcnt_q;
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_reset0 = ~ (resetn);
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
    ) redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_dmem (
        .clocken1(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_reset0),
        .clock1(clock),
        .address_a(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_aa),
        .data_a(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_ab),
        .q_b(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_iq),
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
    assign redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_q = redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_iq[63:0];

    // redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_outputreg0(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_outputreg0_q <= '0;
        end
        else
        begin
            redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_outputreg0_q <= $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_mem_q);
        end
    end

    // i_llvm_fpga_mem_lm2417_xmlchecklanguageid30(BLACKBOX,41)@24
    // in in_i_stall@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_address@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_read@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_write@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@31
    // out out_o_stall@30
    // out out_o_valid@31
    xmlCheckLanguageID_i_llvm_fpga_mem_lm2417_xmlchecklanguageid0 thei_llvm_fpga_mem_lm2417_xmlchecklanguageid30 (
        .in_flush(in_flush),
        .in_i_address(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_outputreg0_q),
        .in_i_predicate(i_unnamed_xmlchecklanguageid29_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_lm2417_xmlCheckLanguageID_avm_readdata(in_lm2417_xmlCheckLanguageID_avm_readdata),
        .in_lm2417_xmlCheckLanguageID_avm_readdatavalid(in_lm2417_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm2417_xmlCheckLanguageID_avm_waitrequest(in_lm2417_xmlCheckLanguageID_avm_waitrequest),
        .in_lm2417_xmlCheckLanguageID_avm_writeack(in_lm2417_xmlCheckLanguageID_avm_writeack),
        .out_lm2417_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_address),
        .out_lm2417_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_burstcount),
        .out_lm2417_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_byteenable),
        .out_lm2417_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_enable),
        .out_lm2417_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_read),
        .out_lm2417_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_write),
        .out_lm2417_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,92)
    assign out_lm2417_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_address;
    assign out_lm2417_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_enable;
    assign out_lm2417_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_read;
    assign out_lm2417_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_write;
    assign out_lm2417_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_writedata;
    assign out_lm2417_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_byteenable;
    assign out_lm2417_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_lm2417_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg9(REG,114)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid4_xmlchecklanguageid50(BLACKBOX,38)@3
    // out out_intel_reserved_ffwd_3_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000005Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid4_xmlchecklanguageid50 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid4_xmlchecklanguageid50_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,93)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid4_xmlchecklanguageid50_out_intel_reserved_ffwd_3_0;

    // redist5_sync_together76_aunroll_x_in_i_valid_28(DELAY,124)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together76_aunroll_x_in_i_valid_28 ( .xin(redist4_sync_together76_aunroll_x_in_i_valid_21_q), .xout(redist5_sync_together76_aunroll_x_in_i_valid_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,110)@30 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist5_sync_together76_aunroll_x_in_i_valid_28_q);
        end
    end

    // c_i8_8870_recast_x(CONSTANT,81)
    assign c_i8_8870_recast_x_q = $unsigned(8'b01011000);

    // i_cmp23_xmlchecklanguageid35(LOGICAL,27)@10 + 1
    assign i_cmp23_xmlchecklanguageid35_qi = $unsigned(i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata == c_i8_8870_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp23_xmlchecklanguageid35_delay ( .xin(i_cmp23_xmlchecklanguageid35_qi), .xout(i_cmp23_xmlchecklanguageid35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_cmp23_xmlchecklanguageid35_q_21(DELAY,136)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_i_cmp23_xmlchecklanguageid35_q_21 ( .xin(i_cmp23_xmlchecklanguageid35_q), .xout(redist17_i_cmp23_xmlchecklanguageid35_q_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cmp23_not_xmlchecklanguageid37(LOGICAL,26)@31
    assign i_cmp23_not_xmlchecklanguageid37_q = redist17_i_cmp23_xmlchecklanguageid35_q_21_q ^ VCC_q;

    // i_cmp19_xmlchecklanguageid31(LOGICAL,23)@31
    assign i_cmp19_xmlchecklanguageid31_q = $unsigned(i_llvm_fpga_mem_lm2417_xmlchecklanguageid30_out_o_readdata == c_i8_4567_recast_x_q ? 1'b1 : 1'b0);

    // redist21_i_cmp15_xmlchecklanguageid26_q_21(DELAY,140)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_cmp15_xmlchecklanguageid26_q_21 ( .xin(redist20_i_cmp15_xmlchecklanguageid26_q_14_q), .xout(redist21_i_cmp15_xmlchecklanguageid26_q_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid33(LOGICAL,51)@31
    assign i_unnamed_xmlchecklanguageid33_q = redist21_i_cmp15_xmlchecklanguageid26_q_21_q & i_cmp19_xmlchecklanguageid31_q;

    // redist11_i_unnamed_xmlchecklanguageid25_q_7(DELAY,130)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_i_unnamed_xmlchecklanguageid25_q_7 ( .xin(i_unnamed_xmlchecklanguageid25_q), .xout(redist11_i_unnamed_xmlchecklanguageid25_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid34(LOGICAL,52)@31
    assign i_unnamed_xmlchecklanguageid34_q = redist11_i_unnamed_xmlchecklanguageid25_q_7_q | i_unnamed_xmlchecklanguageid33_q;

    // i_unnamed_xmlchecklanguageid38(LOGICAL,53)@31
    assign i_unnamed_xmlchecklanguageid38_q = i_unnamed_xmlchecklanguageid34_q | i_cmp23_not_xmlchecklanguageid37_q;

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_notEnable(LOGICAL,181)
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_nor(LOGICAL,182)
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_nor_q = ~ (redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_notEnable_q | redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_sticky_ena_q);

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_last(CONSTANT,178)
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_last_q = $unsigned(3'b011);

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmp(LOGICAL,179)
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmp_q = $unsigned(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_last_q == redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_q ? 1'b1 : 1'b0);

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmpReg(REG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmpReg_q <= $unsigned(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmp_q);
        end
    end

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_sticky_ena(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_nor_q == 1'b1)
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_sticky_ena_q <= $unsigned(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_cmpReg_q);
        end
    end

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_enaAnd(LOGICAL,184)
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_enaAnd_q = redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_sticky_ena_q & VCC_q;

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt(COUNTER,176)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i <= 3'd0;
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i == 3'd3)
            begin
                redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_eq <= 1'b0;
            end
            if (redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_eq == 1'b1)
            begin
                redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i <= $unsigned(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i <= $unsigned(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_q = redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_i[2:0];

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_wraddr(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_wraddr_q <= $unsigned(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_q);
        end
    end

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem(DUALMEM,175)
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_ia = $unsigned(redist8_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_21_outputreg0_q);
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_aa = redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_wraddr_q;
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_ab = redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_rdcnt_q;
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_reset0 = ~ (resetn);
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
    ) redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_dmem (
        .clocken1(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_aa),
        .data_a(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_ab),
        .q_b(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_iq),
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
    assign redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_q = redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_iq[63:0];

    // redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_outputreg0(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_outputreg0_q <= '0;
        end
        else
        begin
            redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_outputreg0_q <= $unsigned(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_mem_q);
        end
    end

    // i_llvm_fpga_mem_lm3618_xmlchecklanguageid39(BLACKBOX,42)@31
    // in in_i_stall@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_address@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_read@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_write@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@38
    // out out_o_stall@37
    // out out_o_valid@38
    xmlCheckLanguageID_i_llvm_fpga_mem_lm3618_xmlchecklanguageid0 thei_llvm_fpga_mem_lm3618_xmlchecklanguageid39 (
        .in_flush(in_flush),
        .in_i_address(redist9_i_arrayidx2_xmlchecklanguageid0_trunc_sel_x_b_28_outputreg0_q),
        .in_i_predicate(i_unnamed_xmlchecklanguageid38_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_lm3618_xmlCheckLanguageID_avm_readdata(in_lm3618_xmlCheckLanguageID_avm_readdata),
        .in_lm3618_xmlCheckLanguageID_avm_readdatavalid(in_lm3618_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm3618_xmlCheckLanguageID_avm_waitrequest(in_lm3618_xmlCheckLanguageID_avm_waitrequest),
        .in_lm3618_xmlCheckLanguageID_avm_writeack(in_lm3618_xmlCheckLanguageID_avm_writeack),
        .out_lm3618_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_address),
        .out_lm3618_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_burstcount),
        .out_lm3618_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_byteenable),
        .out_lm3618_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_enable),
        .out_lm3618_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_read),
        .out_lm3618_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_write),
        .out_lm3618_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,96)
    assign out_lm3618_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_address;
    assign out_lm3618_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_enable;
    assign out_lm3618_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_read;
    assign out_lm3618_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_write;
    assign out_lm3618_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_writedata;
    assign out_lm3618_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_byteenable;
    assign out_lm3618_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_lm3618_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg10(REG,115)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_unnamed_xmlchecklanguageid9(LOGICAL,63)@3
    assign i_unnamed_xmlchecklanguageid9_q = i_cmp_xmlchecklanguageid3_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid5_xmlchecklanguageid51(BLACKBOX,34)@3
    // out out_intel_reserved_ffwd_4_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000001Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid5_xmlchecklanguageid51 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_unnamed_xmlchecklanguageid9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid5_xmlchecklanguageid51_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,97)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid5_xmlchecklanguageid51_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg11(REG,116)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together76_aunroll_x_in_i_valid_7_q);
        end
    end

    // c_i8_2673(CONSTANT,15)
    assign c_i8_2673_q = $unsigned(8'b00011010);

    // c_i8_6572(CONSTANT,17)
    assign c_i8_6572_q = $unsigned(8'b10111111);

    // c_i8_3371(CONSTANT,16)
    assign c_i8_3371_q = $unsigned(8'b11011111);

    // i_unnamed_xmlchecklanguageid44(LOGICAL,56)@10
    assign i_unnamed_xmlchecklanguageid44_q = i_llvm_fpga_mem_lm14_xmlchecklanguageid5_out_o_readdata & c_i8_3371_q;

    // i_unnamed_xmlchecklanguageid44_vt_select_4_merged_bit_select(BITSELECT,118)@10
    assign i_unnamed_xmlchecklanguageid44_vt_select_4_merged_bit_select_b = i_unnamed_xmlchecklanguageid44_q[4:0];
    assign i_unnamed_xmlchecklanguageid44_vt_select_4_merged_bit_select_c = i_unnamed_xmlchecklanguageid44_q[7:6];

    // i_unnamed_xmlchecklanguageid44_vt_join(BITJOIN,58)@10
    assign i_unnamed_xmlchecklanguageid44_vt_join_q = {i_unnamed_xmlchecklanguageid44_vt_select_4_merged_bit_select_c, GND_q, i_unnamed_xmlchecklanguageid44_vt_select_4_merged_bit_select_b};

    // i_unnamed_xmlchecklanguageid45(ADD,61)@10
    assign i_unnamed_xmlchecklanguageid45_a = {1'b0, i_unnamed_xmlchecklanguageid44_vt_join_q};
    assign i_unnamed_xmlchecklanguageid45_b = {1'b0, c_i8_6572_q};
    assign i_unnamed_xmlchecklanguageid45_o = $unsigned(i_unnamed_xmlchecklanguageid45_a) + $unsigned(i_unnamed_xmlchecklanguageid45_b);
    assign i_unnamed_xmlchecklanguageid45_q = i_unnamed_xmlchecklanguageid45_o[8:0];

    // bgTrunc_i_unnamed_xmlchecklanguageid45_sel_x(BITSELECT,76)@10
    assign bgTrunc_i_unnamed_xmlchecklanguageid45_sel_x_b = i_unnamed_xmlchecklanguageid45_q[7:0];

    // i_unnamed_xmlchecklanguageid46(COMPARE,62)@10
    assign i_unnamed_xmlchecklanguageid46_a = {2'b00, bgTrunc_i_unnamed_xmlchecklanguageid45_sel_x_b};
    assign i_unnamed_xmlchecklanguageid46_b = {2'b00, c_i8_2673_q};
    assign i_unnamed_xmlchecklanguageid46_o = $unsigned(i_unnamed_xmlchecklanguageid46_a) - $unsigned(i_unnamed_xmlchecklanguageid46_b);
    assign i_unnamed_xmlchecklanguageid46_c[0] = i_unnamed_xmlchecklanguageid46_o[9];

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid6_xmlchecklanguageid52(BLACKBOX,35)@10
    // out out_intel_reserved_ffwd_5_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000002Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid6_xmlchecklanguageid52 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_unnamed_xmlchecklanguageid46_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid6_xmlchecklanguageid52_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,98)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid6_xmlchecklanguageid52_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg0(REG,105)@30 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together76_aunroll_x_in_i_valid_28_q);
        end
    end

    // redist0_valid_fanout_reg0_q_7(DELAY,119)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_valid_fanout_reg0_q_7 ( .xin(valid_fanout_reg0_q), .xout(redist0_valid_fanout_reg0_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cmp27_xmlchecklanguageid40(LOGICAL,28)@38
    assign i_cmp27_xmlchecklanguageid40_q = $unsigned(i_llvm_fpga_mem_lm3618_xmlchecklanguageid39_out_o_readdata == c_i8_4567_recast_x_q ? 1'b1 : 1'b0);

    // redist18_i_cmp23_xmlchecklanguageid35_q_28(DELAY,137)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_i_cmp23_xmlchecklanguageid35_q_28 ( .xin(redist17_i_cmp23_xmlchecklanguageid35_q_21_q), .xout(redist18_i_cmp23_xmlchecklanguageid35_q_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid42(LOGICAL,54)@38
    assign i_unnamed_xmlchecklanguageid42_q = redist18_i_cmp23_xmlchecklanguageid35_q_28_q & i_cmp27_xmlchecklanguageid40_q;

    // redist10_i_unnamed_xmlchecklanguageid34_q_7(DELAY,129)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_unnamed_xmlchecklanguageid34_q_7 ( .xin(i_unnamed_xmlchecklanguageid34_q), .xout(redist10_i_unnamed_xmlchecklanguageid34_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid43(LOGICAL,55)@38
    assign i_unnamed_xmlchecklanguageid43_q = redist10_i_unnamed_xmlchecklanguageid34_q_7_q | i_unnamed_xmlchecklanguageid42_q;

    // sync_out_aunroll_x(GPOUT,103)@38
    assign out_c0_exi1_0_tpl = GND_q;
    assign out_c0_exi1_1_tpl = i_unnamed_xmlchecklanguageid43_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_7_q;
    assign out_unnamed_xmlCheckLanguageID7 = GND_q;

endmodule
