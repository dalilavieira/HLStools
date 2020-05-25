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

// SystemVerilog created from UTF8_getc_function_wrapper
// SystemVerilog created on Sun May 24 22:39:14 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module UTF8_getc_function_wrapper (
    input wire [63:0] avm_lm2_UTF8_getc_readdata,
    input wire [0:0] avm_lm2_UTF8_getc_readdatavalid,
    input wire [0:0] avm_lm2_UTF8_getc_waitrequest,
    input wire [0:0] avm_lm2_UTF8_getc_writeack,
    input wire [63:0] avm_lm3303_UTF8_getc_readdata,
    input wire [0:0] avm_lm3303_UTF8_getc_readdatavalid,
    input wire [0:0] avm_lm3303_UTF8_getc_waitrequest,
    input wire [0:0] avm_lm3303_UTF8_getc_writeack,
    input wire [63:0] avm_memdep_1_UTF8_getc_readdata,
    input wire [0:0] avm_memdep_1_UTF8_getc_readdatavalid,
    input wire [0:0] avm_memdep_1_UTF8_getc_waitrequest,
    input wire [0:0] avm_memdep_1_UTF8_getc_writeack,
    input wire [63:0] avm_ml4347_UTF8_getc_readdata,
    input wire [0:0] avm_ml4347_UTF8_getc_readdatavalid,
    input wire [0:0] avm_ml4347_UTF8_getc_waitrequest,
    input wire [0:0] avm_ml4347_UTF8_getc_writeack,
    input wire [63:0] avm_ml4475_UTF8_getc_readdata,
    input wire [0:0] avm_ml4475_UTF8_getc_readdatavalid,
    input wire [0:0] avm_ml4475_UTF8_getc_waitrequest,
    input wire [0:0] avm_ml4475_UTF8_getc_writeack,
    input wire [63:0] avm_ml4504_UTF8_getc_readdata,
    input wire [0:0] avm_ml4504_UTF8_getc_readdatavalid,
    input wire [0:0] avm_ml4504_UTF8_getc_waitrequest,
    input wire [0:0] avm_ml4504_UTF8_getc_writeack,
    input wire [63:0] avm_ml6_UTF8_getc_readdata,
    input wire [0:0] avm_ml6_UTF8_getc_readdatavalid,
    input wire [0:0] avm_ml6_UTF8_getc_waitrequest,
    input wire [0:0] avm_ml6_UTF8_getc_writeack,
    input wire [191:0] avst_iord_bl_call_UTF8_getc_data,
    input wire [0:0] avst_iord_bl_call_UTF8_getc_valid,
    input wire [0:0] avst_iowr_bl_return_UTF8_getc_almostfull,
    input wire [0:0] avst_iowr_bl_return_UTF8_getc_ready,
    input wire [31:0] len,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [63:0] str,
    input wire [63:0] val,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm2_UTF8_getc_address,
    output wire [0:0] avm_lm2_UTF8_getc_burstcount,
    output wire [7:0] avm_lm2_UTF8_getc_byteenable,
    output wire [0:0] avm_lm2_UTF8_getc_enable,
    output wire [0:0] avm_lm2_UTF8_getc_read,
    output wire [0:0] avm_lm2_UTF8_getc_write,
    output wire [63:0] avm_lm2_UTF8_getc_writedata,
    output wire [63:0] avm_lm3303_UTF8_getc_address,
    output wire [0:0] avm_lm3303_UTF8_getc_burstcount,
    output wire [7:0] avm_lm3303_UTF8_getc_byteenable,
    output wire [0:0] avm_lm3303_UTF8_getc_enable,
    output wire [0:0] avm_lm3303_UTF8_getc_read,
    output wire [0:0] avm_lm3303_UTF8_getc_write,
    output wire [63:0] avm_lm3303_UTF8_getc_writedata,
    output wire [63:0] avm_memdep_1_UTF8_getc_address,
    output wire [0:0] avm_memdep_1_UTF8_getc_burstcount,
    output wire [7:0] avm_memdep_1_UTF8_getc_byteenable,
    output wire [0:0] avm_memdep_1_UTF8_getc_enable,
    output wire [0:0] avm_memdep_1_UTF8_getc_read,
    output wire [0:0] avm_memdep_1_UTF8_getc_write,
    output wire [63:0] avm_memdep_1_UTF8_getc_writedata,
    output wire [63:0] avm_ml4347_UTF8_getc_address,
    output wire [0:0] avm_ml4347_UTF8_getc_burstcount,
    output wire [7:0] avm_ml4347_UTF8_getc_byteenable,
    output wire [0:0] avm_ml4347_UTF8_getc_enable,
    output wire [0:0] avm_ml4347_UTF8_getc_read,
    output wire [0:0] avm_ml4347_UTF8_getc_write,
    output wire [63:0] avm_ml4347_UTF8_getc_writedata,
    output wire [63:0] avm_ml4475_UTF8_getc_address,
    output wire [0:0] avm_ml4475_UTF8_getc_burstcount,
    output wire [7:0] avm_ml4475_UTF8_getc_byteenable,
    output wire [0:0] avm_ml4475_UTF8_getc_enable,
    output wire [0:0] avm_ml4475_UTF8_getc_read,
    output wire [0:0] avm_ml4475_UTF8_getc_write,
    output wire [63:0] avm_ml4475_UTF8_getc_writedata,
    output wire [63:0] avm_ml4504_UTF8_getc_address,
    output wire [0:0] avm_ml4504_UTF8_getc_burstcount,
    output wire [7:0] avm_ml4504_UTF8_getc_byteenable,
    output wire [0:0] avm_ml4504_UTF8_getc_enable,
    output wire [0:0] avm_ml4504_UTF8_getc_read,
    output wire [0:0] avm_ml4504_UTF8_getc_write,
    output wire [63:0] avm_ml4504_UTF8_getc_writedata,
    output wire [63:0] avm_ml6_UTF8_getc_address,
    output wire [0:0] avm_ml6_UTF8_getc_burstcount,
    output wire [7:0] avm_ml6_UTF8_getc_byteenable,
    output wire [0:0] avm_ml6_UTF8_getc_enable,
    output wire [0:0] avm_ml6_UTF8_getc_read,
    output wire [0:0] avm_ml6_UTF8_getc_write,
    output wire [63:0] avm_ml6_UTF8_getc_writedata,
    output wire [0:0] avst_iord_bl_call_UTF8_getc_ready,
    output wire [31:0] avst_iowr_bl_return_UTF8_getc_data,
    output wire [0:0] avst_iowr_bl_return_UTF8_getc_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] UTF8_getc_function_out_iord_bl_call_UTF8_getc_o_fifoready;
    wire [31:0] UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifodata;
    wire [0:0] UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifovalid;
    wire [63:0] UTF8_getc_function_out_lm2_UTF8_getc_avm_address;
    wire [0:0] UTF8_getc_function_out_lm2_UTF8_getc_avm_burstcount;
    wire [7:0] UTF8_getc_function_out_lm2_UTF8_getc_avm_byteenable;
    wire [0:0] UTF8_getc_function_out_lm2_UTF8_getc_avm_enable;
    wire [0:0] UTF8_getc_function_out_lm2_UTF8_getc_avm_read;
    wire [0:0] UTF8_getc_function_out_lm2_UTF8_getc_avm_write;
    wire [63:0] UTF8_getc_function_out_lm2_UTF8_getc_avm_writedata;
    wire [63:0] UTF8_getc_function_out_lm3303_UTF8_getc_avm_address;
    wire [0:0] UTF8_getc_function_out_lm3303_UTF8_getc_avm_burstcount;
    wire [7:0] UTF8_getc_function_out_lm3303_UTF8_getc_avm_byteenable;
    wire [0:0] UTF8_getc_function_out_lm3303_UTF8_getc_avm_enable;
    wire [0:0] UTF8_getc_function_out_lm3303_UTF8_getc_avm_read;
    wire [0:0] UTF8_getc_function_out_lm3303_UTF8_getc_avm_write;
    wire [63:0] UTF8_getc_function_out_lm3303_UTF8_getc_avm_writedata;
    wire [63:0] UTF8_getc_function_out_memdep_1_UTF8_getc_avm_address;
    wire [0:0] UTF8_getc_function_out_memdep_1_UTF8_getc_avm_burstcount;
    wire [7:0] UTF8_getc_function_out_memdep_1_UTF8_getc_avm_byteenable;
    wire [0:0] UTF8_getc_function_out_memdep_1_UTF8_getc_avm_enable;
    wire [0:0] UTF8_getc_function_out_memdep_1_UTF8_getc_avm_read;
    wire [0:0] UTF8_getc_function_out_memdep_1_UTF8_getc_avm_write;
    wire [63:0] UTF8_getc_function_out_memdep_1_UTF8_getc_avm_writedata;
    wire [63:0] UTF8_getc_function_out_ml4347_UTF8_getc_avm_address;
    wire [0:0] UTF8_getc_function_out_ml4347_UTF8_getc_avm_burstcount;
    wire [7:0] UTF8_getc_function_out_ml4347_UTF8_getc_avm_byteenable;
    wire [0:0] UTF8_getc_function_out_ml4347_UTF8_getc_avm_enable;
    wire [0:0] UTF8_getc_function_out_ml4347_UTF8_getc_avm_read;
    wire [0:0] UTF8_getc_function_out_ml4347_UTF8_getc_avm_write;
    wire [63:0] UTF8_getc_function_out_ml4347_UTF8_getc_avm_writedata;
    wire [63:0] UTF8_getc_function_out_ml4475_UTF8_getc_avm_address;
    wire [0:0] UTF8_getc_function_out_ml4475_UTF8_getc_avm_burstcount;
    wire [7:0] UTF8_getc_function_out_ml4475_UTF8_getc_avm_byteenable;
    wire [0:0] UTF8_getc_function_out_ml4475_UTF8_getc_avm_enable;
    wire [0:0] UTF8_getc_function_out_ml4475_UTF8_getc_avm_read;
    wire [0:0] UTF8_getc_function_out_ml4475_UTF8_getc_avm_write;
    wire [63:0] UTF8_getc_function_out_ml4475_UTF8_getc_avm_writedata;
    wire [63:0] UTF8_getc_function_out_ml4504_UTF8_getc_avm_address;
    wire [0:0] UTF8_getc_function_out_ml4504_UTF8_getc_avm_burstcount;
    wire [7:0] UTF8_getc_function_out_ml4504_UTF8_getc_avm_byteenable;
    wire [0:0] UTF8_getc_function_out_ml4504_UTF8_getc_avm_enable;
    wire [0:0] UTF8_getc_function_out_ml4504_UTF8_getc_avm_read;
    wire [0:0] UTF8_getc_function_out_ml4504_UTF8_getc_avm_write;
    wire [63:0] UTF8_getc_function_out_ml4504_UTF8_getc_avm_writedata;
    wire [63:0] UTF8_getc_function_out_ml6_UTF8_getc_avm_address;
    wire [0:0] UTF8_getc_function_out_ml6_UTF8_getc_avm_burstcount;
    wire [7:0] UTF8_getc_function_out_ml6_UTF8_getc_avm_byteenable;
    wire [0:0] UTF8_getc_function_out_ml6_UTF8_getc_avm_enable;
    wire [0:0] UTF8_getc_function_out_ml6_UTF8_getc_avm_read;
    wire [0:0] UTF8_getc_function_out_ml6_UTF8_getc_avm_write;
    wire [63:0] UTF8_getc_function_out_ml6_UTF8_getc_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [191:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_2_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,50)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_2(CONSTANT,9)
    assign implicit_input_pad_const_2_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {val, implicit_input_pad_const_2_q, len, str};

    // call_const(CONSTANT,5)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // UTF8_getc_function(BLACKBOX,2)
    UTF8_getc_function theUTF8_getc_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_str(call_const_q),
        .in_arg_val(call_const_q),
        .in_iord_bl_call_UTF8_getc_i_fifodata(implicit_input_q),
        .in_iord_bl_call_UTF8_getc_i_fifovalid(start),
        .in_iowr_bl_return_UTF8_getc_i_fifoready(not_stall_q),
        .in_lm2_UTF8_getc_avm_readdata(avm_lm2_UTF8_getc_readdata),
        .in_lm2_UTF8_getc_avm_readdatavalid(avm_lm2_UTF8_getc_readdatavalid),
        .in_lm2_UTF8_getc_avm_waitrequest(avm_lm2_UTF8_getc_waitrequest),
        .in_lm2_UTF8_getc_avm_writeack(avm_lm2_UTF8_getc_writeack),
        .in_lm3303_UTF8_getc_avm_readdata(avm_lm3303_UTF8_getc_readdata),
        .in_lm3303_UTF8_getc_avm_readdatavalid(avm_lm3303_UTF8_getc_readdatavalid),
        .in_lm3303_UTF8_getc_avm_waitrequest(avm_lm3303_UTF8_getc_waitrequest),
        .in_lm3303_UTF8_getc_avm_writeack(avm_lm3303_UTF8_getc_writeack),
        .in_memdep_1_UTF8_getc_avm_readdata(avm_memdep_1_UTF8_getc_readdata),
        .in_memdep_1_UTF8_getc_avm_readdatavalid(avm_memdep_1_UTF8_getc_readdatavalid),
        .in_memdep_1_UTF8_getc_avm_waitrequest(avm_memdep_1_UTF8_getc_waitrequest),
        .in_memdep_1_UTF8_getc_avm_writeack(avm_memdep_1_UTF8_getc_writeack),
        .in_ml4347_UTF8_getc_avm_readdata(avm_ml4347_UTF8_getc_readdata),
        .in_ml4347_UTF8_getc_avm_readdatavalid(avm_ml4347_UTF8_getc_readdatavalid),
        .in_ml4347_UTF8_getc_avm_waitrequest(avm_ml4347_UTF8_getc_waitrequest),
        .in_ml4347_UTF8_getc_avm_writeack(avm_ml4347_UTF8_getc_writeack),
        .in_ml4475_UTF8_getc_avm_readdata(avm_ml4475_UTF8_getc_readdata),
        .in_ml4475_UTF8_getc_avm_readdatavalid(avm_ml4475_UTF8_getc_readdatavalid),
        .in_ml4475_UTF8_getc_avm_waitrequest(avm_ml4475_UTF8_getc_waitrequest),
        .in_ml4475_UTF8_getc_avm_writeack(avm_ml4475_UTF8_getc_writeack),
        .in_ml4504_UTF8_getc_avm_readdata(avm_ml4504_UTF8_getc_readdata),
        .in_ml4504_UTF8_getc_avm_readdatavalid(avm_ml4504_UTF8_getc_readdatavalid),
        .in_ml4504_UTF8_getc_avm_waitrequest(avm_ml4504_UTF8_getc_waitrequest),
        .in_ml4504_UTF8_getc_avm_writeack(avm_ml4504_UTF8_getc_writeack),
        .in_ml6_UTF8_getc_avm_readdata(avm_ml6_UTF8_getc_readdata),
        .in_ml6_UTF8_getc_avm_readdatavalid(avm_ml6_UTF8_getc_readdatavalid),
        .in_ml6_UTF8_getc_avm_waitrequest(avm_ml6_UTF8_getc_waitrequest),
        .in_ml6_UTF8_getc_avm_writeack(avm_ml6_UTF8_getc_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_UTF8_getc_o_fifoready(UTF8_getc_function_out_iord_bl_call_UTF8_getc_o_fifoready),
        .out_iowr_bl_return_UTF8_getc_o_fifodata(UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifodata),
        .out_iowr_bl_return_UTF8_getc_o_fifovalid(UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifovalid),
        .out_lm2_UTF8_getc_avm_address(UTF8_getc_function_out_lm2_UTF8_getc_avm_address),
        .out_lm2_UTF8_getc_avm_burstcount(UTF8_getc_function_out_lm2_UTF8_getc_avm_burstcount),
        .out_lm2_UTF8_getc_avm_byteenable(UTF8_getc_function_out_lm2_UTF8_getc_avm_byteenable),
        .out_lm2_UTF8_getc_avm_enable(UTF8_getc_function_out_lm2_UTF8_getc_avm_enable),
        .out_lm2_UTF8_getc_avm_read(UTF8_getc_function_out_lm2_UTF8_getc_avm_read),
        .out_lm2_UTF8_getc_avm_write(UTF8_getc_function_out_lm2_UTF8_getc_avm_write),
        .out_lm2_UTF8_getc_avm_writedata(UTF8_getc_function_out_lm2_UTF8_getc_avm_writedata),
        .out_lm3303_UTF8_getc_avm_address(UTF8_getc_function_out_lm3303_UTF8_getc_avm_address),
        .out_lm3303_UTF8_getc_avm_burstcount(UTF8_getc_function_out_lm3303_UTF8_getc_avm_burstcount),
        .out_lm3303_UTF8_getc_avm_byteenable(UTF8_getc_function_out_lm3303_UTF8_getc_avm_byteenable),
        .out_lm3303_UTF8_getc_avm_enable(UTF8_getc_function_out_lm3303_UTF8_getc_avm_enable),
        .out_lm3303_UTF8_getc_avm_read(UTF8_getc_function_out_lm3303_UTF8_getc_avm_read),
        .out_lm3303_UTF8_getc_avm_write(UTF8_getc_function_out_lm3303_UTF8_getc_avm_write),
        .out_lm3303_UTF8_getc_avm_writedata(UTF8_getc_function_out_lm3303_UTF8_getc_avm_writedata),
        .out_memdep_1_UTF8_getc_avm_address(UTF8_getc_function_out_memdep_1_UTF8_getc_avm_address),
        .out_memdep_1_UTF8_getc_avm_burstcount(UTF8_getc_function_out_memdep_1_UTF8_getc_avm_burstcount),
        .out_memdep_1_UTF8_getc_avm_byteenable(UTF8_getc_function_out_memdep_1_UTF8_getc_avm_byteenable),
        .out_memdep_1_UTF8_getc_avm_enable(UTF8_getc_function_out_memdep_1_UTF8_getc_avm_enable),
        .out_memdep_1_UTF8_getc_avm_read(UTF8_getc_function_out_memdep_1_UTF8_getc_avm_read),
        .out_memdep_1_UTF8_getc_avm_write(UTF8_getc_function_out_memdep_1_UTF8_getc_avm_write),
        .out_memdep_1_UTF8_getc_avm_writedata(UTF8_getc_function_out_memdep_1_UTF8_getc_avm_writedata),
        .out_ml4347_UTF8_getc_avm_address(UTF8_getc_function_out_ml4347_UTF8_getc_avm_address),
        .out_ml4347_UTF8_getc_avm_burstcount(UTF8_getc_function_out_ml4347_UTF8_getc_avm_burstcount),
        .out_ml4347_UTF8_getc_avm_byteenable(UTF8_getc_function_out_ml4347_UTF8_getc_avm_byteenable),
        .out_ml4347_UTF8_getc_avm_enable(UTF8_getc_function_out_ml4347_UTF8_getc_avm_enable),
        .out_ml4347_UTF8_getc_avm_read(UTF8_getc_function_out_ml4347_UTF8_getc_avm_read),
        .out_ml4347_UTF8_getc_avm_write(UTF8_getc_function_out_ml4347_UTF8_getc_avm_write),
        .out_ml4347_UTF8_getc_avm_writedata(UTF8_getc_function_out_ml4347_UTF8_getc_avm_writedata),
        .out_ml4475_UTF8_getc_avm_address(UTF8_getc_function_out_ml4475_UTF8_getc_avm_address),
        .out_ml4475_UTF8_getc_avm_burstcount(UTF8_getc_function_out_ml4475_UTF8_getc_avm_burstcount),
        .out_ml4475_UTF8_getc_avm_byteenable(UTF8_getc_function_out_ml4475_UTF8_getc_avm_byteenable),
        .out_ml4475_UTF8_getc_avm_enable(UTF8_getc_function_out_ml4475_UTF8_getc_avm_enable),
        .out_ml4475_UTF8_getc_avm_read(UTF8_getc_function_out_ml4475_UTF8_getc_avm_read),
        .out_ml4475_UTF8_getc_avm_write(UTF8_getc_function_out_ml4475_UTF8_getc_avm_write),
        .out_ml4475_UTF8_getc_avm_writedata(UTF8_getc_function_out_ml4475_UTF8_getc_avm_writedata),
        .out_ml4504_UTF8_getc_avm_address(UTF8_getc_function_out_ml4504_UTF8_getc_avm_address),
        .out_ml4504_UTF8_getc_avm_burstcount(UTF8_getc_function_out_ml4504_UTF8_getc_avm_burstcount),
        .out_ml4504_UTF8_getc_avm_byteenable(UTF8_getc_function_out_ml4504_UTF8_getc_avm_byteenable),
        .out_ml4504_UTF8_getc_avm_enable(UTF8_getc_function_out_ml4504_UTF8_getc_avm_enable),
        .out_ml4504_UTF8_getc_avm_read(UTF8_getc_function_out_ml4504_UTF8_getc_avm_read),
        .out_ml4504_UTF8_getc_avm_write(UTF8_getc_function_out_ml4504_UTF8_getc_avm_write),
        .out_ml4504_UTF8_getc_avm_writedata(UTF8_getc_function_out_ml4504_UTF8_getc_avm_writedata),
        .out_ml6_UTF8_getc_avm_address(UTF8_getc_function_out_ml6_UTF8_getc_avm_address),
        .out_ml6_UTF8_getc_avm_burstcount(UTF8_getc_function_out_ml6_UTF8_getc_avm_burstcount),
        .out_ml6_UTF8_getc_avm_byteenable(UTF8_getc_function_out_ml6_UTF8_getc_avm_byteenable),
        .out_ml6_UTF8_getc_avm_enable(UTF8_getc_function_out_ml6_UTF8_getc_avm_enable),
        .out_ml6_UTF8_getc_avm_read(UTF8_getc_function_out_ml6_UTF8_getc_avm_read),
        .out_ml6_UTF8_getc_avm_write(UTF8_getc_function_out_ml6_UTF8_getc_avm_write),
        .out_ml6_UTF8_getc_avm_writedata(UTF8_getc_function_out_ml6_UTF8_getc_avm_writedata),
        .out_o_active_memdep_1(),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm2_UTF8_getc_address(GPOUT,51)
    assign avm_lm2_UTF8_getc_address = UTF8_getc_function_out_lm2_UTF8_getc_avm_address;

    // avm_lm2_UTF8_getc_burstcount(GPOUT,52)
    assign avm_lm2_UTF8_getc_burstcount = UTF8_getc_function_out_lm2_UTF8_getc_avm_burstcount;

    // avm_lm2_UTF8_getc_byteenable(GPOUT,53)
    assign avm_lm2_UTF8_getc_byteenable = UTF8_getc_function_out_lm2_UTF8_getc_avm_byteenable;

    // avm_lm2_UTF8_getc_enable(GPOUT,54)
    assign avm_lm2_UTF8_getc_enable = UTF8_getc_function_out_lm2_UTF8_getc_avm_enable;

    // avm_lm2_UTF8_getc_read(GPOUT,55)
    assign avm_lm2_UTF8_getc_read = UTF8_getc_function_out_lm2_UTF8_getc_avm_read;

    // avm_lm2_UTF8_getc_write(GPOUT,56)
    assign avm_lm2_UTF8_getc_write = UTF8_getc_function_out_lm2_UTF8_getc_avm_write;

    // avm_lm2_UTF8_getc_writedata(GPOUT,57)
    assign avm_lm2_UTF8_getc_writedata = UTF8_getc_function_out_lm2_UTF8_getc_avm_writedata;

    // avm_lm3303_UTF8_getc_address(GPOUT,58)
    assign avm_lm3303_UTF8_getc_address = UTF8_getc_function_out_lm3303_UTF8_getc_avm_address;

    // avm_lm3303_UTF8_getc_burstcount(GPOUT,59)
    assign avm_lm3303_UTF8_getc_burstcount = UTF8_getc_function_out_lm3303_UTF8_getc_avm_burstcount;

    // avm_lm3303_UTF8_getc_byteenable(GPOUT,60)
    assign avm_lm3303_UTF8_getc_byteenable = UTF8_getc_function_out_lm3303_UTF8_getc_avm_byteenable;

    // avm_lm3303_UTF8_getc_enable(GPOUT,61)
    assign avm_lm3303_UTF8_getc_enable = UTF8_getc_function_out_lm3303_UTF8_getc_avm_enable;

    // avm_lm3303_UTF8_getc_read(GPOUT,62)
    assign avm_lm3303_UTF8_getc_read = UTF8_getc_function_out_lm3303_UTF8_getc_avm_read;

    // avm_lm3303_UTF8_getc_write(GPOUT,63)
    assign avm_lm3303_UTF8_getc_write = UTF8_getc_function_out_lm3303_UTF8_getc_avm_write;

    // avm_lm3303_UTF8_getc_writedata(GPOUT,64)
    assign avm_lm3303_UTF8_getc_writedata = UTF8_getc_function_out_lm3303_UTF8_getc_avm_writedata;

    // avm_memdep_1_UTF8_getc_address(GPOUT,65)
    assign avm_memdep_1_UTF8_getc_address = UTF8_getc_function_out_memdep_1_UTF8_getc_avm_address;

    // avm_memdep_1_UTF8_getc_burstcount(GPOUT,66)
    assign avm_memdep_1_UTF8_getc_burstcount = UTF8_getc_function_out_memdep_1_UTF8_getc_avm_burstcount;

    // avm_memdep_1_UTF8_getc_byteenable(GPOUT,67)
    assign avm_memdep_1_UTF8_getc_byteenable = UTF8_getc_function_out_memdep_1_UTF8_getc_avm_byteenable;

    // avm_memdep_1_UTF8_getc_enable(GPOUT,68)
    assign avm_memdep_1_UTF8_getc_enable = UTF8_getc_function_out_memdep_1_UTF8_getc_avm_enable;

    // avm_memdep_1_UTF8_getc_read(GPOUT,69)
    assign avm_memdep_1_UTF8_getc_read = UTF8_getc_function_out_memdep_1_UTF8_getc_avm_read;

    // avm_memdep_1_UTF8_getc_write(GPOUT,70)
    assign avm_memdep_1_UTF8_getc_write = UTF8_getc_function_out_memdep_1_UTF8_getc_avm_write;

    // avm_memdep_1_UTF8_getc_writedata(GPOUT,71)
    assign avm_memdep_1_UTF8_getc_writedata = UTF8_getc_function_out_memdep_1_UTF8_getc_avm_writedata;

    // avm_ml4347_UTF8_getc_address(GPOUT,72)
    assign avm_ml4347_UTF8_getc_address = UTF8_getc_function_out_ml4347_UTF8_getc_avm_address;

    // avm_ml4347_UTF8_getc_burstcount(GPOUT,73)
    assign avm_ml4347_UTF8_getc_burstcount = UTF8_getc_function_out_ml4347_UTF8_getc_avm_burstcount;

    // avm_ml4347_UTF8_getc_byteenable(GPOUT,74)
    assign avm_ml4347_UTF8_getc_byteenable = UTF8_getc_function_out_ml4347_UTF8_getc_avm_byteenable;

    // avm_ml4347_UTF8_getc_enable(GPOUT,75)
    assign avm_ml4347_UTF8_getc_enable = UTF8_getc_function_out_ml4347_UTF8_getc_avm_enable;

    // avm_ml4347_UTF8_getc_read(GPOUT,76)
    assign avm_ml4347_UTF8_getc_read = UTF8_getc_function_out_ml4347_UTF8_getc_avm_read;

    // avm_ml4347_UTF8_getc_write(GPOUT,77)
    assign avm_ml4347_UTF8_getc_write = UTF8_getc_function_out_ml4347_UTF8_getc_avm_write;

    // avm_ml4347_UTF8_getc_writedata(GPOUT,78)
    assign avm_ml4347_UTF8_getc_writedata = UTF8_getc_function_out_ml4347_UTF8_getc_avm_writedata;

    // avm_ml4475_UTF8_getc_address(GPOUT,79)
    assign avm_ml4475_UTF8_getc_address = UTF8_getc_function_out_ml4475_UTF8_getc_avm_address;

    // avm_ml4475_UTF8_getc_burstcount(GPOUT,80)
    assign avm_ml4475_UTF8_getc_burstcount = UTF8_getc_function_out_ml4475_UTF8_getc_avm_burstcount;

    // avm_ml4475_UTF8_getc_byteenable(GPOUT,81)
    assign avm_ml4475_UTF8_getc_byteenable = UTF8_getc_function_out_ml4475_UTF8_getc_avm_byteenable;

    // avm_ml4475_UTF8_getc_enable(GPOUT,82)
    assign avm_ml4475_UTF8_getc_enable = UTF8_getc_function_out_ml4475_UTF8_getc_avm_enable;

    // avm_ml4475_UTF8_getc_read(GPOUT,83)
    assign avm_ml4475_UTF8_getc_read = UTF8_getc_function_out_ml4475_UTF8_getc_avm_read;

    // avm_ml4475_UTF8_getc_write(GPOUT,84)
    assign avm_ml4475_UTF8_getc_write = UTF8_getc_function_out_ml4475_UTF8_getc_avm_write;

    // avm_ml4475_UTF8_getc_writedata(GPOUT,85)
    assign avm_ml4475_UTF8_getc_writedata = UTF8_getc_function_out_ml4475_UTF8_getc_avm_writedata;

    // avm_ml4504_UTF8_getc_address(GPOUT,86)
    assign avm_ml4504_UTF8_getc_address = UTF8_getc_function_out_ml4504_UTF8_getc_avm_address;

    // avm_ml4504_UTF8_getc_burstcount(GPOUT,87)
    assign avm_ml4504_UTF8_getc_burstcount = UTF8_getc_function_out_ml4504_UTF8_getc_avm_burstcount;

    // avm_ml4504_UTF8_getc_byteenable(GPOUT,88)
    assign avm_ml4504_UTF8_getc_byteenable = UTF8_getc_function_out_ml4504_UTF8_getc_avm_byteenable;

    // avm_ml4504_UTF8_getc_enable(GPOUT,89)
    assign avm_ml4504_UTF8_getc_enable = UTF8_getc_function_out_ml4504_UTF8_getc_avm_enable;

    // avm_ml4504_UTF8_getc_read(GPOUT,90)
    assign avm_ml4504_UTF8_getc_read = UTF8_getc_function_out_ml4504_UTF8_getc_avm_read;

    // avm_ml4504_UTF8_getc_write(GPOUT,91)
    assign avm_ml4504_UTF8_getc_write = UTF8_getc_function_out_ml4504_UTF8_getc_avm_write;

    // avm_ml4504_UTF8_getc_writedata(GPOUT,92)
    assign avm_ml4504_UTF8_getc_writedata = UTF8_getc_function_out_ml4504_UTF8_getc_avm_writedata;

    // avm_ml6_UTF8_getc_address(GPOUT,93)
    assign avm_ml6_UTF8_getc_address = UTF8_getc_function_out_ml6_UTF8_getc_avm_address;

    // avm_ml6_UTF8_getc_burstcount(GPOUT,94)
    assign avm_ml6_UTF8_getc_burstcount = UTF8_getc_function_out_ml6_UTF8_getc_avm_burstcount;

    // avm_ml6_UTF8_getc_byteenable(GPOUT,95)
    assign avm_ml6_UTF8_getc_byteenable = UTF8_getc_function_out_ml6_UTF8_getc_avm_byteenable;

    // avm_ml6_UTF8_getc_enable(GPOUT,96)
    assign avm_ml6_UTF8_getc_enable = UTF8_getc_function_out_ml6_UTF8_getc_avm_enable;

    // avm_ml6_UTF8_getc_read(GPOUT,97)
    assign avm_ml6_UTF8_getc_read = UTF8_getc_function_out_ml6_UTF8_getc_avm_read;

    // avm_ml6_UTF8_getc_write(GPOUT,98)
    assign avm_ml6_UTF8_getc_write = UTF8_getc_function_out_ml6_UTF8_getc_avm_write;

    // avm_ml6_UTF8_getc_writedata(GPOUT,99)
    assign avm_ml6_UTF8_getc_writedata = UTF8_getc_function_out_ml6_UTF8_getc_avm_writedata;

    // avst_iord_bl_call_UTF8_getc_ready(GPOUT,100)
    assign avst_iord_bl_call_UTF8_getc_ready = UTF8_getc_function_out_iord_bl_call_UTF8_getc_o_fifoready;

    // avst_iowr_bl_return_UTF8_getc_data(GPOUT,101)
    assign avst_iowr_bl_return_UTF8_getc_data = UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifodata;

    // avst_iowr_bl_return_UTF8_getc_valid(GPOUT,102)
    assign avst_iowr_bl_return_UTF8_getc_valid = UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifovalid;

    // not_ready(LOGICAL,49)
    assign not_ready_q = ~ (UTF8_getc_function_out_iord_bl_call_UTF8_getc_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,107)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,106)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,103)
    assign busy = busy_or_q;

    // done(GPOUT,104)
    assign done = UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifovalid;

    // returndata(GPOUT,105)
    assign returndata = UTF8_getc_function_out_iowr_bl_return_UTF8_getc_o_fifodata;

endmodule
