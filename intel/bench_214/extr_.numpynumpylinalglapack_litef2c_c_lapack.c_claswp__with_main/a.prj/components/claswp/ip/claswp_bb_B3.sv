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

// SystemVerilog created from claswp_bb_B3
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked151_0,
    input wire [0:0] in_forked151_1,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_lm1476_claswp_avm_readdata,
    input wire [0:0] in_lm1476_claswp_avm_readdatavalid,
    input wire [0:0] in_lm1476_claswp_avm_waitrequest,
    input wire [0:0] in_lm1476_claswp_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [0:0] out_intel_reserved_ffwd_17_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [0:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_lm1476_claswp_avm_address,
    output wire [0:0] out_lm1476_claswp_avm_burstcount,
    output wire [7:0] out_lm1476_claswp_avm_byteenable,
    output wire [0:0] out_lm1476_claswp_avm_enable,
    output wire [0:0] out_lm1476_claswp_avm_read,
    output wire [0:0] out_lm1476_claswp_avm_write,
    output wire [63:0] out_lm1476_claswp_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_claswp_B3_stall_region_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_claswp_B3_stall_region_out_intel_reserved_ffwd_16_0;
    wire [0:0] bb_claswp_B3_stall_region_out_intel_reserved_ffwd_17_0;
    wire [0:0] bb_claswp_B3_stall_region_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_claswp_B3_stall_region_out_intel_reserved_ffwd_19_0;
    wire [0:0] bb_claswp_B3_stall_region_out_intel_reserved_ffwd_20_0;
    wire [63:0] bb_claswp_B3_stall_region_out_lm1476_claswp_avm_address;
    wire [0:0] bb_claswp_B3_stall_region_out_lm1476_claswp_avm_burstcount;
    wire [7:0] bb_claswp_B3_stall_region_out_lm1476_claswp_avm_byteenable;
    wire [0:0] bb_claswp_B3_stall_region_out_lm1476_claswp_avm_enable;
    wire [0:0] bb_claswp_B3_stall_region_out_lm1476_claswp_avm_read;
    wire [0:0] bb_claswp_B3_stall_region_out_lm1476_claswp_avm_write;
    wire [63:0] bb_claswp_B3_stall_region_out_lm1476_claswp_avm_writedata;
    wire [0:0] bb_claswp_B3_stall_region_out_stall_out;
    wire [0:0] bb_claswp_B3_stall_region_out_valid_out;
    wire [0:0] claswp_B3_branch_out_stall_out;
    wire [0:0] claswp_B3_branch_out_valid_out_0;
    wire [0:0] claswp_B3_merge_out_forked151;
    wire [0:0] claswp_B3_merge_out_stall_out_0;
    wire [0:0] claswp_B3_merge_out_stall_out_1;
    wire [0:0] claswp_B3_merge_out_valid_out;


    // claswp_B3_branch(BLACKBOX,3)
    claswp_B3_branch theclaswp_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_claswp_B3_stall_region_out_valid_out),
        .out_stall_out(claswp_B3_branch_out_stall_out),
        .out_valid_out_0(claswp_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // claswp_B3_merge(BLACKBOX,4)
    claswp_B3_merge theclaswp_B3_merge (
        .in_forked151_0(in_forked151_0),
        .in_forked151_1(in_forked151_1),
        .in_stall_in(bb_claswp_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked151(claswp_B3_merge_out_forked151),
        .out_stall_out_0(claswp_B3_merge_out_stall_out_0),
        .out_stall_out_1(claswp_B3_merge_out_stall_out_1),
        .out_valid_out(claswp_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_claswp_B3_stall_region(BLACKBOX,2)
    claswp_bb_B3_stall_region thebb_claswp_B3_stall_region (
        .in_flush(in_flush),
        .in_forked151(claswp_B3_merge_out_forked151),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm1476_claswp_avm_readdata(in_lm1476_claswp_avm_readdata),
        .in_lm1476_claswp_avm_readdatavalid(in_lm1476_claswp_avm_readdatavalid),
        .in_lm1476_claswp_avm_waitrequest(in_lm1476_claswp_avm_waitrequest),
        .in_lm1476_claswp_avm_writeack(in_lm1476_claswp_avm_writeack),
        .in_stall_in(claswp_B3_branch_out_stall_out),
        .in_valid_in(claswp_B3_merge_out_valid_out),
        .out_intel_reserved_ffwd_15_0(bb_claswp_B3_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_claswp_B3_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_claswp_B3_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_claswp_B3_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_claswp_B3_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_claswp_B3_stall_region_out_intel_reserved_ffwd_20_0),
        .out_lm1476_claswp_avm_address(bb_claswp_B3_stall_region_out_lm1476_claswp_avm_address),
        .out_lm1476_claswp_avm_burstcount(bb_claswp_B3_stall_region_out_lm1476_claswp_avm_burstcount),
        .out_lm1476_claswp_avm_byteenable(bb_claswp_B3_stall_region_out_lm1476_claswp_avm_byteenable),
        .out_lm1476_claswp_avm_enable(bb_claswp_B3_stall_region_out_lm1476_claswp_avm_enable),
        .out_lm1476_claswp_avm_read(bb_claswp_B3_stall_region_out_lm1476_claswp_avm_read),
        .out_lm1476_claswp_avm_write(bb_claswp_B3_stall_region_out_lm1476_claswp_avm_write),
        .out_lm1476_claswp_avm_writedata(bb_claswp_B3_stall_region_out_lm1476_claswp_avm_writedata),
        .out_stall_out(bb_claswp_B3_stall_region_out_stall_out),
        .out_valid_out(bb_claswp_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_15_0(GPOUT,23)
    assign out_intel_reserved_ffwd_15_0 = bb_claswp_B3_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,24)
    assign out_intel_reserved_ffwd_16_0 = bb_claswp_B3_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,25)
    assign out_intel_reserved_ffwd_17_0 = bb_claswp_B3_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,26)
    assign out_intel_reserved_ffwd_18_0 = bb_claswp_B3_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,27)
    assign out_intel_reserved_ffwd_19_0 = bb_claswp_B3_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,28)
    assign out_intel_reserved_ffwd_20_0 = bb_claswp_B3_stall_region_out_intel_reserved_ffwd_20_0;

    // out_lm1476_claswp_avm_address(GPOUT,29)
    assign out_lm1476_claswp_avm_address = bb_claswp_B3_stall_region_out_lm1476_claswp_avm_address;

    // out_lm1476_claswp_avm_burstcount(GPOUT,30)
    assign out_lm1476_claswp_avm_burstcount = bb_claswp_B3_stall_region_out_lm1476_claswp_avm_burstcount;

    // out_lm1476_claswp_avm_byteenable(GPOUT,31)
    assign out_lm1476_claswp_avm_byteenable = bb_claswp_B3_stall_region_out_lm1476_claswp_avm_byteenable;

    // out_lm1476_claswp_avm_enable(GPOUT,32)
    assign out_lm1476_claswp_avm_enable = bb_claswp_B3_stall_region_out_lm1476_claswp_avm_enable;

    // out_lm1476_claswp_avm_read(GPOUT,33)
    assign out_lm1476_claswp_avm_read = bb_claswp_B3_stall_region_out_lm1476_claswp_avm_read;

    // out_lm1476_claswp_avm_write(GPOUT,34)
    assign out_lm1476_claswp_avm_write = bb_claswp_B3_stall_region_out_lm1476_claswp_avm_write;

    // out_lm1476_claswp_avm_writedata(GPOUT,35)
    assign out_lm1476_claswp_avm_writedata = bb_claswp_B3_stall_region_out_lm1476_claswp_avm_writedata;

    // out_stall_out_0(GPOUT,36)
    assign out_stall_out_0 = claswp_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,37)
    assign out_stall_out_1 = claswp_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,38)
    assign out_valid_out_0 = claswp_B3_branch_out_valid_out_0;

endmodule
