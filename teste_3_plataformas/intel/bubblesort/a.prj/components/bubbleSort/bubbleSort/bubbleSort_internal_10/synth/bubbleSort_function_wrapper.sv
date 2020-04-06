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

// SystemVerilog created from bubbleSort_function_wrapper
// SystemVerilog created on Mon Apr  6 11:16:20 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_function_wrapper (
    input wire [63:0] avm_lm1_bubbleSort_readdata,
    input wire [0:0] avm_lm1_bubbleSort_readdatavalid,
    input wire [0:0] avm_lm1_bubbleSort_waitrequest,
    input wire [0:0] avm_lm1_bubbleSort_writeack,
    input wire [63:0] avm_lm92_bubbleSort_readdata,
    input wire [0:0] avm_lm92_bubbleSort_readdatavalid,
    input wire [0:0] avm_lm92_bubbleSort_waitrequest,
    input wire [0:0] avm_lm92_bubbleSort_writeack,
    input wire [63:0] avm_memdep_5_bubbleSort_readdata,
    input wire [0:0] avm_memdep_5_bubbleSort_readdatavalid,
    input wire [0:0] avm_memdep_5_bubbleSort_waitrequest,
    input wire [0:0] avm_memdep_5_bubbleSort_writeack,
    input wire [63:0] avm_memdep_bubbleSort_readdata,
    input wire [0:0] avm_memdep_bubbleSort_readdatavalid,
    input wire [0:0] avm_memdep_bubbleSort_waitrequest,
    input wire [0:0] avm_memdep_bubbleSort_writeack,
    input wire [127:0] avst_iord_bl_call_bubbleSort_data,
    input wire [0:0] avst_iord_bl_call_bubbleSort_valid,
    input wire [0:0] avst_iowr_bl_return_bubbleSort_almostfull,
    input wire [0:0] avst_iowr_bl_return_bubbleSort_ready,
    input wire [31:0] n,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [63:0] v,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1_bubbleSort_address,
    output wire [0:0] avm_lm1_bubbleSort_burstcount,
    output wire [7:0] avm_lm1_bubbleSort_byteenable,
    output wire [0:0] avm_lm1_bubbleSort_enable,
    output wire [0:0] avm_lm1_bubbleSort_read,
    output wire [0:0] avm_lm1_bubbleSort_write,
    output wire [63:0] avm_lm1_bubbleSort_writedata,
    output wire [63:0] avm_lm92_bubbleSort_address,
    output wire [0:0] avm_lm92_bubbleSort_burstcount,
    output wire [7:0] avm_lm92_bubbleSort_byteenable,
    output wire [0:0] avm_lm92_bubbleSort_enable,
    output wire [0:0] avm_lm92_bubbleSort_read,
    output wire [0:0] avm_lm92_bubbleSort_write,
    output wire [63:0] avm_lm92_bubbleSort_writedata,
    output wire [63:0] avm_memdep_5_bubbleSort_address,
    output wire [0:0] avm_memdep_5_bubbleSort_burstcount,
    output wire [7:0] avm_memdep_5_bubbleSort_byteenable,
    output wire [0:0] avm_memdep_5_bubbleSort_enable,
    output wire [0:0] avm_memdep_5_bubbleSort_read,
    output wire [0:0] avm_memdep_5_bubbleSort_write,
    output wire [63:0] avm_memdep_5_bubbleSort_writedata,
    output wire [63:0] avm_memdep_bubbleSort_address,
    output wire [0:0] avm_memdep_bubbleSort_burstcount,
    output wire [7:0] avm_memdep_bubbleSort_byteenable,
    output wire [0:0] avm_memdep_bubbleSort_enable,
    output wire [0:0] avm_memdep_bubbleSort_read,
    output wire [0:0] avm_memdep_bubbleSort_write,
    output wire [63:0] avm_memdep_bubbleSort_writedata,
    output wire [0:0] avst_iord_bl_call_bubbleSort_ready,
    output wire [0:0] avst_iowr_bl_return_bubbleSort_data,
    output wire [0:0] avst_iowr_bl_return_bubbleSort_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bubbleSort_function_out_iord_bl_call_bubbleSort_o_fifoready;
    wire [0:0] bubbleSort_function_out_iowr_bl_return_bubbleSort_o_fifodata;
    wire [0:0] bubbleSort_function_out_iowr_bl_return_bubbleSort_o_fifovalid;
    wire [63:0] bubbleSort_function_out_lm1_bubbleSort_avm_address;
    wire [0:0] bubbleSort_function_out_lm1_bubbleSort_avm_burstcount;
    wire [7:0] bubbleSort_function_out_lm1_bubbleSort_avm_byteenable;
    wire [0:0] bubbleSort_function_out_lm1_bubbleSort_avm_enable;
    wire [0:0] bubbleSort_function_out_lm1_bubbleSort_avm_read;
    wire [0:0] bubbleSort_function_out_lm1_bubbleSort_avm_write;
    wire [63:0] bubbleSort_function_out_lm1_bubbleSort_avm_writedata;
    wire [63:0] bubbleSort_function_out_lm92_bubbleSort_avm_address;
    wire [0:0] bubbleSort_function_out_lm92_bubbleSort_avm_burstcount;
    wire [7:0] bubbleSort_function_out_lm92_bubbleSort_avm_byteenable;
    wire [0:0] bubbleSort_function_out_lm92_bubbleSort_avm_enable;
    wire [0:0] bubbleSort_function_out_lm92_bubbleSort_avm_read;
    wire [0:0] bubbleSort_function_out_lm92_bubbleSort_avm_write;
    wire [63:0] bubbleSort_function_out_lm92_bubbleSort_avm_writedata;
    wire [63:0] bubbleSort_function_out_memdep_5_bubbleSort_avm_address;
    wire [0:0] bubbleSort_function_out_memdep_5_bubbleSort_avm_burstcount;
    wire [7:0] bubbleSort_function_out_memdep_5_bubbleSort_avm_byteenable;
    wire [0:0] bubbleSort_function_out_memdep_5_bubbleSort_avm_enable;
    wire [0:0] bubbleSort_function_out_memdep_5_bubbleSort_avm_read;
    wire [0:0] bubbleSort_function_out_memdep_5_bubbleSort_avm_write;
    wire [63:0] bubbleSort_function_out_memdep_5_bubbleSort_avm_writedata;
    wire [63:0] bubbleSort_function_out_memdep_bubbleSort_avm_address;
    wire [0:0] bubbleSort_function_out_memdep_bubbleSort_avm_burstcount;
    wire [7:0] bubbleSort_function_out_memdep_bubbleSort_avm_byteenable;
    wire [0:0] bubbleSort_function_out_memdep_bubbleSort_avm_enable;
    wire [0:0] bubbleSort_function_out_memdep_bubbleSort_avm_read;
    wire [0:0] bubbleSort_function_out_memdep_bubbleSort_avm_write;
    wire [63:0] bubbleSort_function_out_memdep_bubbleSort_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
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

    // not_stall(LOGICAL,37)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,9)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, v};

    // call_const(CONSTANT,5)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bubbleSort_function(BLACKBOX,2)
    bubbleSort_function thebubbleSort_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_v(call_const_q),
        .in_iord_bl_call_bubbleSort_i_fifodata(implicit_input_q),
        .in_iord_bl_call_bubbleSort_i_fifovalid(start),
        .in_iowr_bl_return_bubbleSort_i_fifoready(not_stall_q),
        .in_lm1_bubbleSort_avm_readdata(avm_lm1_bubbleSort_readdata),
        .in_lm1_bubbleSort_avm_readdatavalid(avm_lm1_bubbleSort_readdatavalid),
        .in_lm1_bubbleSort_avm_waitrequest(avm_lm1_bubbleSort_waitrequest),
        .in_lm1_bubbleSort_avm_writeack(avm_lm1_bubbleSort_writeack),
        .in_lm92_bubbleSort_avm_readdata(avm_lm92_bubbleSort_readdata),
        .in_lm92_bubbleSort_avm_readdatavalid(avm_lm92_bubbleSort_readdatavalid),
        .in_lm92_bubbleSort_avm_waitrequest(avm_lm92_bubbleSort_waitrequest),
        .in_lm92_bubbleSort_avm_writeack(avm_lm92_bubbleSort_writeack),
        .in_memdep_5_bubbleSort_avm_readdata(avm_memdep_5_bubbleSort_readdata),
        .in_memdep_5_bubbleSort_avm_readdatavalid(avm_memdep_5_bubbleSort_readdatavalid),
        .in_memdep_5_bubbleSort_avm_waitrequest(avm_memdep_5_bubbleSort_waitrequest),
        .in_memdep_5_bubbleSort_avm_writeack(avm_memdep_5_bubbleSort_writeack),
        .in_memdep_bubbleSort_avm_readdata(avm_memdep_bubbleSort_readdata),
        .in_memdep_bubbleSort_avm_readdatavalid(avm_memdep_bubbleSort_readdatavalid),
        .in_memdep_bubbleSort_avm_waitrequest(avm_memdep_bubbleSort_waitrequest),
        .in_memdep_bubbleSort_avm_writeack(avm_memdep_bubbleSort_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_bubbleSort_o_fifoready(bubbleSort_function_out_iord_bl_call_bubbleSort_o_fifoready),
        .out_iowr_bl_return_bubbleSort_o_fifodata(bubbleSort_function_out_iowr_bl_return_bubbleSort_o_fifodata),
        .out_iowr_bl_return_bubbleSort_o_fifovalid(bubbleSort_function_out_iowr_bl_return_bubbleSort_o_fifovalid),
        .out_lm1_bubbleSort_avm_address(bubbleSort_function_out_lm1_bubbleSort_avm_address),
        .out_lm1_bubbleSort_avm_burstcount(bubbleSort_function_out_lm1_bubbleSort_avm_burstcount),
        .out_lm1_bubbleSort_avm_byteenable(bubbleSort_function_out_lm1_bubbleSort_avm_byteenable),
        .out_lm1_bubbleSort_avm_enable(bubbleSort_function_out_lm1_bubbleSort_avm_enable),
        .out_lm1_bubbleSort_avm_read(bubbleSort_function_out_lm1_bubbleSort_avm_read),
        .out_lm1_bubbleSort_avm_write(bubbleSort_function_out_lm1_bubbleSort_avm_write),
        .out_lm1_bubbleSort_avm_writedata(bubbleSort_function_out_lm1_bubbleSort_avm_writedata),
        .out_lm92_bubbleSort_avm_address(bubbleSort_function_out_lm92_bubbleSort_avm_address),
        .out_lm92_bubbleSort_avm_burstcount(bubbleSort_function_out_lm92_bubbleSort_avm_burstcount),
        .out_lm92_bubbleSort_avm_byteenable(bubbleSort_function_out_lm92_bubbleSort_avm_byteenable),
        .out_lm92_bubbleSort_avm_enable(bubbleSort_function_out_lm92_bubbleSort_avm_enable),
        .out_lm92_bubbleSort_avm_read(bubbleSort_function_out_lm92_bubbleSort_avm_read),
        .out_lm92_bubbleSort_avm_write(bubbleSort_function_out_lm92_bubbleSort_avm_write),
        .out_lm92_bubbleSort_avm_writedata(bubbleSort_function_out_lm92_bubbleSort_avm_writedata),
        .out_memdep_5_bubbleSort_avm_address(bubbleSort_function_out_memdep_5_bubbleSort_avm_address),
        .out_memdep_5_bubbleSort_avm_burstcount(bubbleSort_function_out_memdep_5_bubbleSort_avm_burstcount),
        .out_memdep_5_bubbleSort_avm_byteenable(bubbleSort_function_out_memdep_5_bubbleSort_avm_byteenable),
        .out_memdep_5_bubbleSort_avm_enable(bubbleSort_function_out_memdep_5_bubbleSort_avm_enable),
        .out_memdep_5_bubbleSort_avm_read(bubbleSort_function_out_memdep_5_bubbleSort_avm_read),
        .out_memdep_5_bubbleSort_avm_write(bubbleSort_function_out_memdep_5_bubbleSort_avm_write),
        .out_memdep_5_bubbleSort_avm_writedata(bubbleSort_function_out_memdep_5_bubbleSort_avm_writedata),
        .out_memdep_bubbleSort_avm_address(bubbleSort_function_out_memdep_bubbleSort_avm_address),
        .out_memdep_bubbleSort_avm_burstcount(bubbleSort_function_out_memdep_bubbleSort_avm_burstcount),
        .out_memdep_bubbleSort_avm_byteenable(bubbleSort_function_out_memdep_bubbleSort_avm_byteenable),
        .out_memdep_bubbleSort_avm_enable(bubbleSort_function_out_memdep_bubbleSort_avm_enable),
        .out_memdep_bubbleSort_avm_read(bubbleSort_function_out_memdep_bubbleSort_avm_read),
        .out_memdep_bubbleSort_avm_write(bubbleSort_function_out_memdep_bubbleSort_avm_write),
        .out_memdep_bubbleSort_avm_writedata(bubbleSort_function_out_memdep_bubbleSort_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_5(),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_bubbleSort_address(GPOUT,38)
    assign avm_lm1_bubbleSort_address = bubbleSort_function_out_lm1_bubbleSort_avm_address;

    // avm_lm1_bubbleSort_burstcount(GPOUT,39)
    assign avm_lm1_bubbleSort_burstcount = bubbleSort_function_out_lm1_bubbleSort_avm_burstcount;

    // avm_lm1_bubbleSort_byteenable(GPOUT,40)
    assign avm_lm1_bubbleSort_byteenable = bubbleSort_function_out_lm1_bubbleSort_avm_byteenable;

    // avm_lm1_bubbleSort_enable(GPOUT,41)
    assign avm_lm1_bubbleSort_enable = bubbleSort_function_out_lm1_bubbleSort_avm_enable;

    // avm_lm1_bubbleSort_read(GPOUT,42)
    assign avm_lm1_bubbleSort_read = bubbleSort_function_out_lm1_bubbleSort_avm_read;

    // avm_lm1_bubbleSort_write(GPOUT,43)
    assign avm_lm1_bubbleSort_write = bubbleSort_function_out_lm1_bubbleSort_avm_write;

    // avm_lm1_bubbleSort_writedata(GPOUT,44)
    assign avm_lm1_bubbleSort_writedata = bubbleSort_function_out_lm1_bubbleSort_avm_writedata;

    // avm_lm92_bubbleSort_address(GPOUT,45)
    assign avm_lm92_bubbleSort_address = bubbleSort_function_out_lm92_bubbleSort_avm_address;

    // avm_lm92_bubbleSort_burstcount(GPOUT,46)
    assign avm_lm92_bubbleSort_burstcount = bubbleSort_function_out_lm92_bubbleSort_avm_burstcount;

    // avm_lm92_bubbleSort_byteenable(GPOUT,47)
    assign avm_lm92_bubbleSort_byteenable = bubbleSort_function_out_lm92_bubbleSort_avm_byteenable;

    // avm_lm92_bubbleSort_enable(GPOUT,48)
    assign avm_lm92_bubbleSort_enable = bubbleSort_function_out_lm92_bubbleSort_avm_enable;

    // avm_lm92_bubbleSort_read(GPOUT,49)
    assign avm_lm92_bubbleSort_read = bubbleSort_function_out_lm92_bubbleSort_avm_read;

    // avm_lm92_bubbleSort_write(GPOUT,50)
    assign avm_lm92_bubbleSort_write = bubbleSort_function_out_lm92_bubbleSort_avm_write;

    // avm_lm92_bubbleSort_writedata(GPOUT,51)
    assign avm_lm92_bubbleSort_writedata = bubbleSort_function_out_lm92_bubbleSort_avm_writedata;

    // avm_memdep_5_bubbleSort_address(GPOUT,52)
    assign avm_memdep_5_bubbleSort_address = bubbleSort_function_out_memdep_5_bubbleSort_avm_address;

    // avm_memdep_5_bubbleSort_burstcount(GPOUT,53)
    assign avm_memdep_5_bubbleSort_burstcount = bubbleSort_function_out_memdep_5_bubbleSort_avm_burstcount;

    // avm_memdep_5_bubbleSort_byteenable(GPOUT,54)
    assign avm_memdep_5_bubbleSort_byteenable = bubbleSort_function_out_memdep_5_bubbleSort_avm_byteenable;

    // avm_memdep_5_bubbleSort_enable(GPOUT,55)
    assign avm_memdep_5_bubbleSort_enable = bubbleSort_function_out_memdep_5_bubbleSort_avm_enable;

    // avm_memdep_5_bubbleSort_read(GPOUT,56)
    assign avm_memdep_5_bubbleSort_read = bubbleSort_function_out_memdep_5_bubbleSort_avm_read;

    // avm_memdep_5_bubbleSort_write(GPOUT,57)
    assign avm_memdep_5_bubbleSort_write = bubbleSort_function_out_memdep_5_bubbleSort_avm_write;

    // avm_memdep_5_bubbleSort_writedata(GPOUT,58)
    assign avm_memdep_5_bubbleSort_writedata = bubbleSort_function_out_memdep_5_bubbleSort_avm_writedata;

    // avm_memdep_bubbleSort_address(GPOUT,59)
    assign avm_memdep_bubbleSort_address = bubbleSort_function_out_memdep_bubbleSort_avm_address;

    // avm_memdep_bubbleSort_burstcount(GPOUT,60)
    assign avm_memdep_bubbleSort_burstcount = bubbleSort_function_out_memdep_bubbleSort_avm_burstcount;

    // avm_memdep_bubbleSort_byteenable(GPOUT,61)
    assign avm_memdep_bubbleSort_byteenable = bubbleSort_function_out_memdep_bubbleSort_avm_byteenable;

    // avm_memdep_bubbleSort_enable(GPOUT,62)
    assign avm_memdep_bubbleSort_enable = bubbleSort_function_out_memdep_bubbleSort_avm_enable;

    // avm_memdep_bubbleSort_read(GPOUT,63)
    assign avm_memdep_bubbleSort_read = bubbleSort_function_out_memdep_bubbleSort_avm_read;

    // avm_memdep_bubbleSort_write(GPOUT,64)
    assign avm_memdep_bubbleSort_write = bubbleSort_function_out_memdep_bubbleSort_avm_write;

    // avm_memdep_bubbleSort_writedata(GPOUT,65)
    assign avm_memdep_bubbleSort_writedata = bubbleSort_function_out_memdep_bubbleSort_avm_writedata;

    // avst_iord_bl_call_bubbleSort_ready(GPOUT,66)
    assign avst_iord_bl_call_bubbleSort_ready = bubbleSort_function_out_iord_bl_call_bubbleSort_o_fifoready;

    // avst_iowr_bl_return_bubbleSort_data(GPOUT,67)
    assign avst_iowr_bl_return_bubbleSort_data = bubbleSort_function_out_iowr_bl_return_bubbleSort_o_fifodata;

    // avst_iowr_bl_return_bubbleSort_valid(GPOUT,68)
    assign avst_iowr_bl_return_bubbleSort_valid = bubbleSort_function_out_iowr_bl_return_bubbleSort_o_fifovalid;

    // not_ready(LOGICAL,36)
    assign not_ready_q = ~ (bubbleSort_function_out_iord_bl_call_bubbleSort_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,72)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,71)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,69)
    assign busy = busy_or_q;

    // done(GPOUT,70)
    assign done = bubbleSort_function_out_iowr_bl_return_bubbleSort_o_fifovalid;

endmodule
