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

// SystemVerilog created from sum_vector_function_wrapper
// SystemVerilog created on Mon Apr  6 10:16:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sum_vector_function_wrapper (
    input wire [63:0] a,
    input wire [63:0] avm_lm1_sum_vector_readdata,
    input wire [0:0] avm_lm1_sum_vector_readdatavalid,
    input wire [0:0] avm_lm1_sum_vector_waitrequest,
    input wire [0:0] avm_lm1_sum_vector_writeack,
    input wire [63:0] avm_lm32_sum_vector_readdata,
    input wire [0:0] avm_lm32_sum_vector_readdatavalid,
    input wire [0:0] avm_lm32_sum_vector_waitrequest,
    input wire [0:0] avm_lm32_sum_vector_writeack,
    input wire [63:0] avm_memdep_sum_vector_readdata,
    input wire [0:0] avm_memdep_sum_vector_readdatavalid,
    input wire [0:0] avm_memdep_sum_vector_waitrequest,
    input wire [0:0] avm_memdep_sum_vector_writeack,
    input wire [255:0] avst_iord_bl_call_sum_vector_data,
    input wire [0:0] avst_iord_bl_call_sum_vector_valid,
    input wire [0:0] avst_iowr_bl_return_sum_vector_almostfull,
    input wire [0:0] avst_iowr_bl_return_sum_vector_ready,
    input wire [63:0] b,
    input wire [63:0] c,
    input wire [31:0] n,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1_sum_vector_address,
    output wire [0:0] avm_lm1_sum_vector_burstcount,
    output wire [7:0] avm_lm1_sum_vector_byteenable,
    output wire [0:0] avm_lm1_sum_vector_enable,
    output wire [0:0] avm_lm1_sum_vector_read,
    output wire [0:0] avm_lm1_sum_vector_write,
    output wire [63:0] avm_lm1_sum_vector_writedata,
    output wire [63:0] avm_lm32_sum_vector_address,
    output wire [0:0] avm_lm32_sum_vector_burstcount,
    output wire [7:0] avm_lm32_sum_vector_byteenable,
    output wire [0:0] avm_lm32_sum_vector_enable,
    output wire [0:0] avm_lm32_sum_vector_read,
    output wire [0:0] avm_lm32_sum_vector_write,
    output wire [63:0] avm_lm32_sum_vector_writedata,
    output wire [63:0] avm_memdep_sum_vector_address,
    output wire [0:0] avm_memdep_sum_vector_burstcount,
    output wire [7:0] avm_memdep_sum_vector_byteenable,
    output wire [0:0] avm_memdep_sum_vector_enable,
    output wire [0:0] avm_memdep_sum_vector_read,
    output wire [0:0] avm_memdep_sum_vector_write,
    output wire [63:0] avm_memdep_sum_vector_writedata,
    output wire [0:0] avst_iord_bl_call_sum_vector_ready,
    output wire [0:0] avst_iowr_bl_return_sum_vector_data,
    output wire [0:0] avst_iowr_bl_return_sum_vector_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] a_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [255:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] sum_vector_function_out_iord_bl_call_sum_vector_o_fifoready;
    wire [0:0] sum_vector_function_out_iowr_bl_return_sum_vector_o_fifodata;
    wire [0:0] sum_vector_function_out_iowr_bl_return_sum_vector_o_fifovalid;
    wire [63:0] sum_vector_function_out_lm1_sum_vector_avm_address;
    wire [0:0] sum_vector_function_out_lm1_sum_vector_avm_burstcount;
    wire [7:0] sum_vector_function_out_lm1_sum_vector_avm_byteenable;
    wire [0:0] sum_vector_function_out_lm1_sum_vector_avm_enable;
    wire [0:0] sum_vector_function_out_lm1_sum_vector_avm_read;
    wire [0:0] sum_vector_function_out_lm1_sum_vector_avm_write;
    wire [63:0] sum_vector_function_out_lm1_sum_vector_avm_writedata;
    wire [63:0] sum_vector_function_out_lm32_sum_vector_avm_address;
    wire [0:0] sum_vector_function_out_lm32_sum_vector_avm_burstcount;
    wire [7:0] sum_vector_function_out_lm32_sum_vector_avm_byteenable;
    wire [0:0] sum_vector_function_out_lm32_sum_vector_avm_enable;
    wire [0:0] sum_vector_function_out_lm32_sum_vector_avm_read;
    wire [0:0] sum_vector_function_out_lm32_sum_vector_avm_write;
    wire [63:0] sum_vector_function_out_lm32_sum_vector_avm_writedata;
    wire [63:0] sum_vector_function_out_memdep_sum_vector_avm_address;
    wire [0:0] sum_vector_function_out_memdep_sum_vector_avm_burstcount;
    wire [7:0] sum_vector_function_out_memdep_sum_vector_avm_byteenable;
    wire [0:0] sum_vector_function_out_memdep_sum_vector_avm_enable;
    wire [0:0] sum_vector_function_out_memdep_sum_vector_avm_read;
    wire [0:0] sum_vector_function_out_memdep_sum_vector_avm_write;
    wire [63:0] sum_vector_function_out_memdep_sum_vector_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,37)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,11)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, c, b, a};

    // a_const(CONSTANT,2)
    assign a_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // sum_vector_function(BLACKBOX,67)
    sum_vector_function thesum_vector_function (
        .in_arg_a(a_const_q),
        .in_arg_b(a_const_q),
        .in_arg_c(a_const_q),
        .in_arg_call(a_const_q),
        .in_arg_return(a_const_q),
        .in_iord_bl_call_sum_vector_i_fifodata(implicit_input_q),
        .in_iord_bl_call_sum_vector_i_fifovalid(start),
        .in_iowr_bl_return_sum_vector_i_fifoready(not_stall_q),
        .in_lm1_sum_vector_avm_readdata(avm_lm1_sum_vector_readdata),
        .in_lm1_sum_vector_avm_readdatavalid(avm_lm1_sum_vector_readdatavalid),
        .in_lm1_sum_vector_avm_waitrequest(avm_lm1_sum_vector_waitrequest),
        .in_lm1_sum_vector_avm_writeack(avm_lm1_sum_vector_writeack),
        .in_lm32_sum_vector_avm_readdata(avm_lm32_sum_vector_readdata),
        .in_lm32_sum_vector_avm_readdatavalid(avm_lm32_sum_vector_readdatavalid),
        .in_lm32_sum_vector_avm_waitrequest(avm_lm32_sum_vector_waitrequest),
        .in_lm32_sum_vector_avm_writeack(avm_lm32_sum_vector_writeack),
        .in_memdep_sum_vector_avm_readdata(avm_memdep_sum_vector_readdata),
        .in_memdep_sum_vector_avm_readdatavalid(avm_memdep_sum_vector_readdatavalid),
        .in_memdep_sum_vector_avm_waitrequest(avm_memdep_sum_vector_waitrequest),
        .in_memdep_sum_vector_avm_writeack(avm_memdep_sum_vector_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_sum_vector_o_fifoready(sum_vector_function_out_iord_bl_call_sum_vector_o_fifoready),
        .out_iowr_bl_return_sum_vector_o_fifodata(sum_vector_function_out_iowr_bl_return_sum_vector_o_fifodata),
        .out_iowr_bl_return_sum_vector_o_fifovalid(sum_vector_function_out_iowr_bl_return_sum_vector_o_fifovalid),
        .out_lm1_sum_vector_avm_address(sum_vector_function_out_lm1_sum_vector_avm_address),
        .out_lm1_sum_vector_avm_burstcount(sum_vector_function_out_lm1_sum_vector_avm_burstcount),
        .out_lm1_sum_vector_avm_byteenable(sum_vector_function_out_lm1_sum_vector_avm_byteenable),
        .out_lm1_sum_vector_avm_enable(sum_vector_function_out_lm1_sum_vector_avm_enable),
        .out_lm1_sum_vector_avm_read(sum_vector_function_out_lm1_sum_vector_avm_read),
        .out_lm1_sum_vector_avm_write(sum_vector_function_out_lm1_sum_vector_avm_write),
        .out_lm1_sum_vector_avm_writedata(sum_vector_function_out_lm1_sum_vector_avm_writedata),
        .out_lm32_sum_vector_avm_address(sum_vector_function_out_lm32_sum_vector_avm_address),
        .out_lm32_sum_vector_avm_burstcount(sum_vector_function_out_lm32_sum_vector_avm_burstcount),
        .out_lm32_sum_vector_avm_byteenable(sum_vector_function_out_lm32_sum_vector_avm_byteenable),
        .out_lm32_sum_vector_avm_enable(sum_vector_function_out_lm32_sum_vector_avm_enable),
        .out_lm32_sum_vector_avm_read(sum_vector_function_out_lm32_sum_vector_avm_read),
        .out_lm32_sum_vector_avm_write(sum_vector_function_out_lm32_sum_vector_avm_write),
        .out_lm32_sum_vector_avm_writedata(sum_vector_function_out_lm32_sum_vector_avm_writedata),
        .out_memdep_sum_vector_avm_address(sum_vector_function_out_memdep_sum_vector_avm_address),
        .out_memdep_sum_vector_avm_burstcount(sum_vector_function_out_memdep_sum_vector_avm_burstcount),
        .out_memdep_sum_vector_avm_byteenable(sum_vector_function_out_memdep_sum_vector_avm_byteenable),
        .out_memdep_sum_vector_avm_enable(sum_vector_function_out_memdep_sum_vector_avm_enable),
        .out_memdep_sum_vector_avm_read(sum_vector_function_out_memdep_sum_vector_avm_read),
        .out_memdep_sum_vector_avm_write(sum_vector_function_out_memdep_sum_vector_avm_write),
        .out_memdep_sum_vector_avm_writedata(sum_vector_function_out_memdep_sum_vector_avm_writedata),
        .out_o_active_memdep(),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_sum_vector_address(GPOUT,38)
    assign avm_lm1_sum_vector_address = sum_vector_function_out_lm1_sum_vector_avm_address;

    // avm_lm1_sum_vector_burstcount(GPOUT,39)
    assign avm_lm1_sum_vector_burstcount = sum_vector_function_out_lm1_sum_vector_avm_burstcount;

    // avm_lm1_sum_vector_byteenable(GPOUT,40)
    assign avm_lm1_sum_vector_byteenable = sum_vector_function_out_lm1_sum_vector_avm_byteenable;

    // avm_lm1_sum_vector_enable(GPOUT,41)
    assign avm_lm1_sum_vector_enable = sum_vector_function_out_lm1_sum_vector_avm_enable;

    // avm_lm1_sum_vector_read(GPOUT,42)
    assign avm_lm1_sum_vector_read = sum_vector_function_out_lm1_sum_vector_avm_read;

    // avm_lm1_sum_vector_write(GPOUT,43)
    assign avm_lm1_sum_vector_write = sum_vector_function_out_lm1_sum_vector_avm_write;

    // avm_lm1_sum_vector_writedata(GPOUT,44)
    assign avm_lm1_sum_vector_writedata = sum_vector_function_out_lm1_sum_vector_avm_writedata;

    // avm_lm32_sum_vector_address(GPOUT,45)
    assign avm_lm32_sum_vector_address = sum_vector_function_out_lm32_sum_vector_avm_address;

    // avm_lm32_sum_vector_burstcount(GPOUT,46)
    assign avm_lm32_sum_vector_burstcount = sum_vector_function_out_lm32_sum_vector_avm_burstcount;

    // avm_lm32_sum_vector_byteenable(GPOUT,47)
    assign avm_lm32_sum_vector_byteenable = sum_vector_function_out_lm32_sum_vector_avm_byteenable;

    // avm_lm32_sum_vector_enable(GPOUT,48)
    assign avm_lm32_sum_vector_enable = sum_vector_function_out_lm32_sum_vector_avm_enable;

    // avm_lm32_sum_vector_read(GPOUT,49)
    assign avm_lm32_sum_vector_read = sum_vector_function_out_lm32_sum_vector_avm_read;

    // avm_lm32_sum_vector_write(GPOUT,50)
    assign avm_lm32_sum_vector_write = sum_vector_function_out_lm32_sum_vector_avm_write;

    // avm_lm32_sum_vector_writedata(GPOUT,51)
    assign avm_lm32_sum_vector_writedata = sum_vector_function_out_lm32_sum_vector_avm_writedata;

    // avm_memdep_sum_vector_address(GPOUT,52)
    assign avm_memdep_sum_vector_address = sum_vector_function_out_memdep_sum_vector_avm_address;

    // avm_memdep_sum_vector_burstcount(GPOUT,53)
    assign avm_memdep_sum_vector_burstcount = sum_vector_function_out_memdep_sum_vector_avm_burstcount;

    // avm_memdep_sum_vector_byteenable(GPOUT,54)
    assign avm_memdep_sum_vector_byteenable = sum_vector_function_out_memdep_sum_vector_avm_byteenable;

    // avm_memdep_sum_vector_enable(GPOUT,55)
    assign avm_memdep_sum_vector_enable = sum_vector_function_out_memdep_sum_vector_avm_enable;

    // avm_memdep_sum_vector_read(GPOUT,56)
    assign avm_memdep_sum_vector_read = sum_vector_function_out_memdep_sum_vector_avm_read;

    // avm_memdep_sum_vector_write(GPOUT,57)
    assign avm_memdep_sum_vector_write = sum_vector_function_out_memdep_sum_vector_avm_write;

    // avm_memdep_sum_vector_writedata(GPOUT,58)
    assign avm_memdep_sum_vector_writedata = sum_vector_function_out_memdep_sum_vector_avm_writedata;

    // avst_iord_bl_call_sum_vector_ready(GPOUT,59)
    assign avst_iord_bl_call_sum_vector_ready = sum_vector_function_out_iord_bl_call_sum_vector_o_fifoready;

    // avst_iowr_bl_return_sum_vector_data(GPOUT,60)
    assign avst_iowr_bl_return_sum_vector_data = sum_vector_function_out_iowr_bl_return_sum_vector_o_fifodata;

    // avst_iowr_bl_return_sum_vector_valid(GPOUT,61)
    assign avst_iowr_bl_return_sum_vector_valid = sum_vector_function_out_iowr_bl_return_sum_vector_o_fifovalid;

    // not_ready(LOGICAL,36)
    assign not_ready_q = ~ (sum_vector_function_out_iord_bl_call_sum_vector_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,65)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,64)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,62)
    assign busy = busy_or_q;

    // done(GPOUT,63)
    assign done = sum_vector_function_out_iowr_bl_return_sum_vector_o_fifovalid;

endmodule