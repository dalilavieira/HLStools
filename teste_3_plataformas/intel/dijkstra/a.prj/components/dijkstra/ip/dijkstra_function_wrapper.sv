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

// SystemVerilog created from dijkstra_function_wrapper
// SystemVerilog created on Mon Apr  6 11:16:52 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_function_wrapper (
    input wire [63:0] avm_lm1_dijkstra_readdata,
    input wire [0:0] avm_lm1_dijkstra_readdatavalid,
    input wire [0:0] avm_lm1_dijkstra_waitrequest,
    input wire [0:0] avm_lm1_dijkstra_writeack,
    input wire [127:0] avst_iord_bl_call_dijkstra_data,
    input wire [0:0] avst_iord_bl_call_dijkstra_valid,
    input wire [0:0] avst_iowr_bl_return_dijkstra_almostfull,
    input wire [0:0] avst_iowr_bl_return_dijkstra_ready,
    input wire [63:0] graph,
    input wire [31:0] src,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1_dijkstra_address,
    output wire [0:0] avm_lm1_dijkstra_burstcount,
    output wire [7:0] avm_lm1_dijkstra_byteenable,
    output wire [0:0] avm_lm1_dijkstra_enable,
    output wire [0:0] avm_lm1_dijkstra_read,
    output wire [0:0] avm_lm1_dijkstra_write,
    output wire [63:0] avm_lm1_dijkstra_writedata,
    output wire [0:0] avst_iord_bl_call_dijkstra_ready,
    output wire [0:0] avst_iowr_bl_return_dijkstra_data,
    output wire [0:0] avst_iowr_bl_return_dijkstra_valid,
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
    wire [0:0] dijkstra_function_out_iord_bl_call_dijkstra_o_fifoready;
    wire [0:0] dijkstra_function_out_iowr_bl_return_dijkstra_o_fifodata;
    wire [0:0] dijkstra_function_out_iowr_bl_return_dijkstra_o_fifovalid;
    wire [63:0] dijkstra_function_out_lm1_dijkstra_avm_address;
    wire [0:0] dijkstra_function_out_lm1_dijkstra_avm_burstcount;
    wire [7:0] dijkstra_function_out_lm1_dijkstra_avm_byteenable;
    wire [0:0] dijkstra_function_out_lm1_dijkstra_avm_enable;
    wire [0:0] dijkstra_function_out_lm1_dijkstra_avm_read;
    wire [0:0] dijkstra_function_out_lm1_dijkstra_avm_write;
    wire [63:0] dijkstra_function_out_lm1_dijkstra_avm_writedata;
    wire [127:0] implicit_input_q;
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

    // not_stall(LOGICAL,26)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,10)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = {implicit_input_pad_const_end_q, src, graph};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // dijkstra_function(BLACKBOX,7)
    dijkstra_function thedijkstra_function (
        .in_arg_call(call_const_q),
        .in_arg_graph(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_dijkstra_i_fifodata(implicit_input_q),
        .in_iord_bl_call_dijkstra_i_fifovalid(start),
        .in_iowr_bl_return_dijkstra_i_fifoready(not_stall_q),
        .in_lm1_dijkstra_avm_readdata(avm_lm1_dijkstra_readdata),
        .in_lm1_dijkstra_avm_readdatavalid(avm_lm1_dijkstra_readdatavalid),
        .in_lm1_dijkstra_avm_waitrequest(avm_lm1_dijkstra_waitrequest),
        .in_lm1_dijkstra_avm_writeack(avm_lm1_dijkstra_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_dijkstra_o_fifoready(dijkstra_function_out_iord_bl_call_dijkstra_o_fifoready),
        .out_iowr_bl_return_dijkstra_o_fifodata(dijkstra_function_out_iowr_bl_return_dijkstra_o_fifodata),
        .out_iowr_bl_return_dijkstra_o_fifovalid(dijkstra_function_out_iowr_bl_return_dijkstra_o_fifovalid),
        .out_lm1_dijkstra_avm_address(dijkstra_function_out_lm1_dijkstra_avm_address),
        .out_lm1_dijkstra_avm_burstcount(dijkstra_function_out_lm1_dijkstra_avm_burstcount),
        .out_lm1_dijkstra_avm_byteenable(dijkstra_function_out_lm1_dijkstra_avm_byteenable),
        .out_lm1_dijkstra_avm_enable(dijkstra_function_out_lm1_dijkstra_avm_enable),
        .out_lm1_dijkstra_avm_read(dijkstra_function_out_lm1_dijkstra_avm_read),
        .out_lm1_dijkstra_avm_write(dijkstra_function_out_lm1_dijkstra_avm_write),
        .out_lm1_dijkstra_avm_writedata(dijkstra_function_out_lm1_dijkstra_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_dijkstra_address(GPOUT,27)
    assign avm_lm1_dijkstra_address = dijkstra_function_out_lm1_dijkstra_avm_address;

    // avm_lm1_dijkstra_burstcount(GPOUT,28)
    assign avm_lm1_dijkstra_burstcount = dijkstra_function_out_lm1_dijkstra_avm_burstcount;

    // avm_lm1_dijkstra_byteenable(GPOUT,29)
    assign avm_lm1_dijkstra_byteenable = dijkstra_function_out_lm1_dijkstra_avm_byteenable;

    // avm_lm1_dijkstra_enable(GPOUT,30)
    assign avm_lm1_dijkstra_enable = dijkstra_function_out_lm1_dijkstra_avm_enable;

    // avm_lm1_dijkstra_read(GPOUT,31)
    assign avm_lm1_dijkstra_read = dijkstra_function_out_lm1_dijkstra_avm_read;

    // avm_lm1_dijkstra_write(GPOUT,32)
    assign avm_lm1_dijkstra_write = dijkstra_function_out_lm1_dijkstra_avm_write;

    // avm_lm1_dijkstra_writedata(GPOUT,33)
    assign avm_lm1_dijkstra_writedata = dijkstra_function_out_lm1_dijkstra_avm_writedata;

    // avst_iord_bl_call_dijkstra_ready(GPOUT,34)
    assign avst_iord_bl_call_dijkstra_ready = dijkstra_function_out_iord_bl_call_dijkstra_o_fifoready;

    // avst_iowr_bl_return_dijkstra_data(GPOUT,35)
    assign avst_iowr_bl_return_dijkstra_data = dijkstra_function_out_iowr_bl_return_dijkstra_o_fifodata;

    // avst_iowr_bl_return_dijkstra_valid(GPOUT,36)
    assign avst_iowr_bl_return_dijkstra_valid = dijkstra_function_out_iowr_bl_return_dijkstra_o_fifovalid;

    // not_ready(LOGICAL,25)
    assign not_ready_q = ~ (dijkstra_function_out_iord_bl_call_dijkstra_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,40)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,39)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,37)
    assign busy = busy_or_q;

    // done(GPOUT,38)
    assign done = dijkstra_function_out_iowr_bl_return_dijkstra_o_fifovalid;

endmodule
