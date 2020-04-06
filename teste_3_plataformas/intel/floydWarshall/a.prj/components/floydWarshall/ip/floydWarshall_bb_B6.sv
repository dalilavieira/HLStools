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

// SystemVerilog created from floydWarshall_bb_B6
// SystemVerilog created on Mon Apr  6 11:17:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B6 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_38_0,
    input wire [31:0] in_intel_reserved_ffwd_39_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_40_0,
    input wire [31:0] in_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0,
    input wire [31:0] in_intel_reserved_ffwd_48_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_50_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [31:0] in_k_028_0,
    input wire [31:0] in_k_028_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_inc55,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_floydWarshall_B6_stall_region_out_inc55;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_24_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_25_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_27_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_28_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_29_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_31_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_33_0;
    wire [0:0] bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_floydWarshall_B6_stall_region_out_stall_out;
    wire [0:0] bb_floydWarshall_B6_stall_region_out_valid_out;
    wire [31:0] floydWarshall_B6_branch_out_inc55;
    wire [0:0] floydWarshall_B6_branch_out_stall_out;
    wire [0:0] floydWarshall_B6_branch_out_valid_out_0;
    wire [0:0] floydWarshall_B6_merge_out_forked;
    wire [31:0] floydWarshall_B6_merge_out_k_028;
    wire [0:0] floydWarshall_B6_merge_out_stall_out_0;
    wire [0:0] floydWarshall_B6_merge_out_stall_out_1;
    wire [0:0] floydWarshall_B6_merge_out_valid_out;


    // floydWarshall_B6_merge(BLACKBOX,4)
    floydWarshall_B6_merge thefloydWarshall_B6_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_k_028_0(in_k_028_0),
        .in_k_028_1(in_k_028_1),
        .in_stall_in(bb_floydWarshall_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(floydWarshall_B6_merge_out_forked),
        .out_k_028(floydWarshall_B6_merge_out_k_028),
        .out_stall_out_0(floydWarshall_B6_merge_out_stall_out_0),
        .out_stall_out_1(floydWarshall_B6_merge_out_stall_out_1),
        .out_valid_out(floydWarshall_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B6_stall_region(BLACKBOX,2)
    floydWarshall_bb_B6_stall_region thebb_floydWarshall_B6_stall_region (
        .in_forked(floydWarshall_B6_merge_out_forked),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_k_028(floydWarshall_B6_merge_out_k_028),
        .in_stall_in(floydWarshall_B6_branch_out_stall_out),
        .in_valid_in(floydWarshall_B6_merge_out_valid_out),
        .out_inc55(bb_floydWarshall_B6_stall_region_out_inc55),
        .out_intel_reserved_ffwd_17_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_34_0),
        .out_stall_out(bb_floydWarshall_B6_stall_region_out_stall_out),
        .out_valid_out(bb_floydWarshall_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // floydWarshall_B6_branch(BLACKBOX,3)
    floydWarshall_B6_branch thefloydWarshall_B6_branch (
        .in_inc55(bb_floydWarshall_B6_stall_region_out_inc55),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_floydWarshall_B6_stall_region_out_valid_out),
        .out_inc55(floydWarshall_B6_branch_out_inc55),
        .out_stall_out(floydWarshall_B6_branch_out_stall_out),
        .out_valid_out_0(floydWarshall_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_inc55(GPOUT,44)
    assign out_inc55 = floydWarshall_B6_branch_out_inc55;

    // out_intel_reserved_ffwd_17_0(GPOUT,45)
    assign out_intel_reserved_ffwd_17_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,46)
    assign out_intel_reserved_ffwd_18_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,47)
    assign out_intel_reserved_ffwd_19_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,48)
    assign out_intel_reserved_ffwd_20_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,49)
    assign out_intel_reserved_ffwd_21_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,50)
    assign out_intel_reserved_ffwd_22_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,51)
    assign out_intel_reserved_ffwd_23_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,52)
    assign out_intel_reserved_ffwd_24_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,53)
    assign out_intel_reserved_ffwd_25_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,54)
    assign out_intel_reserved_ffwd_26_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,55)
    assign out_intel_reserved_ffwd_27_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,56)
    assign out_intel_reserved_ffwd_28_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,57)
    assign out_intel_reserved_ffwd_29_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,58)
    assign out_intel_reserved_ffwd_30_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,59)
    assign out_intel_reserved_ffwd_31_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,60)
    assign out_intel_reserved_ffwd_32_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,61)
    assign out_intel_reserved_ffwd_33_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,62)
    assign out_intel_reserved_ffwd_34_0 = bb_floydWarshall_B6_stall_region_out_intel_reserved_ffwd_34_0;

    // out_stall_out_0(GPOUT,63)
    assign out_stall_out_0 = floydWarshall_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,64)
    assign out_stall_out_1 = floydWarshall_B6_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = floydWarshall_B6_branch_out_valid_out_0;

endmodule
