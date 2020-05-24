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

// SystemVerilog created from main_function_wrapper
// SystemVerilog created on Sun May 24 19:52:40 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_function_wrapper (
    input wire [63:0] DCB_PFC_UP_ATTR_0,
    input wire [63:0] DCB_PFC_UP_ATTR_MAX,
    input wire [63:0] DCB_PG_ATTR_BW_ID_0,
    input wire [63:0] DCB_PG_ATTR_BW_ID_MAX,
    input wire [63:0] avm_lm1_main_readdata,
    input wire [0:0] avm_lm1_main_readdatavalid,
    input wire [0:0] avm_lm1_main_waitrequest,
    input wire [0:0] avm_lm1_main_writeack,
    input wire [63:0] avm_lm42_main_readdata,
    input wire [0:0] avm_lm42_main_readdatavalid,
    input wire [0:0] avm_lm42_main_waitrequest,
    input wire [0:0] avm_lm42_main_writeack,
    input wire [63:0] avm_unnamed_main2_main_readdata,
    input wire [0:0] avm_unnamed_main2_main_readdatavalid,
    input wire [0:0] avm_unnamed_main2_main_waitrequest,
    input wire [0:0] avm_unnamed_main2_main_writeack,
    input wire [63:0] avm_unnamed_main3_main_readdata,
    input wire [0:0] avm_unnamed_main3_main_readdatavalid,
    input wire [0:0] avm_unnamed_main3_main_waitrequest,
    input wire [0:0] avm_unnamed_main3_main_writeack,
    input wire [255:0] avst_iord_bl_call_main_data,
    input wire [0:0] avst_iord_bl_call_main_valid,
    input wire [0:0] avst_iowr_bl_return_main_almostfull,
    input wire [0:0] avst_iowr_bl_return_main_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1_main_address,
    output wire [0:0] avm_lm1_main_burstcount,
    output wire [7:0] avm_lm1_main_byteenable,
    output wire [0:0] avm_lm1_main_enable,
    output wire [0:0] avm_lm1_main_read,
    output wire [0:0] avm_lm1_main_write,
    output wire [63:0] avm_lm1_main_writedata,
    output wire [63:0] avm_lm42_main_address,
    output wire [0:0] avm_lm42_main_burstcount,
    output wire [7:0] avm_lm42_main_byteenable,
    output wire [0:0] avm_lm42_main_enable,
    output wire [0:0] avm_lm42_main_read,
    output wire [0:0] avm_lm42_main_write,
    output wire [63:0] avm_lm42_main_writedata,
    output wire [63:0] avm_unnamed_main2_main_address,
    output wire [0:0] avm_unnamed_main2_main_burstcount,
    output wire [7:0] avm_unnamed_main2_main_byteenable,
    output wire [0:0] avm_unnamed_main2_main_enable,
    output wire [0:0] avm_unnamed_main2_main_read,
    output wire [0:0] avm_unnamed_main2_main_write,
    output wire [63:0] avm_unnamed_main2_main_writedata,
    output wire [63:0] avm_unnamed_main3_main_address,
    output wire [0:0] avm_unnamed_main3_main_burstcount,
    output wire [7:0] avm_unnamed_main3_main_byteenable,
    output wire [0:0] avm_unnamed_main3_main_enable,
    output wire [0:0] avm_unnamed_main3_main_read,
    output wire [0:0] avm_unnamed_main3_main_write,
    output wire [63:0] avm_unnamed_main3_main_writedata,
    output wire [0:0] avst_iord_bl_call_main_ready,
    output wire [31:0] avst_iowr_bl_return_main_data,
    output wire [0:0] avst_iowr_bl_return_main_valid,
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
    wire [255:0] implicit_input_q;
    wire [0:0] main_function_out_iord_bl_call_main_o_fifoready;
    wire [31:0] main_function_out_iowr_bl_return_main_o_fifodata;
    wire [0:0] main_function_out_iowr_bl_return_main_o_fifovalid;
    wire [63:0] main_function_out_lm1_main_avm_address;
    wire [0:0] main_function_out_lm1_main_avm_burstcount;
    wire [7:0] main_function_out_lm1_main_avm_byteenable;
    wire [0:0] main_function_out_lm1_main_avm_enable;
    wire [0:0] main_function_out_lm1_main_avm_read;
    wire [0:0] main_function_out_lm1_main_avm_write;
    wire [63:0] main_function_out_lm1_main_avm_writedata;
    wire [63:0] main_function_out_lm42_main_avm_address;
    wire [0:0] main_function_out_lm42_main_avm_burstcount;
    wire [7:0] main_function_out_lm42_main_avm_byteenable;
    wire [0:0] main_function_out_lm42_main_avm_enable;
    wire [0:0] main_function_out_lm42_main_avm_read;
    wire [0:0] main_function_out_lm42_main_avm_write;
    wire [63:0] main_function_out_lm42_main_avm_writedata;
    wire [63:0] main_function_out_unnamed_main2_main_avm_address;
    wire [0:0] main_function_out_unnamed_main2_main_avm_burstcount;
    wire [7:0] main_function_out_unnamed_main2_main_avm_byteenable;
    wire [0:0] main_function_out_unnamed_main2_main_avm_enable;
    wire [0:0] main_function_out_unnamed_main2_main_avm_read;
    wire [0:0] main_function_out_unnamed_main2_main_avm_write;
    wire [63:0] main_function_out_unnamed_main2_main_avm_writedata;
    wire [63:0] main_function_out_unnamed_main3_main_avm_address;
    wire [0:0] main_function_out_unnamed_main3_main_avm_burstcount;
    wire [7:0] main_function_out_unnamed_main3_main_avm_byteenable;
    wire [0:0] main_function_out_unnamed_main3_main_avm_enable;
    wire [0:0] main_function_out_unnamed_main3_main_avm_read;
    wire [0:0] main_function_out_unnamed_main3_main_avm_write;
    wire [63:0] main_function_out_unnamed_main3_main_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,38)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = {DCB_PG_ATTR_BW_ID_MAX, DCB_PG_ATTR_BW_ID_0, DCB_PFC_UP_ATTR_MAX, DCB_PFC_UP_ATTR_0};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // main_function(BLACKBOX,36)
    main_function themain_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_main_i_fifodata(implicit_input_q),
        .in_iord_bl_call_main_i_fifovalid(start),
        .in_iowr_bl_return_main_i_fifoready(not_stall_q),
        .in_lm1_main_avm_readdata(avm_lm1_main_readdata),
        .in_lm1_main_avm_readdatavalid(avm_lm1_main_readdatavalid),
        .in_lm1_main_avm_waitrequest(avm_lm1_main_waitrequest),
        .in_lm1_main_avm_writeack(avm_lm1_main_writeack),
        .in_lm42_main_avm_readdata(avm_lm42_main_readdata),
        .in_lm42_main_avm_readdatavalid(avm_lm42_main_readdatavalid),
        .in_lm42_main_avm_waitrequest(avm_lm42_main_waitrequest),
        .in_lm42_main_avm_writeack(avm_lm42_main_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_main2_main_avm_readdata(avm_unnamed_main2_main_readdata),
        .in_unnamed_main2_main_avm_readdatavalid(avm_unnamed_main2_main_readdatavalid),
        .in_unnamed_main2_main_avm_waitrequest(avm_unnamed_main2_main_waitrequest),
        .in_unnamed_main2_main_avm_writeack(avm_unnamed_main2_main_writeack),
        .in_unnamed_main3_main_avm_readdata(avm_unnamed_main3_main_readdata),
        .in_unnamed_main3_main_avm_readdatavalid(avm_unnamed_main3_main_readdatavalid),
        .in_unnamed_main3_main_avm_waitrequest(avm_unnamed_main3_main_waitrequest),
        .in_unnamed_main3_main_avm_writeack(avm_unnamed_main3_main_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_main_o_fifoready(main_function_out_iord_bl_call_main_o_fifoready),
        .out_iowr_bl_return_main_o_fifodata(main_function_out_iowr_bl_return_main_o_fifodata),
        .out_iowr_bl_return_main_o_fifovalid(main_function_out_iowr_bl_return_main_o_fifovalid),
        .out_lm1_main_avm_address(main_function_out_lm1_main_avm_address),
        .out_lm1_main_avm_burstcount(main_function_out_lm1_main_avm_burstcount),
        .out_lm1_main_avm_byteenable(main_function_out_lm1_main_avm_byteenable),
        .out_lm1_main_avm_enable(main_function_out_lm1_main_avm_enable),
        .out_lm1_main_avm_read(main_function_out_lm1_main_avm_read),
        .out_lm1_main_avm_write(main_function_out_lm1_main_avm_write),
        .out_lm1_main_avm_writedata(main_function_out_lm1_main_avm_writedata),
        .out_lm42_main_avm_address(main_function_out_lm42_main_avm_address),
        .out_lm42_main_avm_burstcount(main_function_out_lm42_main_avm_burstcount),
        .out_lm42_main_avm_byteenable(main_function_out_lm42_main_avm_byteenable),
        .out_lm42_main_avm_enable(main_function_out_lm42_main_avm_enable),
        .out_lm42_main_avm_read(main_function_out_lm42_main_avm_read),
        .out_lm42_main_avm_write(main_function_out_lm42_main_avm_write),
        .out_lm42_main_avm_writedata(main_function_out_lm42_main_avm_writedata),
        .out_stall_out(),
        .out_unnamed_main2_main_avm_address(main_function_out_unnamed_main2_main_avm_address),
        .out_unnamed_main2_main_avm_burstcount(main_function_out_unnamed_main2_main_avm_burstcount),
        .out_unnamed_main2_main_avm_byteenable(main_function_out_unnamed_main2_main_avm_byteenable),
        .out_unnamed_main2_main_avm_enable(main_function_out_unnamed_main2_main_avm_enable),
        .out_unnamed_main2_main_avm_read(main_function_out_unnamed_main2_main_avm_read),
        .out_unnamed_main2_main_avm_write(main_function_out_unnamed_main2_main_avm_write),
        .out_unnamed_main2_main_avm_writedata(main_function_out_unnamed_main2_main_avm_writedata),
        .out_unnamed_main3_main_avm_address(main_function_out_unnamed_main3_main_avm_address),
        .out_unnamed_main3_main_avm_burstcount(main_function_out_unnamed_main3_main_avm_burstcount),
        .out_unnamed_main3_main_avm_byteenable(main_function_out_unnamed_main3_main_avm_byteenable),
        .out_unnamed_main3_main_avm_enable(main_function_out_unnamed_main3_main_avm_enable),
        .out_unnamed_main3_main_avm_read(main_function_out_unnamed_main3_main_avm_read),
        .out_unnamed_main3_main_avm_write(main_function_out_unnamed_main3_main_avm_write),
        .out_unnamed_main3_main_avm_writedata(main_function_out_unnamed_main3_main_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_main_address(GPOUT,39)
    assign avm_lm1_main_address = main_function_out_lm1_main_avm_address;

    // avm_lm1_main_burstcount(GPOUT,40)
    assign avm_lm1_main_burstcount = main_function_out_lm1_main_avm_burstcount;

    // avm_lm1_main_byteenable(GPOUT,41)
    assign avm_lm1_main_byteenable = main_function_out_lm1_main_avm_byteenable;

    // avm_lm1_main_enable(GPOUT,42)
    assign avm_lm1_main_enable = main_function_out_lm1_main_avm_enable;

    // avm_lm1_main_read(GPOUT,43)
    assign avm_lm1_main_read = main_function_out_lm1_main_avm_read;

    // avm_lm1_main_write(GPOUT,44)
    assign avm_lm1_main_write = main_function_out_lm1_main_avm_write;

    // avm_lm1_main_writedata(GPOUT,45)
    assign avm_lm1_main_writedata = main_function_out_lm1_main_avm_writedata;

    // avm_lm42_main_address(GPOUT,46)
    assign avm_lm42_main_address = main_function_out_lm42_main_avm_address;

    // avm_lm42_main_burstcount(GPOUT,47)
    assign avm_lm42_main_burstcount = main_function_out_lm42_main_avm_burstcount;

    // avm_lm42_main_byteenable(GPOUT,48)
    assign avm_lm42_main_byteenable = main_function_out_lm42_main_avm_byteenable;

    // avm_lm42_main_enable(GPOUT,49)
    assign avm_lm42_main_enable = main_function_out_lm42_main_avm_enable;

    // avm_lm42_main_read(GPOUT,50)
    assign avm_lm42_main_read = main_function_out_lm42_main_avm_read;

    // avm_lm42_main_write(GPOUT,51)
    assign avm_lm42_main_write = main_function_out_lm42_main_avm_write;

    // avm_lm42_main_writedata(GPOUT,52)
    assign avm_lm42_main_writedata = main_function_out_lm42_main_avm_writedata;

    // avm_unnamed_main2_main_address(GPOUT,53)
    assign avm_unnamed_main2_main_address = main_function_out_unnamed_main2_main_avm_address;

    // avm_unnamed_main2_main_burstcount(GPOUT,54)
    assign avm_unnamed_main2_main_burstcount = main_function_out_unnamed_main2_main_avm_burstcount;

    // avm_unnamed_main2_main_byteenable(GPOUT,55)
    assign avm_unnamed_main2_main_byteenable = main_function_out_unnamed_main2_main_avm_byteenable;

    // avm_unnamed_main2_main_enable(GPOUT,56)
    assign avm_unnamed_main2_main_enable = main_function_out_unnamed_main2_main_avm_enable;

    // avm_unnamed_main2_main_read(GPOUT,57)
    assign avm_unnamed_main2_main_read = main_function_out_unnamed_main2_main_avm_read;

    // avm_unnamed_main2_main_write(GPOUT,58)
    assign avm_unnamed_main2_main_write = main_function_out_unnamed_main2_main_avm_write;

    // avm_unnamed_main2_main_writedata(GPOUT,59)
    assign avm_unnamed_main2_main_writedata = main_function_out_unnamed_main2_main_avm_writedata;

    // avm_unnamed_main3_main_address(GPOUT,60)
    assign avm_unnamed_main3_main_address = main_function_out_unnamed_main3_main_avm_address;

    // avm_unnamed_main3_main_burstcount(GPOUT,61)
    assign avm_unnamed_main3_main_burstcount = main_function_out_unnamed_main3_main_avm_burstcount;

    // avm_unnamed_main3_main_byteenable(GPOUT,62)
    assign avm_unnamed_main3_main_byteenable = main_function_out_unnamed_main3_main_avm_byteenable;

    // avm_unnamed_main3_main_enable(GPOUT,63)
    assign avm_unnamed_main3_main_enable = main_function_out_unnamed_main3_main_avm_enable;

    // avm_unnamed_main3_main_read(GPOUT,64)
    assign avm_unnamed_main3_main_read = main_function_out_unnamed_main3_main_avm_read;

    // avm_unnamed_main3_main_write(GPOUT,65)
    assign avm_unnamed_main3_main_write = main_function_out_unnamed_main3_main_avm_write;

    // avm_unnamed_main3_main_writedata(GPOUT,66)
    assign avm_unnamed_main3_main_writedata = main_function_out_unnamed_main3_main_avm_writedata;

    // avst_iord_bl_call_main_ready(GPOUT,67)
    assign avst_iord_bl_call_main_ready = main_function_out_iord_bl_call_main_o_fifoready;

    // avst_iowr_bl_return_main_data(GPOUT,68)
    assign avst_iowr_bl_return_main_data = main_function_out_iowr_bl_return_main_o_fifodata;

    // avst_iowr_bl_return_main_valid(GPOUT,69)
    assign avst_iowr_bl_return_main_valid = main_function_out_iowr_bl_return_main_o_fifovalid;

    // not_ready(LOGICAL,37)
    assign not_ready_q = ~ (main_function_out_iord_bl_call_main_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,74)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,73)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,70)
    assign busy = busy_or_q;

    // done(GPOUT,71)
    assign done = main_function_out_iowr_bl_return_main_o_fifovalid;

    // returndata(GPOUT,72)
    assign returndata = main_function_out_iowr_bl_return_main_o_fifodata;

endmodule
