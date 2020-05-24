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

// SystemVerilog created from main_function
// SystemVerilog created on Sun May 24 19:40:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_main_i_fifoready,
    input wire [63:0] in_memdep_1_main_avm_readdata,
    input wire [0:0] in_memdep_1_main_avm_readdatavalid,
    input wire [0:0] in_memdep_1_main_avm_waitrequest,
    input wire [0:0] in_memdep_1_main_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_main1_main_avm_readdata,
    input wire [0:0] in_unnamed_main1_main_avm_readdatavalid,
    input wire [0:0] in_unnamed_main1_main_avm_waitrequest,
    input wire [0:0] in_unnamed_main1_main_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    output wire [31:0] out_iowr_bl_return_main_o_fifodata,
    output wire [0:0] out_iowr_bl_return_main_o_fifovalid,
    output wire [63:0] out_memdep_1_main_avm_address,
    output wire [0:0] out_memdep_1_main_avm_burstcount,
    output wire [7:0] out_memdep_1_main_avm_byteenable,
    output wire [0:0] out_memdep_1_main_avm_enable,
    output wire [0:0] out_memdep_1_main_avm_read,
    output wire [0:0] out_memdep_1_main_avm_write,
    output wire [63:0] out_memdep_1_main_avm_writedata,
    output wire [0:0] out_o_active_memdep_1,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_main1_main_avm_address,
    output wire [0:0] out_unnamed_main1_main_avm_burstcount,
    output wire [7:0] out_unnamed_main1_main_avm_byteenable,
    output wire [0:0] out_unnamed_main1_main_avm_enable,
    output wire [0:0] out_unnamed_main1_main_avm_read,
    output wire [0:0] out_unnamed_main1_main_avm_write,
    output wire [63:0] out_unnamed_main1_main_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_main_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_main_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_main_B1_start_out_iord_bl_call_main_o_fifoready;
    wire [31:0] bb_main_B1_start_out_iowr_bl_return_main_o_fifodata;
    wire [0:0] bb_main_B1_start_out_iowr_bl_return_main_o_fifovalid;
    wire [0:0] bb_main_B1_start_out_lsu_memdep_1_o_active;
    wire [63:0] bb_main_B1_start_out_memdep_1_main_avm_address;
    wire [0:0] bb_main_B1_start_out_memdep_1_main_avm_burstcount;
    wire [7:0] bb_main_B1_start_out_memdep_1_main_avm_byteenable;
    wire [0:0] bb_main_B1_start_out_memdep_1_main_avm_enable;
    wire [0:0] bb_main_B1_start_out_memdep_1_main_avm_read;
    wire [0:0] bb_main_B1_start_out_memdep_1_main_avm_write;
    wire [63:0] bb_main_B1_start_out_memdep_1_main_avm_writedata;
    wire [0:0] bb_main_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_main_B1_start_out_stall_out_0;
    wire [0:0] bb_main_B1_start_out_stall_out_1;
    wire [63:0] bb_main_B1_start_out_unnamed_main1_main_avm_address;
    wire [0:0] bb_main_B1_start_out_unnamed_main1_main_avm_burstcount;
    wire [7:0] bb_main_B1_start_out_unnamed_main1_main_avm_byteenable;
    wire [0:0] bb_main_B1_start_out_unnamed_main1_main_avm_enable;
    wire [0:0] bb_main_B1_start_out_unnamed_main1_main_avm_read;
    wire [0:0] bb_main_B1_start_out_unnamed_main1_main_avm_write;
    wire [63:0] bb_main_B1_start_out_unnamed_main1_main_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_sr_out_o_valid;
    wire [0:0] bb_main_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_main_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_main_B1_start_sr_1_aunroll_x_out_o_data_0_tpl;


    // i_llvm_fpga_pipeline_keep_going_main0_sr(BLACKBOX,9)
    main_i_llvm_fpga_pipeline_keep_going_0_sr thei_llvm_fpga_pipeline_keep_going_main0_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_main_B1_start_out_stall_out_0),
        .in_i_valid(bb_main_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_main0_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_main0_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_main_B0_runOnce(BLACKBOX,2)
    main_bb_B0_runOnce thebb_main_B0_runOnce (
        .in_stall_in_0(bb_main_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_main_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_main_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_main_B1_start_sr_1_aunroll_x(BLACKBOX,46)
    main_bb_B1_start_sr_1 thebb_main_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_main_B1_start_out_stall_out_1),
        .in_i_valid(bb_main_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_main_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_main_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_main_B1_start_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_main_B1_start(BLACKBOX,3)
    main_bb_B1_start thebb_main_B1_start (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_main_B1_start_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .in_iowr_bl_return_main_i_fifoready(in_iowr_bl_return_main_i_fifoready),
        .in_memdep_1_main_avm_readdata(in_memdep_1_main_avm_readdata),
        .in_memdep_1_main_avm_readdatavalid(in_memdep_1_main_avm_readdatavalid),
        .in_memdep_1_main_avm_waitrequest(in_memdep_1_main_avm_waitrequest),
        .in_memdep_1_main_avm_writeack(in_memdep_1_main_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_main0_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_unnamed_main1_main_avm_readdata(in_unnamed_main1_main_avm_readdata),
        .in_unnamed_main1_main_avm_readdatavalid(in_unnamed_main1_main_avm_readdatavalid),
        .in_unnamed_main1_main_avm_waitrequest(in_unnamed_main1_main_avm_waitrequest),
        .in_unnamed_main1_main_avm_writeack(in_unnamed_main1_main_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_main0_sr_out_o_valid),
        .in_valid_in_1(bb_main_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_call_main_o_fifoready(bb_main_B1_start_out_iord_bl_call_main_o_fifoready),
        .out_iowr_bl_return_main_o_fifodata(bb_main_B1_start_out_iowr_bl_return_main_o_fifodata),
        .out_iowr_bl_return_main_o_fifovalid(bb_main_B1_start_out_iowr_bl_return_main_o_fifovalid),
        .out_lsu_memdep_1_o_active(bb_main_B1_start_out_lsu_memdep_1_o_active),
        .out_memdep_1_main_avm_address(bb_main_B1_start_out_memdep_1_main_avm_address),
        .out_memdep_1_main_avm_burstcount(bb_main_B1_start_out_memdep_1_main_avm_burstcount),
        .out_memdep_1_main_avm_byteenable(bb_main_B1_start_out_memdep_1_main_avm_byteenable),
        .out_memdep_1_main_avm_enable(bb_main_B1_start_out_memdep_1_main_avm_enable),
        .out_memdep_1_main_avm_read(bb_main_B1_start_out_memdep_1_main_avm_read),
        .out_memdep_1_main_avm_write(bb_main_B1_start_out_memdep_1_main_avm_write),
        .out_memdep_1_main_avm_writedata(bb_main_B1_start_out_memdep_1_main_avm_writedata),
        .out_pipeline_valid_out(bb_main_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_main_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_main_B1_start_out_stall_out_1),
        .out_unnamed_main1_main_avm_address(bb_main_B1_start_out_unnamed_main1_main_avm_address),
        .out_unnamed_main1_main_avm_burstcount(bb_main_B1_start_out_unnamed_main1_main_avm_burstcount),
        .out_unnamed_main1_main_avm_byteenable(bb_main_B1_start_out_unnamed_main1_main_avm_byteenable),
        .out_unnamed_main1_main_avm_enable(bb_main_B1_start_out_unnamed_main1_main_avm_enable),
        .out_unnamed_main1_main_avm_read(bb_main_B1_start_out_unnamed_main1_main_avm_read),
        .out_unnamed_main1_main_avm_write(bb_main_B1_start_out_unnamed_main1_main_avm_write),
        .out_unnamed_main1_main_avm_writedata(bb_main_B1_start_out_unnamed_main1_main_avm_writedata),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_main_o_fifoready(GPOUT,26)
    assign out_iord_bl_call_main_o_fifoready = bb_main_B1_start_out_iord_bl_call_main_o_fifoready;

    // out_iowr_bl_return_main_o_fifodata(GPOUT,27)
    assign out_iowr_bl_return_main_o_fifodata = bb_main_B1_start_out_iowr_bl_return_main_o_fifodata;

    // out_iowr_bl_return_main_o_fifovalid(GPOUT,28)
    assign out_iowr_bl_return_main_o_fifovalid = bb_main_B1_start_out_iowr_bl_return_main_o_fifovalid;

    // out_memdep_1_main_avm_address(GPOUT,29)
    assign out_memdep_1_main_avm_address = bb_main_B1_start_out_memdep_1_main_avm_address;

    // out_memdep_1_main_avm_burstcount(GPOUT,30)
    assign out_memdep_1_main_avm_burstcount = bb_main_B1_start_out_memdep_1_main_avm_burstcount;

    // out_memdep_1_main_avm_byteenable(GPOUT,31)
    assign out_memdep_1_main_avm_byteenable = bb_main_B1_start_out_memdep_1_main_avm_byteenable;

    // out_memdep_1_main_avm_enable(GPOUT,32)
    assign out_memdep_1_main_avm_enable = bb_main_B1_start_out_memdep_1_main_avm_enable;

    // out_memdep_1_main_avm_read(GPOUT,33)
    assign out_memdep_1_main_avm_read = bb_main_B1_start_out_memdep_1_main_avm_read;

    // out_memdep_1_main_avm_write(GPOUT,34)
    assign out_memdep_1_main_avm_write = bb_main_B1_start_out_memdep_1_main_avm_write;

    // out_memdep_1_main_avm_writedata(GPOUT,35)
    assign out_memdep_1_main_avm_writedata = bb_main_B1_start_out_memdep_1_main_avm_writedata;

    // out_o_active_memdep_1(GPOUT,36)
    assign out_o_active_memdep_1 = bb_main_B1_start_out_lsu_memdep_1_o_active;

    // out_stall_out(GPOUT,37)
    assign out_stall_out = bb_main_B0_runOnce_out_stall_out_0;

    // out_unnamed_main1_main_avm_address(GPOUT,38)
    assign out_unnamed_main1_main_avm_address = bb_main_B1_start_out_unnamed_main1_main_avm_address;

    // out_unnamed_main1_main_avm_burstcount(GPOUT,39)
    assign out_unnamed_main1_main_avm_burstcount = bb_main_B1_start_out_unnamed_main1_main_avm_burstcount;

    // out_unnamed_main1_main_avm_byteenable(GPOUT,40)
    assign out_unnamed_main1_main_avm_byteenable = bb_main_B1_start_out_unnamed_main1_main_avm_byteenable;

    // out_unnamed_main1_main_avm_enable(GPOUT,41)
    assign out_unnamed_main1_main_avm_enable = bb_main_B1_start_out_unnamed_main1_main_avm_enable;

    // out_unnamed_main1_main_avm_read(GPOUT,42)
    assign out_unnamed_main1_main_avm_read = bb_main_B1_start_out_unnamed_main1_main_avm_read;

    // out_unnamed_main1_main_avm_write(GPOUT,43)
    assign out_unnamed_main1_main_avm_write = bb_main_B1_start_out_unnamed_main1_main_avm_write;

    // out_unnamed_main1_main_avm_writedata(GPOUT,44)
    assign out_unnamed_main1_main_avm_writedata = bb_main_B1_start_out_unnamed_main1_main_avm_writedata;

    // out_valid_out(GPOUT,45)
    assign out_valid_out = GND_q;

endmodule
