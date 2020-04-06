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

// SystemVerilog created from sobel_function_wrapper
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_function_wrapper (
    input wire [63:0] avm_memdep_sobel_readdata,
    input wire [0:0] avm_memdep_sobel_readdatavalid,
    input wire [0:0] avm_memdep_sobel_waitrequest,
    input wire [0:0] avm_memdep_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel10_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel10_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel10_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel10_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel11_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel11_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel11_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel11_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel12_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel12_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel12_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel12_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel13_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel13_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel13_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel13_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel6_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel6_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel6_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel6_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel7_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel7_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel7_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel7_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel8_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel8_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel8_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel8_sobel_writeack,
    input wire [63:0] avm_unnamed_sobel9_sobel_readdata,
    input wire [0:0] avm_unnamed_sobel9_sobel_readdatavalid,
    input wire [0:0] avm_unnamed_sobel9_sobel_waitrequest,
    input wire [0:0] avm_unnamed_sobel9_sobel_writeack,
    input wire [127:0] avst_iord_bl_call_sobel_data,
    input wire [0:0] avst_iord_bl_call_sobel_valid,
    input wire [0:0] avst_iowr_bl_return_sobel_almostfull,
    input wire [0:0] avst_iowr_bl_return_sobel_ready,
    input wire [63:0] image1,
    input wire [63:0] image2,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_memdep_sobel_address,
    output wire [0:0] avm_memdep_sobel_burstcount,
    output wire [7:0] avm_memdep_sobel_byteenable,
    output wire [0:0] avm_memdep_sobel_enable,
    output wire [0:0] avm_memdep_sobel_read,
    output wire [0:0] avm_memdep_sobel_write,
    output wire [63:0] avm_memdep_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel10_sobel_address,
    output wire [0:0] avm_unnamed_sobel10_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel10_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel10_sobel_enable,
    output wire [0:0] avm_unnamed_sobel10_sobel_read,
    output wire [0:0] avm_unnamed_sobel10_sobel_write,
    output wire [63:0] avm_unnamed_sobel10_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel11_sobel_address,
    output wire [0:0] avm_unnamed_sobel11_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel11_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel11_sobel_enable,
    output wire [0:0] avm_unnamed_sobel11_sobel_read,
    output wire [0:0] avm_unnamed_sobel11_sobel_write,
    output wire [63:0] avm_unnamed_sobel11_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel12_sobel_address,
    output wire [0:0] avm_unnamed_sobel12_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel12_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel12_sobel_enable,
    output wire [0:0] avm_unnamed_sobel12_sobel_read,
    output wire [0:0] avm_unnamed_sobel12_sobel_write,
    output wire [63:0] avm_unnamed_sobel12_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel13_sobel_address,
    output wire [0:0] avm_unnamed_sobel13_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel13_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel13_sobel_enable,
    output wire [0:0] avm_unnamed_sobel13_sobel_read,
    output wire [0:0] avm_unnamed_sobel13_sobel_write,
    output wire [63:0] avm_unnamed_sobel13_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel6_sobel_address,
    output wire [0:0] avm_unnamed_sobel6_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel6_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel6_sobel_enable,
    output wire [0:0] avm_unnamed_sobel6_sobel_read,
    output wire [0:0] avm_unnamed_sobel6_sobel_write,
    output wire [63:0] avm_unnamed_sobel6_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel7_sobel_address,
    output wire [0:0] avm_unnamed_sobel7_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel7_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel7_sobel_enable,
    output wire [0:0] avm_unnamed_sobel7_sobel_read,
    output wire [0:0] avm_unnamed_sobel7_sobel_write,
    output wire [63:0] avm_unnamed_sobel7_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel8_sobel_address,
    output wire [0:0] avm_unnamed_sobel8_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel8_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel8_sobel_enable,
    output wire [0:0] avm_unnamed_sobel8_sobel_read,
    output wire [0:0] avm_unnamed_sobel8_sobel_write,
    output wire [63:0] avm_unnamed_sobel8_sobel_writedata,
    output wire [63:0] avm_unnamed_sobel9_sobel_address,
    output wire [0:0] avm_unnamed_sobel9_sobel_burstcount,
    output wire [7:0] avm_unnamed_sobel9_sobel_byteenable,
    output wire [0:0] avm_unnamed_sobel9_sobel_enable,
    output wire [0:0] avm_unnamed_sobel9_sobel_read,
    output wire [0:0] avm_unnamed_sobel9_sobel_write,
    output wire [63:0] avm_unnamed_sobel9_sobel_writedata,
    output wire [0:0] avst_iord_bl_call_sobel_ready,
    output wire [0:0] avst_iowr_bl_return_sobel_data,
    output wire [0:0] avst_iowr_bl_return_sobel_valid,
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
    wire [127:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] sobel_function_out_iord_bl_call_sobel_o_fifoready;
    wire [0:0] sobel_function_out_iowr_bl_return_sobel_o_fifodata;
    wire [0:0] sobel_function_out_iowr_bl_return_sobel_o_fifovalid;
    wire [63:0] sobel_function_out_memdep_sobel_avm_address;
    wire [0:0] sobel_function_out_memdep_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_memdep_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_memdep_sobel_avm_enable;
    wire [0:0] sobel_function_out_memdep_sobel_avm_read;
    wire [0:0] sobel_function_out_memdep_sobel_avm_write;
    wire [63:0] sobel_function_out_memdep_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel10_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel10_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel10_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel10_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel10_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel10_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel10_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel11_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel11_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel11_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel11_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel11_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel11_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel11_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel12_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel12_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel12_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel12_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel12_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel12_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel12_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel13_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel13_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel13_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel13_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel13_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel13_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel13_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel6_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel6_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel6_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel6_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel6_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel6_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel6_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel7_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel7_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel7_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel7_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel7_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel7_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel7_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel8_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel8_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel8_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel8_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel8_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel8_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel8_sobel_avm_writedata;
    wire [63:0] sobel_function_out_unnamed_sobel9_sobel_avm_address;
    wire [0:0] sobel_function_out_unnamed_sobel9_sobel_avm_burstcount;
    wire [7:0] sobel_function_out_unnamed_sobel9_sobel_avm_byteenable;
    wire [0:0] sobel_function_out_unnamed_sobel9_sobel_avm_enable;
    wire [0:0] sobel_function_out_unnamed_sobel9_sobel_avm_read;
    wire [0:0] sobel_function_out_unnamed_sobel9_sobel_avm_write;
    wire [63:0] sobel_function_out_unnamed_sobel9_sobel_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,57)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = {image2, image1};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // sobel_function(BLACKBOX,129)
    sobel_function thesobel_function (
        .in_arg_call(call_const_q),
        .in_arg_image1(call_const_q),
        .in_arg_image2(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_sobel_i_fifodata(implicit_input_q),
        .in_iord_bl_call_sobel_i_fifovalid(start),
        .in_iowr_bl_return_sobel_i_fifoready(not_stall_q),
        .in_memdep_sobel_avm_readdata(avm_memdep_sobel_readdata),
        .in_memdep_sobel_avm_readdatavalid(avm_memdep_sobel_readdatavalid),
        .in_memdep_sobel_avm_waitrequest(avm_memdep_sobel_waitrequest),
        .in_memdep_sobel_avm_writeack(avm_memdep_sobel_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_sobel10_sobel_avm_readdata(avm_unnamed_sobel10_sobel_readdata),
        .in_unnamed_sobel10_sobel_avm_readdatavalid(avm_unnamed_sobel10_sobel_readdatavalid),
        .in_unnamed_sobel10_sobel_avm_waitrequest(avm_unnamed_sobel10_sobel_waitrequest),
        .in_unnamed_sobel10_sobel_avm_writeack(avm_unnamed_sobel10_sobel_writeack),
        .in_unnamed_sobel11_sobel_avm_readdata(avm_unnamed_sobel11_sobel_readdata),
        .in_unnamed_sobel11_sobel_avm_readdatavalid(avm_unnamed_sobel11_sobel_readdatavalid),
        .in_unnamed_sobel11_sobel_avm_waitrequest(avm_unnamed_sobel11_sobel_waitrequest),
        .in_unnamed_sobel11_sobel_avm_writeack(avm_unnamed_sobel11_sobel_writeack),
        .in_unnamed_sobel12_sobel_avm_readdata(avm_unnamed_sobel12_sobel_readdata),
        .in_unnamed_sobel12_sobel_avm_readdatavalid(avm_unnamed_sobel12_sobel_readdatavalid),
        .in_unnamed_sobel12_sobel_avm_waitrequest(avm_unnamed_sobel12_sobel_waitrequest),
        .in_unnamed_sobel12_sobel_avm_writeack(avm_unnamed_sobel12_sobel_writeack),
        .in_unnamed_sobel13_sobel_avm_readdata(avm_unnamed_sobel13_sobel_readdata),
        .in_unnamed_sobel13_sobel_avm_readdatavalid(avm_unnamed_sobel13_sobel_readdatavalid),
        .in_unnamed_sobel13_sobel_avm_waitrequest(avm_unnamed_sobel13_sobel_waitrequest),
        .in_unnamed_sobel13_sobel_avm_writeack(avm_unnamed_sobel13_sobel_writeack),
        .in_unnamed_sobel6_sobel_avm_readdata(avm_unnamed_sobel6_sobel_readdata),
        .in_unnamed_sobel6_sobel_avm_readdatavalid(avm_unnamed_sobel6_sobel_readdatavalid),
        .in_unnamed_sobel6_sobel_avm_waitrequest(avm_unnamed_sobel6_sobel_waitrequest),
        .in_unnamed_sobel6_sobel_avm_writeack(avm_unnamed_sobel6_sobel_writeack),
        .in_unnamed_sobel7_sobel_avm_readdata(avm_unnamed_sobel7_sobel_readdata),
        .in_unnamed_sobel7_sobel_avm_readdatavalid(avm_unnamed_sobel7_sobel_readdatavalid),
        .in_unnamed_sobel7_sobel_avm_waitrequest(avm_unnamed_sobel7_sobel_waitrequest),
        .in_unnamed_sobel7_sobel_avm_writeack(avm_unnamed_sobel7_sobel_writeack),
        .in_unnamed_sobel8_sobel_avm_readdata(avm_unnamed_sobel8_sobel_readdata),
        .in_unnamed_sobel8_sobel_avm_readdatavalid(avm_unnamed_sobel8_sobel_readdatavalid),
        .in_unnamed_sobel8_sobel_avm_waitrequest(avm_unnamed_sobel8_sobel_waitrequest),
        .in_unnamed_sobel8_sobel_avm_writeack(avm_unnamed_sobel8_sobel_writeack),
        .in_unnamed_sobel9_sobel_avm_readdata(avm_unnamed_sobel9_sobel_readdata),
        .in_unnamed_sobel9_sobel_avm_readdatavalid(avm_unnamed_sobel9_sobel_readdatavalid),
        .in_unnamed_sobel9_sobel_avm_waitrequest(avm_unnamed_sobel9_sobel_waitrequest),
        .in_unnamed_sobel9_sobel_avm_writeack(avm_unnamed_sobel9_sobel_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_sobel_o_fifoready(sobel_function_out_iord_bl_call_sobel_o_fifoready),
        .out_iowr_bl_return_sobel_o_fifodata(sobel_function_out_iowr_bl_return_sobel_o_fifodata),
        .out_iowr_bl_return_sobel_o_fifovalid(sobel_function_out_iowr_bl_return_sobel_o_fifovalid),
        .out_memdep_sobel_avm_address(sobel_function_out_memdep_sobel_avm_address),
        .out_memdep_sobel_avm_burstcount(sobel_function_out_memdep_sobel_avm_burstcount),
        .out_memdep_sobel_avm_byteenable(sobel_function_out_memdep_sobel_avm_byteenable),
        .out_memdep_sobel_avm_enable(sobel_function_out_memdep_sobel_avm_enable),
        .out_memdep_sobel_avm_read(sobel_function_out_memdep_sobel_avm_read),
        .out_memdep_sobel_avm_write(sobel_function_out_memdep_sobel_avm_write),
        .out_memdep_sobel_avm_writedata(sobel_function_out_memdep_sobel_avm_writedata),
        .out_o_active_memdep(),
        .out_stall_out(),
        .out_unnamed_sobel10_sobel_avm_address(sobel_function_out_unnamed_sobel10_sobel_avm_address),
        .out_unnamed_sobel10_sobel_avm_burstcount(sobel_function_out_unnamed_sobel10_sobel_avm_burstcount),
        .out_unnamed_sobel10_sobel_avm_byteenable(sobel_function_out_unnamed_sobel10_sobel_avm_byteenable),
        .out_unnamed_sobel10_sobel_avm_enable(sobel_function_out_unnamed_sobel10_sobel_avm_enable),
        .out_unnamed_sobel10_sobel_avm_read(sobel_function_out_unnamed_sobel10_sobel_avm_read),
        .out_unnamed_sobel10_sobel_avm_write(sobel_function_out_unnamed_sobel10_sobel_avm_write),
        .out_unnamed_sobel10_sobel_avm_writedata(sobel_function_out_unnamed_sobel10_sobel_avm_writedata),
        .out_unnamed_sobel11_sobel_avm_address(sobel_function_out_unnamed_sobel11_sobel_avm_address),
        .out_unnamed_sobel11_sobel_avm_burstcount(sobel_function_out_unnamed_sobel11_sobel_avm_burstcount),
        .out_unnamed_sobel11_sobel_avm_byteenable(sobel_function_out_unnamed_sobel11_sobel_avm_byteenable),
        .out_unnamed_sobel11_sobel_avm_enable(sobel_function_out_unnamed_sobel11_sobel_avm_enable),
        .out_unnamed_sobel11_sobel_avm_read(sobel_function_out_unnamed_sobel11_sobel_avm_read),
        .out_unnamed_sobel11_sobel_avm_write(sobel_function_out_unnamed_sobel11_sobel_avm_write),
        .out_unnamed_sobel11_sobel_avm_writedata(sobel_function_out_unnamed_sobel11_sobel_avm_writedata),
        .out_unnamed_sobel12_sobel_avm_address(sobel_function_out_unnamed_sobel12_sobel_avm_address),
        .out_unnamed_sobel12_sobel_avm_burstcount(sobel_function_out_unnamed_sobel12_sobel_avm_burstcount),
        .out_unnamed_sobel12_sobel_avm_byteenable(sobel_function_out_unnamed_sobel12_sobel_avm_byteenable),
        .out_unnamed_sobel12_sobel_avm_enable(sobel_function_out_unnamed_sobel12_sobel_avm_enable),
        .out_unnamed_sobel12_sobel_avm_read(sobel_function_out_unnamed_sobel12_sobel_avm_read),
        .out_unnamed_sobel12_sobel_avm_write(sobel_function_out_unnamed_sobel12_sobel_avm_write),
        .out_unnamed_sobel12_sobel_avm_writedata(sobel_function_out_unnamed_sobel12_sobel_avm_writedata),
        .out_unnamed_sobel13_sobel_avm_address(sobel_function_out_unnamed_sobel13_sobel_avm_address),
        .out_unnamed_sobel13_sobel_avm_burstcount(sobel_function_out_unnamed_sobel13_sobel_avm_burstcount),
        .out_unnamed_sobel13_sobel_avm_byteenable(sobel_function_out_unnamed_sobel13_sobel_avm_byteenable),
        .out_unnamed_sobel13_sobel_avm_enable(sobel_function_out_unnamed_sobel13_sobel_avm_enable),
        .out_unnamed_sobel13_sobel_avm_read(sobel_function_out_unnamed_sobel13_sobel_avm_read),
        .out_unnamed_sobel13_sobel_avm_write(sobel_function_out_unnamed_sobel13_sobel_avm_write),
        .out_unnamed_sobel13_sobel_avm_writedata(sobel_function_out_unnamed_sobel13_sobel_avm_writedata),
        .out_unnamed_sobel6_sobel_avm_address(sobel_function_out_unnamed_sobel6_sobel_avm_address),
        .out_unnamed_sobel6_sobel_avm_burstcount(sobel_function_out_unnamed_sobel6_sobel_avm_burstcount),
        .out_unnamed_sobel6_sobel_avm_byteenable(sobel_function_out_unnamed_sobel6_sobel_avm_byteenable),
        .out_unnamed_sobel6_sobel_avm_enable(sobel_function_out_unnamed_sobel6_sobel_avm_enable),
        .out_unnamed_sobel6_sobel_avm_read(sobel_function_out_unnamed_sobel6_sobel_avm_read),
        .out_unnamed_sobel6_sobel_avm_write(sobel_function_out_unnamed_sobel6_sobel_avm_write),
        .out_unnamed_sobel6_sobel_avm_writedata(sobel_function_out_unnamed_sobel6_sobel_avm_writedata),
        .out_unnamed_sobel7_sobel_avm_address(sobel_function_out_unnamed_sobel7_sobel_avm_address),
        .out_unnamed_sobel7_sobel_avm_burstcount(sobel_function_out_unnamed_sobel7_sobel_avm_burstcount),
        .out_unnamed_sobel7_sobel_avm_byteenable(sobel_function_out_unnamed_sobel7_sobel_avm_byteenable),
        .out_unnamed_sobel7_sobel_avm_enable(sobel_function_out_unnamed_sobel7_sobel_avm_enable),
        .out_unnamed_sobel7_sobel_avm_read(sobel_function_out_unnamed_sobel7_sobel_avm_read),
        .out_unnamed_sobel7_sobel_avm_write(sobel_function_out_unnamed_sobel7_sobel_avm_write),
        .out_unnamed_sobel7_sobel_avm_writedata(sobel_function_out_unnamed_sobel7_sobel_avm_writedata),
        .out_unnamed_sobel8_sobel_avm_address(sobel_function_out_unnamed_sobel8_sobel_avm_address),
        .out_unnamed_sobel8_sobel_avm_burstcount(sobel_function_out_unnamed_sobel8_sobel_avm_burstcount),
        .out_unnamed_sobel8_sobel_avm_byteenable(sobel_function_out_unnamed_sobel8_sobel_avm_byteenable),
        .out_unnamed_sobel8_sobel_avm_enable(sobel_function_out_unnamed_sobel8_sobel_avm_enable),
        .out_unnamed_sobel8_sobel_avm_read(sobel_function_out_unnamed_sobel8_sobel_avm_read),
        .out_unnamed_sobel8_sobel_avm_write(sobel_function_out_unnamed_sobel8_sobel_avm_write),
        .out_unnamed_sobel8_sobel_avm_writedata(sobel_function_out_unnamed_sobel8_sobel_avm_writedata),
        .out_unnamed_sobel9_sobel_avm_address(sobel_function_out_unnamed_sobel9_sobel_avm_address),
        .out_unnamed_sobel9_sobel_avm_burstcount(sobel_function_out_unnamed_sobel9_sobel_avm_burstcount),
        .out_unnamed_sobel9_sobel_avm_byteenable(sobel_function_out_unnamed_sobel9_sobel_avm_byteenable),
        .out_unnamed_sobel9_sobel_avm_enable(sobel_function_out_unnamed_sobel9_sobel_avm_enable),
        .out_unnamed_sobel9_sobel_avm_read(sobel_function_out_unnamed_sobel9_sobel_avm_read),
        .out_unnamed_sobel9_sobel_avm_write(sobel_function_out_unnamed_sobel9_sobel_avm_write),
        .out_unnamed_sobel9_sobel_avm_writedata(sobel_function_out_unnamed_sobel9_sobel_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_sobel_address(GPOUT,58)
    assign avm_memdep_sobel_address = sobel_function_out_memdep_sobel_avm_address;

    // avm_memdep_sobel_burstcount(GPOUT,59)
    assign avm_memdep_sobel_burstcount = sobel_function_out_memdep_sobel_avm_burstcount;

    // avm_memdep_sobel_byteenable(GPOUT,60)
    assign avm_memdep_sobel_byteenable = sobel_function_out_memdep_sobel_avm_byteenable;

    // avm_memdep_sobel_enable(GPOUT,61)
    assign avm_memdep_sobel_enable = sobel_function_out_memdep_sobel_avm_enable;

    // avm_memdep_sobel_read(GPOUT,62)
    assign avm_memdep_sobel_read = sobel_function_out_memdep_sobel_avm_read;

    // avm_memdep_sobel_write(GPOUT,63)
    assign avm_memdep_sobel_write = sobel_function_out_memdep_sobel_avm_write;

    // avm_memdep_sobel_writedata(GPOUT,64)
    assign avm_memdep_sobel_writedata = sobel_function_out_memdep_sobel_avm_writedata;

    // avm_unnamed_sobel10_sobel_address(GPOUT,65)
    assign avm_unnamed_sobel10_sobel_address = sobel_function_out_unnamed_sobel10_sobel_avm_address;

    // avm_unnamed_sobel10_sobel_burstcount(GPOUT,66)
    assign avm_unnamed_sobel10_sobel_burstcount = sobel_function_out_unnamed_sobel10_sobel_avm_burstcount;

    // avm_unnamed_sobel10_sobel_byteenable(GPOUT,67)
    assign avm_unnamed_sobel10_sobel_byteenable = sobel_function_out_unnamed_sobel10_sobel_avm_byteenable;

    // avm_unnamed_sobel10_sobel_enable(GPOUT,68)
    assign avm_unnamed_sobel10_sobel_enable = sobel_function_out_unnamed_sobel10_sobel_avm_enable;

    // avm_unnamed_sobel10_sobel_read(GPOUT,69)
    assign avm_unnamed_sobel10_sobel_read = sobel_function_out_unnamed_sobel10_sobel_avm_read;

    // avm_unnamed_sobel10_sobel_write(GPOUT,70)
    assign avm_unnamed_sobel10_sobel_write = sobel_function_out_unnamed_sobel10_sobel_avm_write;

    // avm_unnamed_sobel10_sobel_writedata(GPOUT,71)
    assign avm_unnamed_sobel10_sobel_writedata = sobel_function_out_unnamed_sobel10_sobel_avm_writedata;

    // avm_unnamed_sobel11_sobel_address(GPOUT,72)
    assign avm_unnamed_sobel11_sobel_address = sobel_function_out_unnamed_sobel11_sobel_avm_address;

    // avm_unnamed_sobel11_sobel_burstcount(GPOUT,73)
    assign avm_unnamed_sobel11_sobel_burstcount = sobel_function_out_unnamed_sobel11_sobel_avm_burstcount;

    // avm_unnamed_sobel11_sobel_byteenable(GPOUT,74)
    assign avm_unnamed_sobel11_sobel_byteenable = sobel_function_out_unnamed_sobel11_sobel_avm_byteenable;

    // avm_unnamed_sobel11_sobel_enable(GPOUT,75)
    assign avm_unnamed_sobel11_sobel_enable = sobel_function_out_unnamed_sobel11_sobel_avm_enable;

    // avm_unnamed_sobel11_sobel_read(GPOUT,76)
    assign avm_unnamed_sobel11_sobel_read = sobel_function_out_unnamed_sobel11_sobel_avm_read;

    // avm_unnamed_sobel11_sobel_write(GPOUT,77)
    assign avm_unnamed_sobel11_sobel_write = sobel_function_out_unnamed_sobel11_sobel_avm_write;

    // avm_unnamed_sobel11_sobel_writedata(GPOUT,78)
    assign avm_unnamed_sobel11_sobel_writedata = sobel_function_out_unnamed_sobel11_sobel_avm_writedata;

    // avm_unnamed_sobel12_sobel_address(GPOUT,79)
    assign avm_unnamed_sobel12_sobel_address = sobel_function_out_unnamed_sobel12_sobel_avm_address;

    // avm_unnamed_sobel12_sobel_burstcount(GPOUT,80)
    assign avm_unnamed_sobel12_sobel_burstcount = sobel_function_out_unnamed_sobel12_sobel_avm_burstcount;

    // avm_unnamed_sobel12_sobel_byteenable(GPOUT,81)
    assign avm_unnamed_sobel12_sobel_byteenable = sobel_function_out_unnamed_sobel12_sobel_avm_byteenable;

    // avm_unnamed_sobel12_sobel_enable(GPOUT,82)
    assign avm_unnamed_sobel12_sobel_enable = sobel_function_out_unnamed_sobel12_sobel_avm_enable;

    // avm_unnamed_sobel12_sobel_read(GPOUT,83)
    assign avm_unnamed_sobel12_sobel_read = sobel_function_out_unnamed_sobel12_sobel_avm_read;

    // avm_unnamed_sobel12_sobel_write(GPOUT,84)
    assign avm_unnamed_sobel12_sobel_write = sobel_function_out_unnamed_sobel12_sobel_avm_write;

    // avm_unnamed_sobel12_sobel_writedata(GPOUT,85)
    assign avm_unnamed_sobel12_sobel_writedata = sobel_function_out_unnamed_sobel12_sobel_avm_writedata;

    // avm_unnamed_sobel13_sobel_address(GPOUT,86)
    assign avm_unnamed_sobel13_sobel_address = sobel_function_out_unnamed_sobel13_sobel_avm_address;

    // avm_unnamed_sobel13_sobel_burstcount(GPOUT,87)
    assign avm_unnamed_sobel13_sobel_burstcount = sobel_function_out_unnamed_sobel13_sobel_avm_burstcount;

    // avm_unnamed_sobel13_sobel_byteenable(GPOUT,88)
    assign avm_unnamed_sobel13_sobel_byteenable = sobel_function_out_unnamed_sobel13_sobel_avm_byteenable;

    // avm_unnamed_sobel13_sobel_enable(GPOUT,89)
    assign avm_unnamed_sobel13_sobel_enable = sobel_function_out_unnamed_sobel13_sobel_avm_enable;

    // avm_unnamed_sobel13_sobel_read(GPOUT,90)
    assign avm_unnamed_sobel13_sobel_read = sobel_function_out_unnamed_sobel13_sobel_avm_read;

    // avm_unnamed_sobel13_sobel_write(GPOUT,91)
    assign avm_unnamed_sobel13_sobel_write = sobel_function_out_unnamed_sobel13_sobel_avm_write;

    // avm_unnamed_sobel13_sobel_writedata(GPOUT,92)
    assign avm_unnamed_sobel13_sobel_writedata = sobel_function_out_unnamed_sobel13_sobel_avm_writedata;

    // avm_unnamed_sobel6_sobel_address(GPOUT,93)
    assign avm_unnamed_sobel6_sobel_address = sobel_function_out_unnamed_sobel6_sobel_avm_address;

    // avm_unnamed_sobel6_sobel_burstcount(GPOUT,94)
    assign avm_unnamed_sobel6_sobel_burstcount = sobel_function_out_unnamed_sobel6_sobel_avm_burstcount;

    // avm_unnamed_sobel6_sobel_byteenable(GPOUT,95)
    assign avm_unnamed_sobel6_sobel_byteenable = sobel_function_out_unnamed_sobel6_sobel_avm_byteenable;

    // avm_unnamed_sobel6_sobel_enable(GPOUT,96)
    assign avm_unnamed_sobel6_sobel_enable = sobel_function_out_unnamed_sobel6_sobel_avm_enable;

    // avm_unnamed_sobel6_sobel_read(GPOUT,97)
    assign avm_unnamed_sobel6_sobel_read = sobel_function_out_unnamed_sobel6_sobel_avm_read;

    // avm_unnamed_sobel6_sobel_write(GPOUT,98)
    assign avm_unnamed_sobel6_sobel_write = sobel_function_out_unnamed_sobel6_sobel_avm_write;

    // avm_unnamed_sobel6_sobel_writedata(GPOUT,99)
    assign avm_unnamed_sobel6_sobel_writedata = sobel_function_out_unnamed_sobel6_sobel_avm_writedata;

    // avm_unnamed_sobel7_sobel_address(GPOUT,100)
    assign avm_unnamed_sobel7_sobel_address = sobel_function_out_unnamed_sobel7_sobel_avm_address;

    // avm_unnamed_sobel7_sobel_burstcount(GPOUT,101)
    assign avm_unnamed_sobel7_sobel_burstcount = sobel_function_out_unnamed_sobel7_sobel_avm_burstcount;

    // avm_unnamed_sobel7_sobel_byteenable(GPOUT,102)
    assign avm_unnamed_sobel7_sobel_byteenable = sobel_function_out_unnamed_sobel7_sobel_avm_byteenable;

    // avm_unnamed_sobel7_sobel_enable(GPOUT,103)
    assign avm_unnamed_sobel7_sobel_enable = sobel_function_out_unnamed_sobel7_sobel_avm_enable;

    // avm_unnamed_sobel7_sobel_read(GPOUT,104)
    assign avm_unnamed_sobel7_sobel_read = sobel_function_out_unnamed_sobel7_sobel_avm_read;

    // avm_unnamed_sobel7_sobel_write(GPOUT,105)
    assign avm_unnamed_sobel7_sobel_write = sobel_function_out_unnamed_sobel7_sobel_avm_write;

    // avm_unnamed_sobel7_sobel_writedata(GPOUT,106)
    assign avm_unnamed_sobel7_sobel_writedata = sobel_function_out_unnamed_sobel7_sobel_avm_writedata;

    // avm_unnamed_sobel8_sobel_address(GPOUT,107)
    assign avm_unnamed_sobel8_sobel_address = sobel_function_out_unnamed_sobel8_sobel_avm_address;

    // avm_unnamed_sobel8_sobel_burstcount(GPOUT,108)
    assign avm_unnamed_sobel8_sobel_burstcount = sobel_function_out_unnamed_sobel8_sobel_avm_burstcount;

    // avm_unnamed_sobel8_sobel_byteenable(GPOUT,109)
    assign avm_unnamed_sobel8_sobel_byteenable = sobel_function_out_unnamed_sobel8_sobel_avm_byteenable;

    // avm_unnamed_sobel8_sobel_enable(GPOUT,110)
    assign avm_unnamed_sobel8_sobel_enable = sobel_function_out_unnamed_sobel8_sobel_avm_enable;

    // avm_unnamed_sobel8_sobel_read(GPOUT,111)
    assign avm_unnamed_sobel8_sobel_read = sobel_function_out_unnamed_sobel8_sobel_avm_read;

    // avm_unnamed_sobel8_sobel_write(GPOUT,112)
    assign avm_unnamed_sobel8_sobel_write = sobel_function_out_unnamed_sobel8_sobel_avm_write;

    // avm_unnamed_sobel8_sobel_writedata(GPOUT,113)
    assign avm_unnamed_sobel8_sobel_writedata = sobel_function_out_unnamed_sobel8_sobel_avm_writedata;

    // avm_unnamed_sobel9_sobel_address(GPOUT,114)
    assign avm_unnamed_sobel9_sobel_address = sobel_function_out_unnamed_sobel9_sobel_avm_address;

    // avm_unnamed_sobel9_sobel_burstcount(GPOUT,115)
    assign avm_unnamed_sobel9_sobel_burstcount = sobel_function_out_unnamed_sobel9_sobel_avm_burstcount;

    // avm_unnamed_sobel9_sobel_byteenable(GPOUT,116)
    assign avm_unnamed_sobel9_sobel_byteenable = sobel_function_out_unnamed_sobel9_sobel_avm_byteenable;

    // avm_unnamed_sobel9_sobel_enable(GPOUT,117)
    assign avm_unnamed_sobel9_sobel_enable = sobel_function_out_unnamed_sobel9_sobel_avm_enable;

    // avm_unnamed_sobel9_sobel_read(GPOUT,118)
    assign avm_unnamed_sobel9_sobel_read = sobel_function_out_unnamed_sobel9_sobel_avm_read;

    // avm_unnamed_sobel9_sobel_write(GPOUT,119)
    assign avm_unnamed_sobel9_sobel_write = sobel_function_out_unnamed_sobel9_sobel_avm_write;

    // avm_unnamed_sobel9_sobel_writedata(GPOUT,120)
    assign avm_unnamed_sobel9_sobel_writedata = sobel_function_out_unnamed_sobel9_sobel_avm_writedata;

    // avst_iord_bl_call_sobel_ready(GPOUT,121)
    assign avst_iord_bl_call_sobel_ready = sobel_function_out_iord_bl_call_sobel_o_fifoready;

    // avst_iowr_bl_return_sobel_data(GPOUT,122)
    assign avst_iowr_bl_return_sobel_data = sobel_function_out_iowr_bl_return_sobel_o_fifodata;

    // avst_iowr_bl_return_sobel_valid(GPOUT,123)
    assign avst_iowr_bl_return_sobel_valid = sobel_function_out_iowr_bl_return_sobel_o_fifovalid;

    // not_ready(LOGICAL,56)
    assign not_ready_q = ~ (sobel_function_out_iord_bl_call_sobel_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,127)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,126)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,124)
    assign busy = busy_or_q;

    // done(GPOUT,125)
    assign done = sobel_function_out_iowr_bl_return_sobel_o_fifovalid;

endmodule
