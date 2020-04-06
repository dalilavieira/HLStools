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

// SystemVerilog created from dijkstra_i_iowr_bl_return_unnamed_dijkstra57_dijkstra0
// SystemVerilog created on Mon Apr  6 11:16:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_i_iowr_bl_return_unnamed_dijkstra57_dijkstra0 (
    input wire [0:0] in_iowr_bl_return_dijkstra_i_fifoready,
    output wire [0:0] out_iowr_bl_return_dijkstra_o_fifodata,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_iowr_bl_return_dijkstra_o_fifovalid,
    output wire [0:0] out_o_ack,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c32_0_q;
    wire [6:0] c_i7_02_q;
    wire [7:0] element_extension1_q;
    wire [0:0] iowr_i_data;
    wire [0:0] iowr_i_endofpacket;
    wire iowr_i_endofpacket_bitsignaltemp;
    wire [0:0] iowr_i_fifoready;
    wire iowr_i_fifoready_bitsignaltemp;
    wire [31:0] iowr_i_fifosize;
    wire [31:0] iowr_i_packetempty;
    wire [0:0] iowr_i_predicate;
    wire iowr_i_predicate_bitsignaltemp;
    wire [0:0] iowr_i_stall;
    wire iowr_i_stall_bitsignaltemp;
    wire [0:0] iowr_i_startofpacket;
    wire iowr_i_startofpacket_bitsignaltemp;
    wire [0:0] iowr_i_valid;
    wire iowr_i_valid_bitsignaltemp;
    wire [0:0] iowr_o_ack;
    wire iowr_o_ack_bitsignaltemp;
    wire [0:0] iowr_o_fifodata;
    wire [0:0] iowr_o_fifoempty;
    wire [0:0] iowr_o_fifovalid;
    wire iowr_o_fifovalid_bitsignaltemp;
    wire [0:0] iowr_o_stall;
    wire iowr_o_stall_bitsignaltemp;
    wire [0:0] iowr_o_valid;
    wire iowr_o_valid_bitsignaltemp;
    wire [31:0] iowr_profile_total_fifo_size_incr;


    // c32_0(CONSTANT,2)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i7_02(CONSTANT,4)
    assign c_i7_02_q = $unsigned(7'b0000000);

    // element_extension1(BITJOIN,6)
    assign element_extension1_q = {c_i7_02_q, in_i_data};

    // iowr(EXTIFACE,7)
    assign iowr_i_data = element_extension1_q[0:0];
    assign iowr_i_endofpacket = GND_q;
    assign iowr_i_fifoready = in_iowr_bl_return_dijkstra_i_fifoready;
    assign iowr_i_fifosize = c32_0_q;
    assign iowr_i_packetempty = c32_0_q;
    assign iowr_i_predicate = GND_q;
    assign iowr_i_stall = in_i_stall;
    assign iowr_i_startofpacket = GND_q;
    assign iowr_i_valid = in_i_valid;
    assign iowr_i_endofpacket_bitsignaltemp = iowr_i_endofpacket[0];
    assign iowr_i_fifoready_bitsignaltemp = iowr_i_fifoready[0];
    assign iowr_i_predicate_bitsignaltemp = iowr_i_predicate[0];
    assign iowr_i_stall_bitsignaltemp = iowr_i_stall[0];
    assign iowr_i_startofpacket_bitsignaltemp = iowr_i_startofpacket[0];
    assign iowr_i_valid_bitsignaltemp = iowr_i_valid[0];
    assign iowr_o_ack[0] = iowr_o_ack_bitsignaltemp;
    assign iowr_o_fifovalid[0] = iowr_o_fifovalid_bitsignaltemp;
    assign iowr_o_stall[0] = iowr_o_stall_bitsignaltemp;
    assign iowr_o_valid[0] = iowr_o_valid_bitsignaltemp;
    st_write #(
        .ASYNC_RESET(1),
        .DATA_WIDTH(1),
        .DELAY_READY(0),
        .EMPTY_WIDTH(0),
        .ENABLED(0),
        .NON_BLOCKING(0),
        .SYNCHRONIZE_RESET(0)
    ) theiowr (
        .i_data(element_extension1_q[0:0]),
        .i_endofpacket(iowr_i_endofpacket_bitsignaltemp),
        .i_fifoready(iowr_i_fifoready_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_packetempty(c32_0_q),
        .i_predicate(iowr_i_predicate_bitsignaltemp),
        .i_stall(iowr_i_stall_bitsignaltemp),
        .i_startofpacket(iowr_i_startofpacket_bitsignaltemp),
        .i_valid(iowr_i_valid_bitsignaltemp),
        .o_ack(iowr_o_ack_bitsignaltemp),
        .o_fifodata(iowr_o_fifodata),
        .o_fifoempty(),
        .o_fifovalid(iowr_o_fifovalid_bitsignaltemp),
        .o_stall(iowr_o_stall_bitsignaltemp),
        .o_valid(iowr_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,9)
    assign out_iowr_bl_return_dijkstra_o_fifodata = iowr_o_fifodata;

    // sync_out(GPOUT,11)@20000000
    assign out_o_stall = iowr_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,14)
    assign out_iowr_bl_return_dijkstra_o_fifovalid = iowr_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,15)@0
    assign out_o_ack = iowr_o_ack;
    assign out_o_valid = iowr_o_valid;

endmodule
