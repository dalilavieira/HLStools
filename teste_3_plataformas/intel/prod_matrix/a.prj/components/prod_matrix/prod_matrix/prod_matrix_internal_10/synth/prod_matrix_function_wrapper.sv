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

// SystemVerilog created from prod_matrix_function_wrapper
// SystemVerilog created on Mon Apr  6 11:18:08 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_function_wrapper (
    input wire [63:0] avm_lm1_prod_matrix_readdata,
    input wire [0:0] avm_lm1_prod_matrix_readdatavalid,
    input wire [0:0] avm_lm1_prod_matrix_waitrequest,
    input wire [0:0] avm_lm1_prod_matrix_writeack,
    input wire [63:0] avm_lm82_prod_matrix_readdata,
    input wire [0:0] avm_lm82_prod_matrix_readdatavalid,
    input wire [0:0] avm_lm82_prod_matrix_waitrequest,
    input wire [0:0] avm_lm82_prod_matrix_writeack,
    input wire [63:0] avm_memdep_prod_matrix_readdata,
    input wire [0:0] avm_memdep_prod_matrix_readdatavalid,
    input wire [0:0] avm_memdep_prod_matrix_waitrequest,
    input wire [0:0] avm_memdep_prod_matrix_writeack,
    input wire [191:0] avst_iord_bl_call_prod_matrix_data,
    input wire [0:0] avst_iord_bl_call_prod_matrix_valid,
    input wire [0:0] avst_iowr_bl_return_prod_matrix_almostfull,
    input wire [0:0] avst_iowr_bl_return_prod_matrix_ready,
    input wire [31:0] col,
    input wire [63:0] r,
    input wire [31:0] row,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [63:0] v,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1_prod_matrix_address,
    output wire [0:0] avm_lm1_prod_matrix_burstcount,
    output wire [7:0] avm_lm1_prod_matrix_byteenable,
    output wire [0:0] avm_lm1_prod_matrix_enable,
    output wire [0:0] avm_lm1_prod_matrix_read,
    output wire [0:0] avm_lm1_prod_matrix_write,
    output wire [63:0] avm_lm1_prod_matrix_writedata,
    output wire [63:0] avm_lm82_prod_matrix_address,
    output wire [0:0] avm_lm82_prod_matrix_burstcount,
    output wire [7:0] avm_lm82_prod_matrix_byteenable,
    output wire [0:0] avm_lm82_prod_matrix_enable,
    output wire [0:0] avm_lm82_prod_matrix_read,
    output wire [0:0] avm_lm82_prod_matrix_write,
    output wire [63:0] avm_lm82_prod_matrix_writedata,
    output wire [63:0] avm_memdep_prod_matrix_address,
    output wire [0:0] avm_memdep_prod_matrix_burstcount,
    output wire [7:0] avm_memdep_prod_matrix_byteenable,
    output wire [0:0] avm_memdep_prod_matrix_enable,
    output wire [0:0] avm_memdep_prod_matrix_read,
    output wire [0:0] avm_memdep_prod_matrix_write,
    output wire [63:0] avm_memdep_prod_matrix_writedata,
    output wire [0:0] avst_iord_bl_call_prod_matrix_ready,
    output wire [0:0] avst_iowr_bl_return_prod_matrix_data,
    output wire [0:0] avst_iowr_bl_return_prod_matrix_valid,
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
    wire [191:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] prod_matrix_function_out_iord_bl_call_prod_matrix_o_fifoready;
    wire [0:0] prod_matrix_function_out_iowr_bl_return_prod_matrix_o_fifodata;
    wire [0:0] prod_matrix_function_out_iowr_bl_return_prod_matrix_o_fifovalid;
    wire [63:0] prod_matrix_function_out_lm1_prod_matrix_avm_address;
    wire [0:0] prod_matrix_function_out_lm1_prod_matrix_avm_burstcount;
    wire [7:0] prod_matrix_function_out_lm1_prod_matrix_avm_byteenable;
    wire [0:0] prod_matrix_function_out_lm1_prod_matrix_avm_enable;
    wire [0:0] prod_matrix_function_out_lm1_prod_matrix_avm_read;
    wire [0:0] prod_matrix_function_out_lm1_prod_matrix_avm_write;
    wire [63:0] prod_matrix_function_out_lm1_prod_matrix_avm_writedata;
    wire [63:0] prod_matrix_function_out_lm82_prod_matrix_avm_address;
    wire [0:0] prod_matrix_function_out_lm82_prod_matrix_avm_burstcount;
    wire [7:0] prod_matrix_function_out_lm82_prod_matrix_avm_byteenable;
    wire [0:0] prod_matrix_function_out_lm82_prod_matrix_avm_enable;
    wire [0:0] prod_matrix_function_out_lm82_prod_matrix_avm_read;
    wire [0:0] prod_matrix_function_out_lm82_prod_matrix_avm_write;
    wire [63:0] prod_matrix_function_out_lm82_prod_matrix_avm_writedata;
    wire [63:0] prod_matrix_function_out_memdep_prod_matrix_avm_address;
    wire [0:0] prod_matrix_function_out_memdep_prod_matrix_avm_burstcount;
    wire [7:0] prod_matrix_function_out_memdep_prod_matrix_avm_byteenable;
    wire [0:0] prod_matrix_function_out_memdep_prod_matrix_avm_enable;
    wire [0:0] prod_matrix_function_out_memdep_prod_matrix_avm_read;
    wire [0:0] prod_matrix_function_out_memdep_prod_matrix_avm_write;
    wire [63:0] prod_matrix_function_out_memdep_prod_matrix_avm_writedata;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,33)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = {col, row, r, v};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // prod_matrix_function(BLACKBOX,61)
    prod_matrix_function theprod_matrix_function (
        .in_arg_call(call_const_q),
        .in_arg_r(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_v(call_const_q),
        .in_iord_bl_call_prod_matrix_i_fifodata(implicit_input_q),
        .in_iord_bl_call_prod_matrix_i_fifovalid(start),
        .in_iowr_bl_return_prod_matrix_i_fifoready(not_stall_q),
        .in_lm1_prod_matrix_avm_readdata(avm_lm1_prod_matrix_readdata),
        .in_lm1_prod_matrix_avm_readdatavalid(avm_lm1_prod_matrix_readdatavalid),
        .in_lm1_prod_matrix_avm_waitrequest(avm_lm1_prod_matrix_waitrequest),
        .in_lm1_prod_matrix_avm_writeack(avm_lm1_prod_matrix_writeack),
        .in_lm82_prod_matrix_avm_readdata(avm_lm82_prod_matrix_readdata),
        .in_lm82_prod_matrix_avm_readdatavalid(avm_lm82_prod_matrix_readdatavalid),
        .in_lm82_prod_matrix_avm_waitrequest(avm_lm82_prod_matrix_waitrequest),
        .in_lm82_prod_matrix_avm_writeack(avm_lm82_prod_matrix_writeack),
        .in_memdep_prod_matrix_avm_readdata(avm_memdep_prod_matrix_readdata),
        .in_memdep_prod_matrix_avm_readdatavalid(avm_memdep_prod_matrix_readdatavalid),
        .in_memdep_prod_matrix_avm_waitrequest(avm_memdep_prod_matrix_waitrequest),
        .in_memdep_prod_matrix_avm_writeack(avm_memdep_prod_matrix_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_prod_matrix_o_fifoready(prod_matrix_function_out_iord_bl_call_prod_matrix_o_fifoready),
        .out_iowr_bl_return_prod_matrix_o_fifodata(prod_matrix_function_out_iowr_bl_return_prod_matrix_o_fifodata),
        .out_iowr_bl_return_prod_matrix_o_fifovalid(prod_matrix_function_out_iowr_bl_return_prod_matrix_o_fifovalid),
        .out_lm1_prod_matrix_avm_address(prod_matrix_function_out_lm1_prod_matrix_avm_address),
        .out_lm1_prod_matrix_avm_burstcount(prod_matrix_function_out_lm1_prod_matrix_avm_burstcount),
        .out_lm1_prod_matrix_avm_byteenable(prod_matrix_function_out_lm1_prod_matrix_avm_byteenable),
        .out_lm1_prod_matrix_avm_enable(prod_matrix_function_out_lm1_prod_matrix_avm_enable),
        .out_lm1_prod_matrix_avm_read(prod_matrix_function_out_lm1_prod_matrix_avm_read),
        .out_lm1_prod_matrix_avm_write(prod_matrix_function_out_lm1_prod_matrix_avm_write),
        .out_lm1_prod_matrix_avm_writedata(prod_matrix_function_out_lm1_prod_matrix_avm_writedata),
        .out_lm82_prod_matrix_avm_address(prod_matrix_function_out_lm82_prod_matrix_avm_address),
        .out_lm82_prod_matrix_avm_burstcount(prod_matrix_function_out_lm82_prod_matrix_avm_burstcount),
        .out_lm82_prod_matrix_avm_byteenable(prod_matrix_function_out_lm82_prod_matrix_avm_byteenable),
        .out_lm82_prod_matrix_avm_enable(prod_matrix_function_out_lm82_prod_matrix_avm_enable),
        .out_lm82_prod_matrix_avm_read(prod_matrix_function_out_lm82_prod_matrix_avm_read),
        .out_lm82_prod_matrix_avm_write(prod_matrix_function_out_lm82_prod_matrix_avm_write),
        .out_lm82_prod_matrix_avm_writedata(prod_matrix_function_out_lm82_prod_matrix_avm_writedata),
        .out_memdep_prod_matrix_avm_address(prod_matrix_function_out_memdep_prod_matrix_avm_address),
        .out_memdep_prod_matrix_avm_burstcount(prod_matrix_function_out_memdep_prod_matrix_avm_burstcount),
        .out_memdep_prod_matrix_avm_byteenable(prod_matrix_function_out_memdep_prod_matrix_avm_byteenable),
        .out_memdep_prod_matrix_avm_enable(prod_matrix_function_out_memdep_prod_matrix_avm_enable),
        .out_memdep_prod_matrix_avm_read(prod_matrix_function_out_memdep_prod_matrix_avm_read),
        .out_memdep_prod_matrix_avm_write(prod_matrix_function_out_memdep_prod_matrix_avm_write),
        .out_memdep_prod_matrix_avm_writedata(prod_matrix_function_out_memdep_prod_matrix_avm_writedata),
        .out_o_active_memdep(),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_prod_matrix_address(GPOUT,34)
    assign avm_lm1_prod_matrix_address = prod_matrix_function_out_lm1_prod_matrix_avm_address;

    // avm_lm1_prod_matrix_burstcount(GPOUT,35)
    assign avm_lm1_prod_matrix_burstcount = prod_matrix_function_out_lm1_prod_matrix_avm_burstcount;

    // avm_lm1_prod_matrix_byteenable(GPOUT,36)
    assign avm_lm1_prod_matrix_byteenable = prod_matrix_function_out_lm1_prod_matrix_avm_byteenable;

    // avm_lm1_prod_matrix_enable(GPOUT,37)
    assign avm_lm1_prod_matrix_enable = prod_matrix_function_out_lm1_prod_matrix_avm_enable;

    // avm_lm1_prod_matrix_read(GPOUT,38)
    assign avm_lm1_prod_matrix_read = prod_matrix_function_out_lm1_prod_matrix_avm_read;

    // avm_lm1_prod_matrix_write(GPOUT,39)
    assign avm_lm1_prod_matrix_write = prod_matrix_function_out_lm1_prod_matrix_avm_write;

    // avm_lm1_prod_matrix_writedata(GPOUT,40)
    assign avm_lm1_prod_matrix_writedata = prod_matrix_function_out_lm1_prod_matrix_avm_writedata;

    // avm_lm82_prod_matrix_address(GPOUT,41)
    assign avm_lm82_prod_matrix_address = prod_matrix_function_out_lm82_prod_matrix_avm_address;

    // avm_lm82_prod_matrix_burstcount(GPOUT,42)
    assign avm_lm82_prod_matrix_burstcount = prod_matrix_function_out_lm82_prod_matrix_avm_burstcount;

    // avm_lm82_prod_matrix_byteenable(GPOUT,43)
    assign avm_lm82_prod_matrix_byteenable = prod_matrix_function_out_lm82_prod_matrix_avm_byteenable;

    // avm_lm82_prod_matrix_enable(GPOUT,44)
    assign avm_lm82_prod_matrix_enable = prod_matrix_function_out_lm82_prod_matrix_avm_enable;

    // avm_lm82_prod_matrix_read(GPOUT,45)
    assign avm_lm82_prod_matrix_read = prod_matrix_function_out_lm82_prod_matrix_avm_read;

    // avm_lm82_prod_matrix_write(GPOUT,46)
    assign avm_lm82_prod_matrix_write = prod_matrix_function_out_lm82_prod_matrix_avm_write;

    // avm_lm82_prod_matrix_writedata(GPOUT,47)
    assign avm_lm82_prod_matrix_writedata = prod_matrix_function_out_lm82_prod_matrix_avm_writedata;

    // avm_memdep_prod_matrix_address(GPOUT,48)
    assign avm_memdep_prod_matrix_address = prod_matrix_function_out_memdep_prod_matrix_avm_address;

    // avm_memdep_prod_matrix_burstcount(GPOUT,49)
    assign avm_memdep_prod_matrix_burstcount = prod_matrix_function_out_memdep_prod_matrix_avm_burstcount;

    // avm_memdep_prod_matrix_byteenable(GPOUT,50)
    assign avm_memdep_prod_matrix_byteenable = prod_matrix_function_out_memdep_prod_matrix_avm_byteenable;

    // avm_memdep_prod_matrix_enable(GPOUT,51)
    assign avm_memdep_prod_matrix_enable = prod_matrix_function_out_memdep_prod_matrix_avm_enable;

    // avm_memdep_prod_matrix_read(GPOUT,52)
    assign avm_memdep_prod_matrix_read = prod_matrix_function_out_memdep_prod_matrix_avm_read;

    // avm_memdep_prod_matrix_write(GPOUT,53)
    assign avm_memdep_prod_matrix_write = prod_matrix_function_out_memdep_prod_matrix_avm_write;

    // avm_memdep_prod_matrix_writedata(GPOUT,54)
    assign avm_memdep_prod_matrix_writedata = prod_matrix_function_out_memdep_prod_matrix_avm_writedata;

    // avst_iord_bl_call_prod_matrix_ready(GPOUT,55)
    assign avst_iord_bl_call_prod_matrix_ready = prod_matrix_function_out_iord_bl_call_prod_matrix_o_fifoready;

    // avst_iowr_bl_return_prod_matrix_data(GPOUT,56)
    assign avst_iowr_bl_return_prod_matrix_data = prod_matrix_function_out_iowr_bl_return_prod_matrix_o_fifodata;

    // avst_iowr_bl_return_prod_matrix_valid(GPOUT,57)
    assign avst_iowr_bl_return_prod_matrix_valid = prod_matrix_function_out_iowr_bl_return_prod_matrix_o_fifovalid;

    // not_ready(LOGICAL,32)
    assign not_ready_q = ~ (prod_matrix_function_out_iord_bl_call_prod_matrix_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,63)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,60)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,58)
    assign busy = busy_or_q;

    // done(GPOUT,59)
    assign done = prod_matrix_function_out_iowr_bl_return_prod_matrix_o_fifovalid;

endmodule
