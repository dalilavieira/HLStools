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

// SystemVerilog created from xmlCheckLanguageID_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B1_start_stall_region (
    input wire [63:0] in_iord_bl_call_xmlCheckLanguageID_i_fifodata,
    input wire [0:0] in_iord_bl_call_xmlCheckLanguageID_i_fifovalid,
    output wire [0:0] out_iord_bl_call_xmlCheckLanguageID_o_fifoready,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exe1,
    output wire [0:0] out_valid_out,
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
    output wire [7:0] out_intel_reserved_ffwd_2_0,
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
    output wire [63:0] out_intel_reserved_ffwd_3_0,
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
    output wire [0:0] out_intel_reserved_ffwd_4_0,
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
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B1_start_merge_reg_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_iord_bl_call_xmlCheckLanguageID_o_fifoready;
    wire [0:0] i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [7:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_b;
    wire [63:0] bubble_join_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_xmlCheckLanguageID_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_xmlCheckLanguageID_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_xmlCheckLanguageID_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_V0;


    // SE_stall_entry(STALLENABLE,61)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = xmlCheckLanguageID_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // xmlCheckLanguageID_B1_start_merge_reg(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    xmlCheckLanguageID_B1_start_merge_reg thexmlCheckLanguageID_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_xmlCheckLanguageID_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(xmlCheckLanguageID_B1_start_merge_reg_out_stall_out),
        .out_valid_out(xmlCheckLanguageID_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_xmlCheckLanguageID_B1_start_merge_reg(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_xmlCheckLanguageID_B1_start_merge_reg_V0 = SE_out_xmlCheckLanguageID_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_xmlCheckLanguageID_B1_start_merge_reg_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_stall_out | ~ (SE_out_xmlCheckLanguageID_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_xmlCheckLanguageID_B1_start_merge_reg_wireValid = xmlCheckLanguageID_B1_start_merge_reg_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    xmlCheckLanguageID_i_llvm_fpga_pop_throtA000000Z_xmlchecklanguageid0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_backStall),
        .in_valid_in(SE_out_xmlCheckLanguageID_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0(STALLENABLE,60)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_backStall = i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_valid_out;

    // bubble_join_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x(BITJOIN,53)
    assign bubble_join_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_q = i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_data_0_tpl;

    // bubble_select_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x(BITSELECT,54)
    assign bubble_select_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_q[63:0]);

    // SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x(BLACKBOX,46)@2
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_lm14_xmlCheckLanguageID_avm_address@20000000
    // out out_lm14_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm14_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm14_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm14_xmlCheckLanguageID_avm_read@20000000
    // out out_lm14_xmlCheckLanguageID_avm_write@20000000
    // out out_lm14_xmlCheckLanguageID_avm_writedata@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_address@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_read@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_write@20000000
    // out out_lm1516_xmlCheckLanguageID_avm_writedata@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_address@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_read@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_write@20000000
    // out out_lm2417_xmlCheckLanguageID_avm_writedata@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_address@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_read@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_write@20000000
    // out out_lm3618_xmlCheckLanguageID_avm_writedata@20000000
    // out out_lm415_xmlCheckLanguageID_avm_address@20000000
    // out out_lm415_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm415_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm415_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm415_xmlCheckLanguageID_avm_read@20000000
    // out out_lm415_xmlCheckLanguageID_avm_write@20000000
    // out out_lm415_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_c0_exit_0_tpl@41
    // out out_c0_exit_1_tpl@41
    xmlCheckLanguageID_i_sfc_s_c0_in_wt_entrA000000Z_xmlchecklanguageid3 thei_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_V0),
        .in_lm14_xmlCheckLanguageID_avm_readdata(in_lm14_xmlCheckLanguageID_avm_readdata),
        .in_lm14_xmlCheckLanguageID_avm_readdatavalid(in_lm14_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm14_xmlCheckLanguageID_avm_waitrequest(in_lm14_xmlCheckLanguageID_avm_waitrequest),
        .in_lm14_xmlCheckLanguageID_avm_writeack(in_lm14_xmlCheckLanguageID_avm_writeack),
        .in_lm1516_xmlCheckLanguageID_avm_readdata(in_lm1516_xmlCheckLanguageID_avm_readdata),
        .in_lm1516_xmlCheckLanguageID_avm_readdatavalid(in_lm1516_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm1516_xmlCheckLanguageID_avm_waitrequest(in_lm1516_xmlCheckLanguageID_avm_waitrequest),
        .in_lm1516_xmlCheckLanguageID_avm_writeack(in_lm1516_xmlCheckLanguageID_avm_writeack),
        .in_lm2417_xmlCheckLanguageID_avm_readdata(in_lm2417_xmlCheckLanguageID_avm_readdata),
        .in_lm2417_xmlCheckLanguageID_avm_readdatavalid(in_lm2417_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm2417_xmlCheckLanguageID_avm_waitrequest(in_lm2417_xmlCheckLanguageID_avm_waitrequest),
        .in_lm2417_xmlCheckLanguageID_avm_writeack(in_lm2417_xmlCheckLanguageID_avm_writeack),
        .in_lm3618_xmlCheckLanguageID_avm_readdata(in_lm3618_xmlCheckLanguageID_avm_readdata),
        .in_lm3618_xmlCheckLanguageID_avm_readdatavalid(in_lm3618_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm3618_xmlCheckLanguageID_avm_waitrequest(in_lm3618_xmlCheckLanguageID_avm_waitrequest),
        .in_lm3618_xmlCheckLanguageID_avm_writeack(in_lm3618_xmlCheckLanguageID_avm_writeack),
        .in_lm415_xmlCheckLanguageID_avm_readdata(in_lm415_xmlCheckLanguageID_avm_readdata),
        .in_lm415_xmlCheckLanguageID_avm_readdatavalid(in_lm415_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm415_xmlCheckLanguageID_avm_waitrequest(in_lm415_xmlCheckLanguageID_avm_waitrequest),
        .in_lm415_xmlCheckLanguageID_avm_writeack(in_lm415_xmlCheckLanguageID_avm_writeack),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_b),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_lm14_xmlCheckLanguageID_avm_address(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_address),
        .out_lm14_xmlCheckLanguageID_avm_burstcount(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_burstcount),
        .out_lm14_xmlCheckLanguageID_avm_byteenable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_byteenable),
        .out_lm14_xmlCheckLanguageID_avm_enable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_enable),
        .out_lm14_xmlCheckLanguageID_avm_read(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_read),
        .out_lm14_xmlCheckLanguageID_avm_write(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_write),
        .out_lm14_xmlCheckLanguageID_avm_writedata(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_writedata),
        .out_lm1516_xmlCheckLanguageID_avm_address(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_address),
        .out_lm1516_xmlCheckLanguageID_avm_burstcount(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_burstcount),
        .out_lm1516_xmlCheckLanguageID_avm_byteenable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_byteenable),
        .out_lm1516_xmlCheckLanguageID_avm_enable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_enable),
        .out_lm1516_xmlCheckLanguageID_avm_read(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_read),
        .out_lm1516_xmlCheckLanguageID_avm_write(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_write),
        .out_lm1516_xmlCheckLanguageID_avm_writedata(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_writedata),
        .out_lm2417_xmlCheckLanguageID_avm_address(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_address),
        .out_lm2417_xmlCheckLanguageID_avm_burstcount(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_burstcount),
        .out_lm2417_xmlCheckLanguageID_avm_byteenable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_byteenable),
        .out_lm2417_xmlCheckLanguageID_avm_enable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_enable),
        .out_lm2417_xmlCheckLanguageID_avm_read(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_read),
        .out_lm2417_xmlCheckLanguageID_avm_write(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_write),
        .out_lm2417_xmlCheckLanguageID_avm_writedata(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_writedata),
        .out_lm3618_xmlCheckLanguageID_avm_address(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_address),
        .out_lm3618_xmlCheckLanguageID_avm_burstcount(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_burstcount),
        .out_lm3618_xmlCheckLanguageID_avm_byteenable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_byteenable),
        .out_lm3618_xmlCheckLanguageID_avm_enable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_enable),
        .out_lm3618_xmlCheckLanguageID_avm_read(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_read),
        .out_lm3618_xmlCheckLanguageID_avm_write(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_write),
        .out_lm3618_xmlCheckLanguageID_avm_writedata(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_writedata),
        .out_lm415_xmlCheckLanguageID_avm_address(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_address),
        .out_lm415_xmlCheckLanguageID_avm_burstcount(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_burstcount),
        .out_lm415_xmlCheckLanguageID_avm_byteenable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_byteenable),
        .out_lm415_xmlCheckLanguageID_avm_enable(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_enable),
        .out_lm415_xmlCheckLanguageID_avm_read(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_read),
        .out_lm415_xmlCheckLanguageID_avm_write(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_write),
        .out_lm415_xmlCheckLanguageID_avm_writedata(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_c0_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x(STALLENABLE,66)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_V0 = SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_wireValid = i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0(BITJOIN,48)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0(BITSELECT,49)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_q[0:0]);

    // i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x(BLACKBOX,45)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_xmlCheckLanguageID_o_fifoready@20000000
    // out out_o_stall@20000000
    xmlCheckLanguageID_i_iord_bl_call_xmlcheA000000Z_xmlchecklanguageid0 thei_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_b),
        .in_i_stall(SE_out_i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_V0),
        .in_iord_bl_call_xmlCheckLanguageID_i_fifodata(in_iord_bl_call_xmlCheckLanguageID_i_fifodata),
        .in_iord_bl_call_xmlCheckLanguageID_i_fifovalid(in_iord_bl_call_xmlCheckLanguageID_i_fifovalid),
        .out_iord_bl_call_xmlCheckLanguageID_o_fifoready(i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_iord_bl_call_xmlCheckLanguageID_o_fifoready),
        .out_o_stall(i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_iord_bl_call_xmlCheckLanguageID_o_fifoready = i_iord_bl_call_xmlchecklanguageid_unnamed_xmlchecklanguageid0_xmlchecklanguageid1_aunroll_x_out_iord_bl_call_xmlCheckLanguageID_o_fifoready;

    // feedback_stall_out_1_sync(GPOUT,10)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_xmlchecklanguageid0_out_feedback_stall_out_1;

    // regfree_osync(GPOUT,22)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,26)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_lm14_xmlCheckLanguageID_avm_address = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_address;
    assign out_lm14_xmlCheckLanguageID_avm_enable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_enable;
    assign out_lm14_xmlCheckLanguageID_avm_read = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_read;
    assign out_lm14_xmlCheckLanguageID_avm_write = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_write;
    assign out_lm14_xmlCheckLanguageID_avm_writedata = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_writedata;
    assign out_lm14_xmlCheckLanguageID_avm_byteenable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_byteenable;
    assign out_lm14_xmlCheckLanguageID_avm_burstcount = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm14_xmlCheckLanguageID_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_1_0;

    // bubble_join_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x(BITJOIN,56)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_q = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_c0_exit_1_tpl;

    // bubble_select_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x(BITSELECT,57)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,32)@41
    assign out_c0_exe1 = bubble_select_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,34)
    assign out_lm415_xmlCheckLanguageID_avm_address = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_address;
    assign out_lm415_xmlCheckLanguageID_avm_enable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_enable;
    assign out_lm415_xmlCheckLanguageID_avm_read = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_read;
    assign out_lm415_xmlCheckLanguageID_avm_write = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_write;
    assign out_lm415_xmlCheckLanguageID_avm_writedata = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_writedata;
    assign out_lm415_xmlCheckLanguageID_avm_byteenable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_byteenable;
    assign out_lm415_xmlCheckLanguageID_avm_burstcount = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm415_xmlCheckLanguageID_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,37)
    assign out_lm1516_xmlCheckLanguageID_avm_address = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_address;
    assign out_lm1516_xmlCheckLanguageID_avm_enable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_enable;
    assign out_lm1516_xmlCheckLanguageID_avm_read = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_read;
    assign out_lm1516_xmlCheckLanguageID_avm_write = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_write;
    assign out_lm1516_xmlCheckLanguageID_avm_writedata = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_writedata;
    assign out_lm1516_xmlCheckLanguageID_avm_byteenable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_byteenable;
    assign out_lm1516_xmlCheckLanguageID_avm_burstcount = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm1516_xmlCheckLanguageID_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,40)
    assign out_lm2417_xmlCheckLanguageID_avm_address = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_address;
    assign out_lm2417_xmlCheckLanguageID_avm_enable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_enable;
    assign out_lm2417_xmlCheckLanguageID_avm_read = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_read;
    assign out_lm2417_xmlCheckLanguageID_avm_write = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_write;
    assign out_lm2417_xmlCheckLanguageID_avm_writedata = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_writedata;
    assign out_lm2417_xmlCheckLanguageID_avm_byteenable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_byteenable;
    assign out_lm2417_xmlCheckLanguageID_avm_burstcount = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm2417_xmlCheckLanguageID_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_4_ext_sig_sync_out_x(GPOUT,43)
    assign out_lm3618_xmlCheckLanguageID_avm_address = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_address;
    assign out_lm3618_xmlCheckLanguageID_avm_enable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_enable;
    assign out_lm3618_xmlCheckLanguageID_avm_read = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_read;
    assign out_lm3618_xmlCheckLanguageID_avm_write = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_write;
    assign out_lm3618_xmlCheckLanguageID_avm_writedata = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_writedata;
    assign out_lm3618_xmlCheckLanguageID_avm_byteenable = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_byteenable;
    assign out_lm3618_xmlCheckLanguageID_avm_burstcount = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_lm3618_xmlCheckLanguageID_avm_burstcount;

    // dupName_4_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c0_in_wt_entry_xmlchecklanguageids_c0_enter1_xmlchecklanguageid3_aunroll_x_out_intel_reserved_ffwd_5_0;

endmodule
