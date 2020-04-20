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

// SystemVerilog created from chebyshev_function_wrapper
// SystemVerilog created on Sun Apr 19 21:41:10 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module chebyshev_function_wrapper (
    input wire [15:0] avm_memdep_1_chebyshev_readdata,
    input wire [0:0] avm_memdep_1_chebyshev_readdatavalid,
    input wire [0:0] avm_memdep_1_chebyshev_waitrequest,
    input wire [0:0] avm_memdep_1_chebyshev_writeack,
    input wire [15:0] avm_memdep_2_chebyshev_readdata,
    input wire [0:0] avm_memdep_2_chebyshev_readdatavalid,
    input wire [0:0] avm_memdep_2_chebyshev_waitrequest,
    input wire [0:0] avm_memdep_2_chebyshev_writeack,
    input wire [15:0] avm_memdep_chebyshev_readdata,
    input wire [0:0] avm_memdep_chebyshev_readdatavalid,
    input wire [0:0] avm_memdep_chebyshev_waitrequest,
    input wire [0:0] avm_memdep_chebyshev_writeack,
    input wire [15:0] avm_unnamed_chebyshev5_chebyshev_readdata,
    input wire [0:0] avm_unnamed_chebyshev5_chebyshev_readdatavalid,
    input wire [0:0] avm_unnamed_chebyshev5_chebyshev_waitrequest,
    input wire [0:0] avm_unnamed_chebyshev5_chebyshev_writeack,
    input wire [15:0] avm_unnamed_chebyshev7_chebyshev_readdata,
    input wire [0:0] avm_unnamed_chebyshev7_chebyshev_readdatavalid,
    input wire [0:0] avm_unnamed_chebyshev7_chebyshev_waitrequest,
    input wire [0:0] avm_unnamed_chebyshev7_chebyshev_writeack,
    input wire [31:0] avst_iord_bl_call_chebyshev_data,
    input wire [0:0] avst_iord_bl_call_chebyshev_valid,
    input wire [0:0] avst_iowr_bl_return_chebyshev_almostfull,
    input wire [0:0] avst_iowr_bl_return_chebyshev_ready,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_chebyshev_address,
    output wire [0:0] avm_memdep_1_chebyshev_burstcount,
    output wire [1:0] avm_memdep_1_chebyshev_byteenable,
    output wire [0:0] avm_memdep_1_chebyshev_enable,
    output wire [0:0] avm_memdep_1_chebyshev_read,
    output wire [0:0] avm_memdep_1_chebyshev_write,
    output wire [15:0] avm_memdep_1_chebyshev_writedata,
    output wire [31:0] avm_memdep_2_chebyshev_address,
    output wire [0:0] avm_memdep_2_chebyshev_burstcount,
    output wire [1:0] avm_memdep_2_chebyshev_byteenable,
    output wire [0:0] avm_memdep_2_chebyshev_enable,
    output wire [0:0] avm_memdep_2_chebyshev_read,
    output wire [0:0] avm_memdep_2_chebyshev_write,
    output wire [15:0] avm_memdep_2_chebyshev_writedata,
    output wire [31:0] avm_memdep_chebyshev_address,
    output wire [0:0] avm_memdep_chebyshev_burstcount,
    output wire [1:0] avm_memdep_chebyshev_byteenable,
    output wire [0:0] avm_memdep_chebyshev_enable,
    output wire [0:0] avm_memdep_chebyshev_read,
    output wire [0:0] avm_memdep_chebyshev_write,
    output wire [15:0] avm_memdep_chebyshev_writedata,
    output wire [31:0] avm_unnamed_chebyshev5_chebyshev_address,
    output wire [0:0] avm_unnamed_chebyshev5_chebyshev_burstcount,
    output wire [1:0] avm_unnamed_chebyshev5_chebyshev_byteenable,
    output wire [0:0] avm_unnamed_chebyshev5_chebyshev_enable,
    output wire [0:0] avm_unnamed_chebyshev5_chebyshev_read,
    output wire [0:0] avm_unnamed_chebyshev5_chebyshev_write,
    output wire [15:0] avm_unnamed_chebyshev5_chebyshev_writedata,
    output wire [31:0] avm_unnamed_chebyshev7_chebyshev_address,
    output wire [0:0] avm_unnamed_chebyshev7_chebyshev_burstcount,
    output wire [1:0] avm_unnamed_chebyshev7_chebyshev_byteenable,
    output wire [0:0] avm_unnamed_chebyshev7_chebyshev_enable,
    output wire [0:0] avm_unnamed_chebyshev7_chebyshev_read,
    output wire [0:0] avm_unnamed_chebyshev7_chebyshev_write,
    output wire [15:0] avm_unnamed_chebyshev7_chebyshev_writedata,
    output wire [0:0] avst_iord_bl_call_chebyshev_ready,
    output wire [31:0] avst_iowr_bl_return_chebyshev_data,
    output wire [0:0] avst_iowr_bl_return_chebyshev_valid,
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
    wire [0:0] chebyshev_function_out_iord_bl_call_chebyshev_o_fifoready;
    wire [31:0] chebyshev_function_out_iowr_bl_return_chebyshev_o_fifodata;
    wire [0:0] chebyshev_function_out_iowr_bl_return_chebyshev_o_fifovalid;
    wire [31:0] chebyshev_function_out_memdep_1_chebyshev_avm_address;
    wire [0:0] chebyshev_function_out_memdep_1_chebyshev_avm_burstcount;
    wire [1:0] chebyshev_function_out_memdep_1_chebyshev_avm_byteenable;
    wire [0:0] chebyshev_function_out_memdep_1_chebyshev_avm_enable;
    wire [0:0] chebyshev_function_out_memdep_1_chebyshev_avm_read;
    wire [0:0] chebyshev_function_out_memdep_1_chebyshev_avm_write;
    wire [15:0] chebyshev_function_out_memdep_1_chebyshev_avm_writedata;
    wire [31:0] chebyshev_function_out_memdep_2_chebyshev_avm_address;
    wire [0:0] chebyshev_function_out_memdep_2_chebyshev_avm_burstcount;
    wire [1:0] chebyshev_function_out_memdep_2_chebyshev_avm_byteenable;
    wire [0:0] chebyshev_function_out_memdep_2_chebyshev_avm_enable;
    wire [0:0] chebyshev_function_out_memdep_2_chebyshev_avm_read;
    wire [0:0] chebyshev_function_out_memdep_2_chebyshev_avm_write;
    wire [15:0] chebyshev_function_out_memdep_2_chebyshev_avm_writedata;
    wire [31:0] chebyshev_function_out_memdep_chebyshev_avm_address;
    wire [0:0] chebyshev_function_out_memdep_chebyshev_avm_burstcount;
    wire [1:0] chebyshev_function_out_memdep_chebyshev_avm_byteenable;
    wire [0:0] chebyshev_function_out_memdep_chebyshev_avm_enable;
    wire [0:0] chebyshev_function_out_memdep_chebyshev_avm_read;
    wire [0:0] chebyshev_function_out_memdep_chebyshev_avm_write;
    wire [15:0] chebyshev_function_out_memdep_chebyshev_avm_writedata;
    wire [31:0] chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_address;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_burstcount;
    wire [1:0] chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_byteenable;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_enable;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_read;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_write;
    wire [15:0] chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_writedata;
    wire [31:0] chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_address;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_burstcount;
    wire [1:0] chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_byteenable;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_enable;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_read;
    wire [0:0] chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_write;
    wire [15:0] chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_writedata;
    wire [31:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,39)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = idx;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // chebyshev_function(BLACKBOX,5)
    chebyshev_function thechebyshev_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_chebyshev_i_fifodata(implicit_input_q),
        .in_iord_bl_call_chebyshev_i_fifovalid(start),
        .in_iowr_bl_return_chebyshev_i_fifoready(not_stall_q),
        .in_memdep_1_chebyshev_avm_readdata(avm_memdep_1_chebyshev_readdata),
        .in_memdep_1_chebyshev_avm_readdatavalid(avm_memdep_1_chebyshev_readdatavalid),
        .in_memdep_1_chebyshev_avm_waitrequest(avm_memdep_1_chebyshev_waitrequest),
        .in_memdep_1_chebyshev_avm_writeack(avm_memdep_1_chebyshev_writeack),
        .in_memdep_2_chebyshev_avm_readdata(avm_memdep_2_chebyshev_readdata),
        .in_memdep_2_chebyshev_avm_readdatavalid(avm_memdep_2_chebyshev_readdatavalid),
        .in_memdep_2_chebyshev_avm_waitrequest(avm_memdep_2_chebyshev_waitrequest),
        .in_memdep_2_chebyshev_avm_writeack(avm_memdep_2_chebyshev_writeack),
        .in_memdep_chebyshev_avm_readdata(avm_memdep_chebyshev_readdata),
        .in_memdep_chebyshev_avm_readdatavalid(avm_memdep_chebyshev_readdatavalid),
        .in_memdep_chebyshev_avm_waitrequest(avm_memdep_chebyshev_waitrequest),
        .in_memdep_chebyshev_avm_writeack(avm_memdep_chebyshev_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_chebyshev5_chebyshev_avm_readdata(avm_unnamed_chebyshev5_chebyshev_readdata),
        .in_unnamed_chebyshev5_chebyshev_avm_readdatavalid(avm_unnamed_chebyshev5_chebyshev_readdatavalid),
        .in_unnamed_chebyshev5_chebyshev_avm_waitrequest(avm_unnamed_chebyshev5_chebyshev_waitrequest),
        .in_unnamed_chebyshev5_chebyshev_avm_writeack(avm_unnamed_chebyshev5_chebyshev_writeack),
        .in_unnamed_chebyshev7_chebyshev_avm_readdata(avm_unnamed_chebyshev7_chebyshev_readdata),
        .in_unnamed_chebyshev7_chebyshev_avm_readdatavalid(avm_unnamed_chebyshev7_chebyshev_readdatavalid),
        .in_unnamed_chebyshev7_chebyshev_avm_waitrequest(avm_unnamed_chebyshev7_chebyshev_waitrequest),
        .in_unnamed_chebyshev7_chebyshev_avm_writeack(avm_unnamed_chebyshev7_chebyshev_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_chebyshev_o_fifoready(chebyshev_function_out_iord_bl_call_chebyshev_o_fifoready),
        .out_iowr_bl_return_chebyshev_o_fifodata(chebyshev_function_out_iowr_bl_return_chebyshev_o_fifodata),
        .out_iowr_bl_return_chebyshev_o_fifovalid(chebyshev_function_out_iowr_bl_return_chebyshev_o_fifovalid),
        .out_memdep_1_chebyshev_avm_address(chebyshev_function_out_memdep_1_chebyshev_avm_address),
        .out_memdep_1_chebyshev_avm_burstcount(chebyshev_function_out_memdep_1_chebyshev_avm_burstcount),
        .out_memdep_1_chebyshev_avm_byteenable(chebyshev_function_out_memdep_1_chebyshev_avm_byteenable),
        .out_memdep_1_chebyshev_avm_enable(chebyshev_function_out_memdep_1_chebyshev_avm_enable),
        .out_memdep_1_chebyshev_avm_read(chebyshev_function_out_memdep_1_chebyshev_avm_read),
        .out_memdep_1_chebyshev_avm_write(chebyshev_function_out_memdep_1_chebyshev_avm_write),
        .out_memdep_1_chebyshev_avm_writedata(chebyshev_function_out_memdep_1_chebyshev_avm_writedata),
        .out_memdep_2_chebyshev_avm_address(chebyshev_function_out_memdep_2_chebyshev_avm_address),
        .out_memdep_2_chebyshev_avm_burstcount(chebyshev_function_out_memdep_2_chebyshev_avm_burstcount),
        .out_memdep_2_chebyshev_avm_byteenable(chebyshev_function_out_memdep_2_chebyshev_avm_byteenable),
        .out_memdep_2_chebyshev_avm_enable(chebyshev_function_out_memdep_2_chebyshev_avm_enable),
        .out_memdep_2_chebyshev_avm_read(chebyshev_function_out_memdep_2_chebyshev_avm_read),
        .out_memdep_2_chebyshev_avm_write(chebyshev_function_out_memdep_2_chebyshev_avm_write),
        .out_memdep_2_chebyshev_avm_writedata(chebyshev_function_out_memdep_2_chebyshev_avm_writedata),
        .out_memdep_chebyshev_avm_address(chebyshev_function_out_memdep_chebyshev_avm_address),
        .out_memdep_chebyshev_avm_burstcount(chebyshev_function_out_memdep_chebyshev_avm_burstcount),
        .out_memdep_chebyshev_avm_byteenable(chebyshev_function_out_memdep_chebyshev_avm_byteenable),
        .out_memdep_chebyshev_avm_enable(chebyshev_function_out_memdep_chebyshev_avm_enable),
        .out_memdep_chebyshev_avm_read(chebyshev_function_out_memdep_chebyshev_avm_read),
        .out_memdep_chebyshev_avm_write(chebyshev_function_out_memdep_chebyshev_avm_write),
        .out_memdep_chebyshev_avm_writedata(chebyshev_function_out_memdep_chebyshev_avm_writedata),
        .out_stall_out(),
        .out_unnamed_chebyshev5_chebyshev_avm_address(chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_address),
        .out_unnamed_chebyshev5_chebyshev_avm_burstcount(chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_burstcount),
        .out_unnamed_chebyshev5_chebyshev_avm_byteenable(chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_byteenable),
        .out_unnamed_chebyshev5_chebyshev_avm_enable(chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_enable),
        .out_unnamed_chebyshev5_chebyshev_avm_read(chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_read),
        .out_unnamed_chebyshev5_chebyshev_avm_write(chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_write),
        .out_unnamed_chebyshev5_chebyshev_avm_writedata(chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_writedata),
        .out_unnamed_chebyshev7_chebyshev_avm_address(chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_address),
        .out_unnamed_chebyshev7_chebyshev_avm_burstcount(chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_burstcount),
        .out_unnamed_chebyshev7_chebyshev_avm_byteenable(chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_byteenable),
        .out_unnamed_chebyshev7_chebyshev_avm_enable(chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_enable),
        .out_unnamed_chebyshev7_chebyshev_avm_read(chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_read),
        .out_unnamed_chebyshev7_chebyshev_avm_write(chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_write),
        .out_unnamed_chebyshev7_chebyshev_avm_writedata(chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_chebyshev_address(GPOUT,40)
    assign avm_memdep_1_chebyshev_address = chebyshev_function_out_memdep_1_chebyshev_avm_address;

    // avm_memdep_1_chebyshev_burstcount(GPOUT,41)
    assign avm_memdep_1_chebyshev_burstcount = chebyshev_function_out_memdep_1_chebyshev_avm_burstcount;

    // avm_memdep_1_chebyshev_byteenable(GPOUT,42)
    assign avm_memdep_1_chebyshev_byteenable = chebyshev_function_out_memdep_1_chebyshev_avm_byteenable;

    // avm_memdep_1_chebyshev_enable(GPOUT,43)
    assign avm_memdep_1_chebyshev_enable = chebyshev_function_out_memdep_1_chebyshev_avm_enable;

    // avm_memdep_1_chebyshev_read(GPOUT,44)
    assign avm_memdep_1_chebyshev_read = chebyshev_function_out_memdep_1_chebyshev_avm_read;

    // avm_memdep_1_chebyshev_write(GPOUT,45)
    assign avm_memdep_1_chebyshev_write = chebyshev_function_out_memdep_1_chebyshev_avm_write;

    // avm_memdep_1_chebyshev_writedata(GPOUT,46)
    assign avm_memdep_1_chebyshev_writedata = chebyshev_function_out_memdep_1_chebyshev_avm_writedata;

    // avm_memdep_2_chebyshev_address(GPOUT,47)
    assign avm_memdep_2_chebyshev_address = chebyshev_function_out_memdep_2_chebyshev_avm_address;

    // avm_memdep_2_chebyshev_burstcount(GPOUT,48)
    assign avm_memdep_2_chebyshev_burstcount = chebyshev_function_out_memdep_2_chebyshev_avm_burstcount;

    // avm_memdep_2_chebyshev_byteenable(GPOUT,49)
    assign avm_memdep_2_chebyshev_byteenable = chebyshev_function_out_memdep_2_chebyshev_avm_byteenable;

    // avm_memdep_2_chebyshev_enable(GPOUT,50)
    assign avm_memdep_2_chebyshev_enable = chebyshev_function_out_memdep_2_chebyshev_avm_enable;

    // avm_memdep_2_chebyshev_read(GPOUT,51)
    assign avm_memdep_2_chebyshev_read = chebyshev_function_out_memdep_2_chebyshev_avm_read;

    // avm_memdep_2_chebyshev_write(GPOUT,52)
    assign avm_memdep_2_chebyshev_write = chebyshev_function_out_memdep_2_chebyshev_avm_write;

    // avm_memdep_2_chebyshev_writedata(GPOUT,53)
    assign avm_memdep_2_chebyshev_writedata = chebyshev_function_out_memdep_2_chebyshev_avm_writedata;

    // avm_memdep_chebyshev_address(GPOUT,54)
    assign avm_memdep_chebyshev_address = chebyshev_function_out_memdep_chebyshev_avm_address;

    // avm_memdep_chebyshev_burstcount(GPOUT,55)
    assign avm_memdep_chebyshev_burstcount = chebyshev_function_out_memdep_chebyshev_avm_burstcount;

    // avm_memdep_chebyshev_byteenable(GPOUT,56)
    assign avm_memdep_chebyshev_byteenable = chebyshev_function_out_memdep_chebyshev_avm_byteenable;

    // avm_memdep_chebyshev_enable(GPOUT,57)
    assign avm_memdep_chebyshev_enable = chebyshev_function_out_memdep_chebyshev_avm_enable;

    // avm_memdep_chebyshev_read(GPOUT,58)
    assign avm_memdep_chebyshev_read = chebyshev_function_out_memdep_chebyshev_avm_read;

    // avm_memdep_chebyshev_write(GPOUT,59)
    assign avm_memdep_chebyshev_write = chebyshev_function_out_memdep_chebyshev_avm_write;

    // avm_memdep_chebyshev_writedata(GPOUT,60)
    assign avm_memdep_chebyshev_writedata = chebyshev_function_out_memdep_chebyshev_avm_writedata;

    // avm_unnamed_chebyshev5_chebyshev_address(GPOUT,61)
    assign avm_unnamed_chebyshev5_chebyshev_address = chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_address;

    // avm_unnamed_chebyshev5_chebyshev_burstcount(GPOUT,62)
    assign avm_unnamed_chebyshev5_chebyshev_burstcount = chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_burstcount;

    // avm_unnamed_chebyshev5_chebyshev_byteenable(GPOUT,63)
    assign avm_unnamed_chebyshev5_chebyshev_byteenable = chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_byteenable;

    // avm_unnamed_chebyshev5_chebyshev_enable(GPOUT,64)
    assign avm_unnamed_chebyshev5_chebyshev_enable = chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_enable;

    // avm_unnamed_chebyshev5_chebyshev_read(GPOUT,65)
    assign avm_unnamed_chebyshev5_chebyshev_read = chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_read;

    // avm_unnamed_chebyshev5_chebyshev_write(GPOUT,66)
    assign avm_unnamed_chebyshev5_chebyshev_write = chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_write;

    // avm_unnamed_chebyshev5_chebyshev_writedata(GPOUT,67)
    assign avm_unnamed_chebyshev5_chebyshev_writedata = chebyshev_function_out_unnamed_chebyshev5_chebyshev_avm_writedata;

    // avm_unnamed_chebyshev7_chebyshev_address(GPOUT,68)
    assign avm_unnamed_chebyshev7_chebyshev_address = chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_address;

    // avm_unnamed_chebyshev7_chebyshev_burstcount(GPOUT,69)
    assign avm_unnamed_chebyshev7_chebyshev_burstcount = chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_burstcount;

    // avm_unnamed_chebyshev7_chebyshev_byteenable(GPOUT,70)
    assign avm_unnamed_chebyshev7_chebyshev_byteenable = chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_byteenable;

    // avm_unnamed_chebyshev7_chebyshev_enable(GPOUT,71)
    assign avm_unnamed_chebyshev7_chebyshev_enable = chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_enable;

    // avm_unnamed_chebyshev7_chebyshev_read(GPOUT,72)
    assign avm_unnamed_chebyshev7_chebyshev_read = chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_read;

    // avm_unnamed_chebyshev7_chebyshev_write(GPOUT,73)
    assign avm_unnamed_chebyshev7_chebyshev_write = chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_write;

    // avm_unnamed_chebyshev7_chebyshev_writedata(GPOUT,74)
    assign avm_unnamed_chebyshev7_chebyshev_writedata = chebyshev_function_out_unnamed_chebyshev7_chebyshev_avm_writedata;

    // avst_iord_bl_call_chebyshev_ready(GPOUT,75)
    assign avst_iord_bl_call_chebyshev_ready = chebyshev_function_out_iord_bl_call_chebyshev_o_fifoready;

    // avst_iowr_bl_return_chebyshev_data(GPOUT,76)
    assign avst_iowr_bl_return_chebyshev_data = chebyshev_function_out_iowr_bl_return_chebyshev_o_fifodata;

    // avst_iowr_bl_return_chebyshev_valid(GPOUT,77)
    assign avst_iowr_bl_return_chebyshev_valid = chebyshev_function_out_iowr_bl_return_chebyshev_o_fifovalid;

    // not_ready(LOGICAL,38)
    assign not_ready_q = ~ (chebyshev_function_out_iord_bl_call_chebyshev_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,82)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,81)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,78)
    assign busy = busy_or_q;

    // done(GPOUT,79)
    assign done = chebyshev_function_out_iowr_bl_return_chebyshev_o_fifovalid;

    // returndata(GPOUT,80)
    assign returndata = chebyshev_function_out_iowr_bl_return_chebyshev_o_fifodata;

endmodule
