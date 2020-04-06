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

// SystemVerilog created from cesarcipher_function_wrapper
// SystemVerilog created on Mon Apr  6 11:16:35 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cesarcipher_function_wrapper (
    input wire [63:0] avm_lm1_cesarcipher_readdata,
    input wire [0:0] avm_lm1_cesarcipher_readdatavalid,
    input wire [0:0] avm_lm1_cesarcipher_waitrequest,
    input wire [0:0] avm_lm1_cesarcipher_writeack,
    input wire [63:0] avm_unnamed_cesarcipher3_cesarcipher_readdata,
    input wire [0:0] avm_unnamed_cesarcipher3_cesarcipher_readdatavalid,
    input wire [0:0] avm_unnamed_cesarcipher3_cesarcipher_waitrequest,
    input wire [0:0] avm_unnamed_cesarcipher3_cesarcipher_writeack,
    input wire [127:0] avst_iord_bl_call_cesarcipher_data,
    input wire [0:0] avst_iord_bl_call_cesarcipher_valid,
    input wire [0:0] avst_iowr_bl_return_cesarcipher_almostfull,
    input wire [0:0] avst_iowr_bl_return_cesarcipher_ready,
    input wire [31:0] n,
    input wire [63:0] palavra,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1_cesarcipher_address,
    output wire [0:0] avm_lm1_cesarcipher_burstcount,
    output wire [7:0] avm_lm1_cesarcipher_byteenable,
    output wire [0:0] avm_lm1_cesarcipher_enable,
    output wire [0:0] avm_lm1_cesarcipher_read,
    output wire [0:0] avm_lm1_cesarcipher_write,
    output wire [63:0] avm_lm1_cesarcipher_writedata,
    output wire [63:0] avm_unnamed_cesarcipher3_cesarcipher_address,
    output wire [0:0] avm_unnamed_cesarcipher3_cesarcipher_burstcount,
    output wire [7:0] avm_unnamed_cesarcipher3_cesarcipher_byteenable,
    output wire [0:0] avm_unnamed_cesarcipher3_cesarcipher_enable,
    output wire [0:0] avm_unnamed_cesarcipher3_cesarcipher_read,
    output wire [0:0] avm_unnamed_cesarcipher3_cesarcipher_write,
    output wire [63:0] avm_unnamed_cesarcipher3_cesarcipher_writedata,
    output wire [0:0] avst_iord_bl_call_cesarcipher_ready,
    output wire [0:0] avst_iowr_bl_return_cesarcipher_data,
    output wire [0:0] avst_iowr_bl_return_cesarcipher_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] cesarcipher_function_out_iord_bl_call_cesarcipher_o_fifoready;
    wire [0:0] cesarcipher_function_out_iowr_bl_return_cesarcipher_o_fifodata;
    wire [0:0] cesarcipher_function_out_iowr_bl_return_cesarcipher_o_fifovalid;
    wire [63:0] cesarcipher_function_out_lm1_cesarcipher_avm_address;
    wire [0:0] cesarcipher_function_out_lm1_cesarcipher_avm_burstcount;
    wire [7:0] cesarcipher_function_out_lm1_cesarcipher_avm_byteenable;
    wire [0:0] cesarcipher_function_out_lm1_cesarcipher_avm_enable;
    wire [0:0] cesarcipher_function_out_lm1_cesarcipher_avm_read;
    wire [0:0] cesarcipher_function_out_lm1_cesarcipher_avm_write;
    wire [63:0] cesarcipher_function_out_lm1_cesarcipher_avm_writedata;
    wire [63:0] cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_address;
    wire [0:0] cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;
    wire [7:0] cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;
    wire [0:0] cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_enable;
    wire [0:0] cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_read;
    wire [0:0] cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_write;
    wire [63:0] cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;
    wire [127:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,29)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,9)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, palavra};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // cesarcipher_function(BLACKBOX,5)
    cesarcipher_function thecesarcipher_function (
        .in_arg_call(call_const_q),
        .in_arg_palavra(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_cesarcipher_i_fifodata(implicit_input_q),
        .in_iord_bl_call_cesarcipher_i_fifovalid(start),
        .in_iowr_bl_return_cesarcipher_i_fifoready(not_stall_q),
        .in_lm1_cesarcipher_avm_readdata(avm_lm1_cesarcipher_readdata),
        .in_lm1_cesarcipher_avm_readdatavalid(avm_lm1_cesarcipher_readdatavalid),
        .in_lm1_cesarcipher_avm_waitrequest(avm_lm1_cesarcipher_waitrequest),
        .in_lm1_cesarcipher_avm_writeack(avm_lm1_cesarcipher_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdata(avm_unnamed_cesarcipher3_cesarcipher_readdata),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid(avm_unnamed_cesarcipher3_cesarcipher_readdatavalid),
        .in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest(avm_unnamed_cesarcipher3_cesarcipher_waitrequest),
        .in_unnamed_cesarcipher3_cesarcipher_avm_writeack(avm_unnamed_cesarcipher3_cesarcipher_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_cesarcipher_o_fifoready(cesarcipher_function_out_iord_bl_call_cesarcipher_o_fifoready),
        .out_iowr_bl_return_cesarcipher_o_fifodata(cesarcipher_function_out_iowr_bl_return_cesarcipher_o_fifodata),
        .out_iowr_bl_return_cesarcipher_o_fifovalid(cesarcipher_function_out_iowr_bl_return_cesarcipher_o_fifovalid),
        .out_lm1_cesarcipher_avm_address(cesarcipher_function_out_lm1_cesarcipher_avm_address),
        .out_lm1_cesarcipher_avm_burstcount(cesarcipher_function_out_lm1_cesarcipher_avm_burstcount),
        .out_lm1_cesarcipher_avm_byteenable(cesarcipher_function_out_lm1_cesarcipher_avm_byteenable),
        .out_lm1_cesarcipher_avm_enable(cesarcipher_function_out_lm1_cesarcipher_avm_enable),
        .out_lm1_cesarcipher_avm_read(cesarcipher_function_out_lm1_cesarcipher_avm_read),
        .out_lm1_cesarcipher_avm_write(cesarcipher_function_out_lm1_cesarcipher_avm_write),
        .out_lm1_cesarcipher_avm_writedata(cesarcipher_function_out_lm1_cesarcipher_avm_writedata),
        .out_stall_out(),
        .out_unnamed_cesarcipher3_cesarcipher_avm_address(cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_address),
        .out_unnamed_cesarcipher3_cesarcipher_avm_burstcount(cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount),
        .out_unnamed_cesarcipher3_cesarcipher_avm_byteenable(cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_enable(cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_enable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_read(cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_read),
        .out_unnamed_cesarcipher3_cesarcipher_avm_write(cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_write),
        .out_unnamed_cesarcipher3_cesarcipher_avm_writedata(cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_cesarcipher_address(GPOUT,30)
    assign avm_lm1_cesarcipher_address = cesarcipher_function_out_lm1_cesarcipher_avm_address;

    // avm_lm1_cesarcipher_burstcount(GPOUT,31)
    assign avm_lm1_cesarcipher_burstcount = cesarcipher_function_out_lm1_cesarcipher_avm_burstcount;

    // avm_lm1_cesarcipher_byteenable(GPOUT,32)
    assign avm_lm1_cesarcipher_byteenable = cesarcipher_function_out_lm1_cesarcipher_avm_byteenable;

    // avm_lm1_cesarcipher_enable(GPOUT,33)
    assign avm_lm1_cesarcipher_enable = cesarcipher_function_out_lm1_cesarcipher_avm_enable;

    // avm_lm1_cesarcipher_read(GPOUT,34)
    assign avm_lm1_cesarcipher_read = cesarcipher_function_out_lm1_cesarcipher_avm_read;

    // avm_lm1_cesarcipher_write(GPOUT,35)
    assign avm_lm1_cesarcipher_write = cesarcipher_function_out_lm1_cesarcipher_avm_write;

    // avm_lm1_cesarcipher_writedata(GPOUT,36)
    assign avm_lm1_cesarcipher_writedata = cesarcipher_function_out_lm1_cesarcipher_avm_writedata;

    // avm_unnamed_cesarcipher3_cesarcipher_address(GPOUT,37)
    assign avm_unnamed_cesarcipher3_cesarcipher_address = cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_address;

    // avm_unnamed_cesarcipher3_cesarcipher_burstcount(GPOUT,38)
    assign avm_unnamed_cesarcipher3_cesarcipher_burstcount = cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;

    // avm_unnamed_cesarcipher3_cesarcipher_byteenable(GPOUT,39)
    assign avm_unnamed_cesarcipher3_cesarcipher_byteenable = cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;

    // avm_unnamed_cesarcipher3_cesarcipher_enable(GPOUT,40)
    assign avm_unnamed_cesarcipher3_cesarcipher_enable = cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_enable;

    // avm_unnamed_cesarcipher3_cesarcipher_read(GPOUT,41)
    assign avm_unnamed_cesarcipher3_cesarcipher_read = cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_read;

    // avm_unnamed_cesarcipher3_cesarcipher_write(GPOUT,42)
    assign avm_unnamed_cesarcipher3_cesarcipher_write = cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_write;

    // avm_unnamed_cesarcipher3_cesarcipher_writedata(GPOUT,43)
    assign avm_unnamed_cesarcipher3_cesarcipher_writedata = cesarcipher_function_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;

    // avst_iord_bl_call_cesarcipher_ready(GPOUT,44)
    assign avst_iord_bl_call_cesarcipher_ready = cesarcipher_function_out_iord_bl_call_cesarcipher_o_fifoready;

    // avst_iowr_bl_return_cesarcipher_data(GPOUT,45)
    assign avst_iowr_bl_return_cesarcipher_data = cesarcipher_function_out_iowr_bl_return_cesarcipher_o_fifodata;

    // avst_iowr_bl_return_cesarcipher_valid(GPOUT,46)
    assign avst_iowr_bl_return_cesarcipher_valid = cesarcipher_function_out_iowr_bl_return_cesarcipher_o_fifovalid;

    // not_ready(LOGICAL,28)
    assign not_ready_q = ~ (cesarcipher_function_out_iord_bl_call_cesarcipher_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,51)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,50)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,47)
    assign busy = busy_or_q;

    // done(GPOUT,48)
    assign done = cesarcipher_function_out_iowr_bl_return_cesarcipher_o_fifovalid;

endmodule
