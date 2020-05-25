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

// SystemVerilog created from zlaswp_bb_B7
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B7 (
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [0:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_lm8417_zlaswp_avm_readdata,
    input wire [0:0] in_lm8417_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm8417_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm8417_zlaswp_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [63:0] out_lm8417_zlaswp_avm_address,
    output wire [0:0] out_lm8417_zlaswp_avm_burstcount,
    output wire [7:0] out_lm8417_zlaswp_avm_byteenable,
    output wire [0:0] out_lm8417_zlaswp_avm_enable,
    output wire [0:0] out_lm8417_zlaswp_avm_read,
    output wire [0:0] out_lm8417_zlaswp_avm_write,
    output wire [63:0] out_lm8417_zlaswp_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zlaswp_B7_stall_region_out_c0_exe1274;
    wire [31:0] bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_24_0;
    wire [63:0] bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B7_stall_region_out_stall_out;
    wire [0:0] bb_zlaswp_B7_stall_region_out_valid_out;
    wire [0:0] zlaswp_B7_branch_out_stall_out;
    wire [0:0] zlaswp_B7_branch_out_valid_out_0;
    wire [0:0] zlaswp_B7_branch_out_valid_out_1;
    wire [0:0] zlaswp_B7_merge_out_stall_out_0;
    wire [0:0] zlaswp_B7_merge_out_valid_out;


    // zlaswp_B7_merge(BLACKBOX,31)
    zlaswp_B7_merge thezlaswp_B7_merge (
        .in_stall_in(bb_zlaswp_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(zlaswp_B7_merge_out_stall_out_0),
        .out_valid_out(zlaswp_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // zlaswp_B7_branch(BLACKBOX,30)
    zlaswp_B7_branch thezlaswp_B7_branch (
        .in_c0_exe1274(bb_zlaswp_B7_stall_region_out_c0_exe1274),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zlaswp_B7_stall_region_out_valid_out),
        .out_stall_out(zlaswp_B7_branch_out_stall_out),
        .out_valid_out_0(zlaswp_B7_branch_out_valid_out_0),
        .out_valid_out_1(zlaswp_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zlaswp_B7_stall_region(BLACKBOX,2)
    zlaswp_bb_B7_stall_region thebb_zlaswp_B7_stall_region (
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_lm8417_zlaswp_avm_readdata(in_lm8417_zlaswp_avm_readdata),
        .in_lm8417_zlaswp_avm_readdatavalid(in_lm8417_zlaswp_avm_readdatavalid),
        .in_lm8417_zlaswp_avm_waitrequest(in_lm8417_zlaswp_avm_waitrequest),
        .in_lm8417_zlaswp_avm_writeack(in_lm8417_zlaswp_avm_writeack),
        .in_stall_in(zlaswp_B7_branch_out_stall_out),
        .in_valid_in(zlaswp_B7_merge_out_valid_out),
        .out_c0_exe1274(bb_zlaswp_B7_stall_region_out_c0_exe1274),
        .out_intel_reserved_ffwd_22_0(bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_24_0),
        .out_lm8417_zlaswp_avm_address(bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_address),
        .out_lm8417_zlaswp_avm_burstcount(bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_burstcount),
        .out_lm8417_zlaswp_avm_byteenable(bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_byteenable),
        .out_lm8417_zlaswp_avm_enable(bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_enable),
        .out_lm8417_zlaswp_avm_read(bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_read),
        .out_lm8417_zlaswp_avm_write(bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_write),
        .out_lm8417_zlaswp_avm_writedata(bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_writedata),
        .out_stall_out(bb_zlaswp_B7_stall_region_out_stall_out),
        .out_valid_out(bb_zlaswp_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_22_0(GPOUT,17)
    assign out_intel_reserved_ffwd_22_0 = bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,18)
    assign out_intel_reserved_ffwd_23_0 = bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,19)
    assign out_intel_reserved_ffwd_24_0 = bb_zlaswp_B7_stall_region_out_intel_reserved_ffwd_24_0;

    // out_lm8417_zlaswp_avm_address(GPOUT,20)
    assign out_lm8417_zlaswp_avm_address = bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_address;

    // out_lm8417_zlaswp_avm_burstcount(GPOUT,21)
    assign out_lm8417_zlaswp_avm_burstcount = bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_burstcount;

    // out_lm8417_zlaswp_avm_byteenable(GPOUT,22)
    assign out_lm8417_zlaswp_avm_byteenable = bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_byteenable;

    // out_lm8417_zlaswp_avm_enable(GPOUT,23)
    assign out_lm8417_zlaswp_avm_enable = bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_enable;

    // out_lm8417_zlaswp_avm_read(GPOUT,24)
    assign out_lm8417_zlaswp_avm_read = bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_read;

    // out_lm8417_zlaswp_avm_write(GPOUT,25)
    assign out_lm8417_zlaswp_avm_write = bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_write;

    // out_lm8417_zlaswp_avm_writedata(GPOUT,26)
    assign out_lm8417_zlaswp_avm_writedata = bb_zlaswp_B7_stall_region_out_lm8417_zlaswp_avm_writedata;

    // out_stall_out_0(GPOUT,27)
    assign out_stall_out_0 = zlaswp_B7_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,28)
    assign out_valid_out_0 = zlaswp_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,29)
    assign out_valid_out_1 = zlaswp_B7_branch_out_valid_out_1;

endmodule
