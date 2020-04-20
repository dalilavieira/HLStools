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

// SystemVerilog created from kmeans_bb_B14
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B14 (
    input wire [0:0] in_c0_exe1025913_0,
    input wire [31:0] in_c0_exe22513_0,
    input wire [15:0] in_c0_exe42534_0,
    input wire [0:0] in_c0_exe52547_0,
    input wire [0:0] in_c0_exe62559_0,
    input wire [0:0] in_c0_exe725610_0,
    input wire [15:0] in_c0_exe825711_0,
    input wire [0:0] in_c0_exe925812_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [15:0] out_c0_exe1225,
    output wire [31:0] out_c0_exe22513,
    output wire [0:0] out_c0_exe52547,
    output wire [0:0] out_c0_exe62559,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kmeans_B14_stall_region_out_c0_exe1025913;
    wire [15:0] bb_kmeans_B14_stall_region_out_c0_exe1225;
    wire [31:0] bb_kmeans_B14_stall_region_out_c0_exe22513;
    wire [0:0] bb_kmeans_B14_stall_region_out_c0_exe52547;
    wire [0:0] bb_kmeans_B14_stall_region_out_c0_exe62559;
    wire [0:0] bb_kmeans_B14_stall_region_out_stall_out;
    wire [0:0] bb_kmeans_B14_stall_region_out_valid_out;
    wire [15:0] kmeans_B14_branch_out_c0_exe1225;
    wire [31:0] kmeans_B14_branch_out_c0_exe22513;
    wire [0:0] kmeans_B14_branch_out_c0_exe52547;
    wire [0:0] kmeans_B14_branch_out_c0_exe62559;
    wire [0:0] kmeans_B14_branch_out_stall_out;
    wire [0:0] kmeans_B14_branch_out_valid_out_0;
    wire [0:0] kmeans_B14_branch_out_valid_out_1;
    wire [0:0] kmeans_B14_merge_out_c0_exe1025913;
    wire [31:0] kmeans_B14_merge_out_c0_exe22513;
    wire [15:0] kmeans_B14_merge_out_c0_exe42534;
    wire [0:0] kmeans_B14_merge_out_c0_exe52547;
    wire [0:0] kmeans_B14_merge_out_c0_exe62559;
    wire [0:0] kmeans_B14_merge_out_c0_exe725610;
    wire [15:0] kmeans_B14_merge_out_c0_exe825711;
    wire [0:0] kmeans_B14_merge_out_c0_exe925812;
    wire [0:0] kmeans_B14_merge_out_stall_out_0;
    wire [0:0] kmeans_B14_merge_out_valid_out;


    // kmeans_B14_merge(BLACKBOX,16)
    kmeans_B14_merge thekmeans_B14_merge (
        .in_c0_exe1025913_0(in_c0_exe1025913_0),
        .in_c0_exe22513_0(in_c0_exe22513_0),
        .in_c0_exe42534_0(in_c0_exe42534_0),
        .in_c0_exe52547_0(in_c0_exe52547_0),
        .in_c0_exe62559_0(in_c0_exe62559_0),
        .in_c0_exe725610_0(in_c0_exe725610_0),
        .in_c0_exe825711_0(in_c0_exe825711_0),
        .in_c0_exe925812_0(in_c0_exe925812_0),
        .in_stall_in(bb_kmeans_B14_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1025913(kmeans_B14_merge_out_c0_exe1025913),
        .out_c0_exe22513(kmeans_B14_merge_out_c0_exe22513),
        .out_c0_exe42534(kmeans_B14_merge_out_c0_exe42534),
        .out_c0_exe52547(kmeans_B14_merge_out_c0_exe52547),
        .out_c0_exe62559(kmeans_B14_merge_out_c0_exe62559),
        .out_c0_exe725610(kmeans_B14_merge_out_c0_exe725610),
        .out_c0_exe825711(kmeans_B14_merge_out_c0_exe825711),
        .out_c0_exe925812(kmeans_B14_merge_out_c0_exe925812),
        .out_stall_out_0(kmeans_B14_merge_out_stall_out_0),
        .out_valid_out(kmeans_B14_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B14_stall_region(BLACKBOX,2)
    kmeans_bb_B14_stall_region thebb_kmeans_B14_stall_region (
        .in_c0_exe1025913(kmeans_B14_merge_out_c0_exe1025913),
        .in_c0_exe22513(kmeans_B14_merge_out_c0_exe22513),
        .in_c0_exe42534(kmeans_B14_merge_out_c0_exe42534),
        .in_c0_exe52547(kmeans_B14_merge_out_c0_exe52547),
        .in_c0_exe62559(kmeans_B14_merge_out_c0_exe62559),
        .in_c0_exe725610(kmeans_B14_merge_out_c0_exe725610),
        .in_c0_exe825711(kmeans_B14_merge_out_c0_exe825711),
        .in_c0_exe925812(kmeans_B14_merge_out_c0_exe925812),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(kmeans_B14_branch_out_stall_out),
        .in_valid_in(kmeans_B14_merge_out_valid_out),
        .out_c0_exe1025913(bb_kmeans_B14_stall_region_out_c0_exe1025913),
        .out_c0_exe1225(bb_kmeans_B14_stall_region_out_c0_exe1225),
        .out_c0_exe22513(bb_kmeans_B14_stall_region_out_c0_exe22513),
        .out_c0_exe52547(bb_kmeans_B14_stall_region_out_c0_exe52547),
        .out_c0_exe62559(bb_kmeans_B14_stall_region_out_c0_exe62559),
        .out_stall_out(bb_kmeans_B14_stall_region_out_stall_out),
        .out_valid_out(bb_kmeans_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kmeans_B14_branch(BLACKBOX,15)
    kmeans_B14_branch thekmeans_B14_branch (
        .in_c0_exe1025913(bb_kmeans_B14_stall_region_out_c0_exe1025913),
        .in_c0_exe1225(bb_kmeans_B14_stall_region_out_c0_exe1225),
        .in_c0_exe22513(bb_kmeans_B14_stall_region_out_c0_exe22513),
        .in_c0_exe52547(bb_kmeans_B14_stall_region_out_c0_exe52547),
        .in_c0_exe62559(bb_kmeans_B14_stall_region_out_c0_exe62559),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kmeans_B14_stall_region_out_valid_out),
        .out_c0_exe1225(kmeans_B14_branch_out_c0_exe1225),
        .out_c0_exe22513(kmeans_B14_branch_out_c0_exe22513),
        .out_c0_exe52547(kmeans_B14_branch_out_c0_exe52547),
        .out_c0_exe62559(kmeans_B14_branch_out_c0_exe62559),
        .out_stall_out(kmeans_B14_branch_out_stall_out),
        .out_valid_out_0(kmeans_B14_branch_out_valid_out_0),
        .out_valid_out_1(kmeans_B14_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1225(GPOUT,17)
    assign out_c0_exe1225 = kmeans_B14_branch_out_c0_exe1225;

    // out_c0_exe22513(GPOUT,18)
    assign out_c0_exe22513 = kmeans_B14_branch_out_c0_exe22513;

    // out_c0_exe52547(GPOUT,19)
    assign out_c0_exe52547 = kmeans_B14_branch_out_c0_exe52547;

    // out_c0_exe62559(GPOUT,20)
    assign out_c0_exe62559 = kmeans_B14_branch_out_c0_exe62559;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = kmeans_B14_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,22)
    assign out_valid_out_0 = kmeans_B14_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,23)
    assign out_valid_out_1 = kmeans_B14_branch_out_valid_out_1;

endmodule
