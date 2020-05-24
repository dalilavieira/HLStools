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

// SystemVerilog created from main_bb_B0
// SystemVerilog created on Sun May 24 20:03:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_bb_B0 (
    input wire [0:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_main_B0_stall_region_out_iord_bl_call_main_o_fifoready;
    wire [0:0] bb_main_B0_stall_region_out_stall_out;
    wire [0:0] bb_main_B0_stall_region_out_valid_out;
    wire [0:0] main_B0_branch_out_stall_out;
    wire [0:0] main_B0_branch_out_valid_out_0;
    wire [0:0] main_B0_merge_out_stall_out_0;
    wire [0:0] main_B0_merge_out_valid_out;


    // main_B0_merge(BLACKBOX,8)
    main_B0_merge themain_B0_merge (
        .in_stall_in(bb_main_B0_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(main_B0_merge_out_stall_out_0),
        .out_valid_out(main_B0_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // main_B0_branch(BLACKBOX,7)
    main_B0_branch themain_B0_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_main_B0_stall_region_out_valid_out),
        .out_stall_out(main_B0_branch_out_stall_out),
        .out_valid_out_0(main_B0_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B0_stall_region(BLACKBOX,2)
    main_bb_B0_stall_region thebb_main_B0_stall_region (
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .in_stall_in(main_B0_branch_out_stall_out),
        .in_valid_in(main_B0_merge_out_valid_out),
        .out_iord_bl_call_main_o_fifoready(bb_main_B0_stall_region_out_iord_bl_call_main_o_fifoready),
        .out_stall_out(bb_main_B0_stall_region_out_stall_out),
        .out_valid_out(bb_main_B0_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_main_o_fifoready(GPOUT,9)
    assign out_iord_bl_call_main_o_fifoready = bb_main_B0_stall_region_out_iord_bl_call_main_o_fifoready;

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = main_B0_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = main_B0_branch_out_valid_out_0;

endmodule
