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

// SystemVerilog created from eia608_from_utf8_function
// SystemVerilog created on Sun May 24 22:38:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module eia608_from_utf8_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_s,
    input wire [63:0] in_iord_bl_call_eia608_from_utf8_i_fifodata,
    input wire [0:0] in_iord_bl_call_eia608_from_utf8_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_eia608_from_utf8_i_fifoready,
    input wire [63:0] in_lm12843_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_writeack,
    input wire [63:0] in_lm12964_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_writeack,
    input wire [63:0] in_lm2_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_writeack,
    input wire [63:0] in_ml5_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_readdatavalid,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_eia608_from_utf8_o_fifoready,
    output wire [31:0] out_iowr_bl_return_eia608_from_utf8_o_fifodata,
    output wire [0:0] out_iowr_bl_return_eia608_from_utf8_o_fifovalid,
    output wire [63:0] out_lm12843_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_lm12843_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm12843_eia608_from_utf8_avm_writedata,
    output wire [63:0] out_lm12964_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_lm12964_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm12964_eia608_from_utf8_avm_writedata,
    output wire [63:0] out_lm2_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_lm2_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm2_eia608_from_utf8_avm_writedata,
    output wire [63:0] out_ml5_eia608_from_utf8_avm_address,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_burstcount,
    output wire [7:0] out_ml5_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_enable,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_read,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_write,
    output wire [63:0] out_ml5_eia608_from_utf8_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] bb_eia608_from_utf8_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_iord_bl_call_eia608_from_utf8_o_fifoready;
    wire [31:0] bb_eia608_from_utf8_B1_start_out_iowr_bl_return_eia608_from_utf8_o_fifodata;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_writedata;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_writedata;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_writedata;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_address;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_burstcount;
    wire [7:0] bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_byteenable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_enable;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_read;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_write;
    wire [63:0] bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_writedata;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_eia608_from_utf8_B1_start_out_stall_out_0;
    wire [1:0] c_i2_05_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo_out_valid_out;


    // c_i2_05(CONSTANT,7)
    assign c_i2_05_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo(BLACKBOX,10)
    eia608_from_utf8_i_llvm_fpga_pipeline_keep_going_1_valid_fifo thei_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo (
        .in_data_in(c_i2_05_q),
        .in_stall_in(bb_eia608_from_utf8_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr(BLACKBOX,9)
    eia608_from_utf8_i_llvm_fpga_pipeline_keep_going_1_sr thei_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo_out_stall_out),
        .in_i_valid(bb_eia608_from_utf8_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_eia608_from_utf8_B1_start(BLACKBOX,3)
    eia608_from_utf8_bb_B1_start thebb_eia608_from_utf8_B1_start (
        .in_flush(in_start),
        .in_iord_bl_call_eia608_from_utf8_i_fifodata(in_iord_bl_call_eia608_from_utf8_i_fifodata),
        .in_iord_bl_call_eia608_from_utf8_i_fifovalid(in_iord_bl_call_eia608_from_utf8_i_fifovalid),
        .in_iowr_bl_return_eia608_from_utf8_i_fifoready(in_iowr_bl_return_eia608_from_utf8_i_fifoready),
        .in_lm12843_eia608_from_utf8_avm_readdata(in_lm12843_eia608_from_utf8_avm_readdata),
        .in_lm12843_eia608_from_utf8_avm_readdatavalid(in_lm12843_eia608_from_utf8_avm_readdatavalid),
        .in_lm12843_eia608_from_utf8_avm_waitrequest(in_lm12843_eia608_from_utf8_avm_waitrequest),
        .in_lm12843_eia608_from_utf8_avm_writeack(in_lm12843_eia608_from_utf8_avm_writeack),
        .in_lm12964_eia608_from_utf8_avm_readdata(in_lm12964_eia608_from_utf8_avm_readdata),
        .in_lm12964_eia608_from_utf8_avm_readdatavalid(in_lm12964_eia608_from_utf8_avm_readdatavalid),
        .in_lm12964_eia608_from_utf8_avm_waitrequest(in_lm12964_eia608_from_utf8_avm_waitrequest),
        .in_lm12964_eia608_from_utf8_avm_writeack(in_lm12964_eia608_from_utf8_avm_writeack),
        .in_lm2_eia608_from_utf8_avm_readdata(in_lm2_eia608_from_utf8_avm_readdata),
        .in_lm2_eia608_from_utf8_avm_readdatavalid(in_lm2_eia608_from_utf8_avm_readdatavalid),
        .in_lm2_eia608_from_utf8_avm_waitrequest(in_lm2_eia608_from_utf8_avm_waitrequest),
        .in_lm2_eia608_from_utf8_avm_writeack(in_lm2_eia608_from_utf8_avm_writeack),
        .in_ml5_eia608_from_utf8_avm_readdata(in_ml5_eia608_from_utf8_avm_readdata),
        .in_ml5_eia608_from_utf8_avm_readdatavalid(in_ml5_eia608_from_utf8_avm_readdatavalid),
        .in_ml5_eia608_from_utf8_avm_waitrequest(in_ml5_eia608_from_utf8_avm_waitrequest),
        .in_ml5_eia608_from_utf8_avm_writeack(in_ml5_eia608_from_utf8_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_call_eia608_from_utf8_o_fifoready(bb_eia608_from_utf8_B1_start_out_iord_bl_call_eia608_from_utf8_o_fifoready),
        .out_iowr_bl_return_eia608_from_utf8_o_fifodata(bb_eia608_from_utf8_B1_start_out_iowr_bl_return_eia608_from_utf8_o_fifodata),
        .out_iowr_bl_return_eia608_from_utf8_o_fifovalid(bb_eia608_from_utf8_B1_start_out_iowr_bl_return_eia608_from_utf8_o_fifovalid),
        .out_lm12843_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_address),
        .out_lm12843_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_burstcount),
        .out_lm12843_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_byteenable),
        .out_lm12843_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_enable),
        .out_lm12843_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_read),
        .out_lm12843_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_write),
        .out_lm12843_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_writedata),
        .out_lm12964_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_address),
        .out_lm12964_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_burstcount),
        .out_lm12964_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_byteenable),
        .out_lm12964_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_enable),
        .out_lm12964_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_read),
        .out_lm12964_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_write),
        .out_lm12964_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_writedata),
        .out_lm2_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_address),
        .out_lm2_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_burstcount),
        .out_lm2_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_byteenable),
        .out_lm2_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_enable),
        .out_lm2_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_read),
        .out_lm2_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_write),
        .out_lm2_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_writedata),
        .out_ml5_eia608_from_utf8_avm_address(bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_address),
        .out_ml5_eia608_from_utf8_avm_burstcount(bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_burstcount),
        .out_ml5_eia608_from_utf8_avm_byteenable(bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_byteenable),
        .out_ml5_eia608_from_utf8_avm_enable(bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_enable),
        .out_ml5_eia608_from_utf8_avm_read(bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_read),
        .out_ml5_eia608_from_utf8_avm_write(bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_write),
        .out_ml5_eia608_from_utf8_avm_writedata(bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_writedata),
        .out_pipeline_valid_out(bb_eia608_from_utf8_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_eia608_from_utf8_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_eia608_from_utf8_o_fifoready(GPOUT,36)
    assign out_iord_bl_call_eia608_from_utf8_o_fifoready = bb_eia608_from_utf8_B1_start_out_iord_bl_call_eia608_from_utf8_o_fifoready;

    // out_iowr_bl_return_eia608_from_utf8_o_fifodata(GPOUT,37)
    assign out_iowr_bl_return_eia608_from_utf8_o_fifodata = bb_eia608_from_utf8_B1_start_out_iowr_bl_return_eia608_from_utf8_o_fifodata;

    // out_iowr_bl_return_eia608_from_utf8_o_fifovalid(GPOUT,38)
    assign out_iowr_bl_return_eia608_from_utf8_o_fifovalid = bb_eia608_from_utf8_B1_start_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;

    // out_lm12843_eia608_from_utf8_avm_address(GPOUT,39)
    assign out_lm12843_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_address;

    // out_lm12843_eia608_from_utf8_avm_burstcount(GPOUT,40)
    assign out_lm12843_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_burstcount;

    // out_lm12843_eia608_from_utf8_avm_byteenable(GPOUT,41)
    assign out_lm12843_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_byteenable;

    // out_lm12843_eia608_from_utf8_avm_enable(GPOUT,42)
    assign out_lm12843_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_enable;

    // out_lm12843_eia608_from_utf8_avm_read(GPOUT,43)
    assign out_lm12843_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_read;

    // out_lm12843_eia608_from_utf8_avm_write(GPOUT,44)
    assign out_lm12843_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_write;

    // out_lm12843_eia608_from_utf8_avm_writedata(GPOUT,45)
    assign out_lm12843_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_out_lm12843_eia608_from_utf8_avm_writedata;

    // out_lm12964_eia608_from_utf8_avm_address(GPOUT,46)
    assign out_lm12964_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_address;

    // out_lm12964_eia608_from_utf8_avm_burstcount(GPOUT,47)
    assign out_lm12964_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_burstcount;

    // out_lm12964_eia608_from_utf8_avm_byteenable(GPOUT,48)
    assign out_lm12964_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_byteenable;

    // out_lm12964_eia608_from_utf8_avm_enable(GPOUT,49)
    assign out_lm12964_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_enable;

    // out_lm12964_eia608_from_utf8_avm_read(GPOUT,50)
    assign out_lm12964_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_read;

    // out_lm12964_eia608_from_utf8_avm_write(GPOUT,51)
    assign out_lm12964_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_write;

    // out_lm12964_eia608_from_utf8_avm_writedata(GPOUT,52)
    assign out_lm12964_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_out_lm12964_eia608_from_utf8_avm_writedata;

    // out_lm2_eia608_from_utf8_avm_address(GPOUT,53)
    assign out_lm2_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_address;

    // out_lm2_eia608_from_utf8_avm_burstcount(GPOUT,54)
    assign out_lm2_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_burstcount;

    // out_lm2_eia608_from_utf8_avm_byteenable(GPOUT,55)
    assign out_lm2_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_byteenable;

    // out_lm2_eia608_from_utf8_avm_enable(GPOUT,56)
    assign out_lm2_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_enable;

    // out_lm2_eia608_from_utf8_avm_read(GPOUT,57)
    assign out_lm2_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_read;

    // out_lm2_eia608_from_utf8_avm_write(GPOUT,58)
    assign out_lm2_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_write;

    // out_lm2_eia608_from_utf8_avm_writedata(GPOUT,59)
    assign out_lm2_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_out_lm2_eia608_from_utf8_avm_writedata;

    // out_ml5_eia608_from_utf8_avm_address(GPOUT,60)
    assign out_ml5_eia608_from_utf8_avm_address = bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_address;

    // out_ml5_eia608_from_utf8_avm_burstcount(GPOUT,61)
    assign out_ml5_eia608_from_utf8_avm_burstcount = bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_burstcount;

    // out_ml5_eia608_from_utf8_avm_byteenable(GPOUT,62)
    assign out_ml5_eia608_from_utf8_avm_byteenable = bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_byteenable;

    // out_ml5_eia608_from_utf8_avm_enable(GPOUT,63)
    assign out_ml5_eia608_from_utf8_avm_enable = bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_enable;

    // out_ml5_eia608_from_utf8_avm_read(GPOUT,64)
    assign out_ml5_eia608_from_utf8_avm_read = bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_read;

    // out_ml5_eia608_from_utf8_avm_write(GPOUT,65)
    assign out_ml5_eia608_from_utf8_avm_write = bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_write;

    // out_ml5_eia608_from_utf8_avm_writedata(GPOUT,66)
    assign out_ml5_eia608_from_utf8_avm_writedata = bb_eia608_from_utf8_B1_start_out_ml5_eia608_from_utf8_avm_writedata;

    // bb_eia608_from_utf8_B0_runOnce(BLACKBOX,2)
    eia608_from_utf8_bb_B0_runOnce thebb_eia608_from_utf8_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_eia608_from_utf8_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,67)
    assign out_stall_out = bb_eia608_from_utf8_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,68)
    assign out_valid_out = GND_q;

endmodule
