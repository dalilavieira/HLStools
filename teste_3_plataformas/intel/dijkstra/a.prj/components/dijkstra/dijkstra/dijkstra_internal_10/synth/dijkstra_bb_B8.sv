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

// SystemVerilog created from dijkstra_bb_B8
// SystemVerilog created on Mon Apr  6 11:16:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B8 (
    input wire [31:0] in_c0_exe32042_0,
    input wire [0:0] in_intel_reserved_ffwd_48_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe32042,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_dijkstra_B8_stall_region_out_c0_exe32042;
    wire [0:0] bb_dijkstra_B8_stall_region_out_cmp664;
    wire [0:0] bb_dijkstra_B8_stall_region_out_stall_out;
    wire [0:0] bb_dijkstra_B8_stall_region_out_valid_out;
    wire [31:0] dijkstra_B8_branch_out_c0_exe32042;
    wire [0:0] dijkstra_B8_branch_out_stall_out;
    wire [0:0] dijkstra_B8_branch_out_valid_out_0;
    wire [0:0] dijkstra_B8_branch_out_valid_out_1;
    wire [31:0] dijkstra_B8_merge_out_c0_exe32042;
    wire [0:0] dijkstra_B8_merge_out_stall_out_0;
    wire [0:0] dijkstra_B8_merge_out_valid_out;


    // dijkstra_B8_merge(BLACKBOX,4)
    dijkstra_B8_merge thedijkstra_B8_merge (
        .in_c0_exe32042_0(in_c0_exe32042_0),
        .in_stall_in(bb_dijkstra_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe32042(dijkstra_B8_merge_out_c0_exe32042),
        .out_stall_out_0(dijkstra_B8_merge_out_stall_out_0),
        .out_valid_out(dijkstra_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B8_stall_region(BLACKBOX,2)
    dijkstra_bb_B8_stall_region thebb_dijkstra_B8_stall_region (
        .in_c0_exe32042(dijkstra_B8_merge_out_c0_exe32042),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_stall_in(dijkstra_B8_branch_out_stall_out),
        .in_valid_in(dijkstra_B8_merge_out_valid_out),
        .out_c0_exe32042(bb_dijkstra_B8_stall_region_out_c0_exe32042),
        .out_cmp664(bb_dijkstra_B8_stall_region_out_cmp664),
        .out_stall_out(bb_dijkstra_B8_stall_region_out_stall_out),
        .out_valid_out(bb_dijkstra_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dijkstra_B8_branch(BLACKBOX,3)
    dijkstra_B8_branch thedijkstra_B8_branch (
        .in_c0_exe32042(bb_dijkstra_B8_stall_region_out_c0_exe32042),
        .in_cmp664(bb_dijkstra_B8_stall_region_out_cmp664),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_dijkstra_B8_stall_region_out_valid_out),
        .out_c0_exe32042(dijkstra_B8_branch_out_c0_exe32042),
        .out_stall_out(dijkstra_B8_branch_out_stall_out),
        .out_valid_out_0(dijkstra_B8_branch_out_valid_out_0),
        .out_valid_out_1(dijkstra_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe32042(GPOUT,10)
    assign out_c0_exe32042 = dijkstra_B8_branch_out_c0_exe32042;

    // out_stall_out_0(GPOUT,11)
    assign out_stall_out_0 = dijkstra_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,12)
    assign out_valid_out_0 = dijkstra_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,13)
    assign out_valid_out_1 = dijkstra_B8_branch_out_valid_out_1;

endmodule
