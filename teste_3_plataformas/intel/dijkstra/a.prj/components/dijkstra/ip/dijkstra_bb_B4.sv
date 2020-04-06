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

// SystemVerilog created from dijkstra_bb_B4
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B4 (
    input wire [31:0] in_count_034_0,
    input wire [31:0] in_count_034_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_50_0,
    input wire [31:0] in_intel_reserved_ffwd_51_0,
    input wire [31:0] in_intel_reserved_ffwd_52_0,
    input wire [31:0] in_intel_reserved_ffwd_53_0,
    input wire [31:0] in_intel_reserved_ffwd_54_0,
    input wire [31:0] in_intel_reserved_ffwd_55_0,
    input wire [31:0] in_intel_reserved_ffwd_56_0,
    input wire [31:0] in_intel_reserved_ffwd_57_0,
    input wire [31:0] in_intel_reserved_ffwd_58_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_60_0,
    input wire [31:0] in_intel_reserved_ffwd_61_0,
    input wire [31:0] in_intel_reserved_ffwd_62_0,
    input wire [31:0] in_intel_reserved_ffwd_63_0,
    input wire [31:0] in_intel_reserved_ffwd_64_0,
    input wire [31:0] in_intel_reserved_ffwd_65_0,
    input wire [31:0] in_intel_reserved_ffwd_66_0,
    input wire [31:0] in_intel_reserved_ffwd_67_0,
    input wire [31:0] in_intel_reserved_ffwd_68_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_inc50,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [0:0] out_intel_reserved_ffwd_48_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_dijkstra_B4_stall_region_out_inc50;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_29_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_31_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_33_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_34_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_35_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_38_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_39_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_41_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_43_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_44_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_45_0;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_46_0;
    wire [0:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_48_0;
    wire [0:0] bb_dijkstra_B4_stall_region_out_stall_out;
    wire [0:0] bb_dijkstra_B4_stall_region_out_valid_out;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_0_tpl;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_1_tpl;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_2_tpl;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_3_tpl;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_4_tpl;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_5_tpl;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_6_tpl;
    wire [31:0] bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_7_tpl;
    wire [31:0] dijkstra_B4_branch_out_inc50;
    wire [0:0] dijkstra_B4_branch_out_stall_out;
    wire [0:0] dijkstra_B4_branch_out_valid_out_0;
    wire [31:0] dijkstra_B4_merge_out_count_034;
    wire [0:0] dijkstra_B4_merge_out_forked;
    wire [0:0] dijkstra_B4_merge_out_stall_out_0;
    wire [0:0] dijkstra_B4_merge_out_stall_out_1;
    wire [0:0] dijkstra_B4_merge_out_valid_out;


    // dijkstra_B4_merge(BLACKBOX,4)
    dijkstra_B4_merge thedijkstra_B4_merge (
        .in_count_034_0(in_count_034_0),
        .in_count_034_1(in_count_034_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_dijkstra_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_count_034(dijkstra_B4_merge_out_count_034),
        .out_forked(dijkstra_B4_merge_out_forked),
        .out_stall_out_0(dijkstra_B4_merge_out_stall_out_0),
        .out_stall_out_1(dijkstra_B4_merge_out_stall_out_1),
        .out_valid_out(dijkstra_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B4_stall_region(BLACKBOX,2)
    dijkstra_bb_B4_stall_region thebb_dijkstra_B4_stall_region (
        .in_count_034(dijkstra_B4_merge_out_count_034),
        .in_forked(dijkstra_B4_merge_out_forked),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_65_0(in_intel_reserved_ffwd_65_0),
        .in_intel_reserved_ffwd_66_0(in_intel_reserved_ffwd_66_0),
        .in_intel_reserved_ffwd_67_0(in_intel_reserved_ffwd_67_0),
        .in_intel_reserved_ffwd_68_0(in_intel_reserved_ffwd_68_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(dijkstra_B4_branch_out_stall_out),
        .in_valid_in(dijkstra_B4_merge_out_valid_out),
        .out_inc50(bb_dijkstra_B4_stall_region_out_inc50),
        .out_intel_reserved_ffwd_29_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_48_0(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_48_0),
        .out_stall_out(bb_dijkstra_B4_stall_region_out_stall_out),
        .out_valid_out(bb_dijkstra_B4_stall_region_out_valid_out),
        .out_intel_reserved_ffwd_47_0_0_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_0_tpl),
        .out_intel_reserved_ffwd_47_0_1_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_1_tpl),
        .out_intel_reserved_ffwd_47_0_2_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_2_tpl),
        .out_intel_reserved_ffwd_47_0_3_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_3_tpl),
        .out_intel_reserved_ffwd_47_0_4_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_4_tpl),
        .out_intel_reserved_ffwd_47_0_5_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_5_tpl),
        .out_intel_reserved_ffwd_47_0_6_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_6_tpl),
        .out_intel_reserved_ffwd_47_0_7_tpl(bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dijkstra_B4_branch(BLACKBOX,3)
    dijkstra_B4_branch thedijkstra_B4_branch (
        .in_inc50(bb_dijkstra_B4_stall_region_out_inc50),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_dijkstra_B4_stall_region_out_valid_out),
        .out_inc50(dijkstra_B4_branch_out_inc50),
        .out_stall_out(dijkstra_B4_branch_out_stall_out),
        .out_valid_out_0(dijkstra_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_inc50(GPOUT,48)
    assign out_inc50 = dijkstra_B4_branch_out_inc50;

    // out_intel_reserved_ffwd_29_0(GPOUT,49)
    assign out_intel_reserved_ffwd_29_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,50)
    assign out_intel_reserved_ffwd_30_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,51)
    assign out_intel_reserved_ffwd_31_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,52)
    assign out_intel_reserved_ffwd_32_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,53)
    assign out_intel_reserved_ffwd_33_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,54)
    assign out_intel_reserved_ffwd_34_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,55)
    assign out_intel_reserved_ffwd_35_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,56)
    assign out_intel_reserved_ffwd_36_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,57)
    assign out_intel_reserved_ffwd_37_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,58)
    assign out_intel_reserved_ffwd_38_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,59)
    assign out_intel_reserved_ffwd_39_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,60)
    assign out_intel_reserved_ffwd_40_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,61)
    assign out_intel_reserved_ffwd_41_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,62)
    assign out_intel_reserved_ffwd_42_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,63)
    assign out_intel_reserved_ffwd_43_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_43_0;

    // out_intel_reserved_ffwd_44_0(GPOUT,64)
    assign out_intel_reserved_ffwd_44_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_44_0;

    // out_intel_reserved_ffwd_45_0(GPOUT,65)
    assign out_intel_reserved_ffwd_45_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_45_0;

    // out_intel_reserved_ffwd_46_0(GPOUT,66)
    assign out_intel_reserved_ffwd_46_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_46_0;

    // out_intel_reserved_ffwd_48_0(GPOUT,67)
    assign out_intel_reserved_ffwd_48_0 = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_48_0;

    // out_stall_out_0(GPOUT,68)
    assign out_stall_out_0 = dijkstra_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,69)
    assign out_stall_out_1 = dijkstra_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,70)
    assign out_valid_out_0 = dijkstra_B4_branch_out_valid_out_0;

    // out_intel_reserved_ffwd_47_0_0_tpl(GPOUT,71)
    assign out_intel_reserved_ffwd_47_0_0_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_0_tpl;

    // out_intel_reserved_ffwd_47_0_1_tpl(GPOUT,72)
    assign out_intel_reserved_ffwd_47_0_1_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_1_tpl;

    // out_intel_reserved_ffwd_47_0_2_tpl(GPOUT,73)
    assign out_intel_reserved_ffwd_47_0_2_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_2_tpl;

    // out_intel_reserved_ffwd_47_0_3_tpl(GPOUT,74)
    assign out_intel_reserved_ffwd_47_0_3_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_3_tpl;

    // out_intel_reserved_ffwd_47_0_4_tpl(GPOUT,75)
    assign out_intel_reserved_ffwd_47_0_4_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_4_tpl;

    // out_intel_reserved_ffwd_47_0_5_tpl(GPOUT,76)
    assign out_intel_reserved_ffwd_47_0_5_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_5_tpl;

    // out_intel_reserved_ffwd_47_0_6_tpl(GPOUT,77)
    assign out_intel_reserved_ffwd_47_0_6_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_6_tpl;

    // out_intel_reserved_ffwd_47_0_7_tpl(GPOUT,78)
    assign out_intel_reserved_ffwd_47_0_7_tpl = bb_dijkstra_B4_stall_region_out_intel_reserved_ffwd_47_0_7_tpl;

endmodule
