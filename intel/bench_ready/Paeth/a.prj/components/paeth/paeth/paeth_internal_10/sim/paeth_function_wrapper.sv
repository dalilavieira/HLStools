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

// SystemVerilog created from paeth_function_wrapper
// SystemVerilog created on Mon Apr 27 09:50:26 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module paeth_function_wrapper (
    input wire [15:0] avm_memdep_1_paeth_readdata,
    input wire [0:0] avm_memdep_1_paeth_readdatavalid,
    input wire [0:0] avm_memdep_1_paeth_waitrequest,
    input wire [0:0] avm_memdep_1_paeth_writeack,
    input wire [15:0] avm_memdep_2_paeth_readdata,
    input wire [0:0] avm_memdep_2_paeth_readdatavalid,
    input wire [0:0] avm_memdep_2_paeth_waitrequest,
    input wire [0:0] avm_memdep_2_paeth_writeack,
    input wire [15:0] avm_memdep_3_paeth_readdata,
    input wire [0:0] avm_memdep_3_paeth_readdatavalid,
    input wire [0:0] avm_memdep_3_paeth_waitrequest,
    input wire [0:0] avm_memdep_3_paeth_writeack,
    input wire [15:0] avm_memdep_4_paeth_readdata,
    input wire [0:0] avm_memdep_4_paeth_readdatavalid,
    input wire [0:0] avm_memdep_4_paeth_waitrequest,
    input wire [0:0] avm_memdep_4_paeth_writeack,
    input wire [15:0] avm_memdep_paeth_readdata,
    input wire [0:0] avm_memdep_paeth_readdatavalid,
    input wire [0:0] avm_memdep_paeth_waitrequest,
    input wire [0:0] avm_memdep_paeth_writeack,
    input wire [15:0] avm_unnamed_paeth5_paeth_readdata,
    input wire [0:0] avm_unnamed_paeth5_paeth_readdatavalid,
    input wire [0:0] avm_unnamed_paeth5_paeth_waitrequest,
    input wire [0:0] avm_unnamed_paeth5_paeth_writeack,
    input wire [15:0] avm_unnamed_paeth7_paeth_readdata,
    input wire [0:0] avm_unnamed_paeth7_paeth_readdatavalid,
    input wire [0:0] avm_unnamed_paeth7_paeth_waitrequest,
    input wire [0:0] avm_unnamed_paeth7_paeth_writeack,
    input wire [15:0] avm_unnamed_paeth8_paeth_readdata,
    input wire [0:0] avm_unnamed_paeth8_paeth_readdatavalid,
    input wire [0:0] avm_unnamed_paeth8_paeth_waitrequest,
    input wire [0:0] avm_unnamed_paeth8_paeth_writeack,
    input wire [15:0] avm_unnamed_paeth9_paeth_readdata,
    input wire [0:0] avm_unnamed_paeth9_paeth_readdatavalid,
    input wire [0:0] avm_unnamed_paeth9_paeth_waitrequest,
    input wire [0:0] avm_unnamed_paeth9_paeth_writeack,
    input wire [31:0] avst_iord_bl_call_paeth_data,
    input wire [0:0] avst_iord_bl_call_paeth_valid,
    input wire [0:0] avst_iowr_bl_return_paeth_almostfull,
    input wire [0:0] avst_iowr_bl_return_paeth_ready,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_paeth_address,
    output wire [0:0] avm_memdep_1_paeth_burstcount,
    output wire [1:0] avm_memdep_1_paeth_byteenable,
    output wire [0:0] avm_memdep_1_paeth_enable,
    output wire [0:0] avm_memdep_1_paeth_read,
    output wire [0:0] avm_memdep_1_paeth_write,
    output wire [15:0] avm_memdep_1_paeth_writedata,
    output wire [31:0] avm_memdep_2_paeth_address,
    output wire [0:0] avm_memdep_2_paeth_burstcount,
    output wire [1:0] avm_memdep_2_paeth_byteenable,
    output wire [0:0] avm_memdep_2_paeth_enable,
    output wire [0:0] avm_memdep_2_paeth_read,
    output wire [0:0] avm_memdep_2_paeth_write,
    output wire [15:0] avm_memdep_2_paeth_writedata,
    output wire [31:0] avm_memdep_3_paeth_address,
    output wire [0:0] avm_memdep_3_paeth_burstcount,
    output wire [1:0] avm_memdep_3_paeth_byteenable,
    output wire [0:0] avm_memdep_3_paeth_enable,
    output wire [0:0] avm_memdep_3_paeth_read,
    output wire [0:0] avm_memdep_3_paeth_write,
    output wire [15:0] avm_memdep_3_paeth_writedata,
    output wire [31:0] avm_memdep_4_paeth_address,
    output wire [0:0] avm_memdep_4_paeth_burstcount,
    output wire [1:0] avm_memdep_4_paeth_byteenable,
    output wire [0:0] avm_memdep_4_paeth_enable,
    output wire [0:0] avm_memdep_4_paeth_read,
    output wire [0:0] avm_memdep_4_paeth_write,
    output wire [15:0] avm_memdep_4_paeth_writedata,
    output wire [31:0] avm_memdep_paeth_address,
    output wire [0:0] avm_memdep_paeth_burstcount,
    output wire [1:0] avm_memdep_paeth_byteenable,
    output wire [0:0] avm_memdep_paeth_enable,
    output wire [0:0] avm_memdep_paeth_read,
    output wire [0:0] avm_memdep_paeth_write,
    output wire [15:0] avm_memdep_paeth_writedata,
    output wire [31:0] avm_unnamed_paeth5_paeth_address,
    output wire [0:0] avm_unnamed_paeth5_paeth_burstcount,
    output wire [1:0] avm_unnamed_paeth5_paeth_byteenable,
    output wire [0:0] avm_unnamed_paeth5_paeth_enable,
    output wire [0:0] avm_unnamed_paeth5_paeth_read,
    output wire [0:0] avm_unnamed_paeth5_paeth_write,
    output wire [15:0] avm_unnamed_paeth5_paeth_writedata,
    output wire [31:0] avm_unnamed_paeth7_paeth_address,
    output wire [0:0] avm_unnamed_paeth7_paeth_burstcount,
    output wire [1:0] avm_unnamed_paeth7_paeth_byteenable,
    output wire [0:0] avm_unnamed_paeth7_paeth_enable,
    output wire [0:0] avm_unnamed_paeth7_paeth_read,
    output wire [0:0] avm_unnamed_paeth7_paeth_write,
    output wire [15:0] avm_unnamed_paeth7_paeth_writedata,
    output wire [31:0] avm_unnamed_paeth8_paeth_address,
    output wire [0:0] avm_unnamed_paeth8_paeth_burstcount,
    output wire [1:0] avm_unnamed_paeth8_paeth_byteenable,
    output wire [0:0] avm_unnamed_paeth8_paeth_enable,
    output wire [0:0] avm_unnamed_paeth8_paeth_read,
    output wire [0:0] avm_unnamed_paeth8_paeth_write,
    output wire [15:0] avm_unnamed_paeth8_paeth_writedata,
    output wire [31:0] avm_unnamed_paeth9_paeth_address,
    output wire [0:0] avm_unnamed_paeth9_paeth_burstcount,
    output wire [1:0] avm_unnamed_paeth9_paeth_byteenable,
    output wire [0:0] avm_unnamed_paeth9_paeth_enable,
    output wire [0:0] avm_unnamed_paeth9_paeth_read,
    output wire [0:0] avm_unnamed_paeth9_paeth_write,
    output wire [15:0] avm_unnamed_paeth9_paeth_writedata,
    output wire [0:0] avst_iord_bl_call_paeth_ready,
    output wire [31:0] avst_iowr_bl_return_paeth_data,
    output wire [0:0] avst_iowr_bl_return_paeth_valid,
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
    wire [0:0] paeth_function_out_iord_bl_call_paeth_o_fifoready;
    wire [31:0] paeth_function_out_iowr_bl_return_paeth_o_fifodata;
    wire [0:0] paeth_function_out_iowr_bl_return_paeth_o_fifovalid;
    wire [31:0] paeth_function_out_memdep_1_paeth_avm_address;
    wire [0:0] paeth_function_out_memdep_1_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_memdep_1_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_memdep_1_paeth_avm_enable;
    wire [0:0] paeth_function_out_memdep_1_paeth_avm_read;
    wire [0:0] paeth_function_out_memdep_1_paeth_avm_write;
    wire [15:0] paeth_function_out_memdep_1_paeth_avm_writedata;
    wire [31:0] paeth_function_out_memdep_2_paeth_avm_address;
    wire [0:0] paeth_function_out_memdep_2_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_memdep_2_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_memdep_2_paeth_avm_enable;
    wire [0:0] paeth_function_out_memdep_2_paeth_avm_read;
    wire [0:0] paeth_function_out_memdep_2_paeth_avm_write;
    wire [15:0] paeth_function_out_memdep_2_paeth_avm_writedata;
    wire [31:0] paeth_function_out_memdep_3_paeth_avm_address;
    wire [0:0] paeth_function_out_memdep_3_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_memdep_3_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_memdep_3_paeth_avm_enable;
    wire [0:0] paeth_function_out_memdep_3_paeth_avm_read;
    wire [0:0] paeth_function_out_memdep_3_paeth_avm_write;
    wire [15:0] paeth_function_out_memdep_3_paeth_avm_writedata;
    wire [31:0] paeth_function_out_memdep_4_paeth_avm_address;
    wire [0:0] paeth_function_out_memdep_4_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_memdep_4_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_memdep_4_paeth_avm_enable;
    wire [0:0] paeth_function_out_memdep_4_paeth_avm_read;
    wire [0:0] paeth_function_out_memdep_4_paeth_avm_write;
    wire [15:0] paeth_function_out_memdep_4_paeth_avm_writedata;
    wire [31:0] paeth_function_out_memdep_paeth_avm_address;
    wire [0:0] paeth_function_out_memdep_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_memdep_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_memdep_paeth_avm_enable;
    wire [0:0] paeth_function_out_memdep_paeth_avm_read;
    wire [0:0] paeth_function_out_memdep_paeth_avm_write;
    wire [15:0] paeth_function_out_memdep_paeth_avm_writedata;
    wire [31:0] paeth_function_out_unnamed_paeth5_paeth_avm_address;
    wire [0:0] paeth_function_out_unnamed_paeth5_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_unnamed_paeth5_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_unnamed_paeth5_paeth_avm_enable;
    wire [0:0] paeth_function_out_unnamed_paeth5_paeth_avm_read;
    wire [0:0] paeth_function_out_unnamed_paeth5_paeth_avm_write;
    wire [15:0] paeth_function_out_unnamed_paeth5_paeth_avm_writedata;
    wire [31:0] paeth_function_out_unnamed_paeth7_paeth_avm_address;
    wire [0:0] paeth_function_out_unnamed_paeth7_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_unnamed_paeth7_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_unnamed_paeth7_paeth_avm_enable;
    wire [0:0] paeth_function_out_unnamed_paeth7_paeth_avm_read;
    wire [0:0] paeth_function_out_unnamed_paeth7_paeth_avm_write;
    wire [15:0] paeth_function_out_unnamed_paeth7_paeth_avm_writedata;
    wire [31:0] paeth_function_out_unnamed_paeth8_paeth_avm_address;
    wire [0:0] paeth_function_out_unnamed_paeth8_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_unnamed_paeth8_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_unnamed_paeth8_paeth_avm_enable;
    wire [0:0] paeth_function_out_unnamed_paeth8_paeth_avm_read;
    wire [0:0] paeth_function_out_unnamed_paeth8_paeth_avm_write;
    wire [15:0] paeth_function_out_unnamed_paeth8_paeth_avm_writedata;
    wire [31:0] paeth_function_out_unnamed_paeth9_paeth_avm_address;
    wire [0:0] paeth_function_out_unnamed_paeth9_paeth_avm_burstcount;
    wire [1:0] paeth_function_out_unnamed_paeth9_paeth_avm_byteenable;
    wire [0:0] paeth_function_out_unnamed_paeth9_paeth_avm_enable;
    wire [0:0] paeth_function_out_unnamed_paeth9_paeth_avm_read;
    wire [0:0] paeth_function_out_unnamed_paeth9_paeth_avm_write;
    wire [15:0] paeth_function_out_unnamed_paeth9_paeth_avm_writedata;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,54)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = idx;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // paeth_function(BLACKBOX,124)
    paeth_function thepaeth_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_paeth_i_fifodata(implicit_input_q),
        .in_iord_bl_call_paeth_i_fifovalid(start),
        .in_iowr_bl_return_paeth_i_fifoready(not_stall_q),
        .in_memdep_1_paeth_avm_readdata(avm_memdep_1_paeth_readdata),
        .in_memdep_1_paeth_avm_readdatavalid(avm_memdep_1_paeth_readdatavalid),
        .in_memdep_1_paeth_avm_waitrequest(avm_memdep_1_paeth_waitrequest),
        .in_memdep_1_paeth_avm_writeack(avm_memdep_1_paeth_writeack),
        .in_memdep_2_paeth_avm_readdata(avm_memdep_2_paeth_readdata),
        .in_memdep_2_paeth_avm_readdatavalid(avm_memdep_2_paeth_readdatavalid),
        .in_memdep_2_paeth_avm_waitrequest(avm_memdep_2_paeth_waitrequest),
        .in_memdep_2_paeth_avm_writeack(avm_memdep_2_paeth_writeack),
        .in_memdep_3_paeth_avm_readdata(avm_memdep_3_paeth_readdata),
        .in_memdep_3_paeth_avm_readdatavalid(avm_memdep_3_paeth_readdatavalid),
        .in_memdep_3_paeth_avm_waitrequest(avm_memdep_3_paeth_waitrequest),
        .in_memdep_3_paeth_avm_writeack(avm_memdep_3_paeth_writeack),
        .in_memdep_4_paeth_avm_readdata(avm_memdep_4_paeth_readdata),
        .in_memdep_4_paeth_avm_readdatavalid(avm_memdep_4_paeth_readdatavalid),
        .in_memdep_4_paeth_avm_waitrequest(avm_memdep_4_paeth_waitrequest),
        .in_memdep_4_paeth_avm_writeack(avm_memdep_4_paeth_writeack),
        .in_memdep_paeth_avm_readdata(avm_memdep_paeth_readdata),
        .in_memdep_paeth_avm_readdatavalid(avm_memdep_paeth_readdatavalid),
        .in_memdep_paeth_avm_waitrequest(avm_memdep_paeth_waitrequest),
        .in_memdep_paeth_avm_writeack(avm_memdep_paeth_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_paeth5_paeth_avm_readdata(avm_unnamed_paeth5_paeth_readdata),
        .in_unnamed_paeth5_paeth_avm_readdatavalid(avm_unnamed_paeth5_paeth_readdatavalid),
        .in_unnamed_paeth5_paeth_avm_waitrequest(avm_unnamed_paeth5_paeth_waitrequest),
        .in_unnamed_paeth5_paeth_avm_writeack(avm_unnamed_paeth5_paeth_writeack),
        .in_unnamed_paeth7_paeth_avm_readdata(avm_unnamed_paeth7_paeth_readdata),
        .in_unnamed_paeth7_paeth_avm_readdatavalid(avm_unnamed_paeth7_paeth_readdatavalid),
        .in_unnamed_paeth7_paeth_avm_waitrequest(avm_unnamed_paeth7_paeth_waitrequest),
        .in_unnamed_paeth7_paeth_avm_writeack(avm_unnamed_paeth7_paeth_writeack),
        .in_unnamed_paeth8_paeth_avm_readdata(avm_unnamed_paeth8_paeth_readdata),
        .in_unnamed_paeth8_paeth_avm_readdatavalid(avm_unnamed_paeth8_paeth_readdatavalid),
        .in_unnamed_paeth8_paeth_avm_waitrequest(avm_unnamed_paeth8_paeth_waitrequest),
        .in_unnamed_paeth8_paeth_avm_writeack(avm_unnamed_paeth8_paeth_writeack),
        .in_unnamed_paeth9_paeth_avm_readdata(avm_unnamed_paeth9_paeth_readdata),
        .in_unnamed_paeth9_paeth_avm_readdatavalid(avm_unnamed_paeth9_paeth_readdatavalid),
        .in_unnamed_paeth9_paeth_avm_waitrequest(avm_unnamed_paeth9_paeth_waitrequest),
        .in_unnamed_paeth9_paeth_avm_writeack(avm_unnamed_paeth9_paeth_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_paeth_o_fifoready(paeth_function_out_iord_bl_call_paeth_o_fifoready),
        .out_iowr_bl_return_paeth_o_fifodata(paeth_function_out_iowr_bl_return_paeth_o_fifodata),
        .out_iowr_bl_return_paeth_o_fifovalid(paeth_function_out_iowr_bl_return_paeth_o_fifovalid),
        .out_memdep_1_paeth_avm_address(paeth_function_out_memdep_1_paeth_avm_address),
        .out_memdep_1_paeth_avm_burstcount(paeth_function_out_memdep_1_paeth_avm_burstcount),
        .out_memdep_1_paeth_avm_byteenable(paeth_function_out_memdep_1_paeth_avm_byteenable),
        .out_memdep_1_paeth_avm_enable(paeth_function_out_memdep_1_paeth_avm_enable),
        .out_memdep_1_paeth_avm_read(paeth_function_out_memdep_1_paeth_avm_read),
        .out_memdep_1_paeth_avm_write(paeth_function_out_memdep_1_paeth_avm_write),
        .out_memdep_1_paeth_avm_writedata(paeth_function_out_memdep_1_paeth_avm_writedata),
        .out_memdep_2_paeth_avm_address(paeth_function_out_memdep_2_paeth_avm_address),
        .out_memdep_2_paeth_avm_burstcount(paeth_function_out_memdep_2_paeth_avm_burstcount),
        .out_memdep_2_paeth_avm_byteenable(paeth_function_out_memdep_2_paeth_avm_byteenable),
        .out_memdep_2_paeth_avm_enable(paeth_function_out_memdep_2_paeth_avm_enable),
        .out_memdep_2_paeth_avm_read(paeth_function_out_memdep_2_paeth_avm_read),
        .out_memdep_2_paeth_avm_write(paeth_function_out_memdep_2_paeth_avm_write),
        .out_memdep_2_paeth_avm_writedata(paeth_function_out_memdep_2_paeth_avm_writedata),
        .out_memdep_3_paeth_avm_address(paeth_function_out_memdep_3_paeth_avm_address),
        .out_memdep_3_paeth_avm_burstcount(paeth_function_out_memdep_3_paeth_avm_burstcount),
        .out_memdep_3_paeth_avm_byteenable(paeth_function_out_memdep_3_paeth_avm_byteenable),
        .out_memdep_3_paeth_avm_enable(paeth_function_out_memdep_3_paeth_avm_enable),
        .out_memdep_3_paeth_avm_read(paeth_function_out_memdep_3_paeth_avm_read),
        .out_memdep_3_paeth_avm_write(paeth_function_out_memdep_3_paeth_avm_write),
        .out_memdep_3_paeth_avm_writedata(paeth_function_out_memdep_3_paeth_avm_writedata),
        .out_memdep_4_paeth_avm_address(paeth_function_out_memdep_4_paeth_avm_address),
        .out_memdep_4_paeth_avm_burstcount(paeth_function_out_memdep_4_paeth_avm_burstcount),
        .out_memdep_4_paeth_avm_byteenable(paeth_function_out_memdep_4_paeth_avm_byteenable),
        .out_memdep_4_paeth_avm_enable(paeth_function_out_memdep_4_paeth_avm_enable),
        .out_memdep_4_paeth_avm_read(paeth_function_out_memdep_4_paeth_avm_read),
        .out_memdep_4_paeth_avm_write(paeth_function_out_memdep_4_paeth_avm_write),
        .out_memdep_4_paeth_avm_writedata(paeth_function_out_memdep_4_paeth_avm_writedata),
        .out_memdep_paeth_avm_address(paeth_function_out_memdep_paeth_avm_address),
        .out_memdep_paeth_avm_burstcount(paeth_function_out_memdep_paeth_avm_burstcount),
        .out_memdep_paeth_avm_byteenable(paeth_function_out_memdep_paeth_avm_byteenable),
        .out_memdep_paeth_avm_enable(paeth_function_out_memdep_paeth_avm_enable),
        .out_memdep_paeth_avm_read(paeth_function_out_memdep_paeth_avm_read),
        .out_memdep_paeth_avm_write(paeth_function_out_memdep_paeth_avm_write),
        .out_memdep_paeth_avm_writedata(paeth_function_out_memdep_paeth_avm_writedata),
        .out_stall_out(),
        .out_unnamed_paeth5_paeth_avm_address(paeth_function_out_unnamed_paeth5_paeth_avm_address),
        .out_unnamed_paeth5_paeth_avm_burstcount(paeth_function_out_unnamed_paeth5_paeth_avm_burstcount),
        .out_unnamed_paeth5_paeth_avm_byteenable(paeth_function_out_unnamed_paeth5_paeth_avm_byteenable),
        .out_unnamed_paeth5_paeth_avm_enable(paeth_function_out_unnamed_paeth5_paeth_avm_enable),
        .out_unnamed_paeth5_paeth_avm_read(paeth_function_out_unnamed_paeth5_paeth_avm_read),
        .out_unnamed_paeth5_paeth_avm_write(paeth_function_out_unnamed_paeth5_paeth_avm_write),
        .out_unnamed_paeth5_paeth_avm_writedata(paeth_function_out_unnamed_paeth5_paeth_avm_writedata),
        .out_unnamed_paeth7_paeth_avm_address(paeth_function_out_unnamed_paeth7_paeth_avm_address),
        .out_unnamed_paeth7_paeth_avm_burstcount(paeth_function_out_unnamed_paeth7_paeth_avm_burstcount),
        .out_unnamed_paeth7_paeth_avm_byteenable(paeth_function_out_unnamed_paeth7_paeth_avm_byteenable),
        .out_unnamed_paeth7_paeth_avm_enable(paeth_function_out_unnamed_paeth7_paeth_avm_enable),
        .out_unnamed_paeth7_paeth_avm_read(paeth_function_out_unnamed_paeth7_paeth_avm_read),
        .out_unnamed_paeth7_paeth_avm_write(paeth_function_out_unnamed_paeth7_paeth_avm_write),
        .out_unnamed_paeth7_paeth_avm_writedata(paeth_function_out_unnamed_paeth7_paeth_avm_writedata),
        .out_unnamed_paeth8_paeth_avm_address(paeth_function_out_unnamed_paeth8_paeth_avm_address),
        .out_unnamed_paeth8_paeth_avm_burstcount(paeth_function_out_unnamed_paeth8_paeth_avm_burstcount),
        .out_unnamed_paeth8_paeth_avm_byteenable(paeth_function_out_unnamed_paeth8_paeth_avm_byteenable),
        .out_unnamed_paeth8_paeth_avm_enable(paeth_function_out_unnamed_paeth8_paeth_avm_enable),
        .out_unnamed_paeth8_paeth_avm_read(paeth_function_out_unnamed_paeth8_paeth_avm_read),
        .out_unnamed_paeth8_paeth_avm_write(paeth_function_out_unnamed_paeth8_paeth_avm_write),
        .out_unnamed_paeth8_paeth_avm_writedata(paeth_function_out_unnamed_paeth8_paeth_avm_writedata),
        .out_unnamed_paeth9_paeth_avm_address(paeth_function_out_unnamed_paeth9_paeth_avm_address),
        .out_unnamed_paeth9_paeth_avm_burstcount(paeth_function_out_unnamed_paeth9_paeth_avm_burstcount),
        .out_unnamed_paeth9_paeth_avm_byteenable(paeth_function_out_unnamed_paeth9_paeth_avm_byteenable),
        .out_unnamed_paeth9_paeth_avm_enable(paeth_function_out_unnamed_paeth9_paeth_avm_enable),
        .out_unnamed_paeth9_paeth_avm_read(paeth_function_out_unnamed_paeth9_paeth_avm_read),
        .out_unnamed_paeth9_paeth_avm_write(paeth_function_out_unnamed_paeth9_paeth_avm_write),
        .out_unnamed_paeth9_paeth_avm_writedata(paeth_function_out_unnamed_paeth9_paeth_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_paeth_address(GPOUT,55)
    assign avm_memdep_1_paeth_address = paeth_function_out_memdep_1_paeth_avm_address;

    // avm_memdep_1_paeth_burstcount(GPOUT,56)
    assign avm_memdep_1_paeth_burstcount = paeth_function_out_memdep_1_paeth_avm_burstcount;

    // avm_memdep_1_paeth_byteenable(GPOUT,57)
    assign avm_memdep_1_paeth_byteenable = paeth_function_out_memdep_1_paeth_avm_byteenable;

    // avm_memdep_1_paeth_enable(GPOUT,58)
    assign avm_memdep_1_paeth_enable = paeth_function_out_memdep_1_paeth_avm_enable;

    // avm_memdep_1_paeth_read(GPOUT,59)
    assign avm_memdep_1_paeth_read = paeth_function_out_memdep_1_paeth_avm_read;

    // avm_memdep_1_paeth_write(GPOUT,60)
    assign avm_memdep_1_paeth_write = paeth_function_out_memdep_1_paeth_avm_write;

    // avm_memdep_1_paeth_writedata(GPOUT,61)
    assign avm_memdep_1_paeth_writedata = paeth_function_out_memdep_1_paeth_avm_writedata;

    // avm_memdep_2_paeth_address(GPOUT,62)
    assign avm_memdep_2_paeth_address = paeth_function_out_memdep_2_paeth_avm_address;

    // avm_memdep_2_paeth_burstcount(GPOUT,63)
    assign avm_memdep_2_paeth_burstcount = paeth_function_out_memdep_2_paeth_avm_burstcount;

    // avm_memdep_2_paeth_byteenable(GPOUT,64)
    assign avm_memdep_2_paeth_byteenable = paeth_function_out_memdep_2_paeth_avm_byteenable;

    // avm_memdep_2_paeth_enable(GPOUT,65)
    assign avm_memdep_2_paeth_enable = paeth_function_out_memdep_2_paeth_avm_enable;

    // avm_memdep_2_paeth_read(GPOUT,66)
    assign avm_memdep_2_paeth_read = paeth_function_out_memdep_2_paeth_avm_read;

    // avm_memdep_2_paeth_write(GPOUT,67)
    assign avm_memdep_2_paeth_write = paeth_function_out_memdep_2_paeth_avm_write;

    // avm_memdep_2_paeth_writedata(GPOUT,68)
    assign avm_memdep_2_paeth_writedata = paeth_function_out_memdep_2_paeth_avm_writedata;

    // avm_memdep_3_paeth_address(GPOUT,69)
    assign avm_memdep_3_paeth_address = paeth_function_out_memdep_3_paeth_avm_address;

    // avm_memdep_3_paeth_burstcount(GPOUT,70)
    assign avm_memdep_3_paeth_burstcount = paeth_function_out_memdep_3_paeth_avm_burstcount;

    // avm_memdep_3_paeth_byteenable(GPOUT,71)
    assign avm_memdep_3_paeth_byteenable = paeth_function_out_memdep_3_paeth_avm_byteenable;

    // avm_memdep_3_paeth_enable(GPOUT,72)
    assign avm_memdep_3_paeth_enable = paeth_function_out_memdep_3_paeth_avm_enable;

    // avm_memdep_3_paeth_read(GPOUT,73)
    assign avm_memdep_3_paeth_read = paeth_function_out_memdep_3_paeth_avm_read;

    // avm_memdep_3_paeth_write(GPOUT,74)
    assign avm_memdep_3_paeth_write = paeth_function_out_memdep_3_paeth_avm_write;

    // avm_memdep_3_paeth_writedata(GPOUT,75)
    assign avm_memdep_3_paeth_writedata = paeth_function_out_memdep_3_paeth_avm_writedata;

    // avm_memdep_4_paeth_address(GPOUT,76)
    assign avm_memdep_4_paeth_address = paeth_function_out_memdep_4_paeth_avm_address;

    // avm_memdep_4_paeth_burstcount(GPOUT,77)
    assign avm_memdep_4_paeth_burstcount = paeth_function_out_memdep_4_paeth_avm_burstcount;

    // avm_memdep_4_paeth_byteenable(GPOUT,78)
    assign avm_memdep_4_paeth_byteenable = paeth_function_out_memdep_4_paeth_avm_byteenable;

    // avm_memdep_4_paeth_enable(GPOUT,79)
    assign avm_memdep_4_paeth_enable = paeth_function_out_memdep_4_paeth_avm_enable;

    // avm_memdep_4_paeth_read(GPOUT,80)
    assign avm_memdep_4_paeth_read = paeth_function_out_memdep_4_paeth_avm_read;

    // avm_memdep_4_paeth_write(GPOUT,81)
    assign avm_memdep_4_paeth_write = paeth_function_out_memdep_4_paeth_avm_write;

    // avm_memdep_4_paeth_writedata(GPOUT,82)
    assign avm_memdep_4_paeth_writedata = paeth_function_out_memdep_4_paeth_avm_writedata;

    // avm_memdep_paeth_address(GPOUT,83)
    assign avm_memdep_paeth_address = paeth_function_out_memdep_paeth_avm_address;

    // avm_memdep_paeth_burstcount(GPOUT,84)
    assign avm_memdep_paeth_burstcount = paeth_function_out_memdep_paeth_avm_burstcount;

    // avm_memdep_paeth_byteenable(GPOUT,85)
    assign avm_memdep_paeth_byteenable = paeth_function_out_memdep_paeth_avm_byteenable;

    // avm_memdep_paeth_enable(GPOUT,86)
    assign avm_memdep_paeth_enable = paeth_function_out_memdep_paeth_avm_enable;

    // avm_memdep_paeth_read(GPOUT,87)
    assign avm_memdep_paeth_read = paeth_function_out_memdep_paeth_avm_read;

    // avm_memdep_paeth_write(GPOUT,88)
    assign avm_memdep_paeth_write = paeth_function_out_memdep_paeth_avm_write;

    // avm_memdep_paeth_writedata(GPOUT,89)
    assign avm_memdep_paeth_writedata = paeth_function_out_memdep_paeth_avm_writedata;

    // avm_unnamed_paeth5_paeth_address(GPOUT,90)
    assign avm_unnamed_paeth5_paeth_address = paeth_function_out_unnamed_paeth5_paeth_avm_address;

    // avm_unnamed_paeth5_paeth_burstcount(GPOUT,91)
    assign avm_unnamed_paeth5_paeth_burstcount = paeth_function_out_unnamed_paeth5_paeth_avm_burstcount;

    // avm_unnamed_paeth5_paeth_byteenable(GPOUT,92)
    assign avm_unnamed_paeth5_paeth_byteenable = paeth_function_out_unnamed_paeth5_paeth_avm_byteenable;

    // avm_unnamed_paeth5_paeth_enable(GPOUT,93)
    assign avm_unnamed_paeth5_paeth_enable = paeth_function_out_unnamed_paeth5_paeth_avm_enable;

    // avm_unnamed_paeth5_paeth_read(GPOUT,94)
    assign avm_unnamed_paeth5_paeth_read = paeth_function_out_unnamed_paeth5_paeth_avm_read;

    // avm_unnamed_paeth5_paeth_write(GPOUT,95)
    assign avm_unnamed_paeth5_paeth_write = paeth_function_out_unnamed_paeth5_paeth_avm_write;

    // avm_unnamed_paeth5_paeth_writedata(GPOUT,96)
    assign avm_unnamed_paeth5_paeth_writedata = paeth_function_out_unnamed_paeth5_paeth_avm_writedata;

    // avm_unnamed_paeth7_paeth_address(GPOUT,97)
    assign avm_unnamed_paeth7_paeth_address = paeth_function_out_unnamed_paeth7_paeth_avm_address;

    // avm_unnamed_paeth7_paeth_burstcount(GPOUT,98)
    assign avm_unnamed_paeth7_paeth_burstcount = paeth_function_out_unnamed_paeth7_paeth_avm_burstcount;

    // avm_unnamed_paeth7_paeth_byteenable(GPOUT,99)
    assign avm_unnamed_paeth7_paeth_byteenable = paeth_function_out_unnamed_paeth7_paeth_avm_byteenable;

    // avm_unnamed_paeth7_paeth_enable(GPOUT,100)
    assign avm_unnamed_paeth7_paeth_enable = paeth_function_out_unnamed_paeth7_paeth_avm_enable;

    // avm_unnamed_paeth7_paeth_read(GPOUT,101)
    assign avm_unnamed_paeth7_paeth_read = paeth_function_out_unnamed_paeth7_paeth_avm_read;

    // avm_unnamed_paeth7_paeth_write(GPOUT,102)
    assign avm_unnamed_paeth7_paeth_write = paeth_function_out_unnamed_paeth7_paeth_avm_write;

    // avm_unnamed_paeth7_paeth_writedata(GPOUT,103)
    assign avm_unnamed_paeth7_paeth_writedata = paeth_function_out_unnamed_paeth7_paeth_avm_writedata;

    // avm_unnamed_paeth8_paeth_address(GPOUT,104)
    assign avm_unnamed_paeth8_paeth_address = paeth_function_out_unnamed_paeth8_paeth_avm_address;

    // avm_unnamed_paeth8_paeth_burstcount(GPOUT,105)
    assign avm_unnamed_paeth8_paeth_burstcount = paeth_function_out_unnamed_paeth8_paeth_avm_burstcount;

    // avm_unnamed_paeth8_paeth_byteenable(GPOUT,106)
    assign avm_unnamed_paeth8_paeth_byteenable = paeth_function_out_unnamed_paeth8_paeth_avm_byteenable;

    // avm_unnamed_paeth8_paeth_enable(GPOUT,107)
    assign avm_unnamed_paeth8_paeth_enable = paeth_function_out_unnamed_paeth8_paeth_avm_enable;

    // avm_unnamed_paeth8_paeth_read(GPOUT,108)
    assign avm_unnamed_paeth8_paeth_read = paeth_function_out_unnamed_paeth8_paeth_avm_read;

    // avm_unnamed_paeth8_paeth_write(GPOUT,109)
    assign avm_unnamed_paeth8_paeth_write = paeth_function_out_unnamed_paeth8_paeth_avm_write;

    // avm_unnamed_paeth8_paeth_writedata(GPOUT,110)
    assign avm_unnamed_paeth8_paeth_writedata = paeth_function_out_unnamed_paeth8_paeth_avm_writedata;

    // avm_unnamed_paeth9_paeth_address(GPOUT,111)
    assign avm_unnamed_paeth9_paeth_address = paeth_function_out_unnamed_paeth9_paeth_avm_address;

    // avm_unnamed_paeth9_paeth_burstcount(GPOUT,112)
    assign avm_unnamed_paeth9_paeth_burstcount = paeth_function_out_unnamed_paeth9_paeth_avm_burstcount;

    // avm_unnamed_paeth9_paeth_byteenable(GPOUT,113)
    assign avm_unnamed_paeth9_paeth_byteenable = paeth_function_out_unnamed_paeth9_paeth_avm_byteenable;

    // avm_unnamed_paeth9_paeth_enable(GPOUT,114)
    assign avm_unnamed_paeth9_paeth_enable = paeth_function_out_unnamed_paeth9_paeth_avm_enable;

    // avm_unnamed_paeth9_paeth_read(GPOUT,115)
    assign avm_unnamed_paeth9_paeth_read = paeth_function_out_unnamed_paeth9_paeth_avm_read;

    // avm_unnamed_paeth9_paeth_write(GPOUT,116)
    assign avm_unnamed_paeth9_paeth_write = paeth_function_out_unnamed_paeth9_paeth_avm_write;

    // avm_unnamed_paeth9_paeth_writedata(GPOUT,117)
    assign avm_unnamed_paeth9_paeth_writedata = paeth_function_out_unnamed_paeth9_paeth_avm_writedata;

    // avst_iord_bl_call_paeth_ready(GPOUT,118)
    assign avst_iord_bl_call_paeth_ready = paeth_function_out_iord_bl_call_paeth_o_fifoready;

    // avst_iowr_bl_return_paeth_data(GPOUT,119)
    assign avst_iowr_bl_return_paeth_data = paeth_function_out_iowr_bl_return_paeth_o_fifodata;

    // avst_iowr_bl_return_paeth_valid(GPOUT,120)
    assign avst_iowr_bl_return_paeth_valid = paeth_function_out_iowr_bl_return_paeth_o_fifovalid;

    // not_ready(LOGICAL,53)
    assign not_ready_q = ~ (paeth_function_out_iord_bl_call_paeth_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,126)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,125)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,121)
    assign busy = busy_or_q;

    // done(GPOUT,122)
    assign done = paeth_function_out_iowr_bl_return_paeth_o_fifovalid;

    // returndata(GPOUT,123)
    assign returndata = paeth_function_out_iowr_bl_return_paeth_o_fifodata;

endmodule
