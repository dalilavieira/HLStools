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

// SystemVerilog created from poly5_function_wrapper
// SystemVerilog created on Mon Apr 27 09:51:13 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly5_function_wrapper (
    input wire [15:0] avm_memdep_1_poly5_readdata,
    input wire [0:0] avm_memdep_1_poly5_readdatavalid,
    input wire [0:0] avm_memdep_1_poly5_waitrequest,
    input wire [0:0] avm_memdep_1_poly5_writeack,
    input wire [15:0] avm_memdep_2_poly5_readdata,
    input wire [0:0] avm_memdep_2_poly5_readdatavalid,
    input wire [0:0] avm_memdep_2_poly5_waitrequest,
    input wire [0:0] avm_memdep_2_poly5_writeack,
    input wire [15:0] avm_memdep_3_poly5_readdata,
    input wire [0:0] avm_memdep_3_poly5_readdatavalid,
    input wire [0:0] avm_memdep_3_poly5_waitrequest,
    input wire [0:0] avm_memdep_3_poly5_writeack,
    input wire [15:0] avm_memdep_4_poly5_readdata,
    input wire [0:0] avm_memdep_4_poly5_readdatavalid,
    input wire [0:0] avm_memdep_4_poly5_waitrequest,
    input wire [0:0] avm_memdep_4_poly5_writeack,
    input wire [15:0] avm_memdep_poly5_readdata,
    input wire [0:0] avm_memdep_poly5_readdatavalid,
    input wire [0:0] avm_memdep_poly5_waitrequest,
    input wire [0:0] avm_memdep_poly5_writeack,
    input wire [15:0] avm_unnamed_poly510_poly5_readdata,
    input wire [0:0] avm_unnamed_poly510_poly5_readdatavalid,
    input wire [0:0] avm_unnamed_poly510_poly5_waitrequest,
    input wire [0:0] avm_unnamed_poly510_poly5_writeack,
    input wire [15:0] avm_unnamed_poly55_poly5_readdata,
    input wire [0:0] avm_unnamed_poly55_poly5_readdatavalid,
    input wire [0:0] avm_unnamed_poly55_poly5_waitrequest,
    input wire [0:0] avm_unnamed_poly55_poly5_writeack,
    input wire [15:0] avm_unnamed_poly57_poly5_readdata,
    input wire [0:0] avm_unnamed_poly57_poly5_readdatavalid,
    input wire [0:0] avm_unnamed_poly57_poly5_waitrequest,
    input wire [0:0] avm_unnamed_poly57_poly5_writeack,
    input wire [15:0] avm_unnamed_poly58_poly5_readdata,
    input wire [0:0] avm_unnamed_poly58_poly5_readdatavalid,
    input wire [0:0] avm_unnamed_poly58_poly5_waitrequest,
    input wire [0:0] avm_unnamed_poly58_poly5_writeack,
    input wire [15:0] avm_unnamed_poly59_poly5_readdata,
    input wire [0:0] avm_unnamed_poly59_poly5_readdatavalid,
    input wire [0:0] avm_unnamed_poly59_poly5_waitrequest,
    input wire [0:0] avm_unnamed_poly59_poly5_writeack,
    input wire [31:0] avst_iord_bl_call_poly5_data,
    input wire [0:0] avst_iord_bl_call_poly5_valid,
    input wire [0:0] avst_iowr_bl_return_poly5_almostfull,
    input wire [0:0] avst_iowr_bl_return_poly5_ready,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_poly5_address,
    output wire [0:0] avm_memdep_1_poly5_burstcount,
    output wire [1:0] avm_memdep_1_poly5_byteenable,
    output wire [0:0] avm_memdep_1_poly5_enable,
    output wire [0:0] avm_memdep_1_poly5_read,
    output wire [0:0] avm_memdep_1_poly5_write,
    output wire [15:0] avm_memdep_1_poly5_writedata,
    output wire [31:0] avm_memdep_2_poly5_address,
    output wire [0:0] avm_memdep_2_poly5_burstcount,
    output wire [1:0] avm_memdep_2_poly5_byteenable,
    output wire [0:0] avm_memdep_2_poly5_enable,
    output wire [0:0] avm_memdep_2_poly5_read,
    output wire [0:0] avm_memdep_2_poly5_write,
    output wire [15:0] avm_memdep_2_poly5_writedata,
    output wire [31:0] avm_memdep_3_poly5_address,
    output wire [0:0] avm_memdep_3_poly5_burstcount,
    output wire [1:0] avm_memdep_3_poly5_byteenable,
    output wire [0:0] avm_memdep_3_poly5_enable,
    output wire [0:0] avm_memdep_3_poly5_read,
    output wire [0:0] avm_memdep_3_poly5_write,
    output wire [15:0] avm_memdep_3_poly5_writedata,
    output wire [31:0] avm_memdep_4_poly5_address,
    output wire [0:0] avm_memdep_4_poly5_burstcount,
    output wire [1:0] avm_memdep_4_poly5_byteenable,
    output wire [0:0] avm_memdep_4_poly5_enable,
    output wire [0:0] avm_memdep_4_poly5_read,
    output wire [0:0] avm_memdep_4_poly5_write,
    output wire [15:0] avm_memdep_4_poly5_writedata,
    output wire [31:0] avm_memdep_poly5_address,
    output wire [0:0] avm_memdep_poly5_burstcount,
    output wire [1:0] avm_memdep_poly5_byteenable,
    output wire [0:0] avm_memdep_poly5_enable,
    output wire [0:0] avm_memdep_poly5_read,
    output wire [0:0] avm_memdep_poly5_write,
    output wire [15:0] avm_memdep_poly5_writedata,
    output wire [31:0] avm_unnamed_poly510_poly5_address,
    output wire [0:0] avm_unnamed_poly510_poly5_burstcount,
    output wire [1:0] avm_unnamed_poly510_poly5_byteenable,
    output wire [0:0] avm_unnamed_poly510_poly5_enable,
    output wire [0:0] avm_unnamed_poly510_poly5_read,
    output wire [0:0] avm_unnamed_poly510_poly5_write,
    output wire [15:0] avm_unnamed_poly510_poly5_writedata,
    output wire [31:0] avm_unnamed_poly55_poly5_address,
    output wire [0:0] avm_unnamed_poly55_poly5_burstcount,
    output wire [1:0] avm_unnamed_poly55_poly5_byteenable,
    output wire [0:0] avm_unnamed_poly55_poly5_enable,
    output wire [0:0] avm_unnamed_poly55_poly5_read,
    output wire [0:0] avm_unnamed_poly55_poly5_write,
    output wire [15:0] avm_unnamed_poly55_poly5_writedata,
    output wire [31:0] avm_unnamed_poly57_poly5_address,
    output wire [0:0] avm_unnamed_poly57_poly5_burstcount,
    output wire [1:0] avm_unnamed_poly57_poly5_byteenable,
    output wire [0:0] avm_unnamed_poly57_poly5_enable,
    output wire [0:0] avm_unnamed_poly57_poly5_read,
    output wire [0:0] avm_unnamed_poly57_poly5_write,
    output wire [15:0] avm_unnamed_poly57_poly5_writedata,
    output wire [31:0] avm_unnamed_poly58_poly5_address,
    output wire [0:0] avm_unnamed_poly58_poly5_burstcount,
    output wire [1:0] avm_unnamed_poly58_poly5_byteenable,
    output wire [0:0] avm_unnamed_poly58_poly5_enable,
    output wire [0:0] avm_unnamed_poly58_poly5_read,
    output wire [0:0] avm_unnamed_poly58_poly5_write,
    output wire [15:0] avm_unnamed_poly58_poly5_writedata,
    output wire [31:0] avm_unnamed_poly59_poly5_address,
    output wire [0:0] avm_unnamed_poly59_poly5_burstcount,
    output wire [1:0] avm_unnamed_poly59_poly5_byteenable,
    output wire [0:0] avm_unnamed_poly59_poly5_enable,
    output wire [0:0] avm_unnamed_poly59_poly5_read,
    output wire [0:0] avm_unnamed_poly59_poly5_write,
    output wire [15:0] avm_unnamed_poly59_poly5_writedata,
    output wire [0:0] avst_iord_bl_call_poly5_ready,
    output wire [31:0] avst_iowr_bl_return_poly5_data,
    output wire [0:0] avst_iowr_bl_return_poly5_valid,
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
    wire [0:0] poly5_function_out_iord_bl_call_poly5_o_fifoready;
    wire [31:0] poly5_function_out_iowr_bl_return_poly5_o_fifodata;
    wire [0:0] poly5_function_out_iowr_bl_return_poly5_o_fifovalid;
    wire [31:0] poly5_function_out_memdep_1_poly5_avm_address;
    wire [0:0] poly5_function_out_memdep_1_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_memdep_1_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_memdep_1_poly5_avm_enable;
    wire [0:0] poly5_function_out_memdep_1_poly5_avm_read;
    wire [0:0] poly5_function_out_memdep_1_poly5_avm_write;
    wire [15:0] poly5_function_out_memdep_1_poly5_avm_writedata;
    wire [31:0] poly5_function_out_memdep_2_poly5_avm_address;
    wire [0:0] poly5_function_out_memdep_2_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_memdep_2_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_memdep_2_poly5_avm_enable;
    wire [0:0] poly5_function_out_memdep_2_poly5_avm_read;
    wire [0:0] poly5_function_out_memdep_2_poly5_avm_write;
    wire [15:0] poly5_function_out_memdep_2_poly5_avm_writedata;
    wire [31:0] poly5_function_out_memdep_3_poly5_avm_address;
    wire [0:0] poly5_function_out_memdep_3_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_memdep_3_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_memdep_3_poly5_avm_enable;
    wire [0:0] poly5_function_out_memdep_3_poly5_avm_read;
    wire [0:0] poly5_function_out_memdep_3_poly5_avm_write;
    wire [15:0] poly5_function_out_memdep_3_poly5_avm_writedata;
    wire [31:0] poly5_function_out_memdep_4_poly5_avm_address;
    wire [0:0] poly5_function_out_memdep_4_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_memdep_4_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_memdep_4_poly5_avm_enable;
    wire [0:0] poly5_function_out_memdep_4_poly5_avm_read;
    wire [0:0] poly5_function_out_memdep_4_poly5_avm_write;
    wire [15:0] poly5_function_out_memdep_4_poly5_avm_writedata;
    wire [31:0] poly5_function_out_memdep_poly5_avm_address;
    wire [0:0] poly5_function_out_memdep_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_memdep_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_memdep_poly5_avm_enable;
    wire [0:0] poly5_function_out_memdep_poly5_avm_read;
    wire [0:0] poly5_function_out_memdep_poly5_avm_write;
    wire [15:0] poly5_function_out_memdep_poly5_avm_writedata;
    wire [31:0] poly5_function_out_unnamed_poly510_poly5_avm_address;
    wire [0:0] poly5_function_out_unnamed_poly510_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_unnamed_poly510_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_unnamed_poly510_poly5_avm_enable;
    wire [0:0] poly5_function_out_unnamed_poly510_poly5_avm_read;
    wire [0:0] poly5_function_out_unnamed_poly510_poly5_avm_write;
    wire [15:0] poly5_function_out_unnamed_poly510_poly5_avm_writedata;
    wire [31:0] poly5_function_out_unnamed_poly55_poly5_avm_address;
    wire [0:0] poly5_function_out_unnamed_poly55_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_unnamed_poly55_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_unnamed_poly55_poly5_avm_enable;
    wire [0:0] poly5_function_out_unnamed_poly55_poly5_avm_read;
    wire [0:0] poly5_function_out_unnamed_poly55_poly5_avm_write;
    wire [15:0] poly5_function_out_unnamed_poly55_poly5_avm_writedata;
    wire [31:0] poly5_function_out_unnamed_poly57_poly5_avm_address;
    wire [0:0] poly5_function_out_unnamed_poly57_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_unnamed_poly57_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_unnamed_poly57_poly5_avm_enable;
    wire [0:0] poly5_function_out_unnamed_poly57_poly5_avm_read;
    wire [0:0] poly5_function_out_unnamed_poly57_poly5_avm_write;
    wire [15:0] poly5_function_out_unnamed_poly57_poly5_avm_writedata;
    wire [31:0] poly5_function_out_unnamed_poly58_poly5_avm_address;
    wire [0:0] poly5_function_out_unnamed_poly58_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_unnamed_poly58_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_unnamed_poly58_poly5_avm_enable;
    wire [0:0] poly5_function_out_unnamed_poly58_poly5_avm_read;
    wire [0:0] poly5_function_out_unnamed_poly58_poly5_avm_write;
    wire [15:0] poly5_function_out_unnamed_poly58_poly5_avm_writedata;
    wire [31:0] poly5_function_out_unnamed_poly59_poly5_avm_address;
    wire [0:0] poly5_function_out_unnamed_poly59_poly5_avm_burstcount;
    wire [1:0] poly5_function_out_unnamed_poly59_poly5_avm_byteenable;
    wire [0:0] poly5_function_out_unnamed_poly59_poly5_avm_enable;
    wire [0:0] poly5_function_out_unnamed_poly59_poly5_avm_read;
    wire [0:0] poly5_function_out_unnamed_poly59_poly5_avm_write;
    wire [15:0] poly5_function_out_unnamed_poly59_poly5_avm_writedata;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,58)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = idx;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // poly5_function(BLACKBOX,135)
    poly5_function thepoly5_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_poly5_i_fifodata(implicit_input_q),
        .in_iord_bl_call_poly5_i_fifovalid(start),
        .in_iowr_bl_return_poly5_i_fifoready(not_stall_q),
        .in_memdep_1_poly5_avm_readdata(avm_memdep_1_poly5_readdata),
        .in_memdep_1_poly5_avm_readdatavalid(avm_memdep_1_poly5_readdatavalid),
        .in_memdep_1_poly5_avm_waitrequest(avm_memdep_1_poly5_waitrequest),
        .in_memdep_1_poly5_avm_writeack(avm_memdep_1_poly5_writeack),
        .in_memdep_2_poly5_avm_readdata(avm_memdep_2_poly5_readdata),
        .in_memdep_2_poly5_avm_readdatavalid(avm_memdep_2_poly5_readdatavalid),
        .in_memdep_2_poly5_avm_waitrequest(avm_memdep_2_poly5_waitrequest),
        .in_memdep_2_poly5_avm_writeack(avm_memdep_2_poly5_writeack),
        .in_memdep_3_poly5_avm_readdata(avm_memdep_3_poly5_readdata),
        .in_memdep_3_poly5_avm_readdatavalid(avm_memdep_3_poly5_readdatavalid),
        .in_memdep_3_poly5_avm_waitrequest(avm_memdep_3_poly5_waitrequest),
        .in_memdep_3_poly5_avm_writeack(avm_memdep_3_poly5_writeack),
        .in_memdep_4_poly5_avm_readdata(avm_memdep_4_poly5_readdata),
        .in_memdep_4_poly5_avm_readdatavalid(avm_memdep_4_poly5_readdatavalid),
        .in_memdep_4_poly5_avm_waitrequest(avm_memdep_4_poly5_waitrequest),
        .in_memdep_4_poly5_avm_writeack(avm_memdep_4_poly5_writeack),
        .in_memdep_poly5_avm_readdata(avm_memdep_poly5_readdata),
        .in_memdep_poly5_avm_readdatavalid(avm_memdep_poly5_readdatavalid),
        .in_memdep_poly5_avm_waitrequest(avm_memdep_poly5_waitrequest),
        .in_memdep_poly5_avm_writeack(avm_memdep_poly5_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_poly510_poly5_avm_readdata(avm_unnamed_poly510_poly5_readdata),
        .in_unnamed_poly510_poly5_avm_readdatavalid(avm_unnamed_poly510_poly5_readdatavalid),
        .in_unnamed_poly510_poly5_avm_waitrequest(avm_unnamed_poly510_poly5_waitrequest),
        .in_unnamed_poly510_poly5_avm_writeack(avm_unnamed_poly510_poly5_writeack),
        .in_unnamed_poly55_poly5_avm_readdata(avm_unnamed_poly55_poly5_readdata),
        .in_unnamed_poly55_poly5_avm_readdatavalid(avm_unnamed_poly55_poly5_readdatavalid),
        .in_unnamed_poly55_poly5_avm_waitrequest(avm_unnamed_poly55_poly5_waitrequest),
        .in_unnamed_poly55_poly5_avm_writeack(avm_unnamed_poly55_poly5_writeack),
        .in_unnamed_poly57_poly5_avm_readdata(avm_unnamed_poly57_poly5_readdata),
        .in_unnamed_poly57_poly5_avm_readdatavalid(avm_unnamed_poly57_poly5_readdatavalid),
        .in_unnamed_poly57_poly5_avm_waitrequest(avm_unnamed_poly57_poly5_waitrequest),
        .in_unnamed_poly57_poly5_avm_writeack(avm_unnamed_poly57_poly5_writeack),
        .in_unnamed_poly58_poly5_avm_readdata(avm_unnamed_poly58_poly5_readdata),
        .in_unnamed_poly58_poly5_avm_readdatavalid(avm_unnamed_poly58_poly5_readdatavalid),
        .in_unnamed_poly58_poly5_avm_waitrequest(avm_unnamed_poly58_poly5_waitrequest),
        .in_unnamed_poly58_poly5_avm_writeack(avm_unnamed_poly58_poly5_writeack),
        .in_unnamed_poly59_poly5_avm_readdata(avm_unnamed_poly59_poly5_readdata),
        .in_unnamed_poly59_poly5_avm_readdatavalid(avm_unnamed_poly59_poly5_readdatavalid),
        .in_unnamed_poly59_poly5_avm_waitrequest(avm_unnamed_poly59_poly5_waitrequest),
        .in_unnamed_poly59_poly5_avm_writeack(avm_unnamed_poly59_poly5_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_poly5_o_fifoready(poly5_function_out_iord_bl_call_poly5_o_fifoready),
        .out_iowr_bl_return_poly5_o_fifodata(poly5_function_out_iowr_bl_return_poly5_o_fifodata),
        .out_iowr_bl_return_poly5_o_fifovalid(poly5_function_out_iowr_bl_return_poly5_o_fifovalid),
        .out_memdep_1_poly5_avm_address(poly5_function_out_memdep_1_poly5_avm_address),
        .out_memdep_1_poly5_avm_burstcount(poly5_function_out_memdep_1_poly5_avm_burstcount),
        .out_memdep_1_poly5_avm_byteenable(poly5_function_out_memdep_1_poly5_avm_byteenable),
        .out_memdep_1_poly5_avm_enable(poly5_function_out_memdep_1_poly5_avm_enable),
        .out_memdep_1_poly5_avm_read(poly5_function_out_memdep_1_poly5_avm_read),
        .out_memdep_1_poly5_avm_write(poly5_function_out_memdep_1_poly5_avm_write),
        .out_memdep_1_poly5_avm_writedata(poly5_function_out_memdep_1_poly5_avm_writedata),
        .out_memdep_2_poly5_avm_address(poly5_function_out_memdep_2_poly5_avm_address),
        .out_memdep_2_poly5_avm_burstcount(poly5_function_out_memdep_2_poly5_avm_burstcount),
        .out_memdep_2_poly5_avm_byteenable(poly5_function_out_memdep_2_poly5_avm_byteenable),
        .out_memdep_2_poly5_avm_enable(poly5_function_out_memdep_2_poly5_avm_enable),
        .out_memdep_2_poly5_avm_read(poly5_function_out_memdep_2_poly5_avm_read),
        .out_memdep_2_poly5_avm_write(poly5_function_out_memdep_2_poly5_avm_write),
        .out_memdep_2_poly5_avm_writedata(poly5_function_out_memdep_2_poly5_avm_writedata),
        .out_memdep_3_poly5_avm_address(poly5_function_out_memdep_3_poly5_avm_address),
        .out_memdep_3_poly5_avm_burstcount(poly5_function_out_memdep_3_poly5_avm_burstcount),
        .out_memdep_3_poly5_avm_byteenable(poly5_function_out_memdep_3_poly5_avm_byteenable),
        .out_memdep_3_poly5_avm_enable(poly5_function_out_memdep_3_poly5_avm_enable),
        .out_memdep_3_poly5_avm_read(poly5_function_out_memdep_3_poly5_avm_read),
        .out_memdep_3_poly5_avm_write(poly5_function_out_memdep_3_poly5_avm_write),
        .out_memdep_3_poly5_avm_writedata(poly5_function_out_memdep_3_poly5_avm_writedata),
        .out_memdep_4_poly5_avm_address(poly5_function_out_memdep_4_poly5_avm_address),
        .out_memdep_4_poly5_avm_burstcount(poly5_function_out_memdep_4_poly5_avm_burstcount),
        .out_memdep_4_poly5_avm_byteenable(poly5_function_out_memdep_4_poly5_avm_byteenable),
        .out_memdep_4_poly5_avm_enable(poly5_function_out_memdep_4_poly5_avm_enable),
        .out_memdep_4_poly5_avm_read(poly5_function_out_memdep_4_poly5_avm_read),
        .out_memdep_4_poly5_avm_write(poly5_function_out_memdep_4_poly5_avm_write),
        .out_memdep_4_poly5_avm_writedata(poly5_function_out_memdep_4_poly5_avm_writedata),
        .out_memdep_poly5_avm_address(poly5_function_out_memdep_poly5_avm_address),
        .out_memdep_poly5_avm_burstcount(poly5_function_out_memdep_poly5_avm_burstcount),
        .out_memdep_poly5_avm_byteenable(poly5_function_out_memdep_poly5_avm_byteenable),
        .out_memdep_poly5_avm_enable(poly5_function_out_memdep_poly5_avm_enable),
        .out_memdep_poly5_avm_read(poly5_function_out_memdep_poly5_avm_read),
        .out_memdep_poly5_avm_write(poly5_function_out_memdep_poly5_avm_write),
        .out_memdep_poly5_avm_writedata(poly5_function_out_memdep_poly5_avm_writedata),
        .out_stall_out(),
        .out_unnamed_poly510_poly5_avm_address(poly5_function_out_unnamed_poly510_poly5_avm_address),
        .out_unnamed_poly510_poly5_avm_burstcount(poly5_function_out_unnamed_poly510_poly5_avm_burstcount),
        .out_unnamed_poly510_poly5_avm_byteenable(poly5_function_out_unnamed_poly510_poly5_avm_byteenable),
        .out_unnamed_poly510_poly5_avm_enable(poly5_function_out_unnamed_poly510_poly5_avm_enable),
        .out_unnamed_poly510_poly5_avm_read(poly5_function_out_unnamed_poly510_poly5_avm_read),
        .out_unnamed_poly510_poly5_avm_write(poly5_function_out_unnamed_poly510_poly5_avm_write),
        .out_unnamed_poly510_poly5_avm_writedata(poly5_function_out_unnamed_poly510_poly5_avm_writedata),
        .out_unnamed_poly55_poly5_avm_address(poly5_function_out_unnamed_poly55_poly5_avm_address),
        .out_unnamed_poly55_poly5_avm_burstcount(poly5_function_out_unnamed_poly55_poly5_avm_burstcount),
        .out_unnamed_poly55_poly5_avm_byteenable(poly5_function_out_unnamed_poly55_poly5_avm_byteenable),
        .out_unnamed_poly55_poly5_avm_enable(poly5_function_out_unnamed_poly55_poly5_avm_enable),
        .out_unnamed_poly55_poly5_avm_read(poly5_function_out_unnamed_poly55_poly5_avm_read),
        .out_unnamed_poly55_poly5_avm_write(poly5_function_out_unnamed_poly55_poly5_avm_write),
        .out_unnamed_poly55_poly5_avm_writedata(poly5_function_out_unnamed_poly55_poly5_avm_writedata),
        .out_unnamed_poly57_poly5_avm_address(poly5_function_out_unnamed_poly57_poly5_avm_address),
        .out_unnamed_poly57_poly5_avm_burstcount(poly5_function_out_unnamed_poly57_poly5_avm_burstcount),
        .out_unnamed_poly57_poly5_avm_byteenable(poly5_function_out_unnamed_poly57_poly5_avm_byteenable),
        .out_unnamed_poly57_poly5_avm_enable(poly5_function_out_unnamed_poly57_poly5_avm_enable),
        .out_unnamed_poly57_poly5_avm_read(poly5_function_out_unnamed_poly57_poly5_avm_read),
        .out_unnamed_poly57_poly5_avm_write(poly5_function_out_unnamed_poly57_poly5_avm_write),
        .out_unnamed_poly57_poly5_avm_writedata(poly5_function_out_unnamed_poly57_poly5_avm_writedata),
        .out_unnamed_poly58_poly5_avm_address(poly5_function_out_unnamed_poly58_poly5_avm_address),
        .out_unnamed_poly58_poly5_avm_burstcount(poly5_function_out_unnamed_poly58_poly5_avm_burstcount),
        .out_unnamed_poly58_poly5_avm_byteenable(poly5_function_out_unnamed_poly58_poly5_avm_byteenable),
        .out_unnamed_poly58_poly5_avm_enable(poly5_function_out_unnamed_poly58_poly5_avm_enable),
        .out_unnamed_poly58_poly5_avm_read(poly5_function_out_unnamed_poly58_poly5_avm_read),
        .out_unnamed_poly58_poly5_avm_write(poly5_function_out_unnamed_poly58_poly5_avm_write),
        .out_unnamed_poly58_poly5_avm_writedata(poly5_function_out_unnamed_poly58_poly5_avm_writedata),
        .out_unnamed_poly59_poly5_avm_address(poly5_function_out_unnamed_poly59_poly5_avm_address),
        .out_unnamed_poly59_poly5_avm_burstcount(poly5_function_out_unnamed_poly59_poly5_avm_burstcount),
        .out_unnamed_poly59_poly5_avm_byteenable(poly5_function_out_unnamed_poly59_poly5_avm_byteenable),
        .out_unnamed_poly59_poly5_avm_enable(poly5_function_out_unnamed_poly59_poly5_avm_enable),
        .out_unnamed_poly59_poly5_avm_read(poly5_function_out_unnamed_poly59_poly5_avm_read),
        .out_unnamed_poly59_poly5_avm_write(poly5_function_out_unnamed_poly59_poly5_avm_write),
        .out_unnamed_poly59_poly5_avm_writedata(poly5_function_out_unnamed_poly59_poly5_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_poly5_address(GPOUT,59)
    assign avm_memdep_1_poly5_address = poly5_function_out_memdep_1_poly5_avm_address;

    // avm_memdep_1_poly5_burstcount(GPOUT,60)
    assign avm_memdep_1_poly5_burstcount = poly5_function_out_memdep_1_poly5_avm_burstcount;

    // avm_memdep_1_poly5_byteenable(GPOUT,61)
    assign avm_memdep_1_poly5_byteenable = poly5_function_out_memdep_1_poly5_avm_byteenable;

    // avm_memdep_1_poly5_enable(GPOUT,62)
    assign avm_memdep_1_poly5_enable = poly5_function_out_memdep_1_poly5_avm_enable;

    // avm_memdep_1_poly5_read(GPOUT,63)
    assign avm_memdep_1_poly5_read = poly5_function_out_memdep_1_poly5_avm_read;

    // avm_memdep_1_poly5_write(GPOUT,64)
    assign avm_memdep_1_poly5_write = poly5_function_out_memdep_1_poly5_avm_write;

    // avm_memdep_1_poly5_writedata(GPOUT,65)
    assign avm_memdep_1_poly5_writedata = poly5_function_out_memdep_1_poly5_avm_writedata;

    // avm_memdep_2_poly5_address(GPOUT,66)
    assign avm_memdep_2_poly5_address = poly5_function_out_memdep_2_poly5_avm_address;

    // avm_memdep_2_poly5_burstcount(GPOUT,67)
    assign avm_memdep_2_poly5_burstcount = poly5_function_out_memdep_2_poly5_avm_burstcount;

    // avm_memdep_2_poly5_byteenable(GPOUT,68)
    assign avm_memdep_2_poly5_byteenable = poly5_function_out_memdep_2_poly5_avm_byteenable;

    // avm_memdep_2_poly5_enable(GPOUT,69)
    assign avm_memdep_2_poly5_enable = poly5_function_out_memdep_2_poly5_avm_enable;

    // avm_memdep_2_poly5_read(GPOUT,70)
    assign avm_memdep_2_poly5_read = poly5_function_out_memdep_2_poly5_avm_read;

    // avm_memdep_2_poly5_write(GPOUT,71)
    assign avm_memdep_2_poly5_write = poly5_function_out_memdep_2_poly5_avm_write;

    // avm_memdep_2_poly5_writedata(GPOUT,72)
    assign avm_memdep_2_poly5_writedata = poly5_function_out_memdep_2_poly5_avm_writedata;

    // avm_memdep_3_poly5_address(GPOUT,73)
    assign avm_memdep_3_poly5_address = poly5_function_out_memdep_3_poly5_avm_address;

    // avm_memdep_3_poly5_burstcount(GPOUT,74)
    assign avm_memdep_3_poly5_burstcount = poly5_function_out_memdep_3_poly5_avm_burstcount;

    // avm_memdep_3_poly5_byteenable(GPOUT,75)
    assign avm_memdep_3_poly5_byteenable = poly5_function_out_memdep_3_poly5_avm_byteenable;

    // avm_memdep_3_poly5_enable(GPOUT,76)
    assign avm_memdep_3_poly5_enable = poly5_function_out_memdep_3_poly5_avm_enable;

    // avm_memdep_3_poly5_read(GPOUT,77)
    assign avm_memdep_3_poly5_read = poly5_function_out_memdep_3_poly5_avm_read;

    // avm_memdep_3_poly5_write(GPOUT,78)
    assign avm_memdep_3_poly5_write = poly5_function_out_memdep_3_poly5_avm_write;

    // avm_memdep_3_poly5_writedata(GPOUT,79)
    assign avm_memdep_3_poly5_writedata = poly5_function_out_memdep_3_poly5_avm_writedata;

    // avm_memdep_4_poly5_address(GPOUT,80)
    assign avm_memdep_4_poly5_address = poly5_function_out_memdep_4_poly5_avm_address;

    // avm_memdep_4_poly5_burstcount(GPOUT,81)
    assign avm_memdep_4_poly5_burstcount = poly5_function_out_memdep_4_poly5_avm_burstcount;

    // avm_memdep_4_poly5_byteenable(GPOUT,82)
    assign avm_memdep_4_poly5_byteenable = poly5_function_out_memdep_4_poly5_avm_byteenable;

    // avm_memdep_4_poly5_enable(GPOUT,83)
    assign avm_memdep_4_poly5_enable = poly5_function_out_memdep_4_poly5_avm_enable;

    // avm_memdep_4_poly5_read(GPOUT,84)
    assign avm_memdep_4_poly5_read = poly5_function_out_memdep_4_poly5_avm_read;

    // avm_memdep_4_poly5_write(GPOUT,85)
    assign avm_memdep_4_poly5_write = poly5_function_out_memdep_4_poly5_avm_write;

    // avm_memdep_4_poly5_writedata(GPOUT,86)
    assign avm_memdep_4_poly5_writedata = poly5_function_out_memdep_4_poly5_avm_writedata;

    // avm_memdep_poly5_address(GPOUT,87)
    assign avm_memdep_poly5_address = poly5_function_out_memdep_poly5_avm_address;

    // avm_memdep_poly5_burstcount(GPOUT,88)
    assign avm_memdep_poly5_burstcount = poly5_function_out_memdep_poly5_avm_burstcount;

    // avm_memdep_poly5_byteenable(GPOUT,89)
    assign avm_memdep_poly5_byteenable = poly5_function_out_memdep_poly5_avm_byteenable;

    // avm_memdep_poly5_enable(GPOUT,90)
    assign avm_memdep_poly5_enable = poly5_function_out_memdep_poly5_avm_enable;

    // avm_memdep_poly5_read(GPOUT,91)
    assign avm_memdep_poly5_read = poly5_function_out_memdep_poly5_avm_read;

    // avm_memdep_poly5_write(GPOUT,92)
    assign avm_memdep_poly5_write = poly5_function_out_memdep_poly5_avm_write;

    // avm_memdep_poly5_writedata(GPOUT,93)
    assign avm_memdep_poly5_writedata = poly5_function_out_memdep_poly5_avm_writedata;

    // avm_unnamed_poly510_poly5_address(GPOUT,94)
    assign avm_unnamed_poly510_poly5_address = poly5_function_out_unnamed_poly510_poly5_avm_address;

    // avm_unnamed_poly510_poly5_burstcount(GPOUT,95)
    assign avm_unnamed_poly510_poly5_burstcount = poly5_function_out_unnamed_poly510_poly5_avm_burstcount;

    // avm_unnamed_poly510_poly5_byteenable(GPOUT,96)
    assign avm_unnamed_poly510_poly5_byteenable = poly5_function_out_unnamed_poly510_poly5_avm_byteenable;

    // avm_unnamed_poly510_poly5_enable(GPOUT,97)
    assign avm_unnamed_poly510_poly5_enable = poly5_function_out_unnamed_poly510_poly5_avm_enable;

    // avm_unnamed_poly510_poly5_read(GPOUT,98)
    assign avm_unnamed_poly510_poly5_read = poly5_function_out_unnamed_poly510_poly5_avm_read;

    // avm_unnamed_poly510_poly5_write(GPOUT,99)
    assign avm_unnamed_poly510_poly5_write = poly5_function_out_unnamed_poly510_poly5_avm_write;

    // avm_unnamed_poly510_poly5_writedata(GPOUT,100)
    assign avm_unnamed_poly510_poly5_writedata = poly5_function_out_unnamed_poly510_poly5_avm_writedata;

    // avm_unnamed_poly55_poly5_address(GPOUT,101)
    assign avm_unnamed_poly55_poly5_address = poly5_function_out_unnamed_poly55_poly5_avm_address;

    // avm_unnamed_poly55_poly5_burstcount(GPOUT,102)
    assign avm_unnamed_poly55_poly5_burstcount = poly5_function_out_unnamed_poly55_poly5_avm_burstcount;

    // avm_unnamed_poly55_poly5_byteenable(GPOUT,103)
    assign avm_unnamed_poly55_poly5_byteenable = poly5_function_out_unnamed_poly55_poly5_avm_byteenable;

    // avm_unnamed_poly55_poly5_enable(GPOUT,104)
    assign avm_unnamed_poly55_poly5_enable = poly5_function_out_unnamed_poly55_poly5_avm_enable;

    // avm_unnamed_poly55_poly5_read(GPOUT,105)
    assign avm_unnamed_poly55_poly5_read = poly5_function_out_unnamed_poly55_poly5_avm_read;

    // avm_unnamed_poly55_poly5_write(GPOUT,106)
    assign avm_unnamed_poly55_poly5_write = poly5_function_out_unnamed_poly55_poly5_avm_write;

    // avm_unnamed_poly55_poly5_writedata(GPOUT,107)
    assign avm_unnamed_poly55_poly5_writedata = poly5_function_out_unnamed_poly55_poly5_avm_writedata;

    // avm_unnamed_poly57_poly5_address(GPOUT,108)
    assign avm_unnamed_poly57_poly5_address = poly5_function_out_unnamed_poly57_poly5_avm_address;

    // avm_unnamed_poly57_poly5_burstcount(GPOUT,109)
    assign avm_unnamed_poly57_poly5_burstcount = poly5_function_out_unnamed_poly57_poly5_avm_burstcount;

    // avm_unnamed_poly57_poly5_byteenable(GPOUT,110)
    assign avm_unnamed_poly57_poly5_byteenable = poly5_function_out_unnamed_poly57_poly5_avm_byteenable;

    // avm_unnamed_poly57_poly5_enable(GPOUT,111)
    assign avm_unnamed_poly57_poly5_enable = poly5_function_out_unnamed_poly57_poly5_avm_enable;

    // avm_unnamed_poly57_poly5_read(GPOUT,112)
    assign avm_unnamed_poly57_poly5_read = poly5_function_out_unnamed_poly57_poly5_avm_read;

    // avm_unnamed_poly57_poly5_write(GPOUT,113)
    assign avm_unnamed_poly57_poly5_write = poly5_function_out_unnamed_poly57_poly5_avm_write;

    // avm_unnamed_poly57_poly5_writedata(GPOUT,114)
    assign avm_unnamed_poly57_poly5_writedata = poly5_function_out_unnamed_poly57_poly5_avm_writedata;

    // avm_unnamed_poly58_poly5_address(GPOUT,115)
    assign avm_unnamed_poly58_poly5_address = poly5_function_out_unnamed_poly58_poly5_avm_address;

    // avm_unnamed_poly58_poly5_burstcount(GPOUT,116)
    assign avm_unnamed_poly58_poly5_burstcount = poly5_function_out_unnamed_poly58_poly5_avm_burstcount;

    // avm_unnamed_poly58_poly5_byteenable(GPOUT,117)
    assign avm_unnamed_poly58_poly5_byteenable = poly5_function_out_unnamed_poly58_poly5_avm_byteenable;

    // avm_unnamed_poly58_poly5_enable(GPOUT,118)
    assign avm_unnamed_poly58_poly5_enable = poly5_function_out_unnamed_poly58_poly5_avm_enable;

    // avm_unnamed_poly58_poly5_read(GPOUT,119)
    assign avm_unnamed_poly58_poly5_read = poly5_function_out_unnamed_poly58_poly5_avm_read;

    // avm_unnamed_poly58_poly5_write(GPOUT,120)
    assign avm_unnamed_poly58_poly5_write = poly5_function_out_unnamed_poly58_poly5_avm_write;

    // avm_unnamed_poly58_poly5_writedata(GPOUT,121)
    assign avm_unnamed_poly58_poly5_writedata = poly5_function_out_unnamed_poly58_poly5_avm_writedata;

    // avm_unnamed_poly59_poly5_address(GPOUT,122)
    assign avm_unnamed_poly59_poly5_address = poly5_function_out_unnamed_poly59_poly5_avm_address;

    // avm_unnamed_poly59_poly5_burstcount(GPOUT,123)
    assign avm_unnamed_poly59_poly5_burstcount = poly5_function_out_unnamed_poly59_poly5_avm_burstcount;

    // avm_unnamed_poly59_poly5_byteenable(GPOUT,124)
    assign avm_unnamed_poly59_poly5_byteenable = poly5_function_out_unnamed_poly59_poly5_avm_byteenable;

    // avm_unnamed_poly59_poly5_enable(GPOUT,125)
    assign avm_unnamed_poly59_poly5_enable = poly5_function_out_unnamed_poly59_poly5_avm_enable;

    // avm_unnamed_poly59_poly5_read(GPOUT,126)
    assign avm_unnamed_poly59_poly5_read = poly5_function_out_unnamed_poly59_poly5_avm_read;

    // avm_unnamed_poly59_poly5_write(GPOUT,127)
    assign avm_unnamed_poly59_poly5_write = poly5_function_out_unnamed_poly59_poly5_avm_write;

    // avm_unnamed_poly59_poly5_writedata(GPOUT,128)
    assign avm_unnamed_poly59_poly5_writedata = poly5_function_out_unnamed_poly59_poly5_avm_writedata;

    // avst_iord_bl_call_poly5_ready(GPOUT,129)
    assign avst_iord_bl_call_poly5_ready = poly5_function_out_iord_bl_call_poly5_o_fifoready;

    // avst_iowr_bl_return_poly5_data(GPOUT,130)
    assign avst_iowr_bl_return_poly5_data = poly5_function_out_iowr_bl_return_poly5_o_fifodata;

    // avst_iowr_bl_return_poly5_valid(GPOUT,131)
    assign avst_iowr_bl_return_poly5_valid = poly5_function_out_iowr_bl_return_poly5_o_fifovalid;

    // not_ready(LOGICAL,57)
    assign not_ready_q = ~ (poly5_function_out_iord_bl_call_poly5_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,137)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,136)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,132)
    assign busy = busy_or_q;

    // done(GPOUT,133)
    assign done = poly5_function_out_iowr_bl_return_poly5_o_fifovalid;

    // returndata(GPOUT,134)
    assign returndata = poly5_function_out_iowr_bl_return_poly5_o_fifodata;

endmodule
