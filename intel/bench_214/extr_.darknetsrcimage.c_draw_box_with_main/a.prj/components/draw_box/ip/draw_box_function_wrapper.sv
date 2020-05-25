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

// SystemVerilog created from draw_box_function_wrapper
// SystemVerilog created on Sun May 24 22:30:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module draw_box_function_wrapper (
    input wire [127:0] a,
    input wire [63:0] avm_memdep_10_draw_box_readdata,
    input wire [0:0] avm_memdep_10_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_10_draw_box_waitrequest,
    input wire [0:0] avm_memdep_10_draw_box_writeack,
    input wire [63:0] avm_memdep_15_draw_box_readdata,
    input wire [0:0] avm_memdep_15_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_15_draw_box_waitrequest,
    input wire [0:0] avm_memdep_15_draw_box_writeack,
    input wire [63:0] avm_memdep_1_draw_box_readdata,
    input wire [0:0] avm_memdep_1_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_1_draw_box_waitrequest,
    input wire [0:0] avm_memdep_1_draw_box_writeack,
    input wire [63:0] avm_memdep_20_draw_box_readdata,
    input wire [0:0] avm_memdep_20_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_20_draw_box_waitrequest,
    input wire [0:0] avm_memdep_20_draw_box_writeack,
    input wire [63:0] avm_memdep_26_draw_box_readdata,
    input wire [0:0] avm_memdep_26_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_26_draw_box_waitrequest,
    input wire [0:0] avm_memdep_26_draw_box_writeack,
    input wire [63:0] avm_memdep_28_draw_box_readdata,
    input wire [0:0] avm_memdep_28_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_28_draw_box_waitrequest,
    input wire [0:0] avm_memdep_28_draw_box_writeack,
    input wire [63:0] avm_memdep_32_draw_box_readdata,
    input wire [0:0] avm_memdep_32_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_32_draw_box_waitrequest,
    input wire [0:0] avm_memdep_32_draw_box_writeack,
    input wire [63:0] avm_memdep_37_draw_box_readdata,
    input wire [0:0] avm_memdep_37_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_37_draw_box_waitrequest,
    input wire [0:0] avm_memdep_37_draw_box_writeack,
    input wire [63:0] avm_memdep_42_draw_box_readdata,
    input wire [0:0] avm_memdep_42_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_42_draw_box_waitrequest,
    input wire [0:0] avm_memdep_42_draw_box_writeack,
    input wire [63:0] avm_memdep_47_draw_box_readdata,
    input wire [0:0] avm_memdep_47_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_47_draw_box_waitrequest,
    input wire [0:0] avm_memdep_47_draw_box_writeack,
    input wire [63:0] avm_memdep_5_draw_box_readdata,
    input wire [0:0] avm_memdep_5_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_5_draw_box_waitrequest,
    input wire [0:0] avm_memdep_5_draw_box_writeack,
    input wire [63:0] avm_memdep_draw_box_readdata,
    input wire [0:0] avm_memdep_draw_box_readdatavalid,
    input wire [0:0] avm_memdep_draw_box_waitrequest,
    input wire [0:0] avm_memdep_draw_box_writeack,
    input wire [383:0] avst_iord_bl_call_draw_box_data,
    input wire [0:0] avst_iord_bl_call_draw_box_valid,
    input wire [0:0] avst_iowr_bl_return_draw_box_almostfull,
    input wire [0:0] avst_iowr_bl_return_draw_box_ready,
    input wire [31:0] b,
    input wire [31:0] g,
    input wire [31:0] r,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] x1,
    input wire [31:0] x2,
    input wire [31:0] y1,
    input wire [31:0] y2,
    output wire [63:0] avm_memdep_10_draw_box_address,
    output wire [0:0] avm_memdep_10_draw_box_burstcount,
    output wire [7:0] avm_memdep_10_draw_box_byteenable,
    output wire [0:0] avm_memdep_10_draw_box_enable,
    output wire [0:0] avm_memdep_10_draw_box_read,
    output wire [0:0] avm_memdep_10_draw_box_write,
    output wire [63:0] avm_memdep_10_draw_box_writedata,
    output wire [63:0] avm_memdep_15_draw_box_address,
    output wire [0:0] avm_memdep_15_draw_box_burstcount,
    output wire [7:0] avm_memdep_15_draw_box_byteenable,
    output wire [0:0] avm_memdep_15_draw_box_enable,
    output wire [0:0] avm_memdep_15_draw_box_read,
    output wire [0:0] avm_memdep_15_draw_box_write,
    output wire [63:0] avm_memdep_15_draw_box_writedata,
    output wire [63:0] avm_memdep_1_draw_box_address,
    output wire [0:0] avm_memdep_1_draw_box_burstcount,
    output wire [7:0] avm_memdep_1_draw_box_byteenable,
    output wire [0:0] avm_memdep_1_draw_box_enable,
    output wire [0:0] avm_memdep_1_draw_box_read,
    output wire [0:0] avm_memdep_1_draw_box_write,
    output wire [63:0] avm_memdep_1_draw_box_writedata,
    output wire [63:0] avm_memdep_20_draw_box_address,
    output wire [0:0] avm_memdep_20_draw_box_burstcount,
    output wire [7:0] avm_memdep_20_draw_box_byteenable,
    output wire [0:0] avm_memdep_20_draw_box_enable,
    output wire [0:0] avm_memdep_20_draw_box_read,
    output wire [0:0] avm_memdep_20_draw_box_write,
    output wire [63:0] avm_memdep_20_draw_box_writedata,
    output wire [63:0] avm_memdep_26_draw_box_address,
    output wire [0:0] avm_memdep_26_draw_box_burstcount,
    output wire [7:0] avm_memdep_26_draw_box_byteenable,
    output wire [0:0] avm_memdep_26_draw_box_enable,
    output wire [0:0] avm_memdep_26_draw_box_read,
    output wire [0:0] avm_memdep_26_draw_box_write,
    output wire [63:0] avm_memdep_26_draw_box_writedata,
    output wire [63:0] avm_memdep_28_draw_box_address,
    output wire [0:0] avm_memdep_28_draw_box_burstcount,
    output wire [7:0] avm_memdep_28_draw_box_byteenable,
    output wire [0:0] avm_memdep_28_draw_box_enable,
    output wire [0:0] avm_memdep_28_draw_box_read,
    output wire [0:0] avm_memdep_28_draw_box_write,
    output wire [63:0] avm_memdep_28_draw_box_writedata,
    output wire [63:0] avm_memdep_32_draw_box_address,
    output wire [0:0] avm_memdep_32_draw_box_burstcount,
    output wire [7:0] avm_memdep_32_draw_box_byteenable,
    output wire [0:0] avm_memdep_32_draw_box_enable,
    output wire [0:0] avm_memdep_32_draw_box_read,
    output wire [0:0] avm_memdep_32_draw_box_write,
    output wire [63:0] avm_memdep_32_draw_box_writedata,
    output wire [63:0] avm_memdep_37_draw_box_address,
    output wire [0:0] avm_memdep_37_draw_box_burstcount,
    output wire [7:0] avm_memdep_37_draw_box_byteenable,
    output wire [0:0] avm_memdep_37_draw_box_enable,
    output wire [0:0] avm_memdep_37_draw_box_read,
    output wire [0:0] avm_memdep_37_draw_box_write,
    output wire [63:0] avm_memdep_37_draw_box_writedata,
    output wire [63:0] avm_memdep_42_draw_box_address,
    output wire [0:0] avm_memdep_42_draw_box_burstcount,
    output wire [7:0] avm_memdep_42_draw_box_byteenable,
    output wire [0:0] avm_memdep_42_draw_box_enable,
    output wire [0:0] avm_memdep_42_draw_box_read,
    output wire [0:0] avm_memdep_42_draw_box_write,
    output wire [63:0] avm_memdep_42_draw_box_writedata,
    output wire [63:0] avm_memdep_47_draw_box_address,
    output wire [0:0] avm_memdep_47_draw_box_burstcount,
    output wire [7:0] avm_memdep_47_draw_box_byteenable,
    output wire [0:0] avm_memdep_47_draw_box_enable,
    output wire [0:0] avm_memdep_47_draw_box_read,
    output wire [0:0] avm_memdep_47_draw_box_write,
    output wire [63:0] avm_memdep_47_draw_box_writedata,
    output wire [63:0] avm_memdep_5_draw_box_address,
    output wire [0:0] avm_memdep_5_draw_box_burstcount,
    output wire [7:0] avm_memdep_5_draw_box_byteenable,
    output wire [0:0] avm_memdep_5_draw_box_enable,
    output wire [0:0] avm_memdep_5_draw_box_read,
    output wire [0:0] avm_memdep_5_draw_box_write,
    output wire [63:0] avm_memdep_5_draw_box_writedata,
    output wire [63:0] avm_memdep_draw_box_address,
    output wire [0:0] avm_memdep_draw_box_burstcount,
    output wire [7:0] avm_memdep_draw_box_byteenable,
    output wire [0:0] avm_memdep_draw_box_enable,
    output wire [0:0] avm_memdep_draw_box_read,
    output wire [0:0] avm_memdep_draw_box_write,
    output wire [63:0] avm_memdep_draw_box_writedata,
    output wire [0:0] avst_iord_bl_call_draw_box_ready,
    output wire [0:0] avst_iowr_bl_return_draw_box_data,
    output wire [0:0] avst_iowr_bl_return_draw_box_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] draw_box_function_out_iord_bl_call_draw_box_o_fifoready;
    wire [0:0] draw_box_function_out_iowr_bl_return_draw_box_o_fifodata;
    wire [0:0] draw_box_function_out_iowr_bl_return_draw_box_o_fifovalid;
    wire [63:0] draw_box_function_out_memdep_10_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_10_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_10_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_10_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_10_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_10_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_10_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_15_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_15_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_15_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_15_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_15_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_15_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_15_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_1_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_1_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_1_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_1_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_1_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_1_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_1_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_20_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_20_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_20_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_20_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_20_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_20_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_20_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_26_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_26_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_26_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_26_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_26_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_26_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_26_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_28_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_28_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_28_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_28_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_28_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_28_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_28_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_32_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_32_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_32_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_32_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_32_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_32_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_32_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_37_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_37_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_37_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_37_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_37_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_37_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_37_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_42_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_42_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_42_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_42_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_42_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_42_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_42_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_47_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_47_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_47_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_47_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_47_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_47_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_47_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_5_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_5_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_5_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_5_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_5_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_5_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_5_draw_box_avm_writedata;
    wire [63:0] draw_box_function_out_memdep_draw_box_avm_address;
    wire [0:0] draw_box_function_out_memdep_draw_box_avm_burstcount;
    wire [7:0] draw_box_function_out_memdep_draw_box_avm_byteenable;
    wire [0:0] draw_box_function_out_memdep_draw_box_avm_enable;
    wire [0:0] draw_box_function_out_memdep_draw_box_avm_read;
    wire [0:0] draw_box_function_out_memdep_draw_box_avm_write;
    wire [63:0] draw_box_function_out_memdep_draw_box_avm_writedata;
    wire [383:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,75)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,9)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {implicit_input_pad_const_end_q, b, g, r, y2, x2, y1, x1, a};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // draw_box_function(BLACKBOX,7)
    draw_box_function thedraw_box_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_draw_box_i_fifodata(implicit_input_q),
        .in_iord_bl_call_draw_box_i_fifovalid(start),
        .in_iowr_bl_return_draw_box_i_fifoready(not_stall_q),
        .in_memdep_10_draw_box_avm_readdata(avm_memdep_10_draw_box_readdata),
        .in_memdep_10_draw_box_avm_readdatavalid(avm_memdep_10_draw_box_readdatavalid),
        .in_memdep_10_draw_box_avm_waitrequest(avm_memdep_10_draw_box_waitrequest),
        .in_memdep_10_draw_box_avm_writeack(avm_memdep_10_draw_box_writeack),
        .in_memdep_15_draw_box_avm_readdata(avm_memdep_15_draw_box_readdata),
        .in_memdep_15_draw_box_avm_readdatavalid(avm_memdep_15_draw_box_readdatavalid),
        .in_memdep_15_draw_box_avm_waitrequest(avm_memdep_15_draw_box_waitrequest),
        .in_memdep_15_draw_box_avm_writeack(avm_memdep_15_draw_box_writeack),
        .in_memdep_1_draw_box_avm_readdata(avm_memdep_1_draw_box_readdata),
        .in_memdep_1_draw_box_avm_readdatavalid(avm_memdep_1_draw_box_readdatavalid),
        .in_memdep_1_draw_box_avm_waitrequest(avm_memdep_1_draw_box_waitrequest),
        .in_memdep_1_draw_box_avm_writeack(avm_memdep_1_draw_box_writeack),
        .in_memdep_20_draw_box_avm_readdata(avm_memdep_20_draw_box_readdata),
        .in_memdep_20_draw_box_avm_readdatavalid(avm_memdep_20_draw_box_readdatavalid),
        .in_memdep_20_draw_box_avm_waitrequest(avm_memdep_20_draw_box_waitrequest),
        .in_memdep_20_draw_box_avm_writeack(avm_memdep_20_draw_box_writeack),
        .in_memdep_26_draw_box_avm_readdata(avm_memdep_26_draw_box_readdata),
        .in_memdep_26_draw_box_avm_readdatavalid(avm_memdep_26_draw_box_readdatavalid),
        .in_memdep_26_draw_box_avm_waitrequest(avm_memdep_26_draw_box_waitrequest),
        .in_memdep_26_draw_box_avm_writeack(avm_memdep_26_draw_box_writeack),
        .in_memdep_28_draw_box_avm_readdata(avm_memdep_28_draw_box_readdata),
        .in_memdep_28_draw_box_avm_readdatavalid(avm_memdep_28_draw_box_readdatavalid),
        .in_memdep_28_draw_box_avm_waitrequest(avm_memdep_28_draw_box_waitrequest),
        .in_memdep_28_draw_box_avm_writeack(avm_memdep_28_draw_box_writeack),
        .in_memdep_32_draw_box_avm_readdata(avm_memdep_32_draw_box_readdata),
        .in_memdep_32_draw_box_avm_readdatavalid(avm_memdep_32_draw_box_readdatavalid),
        .in_memdep_32_draw_box_avm_waitrequest(avm_memdep_32_draw_box_waitrequest),
        .in_memdep_32_draw_box_avm_writeack(avm_memdep_32_draw_box_writeack),
        .in_memdep_37_draw_box_avm_readdata(avm_memdep_37_draw_box_readdata),
        .in_memdep_37_draw_box_avm_readdatavalid(avm_memdep_37_draw_box_readdatavalid),
        .in_memdep_37_draw_box_avm_waitrequest(avm_memdep_37_draw_box_waitrequest),
        .in_memdep_37_draw_box_avm_writeack(avm_memdep_37_draw_box_writeack),
        .in_memdep_42_draw_box_avm_readdata(avm_memdep_42_draw_box_readdata),
        .in_memdep_42_draw_box_avm_readdatavalid(avm_memdep_42_draw_box_readdatavalid),
        .in_memdep_42_draw_box_avm_waitrequest(avm_memdep_42_draw_box_waitrequest),
        .in_memdep_42_draw_box_avm_writeack(avm_memdep_42_draw_box_writeack),
        .in_memdep_47_draw_box_avm_readdata(avm_memdep_47_draw_box_readdata),
        .in_memdep_47_draw_box_avm_readdatavalid(avm_memdep_47_draw_box_readdatavalid),
        .in_memdep_47_draw_box_avm_waitrequest(avm_memdep_47_draw_box_waitrequest),
        .in_memdep_47_draw_box_avm_writeack(avm_memdep_47_draw_box_writeack),
        .in_memdep_5_draw_box_avm_readdata(avm_memdep_5_draw_box_readdata),
        .in_memdep_5_draw_box_avm_readdatavalid(avm_memdep_5_draw_box_readdatavalid),
        .in_memdep_5_draw_box_avm_waitrequest(avm_memdep_5_draw_box_waitrequest),
        .in_memdep_5_draw_box_avm_writeack(avm_memdep_5_draw_box_writeack),
        .in_memdep_draw_box_avm_readdata(avm_memdep_draw_box_readdata),
        .in_memdep_draw_box_avm_readdatavalid(avm_memdep_draw_box_readdatavalid),
        .in_memdep_draw_box_avm_waitrequest(avm_memdep_draw_box_waitrequest),
        .in_memdep_draw_box_avm_writeack(avm_memdep_draw_box_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_draw_box_o_fifoready(draw_box_function_out_iord_bl_call_draw_box_o_fifoready),
        .out_iowr_bl_return_draw_box_o_fifodata(draw_box_function_out_iowr_bl_return_draw_box_o_fifodata),
        .out_iowr_bl_return_draw_box_o_fifovalid(draw_box_function_out_iowr_bl_return_draw_box_o_fifovalid),
        .out_memdep_10_draw_box_avm_address(draw_box_function_out_memdep_10_draw_box_avm_address),
        .out_memdep_10_draw_box_avm_burstcount(draw_box_function_out_memdep_10_draw_box_avm_burstcount),
        .out_memdep_10_draw_box_avm_byteenable(draw_box_function_out_memdep_10_draw_box_avm_byteenable),
        .out_memdep_10_draw_box_avm_enable(draw_box_function_out_memdep_10_draw_box_avm_enable),
        .out_memdep_10_draw_box_avm_read(draw_box_function_out_memdep_10_draw_box_avm_read),
        .out_memdep_10_draw_box_avm_write(draw_box_function_out_memdep_10_draw_box_avm_write),
        .out_memdep_10_draw_box_avm_writedata(draw_box_function_out_memdep_10_draw_box_avm_writedata),
        .out_memdep_15_draw_box_avm_address(draw_box_function_out_memdep_15_draw_box_avm_address),
        .out_memdep_15_draw_box_avm_burstcount(draw_box_function_out_memdep_15_draw_box_avm_burstcount),
        .out_memdep_15_draw_box_avm_byteenable(draw_box_function_out_memdep_15_draw_box_avm_byteenable),
        .out_memdep_15_draw_box_avm_enable(draw_box_function_out_memdep_15_draw_box_avm_enable),
        .out_memdep_15_draw_box_avm_read(draw_box_function_out_memdep_15_draw_box_avm_read),
        .out_memdep_15_draw_box_avm_write(draw_box_function_out_memdep_15_draw_box_avm_write),
        .out_memdep_15_draw_box_avm_writedata(draw_box_function_out_memdep_15_draw_box_avm_writedata),
        .out_memdep_1_draw_box_avm_address(draw_box_function_out_memdep_1_draw_box_avm_address),
        .out_memdep_1_draw_box_avm_burstcount(draw_box_function_out_memdep_1_draw_box_avm_burstcount),
        .out_memdep_1_draw_box_avm_byteenable(draw_box_function_out_memdep_1_draw_box_avm_byteenable),
        .out_memdep_1_draw_box_avm_enable(draw_box_function_out_memdep_1_draw_box_avm_enable),
        .out_memdep_1_draw_box_avm_read(draw_box_function_out_memdep_1_draw_box_avm_read),
        .out_memdep_1_draw_box_avm_write(draw_box_function_out_memdep_1_draw_box_avm_write),
        .out_memdep_1_draw_box_avm_writedata(draw_box_function_out_memdep_1_draw_box_avm_writedata),
        .out_memdep_20_draw_box_avm_address(draw_box_function_out_memdep_20_draw_box_avm_address),
        .out_memdep_20_draw_box_avm_burstcount(draw_box_function_out_memdep_20_draw_box_avm_burstcount),
        .out_memdep_20_draw_box_avm_byteenable(draw_box_function_out_memdep_20_draw_box_avm_byteenable),
        .out_memdep_20_draw_box_avm_enable(draw_box_function_out_memdep_20_draw_box_avm_enable),
        .out_memdep_20_draw_box_avm_read(draw_box_function_out_memdep_20_draw_box_avm_read),
        .out_memdep_20_draw_box_avm_write(draw_box_function_out_memdep_20_draw_box_avm_write),
        .out_memdep_20_draw_box_avm_writedata(draw_box_function_out_memdep_20_draw_box_avm_writedata),
        .out_memdep_26_draw_box_avm_address(draw_box_function_out_memdep_26_draw_box_avm_address),
        .out_memdep_26_draw_box_avm_burstcount(draw_box_function_out_memdep_26_draw_box_avm_burstcount),
        .out_memdep_26_draw_box_avm_byteenable(draw_box_function_out_memdep_26_draw_box_avm_byteenable),
        .out_memdep_26_draw_box_avm_enable(draw_box_function_out_memdep_26_draw_box_avm_enable),
        .out_memdep_26_draw_box_avm_read(draw_box_function_out_memdep_26_draw_box_avm_read),
        .out_memdep_26_draw_box_avm_write(draw_box_function_out_memdep_26_draw_box_avm_write),
        .out_memdep_26_draw_box_avm_writedata(draw_box_function_out_memdep_26_draw_box_avm_writedata),
        .out_memdep_28_draw_box_avm_address(draw_box_function_out_memdep_28_draw_box_avm_address),
        .out_memdep_28_draw_box_avm_burstcount(draw_box_function_out_memdep_28_draw_box_avm_burstcount),
        .out_memdep_28_draw_box_avm_byteenable(draw_box_function_out_memdep_28_draw_box_avm_byteenable),
        .out_memdep_28_draw_box_avm_enable(draw_box_function_out_memdep_28_draw_box_avm_enable),
        .out_memdep_28_draw_box_avm_read(draw_box_function_out_memdep_28_draw_box_avm_read),
        .out_memdep_28_draw_box_avm_write(draw_box_function_out_memdep_28_draw_box_avm_write),
        .out_memdep_28_draw_box_avm_writedata(draw_box_function_out_memdep_28_draw_box_avm_writedata),
        .out_memdep_32_draw_box_avm_address(draw_box_function_out_memdep_32_draw_box_avm_address),
        .out_memdep_32_draw_box_avm_burstcount(draw_box_function_out_memdep_32_draw_box_avm_burstcount),
        .out_memdep_32_draw_box_avm_byteenable(draw_box_function_out_memdep_32_draw_box_avm_byteenable),
        .out_memdep_32_draw_box_avm_enable(draw_box_function_out_memdep_32_draw_box_avm_enable),
        .out_memdep_32_draw_box_avm_read(draw_box_function_out_memdep_32_draw_box_avm_read),
        .out_memdep_32_draw_box_avm_write(draw_box_function_out_memdep_32_draw_box_avm_write),
        .out_memdep_32_draw_box_avm_writedata(draw_box_function_out_memdep_32_draw_box_avm_writedata),
        .out_memdep_37_draw_box_avm_address(draw_box_function_out_memdep_37_draw_box_avm_address),
        .out_memdep_37_draw_box_avm_burstcount(draw_box_function_out_memdep_37_draw_box_avm_burstcount),
        .out_memdep_37_draw_box_avm_byteenable(draw_box_function_out_memdep_37_draw_box_avm_byteenable),
        .out_memdep_37_draw_box_avm_enable(draw_box_function_out_memdep_37_draw_box_avm_enable),
        .out_memdep_37_draw_box_avm_read(draw_box_function_out_memdep_37_draw_box_avm_read),
        .out_memdep_37_draw_box_avm_write(draw_box_function_out_memdep_37_draw_box_avm_write),
        .out_memdep_37_draw_box_avm_writedata(draw_box_function_out_memdep_37_draw_box_avm_writedata),
        .out_memdep_42_draw_box_avm_address(draw_box_function_out_memdep_42_draw_box_avm_address),
        .out_memdep_42_draw_box_avm_burstcount(draw_box_function_out_memdep_42_draw_box_avm_burstcount),
        .out_memdep_42_draw_box_avm_byteenable(draw_box_function_out_memdep_42_draw_box_avm_byteenable),
        .out_memdep_42_draw_box_avm_enable(draw_box_function_out_memdep_42_draw_box_avm_enable),
        .out_memdep_42_draw_box_avm_read(draw_box_function_out_memdep_42_draw_box_avm_read),
        .out_memdep_42_draw_box_avm_write(draw_box_function_out_memdep_42_draw_box_avm_write),
        .out_memdep_42_draw_box_avm_writedata(draw_box_function_out_memdep_42_draw_box_avm_writedata),
        .out_memdep_47_draw_box_avm_address(draw_box_function_out_memdep_47_draw_box_avm_address),
        .out_memdep_47_draw_box_avm_burstcount(draw_box_function_out_memdep_47_draw_box_avm_burstcount),
        .out_memdep_47_draw_box_avm_byteenable(draw_box_function_out_memdep_47_draw_box_avm_byteenable),
        .out_memdep_47_draw_box_avm_enable(draw_box_function_out_memdep_47_draw_box_avm_enable),
        .out_memdep_47_draw_box_avm_read(draw_box_function_out_memdep_47_draw_box_avm_read),
        .out_memdep_47_draw_box_avm_write(draw_box_function_out_memdep_47_draw_box_avm_write),
        .out_memdep_47_draw_box_avm_writedata(draw_box_function_out_memdep_47_draw_box_avm_writedata),
        .out_memdep_5_draw_box_avm_address(draw_box_function_out_memdep_5_draw_box_avm_address),
        .out_memdep_5_draw_box_avm_burstcount(draw_box_function_out_memdep_5_draw_box_avm_burstcount),
        .out_memdep_5_draw_box_avm_byteenable(draw_box_function_out_memdep_5_draw_box_avm_byteenable),
        .out_memdep_5_draw_box_avm_enable(draw_box_function_out_memdep_5_draw_box_avm_enable),
        .out_memdep_5_draw_box_avm_read(draw_box_function_out_memdep_5_draw_box_avm_read),
        .out_memdep_5_draw_box_avm_write(draw_box_function_out_memdep_5_draw_box_avm_write),
        .out_memdep_5_draw_box_avm_writedata(draw_box_function_out_memdep_5_draw_box_avm_writedata),
        .out_memdep_draw_box_avm_address(draw_box_function_out_memdep_draw_box_avm_address),
        .out_memdep_draw_box_avm_burstcount(draw_box_function_out_memdep_draw_box_avm_burstcount),
        .out_memdep_draw_box_avm_byteenable(draw_box_function_out_memdep_draw_box_avm_byteenable),
        .out_memdep_draw_box_avm_enable(draw_box_function_out_memdep_draw_box_avm_enable),
        .out_memdep_draw_box_avm_read(draw_box_function_out_memdep_draw_box_avm_read),
        .out_memdep_draw_box_avm_write(draw_box_function_out_memdep_draw_box_avm_write),
        .out_memdep_draw_box_avm_writedata(draw_box_function_out_memdep_draw_box_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_1(),
        .out_o_active_memdep_10(),
        .out_o_active_memdep_15(),
        .out_o_active_memdep_20(),
        .out_o_active_memdep_26(),
        .out_o_active_memdep_28(),
        .out_o_active_memdep_32(),
        .out_o_active_memdep_37(),
        .out_o_active_memdep_42(),
        .out_o_active_memdep_47(),
        .out_o_active_memdep_5(),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_10_draw_box_address(GPOUT,76)
    assign avm_memdep_10_draw_box_address = draw_box_function_out_memdep_10_draw_box_avm_address;

    // avm_memdep_10_draw_box_burstcount(GPOUT,77)
    assign avm_memdep_10_draw_box_burstcount = draw_box_function_out_memdep_10_draw_box_avm_burstcount;

    // avm_memdep_10_draw_box_byteenable(GPOUT,78)
    assign avm_memdep_10_draw_box_byteenable = draw_box_function_out_memdep_10_draw_box_avm_byteenable;

    // avm_memdep_10_draw_box_enable(GPOUT,79)
    assign avm_memdep_10_draw_box_enable = draw_box_function_out_memdep_10_draw_box_avm_enable;

    // avm_memdep_10_draw_box_read(GPOUT,80)
    assign avm_memdep_10_draw_box_read = draw_box_function_out_memdep_10_draw_box_avm_read;

    // avm_memdep_10_draw_box_write(GPOUT,81)
    assign avm_memdep_10_draw_box_write = draw_box_function_out_memdep_10_draw_box_avm_write;

    // avm_memdep_10_draw_box_writedata(GPOUT,82)
    assign avm_memdep_10_draw_box_writedata = draw_box_function_out_memdep_10_draw_box_avm_writedata;

    // avm_memdep_15_draw_box_address(GPOUT,83)
    assign avm_memdep_15_draw_box_address = draw_box_function_out_memdep_15_draw_box_avm_address;

    // avm_memdep_15_draw_box_burstcount(GPOUT,84)
    assign avm_memdep_15_draw_box_burstcount = draw_box_function_out_memdep_15_draw_box_avm_burstcount;

    // avm_memdep_15_draw_box_byteenable(GPOUT,85)
    assign avm_memdep_15_draw_box_byteenable = draw_box_function_out_memdep_15_draw_box_avm_byteenable;

    // avm_memdep_15_draw_box_enable(GPOUT,86)
    assign avm_memdep_15_draw_box_enable = draw_box_function_out_memdep_15_draw_box_avm_enable;

    // avm_memdep_15_draw_box_read(GPOUT,87)
    assign avm_memdep_15_draw_box_read = draw_box_function_out_memdep_15_draw_box_avm_read;

    // avm_memdep_15_draw_box_write(GPOUT,88)
    assign avm_memdep_15_draw_box_write = draw_box_function_out_memdep_15_draw_box_avm_write;

    // avm_memdep_15_draw_box_writedata(GPOUT,89)
    assign avm_memdep_15_draw_box_writedata = draw_box_function_out_memdep_15_draw_box_avm_writedata;

    // avm_memdep_1_draw_box_address(GPOUT,90)
    assign avm_memdep_1_draw_box_address = draw_box_function_out_memdep_1_draw_box_avm_address;

    // avm_memdep_1_draw_box_burstcount(GPOUT,91)
    assign avm_memdep_1_draw_box_burstcount = draw_box_function_out_memdep_1_draw_box_avm_burstcount;

    // avm_memdep_1_draw_box_byteenable(GPOUT,92)
    assign avm_memdep_1_draw_box_byteenable = draw_box_function_out_memdep_1_draw_box_avm_byteenable;

    // avm_memdep_1_draw_box_enable(GPOUT,93)
    assign avm_memdep_1_draw_box_enable = draw_box_function_out_memdep_1_draw_box_avm_enable;

    // avm_memdep_1_draw_box_read(GPOUT,94)
    assign avm_memdep_1_draw_box_read = draw_box_function_out_memdep_1_draw_box_avm_read;

    // avm_memdep_1_draw_box_write(GPOUT,95)
    assign avm_memdep_1_draw_box_write = draw_box_function_out_memdep_1_draw_box_avm_write;

    // avm_memdep_1_draw_box_writedata(GPOUT,96)
    assign avm_memdep_1_draw_box_writedata = draw_box_function_out_memdep_1_draw_box_avm_writedata;

    // avm_memdep_20_draw_box_address(GPOUT,97)
    assign avm_memdep_20_draw_box_address = draw_box_function_out_memdep_20_draw_box_avm_address;

    // avm_memdep_20_draw_box_burstcount(GPOUT,98)
    assign avm_memdep_20_draw_box_burstcount = draw_box_function_out_memdep_20_draw_box_avm_burstcount;

    // avm_memdep_20_draw_box_byteenable(GPOUT,99)
    assign avm_memdep_20_draw_box_byteenable = draw_box_function_out_memdep_20_draw_box_avm_byteenable;

    // avm_memdep_20_draw_box_enable(GPOUT,100)
    assign avm_memdep_20_draw_box_enable = draw_box_function_out_memdep_20_draw_box_avm_enable;

    // avm_memdep_20_draw_box_read(GPOUT,101)
    assign avm_memdep_20_draw_box_read = draw_box_function_out_memdep_20_draw_box_avm_read;

    // avm_memdep_20_draw_box_write(GPOUT,102)
    assign avm_memdep_20_draw_box_write = draw_box_function_out_memdep_20_draw_box_avm_write;

    // avm_memdep_20_draw_box_writedata(GPOUT,103)
    assign avm_memdep_20_draw_box_writedata = draw_box_function_out_memdep_20_draw_box_avm_writedata;

    // avm_memdep_26_draw_box_address(GPOUT,104)
    assign avm_memdep_26_draw_box_address = draw_box_function_out_memdep_26_draw_box_avm_address;

    // avm_memdep_26_draw_box_burstcount(GPOUT,105)
    assign avm_memdep_26_draw_box_burstcount = draw_box_function_out_memdep_26_draw_box_avm_burstcount;

    // avm_memdep_26_draw_box_byteenable(GPOUT,106)
    assign avm_memdep_26_draw_box_byteenable = draw_box_function_out_memdep_26_draw_box_avm_byteenable;

    // avm_memdep_26_draw_box_enable(GPOUT,107)
    assign avm_memdep_26_draw_box_enable = draw_box_function_out_memdep_26_draw_box_avm_enable;

    // avm_memdep_26_draw_box_read(GPOUT,108)
    assign avm_memdep_26_draw_box_read = draw_box_function_out_memdep_26_draw_box_avm_read;

    // avm_memdep_26_draw_box_write(GPOUT,109)
    assign avm_memdep_26_draw_box_write = draw_box_function_out_memdep_26_draw_box_avm_write;

    // avm_memdep_26_draw_box_writedata(GPOUT,110)
    assign avm_memdep_26_draw_box_writedata = draw_box_function_out_memdep_26_draw_box_avm_writedata;

    // avm_memdep_28_draw_box_address(GPOUT,111)
    assign avm_memdep_28_draw_box_address = draw_box_function_out_memdep_28_draw_box_avm_address;

    // avm_memdep_28_draw_box_burstcount(GPOUT,112)
    assign avm_memdep_28_draw_box_burstcount = draw_box_function_out_memdep_28_draw_box_avm_burstcount;

    // avm_memdep_28_draw_box_byteenable(GPOUT,113)
    assign avm_memdep_28_draw_box_byteenable = draw_box_function_out_memdep_28_draw_box_avm_byteenable;

    // avm_memdep_28_draw_box_enable(GPOUT,114)
    assign avm_memdep_28_draw_box_enable = draw_box_function_out_memdep_28_draw_box_avm_enable;

    // avm_memdep_28_draw_box_read(GPOUT,115)
    assign avm_memdep_28_draw_box_read = draw_box_function_out_memdep_28_draw_box_avm_read;

    // avm_memdep_28_draw_box_write(GPOUT,116)
    assign avm_memdep_28_draw_box_write = draw_box_function_out_memdep_28_draw_box_avm_write;

    // avm_memdep_28_draw_box_writedata(GPOUT,117)
    assign avm_memdep_28_draw_box_writedata = draw_box_function_out_memdep_28_draw_box_avm_writedata;

    // avm_memdep_32_draw_box_address(GPOUT,118)
    assign avm_memdep_32_draw_box_address = draw_box_function_out_memdep_32_draw_box_avm_address;

    // avm_memdep_32_draw_box_burstcount(GPOUT,119)
    assign avm_memdep_32_draw_box_burstcount = draw_box_function_out_memdep_32_draw_box_avm_burstcount;

    // avm_memdep_32_draw_box_byteenable(GPOUT,120)
    assign avm_memdep_32_draw_box_byteenable = draw_box_function_out_memdep_32_draw_box_avm_byteenable;

    // avm_memdep_32_draw_box_enable(GPOUT,121)
    assign avm_memdep_32_draw_box_enable = draw_box_function_out_memdep_32_draw_box_avm_enable;

    // avm_memdep_32_draw_box_read(GPOUT,122)
    assign avm_memdep_32_draw_box_read = draw_box_function_out_memdep_32_draw_box_avm_read;

    // avm_memdep_32_draw_box_write(GPOUT,123)
    assign avm_memdep_32_draw_box_write = draw_box_function_out_memdep_32_draw_box_avm_write;

    // avm_memdep_32_draw_box_writedata(GPOUT,124)
    assign avm_memdep_32_draw_box_writedata = draw_box_function_out_memdep_32_draw_box_avm_writedata;

    // avm_memdep_37_draw_box_address(GPOUT,125)
    assign avm_memdep_37_draw_box_address = draw_box_function_out_memdep_37_draw_box_avm_address;

    // avm_memdep_37_draw_box_burstcount(GPOUT,126)
    assign avm_memdep_37_draw_box_burstcount = draw_box_function_out_memdep_37_draw_box_avm_burstcount;

    // avm_memdep_37_draw_box_byteenable(GPOUT,127)
    assign avm_memdep_37_draw_box_byteenable = draw_box_function_out_memdep_37_draw_box_avm_byteenable;

    // avm_memdep_37_draw_box_enable(GPOUT,128)
    assign avm_memdep_37_draw_box_enable = draw_box_function_out_memdep_37_draw_box_avm_enable;

    // avm_memdep_37_draw_box_read(GPOUT,129)
    assign avm_memdep_37_draw_box_read = draw_box_function_out_memdep_37_draw_box_avm_read;

    // avm_memdep_37_draw_box_write(GPOUT,130)
    assign avm_memdep_37_draw_box_write = draw_box_function_out_memdep_37_draw_box_avm_write;

    // avm_memdep_37_draw_box_writedata(GPOUT,131)
    assign avm_memdep_37_draw_box_writedata = draw_box_function_out_memdep_37_draw_box_avm_writedata;

    // avm_memdep_42_draw_box_address(GPOUT,132)
    assign avm_memdep_42_draw_box_address = draw_box_function_out_memdep_42_draw_box_avm_address;

    // avm_memdep_42_draw_box_burstcount(GPOUT,133)
    assign avm_memdep_42_draw_box_burstcount = draw_box_function_out_memdep_42_draw_box_avm_burstcount;

    // avm_memdep_42_draw_box_byteenable(GPOUT,134)
    assign avm_memdep_42_draw_box_byteenable = draw_box_function_out_memdep_42_draw_box_avm_byteenable;

    // avm_memdep_42_draw_box_enable(GPOUT,135)
    assign avm_memdep_42_draw_box_enable = draw_box_function_out_memdep_42_draw_box_avm_enable;

    // avm_memdep_42_draw_box_read(GPOUT,136)
    assign avm_memdep_42_draw_box_read = draw_box_function_out_memdep_42_draw_box_avm_read;

    // avm_memdep_42_draw_box_write(GPOUT,137)
    assign avm_memdep_42_draw_box_write = draw_box_function_out_memdep_42_draw_box_avm_write;

    // avm_memdep_42_draw_box_writedata(GPOUT,138)
    assign avm_memdep_42_draw_box_writedata = draw_box_function_out_memdep_42_draw_box_avm_writedata;

    // avm_memdep_47_draw_box_address(GPOUT,139)
    assign avm_memdep_47_draw_box_address = draw_box_function_out_memdep_47_draw_box_avm_address;

    // avm_memdep_47_draw_box_burstcount(GPOUT,140)
    assign avm_memdep_47_draw_box_burstcount = draw_box_function_out_memdep_47_draw_box_avm_burstcount;

    // avm_memdep_47_draw_box_byteenable(GPOUT,141)
    assign avm_memdep_47_draw_box_byteenable = draw_box_function_out_memdep_47_draw_box_avm_byteenable;

    // avm_memdep_47_draw_box_enable(GPOUT,142)
    assign avm_memdep_47_draw_box_enable = draw_box_function_out_memdep_47_draw_box_avm_enable;

    // avm_memdep_47_draw_box_read(GPOUT,143)
    assign avm_memdep_47_draw_box_read = draw_box_function_out_memdep_47_draw_box_avm_read;

    // avm_memdep_47_draw_box_write(GPOUT,144)
    assign avm_memdep_47_draw_box_write = draw_box_function_out_memdep_47_draw_box_avm_write;

    // avm_memdep_47_draw_box_writedata(GPOUT,145)
    assign avm_memdep_47_draw_box_writedata = draw_box_function_out_memdep_47_draw_box_avm_writedata;

    // avm_memdep_5_draw_box_address(GPOUT,146)
    assign avm_memdep_5_draw_box_address = draw_box_function_out_memdep_5_draw_box_avm_address;

    // avm_memdep_5_draw_box_burstcount(GPOUT,147)
    assign avm_memdep_5_draw_box_burstcount = draw_box_function_out_memdep_5_draw_box_avm_burstcount;

    // avm_memdep_5_draw_box_byteenable(GPOUT,148)
    assign avm_memdep_5_draw_box_byteenable = draw_box_function_out_memdep_5_draw_box_avm_byteenable;

    // avm_memdep_5_draw_box_enable(GPOUT,149)
    assign avm_memdep_5_draw_box_enable = draw_box_function_out_memdep_5_draw_box_avm_enable;

    // avm_memdep_5_draw_box_read(GPOUT,150)
    assign avm_memdep_5_draw_box_read = draw_box_function_out_memdep_5_draw_box_avm_read;

    // avm_memdep_5_draw_box_write(GPOUT,151)
    assign avm_memdep_5_draw_box_write = draw_box_function_out_memdep_5_draw_box_avm_write;

    // avm_memdep_5_draw_box_writedata(GPOUT,152)
    assign avm_memdep_5_draw_box_writedata = draw_box_function_out_memdep_5_draw_box_avm_writedata;

    // avm_memdep_draw_box_address(GPOUT,153)
    assign avm_memdep_draw_box_address = draw_box_function_out_memdep_draw_box_avm_address;

    // avm_memdep_draw_box_burstcount(GPOUT,154)
    assign avm_memdep_draw_box_burstcount = draw_box_function_out_memdep_draw_box_avm_burstcount;

    // avm_memdep_draw_box_byteenable(GPOUT,155)
    assign avm_memdep_draw_box_byteenable = draw_box_function_out_memdep_draw_box_avm_byteenable;

    // avm_memdep_draw_box_enable(GPOUT,156)
    assign avm_memdep_draw_box_enable = draw_box_function_out_memdep_draw_box_avm_enable;

    // avm_memdep_draw_box_read(GPOUT,157)
    assign avm_memdep_draw_box_read = draw_box_function_out_memdep_draw_box_avm_read;

    // avm_memdep_draw_box_write(GPOUT,158)
    assign avm_memdep_draw_box_write = draw_box_function_out_memdep_draw_box_avm_write;

    // avm_memdep_draw_box_writedata(GPOUT,159)
    assign avm_memdep_draw_box_writedata = draw_box_function_out_memdep_draw_box_avm_writedata;

    // avst_iord_bl_call_draw_box_ready(GPOUT,160)
    assign avst_iord_bl_call_draw_box_ready = draw_box_function_out_iord_bl_call_draw_box_o_fifoready;

    // avst_iowr_bl_return_draw_box_data(GPOUT,161)
    assign avst_iowr_bl_return_draw_box_data = draw_box_function_out_iowr_bl_return_draw_box_o_fifodata;

    // avst_iowr_bl_return_draw_box_valid(GPOUT,162)
    assign avst_iowr_bl_return_draw_box_valid = draw_box_function_out_iowr_bl_return_draw_box_o_fifovalid;

    // not_ready(LOGICAL,74)
    assign not_ready_q = ~ (draw_box_function_out_iord_bl_call_draw_box_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,166)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,165)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,163)
    assign busy = busy_or_q;

    // done(GPOUT,164)
    assign done = draw_box_function_out_iowr_bl_return_draw_box_o_fifovalid;

endmodule
