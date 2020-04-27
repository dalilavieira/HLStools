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

// SystemVerilog created from fir_function_wrapper
// SystemVerilog created on Mon Apr 27 09:47:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_function_wrapper (
    input wire [15:0] avm_lm121_fir_readdata,
    input wire [0:0] avm_lm121_fir_readdatavalid,
    input wire [0:0] avm_lm121_fir_waitrequest,
    input wire [0:0] avm_lm121_fir_writeack,
    input wire [15:0] avm_lm2_fir_readdata,
    input wire [0:0] avm_lm2_fir_readdatavalid,
    input wire [0:0] avm_lm2_fir_waitrequest,
    input wire [0:0] avm_lm2_fir_writeack,
    input wire [15:0] avm_memdep_3_fir_readdata,
    input wire [0:0] avm_memdep_3_fir_readdatavalid,
    input wire [0:0] avm_memdep_3_fir_waitrequest,
    input wire [0:0] avm_memdep_3_fir_writeack,
    input wire [15:0] avm_memdep_4_fir_readdata,
    input wire [0:0] avm_memdep_4_fir_readdatavalid,
    input wire [0:0] avm_memdep_4_fir_waitrequest,
    input wire [0:0] avm_memdep_4_fir_writeack,
    input wire [15:0] avm_memdep_5_fir_readdata,
    input wire [0:0] avm_memdep_5_fir_readdatavalid,
    input wire [0:0] avm_memdep_5_fir_waitrequest,
    input wire [0:0] avm_memdep_5_fir_writeack,
    input wire [15:0] avm_memdep_fir_readdata,
    input wire [0:0] avm_memdep_fir_readdatavalid,
    input wire [0:0] avm_memdep_fir_waitrequest,
    input wire [0:0] avm_memdep_fir_writeack,
    input wire [15:0] avm_unnamed_fir10_fir_readdata,
    input wire [0:0] avm_unnamed_fir10_fir_readdatavalid,
    input wire [0:0] avm_unnamed_fir10_fir_waitrequest,
    input wire [0:0] avm_unnamed_fir10_fir_writeack,
    input wire [63:0] avst_iord_bl_call_fir_data,
    input wire [0:0] avst_iord_bl_call_fir_valid,
    input wire [0:0] avst_iowr_bl_return_fir_almostfull,
    input wire [0:0] avst_iowr_bl_return_fir_ready,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [31:0] taps,
    input wire [0:0] valid_in,
    output wire [31:0] avm_lm121_fir_address,
    output wire [0:0] avm_lm121_fir_burstcount,
    output wire [1:0] avm_lm121_fir_byteenable,
    output wire [0:0] avm_lm121_fir_enable,
    output wire [0:0] avm_lm121_fir_read,
    output wire [0:0] avm_lm121_fir_write,
    output wire [15:0] avm_lm121_fir_writedata,
    output wire [31:0] avm_lm2_fir_address,
    output wire [0:0] avm_lm2_fir_burstcount,
    output wire [1:0] avm_lm2_fir_byteenable,
    output wire [0:0] avm_lm2_fir_enable,
    output wire [0:0] avm_lm2_fir_read,
    output wire [0:0] avm_lm2_fir_write,
    output wire [15:0] avm_lm2_fir_writedata,
    output wire [31:0] avm_memdep_3_fir_address,
    output wire [0:0] avm_memdep_3_fir_burstcount,
    output wire [1:0] avm_memdep_3_fir_byteenable,
    output wire [0:0] avm_memdep_3_fir_enable,
    output wire [0:0] avm_memdep_3_fir_read,
    output wire [0:0] avm_memdep_3_fir_write,
    output wire [15:0] avm_memdep_3_fir_writedata,
    output wire [31:0] avm_memdep_4_fir_address,
    output wire [0:0] avm_memdep_4_fir_burstcount,
    output wire [1:0] avm_memdep_4_fir_byteenable,
    output wire [0:0] avm_memdep_4_fir_enable,
    output wire [0:0] avm_memdep_4_fir_read,
    output wire [0:0] avm_memdep_4_fir_write,
    output wire [15:0] avm_memdep_4_fir_writedata,
    output wire [31:0] avm_memdep_5_fir_address,
    output wire [0:0] avm_memdep_5_fir_burstcount,
    output wire [1:0] avm_memdep_5_fir_byteenable,
    output wire [0:0] avm_memdep_5_fir_enable,
    output wire [0:0] avm_memdep_5_fir_read,
    output wire [0:0] avm_memdep_5_fir_write,
    output wire [15:0] avm_memdep_5_fir_writedata,
    output wire [31:0] avm_memdep_fir_address,
    output wire [0:0] avm_memdep_fir_burstcount,
    output wire [1:0] avm_memdep_fir_byteenable,
    output wire [0:0] avm_memdep_fir_enable,
    output wire [0:0] avm_memdep_fir_read,
    output wire [0:0] avm_memdep_fir_write,
    output wire [15:0] avm_memdep_fir_writedata,
    output wire [31:0] avm_unnamed_fir10_fir_address,
    output wire [0:0] avm_unnamed_fir10_fir_burstcount,
    output wire [1:0] avm_unnamed_fir10_fir_byteenable,
    output wire [0:0] avm_unnamed_fir10_fir_enable,
    output wire [0:0] avm_unnamed_fir10_fir_read,
    output wire [0:0] avm_unnamed_fir10_fir_write,
    output wire [15:0] avm_unnamed_fir10_fir_writedata,
    output wire [0:0] avst_iord_bl_call_fir_ready,
    output wire [31:0] avst_iowr_bl_return_fir_data,
    output wire [0:0] avst_iowr_bl_return_fir_valid,
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
    wire [0:0] fir_function_out_iord_bl_call_fir_o_fifoready;
    wire [31:0] fir_function_out_iowr_bl_return_fir_o_fifodata;
    wire [0:0] fir_function_out_iowr_bl_return_fir_o_fifovalid;
    wire [31:0] fir_function_out_lm121_fir_avm_address;
    wire [0:0] fir_function_out_lm121_fir_avm_burstcount;
    wire [1:0] fir_function_out_lm121_fir_avm_byteenable;
    wire [0:0] fir_function_out_lm121_fir_avm_enable;
    wire [0:0] fir_function_out_lm121_fir_avm_read;
    wire [0:0] fir_function_out_lm121_fir_avm_write;
    wire [15:0] fir_function_out_lm121_fir_avm_writedata;
    wire [31:0] fir_function_out_lm2_fir_avm_address;
    wire [0:0] fir_function_out_lm2_fir_avm_burstcount;
    wire [1:0] fir_function_out_lm2_fir_avm_byteenable;
    wire [0:0] fir_function_out_lm2_fir_avm_enable;
    wire [0:0] fir_function_out_lm2_fir_avm_read;
    wire [0:0] fir_function_out_lm2_fir_avm_write;
    wire [15:0] fir_function_out_lm2_fir_avm_writedata;
    wire [31:0] fir_function_out_memdep_3_fir_avm_address;
    wire [0:0] fir_function_out_memdep_3_fir_avm_burstcount;
    wire [1:0] fir_function_out_memdep_3_fir_avm_byteenable;
    wire [0:0] fir_function_out_memdep_3_fir_avm_enable;
    wire [0:0] fir_function_out_memdep_3_fir_avm_read;
    wire [0:0] fir_function_out_memdep_3_fir_avm_write;
    wire [15:0] fir_function_out_memdep_3_fir_avm_writedata;
    wire [31:0] fir_function_out_memdep_4_fir_avm_address;
    wire [0:0] fir_function_out_memdep_4_fir_avm_burstcount;
    wire [1:0] fir_function_out_memdep_4_fir_avm_byteenable;
    wire [0:0] fir_function_out_memdep_4_fir_avm_enable;
    wire [0:0] fir_function_out_memdep_4_fir_avm_read;
    wire [0:0] fir_function_out_memdep_4_fir_avm_write;
    wire [15:0] fir_function_out_memdep_4_fir_avm_writedata;
    wire [31:0] fir_function_out_memdep_5_fir_avm_address;
    wire [0:0] fir_function_out_memdep_5_fir_avm_burstcount;
    wire [1:0] fir_function_out_memdep_5_fir_avm_byteenable;
    wire [0:0] fir_function_out_memdep_5_fir_avm_enable;
    wire [0:0] fir_function_out_memdep_5_fir_avm_read;
    wire [0:0] fir_function_out_memdep_5_fir_avm_write;
    wire [15:0] fir_function_out_memdep_5_fir_avm_writedata;
    wire [31:0] fir_function_out_memdep_fir_avm_address;
    wire [0:0] fir_function_out_memdep_fir_avm_burstcount;
    wire [1:0] fir_function_out_memdep_fir_avm_byteenable;
    wire [0:0] fir_function_out_memdep_fir_avm_enable;
    wire [0:0] fir_function_out_memdep_fir_avm_read;
    wire [0:0] fir_function_out_memdep_fir_avm_write;
    wire [15:0] fir_function_out_memdep_fir_avm_writedata;
    wire [31:0] fir_function_out_unnamed_fir10_fir_avm_address;
    wire [0:0] fir_function_out_unnamed_fir10_fir_avm_burstcount;
    wire [1:0] fir_function_out_unnamed_fir10_fir_avm_byteenable;
    wire [0:0] fir_function_out_unnamed_fir10_fir_avm_enable;
    wire [0:0] fir_function_out_unnamed_fir10_fir_avm_read;
    wire [0:0] fir_function_out_unnamed_fir10_fir_avm_write;
    wire [15:0] fir_function_out_unnamed_fir10_fir_avm_writedata;
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

    // not_stall(LOGICAL,48)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {taps, idx};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // fir_function(BLACKBOX,7)
    fir_function thefir_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_fir_i_fifodata(implicit_input_q),
        .in_iord_bl_call_fir_i_fifovalid(start),
        .in_iowr_bl_return_fir_i_fifoready(not_stall_q),
        .in_lm121_fir_avm_readdata(avm_lm121_fir_readdata),
        .in_lm121_fir_avm_readdatavalid(avm_lm121_fir_readdatavalid),
        .in_lm121_fir_avm_waitrequest(avm_lm121_fir_waitrequest),
        .in_lm121_fir_avm_writeack(avm_lm121_fir_writeack),
        .in_lm2_fir_avm_readdata(avm_lm2_fir_readdata),
        .in_lm2_fir_avm_readdatavalid(avm_lm2_fir_readdatavalid),
        .in_lm2_fir_avm_waitrequest(avm_lm2_fir_waitrequest),
        .in_lm2_fir_avm_writeack(avm_lm2_fir_writeack),
        .in_memdep_3_fir_avm_readdata(avm_memdep_3_fir_readdata),
        .in_memdep_3_fir_avm_readdatavalid(avm_memdep_3_fir_readdatavalid),
        .in_memdep_3_fir_avm_waitrequest(avm_memdep_3_fir_waitrequest),
        .in_memdep_3_fir_avm_writeack(avm_memdep_3_fir_writeack),
        .in_memdep_4_fir_avm_readdata(avm_memdep_4_fir_readdata),
        .in_memdep_4_fir_avm_readdatavalid(avm_memdep_4_fir_readdatavalid),
        .in_memdep_4_fir_avm_waitrequest(avm_memdep_4_fir_waitrequest),
        .in_memdep_4_fir_avm_writeack(avm_memdep_4_fir_writeack),
        .in_memdep_5_fir_avm_readdata(avm_memdep_5_fir_readdata),
        .in_memdep_5_fir_avm_readdatavalid(avm_memdep_5_fir_readdatavalid),
        .in_memdep_5_fir_avm_waitrequest(avm_memdep_5_fir_waitrequest),
        .in_memdep_5_fir_avm_writeack(avm_memdep_5_fir_writeack),
        .in_memdep_fir_avm_readdata(avm_memdep_fir_readdata),
        .in_memdep_fir_avm_readdatavalid(avm_memdep_fir_readdatavalid),
        .in_memdep_fir_avm_waitrequest(avm_memdep_fir_waitrequest),
        .in_memdep_fir_avm_writeack(avm_memdep_fir_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_fir10_fir_avm_readdata(avm_unnamed_fir10_fir_readdata),
        .in_unnamed_fir10_fir_avm_readdatavalid(avm_unnamed_fir10_fir_readdatavalid),
        .in_unnamed_fir10_fir_avm_waitrequest(avm_unnamed_fir10_fir_waitrequest),
        .in_unnamed_fir10_fir_avm_writeack(avm_unnamed_fir10_fir_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_fir_o_fifoready(fir_function_out_iord_bl_call_fir_o_fifoready),
        .out_iowr_bl_return_fir_o_fifodata(fir_function_out_iowr_bl_return_fir_o_fifodata),
        .out_iowr_bl_return_fir_o_fifovalid(fir_function_out_iowr_bl_return_fir_o_fifovalid),
        .out_lm121_fir_avm_address(fir_function_out_lm121_fir_avm_address),
        .out_lm121_fir_avm_burstcount(fir_function_out_lm121_fir_avm_burstcount),
        .out_lm121_fir_avm_byteenable(fir_function_out_lm121_fir_avm_byteenable),
        .out_lm121_fir_avm_enable(fir_function_out_lm121_fir_avm_enable),
        .out_lm121_fir_avm_read(fir_function_out_lm121_fir_avm_read),
        .out_lm121_fir_avm_write(fir_function_out_lm121_fir_avm_write),
        .out_lm121_fir_avm_writedata(fir_function_out_lm121_fir_avm_writedata),
        .out_lm2_fir_avm_address(fir_function_out_lm2_fir_avm_address),
        .out_lm2_fir_avm_burstcount(fir_function_out_lm2_fir_avm_burstcount),
        .out_lm2_fir_avm_byteenable(fir_function_out_lm2_fir_avm_byteenable),
        .out_lm2_fir_avm_enable(fir_function_out_lm2_fir_avm_enable),
        .out_lm2_fir_avm_read(fir_function_out_lm2_fir_avm_read),
        .out_lm2_fir_avm_write(fir_function_out_lm2_fir_avm_write),
        .out_lm2_fir_avm_writedata(fir_function_out_lm2_fir_avm_writedata),
        .out_memdep_3_fir_avm_address(fir_function_out_memdep_3_fir_avm_address),
        .out_memdep_3_fir_avm_burstcount(fir_function_out_memdep_3_fir_avm_burstcount),
        .out_memdep_3_fir_avm_byteenable(fir_function_out_memdep_3_fir_avm_byteenable),
        .out_memdep_3_fir_avm_enable(fir_function_out_memdep_3_fir_avm_enable),
        .out_memdep_3_fir_avm_read(fir_function_out_memdep_3_fir_avm_read),
        .out_memdep_3_fir_avm_write(fir_function_out_memdep_3_fir_avm_write),
        .out_memdep_3_fir_avm_writedata(fir_function_out_memdep_3_fir_avm_writedata),
        .out_memdep_4_fir_avm_address(fir_function_out_memdep_4_fir_avm_address),
        .out_memdep_4_fir_avm_burstcount(fir_function_out_memdep_4_fir_avm_burstcount),
        .out_memdep_4_fir_avm_byteenable(fir_function_out_memdep_4_fir_avm_byteenable),
        .out_memdep_4_fir_avm_enable(fir_function_out_memdep_4_fir_avm_enable),
        .out_memdep_4_fir_avm_read(fir_function_out_memdep_4_fir_avm_read),
        .out_memdep_4_fir_avm_write(fir_function_out_memdep_4_fir_avm_write),
        .out_memdep_4_fir_avm_writedata(fir_function_out_memdep_4_fir_avm_writedata),
        .out_memdep_5_fir_avm_address(fir_function_out_memdep_5_fir_avm_address),
        .out_memdep_5_fir_avm_burstcount(fir_function_out_memdep_5_fir_avm_burstcount),
        .out_memdep_5_fir_avm_byteenable(fir_function_out_memdep_5_fir_avm_byteenable),
        .out_memdep_5_fir_avm_enable(fir_function_out_memdep_5_fir_avm_enable),
        .out_memdep_5_fir_avm_read(fir_function_out_memdep_5_fir_avm_read),
        .out_memdep_5_fir_avm_write(fir_function_out_memdep_5_fir_avm_write),
        .out_memdep_5_fir_avm_writedata(fir_function_out_memdep_5_fir_avm_writedata),
        .out_memdep_fir_avm_address(fir_function_out_memdep_fir_avm_address),
        .out_memdep_fir_avm_burstcount(fir_function_out_memdep_fir_avm_burstcount),
        .out_memdep_fir_avm_byteenable(fir_function_out_memdep_fir_avm_byteenable),
        .out_memdep_fir_avm_enable(fir_function_out_memdep_fir_avm_enable),
        .out_memdep_fir_avm_read(fir_function_out_memdep_fir_avm_read),
        .out_memdep_fir_avm_write(fir_function_out_memdep_fir_avm_write),
        .out_memdep_fir_avm_writedata(fir_function_out_memdep_fir_avm_writedata),
        .out_stall_out(),
        .out_unnamed_fir10_fir_avm_address(fir_function_out_unnamed_fir10_fir_avm_address),
        .out_unnamed_fir10_fir_avm_burstcount(fir_function_out_unnamed_fir10_fir_avm_burstcount),
        .out_unnamed_fir10_fir_avm_byteenable(fir_function_out_unnamed_fir10_fir_avm_byteenable),
        .out_unnamed_fir10_fir_avm_enable(fir_function_out_unnamed_fir10_fir_avm_enable),
        .out_unnamed_fir10_fir_avm_read(fir_function_out_unnamed_fir10_fir_avm_read),
        .out_unnamed_fir10_fir_avm_write(fir_function_out_unnamed_fir10_fir_avm_write),
        .out_unnamed_fir10_fir_avm_writedata(fir_function_out_unnamed_fir10_fir_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm121_fir_address(GPOUT,49)
    assign avm_lm121_fir_address = fir_function_out_lm121_fir_avm_address;

    // avm_lm121_fir_burstcount(GPOUT,50)
    assign avm_lm121_fir_burstcount = fir_function_out_lm121_fir_avm_burstcount;

    // avm_lm121_fir_byteenable(GPOUT,51)
    assign avm_lm121_fir_byteenable = fir_function_out_lm121_fir_avm_byteenable;

    // avm_lm121_fir_enable(GPOUT,52)
    assign avm_lm121_fir_enable = fir_function_out_lm121_fir_avm_enable;

    // avm_lm121_fir_read(GPOUT,53)
    assign avm_lm121_fir_read = fir_function_out_lm121_fir_avm_read;

    // avm_lm121_fir_write(GPOUT,54)
    assign avm_lm121_fir_write = fir_function_out_lm121_fir_avm_write;

    // avm_lm121_fir_writedata(GPOUT,55)
    assign avm_lm121_fir_writedata = fir_function_out_lm121_fir_avm_writedata;

    // avm_lm2_fir_address(GPOUT,56)
    assign avm_lm2_fir_address = fir_function_out_lm2_fir_avm_address;

    // avm_lm2_fir_burstcount(GPOUT,57)
    assign avm_lm2_fir_burstcount = fir_function_out_lm2_fir_avm_burstcount;

    // avm_lm2_fir_byteenable(GPOUT,58)
    assign avm_lm2_fir_byteenable = fir_function_out_lm2_fir_avm_byteenable;

    // avm_lm2_fir_enable(GPOUT,59)
    assign avm_lm2_fir_enable = fir_function_out_lm2_fir_avm_enable;

    // avm_lm2_fir_read(GPOUT,60)
    assign avm_lm2_fir_read = fir_function_out_lm2_fir_avm_read;

    // avm_lm2_fir_write(GPOUT,61)
    assign avm_lm2_fir_write = fir_function_out_lm2_fir_avm_write;

    // avm_lm2_fir_writedata(GPOUT,62)
    assign avm_lm2_fir_writedata = fir_function_out_lm2_fir_avm_writedata;

    // avm_memdep_3_fir_address(GPOUT,63)
    assign avm_memdep_3_fir_address = fir_function_out_memdep_3_fir_avm_address;

    // avm_memdep_3_fir_burstcount(GPOUT,64)
    assign avm_memdep_3_fir_burstcount = fir_function_out_memdep_3_fir_avm_burstcount;

    // avm_memdep_3_fir_byteenable(GPOUT,65)
    assign avm_memdep_3_fir_byteenable = fir_function_out_memdep_3_fir_avm_byteenable;

    // avm_memdep_3_fir_enable(GPOUT,66)
    assign avm_memdep_3_fir_enable = fir_function_out_memdep_3_fir_avm_enable;

    // avm_memdep_3_fir_read(GPOUT,67)
    assign avm_memdep_3_fir_read = fir_function_out_memdep_3_fir_avm_read;

    // avm_memdep_3_fir_write(GPOUT,68)
    assign avm_memdep_3_fir_write = fir_function_out_memdep_3_fir_avm_write;

    // avm_memdep_3_fir_writedata(GPOUT,69)
    assign avm_memdep_3_fir_writedata = fir_function_out_memdep_3_fir_avm_writedata;

    // avm_memdep_4_fir_address(GPOUT,70)
    assign avm_memdep_4_fir_address = fir_function_out_memdep_4_fir_avm_address;

    // avm_memdep_4_fir_burstcount(GPOUT,71)
    assign avm_memdep_4_fir_burstcount = fir_function_out_memdep_4_fir_avm_burstcount;

    // avm_memdep_4_fir_byteenable(GPOUT,72)
    assign avm_memdep_4_fir_byteenable = fir_function_out_memdep_4_fir_avm_byteenable;

    // avm_memdep_4_fir_enable(GPOUT,73)
    assign avm_memdep_4_fir_enable = fir_function_out_memdep_4_fir_avm_enable;

    // avm_memdep_4_fir_read(GPOUT,74)
    assign avm_memdep_4_fir_read = fir_function_out_memdep_4_fir_avm_read;

    // avm_memdep_4_fir_write(GPOUT,75)
    assign avm_memdep_4_fir_write = fir_function_out_memdep_4_fir_avm_write;

    // avm_memdep_4_fir_writedata(GPOUT,76)
    assign avm_memdep_4_fir_writedata = fir_function_out_memdep_4_fir_avm_writedata;

    // avm_memdep_5_fir_address(GPOUT,77)
    assign avm_memdep_5_fir_address = fir_function_out_memdep_5_fir_avm_address;

    // avm_memdep_5_fir_burstcount(GPOUT,78)
    assign avm_memdep_5_fir_burstcount = fir_function_out_memdep_5_fir_avm_burstcount;

    // avm_memdep_5_fir_byteenable(GPOUT,79)
    assign avm_memdep_5_fir_byteenable = fir_function_out_memdep_5_fir_avm_byteenable;

    // avm_memdep_5_fir_enable(GPOUT,80)
    assign avm_memdep_5_fir_enable = fir_function_out_memdep_5_fir_avm_enable;

    // avm_memdep_5_fir_read(GPOUT,81)
    assign avm_memdep_5_fir_read = fir_function_out_memdep_5_fir_avm_read;

    // avm_memdep_5_fir_write(GPOUT,82)
    assign avm_memdep_5_fir_write = fir_function_out_memdep_5_fir_avm_write;

    // avm_memdep_5_fir_writedata(GPOUT,83)
    assign avm_memdep_5_fir_writedata = fir_function_out_memdep_5_fir_avm_writedata;

    // avm_memdep_fir_address(GPOUT,84)
    assign avm_memdep_fir_address = fir_function_out_memdep_fir_avm_address;

    // avm_memdep_fir_burstcount(GPOUT,85)
    assign avm_memdep_fir_burstcount = fir_function_out_memdep_fir_avm_burstcount;

    // avm_memdep_fir_byteenable(GPOUT,86)
    assign avm_memdep_fir_byteenable = fir_function_out_memdep_fir_avm_byteenable;

    // avm_memdep_fir_enable(GPOUT,87)
    assign avm_memdep_fir_enable = fir_function_out_memdep_fir_avm_enable;

    // avm_memdep_fir_read(GPOUT,88)
    assign avm_memdep_fir_read = fir_function_out_memdep_fir_avm_read;

    // avm_memdep_fir_write(GPOUT,89)
    assign avm_memdep_fir_write = fir_function_out_memdep_fir_avm_write;

    // avm_memdep_fir_writedata(GPOUT,90)
    assign avm_memdep_fir_writedata = fir_function_out_memdep_fir_avm_writedata;

    // avm_unnamed_fir10_fir_address(GPOUT,91)
    assign avm_unnamed_fir10_fir_address = fir_function_out_unnamed_fir10_fir_avm_address;

    // avm_unnamed_fir10_fir_burstcount(GPOUT,92)
    assign avm_unnamed_fir10_fir_burstcount = fir_function_out_unnamed_fir10_fir_avm_burstcount;

    // avm_unnamed_fir10_fir_byteenable(GPOUT,93)
    assign avm_unnamed_fir10_fir_byteenable = fir_function_out_unnamed_fir10_fir_avm_byteenable;

    // avm_unnamed_fir10_fir_enable(GPOUT,94)
    assign avm_unnamed_fir10_fir_enable = fir_function_out_unnamed_fir10_fir_avm_enable;

    // avm_unnamed_fir10_fir_read(GPOUT,95)
    assign avm_unnamed_fir10_fir_read = fir_function_out_unnamed_fir10_fir_avm_read;

    // avm_unnamed_fir10_fir_write(GPOUT,96)
    assign avm_unnamed_fir10_fir_write = fir_function_out_unnamed_fir10_fir_avm_write;

    // avm_unnamed_fir10_fir_writedata(GPOUT,97)
    assign avm_unnamed_fir10_fir_writedata = fir_function_out_unnamed_fir10_fir_avm_writedata;

    // avst_iord_bl_call_fir_ready(GPOUT,98)
    assign avst_iord_bl_call_fir_ready = fir_function_out_iord_bl_call_fir_o_fifoready;

    // avst_iowr_bl_return_fir_data(GPOUT,99)
    assign avst_iowr_bl_return_fir_data = fir_function_out_iowr_bl_return_fir_o_fifodata;

    // avst_iowr_bl_return_fir_valid(GPOUT,100)
    assign avst_iowr_bl_return_fir_valid = fir_function_out_iowr_bl_return_fir_o_fifovalid;

    // not_ready(LOGICAL,47)
    assign not_ready_q = ~ (fir_function_out_iord_bl_call_fir_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,105)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,104)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,101)
    assign busy = busy_or_q;

    // done(GPOUT,102)
    assign done = fir_function_out_iowr_bl_return_fir_o_fifovalid;

    // returndata(GPOUT,103)
    assign returndata = fir_function_out_iowr_bl_return_fir_o_fifodata;

endmodule
