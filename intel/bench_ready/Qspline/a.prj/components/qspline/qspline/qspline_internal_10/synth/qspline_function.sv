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

// SystemVerilog created from qspline_function
// SystemVerilog created on Mon Apr 27 09:53:34 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module qspline_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [31:0] in_iord_bl_call_qspline_i_fifodata,
    input wire [0:0] in_iord_bl_call_qspline_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_qspline_i_fifoready,
    input wire [15:0] in_memdep_1_qspline_avm_readdata,
    input wire [0:0] in_memdep_1_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_1_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_1_qspline_avm_writeack,
    input wire [15:0] in_memdep_2_qspline_avm_readdata,
    input wire [0:0] in_memdep_2_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_2_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_2_qspline_avm_writeack,
    input wire [15:0] in_memdep_3_qspline_avm_readdata,
    input wire [0:0] in_memdep_3_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_3_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_3_qspline_avm_writeack,
    input wire [15:0] in_memdep_4_qspline_avm_readdata,
    input wire [0:0] in_memdep_4_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_4_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_4_qspline_avm_writeack,
    input wire [15:0] in_memdep_5_qspline_avm_readdata,
    input wire [0:0] in_memdep_5_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_5_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_5_qspline_avm_writeack,
    input wire [15:0] in_memdep_6_qspline_avm_readdata,
    input wire [0:0] in_memdep_6_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_6_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_6_qspline_avm_writeack,
    input wire [15:0] in_memdep_7_qspline_avm_readdata,
    input wire [0:0] in_memdep_7_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_7_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_7_qspline_avm_writeack,
    input wire [15:0] in_memdep_qspline_avm_readdata,
    input wire [0:0] in_memdep_qspline_avm_readdatavalid,
    input wire [0:0] in_memdep_qspline_avm_waitrequest,
    input wire [0:0] in_memdep_qspline_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [15:0] in_unnamed_qspline10_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline10_qspline_avm_readdatavalid,
    input wire [0:0] in_unnamed_qspline10_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline10_qspline_avm_writeack,
    input wire [15:0] in_unnamed_qspline11_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline11_qspline_avm_readdatavalid,
    input wire [0:0] in_unnamed_qspline11_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline11_qspline_avm_writeack,
    input wire [15:0] in_unnamed_qspline12_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline12_qspline_avm_readdatavalid,
    input wire [0:0] in_unnamed_qspline12_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline12_qspline_avm_writeack,
    input wire [15:0] in_unnamed_qspline5_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline5_qspline_avm_readdatavalid,
    input wire [0:0] in_unnamed_qspline5_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline5_qspline_avm_writeack,
    input wire [15:0] in_unnamed_qspline7_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline7_qspline_avm_readdatavalid,
    input wire [0:0] in_unnamed_qspline7_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline7_qspline_avm_writeack,
    input wire [15:0] in_unnamed_qspline8_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline8_qspline_avm_readdatavalid,
    input wire [0:0] in_unnamed_qspline8_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline8_qspline_avm_writeack,
    input wire [15:0] in_unnamed_qspline9_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline9_qspline_avm_readdatavalid,
    input wire [0:0] in_unnamed_qspline9_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline9_qspline_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_qspline_o_fifoready,
    output wire [31:0] out_iowr_bl_return_qspline_o_fifodata,
    output wire [0:0] out_iowr_bl_return_qspline_o_fifovalid,
    output wire [31:0] out_memdep_1_qspline_avm_address,
    output wire [0:0] out_memdep_1_qspline_avm_burstcount,
    output wire [1:0] out_memdep_1_qspline_avm_byteenable,
    output wire [0:0] out_memdep_1_qspline_avm_enable,
    output wire [0:0] out_memdep_1_qspline_avm_read,
    output wire [0:0] out_memdep_1_qspline_avm_write,
    output wire [15:0] out_memdep_1_qspline_avm_writedata,
    output wire [31:0] out_memdep_2_qspline_avm_address,
    output wire [0:0] out_memdep_2_qspline_avm_burstcount,
    output wire [1:0] out_memdep_2_qspline_avm_byteenable,
    output wire [0:0] out_memdep_2_qspline_avm_enable,
    output wire [0:0] out_memdep_2_qspline_avm_read,
    output wire [0:0] out_memdep_2_qspline_avm_write,
    output wire [15:0] out_memdep_2_qspline_avm_writedata,
    output wire [31:0] out_memdep_3_qspline_avm_address,
    output wire [0:0] out_memdep_3_qspline_avm_burstcount,
    output wire [1:0] out_memdep_3_qspline_avm_byteenable,
    output wire [0:0] out_memdep_3_qspline_avm_enable,
    output wire [0:0] out_memdep_3_qspline_avm_read,
    output wire [0:0] out_memdep_3_qspline_avm_write,
    output wire [15:0] out_memdep_3_qspline_avm_writedata,
    output wire [31:0] out_memdep_4_qspline_avm_address,
    output wire [0:0] out_memdep_4_qspline_avm_burstcount,
    output wire [1:0] out_memdep_4_qspline_avm_byteenable,
    output wire [0:0] out_memdep_4_qspline_avm_enable,
    output wire [0:0] out_memdep_4_qspline_avm_read,
    output wire [0:0] out_memdep_4_qspline_avm_write,
    output wire [15:0] out_memdep_4_qspline_avm_writedata,
    output wire [31:0] out_memdep_5_qspline_avm_address,
    output wire [0:0] out_memdep_5_qspline_avm_burstcount,
    output wire [1:0] out_memdep_5_qspline_avm_byteenable,
    output wire [0:0] out_memdep_5_qspline_avm_enable,
    output wire [0:0] out_memdep_5_qspline_avm_read,
    output wire [0:0] out_memdep_5_qspline_avm_write,
    output wire [15:0] out_memdep_5_qspline_avm_writedata,
    output wire [31:0] out_memdep_6_qspline_avm_address,
    output wire [0:0] out_memdep_6_qspline_avm_burstcount,
    output wire [1:0] out_memdep_6_qspline_avm_byteenable,
    output wire [0:0] out_memdep_6_qspline_avm_enable,
    output wire [0:0] out_memdep_6_qspline_avm_read,
    output wire [0:0] out_memdep_6_qspline_avm_write,
    output wire [15:0] out_memdep_6_qspline_avm_writedata,
    output wire [31:0] out_memdep_7_qspline_avm_address,
    output wire [0:0] out_memdep_7_qspline_avm_burstcount,
    output wire [1:0] out_memdep_7_qspline_avm_byteenable,
    output wire [0:0] out_memdep_7_qspline_avm_enable,
    output wire [0:0] out_memdep_7_qspline_avm_read,
    output wire [0:0] out_memdep_7_qspline_avm_write,
    output wire [15:0] out_memdep_7_qspline_avm_writedata,
    output wire [31:0] out_memdep_qspline_avm_address,
    output wire [0:0] out_memdep_qspline_avm_burstcount,
    output wire [1:0] out_memdep_qspline_avm_byteenable,
    output wire [0:0] out_memdep_qspline_avm_enable,
    output wire [0:0] out_memdep_qspline_avm_read,
    output wire [0:0] out_memdep_qspline_avm_write,
    output wire [15:0] out_memdep_qspline_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_qspline10_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_burstcount,
    output wire [1:0] out_unnamed_qspline10_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline10_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline10_qspline_avm_writedata,
    output wire [31:0] out_unnamed_qspline11_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_burstcount,
    output wire [1:0] out_unnamed_qspline11_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline11_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline11_qspline_avm_writedata,
    output wire [31:0] out_unnamed_qspline12_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_burstcount,
    output wire [1:0] out_unnamed_qspline12_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline12_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline12_qspline_avm_writedata,
    output wire [31:0] out_unnamed_qspline5_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_burstcount,
    output wire [1:0] out_unnamed_qspline5_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline5_qspline_avm_writedata,
    output wire [31:0] out_unnamed_qspline7_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_burstcount,
    output wire [1:0] out_unnamed_qspline7_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline7_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline7_qspline_avm_writedata,
    output wire [31:0] out_unnamed_qspline8_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_burstcount,
    output wire [1:0] out_unnamed_qspline8_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline8_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline8_qspline_avm_writedata,
    output wire [31:0] out_unnamed_qspline9_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_burstcount,
    output wire [1:0] out_unnamed_qspline9_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline9_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline9_qspline_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_qspline_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_qspline_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_qspline_B1_start_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_qspline_B1_start_out_iord_bl_call_qspline_o_fifoready;
    wire [0:0] bb_qspline_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_qspline_B1_start_out_stall_out_0;
    wire [0:0] bb_qspline_B1_start_out_valid_out_0;
    wire [0:0] bb_qspline_B2_out_stall_out_0;
    wire [0:0] bb_qspline_B2_out_valid_out_0;
    wire [0:0] bb_qspline_B3_out_exiting_stall_out;
    wire [0:0] bb_qspline_B3_out_exiting_valid_out;
    wire [31:0] bb_qspline_B3_out_memdep_1_qspline_avm_address;
    wire [0:0] bb_qspline_B3_out_memdep_1_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B3_out_memdep_1_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B3_out_memdep_1_qspline_avm_enable;
    wire [0:0] bb_qspline_B3_out_memdep_1_qspline_avm_read;
    wire [0:0] bb_qspline_B3_out_memdep_1_qspline_avm_write;
    wire [15:0] bb_qspline_B3_out_memdep_1_qspline_avm_writedata;
    wire [31:0] bb_qspline_B3_out_memdep_2_qspline_avm_address;
    wire [0:0] bb_qspline_B3_out_memdep_2_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B3_out_memdep_2_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B3_out_memdep_2_qspline_avm_enable;
    wire [0:0] bb_qspline_B3_out_memdep_2_qspline_avm_read;
    wire [0:0] bb_qspline_B3_out_memdep_2_qspline_avm_write;
    wire [15:0] bb_qspline_B3_out_memdep_2_qspline_avm_writedata;
    wire [31:0] bb_qspline_B3_out_memdep_3_qspline_avm_address;
    wire [0:0] bb_qspline_B3_out_memdep_3_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B3_out_memdep_3_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B3_out_memdep_3_qspline_avm_enable;
    wire [0:0] bb_qspline_B3_out_memdep_3_qspline_avm_read;
    wire [0:0] bb_qspline_B3_out_memdep_3_qspline_avm_write;
    wire [15:0] bb_qspline_B3_out_memdep_3_qspline_avm_writedata;
    wire [31:0] bb_qspline_B3_out_memdep_4_qspline_avm_address;
    wire [0:0] bb_qspline_B3_out_memdep_4_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B3_out_memdep_4_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B3_out_memdep_4_qspline_avm_enable;
    wire [0:0] bb_qspline_B3_out_memdep_4_qspline_avm_read;
    wire [0:0] bb_qspline_B3_out_memdep_4_qspline_avm_write;
    wire [15:0] bb_qspline_B3_out_memdep_4_qspline_avm_writedata;
    wire [31:0] bb_qspline_B3_out_memdep_5_qspline_avm_address;
    wire [0:0] bb_qspline_B3_out_memdep_5_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B3_out_memdep_5_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B3_out_memdep_5_qspline_avm_enable;
    wire [0:0] bb_qspline_B3_out_memdep_5_qspline_avm_read;
    wire [0:0] bb_qspline_B3_out_memdep_5_qspline_avm_write;
    wire [15:0] bb_qspline_B3_out_memdep_5_qspline_avm_writedata;
    wire [31:0] bb_qspline_B3_out_memdep_6_qspline_avm_address;
    wire [0:0] bb_qspline_B3_out_memdep_6_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B3_out_memdep_6_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B3_out_memdep_6_qspline_avm_enable;
    wire [0:0] bb_qspline_B3_out_memdep_6_qspline_avm_read;
    wire [0:0] bb_qspline_B3_out_memdep_6_qspline_avm_write;
    wire [15:0] bb_qspline_B3_out_memdep_6_qspline_avm_writedata;
    wire [31:0] bb_qspline_B3_out_memdep_qspline_avm_address;
    wire [0:0] bb_qspline_B3_out_memdep_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B3_out_memdep_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B3_out_memdep_qspline_avm_enable;
    wire [0:0] bb_qspline_B3_out_memdep_qspline_avm_read;
    wire [0:0] bb_qspline_B3_out_memdep_qspline_avm_write;
    wire [15:0] bb_qspline_B3_out_memdep_qspline_avm_writedata;
    wire [0:0] bb_qspline_B3_out_pipeline_valid_out;
    wire [0:0] bb_qspline_B3_out_stall_out_0;
    wire [0:0] bb_qspline_B3_out_stall_out_1;
    wire [0:0] bb_qspline_B3_out_valid_out_0;
    wire [0:0] bb_qspline_B4_out_c0_exe285;
    wire [0:0] bb_qspline_B4_out_exiting_stall_out;
    wire [0:0] bb_qspline_B4_out_exiting_valid_out;
    wire [0:0] bb_qspline_B4_out_pipeline_valid_out;
    wire [0:0] bb_qspline_B4_out_stall_out_0;
    wire [0:0] bb_qspline_B4_out_stall_out_1;
    wire [0:0] bb_qspline_B4_out_valid_out_0;
    wire [0:0] bb_qspline_B5_out_feedback_out_1;
    wire [0:0] bb_qspline_B5_out_feedback_valid_out_1;
    wire [31:0] bb_qspline_B5_out_iowr_bl_return_qspline_o_fifodata;
    wire [0:0] bb_qspline_B5_out_iowr_bl_return_qspline_o_fifovalid;
    wire [0:0] bb_qspline_B5_out_stall_out_0;
    wire [31:0] bb_qspline_B5_out_unnamed_qspline5_qspline_avm_address;
    wire [0:0] bb_qspline_B5_out_unnamed_qspline5_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B5_out_unnamed_qspline5_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B5_out_unnamed_qspline5_qspline_avm_enable;
    wire [0:0] bb_qspline_B5_out_unnamed_qspline5_qspline_avm_read;
    wire [0:0] bb_qspline_B5_out_unnamed_qspline5_qspline_avm_write;
    wire [15:0] bb_qspline_B5_out_unnamed_qspline5_qspline_avm_writedata;
    wire [0:0] bb_qspline_B6_out_stall_out_0;
    wire [0:0] bb_qspline_B6_out_valid_out_0;
    wire [0:0] bb_qspline_B7_out_c0_exe3;
    wire [0:0] bb_qspline_B7_out_exiting_stall_out;
    wire [0:0] bb_qspline_B7_out_exiting_valid_out;
    wire [31:0] bb_qspline_B7_out_memdep_7_qspline_avm_address;
    wire [0:0] bb_qspline_B7_out_memdep_7_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B7_out_memdep_7_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B7_out_memdep_7_qspline_avm_enable;
    wire [0:0] bb_qspline_B7_out_memdep_7_qspline_avm_read;
    wire [0:0] bb_qspline_B7_out_memdep_7_qspline_avm_write;
    wire [15:0] bb_qspline_B7_out_memdep_7_qspline_avm_writedata;
    wire [0:0] bb_qspline_B7_out_pipeline_valid_out;
    wire [0:0] bb_qspline_B7_out_stall_out_0;
    wire [0:0] bb_qspline_B7_out_stall_out_1;
    wire [31:0] bb_qspline_B7_out_unnamed_qspline10_qspline_avm_address;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline10_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B7_out_unnamed_qspline10_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline10_qspline_avm_enable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline10_qspline_avm_read;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline10_qspline_avm_write;
    wire [15:0] bb_qspline_B7_out_unnamed_qspline10_qspline_avm_writedata;
    wire [31:0] bb_qspline_B7_out_unnamed_qspline11_qspline_avm_address;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline11_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B7_out_unnamed_qspline11_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline11_qspline_avm_enable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline11_qspline_avm_read;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline11_qspline_avm_write;
    wire [15:0] bb_qspline_B7_out_unnamed_qspline11_qspline_avm_writedata;
    wire [31:0] bb_qspline_B7_out_unnamed_qspline12_qspline_avm_address;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline12_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B7_out_unnamed_qspline12_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline12_qspline_avm_enable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline12_qspline_avm_read;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline12_qspline_avm_write;
    wire [15:0] bb_qspline_B7_out_unnamed_qspline12_qspline_avm_writedata;
    wire [31:0] bb_qspline_B7_out_unnamed_qspline7_qspline_avm_address;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline7_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B7_out_unnamed_qspline7_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline7_qspline_avm_enable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline7_qspline_avm_read;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline7_qspline_avm_write;
    wire [15:0] bb_qspline_B7_out_unnamed_qspline7_qspline_avm_writedata;
    wire [31:0] bb_qspline_B7_out_unnamed_qspline8_qspline_avm_address;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline8_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B7_out_unnamed_qspline8_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline8_qspline_avm_enable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline8_qspline_avm_read;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline8_qspline_avm_write;
    wire [15:0] bb_qspline_B7_out_unnamed_qspline8_qspline_avm_writedata;
    wire [31:0] bb_qspline_B7_out_unnamed_qspline9_qspline_avm_address;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline9_qspline_avm_burstcount;
    wire [1:0] bb_qspline_B7_out_unnamed_qspline9_qspline_avm_byteenable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline9_qspline_avm_enable;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline9_qspline_avm_read;
    wire [0:0] bb_qspline_B7_out_unnamed_qspline9_qspline_avm_write;
    wire [15:0] bb_qspline_B7_out_unnamed_qspline9_qspline_avm_writedata;
    wire [0:0] bb_qspline_B7_out_valid_out_0;
    wire [1:0] c_i2_019_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_qspline2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_qspline2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_qspline1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_qspline1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_qspline0_out_o_stall;
    wire [0:0] loop_limiter_qspline0_out_o_valid;
    wire [0:0] loop_limiter_qspline1_out_o_stall;
    wire [0:0] loop_limiter_qspline1_out_o_valid;
    wire [0:0] loop_limiter_qspline2_out_o_stall;
    wire [0:0] loop_limiter_qspline2_out_o_valid;
    wire [0:0] bb_qspline_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_qspline_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_qspline_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_qspline_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_qspline_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_qspline_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_qspline_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_qspline_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_qspline_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_qspline_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_qspline_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_qspline_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_qspline_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_qspline_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_qspline_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_qspline_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_qspline_B7_sr_1_aunroll_x_out_o_data_1_tpl;


    // c_i2_019(CONSTANT,28)
    assign c_i2_019_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo(BLACKBOX,38)
    qspline_i_llvm_fpga_pipeline_keep_going51_1_valid_fifo thei_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_qspline_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going51_qspline1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo(BLACKBOX,36)
    qspline_i_llvm_fpga_pipeline_keep_going32_6_valid_fifo thei_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_qspline_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going32_qspline6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo(BLACKBOX,34)
    qspline_i_llvm_fpga_pipeline_keep_going25_2_valid_fifo thei_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_qspline_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going25_qspline2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo(BLACKBOX,40)
    qspline_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_qspline_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_qspline6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B5_sr_0_aunroll_x(BLACKBOX,225)
    qspline_bb_B5_sr_0 thebb_qspline_B5_sr_0_aunroll_x (
        .in_i_stall(bb_qspline_B5_out_stall_out_0),
        .in_i_valid(bb_qspline_B6_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_qspline_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_qspline_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B6(BLACKBOX,8)
    qspline_bb_B6 thebb_qspline_B6 (
        .in_c0_exe31_0(bb_qspline_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_qspline_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_qspline_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_qspline_B6_out_stall_out_0),
        .out_valid_out_0(bb_qspline_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B6_sr_0_aunroll_x(BLACKBOX,226)
    qspline_bb_B6_sr_0 thebb_qspline_B6_sr_0_aunroll_x (
        .in_i_stall(bb_qspline_B6_out_stall_out_0),
        .in_i_valid(bb_qspline_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_qspline_B7_out_c0_exe3),
        .out_o_stall(bb_qspline_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_qspline_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_qspline_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_qspline6_sr(BLACKBOX,39)
    qspline_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_qspline6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo_out_stall_out),
        .in_i_valid(bb_qspline_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_qspline6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_qspline6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B7(BLACKBOX,9)
    qspline_bb_B7 thebb_qspline_B7 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_qspline_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_7_qspline_avm_readdata(in_memdep_7_qspline_avm_readdata),
        .in_memdep_7_qspline_avm_readdatavalid(in_memdep_7_qspline_avm_readdatavalid),
        .in_memdep_7_qspline_avm_waitrequest(in_memdep_7_qspline_avm_waitrequest),
        .in_memdep_7_qspline_avm_writeack(in_memdep_7_qspline_avm_writeack),
        .in_notcmp2372_0(GND_q),
        .in_notcmp2372_1(bb_qspline_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_qspline6_sr_out_o_stall),
        .in_stall_in_0(bb_qspline_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_qspline10_qspline_avm_readdata(in_unnamed_qspline10_qspline_avm_readdata),
        .in_unnamed_qspline10_qspline_avm_readdatavalid(in_unnamed_qspline10_qspline_avm_readdatavalid),
        .in_unnamed_qspline10_qspline_avm_waitrequest(in_unnamed_qspline10_qspline_avm_waitrequest),
        .in_unnamed_qspline10_qspline_avm_writeack(in_unnamed_qspline10_qspline_avm_writeack),
        .in_unnamed_qspline11_qspline_avm_readdata(in_unnamed_qspline11_qspline_avm_readdata),
        .in_unnamed_qspline11_qspline_avm_readdatavalid(in_unnamed_qspline11_qspline_avm_readdatavalid),
        .in_unnamed_qspline11_qspline_avm_waitrequest(in_unnamed_qspline11_qspline_avm_waitrequest),
        .in_unnamed_qspline11_qspline_avm_writeack(in_unnamed_qspline11_qspline_avm_writeack),
        .in_unnamed_qspline12_qspline_avm_readdata(in_unnamed_qspline12_qspline_avm_readdata),
        .in_unnamed_qspline12_qspline_avm_readdatavalid(in_unnamed_qspline12_qspline_avm_readdatavalid),
        .in_unnamed_qspline12_qspline_avm_waitrequest(in_unnamed_qspline12_qspline_avm_waitrequest),
        .in_unnamed_qspline12_qspline_avm_writeack(in_unnamed_qspline12_qspline_avm_writeack),
        .in_unnamed_qspline7_qspline_avm_readdata(in_unnamed_qspline7_qspline_avm_readdata),
        .in_unnamed_qspline7_qspline_avm_readdatavalid(in_unnamed_qspline7_qspline_avm_readdatavalid),
        .in_unnamed_qspline7_qspline_avm_waitrequest(in_unnamed_qspline7_qspline_avm_waitrequest),
        .in_unnamed_qspline7_qspline_avm_writeack(in_unnamed_qspline7_qspline_avm_writeack),
        .in_unnamed_qspline8_qspline_avm_readdata(in_unnamed_qspline8_qspline_avm_readdata),
        .in_unnamed_qspline8_qspline_avm_readdatavalid(in_unnamed_qspline8_qspline_avm_readdatavalid),
        .in_unnamed_qspline8_qspline_avm_waitrequest(in_unnamed_qspline8_qspline_avm_waitrequest),
        .in_unnamed_qspline8_qspline_avm_writeack(in_unnamed_qspline8_qspline_avm_writeack),
        .in_unnamed_qspline9_qspline_avm_readdata(in_unnamed_qspline9_qspline_avm_readdata),
        .in_unnamed_qspline9_qspline_avm_readdatavalid(in_unnamed_qspline9_qspline_avm_readdatavalid),
        .in_unnamed_qspline9_qspline_avm_waitrequest(in_unnamed_qspline9_qspline_avm_waitrequest),
        .in_unnamed_qspline9_qspline_avm_writeack(in_unnamed_qspline9_qspline_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_qspline6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_qspline_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3(bb_qspline_B7_out_c0_exe3),
        .out_exiting_stall_out(bb_qspline_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_qspline_B7_out_exiting_valid_out),
        .out_memdep_7_qspline_avm_address(bb_qspline_B7_out_memdep_7_qspline_avm_address),
        .out_memdep_7_qspline_avm_burstcount(bb_qspline_B7_out_memdep_7_qspline_avm_burstcount),
        .out_memdep_7_qspline_avm_byteenable(bb_qspline_B7_out_memdep_7_qspline_avm_byteenable),
        .out_memdep_7_qspline_avm_enable(bb_qspline_B7_out_memdep_7_qspline_avm_enable),
        .out_memdep_7_qspline_avm_read(bb_qspline_B7_out_memdep_7_qspline_avm_read),
        .out_memdep_7_qspline_avm_write(bb_qspline_B7_out_memdep_7_qspline_avm_write),
        .out_memdep_7_qspline_avm_writedata(bb_qspline_B7_out_memdep_7_qspline_avm_writedata),
        .out_pipeline_valid_out(bb_qspline_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_qspline_B7_out_stall_out_0),
        .out_stall_out_1(bb_qspline_B7_out_stall_out_1),
        .out_unnamed_qspline10_qspline_avm_address(bb_qspline_B7_out_unnamed_qspline10_qspline_avm_address),
        .out_unnamed_qspline10_qspline_avm_burstcount(bb_qspline_B7_out_unnamed_qspline10_qspline_avm_burstcount),
        .out_unnamed_qspline10_qspline_avm_byteenable(bb_qspline_B7_out_unnamed_qspline10_qspline_avm_byteenable),
        .out_unnamed_qspline10_qspline_avm_enable(bb_qspline_B7_out_unnamed_qspline10_qspline_avm_enable),
        .out_unnamed_qspline10_qspline_avm_read(bb_qspline_B7_out_unnamed_qspline10_qspline_avm_read),
        .out_unnamed_qspline10_qspline_avm_write(bb_qspline_B7_out_unnamed_qspline10_qspline_avm_write),
        .out_unnamed_qspline10_qspline_avm_writedata(bb_qspline_B7_out_unnamed_qspline10_qspline_avm_writedata),
        .out_unnamed_qspline11_qspline_avm_address(bb_qspline_B7_out_unnamed_qspline11_qspline_avm_address),
        .out_unnamed_qspline11_qspline_avm_burstcount(bb_qspline_B7_out_unnamed_qspline11_qspline_avm_burstcount),
        .out_unnamed_qspline11_qspline_avm_byteenable(bb_qspline_B7_out_unnamed_qspline11_qspline_avm_byteenable),
        .out_unnamed_qspline11_qspline_avm_enable(bb_qspline_B7_out_unnamed_qspline11_qspline_avm_enable),
        .out_unnamed_qspline11_qspline_avm_read(bb_qspline_B7_out_unnamed_qspline11_qspline_avm_read),
        .out_unnamed_qspline11_qspline_avm_write(bb_qspline_B7_out_unnamed_qspline11_qspline_avm_write),
        .out_unnamed_qspline11_qspline_avm_writedata(bb_qspline_B7_out_unnamed_qspline11_qspline_avm_writedata),
        .out_unnamed_qspline12_qspline_avm_address(bb_qspline_B7_out_unnamed_qspline12_qspline_avm_address),
        .out_unnamed_qspline12_qspline_avm_burstcount(bb_qspline_B7_out_unnamed_qspline12_qspline_avm_burstcount),
        .out_unnamed_qspline12_qspline_avm_byteenable(bb_qspline_B7_out_unnamed_qspline12_qspline_avm_byteenable),
        .out_unnamed_qspline12_qspline_avm_enable(bb_qspline_B7_out_unnamed_qspline12_qspline_avm_enable),
        .out_unnamed_qspline12_qspline_avm_read(bb_qspline_B7_out_unnamed_qspline12_qspline_avm_read),
        .out_unnamed_qspline12_qspline_avm_write(bb_qspline_B7_out_unnamed_qspline12_qspline_avm_write),
        .out_unnamed_qspline12_qspline_avm_writedata(bb_qspline_B7_out_unnamed_qspline12_qspline_avm_writedata),
        .out_unnamed_qspline7_qspline_avm_address(bb_qspline_B7_out_unnamed_qspline7_qspline_avm_address),
        .out_unnamed_qspline7_qspline_avm_burstcount(bb_qspline_B7_out_unnamed_qspline7_qspline_avm_burstcount),
        .out_unnamed_qspline7_qspline_avm_byteenable(bb_qspline_B7_out_unnamed_qspline7_qspline_avm_byteenable),
        .out_unnamed_qspline7_qspline_avm_enable(bb_qspline_B7_out_unnamed_qspline7_qspline_avm_enable),
        .out_unnamed_qspline7_qspline_avm_read(bb_qspline_B7_out_unnamed_qspline7_qspline_avm_read),
        .out_unnamed_qspline7_qspline_avm_write(bb_qspline_B7_out_unnamed_qspline7_qspline_avm_write),
        .out_unnamed_qspline7_qspline_avm_writedata(bb_qspline_B7_out_unnamed_qspline7_qspline_avm_writedata),
        .out_unnamed_qspline8_qspline_avm_address(bb_qspline_B7_out_unnamed_qspline8_qspline_avm_address),
        .out_unnamed_qspline8_qspline_avm_burstcount(bb_qspline_B7_out_unnamed_qspline8_qspline_avm_burstcount),
        .out_unnamed_qspline8_qspline_avm_byteenable(bb_qspline_B7_out_unnamed_qspline8_qspline_avm_byteenable),
        .out_unnamed_qspline8_qspline_avm_enable(bb_qspline_B7_out_unnamed_qspline8_qspline_avm_enable),
        .out_unnamed_qspline8_qspline_avm_read(bb_qspline_B7_out_unnamed_qspline8_qspline_avm_read),
        .out_unnamed_qspline8_qspline_avm_write(bb_qspline_B7_out_unnamed_qspline8_qspline_avm_write),
        .out_unnamed_qspline8_qspline_avm_writedata(bb_qspline_B7_out_unnamed_qspline8_qspline_avm_writedata),
        .out_unnamed_qspline9_qspline_avm_address(bb_qspline_B7_out_unnamed_qspline9_qspline_avm_address),
        .out_unnamed_qspline9_qspline_avm_burstcount(bb_qspline_B7_out_unnamed_qspline9_qspline_avm_burstcount),
        .out_unnamed_qspline9_qspline_avm_byteenable(bb_qspline_B7_out_unnamed_qspline9_qspline_avm_byteenable),
        .out_unnamed_qspline9_qspline_avm_enable(bb_qspline_B7_out_unnamed_qspline9_qspline_avm_enable),
        .out_unnamed_qspline9_qspline_avm_read(bb_qspline_B7_out_unnamed_qspline9_qspline_avm_read),
        .out_unnamed_qspline9_qspline_avm_write(bb_qspline_B7_out_unnamed_qspline9_qspline_avm_write),
        .out_unnamed_qspline9_qspline_avm_writedata(bb_qspline_B7_out_unnamed_qspline9_qspline_avm_writedata),
        .out_valid_out_0(bb_qspline_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_qspline_B7_sr_1_aunroll_x(BLACKBOX,227)
    qspline_bb_B7_sr_1 thebb_qspline_B7_sr_1_aunroll_x (
        .in_i_stall(bb_qspline_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_qspline2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_qspline_B4_out_c0_exe285),
        .out_o_stall(bb_qspline_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_qspline_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_qspline_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_qspline_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_qspline2(BLACKBOX,111)
    qspline_loop_limiter_2 theloop_limiter_qspline2 (
        .in_i_stall(bb_qspline_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_qspline_B7_out_exiting_stall_out),
        .in_i_valid(bb_qspline_B4_out_valid_out_0),
        .in_i_valid_exit(bb_qspline_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_qspline2_out_o_stall),
        .out_o_valid(loop_limiter_qspline2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_qspline2_sr(BLACKBOX,33)
    qspline_i_llvm_fpga_pipeline_keep_going25_2_sr thei_llvm_fpga_pipeline_keep_going25_qspline2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo_out_stall_out),
        .in_i_valid(bb_qspline_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going25_qspline2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going25_qspline2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B4(BLACKBOX,6)
    qspline_bb_B4 thebb_qspline_B4 (
        .in_forked54_0(GND_q),
        .in_forked54_1(bb_qspline_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going25_qspline2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_qspline2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going25_qspline2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_qspline_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe285(bb_qspline_B4_out_c0_exe285),
        .out_exiting_stall_out(bb_qspline_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_qspline_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_qspline_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_qspline_B4_out_stall_out_0),
        .out_stall_out_1(bb_qspline_B4_out_stall_out_1),
        .out_valid_out_0(bb_qspline_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B4_sr_1_aunroll_x(BLACKBOX,224)
    qspline_bb_B4_sr_1 thebb_qspline_B4_sr_1_aunroll_x (
        .in_i_stall(bb_qspline_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_qspline1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_qspline_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_qspline_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_qspline_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_qspline1(BLACKBOX,110)
    qspline_loop_limiter_1 theloop_limiter_qspline1 (
        .in_i_stall(bb_qspline_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_qspline_B4_out_exiting_stall_out),
        .in_i_valid(bb_qspline_B2_out_valid_out_0),
        .in_i_valid_exit(bb_qspline_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_qspline1_out_o_stall),
        .out_o_valid(loop_limiter_qspline1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B2(BLACKBOX,4)
    qspline_bb_B2 thebb_qspline_B2 (
        .in_stall_in_0(loop_limiter_qspline1_out_o_stall),
        .in_valid_in_0(bb_qspline_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_qspline_B2_out_stall_out_0),
        .out_valid_out_0(bb_qspline_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B2_sr_0_aunroll_x(BLACKBOX,222)
    qspline_bb_B2_sr_0 thebb_qspline_B2_sr_0_aunroll_x (
        .in_i_stall(bb_qspline_B2_out_stall_out_0),
        .in_i_valid(bb_qspline_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_qspline_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_qspline_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_qspline6_sr(BLACKBOX,35)
    qspline_i_llvm_fpga_pipeline_keep_going32_6_sr thei_llvm_fpga_pipeline_keep_going32_qspline6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo_out_stall_out),
        .in_i_valid(bb_qspline_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going32_qspline6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going32_qspline6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_qspline_B3(BLACKBOX,5)
    qspline_bb_B3 thebb_qspline_B3 (
        .in_flush(in_start),
        .in_forked29_0(GND_q),
        .in_forked29_1(bb_qspline_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_1_qspline_avm_readdata(in_memdep_1_qspline_avm_readdata),
        .in_memdep_1_qspline_avm_readdatavalid(in_memdep_1_qspline_avm_readdatavalid),
        .in_memdep_1_qspline_avm_waitrequest(in_memdep_1_qspline_avm_waitrequest),
        .in_memdep_1_qspline_avm_writeack(in_memdep_1_qspline_avm_writeack),
        .in_memdep_2_qspline_avm_readdata(in_memdep_2_qspline_avm_readdata),
        .in_memdep_2_qspline_avm_readdatavalid(in_memdep_2_qspline_avm_readdatavalid),
        .in_memdep_2_qspline_avm_waitrequest(in_memdep_2_qspline_avm_waitrequest),
        .in_memdep_2_qspline_avm_writeack(in_memdep_2_qspline_avm_writeack),
        .in_memdep_3_qspline_avm_readdata(in_memdep_3_qspline_avm_readdata),
        .in_memdep_3_qspline_avm_readdatavalid(in_memdep_3_qspline_avm_readdatavalid),
        .in_memdep_3_qspline_avm_waitrequest(in_memdep_3_qspline_avm_waitrequest),
        .in_memdep_3_qspline_avm_writeack(in_memdep_3_qspline_avm_writeack),
        .in_memdep_4_qspline_avm_readdata(in_memdep_4_qspline_avm_readdata),
        .in_memdep_4_qspline_avm_readdatavalid(in_memdep_4_qspline_avm_readdatavalid),
        .in_memdep_4_qspline_avm_waitrequest(in_memdep_4_qspline_avm_waitrequest),
        .in_memdep_4_qspline_avm_writeack(in_memdep_4_qspline_avm_writeack),
        .in_memdep_5_qspline_avm_readdata(in_memdep_5_qspline_avm_readdata),
        .in_memdep_5_qspline_avm_readdatavalid(in_memdep_5_qspline_avm_readdatavalid),
        .in_memdep_5_qspline_avm_waitrequest(in_memdep_5_qspline_avm_waitrequest),
        .in_memdep_5_qspline_avm_writeack(in_memdep_5_qspline_avm_writeack),
        .in_memdep_6_qspline_avm_readdata(in_memdep_6_qspline_avm_readdata),
        .in_memdep_6_qspline_avm_readdatavalid(in_memdep_6_qspline_avm_readdatavalid),
        .in_memdep_6_qspline_avm_waitrequest(in_memdep_6_qspline_avm_waitrequest),
        .in_memdep_6_qspline_avm_writeack(in_memdep_6_qspline_avm_writeack),
        .in_memdep_qspline_avm_readdata(in_memdep_qspline_avm_readdata),
        .in_memdep_qspline_avm_readdatavalid(in_memdep_qspline_avm_readdatavalid),
        .in_memdep_qspline_avm_waitrequest(in_memdep_qspline_avm_waitrequest),
        .in_memdep_qspline_avm_writeack(in_memdep_qspline_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going32_qspline6_sr_out_o_stall),
        .in_stall_in_0(bb_qspline_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going32_qspline6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_qspline_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_qspline_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_qspline_B3_out_exiting_valid_out),
        .out_memdep_1_qspline_avm_address(bb_qspline_B3_out_memdep_1_qspline_avm_address),
        .out_memdep_1_qspline_avm_burstcount(bb_qspline_B3_out_memdep_1_qspline_avm_burstcount),
        .out_memdep_1_qspline_avm_byteenable(bb_qspline_B3_out_memdep_1_qspline_avm_byteenable),
        .out_memdep_1_qspline_avm_enable(bb_qspline_B3_out_memdep_1_qspline_avm_enable),
        .out_memdep_1_qspline_avm_read(bb_qspline_B3_out_memdep_1_qspline_avm_read),
        .out_memdep_1_qspline_avm_write(bb_qspline_B3_out_memdep_1_qspline_avm_write),
        .out_memdep_1_qspline_avm_writedata(bb_qspline_B3_out_memdep_1_qspline_avm_writedata),
        .out_memdep_2_qspline_avm_address(bb_qspline_B3_out_memdep_2_qspline_avm_address),
        .out_memdep_2_qspline_avm_burstcount(bb_qspline_B3_out_memdep_2_qspline_avm_burstcount),
        .out_memdep_2_qspline_avm_byteenable(bb_qspline_B3_out_memdep_2_qspline_avm_byteenable),
        .out_memdep_2_qspline_avm_enable(bb_qspline_B3_out_memdep_2_qspline_avm_enable),
        .out_memdep_2_qspline_avm_read(bb_qspline_B3_out_memdep_2_qspline_avm_read),
        .out_memdep_2_qspline_avm_write(bb_qspline_B3_out_memdep_2_qspline_avm_write),
        .out_memdep_2_qspline_avm_writedata(bb_qspline_B3_out_memdep_2_qspline_avm_writedata),
        .out_memdep_3_qspline_avm_address(bb_qspline_B3_out_memdep_3_qspline_avm_address),
        .out_memdep_3_qspline_avm_burstcount(bb_qspline_B3_out_memdep_3_qspline_avm_burstcount),
        .out_memdep_3_qspline_avm_byteenable(bb_qspline_B3_out_memdep_3_qspline_avm_byteenable),
        .out_memdep_3_qspline_avm_enable(bb_qspline_B3_out_memdep_3_qspline_avm_enable),
        .out_memdep_3_qspline_avm_read(bb_qspline_B3_out_memdep_3_qspline_avm_read),
        .out_memdep_3_qspline_avm_write(bb_qspline_B3_out_memdep_3_qspline_avm_write),
        .out_memdep_3_qspline_avm_writedata(bb_qspline_B3_out_memdep_3_qspline_avm_writedata),
        .out_memdep_4_qspline_avm_address(bb_qspline_B3_out_memdep_4_qspline_avm_address),
        .out_memdep_4_qspline_avm_burstcount(bb_qspline_B3_out_memdep_4_qspline_avm_burstcount),
        .out_memdep_4_qspline_avm_byteenable(bb_qspline_B3_out_memdep_4_qspline_avm_byteenable),
        .out_memdep_4_qspline_avm_enable(bb_qspline_B3_out_memdep_4_qspline_avm_enable),
        .out_memdep_4_qspline_avm_read(bb_qspline_B3_out_memdep_4_qspline_avm_read),
        .out_memdep_4_qspline_avm_write(bb_qspline_B3_out_memdep_4_qspline_avm_write),
        .out_memdep_4_qspline_avm_writedata(bb_qspline_B3_out_memdep_4_qspline_avm_writedata),
        .out_memdep_5_qspline_avm_address(bb_qspline_B3_out_memdep_5_qspline_avm_address),
        .out_memdep_5_qspline_avm_burstcount(bb_qspline_B3_out_memdep_5_qspline_avm_burstcount),
        .out_memdep_5_qspline_avm_byteenable(bb_qspline_B3_out_memdep_5_qspline_avm_byteenable),
        .out_memdep_5_qspline_avm_enable(bb_qspline_B3_out_memdep_5_qspline_avm_enable),
        .out_memdep_5_qspline_avm_read(bb_qspline_B3_out_memdep_5_qspline_avm_read),
        .out_memdep_5_qspline_avm_write(bb_qspline_B3_out_memdep_5_qspline_avm_write),
        .out_memdep_5_qspline_avm_writedata(bb_qspline_B3_out_memdep_5_qspline_avm_writedata),
        .out_memdep_6_qspline_avm_address(bb_qspline_B3_out_memdep_6_qspline_avm_address),
        .out_memdep_6_qspline_avm_burstcount(bb_qspline_B3_out_memdep_6_qspline_avm_burstcount),
        .out_memdep_6_qspline_avm_byteenable(bb_qspline_B3_out_memdep_6_qspline_avm_byteenable),
        .out_memdep_6_qspline_avm_enable(bb_qspline_B3_out_memdep_6_qspline_avm_enable),
        .out_memdep_6_qspline_avm_read(bb_qspline_B3_out_memdep_6_qspline_avm_read),
        .out_memdep_6_qspline_avm_write(bb_qspline_B3_out_memdep_6_qspline_avm_write),
        .out_memdep_6_qspline_avm_writedata(bb_qspline_B3_out_memdep_6_qspline_avm_writedata),
        .out_memdep_qspline_avm_address(bb_qspline_B3_out_memdep_qspline_avm_address),
        .out_memdep_qspline_avm_burstcount(bb_qspline_B3_out_memdep_qspline_avm_burstcount),
        .out_memdep_qspline_avm_byteenable(bb_qspline_B3_out_memdep_qspline_avm_byteenable),
        .out_memdep_qspline_avm_enable(bb_qspline_B3_out_memdep_qspline_avm_enable),
        .out_memdep_qspline_avm_read(bb_qspline_B3_out_memdep_qspline_avm_read),
        .out_memdep_qspline_avm_write(bb_qspline_B3_out_memdep_qspline_avm_write),
        .out_memdep_qspline_avm_writedata(bb_qspline_B3_out_memdep_qspline_avm_writedata),
        .out_pipeline_valid_out(bb_qspline_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_qspline_B3_out_stall_out_0),
        .out_stall_out_1(bb_qspline_B3_out_stall_out_1),
        .out_valid_out_0(bb_qspline_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B3_sr_1_aunroll_x(BLACKBOX,223)
    qspline_bb_B3_sr_1 thebb_qspline_B3_sr_1_aunroll_x (
        .in_i_stall(bb_qspline_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_qspline0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_qspline_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_qspline_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_qspline_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_qspline0(BLACKBOX,109)
    qspline_loop_limiter_0 theloop_limiter_qspline0 (
        .in_i_stall(bb_qspline_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_qspline_B3_out_exiting_stall_out),
        .in_i_valid(bb_qspline_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_qspline_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_qspline0_out_o_stall),
        .out_o_valid(loop_limiter_qspline0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going51_qspline1_sr(BLACKBOX,37)
    qspline_i_llvm_fpga_pipeline_keep_going51_1_sr thei_llvm_fpga_pipeline_keep_going51_qspline1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo_out_stall_out),
        .in_i_valid(bb_qspline_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going51_qspline1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going51_qspline1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B5(BLACKBOX,7)
    qspline_bb_B5 thebb_qspline_B5 (
        .in_feedback_stall_in_1(bb_qspline_B1_start_out_feedback_stall_out_1),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_0_0(bb_qspline_B1_start_out_intel_reserved_ffwd_0_0),
        .in_iowr_bl_return_qspline_i_fifoready(in_iowr_bl_return_qspline_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_unnamed_qspline5_qspline_avm_readdata(in_unnamed_qspline5_qspline_avm_readdata),
        .in_unnamed_qspline5_qspline_avm_readdatavalid(in_unnamed_qspline5_qspline_avm_readdatavalid),
        .in_unnamed_qspline5_qspline_avm_waitrequest(in_unnamed_qspline5_qspline_avm_waitrequest),
        .in_unnamed_qspline5_qspline_avm_writeack(in_unnamed_qspline5_qspline_avm_writeack),
        .in_valid_in_0(bb_qspline_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_qspline_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_qspline_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_qspline_o_fifodata(bb_qspline_B5_out_iowr_bl_return_qspline_o_fifodata),
        .out_iowr_bl_return_qspline_o_fifovalid(bb_qspline_B5_out_iowr_bl_return_qspline_o_fifovalid),
        .out_stall_out_0(bb_qspline_B5_out_stall_out_0),
        .out_unnamed_qspline5_qspline_avm_address(bb_qspline_B5_out_unnamed_qspline5_qspline_avm_address),
        .out_unnamed_qspline5_qspline_avm_burstcount(bb_qspline_B5_out_unnamed_qspline5_qspline_avm_burstcount),
        .out_unnamed_qspline5_qspline_avm_byteenable(bb_qspline_B5_out_unnamed_qspline5_qspline_avm_byteenable),
        .out_unnamed_qspline5_qspline_avm_enable(bb_qspline_B5_out_unnamed_qspline5_qspline_avm_enable),
        .out_unnamed_qspline5_qspline_avm_read(bb_qspline_B5_out_unnamed_qspline5_qspline_avm_read),
        .out_unnamed_qspline5_qspline_avm_write(bb_qspline_B5_out_unnamed_qspline5_qspline_avm_write),
        .out_unnamed_qspline5_qspline_avm_writedata(bb_qspline_B5_out_unnamed_qspline5_qspline_avm_writedata),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_qspline_B1_start(BLACKBOX,3)
    qspline_bb_B1_start thebb_qspline_B1_start (
        .in_feedback_in_1(bb_qspline_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_qspline_B5_out_feedback_valid_out_1),
        .in_iord_bl_call_qspline_i_fifodata(in_iord_bl_call_qspline_i_fifodata),
        .in_iord_bl_call_qspline_i_fifovalid(in_iord_bl_call_qspline_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going51_qspline1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_qspline0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going51_qspline1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_qspline_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_qspline_B1_start_out_intel_reserved_ffwd_0_0),
        .out_iord_bl_call_qspline_o_fifoready(bb_qspline_B1_start_out_iord_bl_call_qspline_o_fifoready),
        .out_pipeline_valid_out(bb_qspline_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_qspline_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_qspline_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_qspline_o_fifoready(GPOUT,112)
    assign out_iord_bl_call_qspline_o_fifoready = bb_qspline_B1_start_out_iord_bl_call_qspline_o_fifoready;

    // out_iowr_bl_return_qspline_o_fifodata(GPOUT,113)
    assign out_iowr_bl_return_qspline_o_fifodata = bb_qspline_B5_out_iowr_bl_return_qspline_o_fifodata;

    // out_iowr_bl_return_qspline_o_fifovalid(GPOUT,114)
    assign out_iowr_bl_return_qspline_o_fifovalid = bb_qspline_B5_out_iowr_bl_return_qspline_o_fifovalid;

    // out_memdep_1_qspline_avm_address(GPOUT,115)
    assign out_memdep_1_qspline_avm_address = bb_qspline_B3_out_memdep_1_qspline_avm_address;

    // out_memdep_1_qspline_avm_burstcount(GPOUT,116)
    assign out_memdep_1_qspline_avm_burstcount = bb_qspline_B3_out_memdep_1_qspline_avm_burstcount;

    // out_memdep_1_qspline_avm_byteenable(GPOUT,117)
    assign out_memdep_1_qspline_avm_byteenable = bb_qspline_B3_out_memdep_1_qspline_avm_byteenable;

    // out_memdep_1_qspline_avm_enable(GPOUT,118)
    assign out_memdep_1_qspline_avm_enable = bb_qspline_B3_out_memdep_1_qspline_avm_enable;

    // out_memdep_1_qspline_avm_read(GPOUT,119)
    assign out_memdep_1_qspline_avm_read = bb_qspline_B3_out_memdep_1_qspline_avm_read;

    // out_memdep_1_qspline_avm_write(GPOUT,120)
    assign out_memdep_1_qspline_avm_write = bb_qspline_B3_out_memdep_1_qspline_avm_write;

    // out_memdep_1_qspline_avm_writedata(GPOUT,121)
    assign out_memdep_1_qspline_avm_writedata = bb_qspline_B3_out_memdep_1_qspline_avm_writedata;

    // out_memdep_2_qspline_avm_address(GPOUT,122)
    assign out_memdep_2_qspline_avm_address = bb_qspline_B3_out_memdep_2_qspline_avm_address;

    // out_memdep_2_qspline_avm_burstcount(GPOUT,123)
    assign out_memdep_2_qspline_avm_burstcount = bb_qspline_B3_out_memdep_2_qspline_avm_burstcount;

    // out_memdep_2_qspline_avm_byteenable(GPOUT,124)
    assign out_memdep_2_qspline_avm_byteenable = bb_qspline_B3_out_memdep_2_qspline_avm_byteenable;

    // out_memdep_2_qspline_avm_enable(GPOUT,125)
    assign out_memdep_2_qspline_avm_enable = bb_qspline_B3_out_memdep_2_qspline_avm_enable;

    // out_memdep_2_qspline_avm_read(GPOUT,126)
    assign out_memdep_2_qspline_avm_read = bb_qspline_B3_out_memdep_2_qspline_avm_read;

    // out_memdep_2_qspline_avm_write(GPOUT,127)
    assign out_memdep_2_qspline_avm_write = bb_qspline_B3_out_memdep_2_qspline_avm_write;

    // out_memdep_2_qspline_avm_writedata(GPOUT,128)
    assign out_memdep_2_qspline_avm_writedata = bb_qspline_B3_out_memdep_2_qspline_avm_writedata;

    // out_memdep_3_qspline_avm_address(GPOUT,129)
    assign out_memdep_3_qspline_avm_address = bb_qspline_B3_out_memdep_3_qspline_avm_address;

    // out_memdep_3_qspline_avm_burstcount(GPOUT,130)
    assign out_memdep_3_qspline_avm_burstcount = bb_qspline_B3_out_memdep_3_qspline_avm_burstcount;

    // out_memdep_3_qspline_avm_byteenable(GPOUT,131)
    assign out_memdep_3_qspline_avm_byteenable = bb_qspline_B3_out_memdep_3_qspline_avm_byteenable;

    // out_memdep_3_qspline_avm_enable(GPOUT,132)
    assign out_memdep_3_qspline_avm_enable = bb_qspline_B3_out_memdep_3_qspline_avm_enable;

    // out_memdep_3_qspline_avm_read(GPOUT,133)
    assign out_memdep_3_qspline_avm_read = bb_qspline_B3_out_memdep_3_qspline_avm_read;

    // out_memdep_3_qspline_avm_write(GPOUT,134)
    assign out_memdep_3_qspline_avm_write = bb_qspline_B3_out_memdep_3_qspline_avm_write;

    // out_memdep_3_qspline_avm_writedata(GPOUT,135)
    assign out_memdep_3_qspline_avm_writedata = bb_qspline_B3_out_memdep_3_qspline_avm_writedata;

    // out_memdep_4_qspline_avm_address(GPOUT,136)
    assign out_memdep_4_qspline_avm_address = bb_qspline_B3_out_memdep_4_qspline_avm_address;

    // out_memdep_4_qspline_avm_burstcount(GPOUT,137)
    assign out_memdep_4_qspline_avm_burstcount = bb_qspline_B3_out_memdep_4_qspline_avm_burstcount;

    // out_memdep_4_qspline_avm_byteenable(GPOUT,138)
    assign out_memdep_4_qspline_avm_byteenable = bb_qspline_B3_out_memdep_4_qspline_avm_byteenable;

    // out_memdep_4_qspline_avm_enable(GPOUT,139)
    assign out_memdep_4_qspline_avm_enable = bb_qspline_B3_out_memdep_4_qspline_avm_enable;

    // out_memdep_4_qspline_avm_read(GPOUT,140)
    assign out_memdep_4_qspline_avm_read = bb_qspline_B3_out_memdep_4_qspline_avm_read;

    // out_memdep_4_qspline_avm_write(GPOUT,141)
    assign out_memdep_4_qspline_avm_write = bb_qspline_B3_out_memdep_4_qspline_avm_write;

    // out_memdep_4_qspline_avm_writedata(GPOUT,142)
    assign out_memdep_4_qspline_avm_writedata = bb_qspline_B3_out_memdep_4_qspline_avm_writedata;

    // out_memdep_5_qspline_avm_address(GPOUT,143)
    assign out_memdep_5_qspline_avm_address = bb_qspline_B3_out_memdep_5_qspline_avm_address;

    // out_memdep_5_qspline_avm_burstcount(GPOUT,144)
    assign out_memdep_5_qspline_avm_burstcount = bb_qspline_B3_out_memdep_5_qspline_avm_burstcount;

    // out_memdep_5_qspline_avm_byteenable(GPOUT,145)
    assign out_memdep_5_qspline_avm_byteenable = bb_qspline_B3_out_memdep_5_qspline_avm_byteenable;

    // out_memdep_5_qspline_avm_enable(GPOUT,146)
    assign out_memdep_5_qspline_avm_enable = bb_qspline_B3_out_memdep_5_qspline_avm_enable;

    // out_memdep_5_qspline_avm_read(GPOUT,147)
    assign out_memdep_5_qspline_avm_read = bb_qspline_B3_out_memdep_5_qspline_avm_read;

    // out_memdep_5_qspline_avm_write(GPOUT,148)
    assign out_memdep_5_qspline_avm_write = bb_qspline_B3_out_memdep_5_qspline_avm_write;

    // out_memdep_5_qspline_avm_writedata(GPOUT,149)
    assign out_memdep_5_qspline_avm_writedata = bb_qspline_B3_out_memdep_5_qspline_avm_writedata;

    // out_memdep_6_qspline_avm_address(GPOUT,150)
    assign out_memdep_6_qspline_avm_address = bb_qspline_B3_out_memdep_6_qspline_avm_address;

    // out_memdep_6_qspline_avm_burstcount(GPOUT,151)
    assign out_memdep_6_qspline_avm_burstcount = bb_qspline_B3_out_memdep_6_qspline_avm_burstcount;

    // out_memdep_6_qspline_avm_byteenable(GPOUT,152)
    assign out_memdep_6_qspline_avm_byteenable = bb_qspline_B3_out_memdep_6_qspline_avm_byteenable;

    // out_memdep_6_qspline_avm_enable(GPOUT,153)
    assign out_memdep_6_qspline_avm_enable = bb_qspline_B3_out_memdep_6_qspline_avm_enable;

    // out_memdep_6_qspline_avm_read(GPOUT,154)
    assign out_memdep_6_qspline_avm_read = bb_qspline_B3_out_memdep_6_qspline_avm_read;

    // out_memdep_6_qspline_avm_write(GPOUT,155)
    assign out_memdep_6_qspline_avm_write = bb_qspline_B3_out_memdep_6_qspline_avm_write;

    // out_memdep_6_qspline_avm_writedata(GPOUT,156)
    assign out_memdep_6_qspline_avm_writedata = bb_qspline_B3_out_memdep_6_qspline_avm_writedata;

    // out_memdep_7_qspline_avm_address(GPOUT,157)
    assign out_memdep_7_qspline_avm_address = bb_qspline_B7_out_memdep_7_qspline_avm_address;

    // out_memdep_7_qspline_avm_burstcount(GPOUT,158)
    assign out_memdep_7_qspline_avm_burstcount = bb_qspline_B7_out_memdep_7_qspline_avm_burstcount;

    // out_memdep_7_qspline_avm_byteenable(GPOUT,159)
    assign out_memdep_7_qspline_avm_byteenable = bb_qspline_B7_out_memdep_7_qspline_avm_byteenable;

    // out_memdep_7_qspline_avm_enable(GPOUT,160)
    assign out_memdep_7_qspline_avm_enable = bb_qspline_B7_out_memdep_7_qspline_avm_enable;

    // out_memdep_7_qspline_avm_read(GPOUT,161)
    assign out_memdep_7_qspline_avm_read = bb_qspline_B7_out_memdep_7_qspline_avm_read;

    // out_memdep_7_qspline_avm_write(GPOUT,162)
    assign out_memdep_7_qspline_avm_write = bb_qspline_B7_out_memdep_7_qspline_avm_write;

    // out_memdep_7_qspline_avm_writedata(GPOUT,163)
    assign out_memdep_7_qspline_avm_writedata = bb_qspline_B7_out_memdep_7_qspline_avm_writedata;

    // out_memdep_qspline_avm_address(GPOUT,164)
    assign out_memdep_qspline_avm_address = bb_qspline_B3_out_memdep_qspline_avm_address;

    // out_memdep_qspline_avm_burstcount(GPOUT,165)
    assign out_memdep_qspline_avm_burstcount = bb_qspline_B3_out_memdep_qspline_avm_burstcount;

    // out_memdep_qspline_avm_byteenable(GPOUT,166)
    assign out_memdep_qspline_avm_byteenable = bb_qspline_B3_out_memdep_qspline_avm_byteenable;

    // out_memdep_qspline_avm_enable(GPOUT,167)
    assign out_memdep_qspline_avm_enable = bb_qspline_B3_out_memdep_qspline_avm_enable;

    // out_memdep_qspline_avm_read(GPOUT,168)
    assign out_memdep_qspline_avm_read = bb_qspline_B3_out_memdep_qspline_avm_read;

    // out_memdep_qspline_avm_write(GPOUT,169)
    assign out_memdep_qspline_avm_write = bb_qspline_B3_out_memdep_qspline_avm_write;

    // out_memdep_qspline_avm_writedata(GPOUT,170)
    assign out_memdep_qspline_avm_writedata = bb_qspline_B3_out_memdep_qspline_avm_writedata;

    // bb_qspline_B0_runOnce(BLACKBOX,2)
    qspline_bb_B0_runOnce thebb_qspline_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_qspline_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,171)
    assign out_stall_out = bb_qspline_B0_runOnce_out_stall_out_0;

    // out_unnamed_qspline10_qspline_avm_address(GPOUT,172)
    assign out_unnamed_qspline10_qspline_avm_address = bb_qspline_B7_out_unnamed_qspline10_qspline_avm_address;

    // out_unnamed_qspline10_qspline_avm_burstcount(GPOUT,173)
    assign out_unnamed_qspline10_qspline_avm_burstcount = bb_qspline_B7_out_unnamed_qspline10_qspline_avm_burstcount;

    // out_unnamed_qspline10_qspline_avm_byteenable(GPOUT,174)
    assign out_unnamed_qspline10_qspline_avm_byteenable = bb_qspline_B7_out_unnamed_qspline10_qspline_avm_byteenable;

    // out_unnamed_qspline10_qspline_avm_enable(GPOUT,175)
    assign out_unnamed_qspline10_qspline_avm_enable = bb_qspline_B7_out_unnamed_qspline10_qspline_avm_enable;

    // out_unnamed_qspline10_qspline_avm_read(GPOUT,176)
    assign out_unnamed_qspline10_qspline_avm_read = bb_qspline_B7_out_unnamed_qspline10_qspline_avm_read;

    // out_unnamed_qspline10_qspline_avm_write(GPOUT,177)
    assign out_unnamed_qspline10_qspline_avm_write = bb_qspline_B7_out_unnamed_qspline10_qspline_avm_write;

    // out_unnamed_qspline10_qspline_avm_writedata(GPOUT,178)
    assign out_unnamed_qspline10_qspline_avm_writedata = bb_qspline_B7_out_unnamed_qspline10_qspline_avm_writedata;

    // out_unnamed_qspline11_qspline_avm_address(GPOUT,179)
    assign out_unnamed_qspline11_qspline_avm_address = bb_qspline_B7_out_unnamed_qspline11_qspline_avm_address;

    // out_unnamed_qspline11_qspline_avm_burstcount(GPOUT,180)
    assign out_unnamed_qspline11_qspline_avm_burstcount = bb_qspline_B7_out_unnamed_qspline11_qspline_avm_burstcount;

    // out_unnamed_qspline11_qspline_avm_byteenable(GPOUT,181)
    assign out_unnamed_qspline11_qspline_avm_byteenable = bb_qspline_B7_out_unnamed_qspline11_qspline_avm_byteenable;

    // out_unnamed_qspline11_qspline_avm_enable(GPOUT,182)
    assign out_unnamed_qspline11_qspline_avm_enable = bb_qspline_B7_out_unnamed_qspline11_qspline_avm_enable;

    // out_unnamed_qspline11_qspline_avm_read(GPOUT,183)
    assign out_unnamed_qspline11_qspline_avm_read = bb_qspline_B7_out_unnamed_qspline11_qspline_avm_read;

    // out_unnamed_qspline11_qspline_avm_write(GPOUT,184)
    assign out_unnamed_qspline11_qspline_avm_write = bb_qspline_B7_out_unnamed_qspline11_qspline_avm_write;

    // out_unnamed_qspline11_qspline_avm_writedata(GPOUT,185)
    assign out_unnamed_qspline11_qspline_avm_writedata = bb_qspline_B7_out_unnamed_qspline11_qspline_avm_writedata;

    // out_unnamed_qspline12_qspline_avm_address(GPOUT,186)
    assign out_unnamed_qspline12_qspline_avm_address = bb_qspline_B7_out_unnamed_qspline12_qspline_avm_address;

    // out_unnamed_qspline12_qspline_avm_burstcount(GPOUT,187)
    assign out_unnamed_qspline12_qspline_avm_burstcount = bb_qspline_B7_out_unnamed_qspline12_qspline_avm_burstcount;

    // out_unnamed_qspline12_qspline_avm_byteenable(GPOUT,188)
    assign out_unnamed_qspline12_qspline_avm_byteenable = bb_qspline_B7_out_unnamed_qspline12_qspline_avm_byteenable;

    // out_unnamed_qspline12_qspline_avm_enable(GPOUT,189)
    assign out_unnamed_qspline12_qspline_avm_enable = bb_qspline_B7_out_unnamed_qspline12_qspline_avm_enable;

    // out_unnamed_qspline12_qspline_avm_read(GPOUT,190)
    assign out_unnamed_qspline12_qspline_avm_read = bb_qspline_B7_out_unnamed_qspline12_qspline_avm_read;

    // out_unnamed_qspline12_qspline_avm_write(GPOUT,191)
    assign out_unnamed_qspline12_qspline_avm_write = bb_qspline_B7_out_unnamed_qspline12_qspline_avm_write;

    // out_unnamed_qspline12_qspline_avm_writedata(GPOUT,192)
    assign out_unnamed_qspline12_qspline_avm_writedata = bb_qspline_B7_out_unnamed_qspline12_qspline_avm_writedata;

    // out_unnamed_qspline5_qspline_avm_address(GPOUT,193)
    assign out_unnamed_qspline5_qspline_avm_address = bb_qspline_B5_out_unnamed_qspline5_qspline_avm_address;

    // out_unnamed_qspline5_qspline_avm_burstcount(GPOUT,194)
    assign out_unnamed_qspline5_qspline_avm_burstcount = bb_qspline_B5_out_unnamed_qspline5_qspline_avm_burstcount;

    // out_unnamed_qspline5_qspline_avm_byteenable(GPOUT,195)
    assign out_unnamed_qspline5_qspline_avm_byteenable = bb_qspline_B5_out_unnamed_qspline5_qspline_avm_byteenable;

    // out_unnamed_qspline5_qspline_avm_enable(GPOUT,196)
    assign out_unnamed_qspline5_qspline_avm_enable = bb_qspline_B5_out_unnamed_qspline5_qspline_avm_enable;

    // out_unnamed_qspline5_qspline_avm_read(GPOUT,197)
    assign out_unnamed_qspline5_qspline_avm_read = bb_qspline_B5_out_unnamed_qspline5_qspline_avm_read;

    // out_unnamed_qspline5_qspline_avm_write(GPOUT,198)
    assign out_unnamed_qspline5_qspline_avm_write = bb_qspline_B5_out_unnamed_qspline5_qspline_avm_write;

    // out_unnamed_qspline5_qspline_avm_writedata(GPOUT,199)
    assign out_unnamed_qspline5_qspline_avm_writedata = bb_qspline_B5_out_unnamed_qspline5_qspline_avm_writedata;

    // out_unnamed_qspline7_qspline_avm_address(GPOUT,200)
    assign out_unnamed_qspline7_qspline_avm_address = bb_qspline_B7_out_unnamed_qspline7_qspline_avm_address;

    // out_unnamed_qspline7_qspline_avm_burstcount(GPOUT,201)
    assign out_unnamed_qspline7_qspline_avm_burstcount = bb_qspline_B7_out_unnamed_qspline7_qspline_avm_burstcount;

    // out_unnamed_qspline7_qspline_avm_byteenable(GPOUT,202)
    assign out_unnamed_qspline7_qspline_avm_byteenable = bb_qspline_B7_out_unnamed_qspline7_qspline_avm_byteenable;

    // out_unnamed_qspline7_qspline_avm_enable(GPOUT,203)
    assign out_unnamed_qspline7_qspline_avm_enable = bb_qspline_B7_out_unnamed_qspline7_qspline_avm_enable;

    // out_unnamed_qspline7_qspline_avm_read(GPOUT,204)
    assign out_unnamed_qspline7_qspline_avm_read = bb_qspline_B7_out_unnamed_qspline7_qspline_avm_read;

    // out_unnamed_qspline7_qspline_avm_write(GPOUT,205)
    assign out_unnamed_qspline7_qspline_avm_write = bb_qspline_B7_out_unnamed_qspline7_qspline_avm_write;

    // out_unnamed_qspline7_qspline_avm_writedata(GPOUT,206)
    assign out_unnamed_qspline7_qspline_avm_writedata = bb_qspline_B7_out_unnamed_qspline7_qspline_avm_writedata;

    // out_unnamed_qspline8_qspline_avm_address(GPOUT,207)
    assign out_unnamed_qspline8_qspline_avm_address = bb_qspline_B7_out_unnamed_qspline8_qspline_avm_address;

    // out_unnamed_qspline8_qspline_avm_burstcount(GPOUT,208)
    assign out_unnamed_qspline8_qspline_avm_burstcount = bb_qspline_B7_out_unnamed_qspline8_qspline_avm_burstcount;

    // out_unnamed_qspline8_qspline_avm_byteenable(GPOUT,209)
    assign out_unnamed_qspline8_qspline_avm_byteenable = bb_qspline_B7_out_unnamed_qspline8_qspline_avm_byteenable;

    // out_unnamed_qspline8_qspline_avm_enable(GPOUT,210)
    assign out_unnamed_qspline8_qspline_avm_enable = bb_qspline_B7_out_unnamed_qspline8_qspline_avm_enable;

    // out_unnamed_qspline8_qspline_avm_read(GPOUT,211)
    assign out_unnamed_qspline8_qspline_avm_read = bb_qspline_B7_out_unnamed_qspline8_qspline_avm_read;

    // out_unnamed_qspline8_qspline_avm_write(GPOUT,212)
    assign out_unnamed_qspline8_qspline_avm_write = bb_qspline_B7_out_unnamed_qspline8_qspline_avm_write;

    // out_unnamed_qspline8_qspline_avm_writedata(GPOUT,213)
    assign out_unnamed_qspline8_qspline_avm_writedata = bb_qspline_B7_out_unnamed_qspline8_qspline_avm_writedata;

    // out_unnamed_qspline9_qspline_avm_address(GPOUT,214)
    assign out_unnamed_qspline9_qspline_avm_address = bb_qspline_B7_out_unnamed_qspline9_qspline_avm_address;

    // out_unnamed_qspline9_qspline_avm_burstcount(GPOUT,215)
    assign out_unnamed_qspline9_qspline_avm_burstcount = bb_qspline_B7_out_unnamed_qspline9_qspline_avm_burstcount;

    // out_unnamed_qspline9_qspline_avm_byteenable(GPOUT,216)
    assign out_unnamed_qspline9_qspline_avm_byteenable = bb_qspline_B7_out_unnamed_qspline9_qspline_avm_byteenable;

    // out_unnamed_qspline9_qspline_avm_enable(GPOUT,217)
    assign out_unnamed_qspline9_qspline_avm_enable = bb_qspline_B7_out_unnamed_qspline9_qspline_avm_enable;

    // out_unnamed_qspline9_qspline_avm_read(GPOUT,218)
    assign out_unnamed_qspline9_qspline_avm_read = bb_qspline_B7_out_unnamed_qspline9_qspline_avm_read;

    // out_unnamed_qspline9_qspline_avm_write(GPOUT,219)
    assign out_unnamed_qspline9_qspline_avm_write = bb_qspline_B7_out_unnamed_qspline9_qspline_avm_write;

    // out_unnamed_qspline9_qspline_avm_writedata(GPOUT,220)
    assign out_unnamed_qspline9_qspline_avm_writedata = bb_qspline_B7_out_unnamed_qspline9_qspline_avm_writedata;

    // out_valid_out(GPOUT,221)
    assign out_valid_out = GND_q;

endmodule
