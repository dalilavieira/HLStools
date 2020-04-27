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

// SystemVerilog created from sgfilter_function_wrapper
// SystemVerilog created on Mon Apr 27 09:54:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sgfilter_function_wrapper (
    input wire [15:0] avm_memdep_1_sgfilter_readdata,
    input wire [0:0] avm_memdep_1_sgfilter_readdatavalid,
    input wire [0:0] avm_memdep_1_sgfilter_waitrequest,
    input wire [0:0] avm_memdep_1_sgfilter_writeack,
    input wire [15:0] avm_memdep_2_sgfilter_readdata,
    input wire [0:0] avm_memdep_2_sgfilter_readdatavalid,
    input wire [0:0] avm_memdep_2_sgfilter_waitrequest,
    input wire [0:0] avm_memdep_2_sgfilter_writeack,
    input wire [15:0] avm_memdep_3_sgfilter_readdata,
    input wire [0:0] avm_memdep_3_sgfilter_readdatavalid,
    input wire [0:0] avm_memdep_3_sgfilter_waitrequest,
    input wire [0:0] avm_memdep_3_sgfilter_writeack,
    input wire [15:0] avm_memdep_sgfilter_readdata,
    input wire [0:0] avm_memdep_sgfilter_readdatavalid,
    input wire [0:0] avm_memdep_sgfilter_waitrequest,
    input wire [0:0] avm_memdep_sgfilter_writeack,
    input wire [15:0] avm_unnamed_sgfilter5_sgfilter_readdata,
    input wire [0:0] avm_unnamed_sgfilter5_sgfilter_readdatavalid,
    input wire [0:0] avm_unnamed_sgfilter5_sgfilter_waitrequest,
    input wire [0:0] avm_unnamed_sgfilter5_sgfilter_writeack,
    input wire [15:0] avm_unnamed_sgfilter7_sgfilter_readdata,
    input wire [0:0] avm_unnamed_sgfilter7_sgfilter_readdatavalid,
    input wire [0:0] avm_unnamed_sgfilter7_sgfilter_waitrequest,
    input wire [0:0] avm_unnamed_sgfilter7_sgfilter_writeack,
    input wire [15:0] avm_unnamed_sgfilter8_sgfilter_readdata,
    input wire [0:0] avm_unnamed_sgfilter8_sgfilter_readdatavalid,
    input wire [0:0] avm_unnamed_sgfilter8_sgfilter_waitrequest,
    input wire [0:0] avm_unnamed_sgfilter8_sgfilter_writeack,
    input wire [31:0] avst_iord_bl_call_sgfilter_data,
    input wire [0:0] avst_iord_bl_call_sgfilter_valid,
    input wire [0:0] avst_iowr_bl_return_sgfilter_almostfull,
    input wire [0:0] avst_iowr_bl_return_sgfilter_ready,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_sgfilter_address,
    output wire [0:0] avm_memdep_1_sgfilter_burstcount,
    output wire [1:0] avm_memdep_1_sgfilter_byteenable,
    output wire [0:0] avm_memdep_1_sgfilter_enable,
    output wire [0:0] avm_memdep_1_sgfilter_read,
    output wire [0:0] avm_memdep_1_sgfilter_write,
    output wire [15:0] avm_memdep_1_sgfilter_writedata,
    output wire [31:0] avm_memdep_2_sgfilter_address,
    output wire [0:0] avm_memdep_2_sgfilter_burstcount,
    output wire [1:0] avm_memdep_2_sgfilter_byteenable,
    output wire [0:0] avm_memdep_2_sgfilter_enable,
    output wire [0:0] avm_memdep_2_sgfilter_read,
    output wire [0:0] avm_memdep_2_sgfilter_write,
    output wire [15:0] avm_memdep_2_sgfilter_writedata,
    output wire [31:0] avm_memdep_3_sgfilter_address,
    output wire [0:0] avm_memdep_3_sgfilter_burstcount,
    output wire [1:0] avm_memdep_3_sgfilter_byteenable,
    output wire [0:0] avm_memdep_3_sgfilter_enable,
    output wire [0:0] avm_memdep_3_sgfilter_read,
    output wire [0:0] avm_memdep_3_sgfilter_write,
    output wire [15:0] avm_memdep_3_sgfilter_writedata,
    output wire [31:0] avm_memdep_sgfilter_address,
    output wire [0:0] avm_memdep_sgfilter_burstcount,
    output wire [1:0] avm_memdep_sgfilter_byteenable,
    output wire [0:0] avm_memdep_sgfilter_enable,
    output wire [0:0] avm_memdep_sgfilter_read,
    output wire [0:0] avm_memdep_sgfilter_write,
    output wire [15:0] avm_memdep_sgfilter_writedata,
    output wire [31:0] avm_unnamed_sgfilter5_sgfilter_address,
    output wire [0:0] avm_unnamed_sgfilter5_sgfilter_burstcount,
    output wire [1:0] avm_unnamed_sgfilter5_sgfilter_byteenable,
    output wire [0:0] avm_unnamed_sgfilter5_sgfilter_enable,
    output wire [0:0] avm_unnamed_sgfilter5_sgfilter_read,
    output wire [0:0] avm_unnamed_sgfilter5_sgfilter_write,
    output wire [15:0] avm_unnamed_sgfilter5_sgfilter_writedata,
    output wire [31:0] avm_unnamed_sgfilter7_sgfilter_address,
    output wire [0:0] avm_unnamed_sgfilter7_sgfilter_burstcount,
    output wire [1:0] avm_unnamed_sgfilter7_sgfilter_byteenable,
    output wire [0:0] avm_unnamed_sgfilter7_sgfilter_enable,
    output wire [0:0] avm_unnamed_sgfilter7_sgfilter_read,
    output wire [0:0] avm_unnamed_sgfilter7_sgfilter_write,
    output wire [15:0] avm_unnamed_sgfilter7_sgfilter_writedata,
    output wire [31:0] avm_unnamed_sgfilter8_sgfilter_address,
    output wire [0:0] avm_unnamed_sgfilter8_sgfilter_burstcount,
    output wire [1:0] avm_unnamed_sgfilter8_sgfilter_byteenable,
    output wire [0:0] avm_unnamed_sgfilter8_sgfilter_enable,
    output wire [0:0] avm_unnamed_sgfilter8_sgfilter_read,
    output wire [0:0] avm_unnamed_sgfilter8_sgfilter_write,
    output wire [15:0] avm_unnamed_sgfilter8_sgfilter_writedata,
    output wire [0:0] avst_iord_bl_call_sgfilter_ready,
    output wire [31:0] avst_iowr_bl_return_sgfilter_data,
    output wire [0:0] avst_iowr_bl_return_sgfilter_valid,
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
    wire [31:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] sgfilter_function_out_iord_bl_call_sgfilter_o_fifoready;
    wire [31:0] sgfilter_function_out_iowr_bl_return_sgfilter_o_fifodata;
    wire [0:0] sgfilter_function_out_iowr_bl_return_sgfilter_o_fifovalid;
    wire [31:0] sgfilter_function_out_memdep_1_sgfilter_avm_address;
    wire [0:0] sgfilter_function_out_memdep_1_sgfilter_avm_burstcount;
    wire [1:0] sgfilter_function_out_memdep_1_sgfilter_avm_byteenable;
    wire [0:0] sgfilter_function_out_memdep_1_sgfilter_avm_enable;
    wire [0:0] sgfilter_function_out_memdep_1_sgfilter_avm_read;
    wire [0:0] sgfilter_function_out_memdep_1_sgfilter_avm_write;
    wire [15:0] sgfilter_function_out_memdep_1_sgfilter_avm_writedata;
    wire [31:0] sgfilter_function_out_memdep_2_sgfilter_avm_address;
    wire [0:0] sgfilter_function_out_memdep_2_sgfilter_avm_burstcount;
    wire [1:0] sgfilter_function_out_memdep_2_sgfilter_avm_byteenable;
    wire [0:0] sgfilter_function_out_memdep_2_sgfilter_avm_enable;
    wire [0:0] sgfilter_function_out_memdep_2_sgfilter_avm_read;
    wire [0:0] sgfilter_function_out_memdep_2_sgfilter_avm_write;
    wire [15:0] sgfilter_function_out_memdep_2_sgfilter_avm_writedata;
    wire [31:0] sgfilter_function_out_memdep_3_sgfilter_avm_address;
    wire [0:0] sgfilter_function_out_memdep_3_sgfilter_avm_burstcount;
    wire [1:0] sgfilter_function_out_memdep_3_sgfilter_avm_byteenable;
    wire [0:0] sgfilter_function_out_memdep_3_sgfilter_avm_enable;
    wire [0:0] sgfilter_function_out_memdep_3_sgfilter_avm_read;
    wire [0:0] sgfilter_function_out_memdep_3_sgfilter_avm_write;
    wire [15:0] sgfilter_function_out_memdep_3_sgfilter_avm_writedata;
    wire [31:0] sgfilter_function_out_memdep_sgfilter_avm_address;
    wire [0:0] sgfilter_function_out_memdep_sgfilter_avm_burstcount;
    wire [1:0] sgfilter_function_out_memdep_sgfilter_avm_byteenable;
    wire [0:0] sgfilter_function_out_memdep_sgfilter_avm_enable;
    wire [0:0] sgfilter_function_out_memdep_sgfilter_avm_read;
    wire [0:0] sgfilter_function_out_memdep_sgfilter_avm_write;
    wire [15:0] sgfilter_function_out_memdep_sgfilter_avm_writedata;
    wire [31:0] sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_address;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_burstcount;
    wire [1:0] sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_byteenable;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_enable;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_read;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_write;
    wire [15:0] sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_writedata;
    wire [31:0] sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_address;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_burstcount;
    wire [1:0] sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_byteenable;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_enable;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_read;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_write;
    wire [15:0] sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_writedata;
    wire [31:0] sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_address;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_burstcount;
    wire [1:0] sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_byteenable;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_enable;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_read;
    wire [0:0] sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_write;
    wire [15:0] sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,46)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = idx;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // sgfilter_function(BLACKBOX,106)
    sgfilter_function thesgfilter_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_sgfilter_i_fifodata(implicit_input_q),
        .in_iord_bl_call_sgfilter_i_fifovalid(start),
        .in_iowr_bl_return_sgfilter_i_fifoready(not_stall_q),
        .in_memdep_1_sgfilter_avm_readdata(avm_memdep_1_sgfilter_readdata),
        .in_memdep_1_sgfilter_avm_readdatavalid(avm_memdep_1_sgfilter_readdatavalid),
        .in_memdep_1_sgfilter_avm_waitrequest(avm_memdep_1_sgfilter_waitrequest),
        .in_memdep_1_sgfilter_avm_writeack(avm_memdep_1_sgfilter_writeack),
        .in_memdep_2_sgfilter_avm_readdata(avm_memdep_2_sgfilter_readdata),
        .in_memdep_2_sgfilter_avm_readdatavalid(avm_memdep_2_sgfilter_readdatavalid),
        .in_memdep_2_sgfilter_avm_waitrequest(avm_memdep_2_sgfilter_waitrequest),
        .in_memdep_2_sgfilter_avm_writeack(avm_memdep_2_sgfilter_writeack),
        .in_memdep_3_sgfilter_avm_readdata(avm_memdep_3_sgfilter_readdata),
        .in_memdep_3_sgfilter_avm_readdatavalid(avm_memdep_3_sgfilter_readdatavalid),
        .in_memdep_3_sgfilter_avm_waitrequest(avm_memdep_3_sgfilter_waitrequest),
        .in_memdep_3_sgfilter_avm_writeack(avm_memdep_3_sgfilter_writeack),
        .in_memdep_sgfilter_avm_readdata(avm_memdep_sgfilter_readdata),
        .in_memdep_sgfilter_avm_readdatavalid(avm_memdep_sgfilter_readdatavalid),
        .in_memdep_sgfilter_avm_waitrequest(avm_memdep_sgfilter_waitrequest),
        .in_memdep_sgfilter_avm_writeack(avm_memdep_sgfilter_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_sgfilter5_sgfilter_avm_readdata(avm_unnamed_sgfilter5_sgfilter_readdata),
        .in_unnamed_sgfilter5_sgfilter_avm_readdatavalid(avm_unnamed_sgfilter5_sgfilter_readdatavalid),
        .in_unnamed_sgfilter5_sgfilter_avm_waitrequest(avm_unnamed_sgfilter5_sgfilter_waitrequest),
        .in_unnamed_sgfilter5_sgfilter_avm_writeack(avm_unnamed_sgfilter5_sgfilter_writeack),
        .in_unnamed_sgfilter7_sgfilter_avm_readdata(avm_unnamed_sgfilter7_sgfilter_readdata),
        .in_unnamed_sgfilter7_sgfilter_avm_readdatavalid(avm_unnamed_sgfilter7_sgfilter_readdatavalid),
        .in_unnamed_sgfilter7_sgfilter_avm_waitrequest(avm_unnamed_sgfilter7_sgfilter_waitrequest),
        .in_unnamed_sgfilter7_sgfilter_avm_writeack(avm_unnamed_sgfilter7_sgfilter_writeack),
        .in_unnamed_sgfilter8_sgfilter_avm_readdata(avm_unnamed_sgfilter8_sgfilter_readdata),
        .in_unnamed_sgfilter8_sgfilter_avm_readdatavalid(avm_unnamed_sgfilter8_sgfilter_readdatavalid),
        .in_unnamed_sgfilter8_sgfilter_avm_waitrequest(avm_unnamed_sgfilter8_sgfilter_waitrequest),
        .in_unnamed_sgfilter8_sgfilter_avm_writeack(avm_unnamed_sgfilter8_sgfilter_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_sgfilter_o_fifoready(sgfilter_function_out_iord_bl_call_sgfilter_o_fifoready),
        .out_iowr_bl_return_sgfilter_o_fifodata(sgfilter_function_out_iowr_bl_return_sgfilter_o_fifodata),
        .out_iowr_bl_return_sgfilter_o_fifovalid(sgfilter_function_out_iowr_bl_return_sgfilter_o_fifovalid),
        .out_memdep_1_sgfilter_avm_address(sgfilter_function_out_memdep_1_sgfilter_avm_address),
        .out_memdep_1_sgfilter_avm_burstcount(sgfilter_function_out_memdep_1_sgfilter_avm_burstcount),
        .out_memdep_1_sgfilter_avm_byteenable(sgfilter_function_out_memdep_1_sgfilter_avm_byteenable),
        .out_memdep_1_sgfilter_avm_enable(sgfilter_function_out_memdep_1_sgfilter_avm_enable),
        .out_memdep_1_sgfilter_avm_read(sgfilter_function_out_memdep_1_sgfilter_avm_read),
        .out_memdep_1_sgfilter_avm_write(sgfilter_function_out_memdep_1_sgfilter_avm_write),
        .out_memdep_1_sgfilter_avm_writedata(sgfilter_function_out_memdep_1_sgfilter_avm_writedata),
        .out_memdep_2_sgfilter_avm_address(sgfilter_function_out_memdep_2_sgfilter_avm_address),
        .out_memdep_2_sgfilter_avm_burstcount(sgfilter_function_out_memdep_2_sgfilter_avm_burstcount),
        .out_memdep_2_sgfilter_avm_byteenable(sgfilter_function_out_memdep_2_sgfilter_avm_byteenable),
        .out_memdep_2_sgfilter_avm_enable(sgfilter_function_out_memdep_2_sgfilter_avm_enable),
        .out_memdep_2_sgfilter_avm_read(sgfilter_function_out_memdep_2_sgfilter_avm_read),
        .out_memdep_2_sgfilter_avm_write(sgfilter_function_out_memdep_2_sgfilter_avm_write),
        .out_memdep_2_sgfilter_avm_writedata(sgfilter_function_out_memdep_2_sgfilter_avm_writedata),
        .out_memdep_3_sgfilter_avm_address(sgfilter_function_out_memdep_3_sgfilter_avm_address),
        .out_memdep_3_sgfilter_avm_burstcount(sgfilter_function_out_memdep_3_sgfilter_avm_burstcount),
        .out_memdep_3_sgfilter_avm_byteenable(sgfilter_function_out_memdep_3_sgfilter_avm_byteenable),
        .out_memdep_3_sgfilter_avm_enable(sgfilter_function_out_memdep_3_sgfilter_avm_enable),
        .out_memdep_3_sgfilter_avm_read(sgfilter_function_out_memdep_3_sgfilter_avm_read),
        .out_memdep_3_sgfilter_avm_write(sgfilter_function_out_memdep_3_sgfilter_avm_write),
        .out_memdep_3_sgfilter_avm_writedata(sgfilter_function_out_memdep_3_sgfilter_avm_writedata),
        .out_memdep_sgfilter_avm_address(sgfilter_function_out_memdep_sgfilter_avm_address),
        .out_memdep_sgfilter_avm_burstcount(sgfilter_function_out_memdep_sgfilter_avm_burstcount),
        .out_memdep_sgfilter_avm_byteenable(sgfilter_function_out_memdep_sgfilter_avm_byteenable),
        .out_memdep_sgfilter_avm_enable(sgfilter_function_out_memdep_sgfilter_avm_enable),
        .out_memdep_sgfilter_avm_read(sgfilter_function_out_memdep_sgfilter_avm_read),
        .out_memdep_sgfilter_avm_write(sgfilter_function_out_memdep_sgfilter_avm_write),
        .out_memdep_sgfilter_avm_writedata(sgfilter_function_out_memdep_sgfilter_avm_writedata),
        .out_stall_out(),
        .out_unnamed_sgfilter5_sgfilter_avm_address(sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_address),
        .out_unnamed_sgfilter5_sgfilter_avm_burstcount(sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_burstcount),
        .out_unnamed_sgfilter5_sgfilter_avm_byteenable(sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_byteenable),
        .out_unnamed_sgfilter5_sgfilter_avm_enable(sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_enable),
        .out_unnamed_sgfilter5_sgfilter_avm_read(sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_read),
        .out_unnamed_sgfilter5_sgfilter_avm_write(sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_write),
        .out_unnamed_sgfilter5_sgfilter_avm_writedata(sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_writedata),
        .out_unnamed_sgfilter7_sgfilter_avm_address(sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_address),
        .out_unnamed_sgfilter7_sgfilter_avm_burstcount(sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_burstcount),
        .out_unnamed_sgfilter7_sgfilter_avm_byteenable(sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_byteenable),
        .out_unnamed_sgfilter7_sgfilter_avm_enable(sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_enable),
        .out_unnamed_sgfilter7_sgfilter_avm_read(sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_read),
        .out_unnamed_sgfilter7_sgfilter_avm_write(sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_write),
        .out_unnamed_sgfilter7_sgfilter_avm_writedata(sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_writedata),
        .out_unnamed_sgfilter8_sgfilter_avm_address(sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_address),
        .out_unnamed_sgfilter8_sgfilter_avm_burstcount(sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_burstcount),
        .out_unnamed_sgfilter8_sgfilter_avm_byteenable(sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_byteenable),
        .out_unnamed_sgfilter8_sgfilter_avm_enable(sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_enable),
        .out_unnamed_sgfilter8_sgfilter_avm_read(sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_read),
        .out_unnamed_sgfilter8_sgfilter_avm_write(sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_write),
        .out_unnamed_sgfilter8_sgfilter_avm_writedata(sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_sgfilter_address(GPOUT,47)
    assign avm_memdep_1_sgfilter_address = sgfilter_function_out_memdep_1_sgfilter_avm_address;

    // avm_memdep_1_sgfilter_burstcount(GPOUT,48)
    assign avm_memdep_1_sgfilter_burstcount = sgfilter_function_out_memdep_1_sgfilter_avm_burstcount;

    // avm_memdep_1_sgfilter_byteenable(GPOUT,49)
    assign avm_memdep_1_sgfilter_byteenable = sgfilter_function_out_memdep_1_sgfilter_avm_byteenable;

    // avm_memdep_1_sgfilter_enable(GPOUT,50)
    assign avm_memdep_1_sgfilter_enable = sgfilter_function_out_memdep_1_sgfilter_avm_enable;

    // avm_memdep_1_sgfilter_read(GPOUT,51)
    assign avm_memdep_1_sgfilter_read = sgfilter_function_out_memdep_1_sgfilter_avm_read;

    // avm_memdep_1_sgfilter_write(GPOUT,52)
    assign avm_memdep_1_sgfilter_write = sgfilter_function_out_memdep_1_sgfilter_avm_write;

    // avm_memdep_1_sgfilter_writedata(GPOUT,53)
    assign avm_memdep_1_sgfilter_writedata = sgfilter_function_out_memdep_1_sgfilter_avm_writedata;

    // avm_memdep_2_sgfilter_address(GPOUT,54)
    assign avm_memdep_2_sgfilter_address = sgfilter_function_out_memdep_2_sgfilter_avm_address;

    // avm_memdep_2_sgfilter_burstcount(GPOUT,55)
    assign avm_memdep_2_sgfilter_burstcount = sgfilter_function_out_memdep_2_sgfilter_avm_burstcount;

    // avm_memdep_2_sgfilter_byteenable(GPOUT,56)
    assign avm_memdep_2_sgfilter_byteenable = sgfilter_function_out_memdep_2_sgfilter_avm_byteenable;

    // avm_memdep_2_sgfilter_enable(GPOUT,57)
    assign avm_memdep_2_sgfilter_enable = sgfilter_function_out_memdep_2_sgfilter_avm_enable;

    // avm_memdep_2_sgfilter_read(GPOUT,58)
    assign avm_memdep_2_sgfilter_read = sgfilter_function_out_memdep_2_sgfilter_avm_read;

    // avm_memdep_2_sgfilter_write(GPOUT,59)
    assign avm_memdep_2_sgfilter_write = sgfilter_function_out_memdep_2_sgfilter_avm_write;

    // avm_memdep_2_sgfilter_writedata(GPOUT,60)
    assign avm_memdep_2_sgfilter_writedata = sgfilter_function_out_memdep_2_sgfilter_avm_writedata;

    // avm_memdep_3_sgfilter_address(GPOUT,61)
    assign avm_memdep_3_sgfilter_address = sgfilter_function_out_memdep_3_sgfilter_avm_address;

    // avm_memdep_3_sgfilter_burstcount(GPOUT,62)
    assign avm_memdep_3_sgfilter_burstcount = sgfilter_function_out_memdep_3_sgfilter_avm_burstcount;

    // avm_memdep_3_sgfilter_byteenable(GPOUT,63)
    assign avm_memdep_3_sgfilter_byteenable = sgfilter_function_out_memdep_3_sgfilter_avm_byteenable;

    // avm_memdep_3_sgfilter_enable(GPOUT,64)
    assign avm_memdep_3_sgfilter_enable = sgfilter_function_out_memdep_3_sgfilter_avm_enable;

    // avm_memdep_3_sgfilter_read(GPOUT,65)
    assign avm_memdep_3_sgfilter_read = sgfilter_function_out_memdep_3_sgfilter_avm_read;

    // avm_memdep_3_sgfilter_write(GPOUT,66)
    assign avm_memdep_3_sgfilter_write = sgfilter_function_out_memdep_3_sgfilter_avm_write;

    // avm_memdep_3_sgfilter_writedata(GPOUT,67)
    assign avm_memdep_3_sgfilter_writedata = sgfilter_function_out_memdep_3_sgfilter_avm_writedata;

    // avm_memdep_sgfilter_address(GPOUT,68)
    assign avm_memdep_sgfilter_address = sgfilter_function_out_memdep_sgfilter_avm_address;

    // avm_memdep_sgfilter_burstcount(GPOUT,69)
    assign avm_memdep_sgfilter_burstcount = sgfilter_function_out_memdep_sgfilter_avm_burstcount;

    // avm_memdep_sgfilter_byteenable(GPOUT,70)
    assign avm_memdep_sgfilter_byteenable = sgfilter_function_out_memdep_sgfilter_avm_byteenable;

    // avm_memdep_sgfilter_enable(GPOUT,71)
    assign avm_memdep_sgfilter_enable = sgfilter_function_out_memdep_sgfilter_avm_enable;

    // avm_memdep_sgfilter_read(GPOUT,72)
    assign avm_memdep_sgfilter_read = sgfilter_function_out_memdep_sgfilter_avm_read;

    // avm_memdep_sgfilter_write(GPOUT,73)
    assign avm_memdep_sgfilter_write = sgfilter_function_out_memdep_sgfilter_avm_write;

    // avm_memdep_sgfilter_writedata(GPOUT,74)
    assign avm_memdep_sgfilter_writedata = sgfilter_function_out_memdep_sgfilter_avm_writedata;

    // avm_unnamed_sgfilter5_sgfilter_address(GPOUT,75)
    assign avm_unnamed_sgfilter5_sgfilter_address = sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_address;

    // avm_unnamed_sgfilter5_sgfilter_burstcount(GPOUT,76)
    assign avm_unnamed_sgfilter5_sgfilter_burstcount = sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_burstcount;

    // avm_unnamed_sgfilter5_sgfilter_byteenable(GPOUT,77)
    assign avm_unnamed_sgfilter5_sgfilter_byteenable = sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_byteenable;

    // avm_unnamed_sgfilter5_sgfilter_enable(GPOUT,78)
    assign avm_unnamed_sgfilter5_sgfilter_enable = sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_enable;

    // avm_unnamed_sgfilter5_sgfilter_read(GPOUT,79)
    assign avm_unnamed_sgfilter5_sgfilter_read = sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_read;

    // avm_unnamed_sgfilter5_sgfilter_write(GPOUT,80)
    assign avm_unnamed_sgfilter5_sgfilter_write = sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_write;

    // avm_unnamed_sgfilter5_sgfilter_writedata(GPOUT,81)
    assign avm_unnamed_sgfilter5_sgfilter_writedata = sgfilter_function_out_unnamed_sgfilter5_sgfilter_avm_writedata;

    // avm_unnamed_sgfilter7_sgfilter_address(GPOUT,82)
    assign avm_unnamed_sgfilter7_sgfilter_address = sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_address;

    // avm_unnamed_sgfilter7_sgfilter_burstcount(GPOUT,83)
    assign avm_unnamed_sgfilter7_sgfilter_burstcount = sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_burstcount;

    // avm_unnamed_sgfilter7_sgfilter_byteenable(GPOUT,84)
    assign avm_unnamed_sgfilter7_sgfilter_byteenable = sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_byteenable;

    // avm_unnamed_sgfilter7_sgfilter_enable(GPOUT,85)
    assign avm_unnamed_sgfilter7_sgfilter_enable = sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_enable;

    // avm_unnamed_sgfilter7_sgfilter_read(GPOUT,86)
    assign avm_unnamed_sgfilter7_sgfilter_read = sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_read;

    // avm_unnamed_sgfilter7_sgfilter_write(GPOUT,87)
    assign avm_unnamed_sgfilter7_sgfilter_write = sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_write;

    // avm_unnamed_sgfilter7_sgfilter_writedata(GPOUT,88)
    assign avm_unnamed_sgfilter7_sgfilter_writedata = sgfilter_function_out_unnamed_sgfilter7_sgfilter_avm_writedata;

    // avm_unnamed_sgfilter8_sgfilter_address(GPOUT,89)
    assign avm_unnamed_sgfilter8_sgfilter_address = sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_address;

    // avm_unnamed_sgfilter8_sgfilter_burstcount(GPOUT,90)
    assign avm_unnamed_sgfilter8_sgfilter_burstcount = sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_burstcount;

    // avm_unnamed_sgfilter8_sgfilter_byteenable(GPOUT,91)
    assign avm_unnamed_sgfilter8_sgfilter_byteenable = sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_byteenable;

    // avm_unnamed_sgfilter8_sgfilter_enable(GPOUT,92)
    assign avm_unnamed_sgfilter8_sgfilter_enable = sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_enable;

    // avm_unnamed_sgfilter8_sgfilter_read(GPOUT,93)
    assign avm_unnamed_sgfilter8_sgfilter_read = sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_read;

    // avm_unnamed_sgfilter8_sgfilter_write(GPOUT,94)
    assign avm_unnamed_sgfilter8_sgfilter_write = sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_write;

    // avm_unnamed_sgfilter8_sgfilter_writedata(GPOUT,95)
    assign avm_unnamed_sgfilter8_sgfilter_writedata = sgfilter_function_out_unnamed_sgfilter8_sgfilter_avm_writedata;

    // avst_iord_bl_call_sgfilter_ready(GPOUT,96)
    assign avst_iord_bl_call_sgfilter_ready = sgfilter_function_out_iord_bl_call_sgfilter_o_fifoready;

    // avst_iowr_bl_return_sgfilter_data(GPOUT,97)
    assign avst_iowr_bl_return_sgfilter_data = sgfilter_function_out_iowr_bl_return_sgfilter_o_fifodata;

    // avst_iowr_bl_return_sgfilter_valid(GPOUT,98)
    assign avst_iowr_bl_return_sgfilter_valid = sgfilter_function_out_iowr_bl_return_sgfilter_o_fifovalid;

    // not_ready(LOGICAL,45)
    assign not_ready_q = ~ (sgfilter_function_out_iord_bl_call_sgfilter_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,103)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,102)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,99)
    assign busy = busy_or_q;

    // done(GPOUT,100)
    assign done = sgfilter_function_out_iowr_bl_return_sgfilter_o_fifovalid;

    // returndata(GPOUT,101)
    assign returndata = sgfilter_function_out_iowr_bl_return_sgfilter_o_fifodata;

endmodule
