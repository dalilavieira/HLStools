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

// SystemVerilog created from eia608_from_utf8_function_wrapper
// SystemVerilog created on Sun May 24 22:38:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module eia608_from_utf8_function_wrapper (
    input wire [63:0] avm_lm12843_eia608_from_utf8_readdata,
    input wire [0:0] avm_lm12843_eia608_from_utf8_readdatavalid,
    input wire [0:0] avm_lm12843_eia608_from_utf8_waitrequest,
    input wire [0:0] avm_lm12843_eia608_from_utf8_writeack,
    input wire [63:0] avm_lm12964_eia608_from_utf8_readdata,
    input wire [0:0] avm_lm12964_eia608_from_utf8_readdatavalid,
    input wire [0:0] avm_lm12964_eia608_from_utf8_waitrequest,
    input wire [0:0] avm_lm12964_eia608_from_utf8_writeack,
    input wire [63:0] avm_lm2_eia608_from_utf8_readdata,
    input wire [0:0] avm_lm2_eia608_from_utf8_readdatavalid,
    input wire [0:0] avm_lm2_eia608_from_utf8_waitrequest,
    input wire [0:0] avm_lm2_eia608_from_utf8_writeack,
    input wire [63:0] avm_ml5_eia608_from_utf8_readdata,
    input wire [0:0] avm_ml5_eia608_from_utf8_readdatavalid,
    input wire [0:0] avm_ml5_eia608_from_utf8_waitrequest,
    input wire [0:0] avm_ml5_eia608_from_utf8_writeack,
    input wire [63:0] avst_iord_bl_call_eia608_from_utf8_data,
    input wire [0:0] avst_iord_bl_call_eia608_from_utf8_valid,
    input wire [0:0] avst_iowr_bl_return_eia608_from_utf8_almostfull,
    input wire [0:0] avst_iowr_bl_return_eia608_from_utf8_ready,
    input wire [63:0] s,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm12843_eia608_from_utf8_address,
    output wire [0:0] avm_lm12843_eia608_from_utf8_burstcount,
    output wire [7:0] avm_lm12843_eia608_from_utf8_byteenable,
    output wire [0:0] avm_lm12843_eia608_from_utf8_enable,
    output wire [0:0] avm_lm12843_eia608_from_utf8_read,
    output wire [0:0] avm_lm12843_eia608_from_utf8_write,
    output wire [63:0] avm_lm12843_eia608_from_utf8_writedata,
    output wire [63:0] avm_lm12964_eia608_from_utf8_address,
    output wire [0:0] avm_lm12964_eia608_from_utf8_burstcount,
    output wire [7:0] avm_lm12964_eia608_from_utf8_byteenable,
    output wire [0:0] avm_lm12964_eia608_from_utf8_enable,
    output wire [0:0] avm_lm12964_eia608_from_utf8_read,
    output wire [0:0] avm_lm12964_eia608_from_utf8_write,
    output wire [63:0] avm_lm12964_eia608_from_utf8_writedata,
    output wire [63:0] avm_lm2_eia608_from_utf8_address,
    output wire [0:0] avm_lm2_eia608_from_utf8_burstcount,
    output wire [7:0] avm_lm2_eia608_from_utf8_byteenable,
    output wire [0:0] avm_lm2_eia608_from_utf8_enable,
    output wire [0:0] avm_lm2_eia608_from_utf8_read,
    output wire [0:0] avm_lm2_eia608_from_utf8_write,
    output wire [63:0] avm_lm2_eia608_from_utf8_writedata,
    output wire [63:0] avm_ml5_eia608_from_utf8_address,
    output wire [0:0] avm_ml5_eia608_from_utf8_burstcount,
    output wire [7:0] avm_ml5_eia608_from_utf8_byteenable,
    output wire [0:0] avm_ml5_eia608_from_utf8_enable,
    output wire [0:0] avm_ml5_eia608_from_utf8_read,
    output wire [0:0] avm_ml5_eia608_from_utf8_write,
    output wire [63:0] avm_ml5_eia608_from_utf8_writedata,
    output wire [0:0] avst_iord_bl_call_eia608_from_utf8_ready,
    output wire [31:0] avst_iowr_bl_return_eia608_from_utf8_data,
    output wire [0:0] avst_iowr_bl_return_eia608_from_utf8_valid,
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
    wire [0:0] eia608_from_utf8_function_out_iord_bl_call_eia608_from_utf8_o_fifoready;
    wire [31:0] eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifodata;
    wire [0:0] eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;
    wire [63:0] eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_address;
    wire [0:0] eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_burstcount;
    wire [7:0] eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_byteenable;
    wire [0:0] eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_enable;
    wire [0:0] eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_read;
    wire [0:0] eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_write;
    wire [63:0] eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_writedata;
    wire [63:0] eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_address;
    wire [0:0] eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_burstcount;
    wire [7:0] eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_byteenable;
    wire [0:0] eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_enable;
    wire [0:0] eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_read;
    wire [0:0] eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_write;
    wire [63:0] eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_writedata;
    wire [63:0] eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_address;
    wire [0:0] eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_burstcount;
    wire [7:0] eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_byteenable;
    wire [0:0] eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_enable;
    wire [0:0] eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_read;
    wire [0:0] eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_write;
    wire [63:0] eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_writedata;
    wire [63:0] eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_address;
    wire [0:0] eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_burstcount;
    wire [7:0] eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_byteenable;
    wire [0:0] eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_enable;
    wire [0:0] eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_read;
    wire [0:0] eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_write;
    wire [63:0] eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_writedata;
    wire [63:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,35)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = s;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // eia608_from_utf8_function(BLACKBOX,7)
    eia608_from_utf8_function theeia608_from_utf8_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_s(call_const_q),
        .in_iord_bl_call_eia608_from_utf8_i_fifodata(implicit_input_q),
        .in_iord_bl_call_eia608_from_utf8_i_fifovalid(start),
        .in_iowr_bl_return_eia608_from_utf8_i_fifoready(not_stall_q),
        .in_lm12843_eia608_from_utf8_avm_readdata(avm_lm12843_eia608_from_utf8_readdata),
        .in_lm12843_eia608_from_utf8_avm_readdatavalid(avm_lm12843_eia608_from_utf8_readdatavalid),
        .in_lm12843_eia608_from_utf8_avm_waitrequest(avm_lm12843_eia608_from_utf8_waitrequest),
        .in_lm12843_eia608_from_utf8_avm_writeack(avm_lm12843_eia608_from_utf8_writeack),
        .in_lm12964_eia608_from_utf8_avm_readdata(avm_lm12964_eia608_from_utf8_readdata),
        .in_lm12964_eia608_from_utf8_avm_readdatavalid(avm_lm12964_eia608_from_utf8_readdatavalid),
        .in_lm12964_eia608_from_utf8_avm_waitrequest(avm_lm12964_eia608_from_utf8_waitrequest),
        .in_lm12964_eia608_from_utf8_avm_writeack(avm_lm12964_eia608_from_utf8_writeack),
        .in_lm2_eia608_from_utf8_avm_readdata(avm_lm2_eia608_from_utf8_readdata),
        .in_lm2_eia608_from_utf8_avm_readdatavalid(avm_lm2_eia608_from_utf8_readdatavalid),
        .in_lm2_eia608_from_utf8_avm_waitrequest(avm_lm2_eia608_from_utf8_waitrequest),
        .in_lm2_eia608_from_utf8_avm_writeack(avm_lm2_eia608_from_utf8_writeack),
        .in_ml5_eia608_from_utf8_avm_readdata(avm_ml5_eia608_from_utf8_readdata),
        .in_ml5_eia608_from_utf8_avm_readdatavalid(avm_ml5_eia608_from_utf8_readdatavalid),
        .in_ml5_eia608_from_utf8_avm_waitrequest(avm_ml5_eia608_from_utf8_waitrequest),
        .in_ml5_eia608_from_utf8_avm_writeack(avm_ml5_eia608_from_utf8_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_eia608_from_utf8_o_fifoready(eia608_from_utf8_function_out_iord_bl_call_eia608_from_utf8_o_fifoready),
        .out_iowr_bl_return_eia608_from_utf8_o_fifodata(eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifodata),
        .out_iowr_bl_return_eia608_from_utf8_o_fifovalid(eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifovalid),
        .out_lm12843_eia608_from_utf8_avm_address(eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_address),
        .out_lm12843_eia608_from_utf8_avm_burstcount(eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_burstcount),
        .out_lm12843_eia608_from_utf8_avm_byteenable(eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_byteenable),
        .out_lm12843_eia608_from_utf8_avm_enable(eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_enable),
        .out_lm12843_eia608_from_utf8_avm_read(eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_read),
        .out_lm12843_eia608_from_utf8_avm_write(eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_write),
        .out_lm12843_eia608_from_utf8_avm_writedata(eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_writedata),
        .out_lm12964_eia608_from_utf8_avm_address(eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_address),
        .out_lm12964_eia608_from_utf8_avm_burstcount(eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_burstcount),
        .out_lm12964_eia608_from_utf8_avm_byteenable(eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_byteenable),
        .out_lm12964_eia608_from_utf8_avm_enable(eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_enable),
        .out_lm12964_eia608_from_utf8_avm_read(eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_read),
        .out_lm12964_eia608_from_utf8_avm_write(eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_write),
        .out_lm12964_eia608_from_utf8_avm_writedata(eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_writedata),
        .out_lm2_eia608_from_utf8_avm_address(eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_address),
        .out_lm2_eia608_from_utf8_avm_burstcount(eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_burstcount),
        .out_lm2_eia608_from_utf8_avm_byteenable(eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_byteenable),
        .out_lm2_eia608_from_utf8_avm_enable(eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_enable),
        .out_lm2_eia608_from_utf8_avm_read(eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_read),
        .out_lm2_eia608_from_utf8_avm_write(eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_write),
        .out_lm2_eia608_from_utf8_avm_writedata(eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_writedata),
        .out_ml5_eia608_from_utf8_avm_address(eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_address),
        .out_ml5_eia608_from_utf8_avm_burstcount(eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_burstcount),
        .out_ml5_eia608_from_utf8_avm_byteenable(eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_byteenable),
        .out_ml5_eia608_from_utf8_avm_enable(eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_enable),
        .out_ml5_eia608_from_utf8_avm_read(eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_read),
        .out_ml5_eia608_from_utf8_avm_write(eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_write),
        .out_ml5_eia608_from_utf8_avm_writedata(eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm12843_eia608_from_utf8_address(GPOUT,36)
    assign avm_lm12843_eia608_from_utf8_address = eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_address;

    // avm_lm12843_eia608_from_utf8_burstcount(GPOUT,37)
    assign avm_lm12843_eia608_from_utf8_burstcount = eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_burstcount;

    // avm_lm12843_eia608_from_utf8_byteenable(GPOUT,38)
    assign avm_lm12843_eia608_from_utf8_byteenable = eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_byteenable;

    // avm_lm12843_eia608_from_utf8_enable(GPOUT,39)
    assign avm_lm12843_eia608_from_utf8_enable = eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_enable;

    // avm_lm12843_eia608_from_utf8_read(GPOUT,40)
    assign avm_lm12843_eia608_from_utf8_read = eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_read;

    // avm_lm12843_eia608_from_utf8_write(GPOUT,41)
    assign avm_lm12843_eia608_from_utf8_write = eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_write;

    // avm_lm12843_eia608_from_utf8_writedata(GPOUT,42)
    assign avm_lm12843_eia608_from_utf8_writedata = eia608_from_utf8_function_out_lm12843_eia608_from_utf8_avm_writedata;

    // avm_lm12964_eia608_from_utf8_address(GPOUT,43)
    assign avm_lm12964_eia608_from_utf8_address = eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_address;

    // avm_lm12964_eia608_from_utf8_burstcount(GPOUT,44)
    assign avm_lm12964_eia608_from_utf8_burstcount = eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_burstcount;

    // avm_lm12964_eia608_from_utf8_byteenable(GPOUT,45)
    assign avm_lm12964_eia608_from_utf8_byteenable = eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_byteenable;

    // avm_lm12964_eia608_from_utf8_enable(GPOUT,46)
    assign avm_lm12964_eia608_from_utf8_enable = eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_enable;

    // avm_lm12964_eia608_from_utf8_read(GPOUT,47)
    assign avm_lm12964_eia608_from_utf8_read = eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_read;

    // avm_lm12964_eia608_from_utf8_write(GPOUT,48)
    assign avm_lm12964_eia608_from_utf8_write = eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_write;

    // avm_lm12964_eia608_from_utf8_writedata(GPOUT,49)
    assign avm_lm12964_eia608_from_utf8_writedata = eia608_from_utf8_function_out_lm12964_eia608_from_utf8_avm_writedata;

    // avm_lm2_eia608_from_utf8_address(GPOUT,50)
    assign avm_lm2_eia608_from_utf8_address = eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_address;

    // avm_lm2_eia608_from_utf8_burstcount(GPOUT,51)
    assign avm_lm2_eia608_from_utf8_burstcount = eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_burstcount;

    // avm_lm2_eia608_from_utf8_byteenable(GPOUT,52)
    assign avm_lm2_eia608_from_utf8_byteenable = eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_byteenable;

    // avm_lm2_eia608_from_utf8_enable(GPOUT,53)
    assign avm_lm2_eia608_from_utf8_enable = eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_enable;

    // avm_lm2_eia608_from_utf8_read(GPOUT,54)
    assign avm_lm2_eia608_from_utf8_read = eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_read;

    // avm_lm2_eia608_from_utf8_write(GPOUT,55)
    assign avm_lm2_eia608_from_utf8_write = eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_write;

    // avm_lm2_eia608_from_utf8_writedata(GPOUT,56)
    assign avm_lm2_eia608_from_utf8_writedata = eia608_from_utf8_function_out_lm2_eia608_from_utf8_avm_writedata;

    // avm_ml5_eia608_from_utf8_address(GPOUT,57)
    assign avm_ml5_eia608_from_utf8_address = eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_address;

    // avm_ml5_eia608_from_utf8_burstcount(GPOUT,58)
    assign avm_ml5_eia608_from_utf8_burstcount = eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_burstcount;

    // avm_ml5_eia608_from_utf8_byteenable(GPOUT,59)
    assign avm_ml5_eia608_from_utf8_byteenable = eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_byteenable;

    // avm_ml5_eia608_from_utf8_enable(GPOUT,60)
    assign avm_ml5_eia608_from_utf8_enable = eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_enable;

    // avm_ml5_eia608_from_utf8_read(GPOUT,61)
    assign avm_ml5_eia608_from_utf8_read = eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_read;

    // avm_ml5_eia608_from_utf8_write(GPOUT,62)
    assign avm_ml5_eia608_from_utf8_write = eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_write;

    // avm_ml5_eia608_from_utf8_writedata(GPOUT,63)
    assign avm_ml5_eia608_from_utf8_writedata = eia608_from_utf8_function_out_ml5_eia608_from_utf8_avm_writedata;

    // avst_iord_bl_call_eia608_from_utf8_ready(GPOUT,64)
    assign avst_iord_bl_call_eia608_from_utf8_ready = eia608_from_utf8_function_out_iord_bl_call_eia608_from_utf8_o_fifoready;

    // avst_iowr_bl_return_eia608_from_utf8_data(GPOUT,65)
    assign avst_iowr_bl_return_eia608_from_utf8_data = eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifodata;

    // avst_iowr_bl_return_eia608_from_utf8_valid(GPOUT,66)
    assign avst_iowr_bl_return_eia608_from_utf8_valid = eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;

    // not_ready(LOGICAL,34)
    assign not_ready_q = ~ (eia608_from_utf8_function_out_iord_bl_call_eia608_from_utf8_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,71)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,70)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,67)
    assign busy = busy_or_q;

    // done(GPOUT,68)
    assign done = eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;

    // returndata(GPOUT,69)
    assign returndata = eia608_from_utf8_function_out_iowr_bl_return_eia608_from_utf8_o_fifodata;

endmodule
