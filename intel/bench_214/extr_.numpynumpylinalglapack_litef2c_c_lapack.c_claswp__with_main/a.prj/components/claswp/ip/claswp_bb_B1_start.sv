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

// SystemVerilog created from claswp_bb_B1_start
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [447:0] in_iord_bl_call_claswp_i_fifodata,
    input wire [0:0] in_iord_bl_call_claswp_i_fifovalid,
    input wire [63:0] in_lm1021_claswp_avm_readdata,
    input wire [0:0] in_lm1021_claswp_avm_readdatavalid,
    input wire [0:0] in_lm1021_claswp_avm_waitrequest,
    input wire [0:0] in_lm1021_claswp_avm_writeack,
    input wire [63:0] in_lm1052_claswp_avm_readdata,
    input wire [0:0] in_lm1052_claswp_avm_readdatavalid,
    input wire [0:0] in_lm1052_claswp_avm_waitrequest,
    input wire [0:0] in_lm1052_claswp_avm_writeack,
    input wire [63:0] in_lm1165_claswp_avm_readdata,
    input wire [0:0] in_lm1165_claswp_avm_readdatavalid,
    input wire [0:0] in_lm1165_claswp_avm_waitrequest,
    input wire [0:0] in_lm1165_claswp_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_storemerge1_lm3_claswp_avm_readdata,
    input wire [0:0] in_storemerge1_lm3_claswp_avm_readdatavalid,
    input wire [0:0] in_storemerge1_lm3_claswp_avm_waitrequest,
    input wire [0:0] in_storemerge1_lm3_claswp_avm_writeack,
    input wire [63:0] in_storemerge72_lm4_claswp_avm_readdata,
    input wire [0:0] in_storemerge72_lm4_claswp_avm_readdatavalid,
    input wire [0:0] in_storemerge72_lm4_claswp_avm_waitrequest,
    input wire [0:0] in_storemerge72_lm4_claswp_avm_writeack,
    input wire [63:0] in_unnamed_claswp3_claswp_avm_readdata,
    input wire [0:0] in_unnamed_claswp3_claswp_avm_readdatavalid,
    input wire [0:0] in_unnamed_claswp3_claswp_avm_waitrequest,
    input wire [0:0] in_unnamed_claswp3_claswp_avm_writeack,
    input wire [63:0] in_unnamed_claswp4_claswp_avm_readdata,
    input wire [0:0] in_unnamed_claswp4_claswp_avm_readdatavalid,
    input wire [0:0] in_unnamed_claswp4_claswp_avm_waitrequest,
    input wire [0:0] in_unnamed_claswp4_claswp_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_iord_bl_call_claswp_o_fifoready,
    output wire [63:0] out_lm1021_claswp_avm_address,
    output wire [0:0] out_lm1021_claswp_avm_burstcount,
    output wire [7:0] out_lm1021_claswp_avm_byteenable,
    output wire [0:0] out_lm1021_claswp_avm_enable,
    output wire [0:0] out_lm1021_claswp_avm_read,
    output wire [0:0] out_lm1021_claswp_avm_write,
    output wire [63:0] out_lm1021_claswp_avm_writedata,
    output wire [63:0] out_lm1052_claswp_avm_address,
    output wire [0:0] out_lm1052_claswp_avm_burstcount,
    output wire [7:0] out_lm1052_claswp_avm_byteenable,
    output wire [0:0] out_lm1052_claswp_avm_enable,
    output wire [0:0] out_lm1052_claswp_avm_read,
    output wire [0:0] out_lm1052_claswp_avm_write,
    output wire [63:0] out_lm1052_claswp_avm_writedata,
    output wire [63:0] out_lm1165_claswp_avm_address,
    output wire [0:0] out_lm1165_claswp_avm_burstcount,
    output wire [7:0] out_lm1165_claswp_avm_byteenable,
    output wire [0:0] out_lm1165_claswp_avm_enable,
    output wire [0:0] out_lm1165_claswp_avm_read,
    output wire [0:0] out_lm1165_claswp_avm_write,
    output wire [63:0] out_lm1165_claswp_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_storemerge1_lm3_claswp_avm_address,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_burstcount,
    output wire [7:0] out_storemerge1_lm3_claswp_avm_byteenable,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_enable,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_read,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_write,
    output wire [63:0] out_storemerge1_lm3_claswp_avm_writedata,
    output wire [63:0] out_storemerge72_lm4_claswp_avm_address,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_burstcount,
    output wire [7:0] out_storemerge72_lm4_claswp_avm_byteenable,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_enable,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_read,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_write,
    output wire [63:0] out_storemerge72_lm4_claswp_avm_writedata,
    output wire [63:0] out_unnamed_claswp3_claswp_avm_address,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_burstcount,
    output wire [7:0] out_unnamed_claswp3_claswp_avm_byteenable,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_enable,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_read,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_write,
    output wire [63:0] out_unnamed_claswp3_claswp_avm_writedata,
    output wire [63:0] out_unnamed_claswp4_claswp_avm_address,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_burstcount,
    output wire [7:0] out_unnamed_claswp4_claswp_avm_byteenable,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_enable,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_read,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_write,
    output wire [63:0] out_unnamed_claswp4_claswp_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_claswp_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_12_0;
    wire [63:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_claswp_B1_start_stall_region_out_iord_bl_call_claswp_o_fifoready;
    wire [63:0] bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_address;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_enable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_read;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_write;
    wire [63:0] bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_writedata;
    wire [63:0] bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_address;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_enable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_read;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_write;
    wire [63:0] bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_writedata;
    wire [63:0] bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_address;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_enable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_read;
    wire [0:0] bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_write;
    wire [63:0] bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_writedata;
    wire [0:0] bb_claswp_B1_start_stall_region_out_stall_out;
    wire [63:0] bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_address;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_enable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_read;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_write;
    wire [63:0] bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_writedata;
    wire [63:0] bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_address;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_enable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_read;
    wire [0:0] bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_write;
    wire [63:0] bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_writedata;
    wire [63:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_address;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_enable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_read;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_write;
    wire [63:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_writedata;
    wire [63:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_address;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_enable;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_read;
    wire [0:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_write;
    wire [63:0] bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_writedata;
    wire [0:0] bb_claswp_B1_start_stall_region_out_valid_out;
    wire [0:0] claswp_B1_start_branch_out_stall_out;
    wire [0:0] claswp_B1_start_branch_out_valid_out_0;
    wire [0:0] claswp_B1_start_merge_out_stall_out_0;
    wire [0:0] claswp_B1_start_merge_out_stall_out_1;
    wire [0:0] claswp_B1_start_merge_out_valid_out;


    // claswp_B1_start_merge(BLACKBOX,4)
    claswp_B1_start_merge theclaswp_B1_start_merge (
        .in_stall_in(bb_claswp_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(claswp_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(claswp_B1_start_merge_out_stall_out_1),
        .out_valid_out(claswp_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // claswp_B1_start_branch(BLACKBOX,3)
    claswp_B1_start_branch theclaswp_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_claswp_B1_start_stall_region_out_valid_out),
        .out_stall_out(claswp_B1_start_branch_out_stall_out),
        .out_valid_out_0(claswp_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_claswp_B1_start_stall_region(BLACKBOX,2)
    claswp_bb_B1_start_stall_region thebb_claswp_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_claswp_i_fifodata(in_iord_bl_call_claswp_i_fifodata),
        .in_iord_bl_call_claswp_i_fifovalid(in_iord_bl_call_claswp_i_fifovalid),
        .in_lm1021_claswp_avm_readdata(in_lm1021_claswp_avm_readdata),
        .in_lm1021_claswp_avm_readdatavalid(in_lm1021_claswp_avm_readdatavalid),
        .in_lm1021_claswp_avm_waitrequest(in_lm1021_claswp_avm_waitrequest),
        .in_lm1021_claswp_avm_writeack(in_lm1021_claswp_avm_writeack),
        .in_lm1052_claswp_avm_readdata(in_lm1052_claswp_avm_readdata),
        .in_lm1052_claswp_avm_readdatavalid(in_lm1052_claswp_avm_readdatavalid),
        .in_lm1052_claswp_avm_waitrequest(in_lm1052_claswp_avm_waitrequest),
        .in_lm1052_claswp_avm_writeack(in_lm1052_claswp_avm_writeack),
        .in_lm1165_claswp_avm_readdata(in_lm1165_claswp_avm_readdata),
        .in_lm1165_claswp_avm_readdatavalid(in_lm1165_claswp_avm_readdatavalid),
        .in_lm1165_claswp_avm_waitrequest(in_lm1165_claswp_avm_waitrequest),
        .in_lm1165_claswp_avm_writeack(in_lm1165_claswp_avm_writeack),
        .in_stall_in(claswp_B1_start_branch_out_stall_out),
        .in_storemerge1_lm3_claswp_avm_readdata(in_storemerge1_lm3_claswp_avm_readdata),
        .in_storemerge1_lm3_claswp_avm_readdatavalid(in_storemerge1_lm3_claswp_avm_readdatavalid),
        .in_storemerge1_lm3_claswp_avm_waitrequest(in_storemerge1_lm3_claswp_avm_waitrequest),
        .in_storemerge1_lm3_claswp_avm_writeack(in_storemerge1_lm3_claswp_avm_writeack),
        .in_storemerge72_lm4_claswp_avm_readdata(in_storemerge72_lm4_claswp_avm_readdata),
        .in_storemerge72_lm4_claswp_avm_readdatavalid(in_storemerge72_lm4_claswp_avm_readdatavalid),
        .in_storemerge72_lm4_claswp_avm_waitrequest(in_storemerge72_lm4_claswp_avm_waitrequest),
        .in_storemerge72_lm4_claswp_avm_writeack(in_storemerge72_lm4_claswp_avm_writeack),
        .in_unnamed_claswp3_claswp_avm_readdata(in_unnamed_claswp3_claswp_avm_readdata),
        .in_unnamed_claswp3_claswp_avm_readdatavalid(in_unnamed_claswp3_claswp_avm_readdatavalid),
        .in_unnamed_claswp3_claswp_avm_waitrequest(in_unnamed_claswp3_claswp_avm_waitrequest),
        .in_unnamed_claswp3_claswp_avm_writeack(in_unnamed_claswp3_claswp_avm_writeack),
        .in_unnamed_claswp4_claswp_avm_readdata(in_unnamed_claswp4_claswp_avm_readdata),
        .in_unnamed_claswp4_claswp_avm_readdatavalid(in_unnamed_claswp4_claswp_avm_readdatavalid),
        .in_unnamed_claswp4_claswp_avm_waitrequest(in_unnamed_claswp4_claswp_avm_waitrequest),
        .in_unnamed_claswp4_claswp_avm_writeack(in_unnamed_claswp4_claswp_avm_writeack),
        .in_valid_in(claswp_B1_start_merge_out_valid_out),
        .out_feedback_stall_out_1(bb_claswp_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_1_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_claswp_o_fifoready(bb_claswp_B1_start_stall_region_out_iord_bl_call_claswp_o_fifoready),
        .out_lm1021_claswp_avm_address(bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_address),
        .out_lm1021_claswp_avm_burstcount(bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_burstcount),
        .out_lm1021_claswp_avm_byteenable(bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_byteenable),
        .out_lm1021_claswp_avm_enable(bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_enable),
        .out_lm1021_claswp_avm_read(bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_read),
        .out_lm1021_claswp_avm_write(bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_write),
        .out_lm1021_claswp_avm_writedata(bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_writedata),
        .out_lm1052_claswp_avm_address(bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_address),
        .out_lm1052_claswp_avm_burstcount(bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_burstcount),
        .out_lm1052_claswp_avm_byteenable(bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_byteenable),
        .out_lm1052_claswp_avm_enable(bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_enable),
        .out_lm1052_claswp_avm_read(bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_read),
        .out_lm1052_claswp_avm_write(bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_write),
        .out_lm1052_claswp_avm_writedata(bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_writedata),
        .out_lm1165_claswp_avm_address(bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_address),
        .out_lm1165_claswp_avm_burstcount(bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_burstcount),
        .out_lm1165_claswp_avm_byteenable(bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_byteenable),
        .out_lm1165_claswp_avm_enable(bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_enable),
        .out_lm1165_claswp_avm_read(bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_read),
        .out_lm1165_claswp_avm_write(bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_write),
        .out_lm1165_claswp_avm_writedata(bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_writedata),
        .out_stall_out(bb_claswp_B1_start_stall_region_out_stall_out),
        .out_storemerge1_lm3_claswp_avm_address(bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_address),
        .out_storemerge1_lm3_claswp_avm_burstcount(bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_burstcount),
        .out_storemerge1_lm3_claswp_avm_byteenable(bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_byteenable),
        .out_storemerge1_lm3_claswp_avm_enable(bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_enable),
        .out_storemerge1_lm3_claswp_avm_read(bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_read),
        .out_storemerge1_lm3_claswp_avm_write(bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_write),
        .out_storemerge1_lm3_claswp_avm_writedata(bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_writedata),
        .out_storemerge72_lm4_claswp_avm_address(bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_address),
        .out_storemerge72_lm4_claswp_avm_burstcount(bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_burstcount),
        .out_storemerge72_lm4_claswp_avm_byteenable(bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_byteenable),
        .out_storemerge72_lm4_claswp_avm_enable(bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_enable),
        .out_storemerge72_lm4_claswp_avm_read(bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_read),
        .out_storemerge72_lm4_claswp_avm_write(bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_write),
        .out_storemerge72_lm4_claswp_avm_writedata(bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_writedata),
        .out_unnamed_claswp3_claswp_avm_address(bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_address),
        .out_unnamed_claswp3_claswp_avm_burstcount(bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_burstcount),
        .out_unnamed_claswp3_claswp_avm_byteenable(bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_byteenable),
        .out_unnamed_claswp3_claswp_avm_enable(bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_enable),
        .out_unnamed_claswp3_claswp_avm_read(bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_read),
        .out_unnamed_claswp3_claswp_avm_write(bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_write),
        .out_unnamed_claswp3_claswp_avm_writedata(bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_writedata),
        .out_unnamed_claswp4_claswp_avm_address(bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_address),
        .out_unnamed_claswp4_claswp_avm_burstcount(bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_burstcount),
        .out_unnamed_claswp4_claswp_avm_byteenable(bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_byteenable),
        .out_unnamed_claswp4_claswp_avm_enable(bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_enable),
        .out_unnamed_claswp4_claswp_avm_read(bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_read),
        .out_unnamed_claswp4_claswp_avm_write(bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_write),
        .out_unnamed_claswp4_claswp_avm_writedata(bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_writedata),
        .out_valid_out(bb_claswp_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,6)
    assign out_feedback_stall_out_1 = bb_claswp_B1_start_stall_region_out_feedback_stall_out_1;

    // out_intel_reserved_ffwd_0_0(GPOUT,42)
    assign out_intel_reserved_ffwd_0_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_10_0(GPOUT,43)
    assign out_intel_reserved_ffwd_10_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,44)
    assign out_intel_reserved_ffwd_11_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,45)
    assign out_intel_reserved_ffwd_12_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,46)
    assign out_intel_reserved_ffwd_1_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,47)
    assign out_intel_reserved_ffwd_2_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,48)
    assign out_intel_reserved_ffwd_3_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,49)
    assign out_intel_reserved_ffwd_4_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,50)
    assign out_intel_reserved_ffwd_5_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,51)
    assign out_intel_reserved_ffwd_6_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,52)
    assign out_intel_reserved_ffwd_7_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,53)
    assign out_intel_reserved_ffwd_8_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,54)
    assign out_intel_reserved_ffwd_9_0 = bb_claswp_B1_start_stall_region_out_intel_reserved_ffwd_9_0;

    // out_iord_bl_call_claswp_o_fifoready(GPOUT,55)
    assign out_iord_bl_call_claswp_o_fifoready = bb_claswp_B1_start_stall_region_out_iord_bl_call_claswp_o_fifoready;

    // out_lm1021_claswp_avm_address(GPOUT,56)
    assign out_lm1021_claswp_avm_address = bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_address;

    // out_lm1021_claswp_avm_burstcount(GPOUT,57)
    assign out_lm1021_claswp_avm_burstcount = bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_burstcount;

    // out_lm1021_claswp_avm_byteenable(GPOUT,58)
    assign out_lm1021_claswp_avm_byteenable = bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_byteenable;

    // out_lm1021_claswp_avm_enable(GPOUT,59)
    assign out_lm1021_claswp_avm_enable = bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_enable;

    // out_lm1021_claswp_avm_read(GPOUT,60)
    assign out_lm1021_claswp_avm_read = bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_read;

    // out_lm1021_claswp_avm_write(GPOUT,61)
    assign out_lm1021_claswp_avm_write = bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_write;

    // out_lm1021_claswp_avm_writedata(GPOUT,62)
    assign out_lm1021_claswp_avm_writedata = bb_claswp_B1_start_stall_region_out_lm1021_claswp_avm_writedata;

    // out_lm1052_claswp_avm_address(GPOUT,63)
    assign out_lm1052_claswp_avm_address = bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_address;

    // out_lm1052_claswp_avm_burstcount(GPOUT,64)
    assign out_lm1052_claswp_avm_burstcount = bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_burstcount;

    // out_lm1052_claswp_avm_byteenable(GPOUT,65)
    assign out_lm1052_claswp_avm_byteenable = bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_byteenable;

    // out_lm1052_claswp_avm_enable(GPOUT,66)
    assign out_lm1052_claswp_avm_enable = bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_enable;

    // out_lm1052_claswp_avm_read(GPOUT,67)
    assign out_lm1052_claswp_avm_read = bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_read;

    // out_lm1052_claswp_avm_write(GPOUT,68)
    assign out_lm1052_claswp_avm_write = bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_write;

    // out_lm1052_claswp_avm_writedata(GPOUT,69)
    assign out_lm1052_claswp_avm_writedata = bb_claswp_B1_start_stall_region_out_lm1052_claswp_avm_writedata;

    // out_lm1165_claswp_avm_address(GPOUT,70)
    assign out_lm1165_claswp_avm_address = bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_address;

    // out_lm1165_claswp_avm_burstcount(GPOUT,71)
    assign out_lm1165_claswp_avm_burstcount = bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_burstcount;

    // out_lm1165_claswp_avm_byteenable(GPOUT,72)
    assign out_lm1165_claswp_avm_byteenable = bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_byteenable;

    // out_lm1165_claswp_avm_enable(GPOUT,73)
    assign out_lm1165_claswp_avm_enable = bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_enable;

    // out_lm1165_claswp_avm_read(GPOUT,74)
    assign out_lm1165_claswp_avm_read = bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_read;

    // out_lm1165_claswp_avm_write(GPOUT,75)
    assign out_lm1165_claswp_avm_write = bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_write;

    // out_lm1165_claswp_avm_writedata(GPOUT,76)
    assign out_lm1165_claswp_avm_writedata = bb_claswp_B1_start_stall_region_out_lm1165_claswp_avm_writedata;

    // out_stall_out_0(GPOUT,77)
    assign out_stall_out_0 = claswp_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,78)
    assign out_stall_out_1 = claswp_B1_start_merge_out_stall_out_1;

    // out_storemerge1_lm3_claswp_avm_address(GPOUT,79)
    assign out_storemerge1_lm3_claswp_avm_address = bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_address;

    // out_storemerge1_lm3_claswp_avm_burstcount(GPOUT,80)
    assign out_storemerge1_lm3_claswp_avm_burstcount = bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_burstcount;

    // out_storemerge1_lm3_claswp_avm_byteenable(GPOUT,81)
    assign out_storemerge1_lm3_claswp_avm_byteenable = bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_byteenable;

    // out_storemerge1_lm3_claswp_avm_enable(GPOUT,82)
    assign out_storemerge1_lm3_claswp_avm_enable = bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_enable;

    // out_storemerge1_lm3_claswp_avm_read(GPOUT,83)
    assign out_storemerge1_lm3_claswp_avm_read = bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_read;

    // out_storemerge1_lm3_claswp_avm_write(GPOUT,84)
    assign out_storemerge1_lm3_claswp_avm_write = bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_write;

    // out_storemerge1_lm3_claswp_avm_writedata(GPOUT,85)
    assign out_storemerge1_lm3_claswp_avm_writedata = bb_claswp_B1_start_stall_region_out_storemerge1_lm3_claswp_avm_writedata;

    // out_storemerge72_lm4_claswp_avm_address(GPOUT,86)
    assign out_storemerge72_lm4_claswp_avm_address = bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_address;

    // out_storemerge72_lm4_claswp_avm_burstcount(GPOUT,87)
    assign out_storemerge72_lm4_claswp_avm_burstcount = bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_burstcount;

    // out_storemerge72_lm4_claswp_avm_byteenable(GPOUT,88)
    assign out_storemerge72_lm4_claswp_avm_byteenable = bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_byteenable;

    // out_storemerge72_lm4_claswp_avm_enable(GPOUT,89)
    assign out_storemerge72_lm4_claswp_avm_enable = bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_enable;

    // out_storemerge72_lm4_claswp_avm_read(GPOUT,90)
    assign out_storemerge72_lm4_claswp_avm_read = bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_read;

    // out_storemerge72_lm4_claswp_avm_write(GPOUT,91)
    assign out_storemerge72_lm4_claswp_avm_write = bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_write;

    // out_storemerge72_lm4_claswp_avm_writedata(GPOUT,92)
    assign out_storemerge72_lm4_claswp_avm_writedata = bb_claswp_B1_start_stall_region_out_storemerge72_lm4_claswp_avm_writedata;

    // out_unnamed_claswp3_claswp_avm_address(GPOUT,93)
    assign out_unnamed_claswp3_claswp_avm_address = bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_address;

    // out_unnamed_claswp3_claswp_avm_burstcount(GPOUT,94)
    assign out_unnamed_claswp3_claswp_avm_burstcount = bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_burstcount;

    // out_unnamed_claswp3_claswp_avm_byteenable(GPOUT,95)
    assign out_unnamed_claswp3_claswp_avm_byteenable = bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_byteenable;

    // out_unnamed_claswp3_claswp_avm_enable(GPOUT,96)
    assign out_unnamed_claswp3_claswp_avm_enable = bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_enable;

    // out_unnamed_claswp3_claswp_avm_read(GPOUT,97)
    assign out_unnamed_claswp3_claswp_avm_read = bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_read;

    // out_unnamed_claswp3_claswp_avm_write(GPOUT,98)
    assign out_unnamed_claswp3_claswp_avm_write = bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_write;

    // out_unnamed_claswp3_claswp_avm_writedata(GPOUT,99)
    assign out_unnamed_claswp3_claswp_avm_writedata = bb_claswp_B1_start_stall_region_out_unnamed_claswp3_claswp_avm_writedata;

    // out_unnamed_claswp4_claswp_avm_address(GPOUT,100)
    assign out_unnamed_claswp4_claswp_avm_address = bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_address;

    // out_unnamed_claswp4_claswp_avm_burstcount(GPOUT,101)
    assign out_unnamed_claswp4_claswp_avm_burstcount = bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_burstcount;

    // out_unnamed_claswp4_claswp_avm_byteenable(GPOUT,102)
    assign out_unnamed_claswp4_claswp_avm_byteenable = bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_byteenable;

    // out_unnamed_claswp4_claswp_avm_enable(GPOUT,103)
    assign out_unnamed_claswp4_claswp_avm_enable = bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_enable;

    // out_unnamed_claswp4_claswp_avm_read(GPOUT,104)
    assign out_unnamed_claswp4_claswp_avm_read = bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_read;

    // out_unnamed_claswp4_claswp_avm_write(GPOUT,105)
    assign out_unnamed_claswp4_claswp_avm_write = bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_write;

    // out_unnamed_claswp4_claswp_avm_writedata(GPOUT,106)
    assign out_unnamed_claswp4_claswp_avm_writedata = bb_claswp_B1_start_stall_region_out_unnamed_claswp4_claswp_avm_writedata;

    // out_valid_out_0(GPOUT,107)
    assign out_valid_out_0 = claswp_B1_start_branch_out_valid_out_0;

endmodule
