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

// SystemVerilog created from foo_function_wrapper
// SystemVerilog created on Sun Aug 16 19:04:00 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_function_wrapper (
    input wire [63:0] a,
    input wire [63:0] avm_unnamed_foo3_foo_readdata,
    input wire [0:0] avm_unnamed_foo3_foo_readdatavalid,
    input wire [0:0] avm_unnamed_foo3_foo_waitrequest,
    input wire [0:0] avm_unnamed_foo3_foo_writeack,
    input wire [63:0] avst_iord_bl_call_foo_data,
    input wire [0:0] avst_iord_bl_call_foo_valid,
    input wire [0:0] avst_iowr_bl_return_foo_almostfull,
    input wire [0:0] avst_iowr_bl_return_foo_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_unnamed_foo3_foo_address,
    output wire [0:0] avm_unnamed_foo3_foo_burstcount,
    output wire [7:0] avm_unnamed_foo3_foo_byteenable,
    output wire [0:0] avm_unnamed_foo3_foo_enable,
    output wire [0:0] avm_unnamed_foo3_foo_read,
    output wire [0:0] avm_unnamed_foo3_foo_write,
    output wire [63:0] avm_unnamed_foo3_foo_writedata,
    output wire [0:0] avst_iord_bl_call_foo_ready,
    output wire [7:0] avst_iowr_bl_return_foo_data,
    output wire [0:0] avst_iowr_bl_return_foo_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [7:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] a_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] foo_function_out_iord_bl_call_foo_o_fifoready;
    wire [7:0] foo_function_out_iowr_bl_return_foo_o_fifodata;
    wire [0:0] foo_function_out_iowr_bl_return_foo_o_fifovalid;
    wire [63:0] foo_function_out_unnamed_foo3_foo_avm_address;
    wire [0:0] foo_function_out_unnamed_foo3_foo_avm_burstcount;
    wire [7:0] foo_function_out_unnamed_foo3_foo_avm_byteenable;
    wire [0:0] foo_function_out_unnamed_foo3_foo_avm_enable;
    wire [0:0] foo_function_out_unnamed_foo3_foo_avm_read;
    wire [0:0] foo_function_out_unnamed_foo3_foo_avm_write;
    wire [63:0] foo_function_out_unnamed_foo3_foo_avm_writedata;
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

    // not_stall(LOGICAL,24)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = a;

    // a_const(CONSTANT,2)
    assign a_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // foo_function(BLACKBOX,8)
    foo_function thefoo_function (
        .in_arg_a(a_const_q),
        .in_arg_call(a_const_q),
        .in_arg_return(a_const_q),
        .in_iord_bl_call_foo_i_fifodata(implicit_input_q),
        .in_iord_bl_call_foo_i_fifovalid(start),
        .in_iowr_bl_return_foo_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_foo3_foo_avm_readdata(avm_unnamed_foo3_foo_readdata),
        .in_unnamed_foo3_foo_avm_readdatavalid(avm_unnamed_foo3_foo_readdatavalid),
        .in_unnamed_foo3_foo_avm_waitrequest(avm_unnamed_foo3_foo_waitrequest),
        .in_unnamed_foo3_foo_avm_writeack(avm_unnamed_foo3_foo_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_foo_o_fifoready(foo_function_out_iord_bl_call_foo_o_fifoready),
        .out_iowr_bl_return_foo_o_fifodata(foo_function_out_iowr_bl_return_foo_o_fifodata),
        .out_iowr_bl_return_foo_o_fifovalid(foo_function_out_iowr_bl_return_foo_o_fifovalid),
        .out_stall_out(),
        .out_unnamed_foo3_foo_avm_address(foo_function_out_unnamed_foo3_foo_avm_address),
        .out_unnamed_foo3_foo_avm_burstcount(foo_function_out_unnamed_foo3_foo_avm_burstcount),
        .out_unnamed_foo3_foo_avm_byteenable(foo_function_out_unnamed_foo3_foo_avm_byteenable),
        .out_unnamed_foo3_foo_avm_enable(foo_function_out_unnamed_foo3_foo_avm_enable),
        .out_unnamed_foo3_foo_avm_read(foo_function_out_unnamed_foo3_foo_avm_read),
        .out_unnamed_foo3_foo_avm_write(foo_function_out_unnamed_foo3_foo_avm_write),
        .out_unnamed_foo3_foo_avm_writedata(foo_function_out_unnamed_foo3_foo_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_unnamed_foo3_foo_address(GPOUT,25)
    assign avm_unnamed_foo3_foo_address = foo_function_out_unnamed_foo3_foo_avm_address;

    // avm_unnamed_foo3_foo_burstcount(GPOUT,26)
    assign avm_unnamed_foo3_foo_burstcount = foo_function_out_unnamed_foo3_foo_avm_burstcount;

    // avm_unnamed_foo3_foo_byteenable(GPOUT,27)
    assign avm_unnamed_foo3_foo_byteenable = foo_function_out_unnamed_foo3_foo_avm_byteenable;

    // avm_unnamed_foo3_foo_enable(GPOUT,28)
    assign avm_unnamed_foo3_foo_enable = foo_function_out_unnamed_foo3_foo_avm_enable;

    // avm_unnamed_foo3_foo_read(GPOUT,29)
    assign avm_unnamed_foo3_foo_read = foo_function_out_unnamed_foo3_foo_avm_read;

    // avm_unnamed_foo3_foo_write(GPOUT,30)
    assign avm_unnamed_foo3_foo_write = foo_function_out_unnamed_foo3_foo_avm_write;

    // avm_unnamed_foo3_foo_writedata(GPOUT,31)
    assign avm_unnamed_foo3_foo_writedata = foo_function_out_unnamed_foo3_foo_avm_writedata;

    // avst_iord_bl_call_foo_ready(GPOUT,32)
    assign avst_iord_bl_call_foo_ready = foo_function_out_iord_bl_call_foo_o_fifoready;

    // avst_iowr_bl_return_foo_data(GPOUT,33)
    assign avst_iowr_bl_return_foo_data = foo_function_out_iowr_bl_return_foo_o_fifodata;

    // avst_iowr_bl_return_foo_valid(GPOUT,34)
    assign avst_iowr_bl_return_foo_valid = foo_function_out_iowr_bl_return_foo_o_fifovalid;

    // not_ready(LOGICAL,23)
    assign not_ready_q = ~ (foo_function_out_iord_bl_call_foo_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,39)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,38)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,35)
    assign busy = busy_or_q;

    // done(GPOUT,36)
    assign done = foo_function_out_iowr_bl_return_foo_o_fifovalid;

    // returndata(GPOUT,37)
    assign returndata = foo_function_out_iowr_bl_return_foo_o_fifodata;

endmodule
