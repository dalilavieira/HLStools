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

// SystemVerilog created from mmc_function_wrapper
// SystemVerilog created on Mon Apr  6 12:55:18 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmc_function_wrapper (
    input wire [31:0] a,
    input wire [63:0] avst_iord_bl_call_mmc_data,
    input wire [0:0] avst_iord_bl_call_mmc_valid,
    input wire [0:0] avst_iowr_bl_return_mmc_almostfull,
    input wire [0:0] avst_iowr_bl_return_mmc_ready,
    input wire [31:0] b,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_mmc_ready,
    output wire [31:0] avst_iowr_bl_return_mmc_data,
    output wire [0:0] avst_iowr_bl_return_mmc_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [63:0] implicit_input_q;
    wire [0:0] mmc_function_out_iord_bl_call_mmc_o_fifoready;
    wire [31:0] mmc_function_out_iowr_bl_return_mmc_o_fifodata;
    wire [0:0] mmc_function_out_iowr_bl_return_mmc_o_fifovalid;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,20)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = {b, a};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // mmc_function(BLACKBOX,18)
    mmc_function themmc_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_mmc_i_fifodata(implicit_input_q),
        .in_iord_bl_call_mmc_i_fifovalid(start),
        .in_iowr_bl_return_mmc_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_mmc_o_fifoready(mmc_function_out_iord_bl_call_mmc_o_fifoready),
        .out_iowr_bl_return_mmc_o_fifodata(mmc_function_out_iowr_bl_return_mmc_o_fifodata),
        .out_iowr_bl_return_mmc_o_fifovalid(mmc_function_out_iowr_bl_return_mmc_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_mmc_ready(GPOUT,21)
    assign avst_iord_bl_call_mmc_ready = mmc_function_out_iord_bl_call_mmc_o_fifoready;

    // avst_iowr_bl_return_mmc_data(GPOUT,22)
    assign avst_iowr_bl_return_mmc_data = mmc_function_out_iowr_bl_return_mmc_o_fifodata;

    // avst_iowr_bl_return_mmc_valid(GPOUT,23)
    assign avst_iowr_bl_return_mmc_valid = mmc_function_out_iowr_bl_return_mmc_o_fifovalid;

    // not_ready(LOGICAL,19)
    assign not_ready_q = ~ (mmc_function_out_iord_bl_call_mmc_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,28)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,27)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,24)
    assign busy = busy_or_q;

    // done(GPOUT,25)
    assign done = mmc_function_out_iowr_bl_return_mmc_o_fifovalid;

    // returndata(GPOUT,26)
    assign returndata = mmc_function_out_iowr_bl_return_mmc_o_fifodata;

endmodule
