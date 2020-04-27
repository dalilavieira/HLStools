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

// SystemVerilog created from sobel_filter_bb_B19
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B19 (
    input wire [31:0] in_c0_exe244717_0,
    input wire [0:0] in_c0_exe444919_0,
    input wire [0:0] in_c0_exe545021_0,
    input wire [0:0] in_c0_exe645122_0,
    input wire [63:0] in_c0_exe745223_0,
    input wire [0:0] in_c0_exe845324_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_21_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_21_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_memdep_21_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_21_sobel_filter_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe444919,
    output wire [0:0] out_c0_exe545021,
    output wire [31:0] out_memdep_21_sobel_filter_avm_address,
    output wire [0:0] out_memdep_21_sobel_filter_avm_burstcount,
    output wire [3:0] out_memdep_21_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_21_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_21_sobel_filter_avm_read,
    output wire [0:0] out_memdep_21_sobel_filter_avm_write,
    output wire [31:0] out_memdep_21_sobel_filter_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B19_stall_region_out_c0_exe444919;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_c0_exe545021;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_c0_exe845324;
    wire [31:0] bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B19_stall_region_out_valid_out;
    wire [0:0] sobel_filter_B19_branch_out_c0_exe444919;
    wire [0:0] sobel_filter_B19_branch_out_c0_exe545021;
    wire [0:0] sobel_filter_B19_branch_out_stall_out;
    wire [0:0] sobel_filter_B19_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B19_branch_out_valid_out_1;
    wire [31:0] sobel_filter_B19_merge_out_c0_exe244717;
    wire [0:0] sobel_filter_B19_merge_out_c0_exe444919;
    wire [0:0] sobel_filter_B19_merge_out_c0_exe545021;
    wire [0:0] sobel_filter_B19_merge_out_c0_exe645122;
    wire [63:0] sobel_filter_B19_merge_out_c0_exe745223;
    wire [0:0] sobel_filter_B19_merge_out_c0_exe845324;
    wire [0:0] sobel_filter_B19_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B19_merge_out_valid_out;


    // sobel_filter_B19_merge(BLACKBOX,30)
    sobel_filter_B19_merge thesobel_filter_B19_merge (
        .in_c0_exe244717_0(in_c0_exe244717_0),
        .in_c0_exe444919_0(in_c0_exe444919_0),
        .in_c0_exe545021_0(in_c0_exe545021_0),
        .in_c0_exe645122_0(in_c0_exe645122_0),
        .in_c0_exe745223_0(in_c0_exe745223_0),
        .in_c0_exe845324_0(in_c0_exe845324_0),
        .in_stall_in(bb_sobel_filter_B19_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe244717(sobel_filter_B19_merge_out_c0_exe244717),
        .out_c0_exe444919(sobel_filter_B19_merge_out_c0_exe444919),
        .out_c0_exe545021(sobel_filter_B19_merge_out_c0_exe545021),
        .out_c0_exe645122(sobel_filter_B19_merge_out_c0_exe645122),
        .out_c0_exe745223(sobel_filter_B19_merge_out_c0_exe745223),
        .out_c0_exe845324(sobel_filter_B19_merge_out_c0_exe845324),
        .out_stall_out_0(sobel_filter_B19_merge_out_stall_out_0),
        .out_valid_out(sobel_filter_B19_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B19_stall_region(BLACKBOX,2)
    sobel_filter_bb_B19_stall_region thebb_sobel_filter_B19_stall_region (
        .in_c0_exe244717(sobel_filter_B19_merge_out_c0_exe244717),
        .in_c0_exe444919(sobel_filter_B19_merge_out_c0_exe444919),
        .in_c0_exe545021(sobel_filter_B19_merge_out_c0_exe545021),
        .in_c0_exe645122(sobel_filter_B19_merge_out_c0_exe645122),
        .in_c0_exe745223(sobel_filter_B19_merge_out_c0_exe745223),
        .in_c0_exe845324(sobel_filter_B19_merge_out_c0_exe845324),
        .in_flush(in_flush),
        .in_memdep_21_sobel_filter_avm_readdata(in_memdep_21_sobel_filter_avm_readdata),
        .in_memdep_21_sobel_filter_avm_readdatavalid(in_memdep_21_sobel_filter_avm_readdatavalid),
        .in_memdep_21_sobel_filter_avm_waitrequest(in_memdep_21_sobel_filter_avm_waitrequest),
        .in_memdep_21_sobel_filter_avm_writeack(in_memdep_21_sobel_filter_avm_writeack),
        .in_stall_in(sobel_filter_B19_branch_out_stall_out),
        .in_valid_in(sobel_filter_B19_merge_out_valid_out),
        .out_c0_exe444919(bb_sobel_filter_B19_stall_region_out_c0_exe444919),
        .out_c0_exe545021(bb_sobel_filter_B19_stall_region_out_c0_exe545021),
        .out_c0_exe845324(bb_sobel_filter_B19_stall_region_out_c0_exe845324),
        .out_memdep_21_sobel_filter_avm_address(bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_address),
        .out_memdep_21_sobel_filter_avm_burstcount(bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_burstcount),
        .out_memdep_21_sobel_filter_avm_byteenable(bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_byteenable),
        .out_memdep_21_sobel_filter_avm_enable(bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_enable),
        .out_memdep_21_sobel_filter_avm_read(bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_read),
        .out_memdep_21_sobel_filter_avm_write(bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_write),
        .out_memdep_21_sobel_filter_avm_writedata(bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_writedata),
        .out_stall_out(bb_sobel_filter_B19_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B19_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B19_branch(BLACKBOX,29)
    sobel_filter_B19_branch thesobel_filter_B19_branch (
        .in_c0_exe444919(bb_sobel_filter_B19_stall_region_out_c0_exe444919),
        .in_c0_exe545021(bb_sobel_filter_B19_stall_region_out_c0_exe545021),
        .in_c0_exe845324(bb_sobel_filter_B19_stall_region_out_c0_exe845324),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_filter_B19_stall_region_out_valid_out),
        .out_c0_exe444919(sobel_filter_B19_branch_out_c0_exe444919),
        .out_c0_exe545021(sobel_filter_B19_branch_out_c0_exe545021),
        .out_stall_out(sobel_filter_B19_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B19_branch_out_valid_out_0),
        .out_valid_out_1(sobel_filter_B19_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe444919(GPOUT,17)
    assign out_c0_exe444919 = sobel_filter_B19_branch_out_c0_exe444919;

    // out_c0_exe545021(GPOUT,18)
    assign out_c0_exe545021 = sobel_filter_B19_branch_out_c0_exe545021;

    // out_memdep_21_sobel_filter_avm_address(GPOUT,19)
    assign out_memdep_21_sobel_filter_avm_address = bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_address;

    // out_memdep_21_sobel_filter_avm_burstcount(GPOUT,20)
    assign out_memdep_21_sobel_filter_avm_burstcount = bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_burstcount;

    // out_memdep_21_sobel_filter_avm_byteenable(GPOUT,21)
    assign out_memdep_21_sobel_filter_avm_byteenable = bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_byteenable;

    // out_memdep_21_sobel_filter_avm_enable(GPOUT,22)
    assign out_memdep_21_sobel_filter_avm_enable = bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_enable;

    // out_memdep_21_sobel_filter_avm_read(GPOUT,23)
    assign out_memdep_21_sobel_filter_avm_read = bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_read;

    // out_memdep_21_sobel_filter_avm_write(GPOUT,24)
    assign out_memdep_21_sobel_filter_avm_write = bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_write;

    // out_memdep_21_sobel_filter_avm_writedata(GPOUT,25)
    assign out_memdep_21_sobel_filter_avm_writedata = bb_sobel_filter_B19_stall_region_out_memdep_21_sobel_filter_avm_writedata;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = sobel_filter_B19_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = sobel_filter_B19_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,28)
    assign out_valid_out_1 = sobel_filter_B19_branch_out_valid_out_1;

endmodule
