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

// SystemVerilog created from stb_from_utf8_function_wrapper
// SystemVerilog created on Sun May 24 22:41:05 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stb_from_utf8_function_wrapper (
    input wire [63:0] avm_lm2002_stb_from_utf8_readdata,
    input wire [0:0] avm_lm2002_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_lm2002_stb_from_utf8_waitrequest,
    input wire [0:0] avm_lm2002_stb_from_utf8_writeack,
    input wire [63:0] avm_lm2545_stb_from_utf8_readdata,
    input wire [0:0] avm_lm2545_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_lm2545_stb_from_utf8_waitrequest,
    input wire [0:0] avm_lm2545_stb_from_utf8_writeack,
    input wire [63:0] avm_memdep_1_stb_from_utf8_readdata,
    input wire [0:0] avm_memdep_1_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_memdep_1_stb_from_utf8_waitrequest,
    input wire [0:0] avm_memdep_1_stb_from_utf8_writeack,
    input wire [63:0] avm_memdep_6_stb_from_utf8_readdata,
    input wire [0:0] avm_memdep_6_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_memdep_6_stb_from_utf8_waitrequest,
    input wire [0:0] avm_memdep_6_stb_from_utf8_writeack,
    input wire [63:0] avm_memdep_stb_from_utf8_readdata,
    input wire [0:0] avm_memdep_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_memdep_stb_from_utf8_waitrequest,
    input wire [0:0] avm_memdep_stb_from_utf8_writeack,
    input wire [63:0] avm_ml2664_stb_from_utf8_readdata,
    input wire [0:0] avm_ml2664_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_ml2664_stb_from_utf8_waitrequest,
    input wire [0:0] avm_ml2664_stb_from_utf8_writeack,
    input wire [63:0] avm_ml3_stb_from_utf8_readdata,
    input wire [0:0] avm_ml3_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_ml3_stb_from_utf8_waitrequest,
    input wire [0:0] avm_ml3_stb_from_utf8_writeack,
    input wire [63:0] avm_unnamed_stb_from_utf83_stb_from_utf8_readdata,
    input wire [0:0] avm_unnamed_stb_from_utf83_stb_from_utf8_readdatavalid,
    input wire [0:0] avm_unnamed_stb_from_utf83_stb_from_utf8_waitrequest,
    input wire [0:0] avm_unnamed_stb_from_utf83_stb_from_utf8_writeack,
    input wire [191:0] avst_iord_bl_call_stb_from_utf8_data,
    input wire [0:0] avst_iord_bl_call_stb_from_utf8_valid,
    input wire [0:0] avst_iowr_bl_return_stb_from_utf8_almostfull,
    input wire [0:0] avst_iowr_bl_return_stb_from_utf8_ready,
    input wire [63:0] buffer0,
    input wire [31:0] n,
    input wire [63:0] ostr,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm2002_stb_from_utf8_address,
    output wire [0:0] avm_lm2002_stb_from_utf8_burstcount,
    output wire [7:0] avm_lm2002_stb_from_utf8_byteenable,
    output wire [0:0] avm_lm2002_stb_from_utf8_enable,
    output wire [0:0] avm_lm2002_stb_from_utf8_read,
    output wire [0:0] avm_lm2002_stb_from_utf8_write,
    output wire [63:0] avm_lm2002_stb_from_utf8_writedata,
    output wire [63:0] avm_lm2545_stb_from_utf8_address,
    output wire [0:0] avm_lm2545_stb_from_utf8_burstcount,
    output wire [7:0] avm_lm2545_stb_from_utf8_byteenable,
    output wire [0:0] avm_lm2545_stb_from_utf8_enable,
    output wire [0:0] avm_lm2545_stb_from_utf8_read,
    output wire [0:0] avm_lm2545_stb_from_utf8_write,
    output wire [63:0] avm_lm2545_stb_from_utf8_writedata,
    output wire [63:0] avm_memdep_1_stb_from_utf8_address,
    output wire [0:0] avm_memdep_1_stb_from_utf8_burstcount,
    output wire [7:0] avm_memdep_1_stb_from_utf8_byteenable,
    output wire [0:0] avm_memdep_1_stb_from_utf8_enable,
    output wire [0:0] avm_memdep_1_stb_from_utf8_read,
    output wire [0:0] avm_memdep_1_stb_from_utf8_write,
    output wire [63:0] avm_memdep_1_stb_from_utf8_writedata,
    output wire [63:0] avm_memdep_6_stb_from_utf8_address,
    output wire [0:0] avm_memdep_6_stb_from_utf8_burstcount,
    output wire [7:0] avm_memdep_6_stb_from_utf8_byteenable,
    output wire [0:0] avm_memdep_6_stb_from_utf8_enable,
    output wire [0:0] avm_memdep_6_stb_from_utf8_read,
    output wire [0:0] avm_memdep_6_stb_from_utf8_write,
    output wire [63:0] avm_memdep_6_stb_from_utf8_writedata,
    output wire [63:0] avm_memdep_stb_from_utf8_address,
    output wire [0:0] avm_memdep_stb_from_utf8_burstcount,
    output wire [7:0] avm_memdep_stb_from_utf8_byteenable,
    output wire [0:0] avm_memdep_stb_from_utf8_enable,
    output wire [0:0] avm_memdep_stb_from_utf8_read,
    output wire [0:0] avm_memdep_stb_from_utf8_write,
    output wire [63:0] avm_memdep_stb_from_utf8_writedata,
    output wire [63:0] avm_ml2664_stb_from_utf8_address,
    output wire [0:0] avm_ml2664_stb_from_utf8_burstcount,
    output wire [7:0] avm_ml2664_stb_from_utf8_byteenable,
    output wire [0:0] avm_ml2664_stb_from_utf8_enable,
    output wire [0:0] avm_ml2664_stb_from_utf8_read,
    output wire [0:0] avm_ml2664_stb_from_utf8_write,
    output wire [63:0] avm_ml2664_stb_from_utf8_writedata,
    output wire [63:0] avm_ml3_stb_from_utf8_address,
    output wire [0:0] avm_ml3_stb_from_utf8_burstcount,
    output wire [7:0] avm_ml3_stb_from_utf8_byteenable,
    output wire [0:0] avm_ml3_stb_from_utf8_enable,
    output wire [0:0] avm_ml3_stb_from_utf8_read,
    output wire [0:0] avm_ml3_stb_from_utf8_write,
    output wire [63:0] avm_ml3_stb_from_utf8_writedata,
    output wire [63:0] avm_unnamed_stb_from_utf83_stb_from_utf8_address,
    output wire [0:0] avm_unnamed_stb_from_utf83_stb_from_utf8_burstcount,
    output wire [7:0] avm_unnamed_stb_from_utf83_stb_from_utf8_byteenable,
    output wire [0:0] avm_unnamed_stb_from_utf83_stb_from_utf8_enable,
    output wire [0:0] avm_unnamed_stb_from_utf83_stb_from_utf8_read,
    output wire [0:0] avm_unnamed_stb_from_utf83_stb_from_utf8_write,
    output wire [63:0] avm_unnamed_stb_from_utf83_stb_from_utf8_writedata,
    output wire [0:0] avst_iord_bl_call_stb_from_utf8_ready,
    output wire [63:0] avst_iowr_bl_return_stb_from_utf8_data,
    output wire [0:0] avst_iowr_bl_return_stb_from_utf8_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [63:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] buffer0_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [191:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] stb_from_utf8_function_out_iord_bl_call_stb_from_utf8_o_fifoready;
    wire [63:0] stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifodata;
    wire [0:0] stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifovalid;
    wire [63:0] stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_writedata;
    wire [63:0] stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_writedata;
    wire [63:0] stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_writedata;
    wire [63:0] stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_writedata;
    wire [63:0] stb_from_utf8_function_out_memdep_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_memdep_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_memdep_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_memdep_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_memdep_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_memdep_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_memdep_stb_from_utf8_avm_writedata;
    wire [63:0] stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_writedata;
    wire [63:0] stb_from_utf8_function_out_ml3_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_ml3_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_ml3_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_ml3_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_ml3_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_ml3_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_ml3_stb_from_utf8_avm_writedata;
    wire [63:0] stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;
    wire [0:0] stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;
    wire [7:0] stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;
    wire [0:0] stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;
    wire [0:0] stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;
    wire [0:0] stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;
    wire [63:0] stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,54)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,9)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, ostr, buffer0};

    // buffer0_const(CONSTANT,2)
    assign buffer0_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // stb_from_utf8_function(BLACKBOX,122)
    stb_from_utf8_function thestb_from_utf8_function (
        .in_arg_buffer0(buffer0_const_q),
        .in_arg_call(buffer0_const_q),
        .in_arg_ostr(buffer0_const_q),
        .in_arg_return(buffer0_const_q),
        .in_iord_bl_call_stb_from_utf8_i_fifodata(implicit_input_q),
        .in_iord_bl_call_stb_from_utf8_i_fifovalid(start),
        .in_iowr_bl_return_stb_from_utf8_i_fifoready(not_stall_q),
        .in_lm2002_stb_from_utf8_avm_readdata(avm_lm2002_stb_from_utf8_readdata),
        .in_lm2002_stb_from_utf8_avm_readdatavalid(avm_lm2002_stb_from_utf8_readdatavalid),
        .in_lm2002_stb_from_utf8_avm_waitrequest(avm_lm2002_stb_from_utf8_waitrequest),
        .in_lm2002_stb_from_utf8_avm_writeack(avm_lm2002_stb_from_utf8_writeack),
        .in_lm2545_stb_from_utf8_avm_readdata(avm_lm2545_stb_from_utf8_readdata),
        .in_lm2545_stb_from_utf8_avm_readdatavalid(avm_lm2545_stb_from_utf8_readdatavalid),
        .in_lm2545_stb_from_utf8_avm_waitrequest(avm_lm2545_stb_from_utf8_waitrequest),
        .in_lm2545_stb_from_utf8_avm_writeack(avm_lm2545_stb_from_utf8_writeack),
        .in_memdep_1_stb_from_utf8_avm_readdata(avm_memdep_1_stb_from_utf8_readdata),
        .in_memdep_1_stb_from_utf8_avm_readdatavalid(avm_memdep_1_stb_from_utf8_readdatavalid),
        .in_memdep_1_stb_from_utf8_avm_waitrequest(avm_memdep_1_stb_from_utf8_waitrequest),
        .in_memdep_1_stb_from_utf8_avm_writeack(avm_memdep_1_stb_from_utf8_writeack),
        .in_memdep_6_stb_from_utf8_avm_readdata(avm_memdep_6_stb_from_utf8_readdata),
        .in_memdep_6_stb_from_utf8_avm_readdatavalid(avm_memdep_6_stb_from_utf8_readdatavalid),
        .in_memdep_6_stb_from_utf8_avm_waitrequest(avm_memdep_6_stb_from_utf8_waitrequest),
        .in_memdep_6_stb_from_utf8_avm_writeack(avm_memdep_6_stb_from_utf8_writeack),
        .in_memdep_stb_from_utf8_avm_readdata(avm_memdep_stb_from_utf8_readdata),
        .in_memdep_stb_from_utf8_avm_readdatavalid(avm_memdep_stb_from_utf8_readdatavalid),
        .in_memdep_stb_from_utf8_avm_waitrequest(avm_memdep_stb_from_utf8_waitrequest),
        .in_memdep_stb_from_utf8_avm_writeack(avm_memdep_stb_from_utf8_writeack),
        .in_ml2664_stb_from_utf8_avm_readdata(avm_ml2664_stb_from_utf8_readdata),
        .in_ml2664_stb_from_utf8_avm_readdatavalid(avm_ml2664_stb_from_utf8_readdatavalid),
        .in_ml2664_stb_from_utf8_avm_waitrequest(avm_ml2664_stb_from_utf8_waitrequest),
        .in_ml2664_stb_from_utf8_avm_writeack(avm_ml2664_stb_from_utf8_writeack),
        .in_ml3_stb_from_utf8_avm_readdata(avm_ml3_stb_from_utf8_readdata),
        .in_ml3_stb_from_utf8_avm_readdatavalid(avm_ml3_stb_from_utf8_readdatavalid),
        .in_ml3_stb_from_utf8_avm_waitrequest(avm_ml3_stb_from_utf8_waitrequest),
        .in_ml3_stb_from_utf8_avm_writeack(avm_ml3_stb_from_utf8_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata(avm_unnamed_stb_from_utf83_stb_from_utf8_readdata),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid(avm_unnamed_stb_from_utf83_stb_from_utf8_readdatavalid),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest(avm_unnamed_stb_from_utf83_stb_from_utf8_waitrequest),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack(avm_unnamed_stb_from_utf83_stb_from_utf8_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_stb_from_utf8_o_fifoready(stb_from_utf8_function_out_iord_bl_call_stb_from_utf8_o_fifoready),
        .out_iowr_bl_return_stb_from_utf8_o_fifodata(stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifodata),
        .out_iowr_bl_return_stb_from_utf8_o_fifovalid(stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifovalid),
        .out_lm2002_stb_from_utf8_avm_address(stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_address),
        .out_lm2002_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_burstcount),
        .out_lm2002_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_byteenable),
        .out_lm2002_stb_from_utf8_avm_enable(stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_enable),
        .out_lm2002_stb_from_utf8_avm_read(stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_read),
        .out_lm2002_stb_from_utf8_avm_write(stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_write),
        .out_lm2002_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_writedata),
        .out_lm2545_stb_from_utf8_avm_address(stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_address),
        .out_lm2545_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_burstcount),
        .out_lm2545_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_byteenable),
        .out_lm2545_stb_from_utf8_avm_enable(stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_enable),
        .out_lm2545_stb_from_utf8_avm_read(stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_read),
        .out_lm2545_stb_from_utf8_avm_write(stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_write),
        .out_lm2545_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_writedata),
        .out_memdep_1_stb_from_utf8_avm_address(stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_address),
        .out_memdep_1_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_burstcount),
        .out_memdep_1_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_byteenable),
        .out_memdep_1_stb_from_utf8_avm_enable(stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_enable),
        .out_memdep_1_stb_from_utf8_avm_read(stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_read),
        .out_memdep_1_stb_from_utf8_avm_write(stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_write),
        .out_memdep_1_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_writedata),
        .out_memdep_6_stb_from_utf8_avm_address(stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_address),
        .out_memdep_6_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_burstcount),
        .out_memdep_6_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_byteenable),
        .out_memdep_6_stb_from_utf8_avm_enable(stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_enable),
        .out_memdep_6_stb_from_utf8_avm_read(stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_read),
        .out_memdep_6_stb_from_utf8_avm_write(stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_write),
        .out_memdep_6_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_writedata),
        .out_memdep_stb_from_utf8_avm_address(stb_from_utf8_function_out_memdep_stb_from_utf8_avm_address),
        .out_memdep_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_memdep_stb_from_utf8_avm_burstcount),
        .out_memdep_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_memdep_stb_from_utf8_avm_byteenable),
        .out_memdep_stb_from_utf8_avm_enable(stb_from_utf8_function_out_memdep_stb_from_utf8_avm_enable),
        .out_memdep_stb_from_utf8_avm_read(stb_from_utf8_function_out_memdep_stb_from_utf8_avm_read),
        .out_memdep_stb_from_utf8_avm_write(stb_from_utf8_function_out_memdep_stb_from_utf8_avm_write),
        .out_memdep_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_memdep_stb_from_utf8_avm_writedata),
        .out_ml2664_stb_from_utf8_avm_address(stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_address),
        .out_ml2664_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_burstcount),
        .out_ml2664_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_byteenable),
        .out_ml2664_stb_from_utf8_avm_enable(stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_enable),
        .out_ml2664_stb_from_utf8_avm_read(stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_read),
        .out_ml2664_stb_from_utf8_avm_write(stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_write),
        .out_ml2664_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_writedata),
        .out_ml3_stb_from_utf8_avm_address(stb_from_utf8_function_out_ml3_stb_from_utf8_avm_address),
        .out_ml3_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_ml3_stb_from_utf8_avm_burstcount),
        .out_ml3_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_ml3_stb_from_utf8_avm_byteenable),
        .out_ml3_stb_from_utf8_avm_enable(stb_from_utf8_function_out_ml3_stb_from_utf8_avm_enable),
        .out_ml3_stb_from_utf8_avm_read(stb_from_utf8_function_out_ml3_stb_from_utf8_avm_read),
        .out_ml3_stb_from_utf8_avm_write(stb_from_utf8_function_out_ml3_stb_from_utf8_avm_write),
        .out_ml3_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_ml3_stb_from_utf8_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_1(),
        .out_o_active_memdep_6(),
        .out_stall_out(),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_address(stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount(stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable(stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable(stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_read(stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_write(stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata(stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm2002_stb_from_utf8_address(GPOUT,56)
    assign avm_lm2002_stb_from_utf8_address = stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_address;

    // avm_lm2002_stb_from_utf8_burstcount(GPOUT,57)
    assign avm_lm2002_stb_from_utf8_burstcount = stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_burstcount;

    // avm_lm2002_stb_from_utf8_byteenable(GPOUT,58)
    assign avm_lm2002_stb_from_utf8_byteenable = stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_byteenable;

    // avm_lm2002_stb_from_utf8_enable(GPOUT,59)
    assign avm_lm2002_stb_from_utf8_enable = stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_enable;

    // avm_lm2002_stb_from_utf8_read(GPOUT,60)
    assign avm_lm2002_stb_from_utf8_read = stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_read;

    // avm_lm2002_stb_from_utf8_write(GPOUT,61)
    assign avm_lm2002_stb_from_utf8_write = stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_write;

    // avm_lm2002_stb_from_utf8_writedata(GPOUT,62)
    assign avm_lm2002_stb_from_utf8_writedata = stb_from_utf8_function_out_lm2002_stb_from_utf8_avm_writedata;

    // avm_lm2545_stb_from_utf8_address(GPOUT,63)
    assign avm_lm2545_stb_from_utf8_address = stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_address;

    // avm_lm2545_stb_from_utf8_burstcount(GPOUT,64)
    assign avm_lm2545_stb_from_utf8_burstcount = stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_burstcount;

    // avm_lm2545_stb_from_utf8_byteenable(GPOUT,65)
    assign avm_lm2545_stb_from_utf8_byteenable = stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_byteenable;

    // avm_lm2545_stb_from_utf8_enable(GPOUT,66)
    assign avm_lm2545_stb_from_utf8_enable = stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_enable;

    // avm_lm2545_stb_from_utf8_read(GPOUT,67)
    assign avm_lm2545_stb_from_utf8_read = stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_read;

    // avm_lm2545_stb_from_utf8_write(GPOUT,68)
    assign avm_lm2545_stb_from_utf8_write = stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_write;

    // avm_lm2545_stb_from_utf8_writedata(GPOUT,69)
    assign avm_lm2545_stb_from_utf8_writedata = stb_from_utf8_function_out_lm2545_stb_from_utf8_avm_writedata;

    // avm_memdep_1_stb_from_utf8_address(GPOUT,70)
    assign avm_memdep_1_stb_from_utf8_address = stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_address;

    // avm_memdep_1_stb_from_utf8_burstcount(GPOUT,71)
    assign avm_memdep_1_stb_from_utf8_burstcount = stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_burstcount;

    // avm_memdep_1_stb_from_utf8_byteenable(GPOUT,72)
    assign avm_memdep_1_stb_from_utf8_byteenable = stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_byteenable;

    // avm_memdep_1_stb_from_utf8_enable(GPOUT,73)
    assign avm_memdep_1_stb_from_utf8_enable = stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_enable;

    // avm_memdep_1_stb_from_utf8_read(GPOUT,74)
    assign avm_memdep_1_stb_from_utf8_read = stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_read;

    // avm_memdep_1_stb_from_utf8_write(GPOUT,75)
    assign avm_memdep_1_stb_from_utf8_write = stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_write;

    // avm_memdep_1_stb_from_utf8_writedata(GPOUT,76)
    assign avm_memdep_1_stb_from_utf8_writedata = stb_from_utf8_function_out_memdep_1_stb_from_utf8_avm_writedata;

    // avm_memdep_6_stb_from_utf8_address(GPOUT,77)
    assign avm_memdep_6_stb_from_utf8_address = stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_address;

    // avm_memdep_6_stb_from_utf8_burstcount(GPOUT,78)
    assign avm_memdep_6_stb_from_utf8_burstcount = stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_burstcount;

    // avm_memdep_6_stb_from_utf8_byteenable(GPOUT,79)
    assign avm_memdep_6_stb_from_utf8_byteenable = stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_byteenable;

    // avm_memdep_6_stb_from_utf8_enable(GPOUT,80)
    assign avm_memdep_6_stb_from_utf8_enable = stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_enable;

    // avm_memdep_6_stb_from_utf8_read(GPOUT,81)
    assign avm_memdep_6_stb_from_utf8_read = stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_read;

    // avm_memdep_6_stb_from_utf8_write(GPOUT,82)
    assign avm_memdep_6_stb_from_utf8_write = stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_write;

    // avm_memdep_6_stb_from_utf8_writedata(GPOUT,83)
    assign avm_memdep_6_stb_from_utf8_writedata = stb_from_utf8_function_out_memdep_6_stb_from_utf8_avm_writedata;

    // avm_memdep_stb_from_utf8_address(GPOUT,84)
    assign avm_memdep_stb_from_utf8_address = stb_from_utf8_function_out_memdep_stb_from_utf8_avm_address;

    // avm_memdep_stb_from_utf8_burstcount(GPOUT,85)
    assign avm_memdep_stb_from_utf8_burstcount = stb_from_utf8_function_out_memdep_stb_from_utf8_avm_burstcount;

    // avm_memdep_stb_from_utf8_byteenable(GPOUT,86)
    assign avm_memdep_stb_from_utf8_byteenable = stb_from_utf8_function_out_memdep_stb_from_utf8_avm_byteenable;

    // avm_memdep_stb_from_utf8_enable(GPOUT,87)
    assign avm_memdep_stb_from_utf8_enable = stb_from_utf8_function_out_memdep_stb_from_utf8_avm_enable;

    // avm_memdep_stb_from_utf8_read(GPOUT,88)
    assign avm_memdep_stb_from_utf8_read = stb_from_utf8_function_out_memdep_stb_from_utf8_avm_read;

    // avm_memdep_stb_from_utf8_write(GPOUT,89)
    assign avm_memdep_stb_from_utf8_write = stb_from_utf8_function_out_memdep_stb_from_utf8_avm_write;

    // avm_memdep_stb_from_utf8_writedata(GPOUT,90)
    assign avm_memdep_stb_from_utf8_writedata = stb_from_utf8_function_out_memdep_stb_from_utf8_avm_writedata;

    // avm_ml2664_stb_from_utf8_address(GPOUT,91)
    assign avm_ml2664_stb_from_utf8_address = stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_address;

    // avm_ml2664_stb_from_utf8_burstcount(GPOUT,92)
    assign avm_ml2664_stb_from_utf8_burstcount = stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_burstcount;

    // avm_ml2664_stb_from_utf8_byteenable(GPOUT,93)
    assign avm_ml2664_stb_from_utf8_byteenable = stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_byteenable;

    // avm_ml2664_stb_from_utf8_enable(GPOUT,94)
    assign avm_ml2664_stb_from_utf8_enable = stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_enable;

    // avm_ml2664_stb_from_utf8_read(GPOUT,95)
    assign avm_ml2664_stb_from_utf8_read = stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_read;

    // avm_ml2664_stb_from_utf8_write(GPOUT,96)
    assign avm_ml2664_stb_from_utf8_write = stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_write;

    // avm_ml2664_stb_from_utf8_writedata(GPOUT,97)
    assign avm_ml2664_stb_from_utf8_writedata = stb_from_utf8_function_out_ml2664_stb_from_utf8_avm_writedata;

    // avm_ml3_stb_from_utf8_address(GPOUT,98)
    assign avm_ml3_stb_from_utf8_address = stb_from_utf8_function_out_ml3_stb_from_utf8_avm_address;

    // avm_ml3_stb_from_utf8_burstcount(GPOUT,99)
    assign avm_ml3_stb_from_utf8_burstcount = stb_from_utf8_function_out_ml3_stb_from_utf8_avm_burstcount;

    // avm_ml3_stb_from_utf8_byteenable(GPOUT,100)
    assign avm_ml3_stb_from_utf8_byteenable = stb_from_utf8_function_out_ml3_stb_from_utf8_avm_byteenable;

    // avm_ml3_stb_from_utf8_enable(GPOUT,101)
    assign avm_ml3_stb_from_utf8_enable = stb_from_utf8_function_out_ml3_stb_from_utf8_avm_enable;

    // avm_ml3_stb_from_utf8_read(GPOUT,102)
    assign avm_ml3_stb_from_utf8_read = stb_from_utf8_function_out_ml3_stb_from_utf8_avm_read;

    // avm_ml3_stb_from_utf8_write(GPOUT,103)
    assign avm_ml3_stb_from_utf8_write = stb_from_utf8_function_out_ml3_stb_from_utf8_avm_write;

    // avm_ml3_stb_from_utf8_writedata(GPOUT,104)
    assign avm_ml3_stb_from_utf8_writedata = stb_from_utf8_function_out_ml3_stb_from_utf8_avm_writedata;

    // avm_unnamed_stb_from_utf83_stb_from_utf8_address(GPOUT,105)
    assign avm_unnamed_stb_from_utf83_stb_from_utf8_address = stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;

    // avm_unnamed_stb_from_utf83_stb_from_utf8_burstcount(GPOUT,106)
    assign avm_unnamed_stb_from_utf83_stb_from_utf8_burstcount = stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;

    // avm_unnamed_stb_from_utf83_stb_from_utf8_byteenable(GPOUT,107)
    assign avm_unnamed_stb_from_utf83_stb_from_utf8_byteenable = stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;

    // avm_unnamed_stb_from_utf83_stb_from_utf8_enable(GPOUT,108)
    assign avm_unnamed_stb_from_utf83_stb_from_utf8_enable = stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;

    // avm_unnamed_stb_from_utf83_stb_from_utf8_read(GPOUT,109)
    assign avm_unnamed_stb_from_utf83_stb_from_utf8_read = stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;

    // avm_unnamed_stb_from_utf83_stb_from_utf8_write(GPOUT,110)
    assign avm_unnamed_stb_from_utf83_stb_from_utf8_write = stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;

    // avm_unnamed_stb_from_utf83_stb_from_utf8_writedata(GPOUT,111)
    assign avm_unnamed_stb_from_utf83_stb_from_utf8_writedata = stb_from_utf8_function_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;

    // avst_iord_bl_call_stb_from_utf8_ready(GPOUT,112)
    assign avst_iord_bl_call_stb_from_utf8_ready = stb_from_utf8_function_out_iord_bl_call_stb_from_utf8_o_fifoready;

    // avst_iowr_bl_return_stb_from_utf8_data(GPOUT,113)
    assign avst_iowr_bl_return_stb_from_utf8_data = stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifodata;

    // avst_iowr_bl_return_stb_from_utf8_valid(GPOUT,114)
    assign avst_iowr_bl_return_stb_from_utf8_valid = stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifovalid;

    // not_ready(LOGICAL,53)
    assign not_ready_q = ~ (stb_from_utf8_function_out_iord_bl_call_stb_from_utf8_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,119)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,118)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,115)
    assign busy = busy_or_q;

    // done(GPOUT,116)
    assign done = stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifovalid;

    // returndata(GPOUT,117)
    assign returndata = stb_from_utf8_function_out_iowr_bl_return_stb_from_utf8_o_fifodata;

endmodule
