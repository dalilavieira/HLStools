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

// SystemVerilog created from kmeans_function_wrapper
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_function_wrapper (
    input wire [15:0] avm_lm1_kmeans_readdata,
    input wire [0:0] avm_lm1_kmeans_readdatavalid,
    input wire [0:0] avm_lm1_kmeans_waitrequest,
    input wire [0:0] avm_lm1_kmeans_writeack,
    input wire [15:0] avm_lm252_kmeans_readdata,
    input wire [0:0] avm_lm252_kmeans_readdatavalid,
    input wire [0:0] avm_lm252_kmeans_waitrequest,
    input wire [0:0] avm_lm252_kmeans_writeack,
    input wire [15:0] avm_memdep_3_kmeans_readdata,
    input wire [0:0] avm_memdep_3_kmeans_readdatavalid,
    input wire [0:0] avm_memdep_3_kmeans_waitrequest,
    input wire [0:0] avm_memdep_3_kmeans_writeack,
    input wire [15:0] avm_memdep_4_kmeans_readdata,
    input wire [0:0] avm_memdep_4_kmeans_readdatavalid,
    input wire [0:0] avm_memdep_4_kmeans_waitrequest,
    input wire [0:0] avm_memdep_4_kmeans_writeack,
    input wire [15:0] avm_memdep_5_kmeans_readdata,
    input wire [0:0] avm_memdep_5_kmeans_readdatavalid,
    input wire [0:0] avm_memdep_5_kmeans_waitrequest,
    input wire [0:0] avm_memdep_5_kmeans_writeack,
    input wire [15:0] avm_memdep_kmeans_readdata,
    input wire [0:0] avm_memdep_kmeans_readdatavalid,
    input wire [0:0] avm_memdep_kmeans_waitrequest,
    input wire [0:0] avm_memdep_kmeans_writeack,
    input wire [15:0] avm_unnamed_kmeans20_kmeans_readdata,
    input wire [0:0] avm_unnamed_kmeans20_kmeans_readdatavalid,
    input wire [0:0] avm_unnamed_kmeans20_kmeans_waitrequest,
    input wire [0:0] avm_unnamed_kmeans20_kmeans_writeack,
    input wire [95:0] avst_iord_bl_call_kmeans_data,
    input wire [0:0] avst_iord_bl_call_kmeans_valid,
    input wire [0:0] avst_iowr_bl_return_kmeans_almostfull,
    input wire [0:0] avst_iowr_bl_return_kmeans_ready,
    input wire [31:0] idx,
    input wire [31:0] num_clusters,
    input wire [31:0] num_dim,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_lm1_kmeans_address,
    output wire [0:0] avm_lm1_kmeans_burstcount,
    output wire [1:0] avm_lm1_kmeans_byteenable,
    output wire [0:0] avm_lm1_kmeans_enable,
    output wire [0:0] avm_lm1_kmeans_read,
    output wire [0:0] avm_lm1_kmeans_write,
    output wire [15:0] avm_lm1_kmeans_writedata,
    output wire [31:0] avm_lm252_kmeans_address,
    output wire [0:0] avm_lm252_kmeans_burstcount,
    output wire [1:0] avm_lm252_kmeans_byteenable,
    output wire [0:0] avm_lm252_kmeans_enable,
    output wire [0:0] avm_lm252_kmeans_read,
    output wire [0:0] avm_lm252_kmeans_write,
    output wire [15:0] avm_lm252_kmeans_writedata,
    output wire [31:0] avm_memdep_3_kmeans_address,
    output wire [0:0] avm_memdep_3_kmeans_burstcount,
    output wire [1:0] avm_memdep_3_kmeans_byteenable,
    output wire [0:0] avm_memdep_3_kmeans_enable,
    output wire [0:0] avm_memdep_3_kmeans_read,
    output wire [0:0] avm_memdep_3_kmeans_write,
    output wire [15:0] avm_memdep_3_kmeans_writedata,
    output wire [31:0] avm_memdep_4_kmeans_address,
    output wire [0:0] avm_memdep_4_kmeans_burstcount,
    output wire [1:0] avm_memdep_4_kmeans_byteenable,
    output wire [0:0] avm_memdep_4_kmeans_enable,
    output wire [0:0] avm_memdep_4_kmeans_read,
    output wire [0:0] avm_memdep_4_kmeans_write,
    output wire [15:0] avm_memdep_4_kmeans_writedata,
    output wire [31:0] avm_memdep_5_kmeans_address,
    output wire [0:0] avm_memdep_5_kmeans_burstcount,
    output wire [1:0] avm_memdep_5_kmeans_byteenable,
    output wire [0:0] avm_memdep_5_kmeans_enable,
    output wire [0:0] avm_memdep_5_kmeans_read,
    output wire [0:0] avm_memdep_5_kmeans_write,
    output wire [15:0] avm_memdep_5_kmeans_writedata,
    output wire [31:0] avm_memdep_kmeans_address,
    output wire [0:0] avm_memdep_kmeans_burstcount,
    output wire [1:0] avm_memdep_kmeans_byteenable,
    output wire [0:0] avm_memdep_kmeans_enable,
    output wire [0:0] avm_memdep_kmeans_read,
    output wire [0:0] avm_memdep_kmeans_write,
    output wire [15:0] avm_memdep_kmeans_writedata,
    output wire [31:0] avm_unnamed_kmeans20_kmeans_address,
    output wire [0:0] avm_unnamed_kmeans20_kmeans_burstcount,
    output wire [1:0] avm_unnamed_kmeans20_kmeans_byteenable,
    output wire [0:0] avm_unnamed_kmeans20_kmeans_enable,
    output wire [0:0] avm_unnamed_kmeans20_kmeans_read,
    output wire [0:0] avm_unnamed_kmeans20_kmeans_write,
    output wire [15:0] avm_unnamed_kmeans20_kmeans_writedata,
    output wire [0:0] avst_iord_bl_call_kmeans_ready,
    output wire [31:0] avst_iowr_bl_return_kmeans_data,
    output wire [0:0] avst_iowr_bl_return_kmeans_valid,
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
    wire [95:0] implicit_input_q;
    wire [0:0] kmeans_function_out_iord_bl_call_kmeans_o_fifoready;
    wire [31:0] kmeans_function_out_iowr_bl_return_kmeans_o_fifodata;
    wire [0:0] kmeans_function_out_iowr_bl_return_kmeans_o_fifovalid;
    wire [31:0] kmeans_function_out_lm1_kmeans_avm_address;
    wire [0:0] kmeans_function_out_lm1_kmeans_avm_burstcount;
    wire [1:0] kmeans_function_out_lm1_kmeans_avm_byteenable;
    wire [0:0] kmeans_function_out_lm1_kmeans_avm_enable;
    wire [0:0] kmeans_function_out_lm1_kmeans_avm_read;
    wire [0:0] kmeans_function_out_lm1_kmeans_avm_write;
    wire [15:0] kmeans_function_out_lm1_kmeans_avm_writedata;
    wire [31:0] kmeans_function_out_lm252_kmeans_avm_address;
    wire [0:0] kmeans_function_out_lm252_kmeans_avm_burstcount;
    wire [1:0] kmeans_function_out_lm252_kmeans_avm_byteenable;
    wire [0:0] kmeans_function_out_lm252_kmeans_avm_enable;
    wire [0:0] kmeans_function_out_lm252_kmeans_avm_read;
    wire [0:0] kmeans_function_out_lm252_kmeans_avm_write;
    wire [15:0] kmeans_function_out_lm252_kmeans_avm_writedata;
    wire [31:0] kmeans_function_out_memdep_3_kmeans_avm_address;
    wire [0:0] kmeans_function_out_memdep_3_kmeans_avm_burstcount;
    wire [1:0] kmeans_function_out_memdep_3_kmeans_avm_byteenable;
    wire [0:0] kmeans_function_out_memdep_3_kmeans_avm_enable;
    wire [0:0] kmeans_function_out_memdep_3_kmeans_avm_read;
    wire [0:0] kmeans_function_out_memdep_3_kmeans_avm_write;
    wire [15:0] kmeans_function_out_memdep_3_kmeans_avm_writedata;
    wire [31:0] kmeans_function_out_memdep_4_kmeans_avm_address;
    wire [0:0] kmeans_function_out_memdep_4_kmeans_avm_burstcount;
    wire [1:0] kmeans_function_out_memdep_4_kmeans_avm_byteenable;
    wire [0:0] kmeans_function_out_memdep_4_kmeans_avm_enable;
    wire [0:0] kmeans_function_out_memdep_4_kmeans_avm_read;
    wire [0:0] kmeans_function_out_memdep_4_kmeans_avm_write;
    wire [15:0] kmeans_function_out_memdep_4_kmeans_avm_writedata;
    wire [31:0] kmeans_function_out_memdep_5_kmeans_avm_address;
    wire [0:0] kmeans_function_out_memdep_5_kmeans_avm_burstcount;
    wire [1:0] kmeans_function_out_memdep_5_kmeans_avm_byteenable;
    wire [0:0] kmeans_function_out_memdep_5_kmeans_avm_enable;
    wire [0:0] kmeans_function_out_memdep_5_kmeans_avm_read;
    wire [0:0] kmeans_function_out_memdep_5_kmeans_avm_write;
    wire [15:0] kmeans_function_out_memdep_5_kmeans_avm_writedata;
    wire [31:0] kmeans_function_out_memdep_kmeans_avm_address;
    wire [0:0] kmeans_function_out_memdep_kmeans_avm_burstcount;
    wire [1:0] kmeans_function_out_memdep_kmeans_avm_byteenable;
    wire [0:0] kmeans_function_out_memdep_kmeans_avm_enable;
    wire [0:0] kmeans_function_out_memdep_kmeans_avm_read;
    wire [0:0] kmeans_function_out_memdep_kmeans_avm_write;
    wire [15:0] kmeans_function_out_memdep_kmeans_avm_writedata;
    wire [31:0] kmeans_function_out_unnamed_kmeans20_kmeans_avm_address;
    wire [0:0] kmeans_function_out_unnamed_kmeans20_kmeans_avm_burstcount;
    wire [1:0] kmeans_function_out_unnamed_kmeans20_kmeans_avm_byteenable;
    wire [0:0] kmeans_function_out_unnamed_kmeans20_kmeans_avm_enable;
    wire [0:0] kmeans_function_out_unnamed_kmeans20_kmeans_avm_read;
    wire [0:0] kmeans_function_out_unnamed_kmeans20_kmeans_avm_write;
    wire [15:0] kmeans_function_out_unnamed_kmeans20_kmeans_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,49)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = {num_dim, num_clusters, idx};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // kmeans_function(BLACKBOX,47)
    kmeans_function thekmeans_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_kmeans_i_fifodata(implicit_input_q),
        .in_iord_bl_call_kmeans_i_fifovalid(start),
        .in_iowr_bl_return_kmeans_i_fifoready(not_stall_q),
        .in_lm1_kmeans_avm_readdata(avm_lm1_kmeans_readdata),
        .in_lm1_kmeans_avm_readdatavalid(avm_lm1_kmeans_readdatavalid),
        .in_lm1_kmeans_avm_waitrequest(avm_lm1_kmeans_waitrequest),
        .in_lm1_kmeans_avm_writeack(avm_lm1_kmeans_writeack),
        .in_lm252_kmeans_avm_readdata(avm_lm252_kmeans_readdata),
        .in_lm252_kmeans_avm_readdatavalid(avm_lm252_kmeans_readdatavalid),
        .in_lm252_kmeans_avm_waitrequest(avm_lm252_kmeans_waitrequest),
        .in_lm252_kmeans_avm_writeack(avm_lm252_kmeans_writeack),
        .in_memdep_3_kmeans_avm_readdata(avm_memdep_3_kmeans_readdata),
        .in_memdep_3_kmeans_avm_readdatavalid(avm_memdep_3_kmeans_readdatavalid),
        .in_memdep_3_kmeans_avm_waitrequest(avm_memdep_3_kmeans_waitrequest),
        .in_memdep_3_kmeans_avm_writeack(avm_memdep_3_kmeans_writeack),
        .in_memdep_4_kmeans_avm_readdata(avm_memdep_4_kmeans_readdata),
        .in_memdep_4_kmeans_avm_readdatavalid(avm_memdep_4_kmeans_readdatavalid),
        .in_memdep_4_kmeans_avm_waitrequest(avm_memdep_4_kmeans_waitrequest),
        .in_memdep_4_kmeans_avm_writeack(avm_memdep_4_kmeans_writeack),
        .in_memdep_5_kmeans_avm_readdata(avm_memdep_5_kmeans_readdata),
        .in_memdep_5_kmeans_avm_readdatavalid(avm_memdep_5_kmeans_readdatavalid),
        .in_memdep_5_kmeans_avm_waitrequest(avm_memdep_5_kmeans_waitrequest),
        .in_memdep_5_kmeans_avm_writeack(avm_memdep_5_kmeans_writeack),
        .in_memdep_kmeans_avm_readdata(avm_memdep_kmeans_readdata),
        .in_memdep_kmeans_avm_readdatavalid(avm_memdep_kmeans_readdatavalid),
        .in_memdep_kmeans_avm_waitrequest(avm_memdep_kmeans_waitrequest),
        .in_memdep_kmeans_avm_writeack(avm_memdep_kmeans_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_kmeans20_kmeans_avm_readdata(avm_unnamed_kmeans20_kmeans_readdata),
        .in_unnamed_kmeans20_kmeans_avm_readdatavalid(avm_unnamed_kmeans20_kmeans_readdatavalid),
        .in_unnamed_kmeans20_kmeans_avm_waitrequest(avm_unnamed_kmeans20_kmeans_waitrequest),
        .in_unnamed_kmeans20_kmeans_avm_writeack(avm_unnamed_kmeans20_kmeans_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_kmeans_o_fifoready(kmeans_function_out_iord_bl_call_kmeans_o_fifoready),
        .out_iowr_bl_return_kmeans_o_fifodata(kmeans_function_out_iowr_bl_return_kmeans_o_fifodata),
        .out_iowr_bl_return_kmeans_o_fifovalid(kmeans_function_out_iowr_bl_return_kmeans_o_fifovalid),
        .out_lm1_kmeans_avm_address(kmeans_function_out_lm1_kmeans_avm_address),
        .out_lm1_kmeans_avm_burstcount(kmeans_function_out_lm1_kmeans_avm_burstcount),
        .out_lm1_kmeans_avm_byteenable(kmeans_function_out_lm1_kmeans_avm_byteenable),
        .out_lm1_kmeans_avm_enable(kmeans_function_out_lm1_kmeans_avm_enable),
        .out_lm1_kmeans_avm_read(kmeans_function_out_lm1_kmeans_avm_read),
        .out_lm1_kmeans_avm_write(kmeans_function_out_lm1_kmeans_avm_write),
        .out_lm1_kmeans_avm_writedata(kmeans_function_out_lm1_kmeans_avm_writedata),
        .out_lm252_kmeans_avm_address(kmeans_function_out_lm252_kmeans_avm_address),
        .out_lm252_kmeans_avm_burstcount(kmeans_function_out_lm252_kmeans_avm_burstcount),
        .out_lm252_kmeans_avm_byteenable(kmeans_function_out_lm252_kmeans_avm_byteenable),
        .out_lm252_kmeans_avm_enable(kmeans_function_out_lm252_kmeans_avm_enable),
        .out_lm252_kmeans_avm_read(kmeans_function_out_lm252_kmeans_avm_read),
        .out_lm252_kmeans_avm_write(kmeans_function_out_lm252_kmeans_avm_write),
        .out_lm252_kmeans_avm_writedata(kmeans_function_out_lm252_kmeans_avm_writedata),
        .out_memdep_3_kmeans_avm_address(kmeans_function_out_memdep_3_kmeans_avm_address),
        .out_memdep_3_kmeans_avm_burstcount(kmeans_function_out_memdep_3_kmeans_avm_burstcount),
        .out_memdep_3_kmeans_avm_byteenable(kmeans_function_out_memdep_3_kmeans_avm_byteenable),
        .out_memdep_3_kmeans_avm_enable(kmeans_function_out_memdep_3_kmeans_avm_enable),
        .out_memdep_3_kmeans_avm_read(kmeans_function_out_memdep_3_kmeans_avm_read),
        .out_memdep_3_kmeans_avm_write(kmeans_function_out_memdep_3_kmeans_avm_write),
        .out_memdep_3_kmeans_avm_writedata(kmeans_function_out_memdep_3_kmeans_avm_writedata),
        .out_memdep_4_kmeans_avm_address(kmeans_function_out_memdep_4_kmeans_avm_address),
        .out_memdep_4_kmeans_avm_burstcount(kmeans_function_out_memdep_4_kmeans_avm_burstcount),
        .out_memdep_4_kmeans_avm_byteenable(kmeans_function_out_memdep_4_kmeans_avm_byteenable),
        .out_memdep_4_kmeans_avm_enable(kmeans_function_out_memdep_4_kmeans_avm_enable),
        .out_memdep_4_kmeans_avm_read(kmeans_function_out_memdep_4_kmeans_avm_read),
        .out_memdep_4_kmeans_avm_write(kmeans_function_out_memdep_4_kmeans_avm_write),
        .out_memdep_4_kmeans_avm_writedata(kmeans_function_out_memdep_4_kmeans_avm_writedata),
        .out_memdep_5_kmeans_avm_address(kmeans_function_out_memdep_5_kmeans_avm_address),
        .out_memdep_5_kmeans_avm_burstcount(kmeans_function_out_memdep_5_kmeans_avm_burstcount),
        .out_memdep_5_kmeans_avm_byteenable(kmeans_function_out_memdep_5_kmeans_avm_byteenable),
        .out_memdep_5_kmeans_avm_enable(kmeans_function_out_memdep_5_kmeans_avm_enable),
        .out_memdep_5_kmeans_avm_read(kmeans_function_out_memdep_5_kmeans_avm_read),
        .out_memdep_5_kmeans_avm_write(kmeans_function_out_memdep_5_kmeans_avm_write),
        .out_memdep_5_kmeans_avm_writedata(kmeans_function_out_memdep_5_kmeans_avm_writedata),
        .out_memdep_kmeans_avm_address(kmeans_function_out_memdep_kmeans_avm_address),
        .out_memdep_kmeans_avm_burstcount(kmeans_function_out_memdep_kmeans_avm_burstcount),
        .out_memdep_kmeans_avm_byteenable(kmeans_function_out_memdep_kmeans_avm_byteenable),
        .out_memdep_kmeans_avm_enable(kmeans_function_out_memdep_kmeans_avm_enable),
        .out_memdep_kmeans_avm_read(kmeans_function_out_memdep_kmeans_avm_read),
        .out_memdep_kmeans_avm_write(kmeans_function_out_memdep_kmeans_avm_write),
        .out_memdep_kmeans_avm_writedata(kmeans_function_out_memdep_kmeans_avm_writedata),
        .out_stall_out(),
        .out_unnamed_kmeans20_kmeans_avm_address(kmeans_function_out_unnamed_kmeans20_kmeans_avm_address),
        .out_unnamed_kmeans20_kmeans_avm_burstcount(kmeans_function_out_unnamed_kmeans20_kmeans_avm_burstcount),
        .out_unnamed_kmeans20_kmeans_avm_byteenable(kmeans_function_out_unnamed_kmeans20_kmeans_avm_byteenable),
        .out_unnamed_kmeans20_kmeans_avm_enable(kmeans_function_out_unnamed_kmeans20_kmeans_avm_enable),
        .out_unnamed_kmeans20_kmeans_avm_read(kmeans_function_out_unnamed_kmeans20_kmeans_avm_read),
        .out_unnamed_kmeans20_kmeans_avm_write(kmeans_function_out_unnamed_kmeans20_kmeans_avm_write),
        .out_unnamed_kmeans20_kmeans_avm_writedata(kmeans_function_out_unnamed_kmeans20_kmeans_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_kmeans_address(GPOUT,50)
    assign avm_lm1_kmeans_address = kmeans_function_out_lm1_kmeans_avm_address;

    // avm_lm1_kmeans_burstcount(GPOUT,51)
    assign avm_lm1_kmeans_burstcount = kmeans_function_out_lm1_kmeans_avm_burstcount;

    // avm_lm1_kmeans_byteenable(GPOUT,52)
    assign avm_lm1_kmeans_byteenable = kmeans_function_out_lm1_kmeans_avm_byteenable;

    // avm_lm1_kmeans_enable(GPOUT,53)
    assign avm_lm1_kmeans_enable = kmeans_function_out_lm1_kmeans_avm_enable;

    // avm_lm1_kmeans_read(GPOUT,54)
    assign avm_lm1_kmeans_read = kmeans_function_out_lm1_kmeans_avm_read;

    // avm_lm1_kmeans_write(GPOUT,55)
    assign avm_lm1_kmeans_write = kmeans_function_out_lm1_kmeans_avm_write;

    // avm_lm1_kmeans_writedata(GPOUT,56)
    assign avm_lm1_kmeans_writedata = kmeans_function_out_lm1_kmeans_avm_writedata;

    // avm_lm252_kmeans_address(GPOUT,57)
    assign avm_lm252_kmeans_address = kmeans_function_out_lm252_kmeans_avm_address;

    // avm_lm252_kmeans_burstcount(GPOUT,58)
    assign avm_lm252_kmeans_burstcount = kmeans_function_out_lm252_kmeans_avm_burstcount;

    // avm_lm252_kmeans_byteenable(GPOUT,59)
    assign avm_lm252_kmeans_byteenable = kmeans_function_out_lm252_kmeans_avm_byteenable;

    // avm_lm252_kmeans_enable(GPOUT,60)
    assign avm_lm252_kmeans_enable = kmeans_function_out_lm252_kmeans_avm_enable;

    // avm_lm252_kmeans_read(GPOUT,61)
    assign avm_lm252_kmeans_read = kmeans_function_out_lm252_kmeans_avm_read;

    // avm_lm252_kmeans_write(GPOUT,62)
    assign avm_lm252_kmeans_write = kmeans_function_out_lm252_kmeans_avm_write;

    // avm_lm252_kmeans_writedata(GPOUT,63)
    assign avm_lm252_kmeans_writedata = kmeans_function_out_lm252_kmeans_avm_writedata;

    // avm_memdep_3_kmeans_address(GPOUT,64)
    assign avm_memdep_3_kmeans_address = kmeans_function_out_memdep_3_kmeans_avm_address;

    // avm_memdep_3_kmeans_burstcount(GPOUT,65)
    assign avm_memdep_3_kmeans_burstcount = kmeans_function_out_memdep_3_kmeans_avm_burstcount;

    // avm_memdep_3_kmeans_byteenable(GPOUT,66)
    assign avm_memdep_3_kmeans_byteenable = kmeans_function_out_memdep_3_kmeans_avm_byteenable;

    // avm_memdep_3_kmeans_enable(GPOUT,67)
    assign avm_memdep_3_kmeans_enable = kmeans_function_out_memdep_3_kmeans_avm_enable;

    // avm_memdep_3_kmeans_read(GPOUT,68)
    assign avm_memdep_3_kmeans_read = kmeans_function_out_memdep_3_kmeans_avm_read;

    // avm_memdep_3_kmeans_write(GPOUT,69)
    assign avm_memdep_3_kmeans_write = kmeans_function_out_memdep_3_kmeans_avm_write;

    // avm_memdep_3_kmeans_writedata(GPOUT,70)
    assign avm_memdep_3_kmeans_writedata = kmeans_function_out_memdep_3_kmeans_avm_writedata;

    // avm_memdep_4_kmeans_address(GPOUT,71)
    assign avm_memdep_4_kmeans_address = kmeans_function_out_memdep_4_kmeans_avm_address;

    // avm_memdep_4_kmeans_burstcount(GPOUT,72)
    assign avm_memdep_4_kmeans_burstcount = kmeans_function_out_memdep_4_kmeans_avm_burstcount;

    // avm_memdep_4_kmeans_byteenable(GPOUT,73)
    assign avm_memdep_4_kmeans_byteenable = kmeans_function_out_memdep_4_kmeans_avm_byteenable;

    // avm_memdep_4_kmeans_enable(GPOUT,74)
    assign avm_memdep_4_kmeans_enable = kmeans_function_out_memdep_4_kmeans_avm_enable;

    // avm_memdep_4_kmeans_read(GPOUT,75)
    assign avm_memdep_4_kmeans_read = kmeans_function_out_memdep_4_kmeans_avm_read;

    // avm_memdep_4_kmeans_write(GPOUT,76)
    assign avm_memdep_4_kmeans_write = kmeans_function_out_memdep_4_kmeans_avm_write;

    // avm_memdep_4_kmeans_writedata(GPOUT,77)
    assign avm_memdep_4_kmeans_writedata = kmeans_function_out_memdep_4_kmeans_avm_writedata;

    // avm_memdep_5_kmeans_address(GPOUT,78)
    assign avm_memdep_5_kmeans_address = kmeans_function_out_memdep_5_kmeans_avm_address;

    // avm_memdep_5_kmeans_burstcount(GPOUT,79)
    assign avm_memdep_5_kmeans_burstcount = kmeans_function_out_memdep_5_kmeans_avm_burstcount;

    // avm_memdep_5_kmeans_byteenable(GPOUT,80)
    assign avm_memdep_5_kmeans_byteenable = kmeans_function_out_memdep_5_kmeans_avm_byteenable;

    // avm_memdep_5_kmeans_enable(GPOUT,81)
    assign avm_memdep_5_kmeans_enable = kmeans_function_out_memdep_5_kmeans_avm_enable;

    // avm_memdep_5_kmeans_read(GPOUT,82)
    assign avm_memdep_5_kmeans_read = kmeans_function_out_memdep_5_kmeans_avm_read;

    // avm_memdep_5_kmeans_write(GPOUT,83)
    assign avm_memdep_5_kmeans_write = kmeans_function_out_memdep_5_kmeans_avm_write;

    // avm_memdep_5_kmeans_writedata(GPOUT,84)
    assign avm_memdep_5_kmeans_writedata = kmeans_function_out_memdep_5_kmeans_avm_writedata;

    // avm_memdep_kmeans_address(GPOUT,85)
    assign avm_memdep_kmeans_address = kmeans_function_out_memdep_kmeans_avm_address;

    // avm_memdep_kmeans_burstcount(GPOUT,86)
    assign avm_memdep_kmeans_burstcount = kmeans_function_out_memdep_kmeans_avm_burstcount;

    // avm_memdep_kmeans_byteenable(GPOUT,87)
    assign avm_memdep_kmeans_byteenable = kmeans_function_out_memdep_kmeans_avm_byteenable;

    // avm_memdep_kmeans_enable(GPOUT,88)
    assign avm_memdep_kmeans_enable = kmeans_function_out_memdep_kmeans_avm_enable;

    // avm_memdep_kmeans_read(GPOUT,89)
    assign avm_memdep_kmeans_read = kmeans_function_out_memdep_kmeans_avm_read;

    // avm_memdep_kmeans_write(GPOUT,90)
    assign avm_memdep_kmeans_write = kmeans_function_out_memdep_kmeans_avm_write;

    // avm_memdep_kmeans_writedata(GPOUT,91)
    assign avm_memdep_kmeans_writedata = kmeans_function_out_memdep_kmeans_avm_writedata;

    // avm_unnamed_kmeans20_kmeans_address(GPOUT,92)
    assign avm_unnamed_kmeans20_kmeans_address = kmeans_function_out_unnamed_kmeans20_kmeans_avm_address;

    // avm_unnamed_kmeans20_kmeans_burstcount(GPOUT,93)
    assign avm_unnamed_kmeans20_kmeans_burstcount = kmeans_function_out_unnamed_kmeans20_kmeans_avm_burstcount;

    // avm_unnamed_kmeans20_kmeans_byteenable(GPOUT,94)
    assign avm_unnamed_kmeans20_kmeans_byteenable = kmeans_function_out_unnamed_kmeans20_kmeans_avm_byteenable;

    // avm_unnamed_kmeans20_kmeans_enable(GPOUT,95)
    assign avm_unnamed_kmeans20_kmeans_enable = kmeans_function_out_unnamed_kmeans20_kmeans_avm_enable;

    // avm_unnamed_kmeans20_kmeans_read(GPOUT,96)
    assign avm_unnamed_kmeans20_kmeans_read = kmeans_function_out_unnamed_kmeans20_kmeans_avm_read;

    // avm_unnamed_kmeans20_kmeans_write(GPOUT,97)
    assign avm_unnamed_kmeans20_kmeans_write = kmeans_function_out_unnamed_kmeans20_kmeans_avm_write;

    // avm_unnamed_kmeans20_kmeans_writedata(GPOUT,98)
    assign avm_unnamed_kmeans20_kmeans_writedata = kmeans_function_out_unnamed_kmeans20_kmeans_avm_writedata;

    // avst_iord_bl_call_kmeans_ready(GPOUT,99)
    assign avst_iord_bl_call_kmeans_ready = kmeans_function_out_iord_bl_call_kmeans_o_fifoready;

    // avst_iowr_bl_return_kmeans_data(GPOUT,100)
    assign avst_iowr_bl_return_kmeans_data = kmeans_function_out_iowr_bl_return_kmeans_o_fifodata;

    // avst_iowr_bl_return_kmeans_valid(GPOUT,101)
    assign avst_iowr_bl_return_kmeans_valid = kmeans_function_out_iowr_bl_return_kmeans_o_fifovalid;

    // not_ready(LOGICAL,48)
    assign not_ready_q = ~ (kmeans_function_out_iord_bl_call_kmeans_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,106)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,105)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,102)
    assign busy = busy_or_q;

    // done(GPOUT,103)
    assign done = kmeans_function_out_iowr_bl_return_kmeans_o_fifovalid;

    // returndata(GPOUT,104)
    assign returndata = kmeans_function_out_iowr_bl_return_kmeans_o_fifodata;

endmodule
