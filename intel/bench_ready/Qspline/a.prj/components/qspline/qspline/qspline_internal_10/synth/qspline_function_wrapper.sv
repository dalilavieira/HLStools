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

// SystemVerilog created from qspline_function_wrapper
// SystemVerilog created on Sun Apr 19 21:19:10 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module qspline_function_wrapper (
    input wire [15:0] avm_memdep_1_qspline_readdata,
    input wire [0:0] avm_memdep_1_qspline_readdatavalid,
    input wire [0:0] avm_memdep_1_qspline_waitrequest,
    input wire [0:0] avm_memdep_1_qspline_writeack,
    input wire [15:0] avm_memdep_2_qspline_readdata,
    input wire [0:0] avm_memdep_2_qspline_readdatavalid,
    input wire [0:0] avm_memdep_2_qspline_waitrequest,
    input wire [0:0] avm_memdep_2_qspline_writeack,
    input wire [15:0] avm_memdep_3_qspline_readdata,
    input wire [0:0] avm_memdep_3_qspline_readdatavalid,
    input wire [0:0] avm_memdep_3_qspline_waitrequest,
    input wire [0:0] avm_memdep_3_qspline_writeack,
    input wire [15:0] avm_memdep_4_qspline_readdata,
    input wire [0:0] avm_memdep_4_qspline_readdatavalid,
    input wire [0:0] avm_memdep_4_qspline_waitrequest,
    input wire [0:0] avm_memdep_4_qspline_writeack,
    input wire [15:0] avm_memdep_5_qspline_readdata,
    input wire [0:0] avm_memdep_5_qspline_readdatavalid,
    input wire [0:0] avm_memdep_5_qspline_waitrequest,
    input wire [0:0] avm_memdep_5_qspline_writeack,
    input wire [15:0] avm_memdep_6_qspline_readdata,
    input wire [0:0] avm_memdep_6_qspline_readdatavalid,
    input wire [0:0] avm_memdep_6_qspline_waitrequest,
    input wire [0:0] avm_memdep_6_qspline_writeack,
    input wire [15:0] avm_memdep_7_qspline_readdata,
    input wire [0:0] avm_memdep_7_qspline_readdatavalid,
    input wire [0:0] avm_memdep_7_qspline_waitrequest,
    input wire [0:0] avm_memdep_7_qspline_writeack,
    input wire [15:0] avm_memdep_qspline_readdata,
    input wire [0:0] avm_memdep_qspline_readdatavalid,
    input wire [0:0] avm_memdep_qspline_waitrequest,
    input wire [0:0] avm_memdep_qspline_writeack,
    input wire [15:0] avm_unnamed_qspline10_qspline_readdata,
    input wire [0:0] avm_unnamed_qspline10_qspline_readdatavalid,
    input wire [0:0] avm_unnamed_qspline10_qspline_waitrequest,
    input wire [0:0] avm_unnamed_qspline10_qspline_writeack,
    input wire [15:0] avm_unnamed_qspline11_qspline_readdata,
    input wire [0:0] avm_unnamed_qspline11_qspline_readdatavalid,
    input wire [0:0] avm_unnamed_qspline11_qspline_waitrequest,
    input wire [0:0] avm_unnamed_qspline11_qspline_writeack,
    input wire [15:0] avm_unnamed_qspline12_qspline_readdata,
    input wire [0:0] avm_unnamed_qspline12_qspline_readdatavalid,
    input wire [0:0] avm_unnamed_qspline12_qspline_waitrequest,
    input wire [0:0] avm_unnamed_qspline12_qspline_writeack,
    input wire [15:0] avm_unnamed_qspline5_qspline_readdata,
    input wire [0:0] avm_unnamed_qspline5_qspline_readdatavalid,
    input wire [0:0] avm_unnamed_qspline5_qspline_waitrequest,
    input wire [0:0] avm_unnamed_qspline5_qspline_writeack,
    input wire [15:0] avm_unnamed_qspline7_qspline_readdata,
    input wire [0:0] avm_unnamed_qspline7_qspline_readdatavalid,
    input wire [0:0] avm_unnamed_qspline7_qspline_waitrequest,
    input wire [0:0] avm_unnamed_qspline7_qspline_writeack,
    input wire [15:0] avm_unnamed_qspline8_qspline_readdata,
    input wire [0:0] avm_unnamed_qspline8_qspline_readdatavalid,
    input wire [0:0] avm_unnamed_qspline8_qspline_waitrequest,
    input wire [0:0] avm_unnamed_qspline8_qspline_writeack,
    input wire [15:0] avm_unnamed_qspline9_qspline_readdata,
    input wire [0:0] avm_unnamed_qspline9_qspline_readdatavalid,
    input wire [0:0] avm_unnamed_qspline9_qspline_waitrequest,
    input wire [0:0] avm_unnamed_qspline9_qspline_writeack,
    input wire [31:0] avst_iord_bl_call_qspline_data,
    input wire [0:0] avst_iord_bl_call_qspline_valid,
    input wire [0:0] avst_iowr_bl_return_qspline_almostfull,
    input wire [0:0] avst_iowr_bl_return_qspline_ready,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_qspline_address,
    output wire [0:0] avm_memdep_1_qspline_burstcount,
    output wire [1:0] avm_memdep_1_qspline_byteenable,
    output wire [0:0] avm_memdep_1_qspline_enable,
    output wire [0:0] avm_memdep_1_qspline_read,
    output wire [0:0] avm_memdep_1_qspline_write,
    output wire [15:0] avm_memdep_1_qspline_writedata,
    output wire [31:0] avm_memdep_2_qspline_address,
    output wire [0:0] avm_memdep_2_qspline_burstcount,
    output wire [1:0] avm_memdep_2_qspline_byteenable,
    output wire [0:0] avm_memdep_2_qspline_enable,
    output wire [0:0] avm_memdep_2_qspline_read,
    output wire [0:0] avm_memdep_2_qspline_write,
    output wire [15:0] avm_memdep_2_qspline_writedata,
    output wire [31:0] avm_memdep_3_qspline_address,
    output wire [0:0] avm_memdep_3_qspline_burstcount,
    output wire [1:0] avm_memdep_3_qspline_byteenable,
    output wire [0:0] avm_memdep_3_qspline_enable,
    output wire [0:0] avm_memdep_3_qspline_read,
    output wire [0:0] avm_memdep_3_qspline_write,
    output wire [15:0] avm_memdep_3_qspline_writedata,
    output wire [31:0] avm_memdep_4_qspline_address,
    output wire [0:0] avm_memdep_4_qspline_burstcount,
    output wire [1:0] avm_memdep_4_qspline_byteenable,
    output wire [0:0] avm_memdep_4_qspline_enable,
    output wire [0:0] avm_memdep_4_qspline_read,
    output wire [0:0] avm_memdep_4_qspline_write,
    output wire [15:0] avm_memdep_4_qspline_writedata,
    output wire [31:0] avm_memdep_5_qspline_address,
    output wire [0:0] avm_memdep_5_qspline_burstcount,
    output wire [1:0] avm_memdep_5_qspline_byteenable,
    output wire [0:0] avm_memdep_5_qspline_enable,
    output wire [0:0] avm_memdep_5_qspline_read,
    output wire [0:0] avm_memdep_5_qspline_write,
    output wire [15:0] avm_memdep_5_qspline_writedata,
    output wire [31:0] avm_memdep_6_qspline_address,
    output wire [0:0] avm_memdep_6_qspline_burstcount,
    output wire [1:0] avm_memdep_6_qspline_byteenable,
    output wire [0:0] avm_memdep_6_qspline_enable,
    output wire [0:0] avm_memdep_6_qspline_read,
    output wire [0:0] avm_memdep_6_qspline_write,
    output wire [15:0] avm_memdep_6_qspline_writedata,
    output wire [31:0] avm_memdep_7_qspline_address,
    output wire [0:0] avm_memdep_7_qspline_burstcount,
    output wire [1:0] avm_memdep_7_qspline_byteenable,
    output wire [0:0] avm_memdep_7_qspline_enable,
    output wire [0:0] avm_memdep_7_qspline_read,
    output wire [0:0] avm_memdep_7_qspline_write,
    output wire [15:0] avm_memdep_7_qspline_writedata,
    output wire [31:0] avm_memdep_qspline_address,
    output wire [0:0] avm_memdep_qspline_burstcount,
    output wire [1:0] avm_memdep_qspline_byteenable,
    output wire [0:0] avm_memdep_qspline_enable,
    output wire [0:0] avm_memdep_qspline_read,
    output wire [0:0] avm_memdep_qspline_write,
    output wire [15:0] avm_memdep_qspline_writedata,
    output wire [31:0] avm_unnamed_qspline10_qspline_address,
    output wire [0:0] avm_unnamed_qspline10_qspline_burstcount,
    output wire [1:0] avm_unnamed_qspline10_qspline_byteenable,
    output wire [0:0] avm_unnamed_qspline10_qspline_enable,
    output wire [0:0] avm_unnamed_qspline10_qspline_read,
    output wire [0:0] avm_unnamed_qspline10_qspline_write,
    output wire [15:0] avm_unnamed_qspline10_qspline_writedata,
    output wire [31:0] avm_unnamed_qspline11_qspline_address,
    output wire [0:0] avm_unnamed_qspline11_qspline_burstcount,
    output wire [1:0] avm_unnamed_qspline11_qspline_byteenable,
    output wire [0:0] avm_unnamed_qspline11_qspline_enable,
    output wire [0:0] avm_unnamed_qspline11_qspline_read,
    output wire [0:0] avm_unnamed_qspline11_qspline_write,
    output wire [15:0] avm_unnamed_qspline11_qspline_writedata,
    output wire [31:0] avm_unnamed_qspline12_qspline_address,
    output wire [0:0] avm_unnamed_qspline12_qspline_burstcount,
    output wire [1:0] avm_unnamed_qspline12_qspline_byteenable,
    output wire [0:0] avm_unnamed_qspline12_qspline_enable,
    output wire [0:0] avm_unnamed_qspline12_qspline_read,
    output wire [0:0] avm_unnamed_qspline12_qspline_write,
    output wire [15:0] avm_unnamed_qspline12_qspline_writedata,
    output wire [31:0] avm_unnamed_qspline5_qspline_address,
    output wire [0:0] avm_unnamed_qspline5_qspline_burstcount,
    output wire [1:0] avm_unnamed_qspline5_qspline_byteenable,
    output wire [0:0] avm_unnamed_qspline5_qspline_enable,
    output wire [0:0] avm_unnamed_qspline5_qspline_read,
    output wire [0:0] avm_unnamed_qspline5_qspline_write,
    output wire [15:0] avm_unnamed_qspline5_qspline_writedata,
    output wire [31:0] avm_unnamed_qspline7_qspline_address,
    output wire [0:0] avm_unnamed_qspline7_qspline_burstcount,
    output wire [1:0] avm_unnamed_qspline7_qspline_byteenable,
    output wire [0:0] avm_unnamed_qspline7_qspline_enable,
    output wire [0:0] avm_unnamed_qspline7_qspline_read,
    output wire [0:0] avm_unnamed_qspline7_qspline_write,
    output wire [15:0] avm_unnamed_qspline7_qspline_writedata,
    output wire [31:0] avm_unnamed_qspline8_qspline_address,
    output wire [0:0] avm_unnamed_qspline8_qspline_burstcount,
    output wire [1:0] avm_unnamed_qspline8_qspline_byteenable,
    output wire [0:0] avm_unnamed_qspline8_qspline_enable,
    output wire [0:0] avm_unnamed_qspline8_qspline_read,
    output wire [0:0] avm_unnamed_qspline8_qspline_write,
    output wire [15:0] avm_unnamed_qspline8_qspline_writedata,
    output wire [31:0] avm_unnamed_qspline9_qspline_address,
    output wire [0:0] avm_unnamed_qspline9_qspline_burstcount,
    output wire [1:0] avm_unnamed_qspline9_qspline_byteenable,
    output wire [0:0] avm_unnamed_qspline9_qspline_enable,
    output wire [0:0] avm_unnamed_qspline9_qspline_read,
    output wire [0:0] avm_unnamed_qspline9_qspline_write,
    output wire [15:0] avm_unnamed_qspline9_qspline_writedata,
    output wire [0:0] avst_iord_bl_call_qspline_ready,
    output wire [31:0] avst_iowr_bl_return_qspline_data,
    output wire [0:0] avst_iowr_bl_return_qspline_valid,
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
    wire [31:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] qspline_function_out_iord_bl_call_qspline_o_fifoready;
    wire [31:0] qspline_function_out_iowr_bl_return_qspline_o_fifodata;
    wire [0:0] qspline_function_out_iowr_bl_return_qspline_o_fifovalid;
    wire [31:0] qspline_function_out_memdep_1_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_1_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_1_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_1_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_1_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_1_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_1_qspline_avm_writedata;
    wire [31:0] qspline_function_out_memdep_2_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_2_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_2_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_2_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_2_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_2_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_2_qspline_avm_writedata;
    wire [31:0] qspline_function_out_memdep_3_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_3_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_3_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_3_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_3_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_3_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_3_qspline_avm_writedata;
    wire [31:0] qspline_function_out_memdep_4_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_4_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_4_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_4_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_4_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_4_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_4_qspline_avm_writedata;
    wire [31:0] qspline_function_out_memdep_5_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_5_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_5_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_5_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_5_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_5_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_5_qspline_avm_writedata;
    wire [31:0] qspline_function_out_memdep_6_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_6_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_6_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_6_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_6_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_6_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_6_qspline_avm_writedata;
    wire [31:0] qspline_function_out_memdep_7_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_7_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_7_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_7_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_7_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_7_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_7_qspline_avm_writedata;
    wire [31:0] qspline_function_out_memdep_qspline_avm_address;
    wire [0:0] qspline_function_out_memdep_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_memdep_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_memdep_qspline_avm_enable;
    wire [0:0] qspline_function_out_memdep_qspline_avm_read;
    wire [0:0] qspline_function_out_memdep_qspline_avm_write;
    wire [15:0] qspline_function_out_memdep_qspline_avm_writedata;
    wire [31:0] qspline_function_out_unnamed_qspline10_qspline_avm_address;
    wire [0:0] qspline_function_out_unnamed_qspline10_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_unnamed_qspline10_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_unnamed_qspline10_qspline_avm_enable;
    wire [0:0] qspline_function_out_unnamed_qspline10_qspline_avm_read;
    wire [0:0] qspline_function_out_unnamed_qspline10_qspline_avm_write;
    wire [15:0] qspline_function_out_unnamed_qspline10_qspline_avm_writedata;
    wire [31:0] qspline_function_out_unnamed_qspline11_qspline_avm_address;
    wire [0:0] qspline_function_out_unnamed_qspline11_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_unnamed_qspline11_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_unnamed_qspline11_qspline_avm_enable;
    wire [0:0] qspline_function_out_unnamed_qspline11_qspline_avm_read;
    wire [0:0] qspline_function_out_unnamed_qspline11_qspline_avm_write;
    wire [15:0] qspline_function_out_unnamed_qspline11_qspline_avm_writedata;
    wire [31:0] qspline_function_out_unnamed_qspline12_qspline_avm_address;
    wire [0:0] qspline_function_out_unnamed_qspline12_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_unnamed_qspline12_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_unnamed_qspline12_qspline_avm_enable;
    wire [0:0] qspline_function_out_unnamed_qspline12_qspline_avm_read;
    wire [0:0] qspline_function_out_unnamed_qspline12_qspline_avm_write;
    wire [15:0] qspline_function_out_unnamed_qspline12_qspline_avm_writedata;
    wire [31:0] qspline_function_out_unnamed_qspline5_qspline_avm_address;
    wire [0:0] qspline_function_out_unnamed_qspline5_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_unnamed_qspline5_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_unnamed_qspline5_qspline_avm_enable;
    wire [0:0] qspline_function_out_unnamed_qspline5_qspline_avm_read;
    wire [0:0] qspline_function_out_unnamed_qspline5_qspline_avm_write;
    wire [15:0] qspline_function_out_unnamed_qspline5_qspline_avm_writedata;
    wire [31:0] qspline_function_out_unnamed_qspline7_qspline_avm_address;
    wire [0:0] qspline_function_out_unnamed_qspline7_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_unnamed_qspline7_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_unnamed_qspline7_qspline_avm_enable;
    wire [0:0] qspline_function_out_unnamed_qspline7_qspline_avm_read;
    wire [0:0] qspline_function_out_unnamed_qspline7_qspline_avm_write;
    wire [15:0] qspline_function_out_unnamed_qspline7_qspline_avm_writedata;
    wire [31:0] qspline_function_out_unnamed_qspline8_qspline_avm_address;
    wire [0:0] qspline_function_out_unnamed_qspline8_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_unnamed_qspline8_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_unnamed_qspline8_qspline_avm_enable;
    wire [0:0] qspline_function_out_unnamed_qspline8_qspline_avm_read;
    wire [0:0] qspline_function_out_unnamed_qspline8_qspline_avm_write;
    wire [15:0] qspline_function_out_unnamed_qspline8_qspline_avm_writedata;
    wire [31:0] qspline_function_out_unnamed_qspline9_qspline_avm_address;
    wire [0:0] qspline_function_out_unnamed_qspline9_qspline_avm_burstcount;
    wire [1:0] qspline_function_out_unnamed_qspline9_qspline_avm_byteenable;
    wire [0:0] qspline_function_out_unnamed_qspline9_qspline_avm_enable;
    wire [0:0] qspline_function_out_unnamed_qspline9_qspline_avm_read;
    wire [0:0] qspline_function_out_unnamed_qspline9_qspline_avm_write;
    wire [15:0] qspline_function_out_unnamed_qspline9_qspline_avm_writedata;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,78)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = idx;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // qspline_function(BLACKBOX,191)
    qspline_function theqspline_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_qspline_i_fifodata(implicit_input_q),
        .in_iord_bl_call_qspline_i_fifovalid(start),
        .in_iowr_bl_return_qspline_i_fifoready(not_stall_q),
        .in_memdep_1_qspline_avm_readdata(avm_memdep_1_qspline_readdata),
        .in_memdep_1_qspline_avm_readdatavalid(avm_memdep_1_qspline_readdatavalid),
        .in_memdep_1_qspline_avm_waitrequest(avm_memdep_1_qspline_waitrequest),
        .in_memdep_1_qspline_avm_writeack(avm_memdep_1_qspline_writeack),
        .in_memdep_2_qspline_avm_readdata(avm_memdep_2_qspline_readdata),
        .in_memdep_2_qspline_avm_readdatavalid(avm_memdep_2_qspline_readdatavalid),
        .in_memdep_2_qspline_avm_waitrequest(avm_memdep_2_qspline_waitrequest),
        .in_memdep_2_qspline_avm_writeack(avm_memdep_2_qspline_writeack),
        .in_memdep_3_qspline_avm_readdata(avm_memdep_3_qspline_readdata),
        .in_memdep_3_qspline_avm_readdatavalid(avm_memdep_3_qspline_readdatavalid),
        .in_memdep_3_qspline_avm_waitrequest(avm_memdep_3_qspline_waitrequest),
        .in_memdep_3_qspline_avm_writeack(avm_memdep_3_qspline_writeack),
        .in_memdep_4_qspline_avm_readdata(avm_memdep_4_qspline_readdata),
        .in_memdep_4_qspline_avm_readdatavalid(avm_memdep_4_qspline_readdatavalid),
        .in_memdep_4_qspline_avm_waitrequest(avm_memdep_4_qspline_waitrequest),
        .in_memdep_4_qspline_avm_writeack(avm_memdep_4_qspline_writeack),
        .in_memdep_5_qspline_avm_readdata(avm_memdep_5_qspline_readdata),
        .in_memdep_5_qspline_avm_readdatavalid(avm_memdep_5_qspline_readdatavalid),
        .in_memdep_5_qspline_avm_waitrequest(avm_memdep_5_qspline_waitrequest),
        .in_memdep_5_qspline_avm_writeack(avm_memdep_5_qspline_writeack),
        .in_memdep_6_qspline_avm_readdata(avm_memdep_6_qspline_readdata),
        .in_memdep_6_qspline_avm_readdatavalid(avm_memdep_6_qspline_readdatavalid),
        .in_memdep_6_qspline_avm_waitrequest(avm_memdep_6_qspline_waitrequest),
        .in_memdep_6_qspline_avm_writeack(avm_memdep_6_qspline_writeack),
        .in_memdep_7_qspline_avm_readdata(avm_memdep_7_qspline_readdata),
        .in_memdep_7_qspline_avm_readdatavalid(avm_memdep_7_qspline_readdatavalid),
        .in_memdep_7_qspline_avm_waitrequest(avm_memdep_7_qspline_waitrequest),
        .in_memdep_7_qspline_avm_writeack(avm_memdep_7_qspline_writeack),
        .in_memdep_qspline_avm_readdata(avm_memdep_qspline_readdata),
        .in_memdep_qspline_avm_readdatavalid(avm_memdep_qspline_readdatavalid),
        .in_memdep_qspline_avm_waitrequest(avm_memdep_qspline_waitrequest),
        .in_memdep_qspline_avm_writeack(avm_memdep_qspline_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_qspline10_qspline_avm_readdata(avm_unnamed_qspline10_qspline_readdata),
        .in_unnamed_qspline10_qspline_avm_readdatavalid(avm_unnamed_qspline10_qspline_readdatavalid),
        .in_unnamed_qspline10_qspline_avm_waitrequest(avm_unnamed_qspline10_qspline_waitrequest),
        .in_unnamed_qspline10_qspline_avm_writeack(avm_unnamed_qspline10_qspline_writeack),
        .in_unnamed_qspline11_qspline_avm_readdata(avm_unnamed_qspline11_qspline_readdata),
        .in_unnamed_qspline11_qspline_avm_readdatavalid(avm_unnamed_qspline11_qspline_readdatavalid),
        .in_unnamed_qspline11_qspline_avm_waitrequest(avm_unnamed_qspline11_qspline_waitrequest),
        .in_unnamed_qspline11_qspline_avm_writeack(avm_unnamed_qspline11_qspline_writeack),
        .in_unnamed_qspline12_qspline_avm_readdata(avm_unnamed_qspline12_qspline_readdata),
        .in_unnamed_qspline12_qspline_avm_readdatavalid(avm_unnamed_qspline12_qspline_readdatavalid),
        .in_unnamed_qspline12_qspline_avm_waitrequest(avm_unnamed_qspline12_qspline_waitrequest),
        .in_unnamed_qspline12_qspline_avm_writeack(avm_unnamed_qspline12_qspline_writeack),
        .in_unnamed_qspline5_qspline_avm_readdata(avm_unnamed_qspline5_qspline_readdata),
        .in_unnamed_qspline5_qspline_avm_readdatavalid(avm_unnamed_qspline5_qspline_readdatavalid),
        .in_unnamed_qspline5_qspline_avm_waitrequest(avm_unnamed_qspline5_qspline_waitrequest),
        .in_unnamed_qspline5_qspline_avm_writeack(avm_unnamed_qspline5_qspline_writeack),
        .in_unnamed_qspline7_qspline_avm_readdata(avm_unnamed_qspline7_qspline_readdata),
        .in_unnamed_qspline7_qspline_avm_readdatavalid(avm_unnamed_qspline7_qspline_readdatavalid),
        .in_unnamed_qspline7_qspline_avm_waitrequest(avm_unnamed_qspline7_qspline_waitrequest),
        .in_unnamed_qspline7_qspline_avm_writeack(avm_unnamed_qspline7_qspline_writeack),
        .in_unnamed_qspline8_qspline_avm_readdata(avm_unnamed_qspline8_qspline_readdata),
        .in_unnamed_qspline8_qspline_avm_readdatavalid(avm_unnamed_qspline8_qspline_readdatavalid),
        .in_unnamed_qspline8_qspline_avm_waitrequest(avm_unnamed_qspline8_qspline_waitrequest),
        .in_unnamed_qspline8_qspline_avm_writeack(avm_unnamed_qspline8_qspline_writeack),
        .in_unnamed_qspline9_qspline_avm_readdata(avm_unnamed_qspline9_qspline_readdata),
        .in_unnamed_qspline9_qspline_avm_readdatavalid(avm_unnamed_qspline9_qspline_readdatavalid),
        .in_unnamed_qspline9_qspline_avm_waitrequest(avm_unnamed_qspline9_qspline_waitrequest),
        .in_unnamed_qspline9_qspline_avm_writeack(avm_unnamed_qspline9_qspline_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_qspline_o_fifoready(qspline_function_out_iord_bl_call_qspline_o_fifoready),
        .out_iowr_bl_return_qspline_o_fifodata(qspline_function_out_iowr_bl_return_qspline_o_fifodata),
        .out_iowr_bl_return_qspline_o_fifovalid(qspline_function_out_iowr_bl_return_qspline_o_fifovalid),
        .out_memdep_1_qspline_avm_address(qspline_function_out_memdep_1_qspline_avm_address),
        .out_memdep_1_qspline_avm_burstcount(qspline_function_out_memdep_1_qspline_avm_burstcount),
        .out_memdep_1_qspline_avm_byteenable(qspline_function_out_memdep_1_qspline_avm_byteenable),
        .out_memdep_1_qspline_avm_enable(qspline_function_out_memdep_1_qspline_avm_enable),
        .out_memdep_1_qspline_avm_read(qspline_function_out_memdep_1_qspline_avm_read),
        .out_memdep_1_qspline_avm_write(qspline_function_out_memdep_1_qspline_avm_write),
        .out_memdep_1_qspline_avm_writedata(qspline_function_out_memdep_1_qspline_avm_writedata),
        .out_memdep_2_qspline_avm_address(qspline_function_out_memdep_2_qspline_avm_address),
        .out_memdep_2_qspline_avm_burstcount(qspline_function_out_memdep_2_qspline_avm_burstcount),
        .out_memdep_2_qspline_avm_byteenable(qspline_function_out_memdep_2_qspline_avm_byteenable),
        .out_memdep_2_qspline_avm_enable(qspline_function_out_memdep_2_qspline_avm_enable),
        .out_memdep_2_qspline_avm_read(qspline_function_out_memdep_2_qspline_avm_read),
        .out_memdep_2_qspline_avm_write(qspline_function_out_memdep_2_qspline_avm_write),
        .out_memdep_2_qspline_avm_writedata(qspline_function_out_memdep_2_qspline_avm_writedata),
        .out_memdep_3_qspline_avm_address(qspline_function_out_memdep_3_qspline_avm_address),
        .out_memdep_3_qspline_avm_burstcount(qspline_function_out_memdep_3_qspline_avm_burstcount),
        .out_memdep_3_qspline_avm_byteenable(qspline_function_out_memdep_3_qspline_avm_byteenable),
        .out_memdep_3_qspline_avm_enable(qspline_function_out_memdep_3_qspline_avm_enable),
        .out_memdep_3_qspline_avm_read(qspline_function_out_memdep_3_qspline_avm_read),
        .out_memdep_3_qspline_avm_write(qspline_function_out_memdep_3_qspline_avm_write),
        .out_memdep_3_qspline_avm_writedata(qspline_function_out_memdep_3_qspline_avm_writedata),
        .out_memdep_4_qspline_avm_address(qspline_function_out_memdep_4_qspline_avm_address),
        .out_memdep_4_qspline_avm_burstcount(qspline_function_out_memdep_4_qspline_avm_burstcount),
        .out_memdep_4_qspline_avm_byteenable(qspline_function_out_memdep_4_qspline_avm_byteenable),
        .out_memdep_4_qspline_avm_enable(qspline_function_out_memdep_4_qspline_avm_enable),
        .out_memdep_4_qspline_avm_read(qspline_function_out_memdep_4_qspline_avm_read),
        .out_memdep_4_qspline_avm_write(qspline_function_out_memdep_4_qspline_avm_write),
        .out_memdep_4_qspline_avm_writedata(qspline_function_out_memdep_4_qspline_avm_writedata),
        .out_memdep_5_qspline_avm_address(qspline_function_out_memdep_5_qspline_avm_address),
        .out_memdep_5_qspline_avm_burstcount(qspline_function_out_memdep_5_qspline_avm_burstcount),
        .out_memdep_5_qspline_avm_byteenable(qspline_function_out_memdep_5_qspline_avm_byteenable),
        .out_memdep_5_qspline_avm_enable(qspline_function_out_memdep_5_qspline_avm_enable),
        .out_memdep_5_qspline_avm_read(qspline_function_out_memdep_5_qspline_avm_read),
        .out_memdep_5_qspline_avm_write(qspline_function_out_memdep_5_qspline_avm_write),
        .out_memdep_5_qspline_avm_writedata(qspline_function_out_memdep_5_qspline_avm_writedata),
        .out_memdep_6_qspline_avm_address(qspline_function_out_memdep_6_qspline_avm_address),
        .out_memdep_6_qspline_avm_burstcount(qspline_function_out_memdep_6_qspline_avm_burstcount),
        .out_memdep_6_qspline_avm_byteenable(qspline_function_out_memdep_6_qspline_avm_byteenable),
        .out_memdep_6_qspline_avm_enable(qspline_function_out_memdep_6_qspline_avm_enable),
        .out_memdep_6_qspline_avm_read(qspline_function_out_memdep_6_qspline_avm_read),
        .out_memdep_6_qspline_avm_write(qspline_function_out_memdep_6_qspline_avm_write),
        .out_memdep_6_qspline_avm_writedata(qspline_function_out_memdep_6_qspline_avm_writedata),
        .out_memdep_7_qspline_avm_address(qspline_function_out_memdep_7_qspline_avm_address),
        .out_memdep_7_qspline_avm_burstcount(qspline_function_out_memdep_7_qspline_avm_burstcount),
        .out_memdep_7_qspline_avm_byteenable(qspline_function_out_memdep_7_qspline_avm_byteenable),
        .out_memdep_7_qspline_avm_enable(qspline_function_out_memdep_7_qspline_avm_enable),
        .out_memdep_7_qspline_avm_read(qspline_function_out_memdep_7_qspline_avm_read),
        .out_memdep_7_qspline_avm_write(qspline_function_out_memdep_7_qspline_avm_write),
        .out_memdep_7_qspline_avm_writedata(qspline_function_out_memdep_7_qspline_avm_writedata),
        .out_memdep_qspline_avm_address(qspline_function_out_memdep_qspline_avm_address),
        .out_memdep_qspline_avm_burstcount(qspline_function_out_memdep_qspline_avm_burstcount),
        .out_memdep_qspline_avm_byteenable(qspline_function_out_memdep_qspline_avm_byteenable),
        .out_memdep_qspline_avm_enable(qspline_function_out_memdep_qspline_avm_enable),
        .out_memdep_qspline_avm_read(qspline_function_out_memdep_qspline_avm_read),
        .out_memdep_qspline_avm_write(qspline_function_out_memdep_qspline_avm_write),
        .out_memdep_qspline_avm_writedata(qspline_function_out_memdep_qspline_avm_writedata),
        .out_stall_out(),
        .out_unnamed_qspline10_qspline_avm_address(qspline_function_out_unnamed_qspline10_qspline_avm_address),
        .out_unnamed_qspline10_qspline_avm_burstcount(qspline_function_out_unnamed_qspline10_qspline_avm_burstcount),
        .out_unnamed_qspline10_qspline_avm_byteenable(qspline_function_out_unnamed_qspline10_qspline_avm_byteenable),
        .out_unnamed_qspline10_qspline_avm_enable(qspline_function_out_unnamed_qspline10_qspline_avm_enable),
        .out_unnamed_qspline10_qspline_avm_read(qspline_function_out_unnamed_qspline10_qspline_avm_read),
        .out_unnamed_qspline10_qspline_avm_write(qspline_function_out_unnamed_qspline10_qspline_avm_write),
        .out_unnamed_qspline10_qspline_avm_writedata(qspline_function_out_unnamed_qspline10_qspline_avm_writedata),
        .out_unnamed_qspline11_qspline_avm_address(qspline_function_out_unnamed_qspline11_qspline_avm_address),
        .out_unnamed_qspline11_qspline_avm_burstcount(qspline_function_out_unnamed_qspline11_qspline_avm_burstcount),
        .out_unnamed_qspline11_qspline_avm_byteenable(qspline_function_out_unnamed_qspline11_qspline_avm_byteenable),
        .out_unnamed_qspline11_qspline_avm_enable(qspline_function_out_unnamed_qspline11_qspline_avm_enable),
        .out_unnamed_qspline11_qspline_avm_read(qspline_function_out_unnamed_qspline11_qspline_avm_read),
        .out_unnamed_qspline11_qspline_avm_write(qspline_function_out_unnamed_qspline11_qspline_avm_write),
        .out_unnamed_qspline11_qspline_avm_writedata(qspline_function_out_unnamed_qspline11_qspline_avm_writedata),
        .out_unnamed_qspline12_qspline_avm_address(qspline_function_out_unnamed_qspline12_qspline_avm_address),
        .out_unnamed_qspline12_qspline_avm_burstcount(qspline_function_out_unnamed_qspline12_qspline_avm_burstcount),
        .out_unnamed_qspline12_qspline_avm_byteenable(qspline_function_out_unnamed_qspline12_qspline_avm_byteenable),
        .out_unnamed_qspline12_qspline_avm_enable(qspline_function_out_unnamed_qspline12_qspline_avm_enable),
        .out_unnamed_qspline12_qspline_avm_read(qspline_function_out_unnamed_qspline12_qspline_avm_read),
        .out_unnamed_qspline12_qspline_avm_write(qspline_function_out_unnamed_qspline12_qspline_avm_write),
        .out_unnamed_qspline12_qspline_avm_writedata(qspline_function_out_unnamed_qspline12_qspline_avm_writedata),
        .out_unnamed_qspline5_qspline_avm_address(qspline_function_out_unnamed_qspline5_qspline_avm_address),
        .out_unnamed_qspline5_qspline_avm_burstcount(qspline_function_out_unnamed_qspline5_qspline_avm_burstcount),
        .out_unnamed_qspline5_qspline_avm_byteenable(qspline_function_out_unnamed_qspline5_qspline_avm_byteenable),
        .out_unnamed_qspline5_qspline_avm_enable(qspline_function_out_unnamed_qspline5_qspline_avm_enable),
        .out_unnamed_qspline5_qspline_avm_read(qspline_function_out_unnamed_qspline5_qspline_avm_read),
        .out_unnamed_qspline5_qspline_avm_write(qspline_function_out_unnamed_qspline5_qspline_avm_write),
        .out_unnamed_qspline5_qspline_avm_writedata(qspline_function_out_unnamed_qspline5_qspline_avm_writedata),
        .out_unnamed_qspline7_qspline_avm_address(qspline_function_out_unnamed_qspline7_qspline_avm_address),
        .out_unnamed_qspline7_qspline_avm_burstcount(qspline_function_out_unnamed_qspline7_qspline_avm_burstcount),
        .out_unnamed_qspline7_qspline_avm_byteenable(qspline_function_out_unnamed_qspline7_qspline_avm_byteenable),
        .out_unnamed_qspline7_qspline_avm_enable(qspline_function_out_unnamed_qspline7_qspline_avm_enable),
        .out_unnamed_qspline7_qspline_avm_read(qspline_function_out_unnamed_qspline7_qspline_avm_read),
        .out_unnamed_qspline7_qspline_avm_write(qspline_function_out_unnamed_qspline7_qspline_avm_write),
        .out_unnamed_qspline7_qspline_avm_writedata(qspline_function_out_unnamed_qspline7_qspline_avm_writedata),
        .out_unnamed_qspline8_qspline_avm_address(qspline_function_out_unnamed_qspline8_qspline_avm_address),
        .out_unnamed_qspline8_qspline_avm_burstcount(qspline_function_out_unnamed_qspline8_qspline_avm_burstcount),
        .out_unnamed_qspline8_qspline_avm_byteenable(qspline_function_out_unnamed_qspline8_qspline_avm_byteenable),
        .out_unnamed_qspline8_qspline_avm_enable(qspline_function_out_unnamed_qspline8_qspline_avm_enable),
        .out_unnamed_qspline8_qspline_avm_read(qspline_function_out_unnamed_qspline8_qspline_avm_read),
        .out_unnamed_qspline8_qspline_avm_write(qspline_function_out_unnamed_qspline8_qspline_avm_write),
        .out_unnamed_qspline8_qspline_avm_writedata(qspline_function_out_unnamed_qspline8_qspline_avm_writedata),
        .out_unnamed_qspline9_qspline_avm_address(qspline_function_out_unnamed_qspline9_qspline_avm_address),
        .out_unnamed_qspline9_qspline_avm_burstcount(qspline_function_out_unnamed_qspline9_qspline_avm_burstcount),
        .out_unnamed_qspline9_qspline_avm_byteenable(qspline_function_out_unnamed_qspline9_qspline_avm_byteenable),
        .out_unnamed_qspline9_qspline_avm_enable(qspline_function_out_unnamed_qspline9_qspline_avm_enable),
        .out_unnamed_qspline9_qspline_avm_read(qspline_function_out_unnamed_qspline9_qspline_avm_read),
        .out_unnamed_qspline9_qspline_avm_write(qspline_function_out_unnamed_qspline9_qspline_avm_write),
        .out_unnamed_qspline9_qspline_avm_writedata(qspline_function_out_unnamed_qspline9_qspline_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_qspline_address(GPOUT,79)
    assign avm_memdep_1_qspline_address = qspline_function_out_memdep_1_qspline_avm_address;

    // avm_memdep_1_qspline_burstcount(GPOUT,80)
    assign avm_memdep_1_qspline_burstcount = qspline_function_out_memdep_1_qspline_avm_burstcount;

    // avm_memdep_1_qspline_byteenable(GPOUT,81)
    assign avm_memdep_1_qspline_byteenable = qspline_function_out_memdep_1_qspline_avm_byteenable;

    // avm_memdep_1_qspline_enable(GPOUT,82)
    assign avm_memdep_1_qspline_enable = qspline_function_out_memdep_1_qspline_avm_enable;

    // avm_memdep_1_qspline_read(GPOUT,83)
    assign avm_memdep_1_qspline_read = qspline_function_out_memdep_1_qspline_avm_read;

    // avm_memdep_1_qspline_write(GPOUT,84)
    assign avm_memdep_1_qspline_write = qspline_function_out_memdep_1_qspline_avm_write;

    // avm_memdep_1_qspline_writedata(GPOUT,85)
    assign avm_memdep_1_qspline_writedata = qspline_function_out_memdep_1_qspline_avm_writedata;

    // avm_memdep_2_qspline_address(GPOUT,86)
    assign avm_memdep_2_qspline_address = qspline_function_out_memdep_2_qspline_avm_address;

    // avm_memdep_2_qspline_burstcount(GPOUT,87)
    assign avm_memdep_2_qspline_burstcount = qspline_function_out_memdep_2_qspline_avm_burstcount;

    // avm_memdep_2_qspline_byteenable(GPOUT,88)
    assign avm_memdep_2_qspline_byteenable = qspline_function_out_memdep_2_qspline_avm_byteenable;

    // avm_memdep_2_qspline_enable(GPOUT,89)
    assign avm_memdep_2_qspline_enable = qspline_function_out_memdep_2_qspline_avm_enable;

    // avm_memdep_2_qspline_read(GPOUT,90)
    assign avm_memdep_2_qspline_read = qspline_function_out_memdep_2_qspline_avm_read;

    // avm_memdep_2_qspline_write(GPOUT,91)
    assign avm_memdep_2_qspline_write = qspline_function_out_memdep_2_qspline_avm_write;

    // avm_memdep_2_qspline_writedata(GPOUT,92)
    assign avm_memdep_2_qspline_writedata = qspline_function_out_memdep_2_qspline_avm_writedata;

    // avm_memdep_3_qspline_address(GPOUT,93)
    assign avm_memdep_3_qspline_address = qspline_function_out_memdep_3_qspline_avm_address;

    // avm_memdep_3_qspline_burstcount(GPOUT,94)
    assign avm_memdep_3_qspline_burstcount = qspline_function_out_memdep_3_qspline_avm_burstcount;

    // avm_memdep_3_qspline_byteenable(GPOUT,95)
    assign avm_memdep_3_qspline_byteenable = qspline_function_out_memdep_3_qspline_avm_byteenable;

    // avm_memdep_3_qspline_enable(GPOUT,96)
    assign avm_memdep_3_qspline_enable = qspline_function_out_memdep_3_qspline_avm_enable;

    // avm_memdep_3_qspline_read(GPOUT,97)
    assign avm_memdep_3_qspline_read = qspline_function_out_memdep_3_qspline_avm_read;

    // avm_memdep_3_qspline_write(GPOUT,98)
    assign avm_memdep_3_qspline_write = qspline_function_out_memdep_3_qspline_avm_write;

    // avm_memdep_3_qspline_writedata(GPOUT,99)
    assign avm_memdep_3_qspline_writedata = qspline_function_out_memdep_3_qspline_avm_writedata;

    // avm_memdep_4_qspline_address(GPOUT,100)
    assign avm_memdep_4_qspline_address = qspline_function_out_memdep_4_qspline_avm_address;

    // avm_memdep_4_qspline_burstcount(GPOUT,101)
    assign avm_memdep_4_qspline_burstcount = qspline_function_out_memdep_4_qspline_avm_burstcount;

    // avm_memdep_4_qspline_byteenable(GPOUT,102)
    assign avm_memdep_4_qspline_byteenable = qspline_function_out_memdep_4_qspline_avm_byteenable;

    // avm_memdep_4_qspline_enable(GPOUT,103)
    assign avm_memdep_4_qspline_enable = qspline_function_out_memdep_4_qspline_avm_enable;

    // avm_memdep_4_qspline_read(GPOUT,104)
    assign avm_memdep_4_qspline_read = qspline_function_out_memdep_4_qspline_avm_read;

    // avm_memdep_4_qspline_write(GPOUT,105)
    assign avm_memdep_4_qspline_write = qspline_function_out_memdep_4_qspline_avm_write;

    // avm_memdep_4_qspline_writedata(GPOUT,106)
    assign avm_memdep_4_qspline_writedata = qspline_function_out_memdep_4_qspline_avm_writedata;

    // avm_memdep_5_qspline_address(GPOUT,107)
    assign avm_memdep_5_qspline_address = qspline_function_out_memdep_5_qspline_avm_address;

    // avm_memdep_5_qspline_burstcount(GPOUT,108)
    assign avm_memdep_5_qspline_burstcount = qspline_function_out_memdep_5_qspline_avm_burstcount;

    // avm_memdep_5_qspline_byteenable(GPOUT,109)
    assign avm_memdep_5_qspline_byteenable = qspline_function_out_memdep_5_qspline_avm_byteenable;

    // avm_memdep_5_qspline_enable(GPOUT,110)
    assign avm_memdep_5_qspline_enable = qspline_function_out_memdep_5_qspline_avm_enable;

    // avm_memdep_5_qspline_read(GPOUT,111)
    assign avm_memdep_5_qspline_read = qspline_function_out_memdep_5_qspline_avm_read;

    // avm_memdep_5_qspline_write(GPOUT,112)
    assign avm_memdep_5_qspline_write = qspline_function_out_memdep_5_qspline_avm_write;

    // avm_memdep_5_qspline_writedata(GPOUT,113)
    assign avm_memdep_5_qspline_writedata = qspline_function_out_memdep_5_qspline_avm_writedata;

    // avm_memdep_6_qspline_address(GPOUT,114)
    assign avm_memdep_6_qspline_address = qspline_function_out_memdep_6_qspline_avm_address;

    // avm_memdep_6_qspline_burstcount(GPOUT,115)
    assign avm_memdep_6_qspline_burstcount = qspline_function_out_memdep_6_qspline_avm_burstcount;

    // avm_memdep_6_qspline_byteenable(GPOUT,116)
    assign avm_memdep_6_qspline_byteenable = qspline_function_out_memdep_6_qspline_avm_byteenable;

    // avm_memdep_6_qspline_enable(GPOUT,117)
    assign avm_memdep_6_qspline_enable = qspline_function_out_memdep_6_qspline_avm_enable;

    // avm_memdep_6_qspline_read(GPOUT,118)
    assign avm_memdep_6_qspline_read = qspline_function_out_memdep_6_qspline_avm_read;

    // avm_memdep_6_qspline_write(GPOUT,119)
    assign avm_memdep_6_qspline_write = qspline_function_out_memdep_6_qspline_avm_write;

    // avm_memdep_6_qspline_writedata(GPOUT,120)
    assign avm_memdep_6_qspline_writedata = qspline_function_out_memdep_6_qspline_avm_writedata;

    // avm_memdep_7_qspline_address(GPOUT,121)
    assign avm_memdep_7_qspline_address = qspline_function_out_memdep_7_qspline_avm_address;

    // avm_memdep_7_qspline_burstcount(GPOUT,122)
    assign avm_memdep_7_qspline_burstcount = qspline_function_out_memdep_7_qspline_avm_burstcount;

    // avm_memdep_7_qspline_byteenable(GPOUT,123)
    assign avm_memdep_7_qspline_byteenable = qspline_function_out_memdep_7_qspline_avm_byteenable;

    // avm_memdep_7_qspline_enable(GPOUT,124)
    assign avm_memdep_7_qspline_enable = qspline_function_out_memdep_7_qspline_avm_enable;

    // avm_memdep_7_qspline_read(GPOUT,125)
    assign avm_memdep_7_qspline_read = qspline_function_out_memdep_7_qspline_avm_read;

    // avm_memdep_7_qspline_write(GPOUT,126)
    assign avm_memdep_7_qspline_write = qspline_function_out_memdep_7_qspline_avm_write;

    // avm_memdep_7_qspline_writedata(GPOUT,127)
    assign avm_memdep_7_qspline_writedata = qspline_function_out_memdep_7_qspline_avm_writedata;

    // avm_memdep_qspline_address(GPOUT,128)
    assign avm_memdep_qspline_address = qspline_function_out_memdep_qspline_avm_address;

    // avm_memdep_qspline_burstcount(GPOUT,129)
    assign avm_memdep_qspline_burstcount = qspline_function_out_memdep_qspline_avm_burstcount;

    // avm_memdep_qspline_byteenable(GPOUT,130)
    assign avm_memdep_qspline_byteenable = qspline_function_out_memdep_qspline_avm_byteenable;

    // avm_memdep_qspline_enable(GPOUT,131)
    assign avm_memdep_qspline_enable = qspline_function_out_memdep_qspline_avm_enable;

    // avm_memdep_qspline_read(GPOUT,132)
    assign avm_memdep_qspline_read = qspline_function_out_memdep_qspline_avm_read;

    // avm_memdep_qspline_write(GPOUT,133)
    assign avm_memdep_qspline_write = qspline_function_out_memdep_qspline_avm_write;

    // avm_memdep_qspline_writedata(GPOUT,134)
    assign avm_memdep_qspline_writedata = qspline_function_out_memdep_qspline_avm_writedata;

    // avm_unnamed_qspline10_qspline_address(GPOUT,135)
    assign avm_unnamed_qspline10_qspline_address = qspline_function_out_unnamed_qspline10_qspline_avm_address;

    // avm_unnamed_qspline10_qspline_burstcount(GPOUT,136)
    assign avm_unnamed_qspline10_qspline_burstcount = qspline_function_out_unnamed_qspline10_qspline_avm_burstcount;

    // avm_unnamed_qspline10_qspline_byteenable(GPOUT,137)
    assign avm_unnamed_qspline10_qspline_byteenable = qspline_function_out_unnamed_qspline10_qspline_avm_byteenable;

    // avm_unnamed_qspline10_qspline_enable(GPOUT,138)
    assign avm_unnamed_qspline10_qspline_enable = qspline_function_out_unnamed_qspline10_qspline_avm_enable;

    // avm_unnamed_qspline10_qspline_read(GPOUT,139)
    assign avm_unnamed_qspline10_qspline_read = qspline_function_out_unnamed_qspline10_qspline_avm_read;

    // avm_unnamed_qspline10_qspline_write(GPOUT,140)
    assign avm_unnamed_qspline10_qspline_write = qspline_function_out_unnamed_qspline10_qspline_avm_write;

    // avm_unnamed_qspline10_qspline_writedata(GPOUT,141)
    assign avm_unnamed_qspline10_qspline_writedata = qspline_function_out_unnamed_qspline10_qspline_avm_writedata;

    // avm_unnamed_qspline11_qspline_address(GPOUT,142)
    assign avm_unnamed_qspline11_qspline_address = qspline_function_out_unnamed_qspline11_qspline_avm_address;

    // avm_unnamed_qspline11_qspline_burstcount(GPOUT,143)
    assign avm_unnamed_qspline11_qspline_burstcount = qspline_function_out_unnamed_qspline11_qspline_avm_burstcount;

    // avm_unnamed_qspline11_qspline_byteenable(GPOUT,144)
    assign avm_unnamed_qspline11_qspline_byteenable = qspline_function_out_unnamed_qspline11_qspline_avm_byteenable;

    // avm_unnamed_qspline11_qspline_enable(GPOUT,145)
    assign avm_unnamed_qspline11_qspline_enable = qspline_function_out_unnamed_qspline11_qspline_avm_enable;

    // avm_unnamed_qspline11_qspline_read(GPOUT,146)
    assign avm_unnamed_qspline11_qspline_read = qspline_function_out_unnamed_qspline11_qspline_avm_read;

    // avm_unnamed_qspline11_qspline_write(GPOUT,147)
    assign avm_unnamed_qspline11_qspline_write = qspline_function_out_unnamed_qspline11_qspline_avm_write;

    // avm_unnamed_qspline11_qspline_writedata(GPOUT,148)
    assign avm_unnamed_qspline11_qspline_writedata = qspline_function_out_unnamed_qspline11_qspline_avm_writedata;

    // avm_unnamed_qspline12_qspline_address(GPOUT,149)
    assign avm_unnamed_qspline12_qspline_address = qspline_function_out_unnamed_qspline12_qspline_avm_address;

    // avm_unnamed_qspline12_qspline_burstcount(GPOUT,150)
    assign avm_unnamed_qspline12_qspline_burstcount = qspline_function_out_unnamed_qspline12_qspline_avm_burstcount;

    // avm_unnamed_qspline12_qspline_byteenable(GPOUT,151)
    assign avm_unnamed_qspline12_qspline_byteenable = qspline_function_out_unnamed_qspline12_qspline_avm_byteenable;

    // avm_unnamed_qspline12_qspline_enable(GPOUT,152)
    assign avm_unnamed_qspline12_qspline_enable = qspline_function_out_unnamed_qspline12_qspline_avm_enable;

    // avm_unnamed_qspline12_qspline_read(GPOUT,153)
    assign avm_unnamed_qspline12_qspline_read = qspline_function_out_unnamed_qspline12_qspline_avm_read;

    // avm_unnamed_qspline12_qspline_write(GPOUT,154)
    assign avm_unnamed_qspline12_qspline_write = qspline_function_out_unnamed_qspline12_qspline_avm_write;

    // avm_unnamed_qspline12_qspline_writedata(GPOUT,155)
    assign avm_unnamed_qspline12_qspline_writedata = qspline_function_out_unnamed_qspline12_qspline_avm_writedata;

    // avm_unnamed_qspline5_qspline_address(GPOUT,156)
    assign avm_unnamed_qspline5_qspline_address = qspline_function_out_unnamed_qspline5_qspline_avm_address;

    // avm_unnamed_qspline5_qspline_burstcount(GPOUT,157)
    assign avm_unnamed_qspline5_qspline_burstcount = qspline_function_out_unnamed_qspline5_qspline_avm_burstcount;

    // avm_unnamed_qspline5_qspline_byteenable(GPOUT,158)
    assign avm_unnamed_qspline5_qspline_byteenable = qspline_function_out_unnamed_qspline5_qspline_avm_byteenable;

    // avm_unnamed_qspline5_qspline_enable(GPOUT,159)
    assign avm_unnamed_qspline5_qspline_enable = qspline_function_out_unnamed_qspline5_qspline_avm_enable;

    // avm_unnamed_qspline5_qspline_read(GPOUT,160)
    assign avm_unnamed_qspline5_qspline_read = qspline_function_out_unnamed_qspline5_qspline_avm_read;

    // avm_unnamed_qspline5_qspline_write(GPOUT,161)
    assign avm_unnamed_qspline5_qspline_write = qspline_function_out_unnamed_qspline5_qspline_avm_write;

    // avm_unnamed_qspline5_qspline_writedata(GPOUT,162)
    assign avm_unnamed_qspline5_qspline_writedata = qspline_function_out_unnamed_qspline5_qspline_avm_writedata;

    // avm_unnamed_qspline7_qspline_address(GPOUT,163)
    assign avm_unnamed_qspline7_qspline_address = qspline_function_out_unnamed_qspline7_qspline_avm_address;

    // avm_unnamed_qspline7_qspline_burstcount(GPOUT,164)
    assign avm_unnamed_qspline7_qspline_burstcount = qspline_function_out_unnamed_qspline7_qspline_avm_burstcount;

    // avm_unnamed_qspline7_qspline_byteenable(GPOUT,165)
    assign avm_unnamed_qspline7_qspline_byteenable = qspline_function_out_unnamed_qspline7_qspline_avm_byteenable;

    // avm_unnamed_qspline7_qspline_enable(GPOUT,166)
    assign avm_unnamed_qspline7_qspline_enable = qspline_function_out_unnamed_qspline7_qspline_avm_enable;

    // avm_unnamed_qspline7_qspline_read(GPOUT,167)
    assign avm_unnamed_qspline7_qspline_read = qspline_function_out_unnamed_qspline7_qspline_avm_read;

    // avm_unnamed_qspline7_qspline_write(GPOUT,168)
    assign avm_unnamed_qspline7_qspline_write = qspline_function_out_unnamed_qspline7_qspline_avm_write;

    // avm_unnamed_qspline7_qspline_writedata(GPOUT,169)
    assign avm_unnamed_qspline7_qspline_writedata = qspline_function_out_unnamed_qspline7_qspline_avm_writedata;

    // avm_unnamed_qspline8_qspline_address(GPOUT,170)
    assign avm_unnamed_qspline8_qspline_address = qspline_function_out_unnamed_qspline8_qspline_avm_address;

    // avm_unnamed_qspline8_qspline_burstcount(GPOUT,171)
    assign avm_unnamed_qspline8_qspline_burstcount = qspline_function_out_unnamed_qspline8_qspline_avm_burstcount;

    // avm_unnamed_qspline8_qspline_byteenable(GPOUT,172)
    assign avm_unnamed_qspline8_qspline_byteenable = qspline_function_out_unnamed_qspline8_qspline_avm_byteenable;

    // avm_unnamed_qspline8_qspline_enable(GPOUT,173)
    assign avm_unnamed_qspline8_qspline_enable = qspline_function_out_unnamed_qspline8_qspline_avm_enable;

    // avm_unnamed_qspline8_qspline_read(GPOUT,174)
    assign avm_unnamed_qspline8_qspline_read = qspline_function_out_unnamed_qspline8_qspline_avm_read;

    // avm_unnamed_qspline8_qspline_write(GPOUT,175)
    assign avm_unnamed_qspline8_qspline_write = qspline_function_out_unnamed_qspline8_qspline_avm_write;

    // avm_unnamed_qspline8_qspline_writedata(GPOUT,176)
    assign avm_unnamed_qspline8_qspline_writedata = qspline_function_out_unnamed_qspline8_qspline_avm_writedata;

    // avm_unnamed_qspline9_qspline_address(GPOUT,177)
    assign avm_unnamed_qspline9_qspline_address = qspline_function_out_unnamed_qspline9_qspline_avm_address;

    // avm_unnamed_qspline9_qspline_burstcount(GPOUT,178)
    assign avm_unnamed_qspline9_qspline_burstcount = qspline_function_out_unnamed_qspline9_qspline_avm_burstcount;

    // avm_unnamed_qspline9_qspline_byteenable(GPOUT,179)
    assign avm_unnamed_qspline9_qspline_byteenable = qspline_function_out_unnamed_qspline9_qspline_avm_byteenable;

    // avm_unnamed_qspline9_qspline_enable(GPOUT,180)
    assign avm_unnamed_qspline9_qspline_enable = qspline_function_out_unnamed_qspline9_qspline_avm_enable;

    // avm_unnamed_qspline9_qspline_read(GPOUT,181)
    assign avm_unnamed_qspline9_qspline_read = qspline_function_out_unnamed_qspline9_qspline_avm_read;

    // avm_unnamed_qspline9_qspline_write(GPOUT,182)
    assign avm_unnamed_qspline9_qspline_write = qspline_function_out_unnamed_qspline9_qspline_avm_write;

    // avm_unnamed_qspline9_qspline_writedata(GPOUT,183)
    assign avm_unnamed_qspline9_qspline_writedata = qspline_function_out_unnamed_qspline9_qspline_avm_writedata;

    // avst_iord_bl_call_qspline_ready(GPOUT,184)
    assign avst_iord_bl_call_qspline_ready = qspline_function_out_iord_bl_call_qspline_o_fifoready;

    // avst_iowr_bl_return_qspline_data(GPOUT,185)
    assign avst_iowr_bl_return_qspline_data = qspline_function_out_iowr_bl_return_qspline_o_fifodata;

    // avst_iowr_bl_return_qspline_valid(GPOUT,186)
    assign avst_iowr_bl_return_qspline_valid = qspline_function_out_iowr_bl_return_qspline_o_fifovalid;

    // not_ready(LOGICAL,77)
    assign not_ready_q = ~ (qspline_function_out_iord_bl_call_qspline_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,192)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,190)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,187)
    assign busy = busy_or_q;

    // done(GPOUT,188)
    assign done = qspline_function_out_iowr_bl_return_qspline_o_fifovalid;

    // returndata(GPOUT,189)
    assign returndata = qspline_function_out_iowr_bl_return_qspline_o_fifodata;

endmodule
