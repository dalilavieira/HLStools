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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B1_start
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [1151:0] in_iord_bl_call_ff_rgb24toyv12_c_i_fifodata,
    input wire [0:0] in_iord_bl_call_ff_rgb24toyv12_c_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_intel_reserved_ffwd_20_0,
    output wire [0:0] out_intel_reserved_ffwd_21_0,
    output wire [32:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_feedback_stall_out_1;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_14_0;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_15_0;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_16_0;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_17_0;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_18_0;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_19_0;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_20_0;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_21_0;
    wire [32:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_stall_out;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] bb_ff_rgb24toyv12_c_B1_start_stall_region_out_valid_out;
    wire [0:0] ff_rgb24toyv12_c_B1_start_branch_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B1_start_branch_out_valid_out_0;
    wire [0:0] ff_rgb24toyv12_c_B1_start_merge_out_stall_out_0;
    wire [0:0] ff_rgb24toyv12_c_B1_start_merge_out_stall_out_1;
    wire [0:0] ff_rgb24toyv12_c_B1_start_merge_out_valid_out;


    // ff_rgb24toyv12_c_B1_start_merge(BLACKBOX,7)
    ff_rgb24toyv12_c_B1_start_merge theff_rgb24toyv12_c_B1_start_merge (
        .in_stall_in(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(ff_rgb24toyv12_c_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(ff_rgb24toyv12_c_B1_start_merge_out_stall_out_1),
        .out_valid_out(ff_rgb24toyv12_c_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_rgb24toyv12_c_B1_start_branch(BLACKBOX,6)
    ff_rgb24toyv12_c_B1_start_branch theff_rgb24toyv12_c_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_valid_out),
        .out_stall_out(ff_rgb24toyv12_c_B1_start_branch_out_stall_out),
        .out_valid_out_0(ff_rgb24toyv12_c_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_rgb24toyv12_c_B1_start_stall_region(BLACKBOX,2)
    ff_rgb24toyv12_c_bb_B1_start_stall_region thebb_ff_rgb24toyv12_c_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_ff_rgb24toyv12_c_i_fifodata(in_iord_bl_call_ff_rgb24toyv12_c_i_fifodata),
        .in_iord_bl_call_ff_rgb24toyv12_c_i_fifovalid(in_iord_bl_call_ff_rgb24toyv12_c_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(ff_rgb24toyv12_c_B1_start_branch_out_stall_out),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writeack),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writeack),
        .in_valid_in(ff_rgb24toyv12_c_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_2_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready),
        .out_pipeline_valid_out(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_stall_out),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata),
        .out_valid_out(bb_ff_rgb24toyv12_c_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_feedback_stall_out_1;

    // out_exiting_stall_out(GPOUT,86)
    assign out_exiting_stall_out = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,87)
    assign out_exiting_valid_out = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,88)
    assign out_intel_reserved_ffwd_0_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_10_0(GPOUT,89)
    assign out_intel_reserved_ffwd_10_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,90)
    assign out_intel_reserved_ffwd_11_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,91)
    assign out_intel_reserved_ffwd_12_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,92)
    assign out_intel_reserved_ffwd_13_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,93)
    assign out_intel_reserved_ffwd_14_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,94)
    assign out_intel_reserved_ffwd_15_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,95)
    assign out_intel_reserved_ffwd_16_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,96)
    assign out_intel_reserved_ffwd_17_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,97)
    assign out_intel_reserved_ffwd_18_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,98)
    assign out_intel_reserved_ffwd_19_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,99)
    assign out_intel_reserved_ffwd_1_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,100)
    assign out_intel_reserved_ffwd_20_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,101)
    assign out_intel_reserved_ffwd_21_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,102)
    assign out_intel_reserved_ffwd_22_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,103)
    assign out_intel_reserved_ffwd_2_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,104)
    assign out_intel_reserved_ffwd_3_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,105)
    assign out_intel_reserved_ffwd_4_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,106)
    assign out_intel_reserved_ffwd_5_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,107)
    assign out_intel_reserved_ffwd_6_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,108)
    assign out_intel_reserved_ffwd_7_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,109)
    assign out_intel_reserved_ffwd_8_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,110)
    assign out_intel_reserved_ffwd_9_0 = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_intel_reserved_ffwd_9_0;

    // out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready(GPOUT,111)
    assign out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready;

    // out_stall_out_0(GPOUT,112)
    assign out_stall_out_0 = ff_rgb24toyv12_c_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,113)
    assign out_stall_out_1 = ff_rgb24toyv12_c_B1_start_merge_out_stall_out_1;

    // out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address(GPOUT,114)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount(GPOUT,115)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable(GPOUT,116)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable(GPOUT,117)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read(GPOUT,118)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write(GPOUT,119)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata(GPOUT,120)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address(GPOUT,121)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount(GPOUT,122)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable(GPOUT,123)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable(GPOUT,124)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read(GPOUT,125)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write(GPOUT,126)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata(GPOUT,127)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address(GPOUT,128)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount(GPOUT,129)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable(GPOUT,130)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable(GPOUT,131)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read(GPOUT,132)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write(GPOUT,133)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata(GPOUT,134)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address(GPOUT,135)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount(GPOUT,136)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable(GPOUT,137)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable(GPOUT,138)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read(GPOUT,139)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write(GPOUT,140)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata(GPOUT,141)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address(GPOUT,142)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount(GPOUT,143)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable(GPOUT,144)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable(GPOUT,145)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read(GPOUT,146)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write(GPOUT,147)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata(GPOUT,148)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address(GPOUT,149)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount(GPOUT,150)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable(GPOUT,151)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable(GPOUT,152)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read(GPOUT,153)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write(GPOUT,154)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata(GPOUT,155)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address(GPOUT,156)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount(GPOUT,157)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable(GPOUT,158)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable(GPOUT,159)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read(GPOUT,160)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write(GPOUT,161)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata(GPOUT,162)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address(GPOUT,163)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount(GPOUT,164)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable(GPOUT,165)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable(GPOUT,166)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read(GPOUT,167)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write(GPOUT,168)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata(GPOUT,169)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address(GPOUT,170)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount(GPOUT,171)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable(GPOUT,172)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable(GPOUT,173)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read(GPOUT,174)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write(GPOUT,175)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata(GPOUT,176)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address(GPOUT,177)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount(GPOUT,178)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable(GPOUT,179)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable(GPOUT,180)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read(GPOUT,181)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write(GPOUT,182)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata(GPOUT,183)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address(GPOUT,184)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount(GPOUT,185)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable(GPOUT,186)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable(GPOUT,187)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read(GPOUT,188)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write(GPOUT,189)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata(GPOUT,190)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address(GPOUT,191)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount(GPOUT,192)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable(GPOUT,193)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable(GPOUT,194)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read(GPOUT,195)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write(GPOUT,196)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata(GPOUT,197)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address(GPOUT,198)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount(GPOUT,199)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable(GPOUT,200)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable(GPOUT,201)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read(GPOUT,202)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write(GPOUT,203)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata(GPOUT,204)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address(GPOUT,205)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount(GPOUT,206)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable(GPOUT,207)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable(GPOUT,208)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read(GPOUT,209)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write(GPOUT,210)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata(GPOUT,211)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address(GPOUT,212)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount(GPOUT,213)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable(GPOUT,214)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable(GPOUT,215)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read(GPOUT,216)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write(GPOUT,217)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata(GPOUT,218)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address(GPOUT,219)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount(GPOUT,220)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable(GPOUT,221)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable(GPOUT,222)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read(GPOUT,223)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write(GPOUT,224)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata(GPOUT,225)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address(GPOUT,226)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount(GPOUT,227)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable(GPOUT,228)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable(GPOUT,229)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read(GPOUT,230)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write(GPOUT,231)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata(GPOUT,232)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata;

    // out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address(GPOUT,233)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address;

    // out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount(GPOUT,234)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount;

    // out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable(GPOUT,235)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable;

    // out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable(GPOUT,236)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable;

    // out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read(GPOUT,237)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read;

    // out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write(GPOUT,238)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write;

    // out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata(GPOUT,239)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata;

    // out_valid_out_0(GPOUT,240)
    assign out_valid_out_0 = ff_rgb24toyv12_c_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,242)
    assign out_pipeline_valid_out = bb_ff_rgb24toyv12_c_B1_start_stall_region_out_pipeline_valid_out;

endmodule
