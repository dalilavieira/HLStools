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

// SystemVerilog created from dijkstra_bb_B3
// SystemVerilog created on Mon Apr  6 12:54:17 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B3 (
    input wire [0:0] in_forked139_0,
    input wire [0:0] in_forked139_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_dijkstra_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out;
    wire [0:0] bb_dijkstra_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out;
    wire [0:0] bb_dijkstra_B3_stall_region_out_c0_exe2;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_14_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_24_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_25_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_27_0;
    wire [31:0] bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_28_0;
    wire [0:0] bb_dijkstra_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_dijkstra_B3_stall_region_out_stall_out;
    wire [0:0] bb_dijkstra_B3_stall_region_out_valid_out;
    wire [0:0] dijkstra_B3_branch_out_stall_out;
    wire [0:0] dijkstra_B3_branch_out_valid_out_0;
    wire [0:0] dijkstra_B3_branch_out_valid_out_1;
    wire [0:0] dijkstra_B3_merge_out_forked139;
    wire [0:0] dijkstra_B3_merge_out_stall_out_0;
    wire [0:0] dijkstra_B3_merge_out_stall_out_1;
    wire [0:0] dijkstra_B3_merge_out_valid_out;


    // dijkstra_B3_branch(BLACKBOX,3)
    dijkstra_B3_branch thedijkstra_B3_branch (
        .in_c0_exe2(bb_dijkstra_B3_stall_region_out_c0_exe2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_dijkstra_B3_stall_region_out_valid_out),
        .out_stall_out(dijkstra_B3_branch_out_stall_out),
        .out_valid_out_0(dijkstra_B3_branch_out_valid_out_0),
        .out_valid_out_1(dijkstra_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // dijkstra_B3_merge(BLACKBOX,4)
    dijkstra_B3_merge thedijkstra_B3_merge (
        .in_forked139_0(in_forked139_0),
        .in_forked139_1(in_forked139_1),
        .in_stall_in(bb_dijkstra_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked139(dijkstra_B3_merge_out_forked139),
        .out_stall_out_0(dijkstra_B3_merge_out_stall_out_0),
        .out_stall_out_1(dijkstra_B3_merge_out_stall_out_1),
        .out_valid_out(dijkstra_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B3_stall_region(BLACKBOX,2)
    dijkstra_bb_B3_stall_region thebb_dijkstra_B3_stall_region (
        .in_forked139(dijkstra_B3_merge_out_forked139),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dijkstra_B3_branch_out_stall_out),
        .in_valid_in(dijkstra_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out(bb_dijkstra_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out(bb_dijkstra_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out),
        .out_c0_exe2(bb_dijkstra_B3_stall_region_out_c0_exe2),
        .out_intel_reserved_ffwd_11_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_28_0),
        .out_pipeline_valid_out(bb_dijkstra_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_dijkstra_B3_stall_region_out_stall_out),
        .out_valid_out(bb_dijkstra_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,11)
    assign out_exiting_stall_out = bb_dijkstra_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,12)
    assign out_exiting_valid_out = bb_dijkstra_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out;

    // out_intel_reserved_ffwd_11_0(GPOUT,13)
    assign out_intel_reserved_ffwd_11_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,14)
    assign out_intel_reserved_ffwd_12_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,15)
    assign out_intel_reserved_ffwd_13_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,16)
    assign out_intel_reserved_ffwd_14_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,17)
    assign out_intel_reserved_ffwd_15_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,18)
    assign out_intel_reserved_ffwd_16_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,19)
    assign out_intel_reserved_ffwd_17_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,20)
    assign out_intel_reserved_ffwd_18_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,21)
    assign out_intel_reserved_ffwd_19_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,22)
    assign out_intel_reserved_ffwd_20_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,23)
    assign out_intel_reserved_ffwd_21_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,24)
    assign out_intel_reserved_ffwd_22_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,25)
    assign out_intel_reserved_ffwd_23_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,26)
    assign out_intel_reserved_ffwd_24_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,27)
    assign out_intel_reserved_ffwd_25_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,28)
    assign out_intel_reserved_ffwd_26_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,29)
    assign out_intel_reserved_ffwd_27_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,30)
    assign out_intel_reserved_ffwd_28_0 = bb_dijkstra_B3_stall_region_out_intel_reserved_ffwd_28_0;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = dijkstra_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = dijkstra_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = dijkstra_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,34)
    assign out_valid_out_1 = dijkstra_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,36)
    assign out_pipeline_valid_out = bb_dijkstra_B3_stall_region_out_pipeline_valid_out;

endmodule