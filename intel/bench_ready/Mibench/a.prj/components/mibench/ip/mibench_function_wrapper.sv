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

// SystemVerilog created from mibench_function_wrapper
// SystemVerilog created on Sun Apr 19 21:28:37 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mibench_function_wrapper (
    input wire [15:0] avm_memdep_1_mibench_readdata,
    input wire [0:0] avm_memdep_1_mibench_readdatavalid,
    input wire [0:0] avm_memdep_1_mibench_waitrequest,
    input wire [0:0] avm_memdep_1_mibench_writeack,
    input wire [15:0] avm_memdep_2_mibench_readdata,
    input wire [0:0] avm_memdep_2_mibench_readdatavalid,
    input wire [0:0] avm_memdep_2_mibench_waitrequest,
    input wire [0:0] avm_memdep_2_mibench_writeack,
    input wire [15:0] avm_memdep_3_mibench_readdata,
    input wire [0:0] avm_memdep_3_mibench_readdatavalid,
    input wire [0:0] avm_memdep_3_mibench_waitrequest,
    input wire [0:0] avm_memdep_3_mibench_writeack,
    input wire [15:0] avm_memdep_4_mibench_readdata,
    input wire [0:0] avm_memdep_4_mibench_readdatavalid,
    input wire [0:0] avm_memdep_4_mibench_waitrequest,
    input wire [0:0] avm_memdep_4_mibench_writeack,
    input wire [15:0] avm_memdep_mibench_readdata,
    input wire [0:0] avm_memdep_mibench_readdatavalid,
    input wire [0:0] avm_memdep_mibench_waitrequest,
    input wire [0:0] avm_memdep_mibench_writeack,
    input wire [15:0] avm_unnamed_mibench5_mibench_readdata,
    input wire [0:0] avm_unnamed_mibench5_mibench_readdatavalid,
    input wire [0:0] avm_unnamed_mibench5_mibench_waitrequest,
    input wire [0:0] avm_unnamed_mibench5_mibench_writeack,
    input wire [15:0] avm_unnamed_mibench7_mibench_readdata,
    input wire [0:0] avm_unnamed_mibench7_mibench_readdatavalid,
    input wire [0:0] avm_unnamed_mibench7_mibench_waitrequest,
    input wire [0:0] avm_unnamed_mibench7_mibench_writeack,
    input wire [15:0] avm_unnamed_mibench8_mibench_readdata,
    input wire [0:0] avm_unnamed_mibench8_mibench_readdatavalid,
    input wire [0:0] avm_unnamed_mibench8_mibench_waitrequest,
    input wire [0:0] avm_unnamed_mibench8_mibench_writeack,
    input wire [15:0] avm_unnamed_mibench9_mibench_readdata,
    input wire [0:0] avm_unnamed_mibench9_mibench_readdatavalid,
    input wire [0:0] avm_unnamed_mibench9_mibench_waitrequest,
    input wire [0:0] avm_unnamed_mibench9_mibench_writeack,
    input wire [31:0] avst_iord_bl_call_mibench_data,
    input wire [0:0] avst_iord_bl_call_mibench_valid,
    input wire [0:0] avst_iowr_bl_return_mibench_almostfull,
    input wire [0:0] avst_iowr_bl_return_mibench_ready,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_mibench_address,
    output wire [0:0] avm_memdep_1_mibench_burstcount,
    output wire [1:0] avm_memdep_1_mibench_byteenable,
    output wire [0:0] avm_memdep_1_mibench_enable,
    output wire [0:0] avm_memdep_1_mibench_read,
    output wire [0:0] avm_memdep_1_mibench_write,
    output wire [15:0] avm_memdep_1_mibench_writedata,
    output wire [31:0] avm_memdep_2_mibench_address,
    output wire [0:0] avm_memdep_2_mibench_burstcount,
    output wire [1:0] avm_memdep_2_mibench_byteenable,
    output wire [0:0] avm_memdep_2_mibench_enable,
    output wire [0:0] avm_memdep_2_mibench_read,
    output wire [0:0] avm_memdep_2_mibench_write,
    output wire [15:0] avm_memdep_2_mibench_writedata,
    output wire [31:0] avm_memdep_3_mibench_address,
    output wire [0:0] avm_memdep_3_mibench_burstcount,
    output wire [1:0] avm_memdep_3_mibench_byteenable,
    output wire [0:0] avm_memdep_3_mibench_enable,
    output wire [0:0] avm_memdep_3_mibench_read,
    output wire [0:0] avm_memdep_3_mibench_write,
    output wire [15:0] avm_memdep_3_mibench_writedata,
    output wire [31:0] avm_memdep_4_mibench_address,
    output wire [0:0] avm_memdep_4_mibench_burstcount,
    output wire [1:0] avm_memdep_4_mibench_byteenable,
    output wire [0:0] avm_memdep_4_mibench_enable,
    output wire [0:0] avm_memdep_4_mibench_read,
    output wire [0:0] avm_memdep_4_mibench_write,
    output wire [15:0] avm_memdep_4_mibench_writedata,
    output wire [31:0] avm_memdep_mibench_address,
    output wire [0:0] avm_memdep_mibench_burstcount,
    output wire [1:0] avm_memdep_mibench_byteenable,
    output wire [0:0] avm_memdep_mibench_enable,
    output wire [0:0] avm_memdep_mibench_read,
    output wire [0:0] avm_memdep_mibench_write,
    output wire [15:0] avm_memdep_mibench_writedata,
    output wire [31:0] avm_unnamed_mibench5_mibench_address,
    output wire [0:0] avm_unnamed_mibench5_mibench_burstcount,
    output wire [1:0] avm_unnamed_mibench5_mibench_byteenable,
    output wire [0:0] avm_unnamed_mibench5_mibench_enable,
    output wire [0:0] avm_unnamed_mibench5_mibench_read,
    output wire [0:0] avm_unnamed_mibench5_mibench_write,
    output wire [15:0] avm_unnamed_mibench5_mibench_writedata,
    output wire [31:0] avm_unnamed_mibench7_mibench_address,
    output wire [0:0] avm_unnamed_mibench7_mibench_burstcount,
    output wire [1:0] avm_unnamed_mibench7_mibench_byteenable,
    output wire [0:0] avm_unnamed_mibench7_mibench_enable,
    output wire [0:0] avm_unnamed_mibench7_mibench_read,
    output wire [0:0] avm_unnamed_mibench7_mibench_write,
    output wire [15:0] avm_unnamed_mibench7_mibench_writedata,
    output wire [31:0] avm_unnamed_mibench8_mibench_address,
    output wire [0:0] avm_unnamed_mibench8_mibench_burstcount,
    output wire [1:0] avm_unnamed_mibench8_mibench_byteenable,
    output wire [0:0] avm_unnamed_mibench8_mibench_enable,
    output wire [0:0] avm_unnamed_mibench8_mibench_read,
    output wire [0:0] avm_unnamed_mibench8_mibench_write,
    output wire [15:0] avm_unnamed_mibench8_mibench_writedata,
    output wire [31:0] avm_unnamed_mibench9_mibench_address,
    output wire [0:0] avm_unnamed_mibench9_mibench_burstcount,
    output wire [1:0] avm_unnamed_mibench9_mibench_byteenable,
    output wire [0:0] avm_unnamed_mibench9_mibench_enable,
    output wire [0:0] avm_unnamed_mibench9_mibench_read,
    output wire [0:0] avm_unnamed_mibench9_mibench_write,
    output wire [15:0] avm_unnamed_mibench9_mibench_writedata,
    output wire [0:0] avst_iord_bl_call_mibench_ready,
    output wire [31:0] avst_iowr_bl_return_mibench_data,
    output wire [0:0] avst_iowr_bl_return_mibench_valid,
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
    wire [0:0] mibench_function_out_iord_bl_call_mibench_o_fifoready;
    wire [31:0] mibench_function_out_iowr_bl_return_mibench_o_fifodata;
    wire [0:0] mibench_function_out_iowr_bl_return_mibench_o_fifovalid;
    wire [31:0] mibench_function_out_memdep_1_mibench_avm_address;
    wire [0:0] mibench_function_out_memdep_1_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_memdep_1_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_memdep_1_mibench_avm_enable;
    wire [0:0] mibench_function_out_memdep_1_mibench_avm_read;
    wire [0:0] mibench_function_out_memdep_1_mibench_avm_write;
    wire [15:0] mibench_function_out_memdep_1_mibench_avm_writedata;
    wire [31:0] mibench_function_out_memdep_2_mibench_avm_address;
    wire [0:0] mibench_function_out_memdep_2_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_memdep_2_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_memdep_2_mibench_avm_enable;
    wire [0:0] mibench_function_out_memdep_2_mibench_avm_read;
    wire [0:0] mibench_function_out_memdep_2_mibench_avm_write;
    wire [15:0] mibench_function_out_memdep_2_mibench_avm_writedata;
    wire [31:0] mibench_function_out_memdep_3_mibench_avm_address;
    wire [0:0] mibench_function_out_memdep_3_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_memdep_3_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_memdep_3_mibench_avm_enable;
    wire [0:0] mibench_function_out_memdep_3_mibench_avm_read;
    wire [0:0] mibench_function_out_memdep_3_mibench_avm_write;
    wire [15:0] mibench_function_out_memdep_3_mibench_avm_writedata;
    wire [31:0] mibench_function_out_memdep_4_mibench_avm_address;
    wire [0:0] mibench_function_out_memdep_4_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_memdep_4_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_memdep_4_mibench_avm_enable;
    wire [0:0] mibench_function_out_memdep_4_mibench_avm_read;
    wire [0:0] mibench_function_out_memdep_4_mibench_avm_write;
    wire [15:0] mibench_function_out_memdep_4_mibench_avm_writedata;
    wire [31:0] mibench_function_out_memdep_mibench_avm_address;
    wire [0:0] mibench_function_out_memdep_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_memdep_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_memdep_mibench_avm_enable;
    wire [0:0] mibench_function_out_memdep_mibench_avm_read;
    wire [0:0] mibench_function_out_memdep_mibench_avm_write;
    wire [15:0] mibench_function_out_memdep_mibench_avm_writedata;
    wire [31:0] mibench_function_out_unnamed_mibench5_mibench_avm_address;
    wire [0:0] mibench_function_out_unnamed_mibench5_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_unnamed_mibench5_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_unnamed_mibench5_mibench_avm_enable;
    wire [0:0] mibench_function_out_unnamed_mibench5_mibench_avm_read;
    wire [0:0] mibench_function_out_unnamed_mibench5_mibench_avm_write;
    wire [15:0] mibench_function_out_unnamed_mibench5_mibench_avm_writedata;
    wire [31:0] mibench_function_out_unnamed_mibench7_mibench_avm_address;
    wire [0:0] mibench_function_out_unnamed_mibench7_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_unnamed_mibench7_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_unnamed_mibench7_mibench_avm_enable;
    wire [0:0] mibench_function_out_unnamed_mibench7_mibench_avm_read;
    wire [0:0] mibench_function_out_unnamed_mibench7_mibench_avm_write;
    wire [15:0] mibench_function_out_unnamed_mibench7_mibench_avm_writedata;
    wire [31:0] mibench_function_out_unnamed_mibench8_mibench_avm_address;
    wire [0:0] mibench_function_out_unnamed_mibench8_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_unnamed_mibench8_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_unnamed_mibench8_mibench_avm_enable;
    wire [0:0] mibench_function_out_unnamed_mibench8_mibench_avm_read;
    wire [0:0] mibench_function_out_unnamed_mibench8_mibench_avm_write;
    wire [15:0] mibench_function_out_unnamed_mibench8_mibench_avm_writedata;
    wire [31:0] mibench_function_out_unnamed_mibench9_mibench_avm_address;
    wire [0:0] mibench_function_out_unnamed_mibench9_mibench_avm_burstcount;
    wire [1:0] mibench_function_out_unnamed_mibench9_mibench_avm_byteenable;
    wire [0:0] mibench_function_out_unnamed_mibench9_mibench_avm_enable;
    wire [0:0] mibench_function_out_unnamed_mibench9_mibench_avm_read;
    wire [0:0] mibench_function_out_unnamed_mibench9_mibench_avm_write;
    wire [15:0] mibench_function_out_unnamed_mibench9_mibench_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,55)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = idx;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // mibench_function(BLACKBOX,53)
    mibench_function themibench_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_mibench_i_fifodata(implicit_input_q),
        .in_iord_bl_call_mibench_i_fifovalid(start),
        .in_iowr_bl_return_mibench_i_fifoready(not_stall_q),
        .in_memdep_1_mibench_avm_readdata(avm_memdep_1_mibench_readdata),
        .in_memdep_1_mibench_avm_readdatavalid(avm_memdep_1_mibench_readdatavalid),
        .in_memdep_1_mibench_avm_waitrequest(avm_memdep_1_mibench_waitrequest),
        .in_memdep_1_mibench_avm_writeack(avm_memdep_1_mibench_writeack),
        .in_memdep_2_mibench_avm_readdata(avm_memdep_2_mibench_readdata),
        .in_memdep_2_mibench_avm_readdatavalid(avm_memdep_2_mibench_readdatavalid),
        .in_memdep_2_mibench_avm_waitrequest(avm_memdep_2_mibench_waitrequest),
        .in_memdep_2_mibench_avm_writeack(avm_memdep_2_mibench_writeack),
        .in_memdep_3_mibench_avm_readdata(avm_memdep_3_mibench_readdata),
        .in_memdep_3_mibench_avm_readdatavalid(avm_memdep_3_mibench_readdatavalid),
        .in_memdep_3_mibench_avm_waitrequest(avm_memdep_3_mibench_waitrequest),
        .in_memdep_3_mibench_avm_writeack(avm_memdep_3_mibench_writeack),
        .in_memdep_4_mibench_avm_readdata(avm_memdep_4_mibench_readdata),
        .in_memdep_4_mibench_avm_readdatavalid(avm_memdep_4_mibench_readdatavalid),
        .in_memdep_4_mibench_avm_waitrequest(avm_memdep_4_mibench_waitrequest),
        .in_memdep_4_mibench_avm_writeack(avm_memdep_4_mibench_writeack),
        .in_memdep_mibench_avm_readdata(avm_memdep_mibench_readdata),
        .in_memdep_mibench_avm_readdatavalid(avm_memdep_mibench_readdatavalid),
        .in_memdep_mibench_avm_waitrequest(avm_memdep_mibench_waitrequest),
        .in_memdep_mibench_avm_writeack(avm_memdep_mibench_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_mibench5_mibench_avm_readdata(avm_unnamed_mibench5_mibench_readdata),
        .in_unnamed_mibench5_mibench_avm_readdatavalid(avm_unnamed_mibench5_mibench_readdatavalid),
        .in_unnamed_mibench5_mibench_avm_waitrequest(avm_unnamed_mibench5_mibench_waitrequest),
        .in_unnamed_mibench5_mibench_avm_writeack(avm_unnamed_mibench5_mibench_writeack),
        .in_unnamed_mibench7_mibench_avm_readdata(avm_unnamed_mibench7_mibench_readdata),
        .in_unnamed_mibench7_mibench_avm_readdatavalid(avm_unnamed_mibench7_mibench_readdatavalid),
        .in_unnamed_mibench7_mibench_avm_waitrequest(avm_unnamed_mibench7_mibench_waitrequest),
        .in_unnamed_mibench7_mibench_avm_writeack(avm_unnamed_mibench7_mibench_writeack),
        .in_unnamed_mibench8_mibench_avm_readdata(avm_unnamed_mibench8_mibench_readdata),
        .in_unnamed_mibench8_mibench_avm_readdatavalid(avm_unnamed_mibench8_mibench_readdatavalid),
        .in_unnamed_mibench8_mibench_avm_waitrequest(avm_unnamed_mibench8_mibench_waitrequest),
        .in_unnamed_mibench8_mibench_avm_writeack(avm_unnamed_mibench8_mibench_writeack),
        .in_unnamed_mibench9_mibench_avm_readdata(avm_unnamed_mibench9_mibench_readdata),
        .in_unnamed_mibench9_mibench_avm_readdatavalid(avm_unnamed_mibench9_mibench_readdatavalid),
        .in_unnamed_mibench9_mibench_avm_waitrequest(avm_unnamed_mibench9_mibench_waitrequest),
        .in_unnamed_mibench9_mibench_avm_writeack(avm_unnamed_mibench9_mibench_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_mibench_o_fifoready(mibench_function_out_iord_bl_call_mibench_o_fifoready),
        .out_iowr_bl_return_mibench_o_fifodata(mibench_function_out_iowr_bl_return_mibench_o_fifodata),
        .out_iowr_bl_return_mibench_o_fifovalid(mibench_function_out_iowr_bl_return_mibench_o_fifovalid),
        .out_memdep_1_mibench_avm_address(mibench_function_out_memdep_1_mibench_avm_address),
        .out_memdep_1_mibench_avm_burstcount(mibench_function_out_memdep_1_mibench_avm_burstcount),
        .out_memdep_1_mibench_avm_byteenable(mibench_function_out_memdep_1_mibench_avm_byteenable),
        .out_memdep_1_mibench_avm_enable(mibench_function_out_memdep_1_mibench_avm_enable),
        .out_memdep_1_mibench_avm_read(mibench_function_out_memdep_1_mibench_avm_read),
        .out_memdep_1_mibench_avm_write(mibench_function_out_memdep_1_mibench_avm_write),
        .out_memdep_1_mibench_avm_writedata(mibench_function_out_memdep_1_mibench_avm_writedata),
        .out_memdep_2_mibench_avm_address(mibench_function_out_memdep_2_mibench_avm_address),
        .out_memdep_2_mibench_avm_burstcount(mibench_function_out_memdep_2_mibench_avm_burstcount),
        .out_memdep_2_mibench_avm_byteenable(mibench_function_out_memdep_2_mibench_avm_byteenable),
        .out_memdep_2_mibench_avm_enable(mibench_function_out_memdep_2_mibench_avm_enable),
        .out_memdep_2_mibench_avm_read(mibench_function_out_memdep_2_mibench_avm_read),
        .out_memdep_2_mibench_avm_write(mibench_function_out_memdep_2_mibench_avm_write),
        .out_memdep_2_mibench_avm_writedata(mibench_function_out_memdep_2_mibench_avm_writedata),
        .out_memdep_3_mibench_avm_address(mibench_function_out_memdep_3_mibench_avm_address),
        .out_memdep_3_mibench_avm_burstcount(mibench_function_out_memdep_3_mibench_avm_burstcount),
        .out_memdep_3_mibench_avm_byteenable(mibench_function_out_memdep_3_mibench_avm_byteenable),
        .out_memdep_3_mibench_avm_enable(mibench_function_out_memdep_3_mibench_avm_enable),
        .out_memdep_3_mibench_avm_read(mibench_function_out_memdep_3_mibench_avm_read),
        .out_memdep_3_mibench_avm_write(mibench_function_out_memdep_3_mibench_avm_write),
        .out_memdep_3_mibench_avm_writedata(mibench_function_out_memdep_3_mibench_avm_writedata),
        .out_memdep_4_mibench_avm_address(mibench_function_out_memdep_4_mibench_avm_address),
        .out_memdep_4_mibench_avm_burstcount(mibench_function_out_memdep_4_mibench_avm_burstcount),
        .out_memdep_4_mibench_avm_byteenable(mibench_function_out_memdep_4_mibench_avm_byteenable),
        .out_memdep_4_mibench_avm_enable(mibench_function_out_memdep_4_mibench_avm_enable),
        .out_memdep_4_mibench_avm_read(mibench_function_out_memdep_4_mibench_avm_read),
        .out_memdep_4_mibench_avm_write(mibench_function_out_memdep_4_mibench_avm_write),
        .out_memdep_4_mibench_avm_writedata(mibench_function_out_memdep_4_mibench_avm_writedata),
        .out_memdep_mibench_avm_address(mibench_function_out_memdep_mibench_avm_address),
        .out_memdep_mibench_avm_burstcount(mibench_function_out_memdep_mibench_avm_burstcount),
        .out_memdep_mibench_avm_byteenable(mibench_function_out_memdep_mibench_avm_byteenable),
        .out_memdep_mibench_avm_enable(mibench_function_out_memdep_mibench_avm_enable),
        .out_memdep_mibench_avm_read(mibench_function_out_memdep_mibench_avm_read),
        .out_memdep_mibench_avm_write(mibench_function_out_memdep_mibench_avm_write),
        .out_memdep_mibench_avm_writedata(mibench_function_out_memdep_mibench_avm_writedata),
        .out_stall_out(),
        .out_unnamed_mibench5_mibench_avm_address(mibench_function_out_unnamed_mibench5_mibench_avm_address),
        .out_unnamed_mibench5_mibench_avm_burstcount(mibench_function_out_unnamed_mibench5_mibench_avm_burstcount),
        .out_unnamed_mibench5_mibench_avm_byteenable(mibench_function_out_unnamed_mibench5_mibench_avm_byteenable),
        .out_unnamed_mibench5_mibench_avm_enable(mibench_function_out_unnamed_mibench5_mibench_avm_enable),
        .out_unnamed_mibench5_mibench_avm_read(mibench_function_out_unnamed_mibench5_mibench_avm_read),
        .out_unnamed_mibench5_mibench_avm_write(mibench_function_out_unnamed_mibench5_mibench_avm_write),
        .out_unnamed_mibench5_mibench_avm_writedata(mibench_function_out_unnamed_mibench5_mibench_avm_writedata),
        .out_unnamed_mibench7_mibench_avm_address(mibench_function_out_unnamed_mibench7_mibench_avm_address),
        .out_unnamed_mibench7_mibench_avm_burstcount(mibench_function_out_unnamed_mibench7_mibench_avm_burstcount),
        .out_unnamed_mibench7_mibench_avm_byteenable(mibench_function_out_unnamed_mibench7_mibench_avm_byteenable),
        .out_unnamed_mibench7_mibench_avm_enable(mibench_function_out_unnamed_mibench7_mibench_avm_enable),
        .out_unnamed_mibench7_mibench_avm_read(mibench_function_out_unnamed_mibench7_mibench_avm_read),
        .out_unnamed_mibench7_mibench_avm_write(mibench_function_out_unnamed_mibench7_mibench_avm_write),
        .out_unnamed_mibench7_mibench_avm_writedata(mibench_function_out_unnamed_mibench7_mibench_avm_writedata),
        .out_unnamed_mibench8_mibench_avm_address(mibench_function_out_unnamed_mibench8_mibench_avm_address),
        .out_unnamed_mibench8_mibench_avm_burstcount(mibench_function_out_unnamed_mibench8_mibench_avm_burstcount),
        .out_unnamed_mibench8_mibench_avm_byteenable(mibench_function_out_unnamed_mibench8_mibench_avm_byteenable),
        .out_unnamed_mibench8_mibench_avm_enable(mibench_function_out_unnamed_mibench8_mibench_avm_enable),
        .out_unnamed_mibench8_mibench_avm_read(mibench_function_out_unnamed_mibench8_mibench_avm_read),
        .out_unnamed_mibench8_mibench_avm_write(mibench_function_out_unnamed_mibench8_mibench_avm_write),
        .out_unnamed_mibench8_mibench_avm_writedata(mibench_function_out_unnamed_mibench8_mibench_avm_writedata),
        .out_unnamed_mibench9_mibench_avm_address(mibench_function_out_unnamed_mibench9_mibench_avm_address),
        .out_unnamed_mibench9_mibench_avm_burstcount(mibench_function_out_unnamed_mibench9_mibench_avm_burstcount),
        .out_unnamed_mibench9_mibench_avm_byteenable(mibench_function_out_unnamed_mibench9_mibench_avm_byteenable),
        .out_unnamed_mibench9_mibench_avm_enable(mibench_function_out_unnamed_mibench9_mibench_avm_enable),
        .out_unnamed_mibench9_mibench_avm_read(mibench_function_out_unnamed_mibench9_mibench_avm_read),
        .out_unnamed_mibench9_mibench_avm_write(mibench_function_out_unnamed_mibench9_mibench_avm_write),
        .out_unnamed_mibench9_mibench_avm_writedata(mibench_function_out_unnamed_mibench9_mibench_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_mibench_address(GPOUT,56)
    assign avm_memdep_1_mibench_address = mibench_function_out_memdep_1_mibench_avm_address;

    // avm_memdep_1_mibench_burstcount(GPOUT,57)
    assign avm_memdep_1_mibench_burstcount = mibench_function_out_memdep_1_mibench_avm_burstcount;

    // avm_memdep_1_mibench_byteenable(GPOUT,58)
    assign avm_memdep_1_mibench_byteenable = mibench_function_out_memdep_1_mibench_avm_byteenable;

    // avm_memdep_1_mibench_enable(GPOUT,59)
    assign avm_memdep_1_mibench_enable = mibench_function_out_memdep_1_mibench_avm_enable;

    // avm_memdep_1_mibench_read(GPOUT,60)
    assign avm_memdep_1_mibench_read = mibench_function_out_memdep_1_mibench_avm_read;

    // avm_memdep_1_mibench_write(GPOUT,61)
    assign avm_memdep_1_mibench_write = mibench_function_out_memdep_1_mibench_avm_write;

    // avm_memdep_1_mibench_writedata(GPOUT,62)
    assign avm_memdep_1_mibench_writedata = mibench_function_out_memdep_1_mibench_avm_writedata;

    // avm_memdep_2_mibench_address(GPOUT,63)
    assign avm_memdep_2_mibench_address = mibench_function_out_memdep_2_mibench_avm_address;

    // avm_memdep_2_mibench_burstcount(GPOUT,64)
    assign avm_memdep_2_mibench_burstcount = mibench_function_out_memdep_2_mibench_avm_burstcount;

    // avm_memdep_2_mibench_byteenable(GPOUT,65)
    assign avm_memdep_2_mibench_byteenable = mibench_function_out_memdep_2_mibench_avm_byteenable;

    // avm_memdep_2_mibench_enable(GPOUT,66)
    assign avm_memdep_2_mibench_enable = mibench_function_out_memdep_2_mibench_avm_enable;

    // avm_memdep_2_mibench_read(GPOUT,67)
    assign avm_memdep_2_mibench_read = mibench_function_out_memdep_2_mibench_avm_read;

    // avm_memdep_2_mibench_write(GPOUT,68)
    assign avm_memdep_2_mibench_write = mibench_function_out_memdep_2_mibench_avm_write;

    // avm_memdep_2_mibench_writedata(GPOUT,69)
    assign avm_memdep_2_mibench_writedata = mibench_function_out_memdep_2_mibench_avm_writedata;

    // avm_memdep_3_mibench_address(GPOUT,70)
    assign avm_memdep_3_mibench_address = mibench_function_out_memdep_3_mibench_avm_address;

    // avm_memdep_3_mibench_burstcount(GPOUT,71)
    assign avm_memdep_3_mibench_burstcount = mibench_function_out_memdep_3_mibench_avm_burstcount;

    // avm_memdep_3_mibench_byteenable(GPOUT,72)
    assign avm_memdep_3_mibench_byteenable = mibench_function_out_memdep_3_mibench_avm_byteenable;

    // avm_memdep_3_mibench_enable(GPOUT,73)
    assign avm_memdep_3_mibench_enable = mibench_function_out_memdep_3_mibench_avm_enable;

    // avm_memdep_3_mibench_read(GPOUT,74)
    assign avm_memdep_3_mibench_read = mibench_function_out_memdep_3_mibench_avm_read;

    // avm_memdep_3_mibench_write(GPOUT,75)
    assign avm_memdep_3_mibench_write = mibench_function_out_memdep_3_mibench_avm_write;

    // avm_memdep_3_mibench_writedata(GPOUT,76)
    assign avm_memdep_3_mibench_writedata = mibench_function_out_memdep_3_mibench_avm_writedata;

    // avm_memdep_4_mibench_address(GPOUT,77)
    assign avm_memdep_4_mibench_address = mibench_function_out_memdep_4_mibench_avm_address;

    // avm_memdep_4_mibench_burstcount(GPOUT,78)
    assign avm_memdep_4_mibench_burstcount = mibench_function_out_memdep_4_mibench_avm_burstcount;

    // avm_memdep_4_mibench_byteenable(GPOUT,79)
    assign avm_memdep_4_mibench_byteenable = mibench_function_out_memdep_4_mibench_avm_byteenable;

    // avm_memdep_4_mibench_enable(GPOUT,80)
    assign avm_memdep_4_mibench_enable = mibench_function_out_memdep_4_mibench_avm_enable;

    // avm_memdep_4_mibench_read(GPOUT,81)
    assign avm_memdep_4_mibench_read = mibench_function_out_memdep_4_mibench_avm_read;

    // avm_memdep_4_mibench_write(GPOUT,82)
    assign avm_memdep_4_mibench_write = mibench_function_out_memdep_4_mibench_avm_write;

    // avm_memdep_4_mibench_writedata(GPOUT,83)
    assign avm_memdep_4_mibench_writedata = mibench_function_out_memdep_4_mibench_avm_writedata;

    // avm_memdep_mibench_address(GPOUT,84)
    assign avm_memdep_mibench_address = mibench_function_out_memdep_mibench_avm_address;

    // avm_memdep_mibench_burstcount(GPOUT,85)
    assign avm_memdep_mibench_burstcount = mibench_function_out_memdep_mibench_avm_burstcount;

    // avm_memdep_mibench_byteenable(GPOUT,86)
    assign avm_memdep_mibench_byteenable = mibench_function_out_memdep_mibench_avm_byteenable;

    // avm_memdep_mibench_enable(GPOUT,87)
    assign avm_memdep_mibench_enable = mibench_function_out_memdep_mibench_avm_enable;

    // avm_memdep_mibench_read(GPOUT,88)
    assign avm_memdep_mibench_read = mibench_function_out_memdep_mibench_avm_read;

    // avm_memdep_mibench_write(GPOUT,89)
    assign avm_memdep_mibench_write = mibench_function_out_memdep_mibench_avm_write;

    // avm_memdep_mibench_writedata(GPOUT,90)
    assign avm_memdep_mibench_writedata = mibench_function_out_memdep_mibench_avm_writedata;

    // avm_unnamed_mibench5_mibench_address(GPOUT,91)
    assign avm_unnamed_mibench5_mibench_address = mibench_function_out_unnamed_mibench5_mibench_avm_address;

    // avm_unnamed_mibench5_mibench_burstcount(GPOUT,92)
    assign avm_unnamed_mibench5_mibench_burstcount = mibench_function_out_unnamed_mibench5_mibench_avm_burstcount;

    // avm_unnamed_mibench5_mibench_byteenable(GPOUT,93)
    assign avm_unnamed_mibench5_mibench_byteenable = mibench_function_out_unnamed_mibench5_mibench_avm_byteenable;

    // avm_unnamed_mibench5_mibench_enable(GPOUT,94)
    assign avm_unnamed_mibench5_mibench_enable = mibench_function_out_unnamed_mibench5_mibench_avm_enable;

    // avm_unnamed_mibench5_mibench_read(GPOUT,95)
    assign avm_unnamed_mibench5_mibench_read = mibench_function_out_unnamed_mibench5_mibench_avm_read;

    // avm_unnamed_mibench5_mibench_write(GPOUT,96)
    assign avm_unnamed_mibench5_mibench_write = mibench_function_out_unnamed_mibench5_mibench_avm_write;

    // avm_unnamed_mibench5_mibench_writedata(GPOUT,97)
    assign avm_unnamed_mibench5_mibench_writedata = mibench_function_out_unnamed_mibench5_mibench_avm_writedata;

    // avm_unnamed_mibench7_mibench_address(GPOUT,98)
    assign avm_unnamed_mibench7_mibench_address = mibench_function_out_unnamed_mibench7_mibench_avm_address;

    // avm_unnamed_mibench7_mibench_burstcount(GPOUT,99)
    assign avm_unnamed_mibench7_mibench_burstcount = mibench_function_out_unnamed_mibench7_mibench_avm_burstcount;

    // avm_unnamed_mibench7_mibench_byteenable(GPOUT,100)
    assign avm_unnamed_mibench7_mibench_byteenable = mibench_function_out_unnamed_mibench7_mibench_avm_byteenable;

    // avm_unnamed_mibench7_mibench_enable(GPOUT,101)
    assign avm_unnamed_mibench7_mibench_enable = mibench_function_out_unnamed_mibench7_mibench_avm_enable;

    // avm_unnamed_mibench7_mibench_read(GPOUT,102)
    assign avm_unnamed_mibench7_mibench_read = mibench_function_out_unnamed_mibench7_mibench_avm_read;

    // avm_unnamed_mibench7_mibench_write(GPOUT,103)
    assign avm_unnamed_mibench7_mibench_write = mibench_function_out_unnamed_mibench7_mibench_avm_write;

    // avm_unnamed_mibench7_mibench_writedata(GPOUT,104)
    assign avm_unnamed_mibench7_mibench_writedata = mibench_function_out_unnamed_mibench7_mibench_avm_writedata;

    // avm_unnamed_mibench8_mibench_address(GPOUT,105)
    assign avm_unnamed_mibench8_mibench_address = mibench_function_out_unnamed_mibench8_mibench_avm_address;

    // avm_unnamed_mibench8_mibench_burstcount(GPOUT,106)
    assign avm_unnamed_mibench8_mibench_burstcount = mibench_function_out_unnamed_mibench8_mibench_avm_burstcount;

    // avm_unnamed_mibench8_mibench_byteenable(GPOUT,107)
    assign avm_unnamed_mibench8_mibench_byteenable = mibench_function_out_unnamed_mibench8_mibench_avm_byteenable;

    // avm_unnamed_mibench8_mibench_enable(GPOUT,108)
    assign avm_unnamed_mibench8_mibench_enable = mibench_function_out_unnamed_mibench8_mibench_avm_enable;

    // avm_unnamed_mibench8_mibench_read(GPOUT,109)
    assign avm_unnamed_mibench8_mibench_read = mibench_function_out_unnamed_mibench8_mibench_avm_read;

    // avm_unnamed_mibench8_mibench_write(GPOUT,110)
    assign avm_unnamed_mibench8_mibench_write = mibench_function_out_unnamed_mibench8_mibench_avm_write;

    // avm_unnamed_mibench8_mibench_writedata(GPOUT,111)
    assign avm_unnamed_mibench8_mibench_writedata = mibench_function_out_unnamed_mibench8_mibench_avm_writedata;

    // avm_unnamed_mibench9_mibench_address(GPOUT,112)
    assign avm_unnamed_mibench9_mibench_address = mibench_function_out_unnamed_mibench9_mibench_avm_address;

    // avm_unnamed_mibench9_mibench_burstcount(GPOUT,113)
    assign avm_unnamed_mibench9_mibench_burstcount = mibench_function_out_unnamed_mibench9_mibench_avm_burstcount;

    // avm_unnamed_mibench9_mibench_byteenable(GPOUT,114)
    assign avm_unnamed_mibench9_mibench_byteenable = mibench_function_out_unnamed_mibench9_mibench_avm_byteenable;

    // avm_unnamed_mibench9_mibench_enable(GPOUT,115)
    assign avm_unnamed_mibench9_mibench_enable = mibench_function_out_unnamed_mibench9_mibench_avm_enable;

    // avm_unnamed_mibench9_mibench_read(GPOUT,116)
    assign avm_unnamed_mibench9_mibench_read = mibench_function_out_unnamed_mibench9_mibench_avm_read;

    // avm_unnamed_mibench9_mibench_write(GPOUT,117)
    assign avm_unnamed_mibench9_mibench_write = mibench_function_out_unnamed_mibench9_mibench_avm_write;

    // avm_unnamed_mibench9_mibench_writedata(GPOUT,118)
    assign avm_unnamed_mibench9_mibench_writedata = mibench_function_out_unnamed_mibench9_mibench_avm_writedata;

    // avst_iord_bl_call_mibench_ready(GPOUT,119)
    assign avst_iord_bl_call_mibench_ready = mibench_function_out_iord_bl_call_mibench_o_fifoready;

    // avst_iowr_bl_return_mibench_data(GPOUT,120)
    assign avst_iowr_bl_return_mibench_data = mibench_function_out_iowr_bl_return_mibench_o_fifodata;

    // avst_iowr_bl_return_mibench_valid(GPOUT,121)
    assign avst_iowr_bl_return_mibench_valid = mibench_function_out_iowr_bl_return_mibench_o_fifovalid;

    // not_ready(LOGICAL,54)
    assign not_ready_q = ~ (mibench_function_out_iord_bl_call_mibench_o_fifoready);

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

    // busy(GPOUT,122)
    assign busy = busy_or_q;

    // done(GPOUT,123)
    assign done = mibench_function_out_iowr_bl_return_mibench_o_fifovalid;

    // returndata(GPOUT,124)
    assign returndata = mibench_function_out_iowr_bl_return_mibench_o_fifodata;

endmodule
