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

// SystemVerilog created from stb_from_utf8_bb_B3
// SystemVerilog created on Sun May 24 22:41:05 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stb_from_utf8_bb_B3 (
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_iowr_bl_return_stb_from_utf8_i_fifoready,
    input wire [63:0] in_memdep_1_stb_from_utf8_avm_readdata,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_iowr_bl_return_stb_from_utf8_o_fifodata,
    output wire [0:0] out_iowr_bl_return_stb_from_utf8_o_fifovalid,
    output wire [0:0] out_lsu_memdep_1_o_active,
    output wire [63:0] out_memdep_1_stb_from_utf8_avm_address,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_memdep_1_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_enable,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_read,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_write,
    output wire [63:0] out_memdep_1_stb_from_utf8_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_feedback_out_1;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_feedback_valid_out_1;
    wire [63:0] bb_stb_from_utf8_B3_stall_region_out_iowr_bl_return_stb_from_utf8_o_fifodata;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_iowr_bl_return_stb_from_utf8_o_fifovalid;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_lsu_memdep_1_o_active;
    wire [63:0] bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_writedata;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_stall_out;
    wire [0:0] bb_stb_from_utf8_B3_stall_region_out_valid_out;
    wire [0:0] stb_from_utf8_B3_branch_out_stall_out;
    wire [0:0] stb_from_utf8_B3_branch_out_valid_out_0;
    wire [0:0] stb_from_utf8_B3_merge_out_stall_out_0;
    wire [0:0] stb_from_utf8_B3_merge_out_valid_out;


    // stb_from_utf8_B3_merge(BLACKBOX,32)
    stb_from_utf8_B3_merge thestb_from_utf8_B3_merge (
        .in_stall_in(bb_stb_from_utf8_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(stb_from_utf8_B3_merge_out_stall_out_0),
        .out_valid_out(stb_from_utf8_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stb_from_utf8_B3_branch(BLACKBOX,31)
    stb_from_utf8_B3_branch thestb_from_utf8_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stb_from_utf8_B3_stall_region_out_valid_out),
        .out_stall_out(stb_from_utf8_B3_branch_out_stall_out),
        .out_valid_out_0(stb_from_utf8_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stb_from_utf8_B3_stall_region(BLACKBOX,2)
    stb_from_utf8_bb_B3_stall_region thebb_stb_from_utf8_B3_stall_region (
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_iowr_bl_return_stb_from_utf8_i_fifoready(in_iowr_bl_return_stb_from_utf8_i_fifoready),
        .in_memdep_1_stb_from_utf8_avm_readdata(in_memdep_1_stb_from_utf8_avm_readdata),
        .in_memdep_1_stb_from_utf8_avm_readdatavalid(in_memdep_1_stb_from_utf8_avm_readdatavalid),
        .in_memdep_1_stb_from_utf8_avm_waitrequest(in_memdep_1_stb_from_utf8_avm_waitrequest),
        .in_memdep_1_stb_from_utf8_avm_writeack(in_memdep_1_stb_from_utf8_avm_writeack),
        .in_stall_in(stb_from_utf8_B3_branch_out_stall_out),
        .in_valid_in(stb_from_utf8_B3_merge_out_valid_out),
        .out_feedback_out_1(bb_stb_from_utf8_B3_stall_region_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_stb_from_utf8_B3_stall_region_out_feedback_valid_out_1),
        .out_iowr_bl_return_stb_from_utf8_o_fifodata(bb_stb_from_utf8_B3_stall_region_out_iowr_bl_return_stb_from_utf8_o_fifodata),
        .out_iowr_bl_return_stb_from_utf8_o_fifovalid(bb_stb_from_utf8_B3_stall_region_out_iowr_bl_return_stb_from_utf8_o_fifovalid),
        .out_lsu_memdep_1_o_active(bb_stb_from_utf8_B3_stall_region_out_lsu_memdep_1_o_active),
        .out_memdep_1_stb_from_utf8_avm_address(bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_address),
        .out_memdep_1_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_burstcount),
        .out_memdep_1_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_byteenable),
        .out_memdep_1_stb_from_utf8_avm_enable(bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_enable),
        .out_memdep_1_stb_from_utf8_avm_read(bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_read),
        .out_memdep_1_stb_from_utf8_avm_write(bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_write),
        .out_memdep_1_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_writedata),
        .out_stall_out(bb_stb_from_utf8_B3_stall_region_out_stall_out),
        .out_valid_out(bb_stb_from_utf8_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_1_sync(GPOUT,3)
    assign out_feedback_out_1 = bb_stb_from_utf8_B3_stall_region_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,5)
    assign out_feedback_valid_out_1 = bb_stb_from_utf8_B3_stall_region_out_feedback_valid_out_1;

    // out_iowr_bl_return_stb_from_utf8_o_fifodata(GPOUT,19)
    assign out_iowr_bl_return_stb_from_utf8_o_fifodata = bb_stb_from_utf8_B3_stall_region_out_iowr_bl_return_stb_from_utf8_o_fifodata;

    // out_iowr_bl_return_stb_from_utf8_o_fifovalid(GPOUT,20)
    assign out_iowr_bl_return_stb_from_utf8_o_fifovalid = bb_stb_from_utf8_B3_stall_region_out_iowr_bl_return_stb_from_utf8_o_fifovalid;

    // out_lsu_memdep_1_o_active(GPOUT,21)
    assign out_lsu_memdep_1_o_active = bb_stb_from_utf8_B3_stall_region_out_lsu_memdep_1_o_active;

    // out_memdep_1_stb_from_utf8_avm_address(GPOUT,22)
    assign out_memdep_1_stb_from_utf8_avm_address = bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_address;

    // out_memdep_1_stb_from_utf8_avm_burstcount(GPOUT,23)
    assign out_memdep_1_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_burstcount;

    // out_memdep_1_stb_from_utf8_avm_byteenable(GPOUT,24)
    assign out_memdep_1_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_byteenable;

    // out_memdep_1_stb_from_utf8_avm_enable(GPOUT,25)
    assign out_memdep_1_stb_from_utf8_avm_enable = bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_enable;

    // out_memdep_1_stb_from_utf8_avm_read(GPOUT,26)
    assign out_memdep_1_stb_from_utf8_avm_read = bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_read;

    // out_memdep_1_stb_from_utf8_avm_write(GPOUT,27)
    assign out_memdep_1_stb_from_utf8_avm_write = bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_write;

    // out_memdep_1_stb_from_utf8_avm_writedata(GPOUT,28)
    assign out_memdep_1_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B3_stall_region_out_memdep_1_stb_from_utf8_avm_writedata;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = stb_from_utf8_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,30)
    assign out_valid_out_0 = stb_from_utf8_B3_branch_out_valid_out_0;

endmodule
