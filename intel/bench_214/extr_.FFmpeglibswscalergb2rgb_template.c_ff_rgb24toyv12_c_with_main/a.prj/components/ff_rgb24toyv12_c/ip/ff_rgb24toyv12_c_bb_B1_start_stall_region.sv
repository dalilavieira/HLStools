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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B1_start_stall_region (
    input wire [1151:0] in_iord_bl_call_ff_rgb24toyv12_c_i_fifodata,
    input wire [0:0] in_iord_bl_call_ff_rgb24toyv12_c_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_20_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_21_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount,
    output wire [32:0] out_intel_reserved_ffwd_22_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    input wire [63:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdatavalid,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata,
    output wire [7:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_170_q;
    wire [31:0] c_i32_173_q;
    wire [32:0] c_i33_174_q;
    wire [0:0] ff_rgb24toyv12_c_B1_start_merge_reg_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B1_start_merge_reg_out_valid_out;
    wire [33:0] i_cmp10102_ff_rgb24toyv12_c5_a;
    wire [33:0] i_cmp10102_ff_rgb24toyv12_c5_b;
    logic [33:0] i_cmp10102_ff_rgb24toyv12_c5_o;
    wire [0:0] i_cmp10102_ff_rgb24toyv12_c5_c;
    wire [33:0] i_cmp106_ff_rgb24toyv12_c7_a;
    wire [33:0] i_cmp106_ff_rgb24toyv12_c7_b;
    logic [33:0] i_cmp106_ff_rgb24toyv12_c7_o;
    wire [0:0] i_cmp106_ff_rgb24toyv12_c7_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_intel_reserved_ffwd_20_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_intel_reserved_ffwd_22_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_valid_out;
    wire [0:0] i_smax_ff_rgb24toyv12_c42_s;
    reg [31:0] i_smax_ff_rgb24toyv12_c42_q;
    wire [31:0] i_smax_ff_rgb24toyv12_c42_vt_join_q;
    wire [30:0] i_smax_ff_rgb24toyv12_c42_vt_select_30_b;
    wire [33:0] i_unnamed_ff_rgb24toyv12_c27_a;
    wire [33:0] i_unnamed_ff_rgb24toyv12_c27_b;
    logic [33:0] i_unnamed_ff_rgb24toyv12_c27_o;
    wire [0:0] i_unnamed_ff_rgb24toyv12_c27_c;
    wire [0:0] i_unnamed_ff_rgb24toyv12_c30_q;
    wire [0:0] i_unnamed_ff_rgb24toyv12_c31_q;
    wire [32:0] i_unnamed_ff_rgb24toyv12_c54_a;
    wire [32:0] i_unnamed_ff_rgb24toyv12_c54_b;
    logic [32:0] i_unnamed_ff_rgb24toyv12_c54_o;
    wire [32:0] i_unnamed_ff_rgb24toyv12_c54_q;
    wire [32:0] i_unnamed_ff_rgb24toyv12_c64_vt_join_q;
    wire [31:0] i_unnamed_ff_rgb24toyv12_c64_vt_select_31_b;
    wire [33:0] i_unnamed_ff_rgb24toyv12_c65_a;
    wire [33:0] i_unnamed_ff_rgb24toyv12_c65_b;
    logic [33:0] i_unnamed_ff_rgb24toyv12_c65_o;
    wire [33:0] i_unnamed_ff_rgb24toyv12_c65_q;
    wire [31:0] bgTrunc_i_unnamed_ff_rgb24toyv12_c54_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_ff_rgb24toyv12_c65_sel_x_b;
    wire [31:0] c_i32_071_recast_x_q;
    wire [64:0] i_arrayidx1_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx1_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx1_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx1_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [60:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q;
    wire [63:0] i_arrayidx1_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx1_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx2_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx2_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx2_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx2_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx2_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx2_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx3_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx3_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx3_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx3_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx3_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx3_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx4_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx4_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx4_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx4_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx4_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx4_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx5_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx5_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx5_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx5_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx5_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx6_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx6_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx6_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx6_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx6_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx6_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx7_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx7_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx7_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx7_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx7_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx7_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx8_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx8_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx8_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx8_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx8_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_ff_rgb24toyv12_c0_add_x_a;
    wire [64:0] i_arrayidx_ff_rgb24toyv12_c0_add_x_b;
    logic [64:0] i_arrayidx_ff_rgb24toyv12_c0_add_x_o;
    wire [64:0] i_arrayidx_ff_rgb24toyv12_c0_add_x_q;
    wire [127:0] i_arrayidx_ff_rgb24toyv12_c0_mult_extender_x_q;
    wire [63:0] i_arrayidx_ff_rgb24toyv12_c0_trunc_sel_x_b;
    wire [63:0] i_arrayidx_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready;
    wire [0:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_2_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_4_tpl;
    wire [31:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_8_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_10_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_11_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_12_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_13_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_14_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_15_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_16_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_17_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_18_tpl;
    wire [63:0] i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_19_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_pipeline_valid_out;
    wire [32:0] i_unnamed_ff_rgb24toyv12_c64_sel_x_b;
    wire [35:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q;
    wire [0:0] xMSB_uid509_i_shr_ff_rgb24toyv12_c0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid511_i_shr_ff_rgb24toyv12_c0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid512_i_shr_ff_rgb24toyv12_c0_shift_x_q;
    wire [0:0] rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_s;
    reg [31:0] rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q;
    wire [11:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e;
    wire [0:0] redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_in;
    wire redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_in;
    wire redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_data_in;
    wire [0:0] redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_out;
    wire redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_out;
    wire redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_data_out;
    reg [30:0] redist1_i_smax_ff_rgb24toyv12_c42_vt_select_30_b_1_0_q;
    wire [0:0] redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_in;
    wire redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_in;
    wire redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_data_in;
    wire [0:0] redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_out;
    wire redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_out;
    wire redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_data_out;
    wire [0:0] redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_in;
    wire redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_in;
    wire redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_data_in;
    wire [0:0] redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_out;
    wire redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_out;
    wire redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_b;
    wire [63:0] bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_b;
    wire [1119:0] bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_c;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_d;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f;
    wire [31:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_j;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_k;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_l;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_m;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_n;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_o;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_p;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_r;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_s;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_t;
    wire [63:0] bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_u;
    wire [63:0] bubble_join_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_q;
    wire [63:0] bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b;
    wire [0:0] bubble_join_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_q;
    wire [0:0] bubble_select_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_b;
    wire [0:0] bubble_join_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_q;
    wire [0:0] bubble_select_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_b;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_or0;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_V0;
    wire [0:0] SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_V1;
    reg [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_0;
    reg [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_1;
    reg [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_2;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_v_s_0;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_0;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_1;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_2;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_backEN;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_or0;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_or1;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_backStall;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_V0;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_V1;
    wire [0:0] SE_i_cmp10102_ff_rgb24toyv12_c5_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_V0;
    wire [0:0] SE_i_unnamed_ff_rgb24toyv12_c30_wireValid;
    wire [0:0] SE_i_unnamed_ff_rgb24toyv12_c30_and0;
    wire [0:0] SE_i_unnamed_ff_rgb24toyv12_c30_backStall;
    wire [0:0] SE_i_unnamed_ff_rgb24toyv12_c30_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg5;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed5;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg6;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed6;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg7;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed7;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg8;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed8;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg9;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg9;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed9;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg10;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg10;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed10;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg11;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg11;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed11;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg12;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg12;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed12;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg13;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg13;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed13;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg14;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg14;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed14;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg15;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg15;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed15;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg16;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg16;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed16;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg17;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg17;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed17;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg18;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg18;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed18;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg19;
    reg [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg19;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed19;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or4;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or5;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or6;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or7;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or8;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or9;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or10;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or11;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or12;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or13;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or14;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or15;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or16;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or17;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or18;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V4;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V5;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V6;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V7;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V8;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V9;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V10;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V11;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V12;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V13;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V14;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V15;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V16;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V17;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V18;
    wire [0:0] SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V19;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_V0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg2;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg2;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed2;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg3;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg3;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed3;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg4;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg4;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed4;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg5;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg5;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed5;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg6;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg6;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed6;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg7;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg7;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed7;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg8;
    reg [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg8;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed8;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or2;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or3;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or4;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or5;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or6;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or7;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V2;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V3;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V4;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V5;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V6;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V7;
    wire [0:0] SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V8;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireStall;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_StallValid;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg0;
    reg [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg0;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed0;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg1;
    reg [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg1;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed1;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg2;
    reg [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg2;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed2;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_or0;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_or1;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_backStall;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V0;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V1;
    wire [0:0] SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V2;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireStall;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_StallValid;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_toReg0;
    reg [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg0;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed0;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_toReg1;
    reg [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg1;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed1;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_or0;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_backStall;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_V0;
    wire [0:0] SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_V1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and3;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and4;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and5;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and6;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and7;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and8;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and9;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and10;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and11;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and12;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and13;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and14;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and15;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and16;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and17;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and18;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and19;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and20;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and21;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and22;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x(BITJOIN,652)
    assign bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q = {i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_19_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_18_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_17_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_16_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_15_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_14_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_13_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_12_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_11_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_10_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_8_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_7_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_6_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_5_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_4_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x(BITSELECT,653)
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[191:128]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[255:192]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[287:256]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[319:288]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[351:320]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[383:352]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[415:384]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[479:416]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[543:480]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_m = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[607:544]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_n = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[671:608]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_o = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[735:672]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_p = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[799:736]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[863:800]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_r = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[927:864]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_s = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[991:928]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_t = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[1055:992]);
    assign bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_u = $unsigned(bubble_join_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q[1119:1056]);

    // c_i32_071_recast_x(CONSTANT,180)
    assign c_i32_071_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp106_ff_rgb24toyv12_c7(COMPARE,20)@2 + 1
    assign i_cmp106_ff_rgb24toyv12_c7_a = $unsigned({{2{c_i32_071_recast_x_q[31]}}, c_i32_071_recast_x_q});
    assign i_cmp106_ff_rgb24toyv12_c7_b = $unsigned({{2{bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_g[31]}}, bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_g});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp106_ff_rgb24toyv12_c7_o <= 34'b0;
        end
        else if (SE_i_cmp10102_ff_rgb24toyv12_c5_backEN == 1'b1)
        begin
            i_cmp106_ff_rgb24toyv12_c7_o <= $unsigned($signed(i_cmp106_ff_rgb24toyv12_c7_a) - $signed(i_cmp106_ff_rgb24toyv12_c7_b));
        end
    end
    assign i_cmp106_ff_rgb24toyv12_c7_c[0] = i_cmp106_ff_rgb24toyv12_c7_o[33];

    // redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo(STALLFIFO,566)
    assign redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_in = SE_i_cmp10102_ff_rgb24toyv12_c5_V0;
    assign redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_in = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_backStall;
    assign redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_data_in = i_cmp106_ff_rgb24toyv12_c7_c;
    assign redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_in_bitsignaltemp = redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_in[0];
    assign redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_in_bitsignaltemp = redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_in[0];
    assign redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_out[0] = redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_out_bitsignaltemp;
    assign redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_out[0] = redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo (
        .valid_in(redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp106_ff_rgb24toyv12_c7_c),
        .valid_out(redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo(STALLENABLE,914)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg0 <= '0;
            SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg1 <= '0;
            SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg0 <= SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg0;
            // Successor 1
            SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg1 <= SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg1;
            // Successor 2
            SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg2 <= SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed0 = (~ (SE_i_unnamed_ff_rgb24toyv12_c30_backStall) & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid) | SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg0;
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_stall_out) & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid) | SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg1;
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed2 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_stall_out) & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid) | SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg2;
    // Consuming
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_StallValid = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_backStall & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid;
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg0 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_StallValid & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed0;
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg1 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_StallValid & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed1;
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_toReg2 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_StallValid & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_or0 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed0;
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_or1 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed1 & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_or0;
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireStall = ~ (SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_consumed2 & SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_or1);
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_backStall = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V0 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid & ~ (SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg0);
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V1 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid & ~ (SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg1);
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V2 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid & ~ (SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_wireValid = redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_valid_out;

    // SE_i_unnamed_ff_rgb24toyv12_c30(STALLENABLE,756)
    // Valid signal propagation
    assign SE_i_unnamed_ff_rgb24toyv12_c30_V0 = SE_i_unnamed_ff_rgb24toyv12_c30_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_ff_rgb24toyv12_c30_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_stall_out | ~ (SE_i_unnamed_ff_rgb24toyv12_c30_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_ff_rgb24toyv12_c30_and0 = SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V0;
    assign SE_i_unnamed_ff_rgb24toyv12_c30_wireValid = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_V0 & SE_i_unnamed_ff_rgb24toyv12_c30_and0;

    // c_i32_170(CONSTANT,7)
    assign c_i32_170_q = $unsigned(32'b00000000000000000000000000000001);

    // i_cmp10102_ff_rgb24toyv12_c5(COMPARE,19)@2 + 1
    assign i_cmp10102_ff_rgb24toyv12_c5_a = $unsigned({{2{c_i32_170_q[31]}}, c_i32_170_q});
    assign i_cmp10102_ff_rgb24toyv12_c5_b = $unsigned({{2{bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f[31]}}, bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp10102_ff_rgb24toyv12_c5_o <= 34'b0;
        end
        else if (SE_i_cmp10102_ff_rgb24toyv12_c5_backEN == 1'b1)
        begin
            i_cmp10102_ff_rgb24toyv12_c5_o <= $unsigned($signed(i_cmp10102_ff_rgb24toyv12_c5_a) - $signed(i_cmp10102_ff_rgb24toyv12_c5_b));
        end
    end
    assign i_cmp10102_ff_rgb24toyv12_c5_c[0] = i_cmp10102_ff_rgb24toyv12_c5_o[33];

    // redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo(STALLFIFO,567)
    assign redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_in = SE_i_cmp10102_ff_rgb24toyv12_c5_V1;
    assign redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_in = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_backStall;
    assign redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_data_in = i_cmp10102_ff_rgb24toyv12_c5_c;
    assign redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_in_bitsignaltemp = redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_in[0];
    assign redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_in_bitsignaltemp = redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_in[0];
    assign redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_out[0] = redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_out_bitsignaltemp;
    assign redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_out[0] = redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo (
        .valid_in(redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp10102_ff_rgb24toyv12_c5_c),
        .valid_out(redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo(STALLENABLE,916)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg0 <= '0;
            SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg0 <= SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_toReg0;
            // Successor 1
            SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg1 <= SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed0 = (~ (SE_i_unnamed_ff_rgb24toyv12_c30_backStall) & SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireValid) | SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg0;
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_stall_out) & SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireValid) | SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_StallValid = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_backStall & SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireValid;
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_toReg0 = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_StallValid & SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed0;
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_toReg1 = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_StallValid & SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_or0 = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed0;
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireStall = ~ (SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_consumed1 & SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_or0);
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_backStall = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_V0 = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireValid & ~ (SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg0);
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_V1 = SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireValid & ~ (SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_wireValid = redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_valid_out;

    // bubble_join_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo(BITJOIN,662)
    assign bubble_join_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_q = redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_data_out;

    // bubble_select_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo(BITSELECT,663)
    assign bubble_select_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_b = $unsigned(bubble_join_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_q[0:0]);

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29(BLACKBOX,21)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z21_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(bubble_select_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_V1),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_intel_reserved_ffwd_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo(BITJOIN,659)
    assign bubble_join_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_q = redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_data_out;

    // bubble_select_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo(BITSELECT,660)
    assign bubble_select_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_b = $unsigned(bubble_join_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_q[0:0]);

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32(BLACKBOX,22)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z22_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(bubble_select_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V1),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_ff_rgb24toyv12_c30(LOGICAL,68)@66
    assign i_unnamed_ff_rgb24toyv12_c30_q = bubble_select_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_b & bubble_select_redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_b;

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43(BLACKBOX,23)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z23_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43 (
        .in_predicate_in(GND_q),
        .in_src_data_in_20_0(i_unnamed_ff_rgb24toyv12_c30_q),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_i_unnamed_ff_rgb24toyv12_c30_V0),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_intel_reserved_ffwd_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_unnamed_ff_rgb24toyv12_c31(LOGICAL,69)@66
    assign i_unnamed_ff_rgb24toyv12_c31_q = bubble_select_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_b ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44(BLACKBOX,24)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z24_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44 (
        .in_predicate_in(GND_q),
        .in_src_data_in_21_0(i_unnamed_ff_rgb24toyv12_c31_q),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_V2),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_intel_reserved_ffwd_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x(CONSTANT,250)
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10(BITJOIN,630)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10(BITSELECT,631)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_q[63:0]);

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,554)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_b[63:54];
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_b[53:36];
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_b[35:18];
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_b[17:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,531)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,433)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,533)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,432)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,434)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,532)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,430)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,534)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx5_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,431)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,435)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,289)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx5_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx5_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,291)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx5_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // bubble_join_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo(BITJOIN,656)
    assign bubble_join_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_q = redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_data_out;

    // bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo(BITSELECT,657)
    assign bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b = $unsigned(bubble_join_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_q[63:0]);

    // i_arrayidx5_ff_rgb24toyv12_c0_add_x(ADD,283)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx5_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx5_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx5_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx5_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx5_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx5_ff_rgb24toyv12_c0_add_x_q = i_arrayidx5_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx5_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,292)@34
    assign i_arrayidx5_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx5_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45(BLACKBOX,47)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_25_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_V0),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45(STALLENABLE,721)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45(BITJOIN,603)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45(BITSELECT,604)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55(BLACKBOX,28)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z34_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_V0),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11(BITJOIN,633)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11(BITSELECT,634)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_q[63:0]);

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,555)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_b[63:54];
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_b[53:36];
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_b[35:18];
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_b[17:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,543)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,487)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,545)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,486)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,488)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,544)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,484)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,546)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx8_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,485)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,489)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,319)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx8_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx8_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,321)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx8_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_add_x(ADD,313)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx8_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx8_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx8_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx8_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx8_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx8_ff_rgb24toyv12_c0_add_x_q = i_arrayidx8_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx8_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,322)@34
    assign i_arrayidx8_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx8_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46(BLACKBOX,48)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_26_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx8_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_V0),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46(STALLENABLE,723)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46(BITJOIN,606)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46(BITSELECT,607)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56(BLACKBOX,29)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z35_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_V0),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12(BITJOIN,636)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12(BITSELECT,637)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_q[63:0]);

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,556)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_b[63:54];
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_b[53:36];
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_b[35:18];
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_b[17:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,519)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,379)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,521)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,378)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,380)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,520)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,376)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,522)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx2_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,377)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,381)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,259)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx2_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx2_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,261)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx2_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_add_x(ADD,253)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx2_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx2_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx2_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx2_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx2_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx2_ff_rgb24toyv12_c0_add_x_q = i_arrayidx2_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx2_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,262)@34
    assign i_arrayidx2_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx2_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47(BLACKBOX,49)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_27_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx2_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_V0),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47(STALLENABLE,725)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47(BITJOIN,609)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47(BITSELECT,610)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57(BLACKBOX,30)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z36_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13(BITJOIN,639)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13(BITSELECT,640)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_q[63:0]);

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,557)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_b[63:54];
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_b[53:36];
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_b[35:18];
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_b[17:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,527)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,415)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,529)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,414)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,416)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,528)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,412)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,530)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx4_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,413)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,417)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,279)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx4_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx4_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,281)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx4_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_add_x(ADD,273)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx4_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx4_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx4_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx4_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx4_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx4_ff_rgb24toyv12_c0_add_x_q = i_arrayidx4_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx4_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,282)@34
    assign i_arrayidx4_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx4_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48(BLACKBOX,50)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_28_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx4_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_V0),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48(STALLENABLE,727)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48(BITJOIN,612)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48(BITSELECT,613)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58(BLACKBOX,31)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z37_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14(BITJOIN,642)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14(BITSELECT,643)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_q[63:0]);

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,558)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_b[63:54];
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_b[53:36];
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_b[35:18];
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_b[17:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,539)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,469)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,541)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,468)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,470)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,540)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,466)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,542)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx7_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,467)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,471)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,309)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx7_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx7_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,311)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx7_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_add_x(ADD,303)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx7_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx7_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx7_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx7_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx7_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx7_ff_rgb24toyv12_c0_add_x_q = i_arrayidx7_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx7_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,312)@34
    assign i_arrayidx7_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx7_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49(BLACKBOX,51)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_29_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx7_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_V0),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49(STALLENABLE,729)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49(BITJOIN,615)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49(BITSELECT,616)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59(BLACKBOX,32)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z38_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_V0),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15(BITJOIN,645)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15(BITSELECT,646)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_q[63:0]);

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,559)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_b[63:54];
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_b[53:36];
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_b[35:18];
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_b[17:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,515)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,361)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,517)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,360)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,362)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,516)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,358)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,518)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx1_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,359)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,363)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,249)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx1_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx1_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,251)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx1_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_add_x(ADD,243)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx1_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx1_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx1_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx1_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx1_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx1_ff_rgb24toyv12_c0_add_x_q = i_arrayidx1_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx1_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,252)@34
    assign i_arrayidx1_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx1_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50(BLACKBOX,52)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_30_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_V0),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50(STALLENABLE,731)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50(BITJOIN,618)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50(BITSELECT,619)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60(BLACKBOX,33)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z39_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17(BITJOIN,594)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17(BITSELECT,595)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_q[63:0]);

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,551)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_b[63:54];
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_b[53:36];
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_b[35:18];
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_b[17:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,523)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,397)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,525)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,396)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,398)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,524)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,394)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,526)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx3_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,395)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,399)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,269)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx3_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx3_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,271)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx3_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_add_x(ADD,263)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx3_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx3_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx3_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx3_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx3_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx3_ff_rgb24toyv12_c0_add_x_q = i_arrayidx3_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx3_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,272)@34
    assign i_arrayidx3_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx3_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51(BLACKBOX,53)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_31_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx3_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_V0),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51(STALLENABLE,733)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51(BITJOIN,621)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51(BITSELECT,622)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61(BLACKBOX,35)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z40_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_V0),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18(BITJOIN,597)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18(BITSELECT,598)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_q[63:0]);

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,552)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_b[63:54];
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_b[53:36];
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_b[35:18];
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_b[17:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,535)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,451)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,537)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,450)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,452)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,536)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,448)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,538)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx6_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,449)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,453)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,299)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx6_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx6_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,301)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx6_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_add_x(ADD,293)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx6_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx6_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx6_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx6_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx6_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx6_ff_rgb24toyv12_c0_add_x_q = i_arrayidx6_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx6_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,302)@34
    assign i_arrayidx6_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx6_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52(BLACKBOX,54)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_32_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx6_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_V0),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52(STALLENABLE,735)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52(BITJOIN,624)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52(BITSELECT,625)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62(BLACKBOX,36)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z41_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_V0),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20(STALLENABLE,677)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg(STALLFIFO,1063)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21(STALLENABLE,679)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg(STALLFIFO,1064)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22(STALLENABLE,681)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg(STALLFIFO,1065)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9(STALLENABLE,695)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg(STALLFIFO,1066)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_174(CONSTANT,9)
    assign c_i33_174_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_173(CONSTANT,8)
    assign c_i32_173_q = $unsigned(32'b11111111111111111111111111111111);

    // xMSB_uid509_i_shr_ff_rgb24toyv12_c0_shift_x(BITSELECT,508)@2
    assign xMSB_uid509_i_shr_ff_rgb24toyv12_c0_shift_x_b = $unsigned(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f[31:31]);

    // rightShiftStage0Idx1Rng1_uid511_i_shr_ff_rgb24toyv12_c0_shift_x(BITSELECT,510)@2
    assign rightShiftStage0Idx1Rng1_uid511_i_shr_ff_rgb24toyv12_c0_shift_x_b = $unsigned(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f[31:1]);

    // rightShiftStage0Idx1_uid512_i_shr_ff_rgb24toyv12_c0_shift_x(BITJOIN,511)@2
    assign rightShiftStage0Idx1_uid512_i_shr_ff_rgb24toyv12_c0_shift_x_q = {xMSB_uid509_i_shr_ff_rgb24toyv12_c0_shift_x_b, rightShiftStage0Idx1Rng1_uid511_i_shr_ff_rgb24toyv12_c0_shift_x_b};

    // rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x(MUX,513)@2
    assign rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_s or bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f or rightShiftStage0Idx1_uid512_i_shr_ff_rgb24toyv12_c0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_s)
            1'b0 : rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q = bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_f;
            1'b1 : rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q = rightShiftStage0Idx1_uid512_i_shr_ff_rgb24toyv12_c0_shift_x_q;
            default : rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_rgb24toyv12_c27(COMPARE,67)@2
    assign i_unnamed_ff_rgb24toyv12_c27_a = $unsigned({{2{c_i32_170_q[31]}}, c_i32_170_q});
    assign i_unnamed_ff_rgb24toyv12_c27_b = $unsigned({{2{rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q[31]}}, rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q});
    assign i_unnamed_ff_rgb24toyv12_c27_o = $unsigned($signed(i_unnamed_ff_rgb24toyv12_c27_a) - $signed(i_unnamed_ff_rgb24toyv12_c27_b));
    assign i_unnamed_ff_rgb24toyv12_c27_c[0] = i_unnamed_ff_rgb24toyv12_c27_o[33];

    // i_smax_ff_rgb24toyv12_c42(MUX,63)@2
    assign i_smax_ff_rgb24toyv12_c42_s = i_unnamed_ff_rgb24toyv12_c27_c;
    always @(i_smax_ff_rgb24toyv12_c42_s or c_i32_170_q or rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q)
    begin
        unique case (i_smax_ff_rgb24toyv12_c42_s)
            1'b0 : i_smax_ff_rgb24toyv12_c42_q = c_i32_170_q;
            1'b1 : i_smax_ff_rgb24toyv12_c42_q = rightShiftStage0_uid514_i_shr_ff_rgb24toyv12_c0_shift_x_q;
            default : i_smax_ff_rgb24toyv12_c42_q = 32'b0;
        endcase
    end

    // i_smax_ff_rgb24toyv12_c42_vt_select_30(BITSELECT,66)@2
    assign i_smax_ff_rgb24toyv12_c42_vt_select_30_b = i_smax_ff_rgb24toyv12_c42_q[30:0];

    // redist1_i_smax_ff_rgb24toyv12_c42_vt_select_30_b_1_0(REG,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_smax_ff_rgb24toyv12_c42_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_i_cmp10102_ff_rgb24toyv12_c5_backEN == 1'b1)
        begin
            redist1_i_smax_ff_rgb24toyv12_c42_vt_select_30_b_1_0_q <= $unsigned(i_smax_ff_rgb24toyv12_c42_vt_select_30_b);
        end
    end

    // i_smax_ff_rgb24toyv12_c42_vt_join(BITJOIN,65)@3
    assign i_smax_ff_rgb24toyv12_c42_vt_join_q = {GND_q, redist1_i_smax_ff_rgb24toyv12_c42_vt_select_30_b_1_0_q};

    // i_unnamed_ff_rgb24toyv12_c54(ADD,70)@3
    assign i_unnamed_ff_rgb24toyv12_c54_a = {1'b0, i_smax_ff_rgb24toyv12_c42_vt_join_q};
    assign i_unnamed_ff_rgb24toyv12_c54_b = {1'b0, c_i32_173_q};
    assign i_unnamed_ff_rgb24toyv12_c54_o = $unsigned(i_unnamed_ff_rgb24toyv12_c54_a) + $unsigned(i_unnamed_ff_rgb24toyv12_c54_b);
    assign i_unnamed_ff_rgb24toyv12_c54_q = i_unnamed_ff_rgb24toyv12_c54_o[32:0];

    // bgTrunc_i_unnamed_ff_rgb24toyv12_c54_sel_x(BITSELECT,178)@3
    assign bgTrunc_i_unnamed_ff_rgb24toyv12_c54_sel_x_b = i_unnamed_ff_rgb24toyv12_c54_q[31:0];

    // i_unnamed_ff_rgb24toyv12_c64_sel_x(BITSELECT,341)@3
    assign i_unnamed_ff_rgb24toyv12_c64_sel_x_b = {1'b0, bgTrunc_i_unnamed_ff_rgb24toyv12_c54_sel_x_b[31:0]};

    // i_unnamed_ff_rgb24toyv12_c64_vt_select_31(BITSELECT,74)@3
    assign i_unnamed_ff_rgb24toyv12_c64_vt_select_31_b = i_unnamed_ff_rgb24toyv12_c64_sel_x_b[31:0];

    // i_unnamed_ff_rgb24toyv12_c64_vt_join(BITJOIN,73)@3
    assign i_unnamed_ff_rgb24toyv12_c64_vt_join_q = {GND_q, i_unnamed_ff_rgb24toyv12_c64_vt_select_31_b};

    // i_unnamed_ff_rgb24toyv12_c65(ADD,75)@3
    assign i_unnamed_ff_rgb24toyv12_c65_a = {1'b0, i_unnamed_ff_rgb24toyv12_c64_vt_join_q};
    assign i_unnamed_ff_rgb24toyv12_c65_b = {1'b0, c_i33_174_q};
    assign i_unnamed_ff_rgb24toyv12_c65_o = $unsigned(i_unnamed_ff_rgb24toyv12_c65_a) + $unsigned(i_unnamed_ff_rgb24toyv12_c65_b);
    assign i_unnamed_ff_rgb24toyv12_c65_q = i_unnamed_ff_rgb24toyv12_c65_o[33:0];

    // bgTrunc_i_unnamed_ff_rgb24toyv12_c65_sel_x(BITSELECT,179)@3
    assign bgTrunc_i_unnamed_ff_rgb24toyv12_c65_sel_x_b = i_unnamed_ff_rgb24toyv12_c65_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66(BLACKBOX,38)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z43_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66 (
        .in_predicate_in(GND_q),
        .in_src_data_in_22_0(bgTrunc_i_unnamed_ff_rgb24toyv12_c65_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_backStall),
        .in_valid_in(SE_i_cmp10102_ff_rgb24toyv12_c5_V2),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_intel_reserved_ffwd_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66(STALLENABLE,703)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_backStall = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_wireValid = i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg(STALLFIFO,1067)
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16(STALLENABLE,705)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg(STALLFIFO,1068)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23(STALLENABLE,707)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg(STALLFIFO,1069)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24(STALLENABLE,709)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg(STALLFIFO,1070)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25(STALLENABLE,711)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg(STALLFIFO,1071)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26(STALLENABLE,713)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg(STALLFIFO,1072)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg(STALLFIFO,1073)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1(STALLENABLE,1050)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and1;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and2;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and3;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and5 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and4;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and6 = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and5;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and7 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and6;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and8 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and7;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and9 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and8;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and10 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and9;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and11 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and10;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and12 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and11;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and13 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and12;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and14 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and13;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and15 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and14;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and16 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and15;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and17 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and16;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and18 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and17;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and19 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and18;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and20 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and19;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and21 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and20;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and22 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and21;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_and22;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53(BITJOIN,627)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53(BITSELECT,628)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63(BLACKBOX,37)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z42_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53(STALLENABLE,737)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_wireValid = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19(BITJOIN,600)
    assign bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_q = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19(BITSELECT,601)
    assign bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_q[63:0]);

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select(BITSELECT,553)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_b[63:54];
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_b[53:36];
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_b[35:18];
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_b[17:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_im0_shift0(BITSHIFT,547)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint = { i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im0_shift0_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_3(BITSHIFT,505)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx_ff_rgb24toyv12_c0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_3_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_im6_shift0(BITSHIFT,549)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint = { i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im6_shift0_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_2(BITSHIFT,504)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx_ff_rgb24toyv12_c0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_2_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_4(BITJOIN,506)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_4_q = {i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_3_q, i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_2_q};

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_im3_shift0(BITSHIFT,548)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint = { i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im3_shift0_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_0(BITSHIFT,502)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx_ff_rgb24toyv12_c0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_0_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_im9_shift0(BITSHIFT,550)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint = { i_arrayidx_ff_rgb24toyv12_c0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_im9_shift0_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_1(BITJOIN,503)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_1_q = {i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_align_0_q, {1'b0, i_arrayidx_ff_rgb24toyv12_c0_mult_x_im9_shift0_q}};

    // i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0(ADD,507)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_1_q};
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_join_4_q};
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q = i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx_ff_rgb24toyv12_c0_mult_extender_x(BITJOIN,329)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_mult_extender_x_q = {i_arrayidx1_ff_rgb24toyv12_c0_mult_multconst_x_q, i_arrayidx_ff_rgb24toyv12_c0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx_ff_rgb24toyv12_c0_trunc_sel_x(BITSELECT,331)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_trunc_sel_x_b = i_arrayidx_ff_rgb24toyv12_c0_mult_extender_x_q[63:0];

    // i_arrayidx_ff_rgb24toyv12_c0_add_x(ADD,323)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_b};
    assign i_arrayidx_ff_rgb24toyv12_c0_add_x_b = {1'b0, i_arrayidx_ff_rgb24toyv12_c0_trunc_sel_x_b};
    assign i_arrayidx_ff_rgb24toyv12_c0_add_x_o = $unsigned(i_arrayidx_ff_rgb24toyv12_c0_add_x_a) + $unsigned(i_arrayidx_ff_rgb24toyv12_c0_add_x_b);
    assign i_arrayidx_ff_rgb24toyv12_c0_add_x_q = i_arrayidx_ff_rgb24toyv12_c0_add_x_o[64:0];

    // i_arrayidx_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x(BITSELECT,332)@34
    assign i_arrayidx_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b = i_arrayidx_ff_rgb24toyv12_c0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53(BLACKBOX,55)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_33_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_ff_rgb24toyv12_c0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_V0),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19(STALLENABLE,719)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V8 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11(STALLENABLE,741)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V7 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14(STALLENABLE,747)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V6 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18(STALLENABLE,717)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V5 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10(STALLENABLE,739)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V4 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13(STALLENABLE,745)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V3 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17(STALLENABLE,715)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V2 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12(STALLENABLE,743)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15(STALLENABLE,749)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_V0 = SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_backStall = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_and0 = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_wireValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_and0;

    // SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo(STALLENABLE,911)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg0 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg1 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg2 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg3 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg4 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg5 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg6 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg7 <= '0;
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg0 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg1 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg1;
            // Successor 2
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg2 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg2;
            // Successor 3
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg3 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg3;
            // Successor 4
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg4 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg4;
            // Successor 5
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg5 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg5;
            // Successor 6
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg6 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg6;
            // Successor 7
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg7 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg7;
            // Successor 8
            SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg8 <= SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg0;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg1;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed2 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg2;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed3 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg3;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed4 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg4;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed5 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg5;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed6 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg6;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed7 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg7;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed8 = (~ (SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_backStall) & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg8;
    // Consuming
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_backStall & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg0 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg1 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed1;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg2 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed2;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg3 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed3;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg4 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed4;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg5 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed5;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg6 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed6;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg7 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed7;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_toReg8 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed8;
    // Backward Stall generation
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or0 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or1 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed1 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or0;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or2 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed2 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or1;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or3 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed3 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or2;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or4 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed4 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or3;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or5 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed5 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or4;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or6 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed6 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or5;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or7 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed7 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or6;
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireStall = ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_consumed8 & SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_or7);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_backStall = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V0 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg0);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V1 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg1);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V2 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg2);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V3 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg3);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V4 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg4);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V5 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg5);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V6 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg6);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V7 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg7);
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_V8 = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_wireValid = redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_out;

    // redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo(STALLFIFO,564)
    assign redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_in = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V19;
    assign redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_in = SE_out_redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_backStall;
    assign redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_data_in = bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_k;
    assign redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_in_bitsignaltemp = redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_in[0];
    assign redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_in_bitsignaltemp = redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_in[0];
    assign redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_out[0] = redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_out[0] = redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo (
        .valid_in(redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_k),
        .valid_out(redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15(BLACKBOX,61)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_9_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V18),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14(BLACKBOX,60)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_8_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_p),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V17),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13(BLACKBOX,59)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_7_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_o),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V16),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12(BLACKBOX,58)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_6_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_n),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V15),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11(BLACKBOX,57)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_5_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_m),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V14),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10(BLACKBOX,56)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_4_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_l),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V13),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19(BLACKBOX,46)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_13_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_u),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V12),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18(BLACKBOX,45)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_12_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_t),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V11),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17(BLACKBOX,44)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address@20000000
    // out out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount@20000000
    // out out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable@20000000
    // out out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable@20000000
    // out out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read@20000000
    // out out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write@20000000
    // out out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_mem_unnamed_11_ff_rgb24toyv12_c0 thei_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_s),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V10),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdata(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdata),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdatavalid(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_waitrequest(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writeack(in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_valid),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata(i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26(BLACKBOX,43)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z20_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_18_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V9),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_intel_reserved_ffwd_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25(BLACKBOX,42)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z19_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V8),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_intel_reserved_ffwd_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24(BLACKBOX,41)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z18_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_d),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V7),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_intel_reserved_ffwd_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23(BLACKBOX,40)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z17_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_e),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V6),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_intel_reserved_ffwd_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16(BLACKBOX,39)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z10_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_r),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V5),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9(BLACKBOX,34)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z_3_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_g),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V4),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22(BLACKBOX,27)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z16_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_h),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V3),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21(BLACKBOX,26)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z15_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_i),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V2),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_intel_reserved_ffwd_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20(BLACKBOX,25)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_sourceA000000Z14_ff_rgb24toyv12_c0 thei_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(bubble_select_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_j),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V1),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_intel_reserved_ffwd_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp10102_ff_rgb24toyv12_c5(STALLENABLE,666)
    // Valid signal propagation
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_V0 = SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_0;
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_V1 = SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_1;
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_V2 = SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_2;
    // Stall signal propagation
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_0 = redist2_i_cmp106_ff_rgb24toyv12_c7_c_64_fifo_stall_out & SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_0;
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_1 = redist3_i_cmp10102_ff_rgb24toyv12_c5_c_64_fifo_stall_out & SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_1;
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_2 = i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_stall_out & SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_2;
    // Backward Enable generation
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_or0 = SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_0;
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_or1 = SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_1 | SE_i_cmp10102_ff_rgb24toyv12_c5_or0;
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_backEN = ~ (SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_2 | SE_i_cmp10102_ff_rgb24toyv12_c5_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_v_s_0 = SE_i_cmp10102_ff_rgb24toyv12_c5_backEN & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp10102_ff_rgb24toyv12_c5_backStall = ~ (SE_i_cmp10102_ff_rgb24toyv12_c5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_0 <= 1'b0;
            SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_1 <= 1'b0;
            SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp10102_ff_rgb24toyv12_c5_backEN == 1'b0)
            begin
                SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_0 <= SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_0 & SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_0;
            end
            else
            begin
                SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_0 <= SE_i_cmp10102_ff_rgb24toyv12_c5_v_s_0;
            end

            if (SE_i_cmp10102_ff_rgb24toyv12_c5_backEN == 1'b0)
            begin
                SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_1 <= SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_1 & SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_1;
            end
            else
            begin
                SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_1 <= SE_i_cmp10102_ff_rgb24toyv12_c5_v_s_0;
            end

            if (SE_i_cmp10102_ff_rgb24toyv12_c5_backEN == 1'b0)
            begin
                SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_2 <= SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_2 & SE_i_cmp10102_ff_rgb24toyv12_c5_s_tv_2;
            end
            else
            begin
                SE_i_cmp10102_ff_rgb24toyv12_c5_R_v_2 <= SE_i_cmp10102_ff_rgb24toyv12_c5_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x(STALLENABLE,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg4 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg5 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg6 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg7 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg8 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg9 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg10 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg11 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg12 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg13 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg14 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg15 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg16 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg17 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg18 <= '0;
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg19 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg4 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg5 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg6 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg7 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg8 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg8;
            // Successor 9
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg9 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg9;
            // Successor 10
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg10 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg10;
            // Successor 11
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg11 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg11;
            // Successor 12
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg12 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg12;
            // Successor 13
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg13 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg13;
            // Successor 14
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg14 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg14;
            // Successor 15
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg15 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg15;
            // Successor 16
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg16 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg16;
            // Successor 17
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg17 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg17;
            // Successor 18
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg18 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg18;
            // Successor 19
            SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg19 <= SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg19;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed0 = (~ (SE_i_cmp10102_ff_rgb24toyv12_c5_backStall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg4;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg5;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg6;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg7;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed8 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg8;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed9 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg9;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed10 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg10;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed11 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg11;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed12 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg12;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed13 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg13;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed14 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg14;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed15 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg15;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed16 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg16;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed17 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg17;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed18 = (~ (i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_o_stall) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg18;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed19 = (~ (redist0_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl_32_fifo_stall_out) & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg19;
    // Consuming
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_backStall & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg3 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg4 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed4;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg5 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed5;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg6 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed6;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg7 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed7;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg8 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed8;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg9 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed9;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg10 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed10;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg11 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed11;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg12 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed12;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg13 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed13;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg14 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed14;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg15 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed15;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg16 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed16;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg17 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed17;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg18 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed18;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_toReg19 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_StallValid & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed19;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or0 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or1 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or2 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or3 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed3 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or2;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or4 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed4 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or3;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or5 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed5 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or4;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or6 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed6 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or5;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or7 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed7 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or6;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or8 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed8 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or7;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or9 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed9 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or8;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or10 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed10 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or9;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or11 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed11 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or10;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or12 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed12 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or11;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or13 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed13 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or12;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or14 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed14 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or13;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or15 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed15 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or14;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or16 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed16 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or15;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or17 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed17 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or16;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or18 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed18 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or17;
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_consumed19 & SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_or18);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_backStall = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V0 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V1 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V2 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V3 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V4 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg4);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V5 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg5);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V6 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg6);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V7 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg7);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V8 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg8);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V9 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg9);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V10 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg10);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V11 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg11);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V12 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg12);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V13 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg13);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V14 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg14);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V15 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg15);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V16 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg16);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V17 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg17);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V18 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg18);
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_V19 = SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_fromReg19);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_wireValid = i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1(BITJOIN,648)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1(BITSELECT,649)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_q[0:0]);

    // i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x(BLACKBOX,333)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready@20000000
    // out out_o_stall@20000000
    ff_rgb24toyv12_c_i_iord_bl_call_unnamed_A000000Zc2_ff_rgb24toyv12_c0 thei_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_b),
        .in_i_stall(SE_out_i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_V0),
        .in_iord_bl_call_ff_rgb24toyv12_c_i_fifodata(in_iord_bl_call_ff_rgb24toyv12_c_i_fifodata),
        .in_iord_bl_call_ff_rgb24toyv12_c_i_fifovalid(in_iord_bl_call_ff_rgb24toyv12_c_i_fifovalid),
        .out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready),
        .out_o_stall(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_data_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1(STALLENABLE,751)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_backStall = i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1(BLACKBOX,62)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    ff_rgb24toyv12_c_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_backStall),
        .in_valid_in(SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,762)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ff_rgb24toyv12_c_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ff_rgb24toyv12_c_B1_start_merge_reg(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    ff_rgb24toyv12_c_B1_start_merge_reg theff_rgb24toyv12_c_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(ff_rgb24toyv12_c_B1_start_merge_reg_out_stall_out),
        .out_valid_out(ff_rgb24toyv12_c_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ff_rgb24toyv12_c_B1_start_merge_reg(STALLENABLE,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg0 <= SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg1 <= SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_stall_out) & SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireValid) | SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg0;
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_o_stall) & SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireValid) | SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_StallValid = SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_backStall & SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireValid;
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_toReg0 = SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_StallValid & SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed0;
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_toReg1 = SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_StallValid & SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_or0 = SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed0;
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireStall = ~ (SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_consumed1 & SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_or0);
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_backStall = SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_V0 = SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireValid & ~ (SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg0);
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_V1 = SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireValid & ~ (SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_wireValid = ff_rgb24toyv12_c_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x(STALLENABLE,805)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x(BLACKBOX,334)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    ff_rgb24toyv12_c_i_sfc_s_c0_in_wt_entry_A000000Z18_ff_rgb24toyv12_c0 thei_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_backStall),
        .in_i_valid(SE_out_ff_rgb24toyv12_c_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_ff_rgb24toyv12_c0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going297_ff_rgb24toyv12_c1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,16)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_ff_rgb24toyv12_c1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,170)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,172)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c3_ff_rgb24toyv12_c9_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,176)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,183)
    assign out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready = i_iord_bl_call_ff_rgb24toyv12_c_unnamed_ff_rgb24toyv12_c2_ff_rgb24toyv12_c2_aunroll_x_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,184)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c35_ff_rgb24toyv12_c56_out_intel_reserved_ffwd_10_0;

    // dupName_0_sync_out_x(GPOUT,185)@66
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_ff_rgb24toyv12_cs_c0_enter18_ff_rgb24toyv12_c0_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,188)
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c10_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,189)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c22_ff_rgb24toyv12_c32_out_intel_reserved_ffwd_11_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,191)
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c11_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,192)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c14_ff_rgb24toyv12_c20_out_intel_reserved_ffwd_12_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,194)
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c12_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,195)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c15_ff_rgb24toyv12_c21_out_intel_reserved_ffwd_13_0;

    // dupName_4_ext_sig_sync_out_x(GPOUT,197)
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c13_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_4_regfree_osync_x(GPOUT,198)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c16_ff_rgb24toyv12_c22_out_intel_reserved_ffwd_14_0;

    // dupName_5_ext_sig_sync_out_x(GPOUT,200)
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c14_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_5_regfree_osync_x(GPOUT,201)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c17_ff_rgb24toyv12_c23_out_intel_reserved_ffwd_15_0;

    // dupName_6_ext_sig_sync_out_x(GPOUT,203)
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c15_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_6_regfree_osync_x(GPOUT,204)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c18_ff_rgb24toyv12_c24_out_intel_reserved_ffwd_16_0;

    // dupName_7_ext_sig_sync_out_x(GPOUT,206)
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c17_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_7_regfree_osync_x(GPOUT,207)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c19_ff_rgb24toyv12_c25_out_intel_reserved_ffwd_17_0;

    // dupName_8_ext_sig_sync_out_x(GPOUT,209)
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c18_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,210)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c20_ff_rgb24toyv12_c26_out_intel_reserved_ffwd_18_0;

    // dupName_9_ext_sig_sync_out_x(GPOUT,212)
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c19_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_9_regfree_osync_x(GPOUT,213)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c21_ff_rgb24toyv12_c29_out_intel_reserved_ffwd_19_0;

    // dupName_10_ext_sig_sync_out_x(GPOUT,215)
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c45_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_10_regfree_osync_x(GPOUT,216)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_ff_rgb24toyv12_c10_ff_rgb24toyv12_c16_out_intel_reserved_ffwd_1_0;

    // dupName_11_ext_sig_sync_out_x(GPOUT,218)
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c46_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_11_regfree_osync_x(GPOUT,219)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c23_ff_rgb24toyv12_c43_out_intel_reserved_ffwd_20_0;

    // dupName_12_ext_sig_sync_out_x(GPOUT,221)
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c47_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_12_regfree_osync_x(GPOUT,222)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i1_unnamed_ff_rgb24toyv12_c24_ff_rgb24toyv12_c44_out_intel_reserved_ffwd_21_0;

    // dupName_13_ext_sig_sync_out_x(GPOUT,224)
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c48_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_13_regfree_osync_x(GPOUT,225)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i33_unnamed_ff_rgb24toyv12_c43_ff_rgb24toyv12_c66_out_intel_reserved_ffwd_22_0;

    // dupName_14_ext_sig_sync_out_x(GPOUT,227)
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c49_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_14_regfree_osync_x(GPOUT,228)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c42_ff_rgb24toyv12_c63_out_intel_reserved_ffwd_2_0;

    // dupName_15_ext_sig_sync_out_x(GPOUT,230)
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c50_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_15_regfree_osync_x(GPOUT,231)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c39_ff_rgb24toyv12_c60_out_intel_reserved_ffwd_3_0;

    // dupName_16_ext_sig_sync_out_x(GPOUT,233)
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c51_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_16_regfree_osync_x(GPOUT,234)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c36_ff_rgb24toyv12_c57_out_intel_reserved_ffwd_4_0;

    // dupName_17_ext_sig_sync_out_x(GPOUT,236)
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c52_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_17_regfree_osync_x(GPOUT,237)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c40_ff_rgb24toyv12_c61_out_intel_reserved_ffwd_5_0;

    // dupName_18_ext_sig_sync_out_x(GPOUT,238)
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address;
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable;
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read;
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write;
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata;
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable;
    assign out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount = i_llvm_fpga_mem_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c53_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount;

    // dupName_18_regfree_osync_x(GPOUT,239)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c37_ff_rgb24toyv12_c58_out_intel_reserved_ffwd_6_0;

    // dupName_19_regfree_osync_x(GPOUT,240)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c34_ff_rgb24toyv12_c55_out_intel_reserved_ffwd_7_0;

    // dupName_20_regfree_osync_x(GPOUT,241)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c41_ff_rgb24toyv12_c62_out_intel_reserved_ffwd_8_0;

    // dupName_21_regfree_osync_x(GPOUT,242)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_ff_rgb24toyv12_c38_ff_rgb24toyv12_c59_out_intel_reserved_ffwd_9_0;

endmodule
