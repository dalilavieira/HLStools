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

// SystemVerilog created from dijkstra_bb_B7
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B7 (
    input wire [31:0] in_c0_exe31_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe31,
    output wire [31:0] out_intel_reserved_ffwd_50_0,
    output wire [31:0] out_intel_reserved_ffwd_51_0,
    output wire [31:0] out_intel_reserved_ffwd_52_0,
    output wire [31:0] out_intel_reserved_ffwd_53_0,
    output wire [31:0] out_intel_reserved_ffwd_54_0,
    output wire [31:0] out_intel_reserved_ffwd_55_0,
    output wire [31:0] out_intel_reserved_ffwd_56_0,
    output wire [31:0] out_intel_reserved_ffwd_57_0,
    output wire [31:0] out_intel_reserved_ffwd_58_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_intel_reserved_ffwd_59_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_dijkstra_B7_stall_region_out_c0_exe31;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_50_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_51_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_52_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_53_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_54_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_55_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_56_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_57_0;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_58_0;
    wire [0:0] bb_dijkstra_B7_stall_region_out_stall_out;
    wire [0:0] bb_dijkstra_B7_stall_region_out_valid_out;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_0_tpl;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_1_tpl;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_2_tpl;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_3_tpl;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_4_tpl;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_5_tpl;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_6_tpl;
    wire [31:0] bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_7_tpl;
    wire [31:0] dijkstra_B7_branch_out_c0_exe31;
    wire [0:0] dijkstra_B7_branch_out_stall_out;
    wire [0:0] dijkstra_B7_branch_out_valid_out_0;
    wire [31:0] dijkstra_B7_merge_out_c0_exe31;
    wire [0:0] dijkstra_B7_merge_out_stall_out_0;
    wire [0:0] dijkstra_B7_merge_out_valid_out;


    // dijkstra_B7_merge(BLACKBOX,4)
    dijkstra_B7_merge thedijkstra_B7_merge (
        .in_c0_exe31_0(in_c0_exe31_0),
        .in_stall_in(bb_dijkstra_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe31(dijkstra_B7_merge_out_c0_exe31),
        .out_stall_out_0(dijkstra_B7_merge_out_stall_out_0),
        .out_valid_out(dijkstra_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B7_stall_region(BLACKBOX,2)
    dijkstra_bb_B7_stall_region thebb_dijkstra_B7_stall_region (
        .in_c0_exe31(dijkstra_B7_merge_out_c0_exe31),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(dijkstra_B7_branch_out_stall_out),
        .in_valid_in(dijkstra_B7_merge_out_valid_out),
        .out_c0_exe31(bb_dijkstra_B7_stall_region_out_c0_exe31),
        .out_intel_reserved_ffwd_50_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_58_0),
        .out_stall_out(bb_dijkstra_B7_stall_region_out_stall_out),
        .out_valid_out(bb_dijkstra_B7_stall_region_out_valid_out),
        .out_intel_reserved_ffwd_59_0_0_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_0_tpl),
        .out_intel_reserved_ffwd_59_0_1_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_1_tpl),
        .out_intel_reserved_ffwd_59_0_2_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_2_tpl),
        .out_intel_reserved_ffwd_59_0_3_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_3_tpl),
        .out_intel_reserved_ffwd_59_0_4_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_4_tpl),
        .out_intel_reserved_ffwd_59_0_5_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_5_tpl),
        .out_intel_reserved_ffwd_59_0_6_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_6_tpl),
        .out_intel_reserved_ffwd_59_0_7_tpl(bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dijkstra_B7_branch(BLACKBOX,3)
    dijkstra_B7_branch thedijkstra_B7_branch (
        .in_c0_exe31(bb_dijkstra_B7_stall_region_out_c0_exe31),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_dijkstra_B7_stall_region_out_valid_out),
        .out_c0_exe31(dijkstra_B7_branch_out_c0_exe31),
        .out_stall_out(dijkstra_B7_branch_out_stall_out),
        .out_valid_out_0(dijkstra_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe31(GPOUT,18)
    assign out_c0_exe31 = dijkstra_B7_branch_out_c0_exe31;

    // out_intel_reserved_ffwd_50_0(GPOUT,19)
    assign out_intel_reserved_ffwd_50_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_50_0;

    // out_intel_reserved_ffwd_51_0(GPOUT,20)
    assign out_intel_reserved_ffwd_51_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_51_0;

    // out_intel_reserved_ffwd_52_0(GPOUT,21)
    assign out_intel_reserved_ffwd_52_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_52_0;

    // out_intel_reserved_ffwd_53_0(GPOUT,22)
    assign out_intel_reserved_ffwd_53_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_53_0;

    // out_intel_reserved_ffwd_54_0(GPOUT,23)
    assign out_intel_reserved_ffwd_54_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_54_0;

    // out_intel_reserved_ffwd_55_0(GPOUT,24)
    assign out_intel_reserved_ffwd_55_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_55_0;

    // out_intel_reserved_ffwd_56_0(GPOUT,25)
    assign out_intel_reserved_ffwd_56_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_56_0;

    // out_intel_reserved_ffwd_57_0(GPOUT,26)
    assign out_intel_reserved_ffwd_57_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_57_0;

    // out_intel_reserved_ffwd_58_0(GPOUT,27)
    assign out_intel_reserved_ffwd_58_0 = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_58_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = dijkstra_B7_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = dijkstra_B7_branch_out_valid_out_0;

    // out_intel_reserved_ffwd_59_0_0_tpl(GPOUT,30)
    assign out_intel_reserved_ffwd_59_0_0_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_0_tpl;

    // out_intel_reserved_ffwd_59_0_1_tpl(GPOUT,31)
    assign out_intel_reserved_ffwd_59_0_1_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_1_tpl;

    // out_intel_reserved_ffwd_59_0_2_tpl(GPOUT,32)
    assign out_intel_reserved_ffwd_59_0_2_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_2_tpl;

    // out_intel_reserved_ffwd_59_0_3_tpl(GPOUT,33)
    assign out_intel_reserved_ffwd_59_0_3_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_3_tpl;

    // out_intel_reserved_ffwd_59_0_4_tpl(GPOUT,34)
    assign out_intel_reserved_ffwd_59_0_4_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_4_tpl;

    // out_intel_reserved_ffwd_59_0_5_tpl(GPOUT,35)
    assign out_intel_reserved_ffwd_59_0_5_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_5_tpl;

    // out_intel_reserved_ffwd_59_0_6_tpl(GPOUT,36)
    assign out_intel_reserved_ffwd_59_0_6_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_6_tpl;

    // out_intel_reserved_ffwd_59_0_7_tpl(GPOUT,37)
    assign out_intel_reserved_ffwd_59_0_7_tpl = bb_dijkstra_B7_stall_region_out_intel_reserved_ffwd_59_0_7_tpl;

endmodule
