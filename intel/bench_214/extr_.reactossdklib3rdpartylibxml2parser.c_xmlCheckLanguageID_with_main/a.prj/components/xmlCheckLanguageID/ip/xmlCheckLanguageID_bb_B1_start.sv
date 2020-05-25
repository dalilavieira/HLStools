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

// SystemVerilog created from xmlCheckLanguageID_bb_B1_start
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_iord_bl_call_xmlCheckLanguageID_i_fifodata,
    input wire [0:0] in_iord_bl_call_xmlCheckLanguageID_i_fifovalid,
    input wire [63:0] in_lm14_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm14_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm14_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm14_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm1516_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm1516_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm1516_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm1516_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm2417_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm2417_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm2417_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm2417_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm3618_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm3618_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm3618_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm3618_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm415_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm415_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm415_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm415_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [7:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_iord_bl_call_xmlCheckLanguageID_o_fifoready,
    output wire [63:0] out_lm14_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm14_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm14_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm14_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm1516_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm1516_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm1516_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm1516_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm2417_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm2417_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm2417_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm2417_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm3618_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm3618_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm3618_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm3618_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm415_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm415_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm415_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm415_xmlCheckLanguageID_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_c0_exe1;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [7:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_iord_bl_call_xmlCheckLanguageID_o_fifoready;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_writedata;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_writedata;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_writedata;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_writedata;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_writedata;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_xmlCheckLanguageID_B1_start_stall_region_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B1_start_branch_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B1_start_branch_out_valid_out_0;
    wire [0:0] xmlCheckLanguageID_B1_start_branch_out_valid_out_1;
    wire [0:0] xmlCheckLanguageID_B1_start_merge_out_stall_out_0;
    wire [0:0] xmlCheckLanguageID_B1_start_merge_out_stall_out_1;
    wire [0:0] xmlCheckLanguageID_B1_start_merge_out_valid_out;


    // xmlCheckLanguageID_B1_start_merge(BLACKBOX,80)
    xmlCheckLanguageID_B1_start_merge thexmlCheckLanguageID_B1_start_merge (
        .in_stall_in(bb_xmlCheckLanguageID_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(xmlCheckLanguageID_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(xmlCheckLanguageID_B1_start_merge_out_stall_out_1),
        .out_valid_out(xmlCheckLanguageID_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // xmlCheckLanguageID_B1_start_branch(BLACKBOX,79)
    xmlCheckLanguageID_B1_start_branch thexmlCheckLanguageID_B1_start_branch (
        .in_c0_exe1(bb_xmlCheckLanguageID_B1_start_stall_region_out_c0_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_xmlCheckLanguageID_B1_start_stall_region_out_valid_out),
        .out_stall_out(xmlCheckLanguageID_B1_start_branch_out_stall_out),
        .out_valid_out_0(xmlCheckLanguageID_B1_start_branch_out_valid_out_0),
        .out_valid_out_1(xmlCheckLanguageID_B1_start_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_xmlCheckLanguageID_B1_start_stall_region(BLACKBOX,2)
    xmlCheckLanguageID_bb_B1_start_stall_region thebb_xmlCheckLanguageID_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_xmlCheckLanguageID_i_fifodata(in_iord_bl_call_xmlCheckLanguageID_i_fifodata),
        .in_iord_bl_call_xmlCheckLanguageID_i_fifovalid(in_iord_bl_call_xmlCheckLanguageID_i_fifovalid),
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
        .in_stall_in(xmlCheckLanguageID_B1_start_branch_out_stall_out),
        .in_valid_in(xmlCheckLanguageID_B1_start_merge_out_valid_out),
        .out_c0_exe1(bb_xmlCheckLanguageID_B1_start_stall_region_out_c0_exe1),
        .out_feedback_stall_out_1(bb_xmlCheckLanguageID_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_iord_bl_call_xmlCheckLanguageID_o_fifoready(bb_xmlCheckLanguageID_B1_start_stall_region_out_iord_bl_call_xmlCheckLanguageID_o_fifoready),
        .out_lm14_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_address),
        .out_lm14_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_burstcount),
        .out_lm14_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_byteenable),
        .out_lm14_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_enable),
        .out_lm14_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_read),
        .out_lm14_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_write),
        .out_lm14_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_writedata),
        .out_lm1516_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_address),
        .out_lm1516_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_burstcount),
        .out_lm1516_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_byteenable),
        .out_lm1516_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_enable),
        .out_lm1516_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_read),
        .out_lm1516_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_write),
        .out_lm1516_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_writedata),
        .out_lm2417_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_address),
        .out_lm2417_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_burstcount),
        .out_lm2417_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_byteenable),
        .out_lm2417_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_enable),
        .out_lm2417_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_read),
        .out_lm2417_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_write),
        .out_lm2417_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_writedata),
        .out_lm3618_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_address),
        .out_lm3618_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_burstcount),
        .out_lm3618_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_byteenable),
        .out_lm3618_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_enable),
        .out_lm3618_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_read),
        .out_lm3618_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_write),
        .out_lm3618_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_writedata),
        .out_lm415_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_address),
        .out_lm415_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_burstcount),
        .out_lm415_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_byteenable),
        .out_lm415_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_enable),
        .out_lm415_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_read),
        .out_lm415_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_write),
        .out_lm415_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_writedata),
        .out_stall_out(bb_xmlCheckLanguageID_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_xmlCheckLanguageID_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_xmlCheckLanguageID_B1_start_stall_region_out_feedback_stall_out_1;

    // out_intel_reserved_ffwd_0_0(GPOUT,33)
    assign out_intel_reserved_ffwd_0_0 = bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,34)
    assign out_intel_reserved_ffwd_1_0 = bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,35)
    assign out_intel_reserved_ffwd_2_0 = bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,36)
    assign out_intel_reserved_ffwd_3_0 = bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,37)
    assign out_intel_reserved_ffwd_4_0 = bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,38)
    assign out_intel_reserved_ffwd_5_0 = bb_xmlCheckLanguageID_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_iord_bl_call_xmlCheckLanguageID_o_fifoready(GPOUT,39)
    assign out_iord_bl_call_xmlCheckLanguageID_o_fifoready = bb_xmlCheckLanguageID_B1_start_stall_region_out_iord_bl_call_xmlCheckLanguageID_o_fifoready;

    // out_lm14_xmlCheckLanguageID_avm_address(GPOUT,40)
    assign out_lm14_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_address;

    // out_lm14_xmlCheckLanguageID_avm_burstcount(GPOUT,41)
    assign out_lm14_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_burstcount;

    // out_lm14_xmlCheckLanguageID_avm_byteenable(GPOUT,42)
    assign out_lm14_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_byteenable;

    // out_lm14_xmlCheckLanguageID_avm_enable(GPOUT,43)
    assign out_lm14_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_enable;

    // out_lm14_xmlCheckLanguageID_avm_read(GPOUT,44)
    assign out_lm14_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_read;

    // out_lm14_xmlCheckLanguageID_avm_write(GPOUT,45)
    assign out_lm14_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_write;

    // out_lm14_xmlCheckLanguageID_avm_writedata(GPOUT,46)
    assign out_lm14_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm14_xmlCheckLanguageID_avm_writedata;

    // out_lm1516_xmlCheckLanguageID_avm_address(GPOUT,47)
    assign out_lm1516_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_address;

    // out_lm1516_xmlCheckLanguageID_avm_burstcount(GPOUT,48)
    assign out_lm1516_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_burstcount;

    // out_lm1516_xmlCheckLanguageID_avm_byteenable(GPOUT,49)
    assign out_lm1516_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_byteenable;

    // out_lm1516_xmlCheckLanguageID_avm_enable(GPOUT,50)
    assign out_lm1516_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_enable;

    // out_lm1516_xmlCheckLanguageID_avm_read(GPOUT,51)
    assign out_lm1516_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_read;

    // out_lm1516_xmlCheckLanguageID_avm_write(GPOUT,52)
    assign out_lm1516_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_write;

    // out_lm1516_xmlCheckLanguageID_avm_writedata(GPOUT,53)
    assign out_lm1516_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm1516_xmlCheckLanguageID_avm_writedata;

    // out_lm2417_xmlCheckLanguageID_avm_address(GPOUT,54)
    assign out_lm2417_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_address;

    // out_lm2417_xmlCheckLanguageID_avm_burstcount(GPOUT,55)
    assign out_lm2417_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_burstcount;

    // out_lm2417_xmlCheckLanguageID_avm_byteenable(GPOUT,56)
    assign out_lm2417_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_byteenable;

    // out_lm2417_xmlCheckLanguageID_avm_enable(GPOUT,57)
    assign out_lm2417_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_enable;

    // out_lm2417_xmlCheckLanguageID_avm_read(GPOUT,58)
    assign out_lm2417_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_read;

    // out_lm2417_xmlCheckLanguageID_avm_write(GPOUT,59)
    assign out_lm2417_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_write;

    // out_lm2417_xmlCheckLanguageID_avm_writedata(GPOUT,60)
    assign out_lm2417_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm2417_xmlCheckLanguageID_avm_writedata;

    // out_lm3618_xmlCheckLanguageID_avm_address(GPOUT,61)
    assign out_lm3618_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_address;

    // out_lm3618_xmlCheckLanguageID_avm_burstcount(GPOUT,62)
    assign out_lm3618_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_burstcount;

    // out_lm3618_xmlCheckLanguageID_avm_byteenable(GPOUT,63)
    assign out_lm3618_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_byteenable;

    // out_lm3618_xmlCheckLanguageID_avm_enable(GPOUT,64)
    assign out_lm3618_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_enable;

    // out_lm3618_xmlCheckLanguageID_avm_read(GPOUT,65)
    assign out_lm3618_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_read;

    // out_lm3618_xmlCheckLanguageID_avm_write(GPOUT,66)
    assign out_lm3618_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_write;

    // out_lm3618_xmlCheckLanguageID_avm_writedata(GPOUT,67)
    assign out_lm3618_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm3618_xmlCheckLanguageID_avm_writedata;

    // out_lm415_xmlCheckLanguageID_avm_address(GPOUT,68)
    assign out_lm415_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_address;

    // out_lm415_xmlCheckLanguageID_avm_burstcount(GPOUT,69)
    assign out_lm415_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_burstcount;

    // out_lm415_xmlCheckLanguageID_avm_byteenable(GPOUT,70)
    assign out_lm415_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_byteenable;

    // out_lm415_xmlCheckLanguageID_avm_enable(GPOUT,71)
    assign out_lm415_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_enable;

    // out_lm415_xmlCheckLanguageID_avm_read(GPOUT,72)
    assign out_lm415_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_read;

    // out_lm415_xmlCheckLanguageID_avm_write(GPOUT,73)
    assign out_lm415_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_write;

    // out_lm415_xmlCheckLanguageID_avm_writedata(GPOUT,74)
    assign out_lm415_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B1_start_stall_region_out_lm415_xmlCheckLanguageID_avm_writedata;

    // out_stall_out_0(GPOUT,75)
    assign out_stall_out_0 = xmlCheckLanguageID_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,76)
    assign out_stall_out_1 = xmlCheckLanguageID_B1_start_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = xmlCheckLanguageID_B1_start_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,78)
    assign out_valid_out_1 = xmlCheckLanguageID_B1_start_branch_out_valid_out_1;

endmodule
