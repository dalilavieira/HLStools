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

// SystemVerilog created from main_function
// SystemVerilog created on Mon Mar 23 14:30:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_function (
    input wire [63:0] in_arg_call,
    input wire [0:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_main_B0_out_iord_bl_call_main_o_fifoready;
    wire [0:0] bb_main_B0_out_stall_out_0;
    wire [0:0] bb_main_B0_out_valid_out_0;


    // bb_main_B0(BLACKBOX,2)
    main_bb_B0 thebb_main_B0 (
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(in_valid_in),
        .out_iord_bl_call_main_o_fifoready(bb_main_B0_out_iord_bl_call_main_o_fifoready),
        .out_stall_out_0(bb_main_B0_out_stall_out_0),
        .out_valid_out_0(bb_main_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_main_o_fifoready(GPOUT,8)
    assign out_iord_bl_call_main_o_fifoready = bb_main_B0_out_iord_bl_call_main_o_fifoready;

    // out_stall_out(GPOUT,9)
    assign out_stall_out = bb_main_B0_out_stall_out_0;

    // out_valid_out(GPOUT,10)
    assign out_valid_out = bb_main_B0_out_valid_out_0;

endmodule
