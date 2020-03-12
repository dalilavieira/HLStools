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

// SystemVerilog created from test_function_wrapper
// SystemVerilog created on Wed Mar 11 14:26:29 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module test_function_wrapper (
    input wire [0:0] avst_iord_bl_call_test_data,
    input wire [0:0] avst_iord_bl_call_test_valid,
    input wire [0:0] avst_iowr_bl_return_test_almostfull,
    input wire [0:0] avst_iowr_bl_return_test_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_test_ready,
    output wire [31:0] avst_iowr_bl_return_test_data,
    output wire [0:0] avst_iowr_bl_return_test_valid,
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
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] test_function_out_iord_bl_call_test_o_fifoready;
    wire [31:0] test_function_out_iowr_bl_return_test_o_fifodata;
    wire [0:0] test_function_out_iowr_bl_return_test_o_fifovalid;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,16)
    assign not_stall_q = ~ (stall);

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // test_function(BLACKBOX,27)
    test_function thetest_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_test_i_fifodata(avst_iord_bl_call_test_data),
        .in_iord_bl_call_test_i_fifovalid(start),
        .in_iowr_bl_return_test_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_test_o_fifoready(test_function_out_iord_bl_call_test_o_fifoready),
        .out_iowr_bl_return_test_o_fifodata(test_function_out_iowr_bl_return_test_o_fifodata),
        .out_iowr_bl_return_test_o_fifovalid(test_function_out_iowr_bl_return_test_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_test_ready(GPOUT,17)
    assign avst_iord_bl_call_test_ready = test_function_out_iord_bl_call_test_o_fifoready;

    // avst_iowr_bl_return_test_data(GPOUT,18)
    assign avst_iowr_bl_return_test_data = test_function_out_iowr_bl_return_test_o_fifodata;

    // avst_iowr_bl_return_test_valid(GPOUT,19)
    assign avst_iowr_bl_return_test_valid = test_function_out_iowr_bl_return_test_o_fifovalid;

    // not_ready(LOGICAL,15)
    assign not_ready_q = ~ (test_function_out_iord_bl_call_test_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,24)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,23)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,20)
    assign busy = busy_or_q;

    // done(GPOUT,21)
    assign done = test_function_out_iowr_bl_return_test_o_fifovalid;

    // returndata(GPOUT,22)
    assign returndata = test_function_out_iowr_bl_return_test_o_fifodata;

endmodule
