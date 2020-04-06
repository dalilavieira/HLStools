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

// SystemVerilog created from prod_matrix_bb_B5
// SystemVerilog created on Mon Apr  6 11:18:08 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_bb_B5 (
    output wire [0:0] out_feedback_out_15,
    input wire [0:0] in_feedback_stall_in_15,
    output wire [0:0] out_feedback_valid_out_15,
    input wire [0:0] in_memdep_2_0,
    input wire [0:0] in_notcmp2240_pop298_0,
    input wire [0:0] in_notcmp2635_pop256_0,
    input wire [0:0] in_pop244_0,
    input wire [0:0] in_pop287_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_memdep_2,
    output wire [0:0] out_notcmp2635_pop256,
    output wire [0:0] out_pop244,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_prod_matrix_B5_stall_region_out_feedback_out_15;
    wire [0:0] bb_prod_matrix_B5_stall_region_out_feedback_valid_out_15;
    wire [0:0] bb_prod_matrix_B5_stall_region_out_memdep_2;
    wire [0:0] bb_prod_matrix_B5_stall_region_out_notcmp2240_pop298;
    wire [0:0] bb_prod_matrix_B5_stall_region_out_notcmp2635_pop256;
    wire [0:0] bb_prod_matrix_B5_stall_region_out_pop244;
    wire [0:0] bb_prod_matrix_B5_stall_region_out_stall_out;
    wire [0:0] bb_prod_matrix_B5_stall_region_out_valid_out;
    wire [0:0] prod_matrix_B5_branch_out_memdep_2;
    wire [0:0] prod_matrix_B5_branch_out_notcmp2635_pop256;
    wire [0:0] prod_matrix_B5_branch_out_pop244;
    wire [0:0] prod_matrix_B5_branch_out_stall_out;
    wire [0:0] prod_matrix_B5_branch_out_valid_out_0;
    wire [0:0] prod_matrix_B5_branch_out_valid_out_1;
    wire [0:0] prod_matrix_B5_merge_out_memdep_2;
    wire [0:0] prod_matrix_B5_merge_out_notcmp2240_pop298;
    wire [0:0] prod_matrix_B5_merge_out_notcmp2635_pop256;
    wire [0:0] prod_matrix_B5_merge_out_pop244;
    wire [0:0] prod_matrix_B5_merge_out_pop287;
    wire [0:0] prod_matrix_B5_merge_out_stall_out_0;
    wire [0:0] prod_matrix_B5_merge_out_valid_out;


    // prod_matrix_B5_branch(BLACKBOX,20)
    prod_matrix_B5_branch theprod_matrix_B5_branch (
        .in_memdep_2(bb_prod_matrix_B5_stall_region_out_memdep_2),
        .in_notcmp2240_pop298(bb_prod_matrix_B5_stall_region_out_notcmp2240_pop298),
        .in_notcmp2635_pop256(bb_prod_matrix_B5_stall_region_out_notcmp2635_pop256),
        .in_pop244(bb_prod_matrix_B5_stall_region_out_pop244),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_prod_matrix_B5_stall_region_out_valid_out),
        .out_memdep_2(prod_matrix_B5_branch_out_memdep_2),
        .out_notcmp2635_pop256(prod_matrix_B5_branch_out_notcmp2635_pop256),
        .out_pop244(prod_matrix_B5_branch_out_pop244),
        .out_stall_out(prod_matrix_B5_branch_out_stall_out),
        .out_valid_out_0(prod_matrix_B5_branch_out_valid_out_0),
        .out_valid_out_1(prod_matrix_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // prod_matrix_B5_merge(BLACKBOX,21)
    prod_matrix_B5_merge theprod_matrix_B5_merge (
        .in_memdep_2_0(in_memdep_2_0),
        .in_notcmp2240_pop298_0(in_notcmp2240_pop298_0),
        .in_notcmp2635_pop256_0(in_notcmp2635_pop256_0),
        .in_pop244_0(in_pop244_0),
        .in_pop287_0(in_pop287_0),
        .in_stall_in(bb_prod_matrix_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_memdep_2(prod_matrix_B5_merge_out_memdep_2),
        .out_notcmp2240_pop298(prod_matrix_B5_merge_out_notcmp2240_pop298),
        .out_notcmp2635_pop256(prod_matrix_B5_merge_out_notcmp2635_pop256),
        .out_pop244(prod_matrix_B5_merge_out_pop244),
        .out_pop287(prod_matrix_B5_merge_out_pop287),
        .out_stall_out_0(prod_matrix_B5_merge_out_stall_out_0),
        .out_valid_out(prod_matrix_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B5_stall_region(BLACKBOX,2)
    prod_matrix_bb_B5_stall_region thebb_prod_matrix_B5_stall_region (
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_memdep_2(prod_matrix_B5_merge_out_memdep_2),
        .in_notcmp2240_pop298(prod_matrix_B5_merge_out_notcmp2240_pop298),
        .in_notcmp2635_pop256(prod_matrix_B5_merge_out_notcmp2635_pop256),
        .in_pop244(prod_matrix_B5_merge_out_pop244),
        .in_pop287(prod_matrix_B5_merge_out_pop287),
        .in_stall_in(prod_matrix_B5_branch_out_stall_out),
        .in_valid_in(prod_matrix_B5_merge_out_valid_out),
        .out_feedback_out_15(bb_prod_matrix_B5_stall_region_out_feedback_out_15),
        .out_feedback_valid_out_15(bb_prod_matrix_B5_stall_region_out_feedback_valid_out_15),
        .out_memdep_2(bb_prod_matrix_B5_stall_region_out_memdep_2),
        .out_notcmp2240_pop298(bb_prod_matrix_B5_stall_region_out_notcmp2240_pop298),
        .out_notcmp2635_pop256(bb_prod_matrix_B5_stall_region_out_notcmp2635_pop256),
        .out_pop244(bb_prod_matrix_B5_stall_region_out_pop244),
        .out_stall_out(bb_prod_matrix_B5_stall_region_out_stall_out),
        .out_valid_out(bb_prod_matrix_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_15_sync(GPOUT,3)
    assign out_feedback_out_15 = bb_prod_matrix_B5_stall_region_out_feedback_out_15;

    // feedback_valid_out_15_sync(GPOUT,5)
    assign out_feedback_valid_out_15 = bb_prod_matrix_B5_stall_region_out_feedback_valid_out_15;

    // out_memdep_2(GPOUT,14)
    assign out_memdep_2 = prod_matrix_B5_branch_out_memdep_2;

    // out_notcmp2635_pop256(GPOUT,15)
    assign out_notcmp2635_pop256 = prod_matrix_B5_branch_out_notcmp2635_pop256;

    // out_pop244(GPOUT,16)
    assign out_pop244 = prod_matrix_B5_branch_out_pop244;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = prod_matrix_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = prod_matrix_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,19)
    assign out_valid_out_1 = prod_matrix_B5_branch_out_valid_out_1;

endmodule
