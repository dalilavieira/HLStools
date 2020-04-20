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

// SystemVerilog created from fir_function
// SystemVerilog created on Sun Apr 19 22:13:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_iord_bl_call_fir_i_fifodata,
    input wire [0:0] in_iord_bl_call_fir_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_fir_i_fifoready,
    input wire [15:0] in_lm121_fir_avm_readdata,
    input wire [0:0] in_lm121_fir_avm_readdatavalid,
    input wire [0:0] in_lm121_fir_avm_waitrequest,
    input wire [0:0] in_lm121_fir_avm_writeack,
    input wire [15:0] in_lm2_fir_avm_readdata,
    input wire [0:0] in_lm2_fir_avm_readdatavalid,
    input wire [0:0] in_lm2_fir_avm_waitrequest,
    input wire [0:0] in_lm2_fir_avm_writeack,
    input wire [15:0] in_memdep_3_fir_avm_readdata,
    input wire [0:0] in_memdep_3_fir_avm_readdatavalid,
    input wire [0:0] in_memdep_3_fir_avm_waitrequest,
    input wire [0:0] in_memdep_3_fir_avm_writeack,
    input wire [15:0] in_memdep_4_fir_avm_readdata,
    input wire [0:0] in_memdep_4_fir_avm_readdatavalid,
    input wire [0:0] in_memdep_4_fir_avm_waitrequest,
    input wire [0:0] in_memdep_4_fir_avm_writeack,
    input wire [15:0] in_memdep_5_fir_avm_readdata,
    input wire [0:0] in_memdep_5_fir_avm_readdatavalid,
    input wire [0:0] in_memdep_5_fir_avm_waitrequest,
    input wire [0:0] in_memdep_5_fir_avm_writeack,
    input wire [15:0] in_memdep_fir_avm_readdata,
    input wire [0:0] in_memdep_fir_avm_readdatavalid,
    input wire [0:0] in_memdep_fir_avm_waitrequest,
    input wire [0:0] in_memdep_fir_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [15:0] in_unnamed_fir10_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir10_fir_avm_readdatavalid,
    input wire [0:0] in_unnamed_fir10_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir10_fir_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_fir_o_fifoready,
    output wire [31:0] out_iowr_bl_return_fir_o_fifodata,
    output wire [0:0] out_iowr_bl_return_fir_o_fifovalid,
    output wire [31:0] out_lm121_fir_avm_address,
    output wire [0:0] out_lm121_fir_avm_burstcount,
    output wire [1:0] out_lm121_fir_avm_byteenable,
    output wire [0:0] out_lm121_fir_avm_enable,
    output wire [0:0] out_lm121_fir_avm_read,
    output wire [0:0] out_lm121_fir_avm_write,
    output wire [15:0] out_lm121_fir_avm_writedata,
    output wire [31:0] out_lm2_fir_avm_address,
    output wire [0:0] out_lm2_fir_avm_burstcount,
    output wire [1:0] out_lm2_fir_avm_byteenable,
    output wire [0:0] out_lm2_fir_avm_enable,
    output wire [0:0] out_lm2_fir_avm_read,
    output wire [0:0] out_lm2_fir_avm_write,
    output wire [15:0] out_lm2_fir_avm_writedata,
    output wire [31:0] out_memdep_3_fir_avm_address,
    output wire [0:0] out_memdep_3_fir_avm_burstcount,
    output wire [1:0] out_memdep_3_fir_avm_byteenable,
    output wire [0:0] out_memdep_3_fir_avm_enable,
    output wire [0:0] out_memdep_3_fir_avm_read,
    output wire [0:0] out_memdep_3_fir_avm_write,
    output wire [15:0] out_memdep_3_fir_avm_writedata,
    output wire [31:0] out_memdep_4_fir_avm_address,
    output wire [0:0] out_memdep_4_fir_avm_burstcount,
    output wire [1:0] out_memdep_4_fir_avm_byteenable,
    output wire [0:0] out_memdep_4_fir_avm_enable,
    output wire [0:0] out_memdep_4_fir_avm_read,
    output wire [0:0] out_memdep_4_fir_avm_write,
    output wire [15:0] out_memdep_4_fir_avm_writedata,
    output wire [31:0] out_memdep_5_fir_avm_address,
    output wire [0:0] out_memdep_5_fir_avm_burstcount,
    output wire [1:0] out_memdep_5_fir_avm_byteenable,
    output wire [0:0] out_memdep_5_fir_avm_enable,
    output wire [0:0] out_memdep_5_fir_avm_read,
    output wire [0:0] out_memdep_5_fir_avm_write,
    output wire [15:0] out_memdep_5_fir_avm_writedata,
    output wire [31:0] out_memdep_fir_avm_address,
    output wire [0:0] out_memdep_fir_avm_burstcount,
    output wire [1:0] out_memdep_fir_avm_byteenable,
    output wire [0:0] out_memdep_fir_avm_enable,
    output wire [0:0] out_memdep_fir_avm_read,
    output wire [0:0] out_memdep_fir_avm_write,
    output wire [15:0] out_memdep_fir_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_fir10_fir_avm_address,
    output wire [0:0] out_unnamed_fir10_fir_avm_burstcount,
    output wire [1:0] out_unnamed_fir10_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir10_fir_avm_enable,
    output wire [0:0] out_unnamed_fir10_fir_avm_read,
    output wire [0:0] out_unnamed_fir10_fir_avm_write,
    output wire [15:0] out_unnamed_fir10_fir_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_fir_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_fir_B10_out_c0_exe51364;
    wire [31:0] bb_fir_B10_out_memdep_5_fir_avm_address;
    wire [0:0] bb_fir_B10_out_memdep_5_fir_avm_burstcount;
    wire [1:0] bb_fir_B10_out_memdep_5_fir_avm_byteenable;
    wire [0:0] bb_fir_B10_out_memdep_5_fir_avm_enable;
    wire [0:0] bb_fir_B10_out_memdep_5_fir_avm_read;
    wire [0:0] bb_fir_B10_out_memdep_5_fir_avm_write;
    wire [15:0] bb_fir_B10_out_memdep_5_fir_avm_writedata;
    wire [0:0] bb_fir_B10_out_stall_out_0;
    wire [0:0] bb_fir_B10_out_valid_out_0;
    wire [31:0] bb_fir_B11_out_c0_exe2133;
    wire [15:0] bb_fir_B11_out_c0_exe3134;
    wire [0:0] bb_fir_B11_out_c0_exe5136;
    wire [0:0] bb_fir_B11_out_c0_exe6;
    wire [0:0] bb_fir_B11_out_exiting_stall_out;
    wire [0:0] bb_fir_B11_out_exiting_valid_out;
    wire [31:0] bb_fir_B11_out_lm121_fir_avm_address;
    wire [0:0] bb_fir_B11_out_lm121_fir_avm_burstcount;
    wire [1:0] bb_fir_B11_out_lm121_fir_avm_byteenable;
    wire [0:0] bb_fir_B11_out_lm121_fir_avm_enable;
    wire [0:0] bb_fir_B11_out_lm121_fir_avm_read;
    wire [0:0] bb_fir_B11_out_lm121_fir_avm_write;
    wire [15:0] bb_fir_B11_out_lm121_fir_avm_writedata;
    wire [31:0] bb_fir_B11_out_lm2_fir_avm_address;
    wire [0:0] bb_fir_B11_out_lm2_fir_avm_burstcount;
    wire [1:0] bb_fir_B11_out_lm2_fir_avm_byteenable;
    wire [0:0] bb_fir_B11_out_lm2_fir_avm_enable;
    wire [0:0] bb_fir_B11_out_lm2_fir_avm_read;
    wire [0:0] bb_fir_B11_out_lm2_fir_avm_write;
    wire [15:0] bb_fir_B11_out_lm2_fir_avm_writedata;
    wire [0:0] bb_fir_B11_out_pipeline_valid_out;
    wire [0:0] bb_fir_B11_out_stall_out_0;
    wire [0:0] bb_fir_B11_out_stall_out_1;
    wire [0:0] bb_fir_B11_out_valid_out_0;
    wire [0:0] bb_fir_B2_out_stall_out_0;
    wire [0:0] bb_fir_B2_out_valid_out_0;
    wire [0:0] bb_fir_B3_out_exiting_stall_out;
    wire [0:0] bb_fir_B3_out_exiting_valid_out;
    wire [31:0] bb_fir_B3_out_memdep_fir_avm_address;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_burstcount;
    wire [1:0] bb_fir_B3_out_memdep_fir_avm_byteenable;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_enable;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_read;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_write;
    wire [15:0] bb_fir_B3_out_memdep_fir_avm_writedata;
    wire [0:0] bb_fir_B3_out_pipeline_valid_out;
    wire [0:0] bb_fir_B3_out_stall_out_0;
    wire [0:0] bb_fir_B3_out_stall_out_1;
    wire [0:0] bb_fir_B3_out_valid_out_0;
    wire [0:0] bb_fir_B5_out_exiting_stall_out;
    wire [0:0] bb_fir_B5_out_exiting_valid_out;
    wire [31:0] bb_fir_B5_out_memdep_3_fir_avm_address;
    wire [0:0] bb_fir_B5_out_memdep_3_fir_avm_burstcount;
    wire [1:0] bb_fir_B5_out_memdep_3_fir_avm_byteenable;
    wire [0:0] bb_fir_B5_out_memdep_3_fir_avm_enable;
    wire [0:0] bb_fir_B5_out_memdep_3_fir_avm_read;
    wire [0:0] bb_fir_B5_out_memdep_3_fir_avm_write;
    wire [15:0] bb_fir_B5_out_memdep_3_fir_avm_writedata;
    wire [31:0] bb_fir_B5_out_memdep_4_fir_avm_address;
    wire [0:0] bb_fir_B5_out_memdep_4_fir_avm_burstcount;
    wire [1:0] bb_fir_B5_out_memdep_4_fir_avm_byteenable;
    wire [0:0] bb_fir_B5_out_memdep_4_fir_avm_enable;
    wire [0:0] bb_fir_B5_out_memdep_4_fir_avm_read;
    wire [0:0] bb_fir_B5_out_memdep_4_fir_avm_write;
    wire [15:0] bb_fir_B5_out_memdep_4_fir_avm_writedata;
    wire [0:0] bb_fir_B5_out_pipeline_valid_out;
    wire [0:0] bb_fir_B5_out_stall_out_0;
    wire [0:0] bb_fir_B5_out_stall_out_1;
    wire [0:0] bb_fir_B5_out_valid_out_0;
    wire [0:0] bb_fir_B6_out_c0_exe2108;
    wire [0:0] bb_fir_B6_out_exiting_stall_out;
    wire [0:0] bb_fir_B6_out_exiting_valid_out;
    wire [0:0] bb_fir_B6_out_pipeline_valid_out;
    wire [0:0] bb_fir_B6_out_stall_out_0;
    wire [0:0] bb_fir_B6_out_stall_out_1;
    wire [0:0] bb_fir_B6_out_valid_out_0;
    wire [0:0] bb_fir_B7_out_feedback_out_1;
    wire [0:0] bb_fir_B7_out_feedback_valid_out_1;
    wire [31:0] bb_fir_B7_out_iowr_bl_return_fir_o_fifodata;
    wire [0:0] bb_fir_B7_out_iowr_bl_return_fir_o_fifovalid;
    wire [0:0] bb_fir_B7_out_stall_out_0;
    wire [31:0] bb_fir_B7_out_unnamed_fir10_fir_avm_address;
    wire [0:0] bb_fir_B7_out_unnamed_fir10_fir_avm_burstcount;
    wire [1:0] bb_fir_B7_out_unnamed_fir10_fir_avm_byteenable;
    wire [0:0] bb_fir_B7_out_unnamed_fir10_fir_avm_enable;
    wire [0:0] bb_fir_B7_out_unnamed_fir10_fir_avm_read;
    wire [0:0] bb_fir_B7_out_unnamed_fir10_fir_avm_write;
    wire [15:0] bb_fir_B7_out_unnamed_fir10_fir_avm_writedata;
    wire [0:0] bb_fir_B8_out_c0_exe2120;
    wire [31:0] bb_fir_B8_out_c0_exe3;
    wire [0:0] bb_fir_B8_out_c0_exe4;
    wire [0:0] bb_fir_B8_out_c0_exe5;
    wire [0:0] bb_fir_B8_out_exiting_stall_out;
    wire [0:0] bb_fir_B8_out_exiting_valid_out;
    wire [0:0] bb_fir_B8_out_pipeline_valid_out;
    wire [0:0] bb_fir_B8_out_stall_out_0;
    wire [0:0] bb_fir_B8_out_stall_out_1;
    wire [0:0] bb_fir_B8_out_valid_out_0;
    wire [0:0] bb_fir_B9_out_stall_out_0;
    wire [0:0] bb_fir_B9_out_valid_out_0;
    wire [1:0] c_i2_039_q;
    wire [31:0] c_i32_undef33_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_fir2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_fir2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_fir6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_fir6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_fir1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_fir1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_fir0_out_o_stall;
    wire [0:0] loop_limiter_fir0_out_o_valid;
    wire [0:0] loop_limiter_fir1_out_o_stall;
    wire [0:0] loop_limiter_fir1_out_o_valid;
    wire [0:0] loop_limiter_fir2_out_o_stall;
    wire [0:0] loop_limiter_fir2_out_o_valid;
    wire [0:0] loop_limiter_fir3_out_o_stall;
    wire [0:0] loop_limiter_fir3_out_o_valid;
    wire [0:0] loop_limiter_fir4_out_o_stall;
    wire [0:0] loop_limiter_fir4_out_o_valid;
    wire [0:0] bb_fir_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B10_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_fir_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [15:0] bb_fir_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_fir_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_fir_B10_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_fir_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fir_B11_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_fir_B11_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_fir_B11_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_fir_B11_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_fir_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [31:0] bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_fir_B1_start_aunroll_x_out_iord_bl_call_fir_o_fifoready;
    wire [0:0] bb_fir_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_fir_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_fir_B1_start_aunroll_x_out_valid_out_0;
    wire [31:0] bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [0:0] bb_fir_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_fir_B4_aunroll_x_out_stall_out_0;
    wire [0:0] bb_fir_B4_aunroll_x_out_valid_out_0;
    wire [0:0] bb_fir_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fir_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fir_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fir_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_fir_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B9_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B9_sr_0_aunroll_x_out_o_data_0_tpl;


    // c_i2_039(CONSTANT,42)
    assign c_i2_039_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo(BLACKBOX,59)
    fir_i_llvm_fpga_pipeline_keep_going68_1_valid_fifo thei_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo (
        .in_data_in(c_i2_039_q),
        .in_stall_in(bb_fir_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going68_fir1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo(BLACKBOX,57)
    fir_i_llvm_fpga_pipeline_keep_going55_6_valid_fifo thei_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo (
        .in_data_in(c_i2_039_q),
        .in_stall_in(bb_fir_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going55_fir6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo(BLACKBOX,55)
    fir_i_llvm_fpga_pipeline_keep_going38_6_valid_fifo thei_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo (
        .in_data_in(c_i2_039_q),
        .in_stall_in(bb_fir_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going38_fir6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo(BLACKBOX,53)
    fir_i_llvm_fpga_pipeline_keep_going31_2_valid_fifo thei_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo (
        .in_data_in(c_i2_039_q),
        .in_stall_in(bb_fir_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going31_fir2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo(BLACKBOX,51)
    fir_i_llvm_fpga_pipeline_keep_going26_2_valid_fifo thei_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo (
        .in_data_in(c_i2_039_q),
        .in_stall_in(bb_fir_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_fir2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo(BLACKBOX,61)
    fir_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_fir6_valid_fifo (
        .in_data_in(c_i2_039_q),
        .in_stall_in(bb_fir_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B7_sr_0_aunroll_x(BLACKBOX,166)
    fir_bb_B7_sr_0 thebb_fir_B7_sr_0_aunroll_x (
        .in_i_stall(bb_fir_B7_out_stall_out_0),
        .in_i_valid(bb_fir_B9_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_fir_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B9(BLACKBOX,11)
    fir_bb_B9 thebb_fir_B9 (
        .in_c0_exe51363_0(bb_fir_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_fir_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_fir_B9_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_fir_B9_out_stall_out_0),
        .out_valid_out_0(bb_fir_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B9_sr_0_aunroll_x(BLACKBOX,168)
    fir_bb_B9_sr_0 thebb_fir_B9_sr_0_aunroll_x (
        .in_i_stall(bb_fir_B9_out_stall_out_0),
        .in_i_valid(bb_fir_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_fir_B10_out_c0_exe51364),
        .out_o_stall(bb_fir_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B10(BLACKBOX,3)
    fir_bb_B10 thebb_fir_B10 (
        .in_c0_exe21331_0(bb_fir_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31342_0(bb_fir_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51364_0(bb_fir_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe65_0(bb_fir_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_memdep_5_fir_avm_readdata(in_memdep_5_fir_avm_readdata),
        .in_memdep_5_fir_avm_readdatavalid(in_memdep_5_fir_avm_readdatavalid),
        .in_memdep_5_fir_avm_waitrequest(in_memdep_5_fir_avm_waitrequest),
        .in_memdep_5_fir_avm_writeack(in_memdep_5_fir_avm_writeack),
        .in_stall_in_0(bb_fir_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_fir_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe51364(bb_fir_B10_out_c0_exe51364),
        .out_memdep_5_fir_avm_address(bb_fir_B10_out_memdep_5_fir_avm_address),
        .out_memdep_5_fir_avm_burstcount(bb_fir_B10_out_memdep_5_fir_avm_burstcount),
        .out_memdep_5_fir_avm_byteenable(bb_fir_B10_out_memdep_5_fir_avm_byteenable),
        .out_memdep_5_fir_avm_enable(bb_fir_B10_out_memdep_5_fir_avm_enable),
        .out_memdep_5_fir_avm_read(bb_fir_B10_out_memdep_5_fir_avm_read),
        .out_memdep_5_fir_avm_write(bb_fir_B10_out_memdep_5_fir_avm_write),
        .out_memdep_5_fir_avm_writedata(bb_fir_B10_out_memdep_5_fir_avm_writedata),
        .out_stall_out_0(bb_fir_B10_out_stall_out_0),
        .out_valid_out_0(bb_fir_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B10_sr_0_aunroll_x(BLACKBOX,157)
    fir_bb_B10_sr_0 thebb_fir_B10_sr_0_aunroll_x (
        .in_i_stall(bb_fir_B10_out_stall_out_0),
        .in_i_valid(bb_fir_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_fir_B11_out_c0_exe2133),
        .in_i_data_1_tpl(bb_fir_B11_out_c0_exe3134),
        .in_i_data_2_tpl(bb_fir_B11_out_c0_exe5136),
        .in_i_data_3_tpl(bb_fir_B11_out_c0_exe6),
        .out_o_stall(bb_fir_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_fir_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_fir_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_fir_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fir6_sr(BLACKBOX,60)
    fir_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_fir6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef33(CONSTANT,48)
    assign c_i32_undef33_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_fir_B11(BLACKBOX,4)
    fir_bb_B11 thebb_fir_B11 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_fir_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_4_0),
        .in_j_027_pop2482_0(c_i32_undef33_q),
        .in_j_027_pop2482_1(bb_fir_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lm121_fir_avm_readdata(in_lm121_fir_avm_readdata),
        .in_lm121_fir_avm_readdatavalid(in_lm121_fir_avm_readdatavalid),
        .in_lm121_fir_avm_waitrequest(in_lm121_fir_avm_waitrequest),
        .in_lm121_fir_avm_writeack(in_lm121_fir_avm_writeack),
        .in_lm2_fir_avm_readdata(in_lm2_fir_avm_readdata),
        .in_lm2_fir_avm_readdatavalid(in_lm2_fir_avm_readdatavalid),
        .in_lm2_fir_avm_waitrequest(in_lm2_fir_avm_waitrequest),
        .in_lm2_fir_avm_writeack(in_lm2_fir_avm_writeack),
        .in_notcmp2481_0(GND_q),
        .in_notcmp2481_1(bb_fir_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2973_pop2583_0(GND_q),
        .in_notcmp2973_pop2583_1(bb_fir_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp2980_0(GND_q),
        .in_notcmp2980_1(bb_fir_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_stall),
        .in_stall_in_0(bb_fir_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fir_B11_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2133(bb_fir_B11_out_c0_exe2133),
        .out_c0_exe3134(bb_fir_B11_out_c0_exe3134),
        .out_c0_exe5136(bb_fir_B11_out_c0_exe5136),
        .out_c0_exe6(bb_fir_B11_out_c0_exe6),
        .out_exiting_stall_out(bb_fir_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fir_B11_out_exiting_valid_out),
        .out_lm121_fir_avm_address(bb_fir_B11_out_lm121_fir_avm_address),
        .out_lm121_fir_avm_burstcount(bb_fir_B11_out_lm121_fir_avm_burstcount),
        .out_lm121_fir_avm_byteenable(bb_fir_B11_out_lm121_fir_avm_byteenable),
        .out_lm121_fir_avm_enable(bb_fir_B11_out_lm121_fir_avm_enable),
        .out_lm121_fir_avm_read(bb_fir_B11_out_lm121_fir_avm_read),
        .out_lm121_fir_avm_write(bb_fir_B11_out_lm121_fir_avm_write),
        .out_lm121_fir_avm_writedata(bb_fir_B11_out_lm121_fir_avm_writedata),
        .out_lm2_fir_avm_address(bb_fir_B11_out_lm2_fir_avm_address),
        .out_lm2_fir_avm_burstcount(bb_fir_B11_out_lm2_fir_avm_burstcount),
        .out_lm2_fir_avm_byteenable(bb_fir_B11_out_lm2_fir_avm_byteenable),
        .out_lm2_fir_avm_enable(bb_fir_B11_out_lm2_fir_avm_enable),
        .out_lm2_fir_avm_read(bb_fir_B11_out_lm2_fir_avm_read),
        .out_lm2_fir_avm_write(bb_fir_B11_out_lm2_fir_avm_write),
        .out_lm2_fir_avm_writedata(bb_fir_B11_out_lm2_fir_avm_writedata),
        .out_pipeline_valid_out(bb_fir_B11_out_pipeline_valid_out),
        .out_stall_out_0(bb_fir_B11_out_stall_out_0),
        .out_stall_out_1(bb_fir_B11_out_stall_out_1),
        .out_valid_out_0(bb_fir_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_fir_B11_sr_1_aunroll_x(BLACKBOX,158)
    fir_bb_B11_sr_1 thebb_fir_B11_sr_1_aunroll_x (
        .in_i_stall(bb_fir_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_fir4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_fir_B8_out_c0_exe5),
        .in_i_data_2_tpl(bb_fir_B8_out_c0_exe2120),
        .in_i_data_3_tpl(bb_fir_B8_out_c0_exe3),
        .in_i_data_4_tpl(bb_fir_B8_out_c0_exe4),
        .out_o_stall(bb_fir_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B11_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_fir_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_fir_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_fir_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_fir_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fir4(BLACKBOX,102)
    fir_loop_limiter_4 theloop_limiter_fir4 (
        .in_i_stall(bb_fir_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fir_B11_out_exiting_stall_out),
        .in_i_valid(bb_fir_B8_out_valid_out_0),
        .in_i_valid_exit(bb_fir_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fir4_out_o_stall),
        .out_o_valid(loop_limiter_fir4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_fir2_sr(BLACKBOX,50)
    fir_i_llvm_fpga_pipeline_keep_going26_2_sr thei_llvm_fpga_pipeline_keep_going26_fir2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_fir2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_fir2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B8(BLACKBOX,10)
    fir_bb_B8 thebb_fir_B8 (
        .in_forked72_0(GND_q),
        .in_forked72_1(bb_fir_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_notcmp2978_0(GND_q),
        .in_notcmp2978_1(bb_fir_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_fir2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_fir4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_fir2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fir_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2120(bb_fir_B8_out_c0_exe2120),
        .out_c0_exe3(bb_fir_B8_out_c0_exe3),
        .out_c0_exe4(bb_fir_B8_out_c0_exe4),
        .out_c0_exe5(bb_fir_B8_out_c0_exe5),
        .out_exiting_stall_out(bb_fir_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fir_B8_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_fir_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_fir_B8_out_stall_out_0),
        .out_stall_out_1(bb_fir_B8_out_stall_out_1),
        .out_valid_out_0(bb_fir_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B8_sr_1_aunroll_x(BLACKBOX,167)
    fir_bb_B8_sr_1 thebb_fir_B8_sr_1_aunroll_x (
        .in_i_stall(bb_fir_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_fir3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_fir_B6_out_c0_exe2108),
        .out_o_stall(bb_fir_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_fir_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fir3(BLACKBOX,101)
    fir_loop_limiter_3 theloop_limiter_fir3 (
        .in_i_stall(bb_fir_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fir_B8_out_exiting_stall_out),
        .in_i_valid(bb_fir_B6_out_valid_out_0),
        .in_i_valid_exit(bb_fir_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fir3_out_o_stall),
        .out_o_valid(loop_limiter_fir3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going31_fir2_sr(BLACKBOX,52)
    fir_i_llvm_fpga_pipeline_keep_going31_2_sr thei_llvm_fpga_pipeline_keep_going31_fir2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going31_fir2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going31_fir2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B6(BLACKBOX,8)
    fir_bb_B6 thebb_fir_B6 (
        .in_forked71_0(GND_q),
        .in_forked71_1(bb_fir_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going31_fir2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_fir3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going31_fir2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fir_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2108(bb_fir_B6_out_c0_exe2108),
        .out_exiting_stall_out(bb_fir_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fir_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_fir_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_fir_B6_out_stall_out_0),
        .out_stall_out_1(bb_fir_B6_out_stall_out_1),
        .out_valid_out_0(bb_fir_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B6_sr_1_aunroll_x(BLACKBOX,165)
    fir_bb_B6_sr_1 thebb_fir_B6_sr_1_aunroll_x (
        .in_i_stall(bb_fir_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_fir2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_fir_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fir2(BLACKBOX,100)
    fir_loop_limiter_2 theloop_limiter_fir2 (
        .in_i_stall(bb_fir_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fir_B6_out_exiting_stall_out),
        .in_i_valid(bb_fir_B4_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_fir_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fir2_out_o_stall),
        .out_o_valid(loop_limiter_fir2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B4_aunroll_x(BLACKBOX,162)
    fir_bb_B4 thebb_fir_B4_aunroll_x (
        .in_stall_in_0(loop_limiter_fir2_out_o_stall),
        .in_valid_in_0(bb_fir_B4_sr_0_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_2_0(bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_fir_B4_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_stall_out_0(bb_fir_B4_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_fir_B4_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B4_sr_0_aunroll_x(BLACKBOX,163)
    fir_bb_B4_sr_0 thebb_fir_B4_sr_0_aunroll_x (
        .in_i_stall(bb_fir_B4_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_fir_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_fir_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_fir6_sr(BLACKBOX,54)
    fir_i_llvm_fpga_pipeline_keep_going38_6_sr thei_llvm_fpga_pipeline_keep_going38_fir6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going38_fir6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going38_fir6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B5(BLACKBOX,7)
    fir_bb_B5 thebb_fir_B5 (
        .in_flush(in_start),
        .in_forked35_0(GND_q),
        .in_forked35_1(bb_fir_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_3_fir_avm_readdata(in_memdep_3_fir_avm_readdata),
        .in_memdep_3_fir_avm_readdatavalid(in_memdep_3_fir_avm_readdatavalid),
        .in_memdep_3_fir_avm_waitrequest(in_memdep_3_fir_avm_waitrequest),
        .in_memdep_3_fir_avm_writeack(in_memdep_3_fir_avm_writeack),
        .in_memdep_4_fir_avm_readdata(in_memdep_4_fir_avm_readdata),
        .in_memdep_4_fir_avm_readdatavalid(in_memdep_4_fir_avm_readdatavalid),
        .in_memdep_4_fir_avm_waitrequest(in_memdep_4_fir_avm_waitrequest),
        .in_memdep_4_fir_avm_writeack(in_memdep_4_fir_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going38_fir6_sr_out_o_stall),
        .in_stall_in_0(bb_fir_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going38_fir6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fir_B5_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_fir_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fir_B5_out_exiting_valid_out),
        .out_memdep_3_fir_avm_address(bb_fir_B5_out_memdep_3_fir_avm_address),
        .out_memdep_3_fir_avm_burstcount(bb_fir_B5_out_memdep_3_fir_avm_burstcount),
        .out_memdep_3_fir_avm_byteenable(bb_fir_B5_out_memdep_3_fir_avm_byteenable),
        .out_memdep_3_fir_avm_enable(bb_fir_B5_out_memdep_3_fir_avm_enable),
        .out_memdep_3_fir_avm_read(bb_fir_B5_out_memdep_3_fir_avm_read),
        .out_memdep_3_fir_avm_write(bb_fir_B5_out_memdep_3_fir_avm_write),
        .out_memdep_3_fir_avm_writedata(bb_fir_B5_out_memdep_3_fir_avm_writedata),
        .out_memdep_4_fir_avm_address(bb_fir_B5_out_memdep_4_fir_avm_address),
        .out_memdep_4_fir_avm_burstcount(bb_fir_B5_out_memdep_4_fir_avm_burstcount),
        .out_memdep_4_fir_avm_byteenable(bb_fir_B5_out_memdep_4_fir_avm_byteenable),
        .out_memdep_4_fir_avm_enable(bb_fir_B5_out_memdep_4_fir_avm_enable),
        .out_memdep_4_fir_avm_read(bb_fir_B5_out_memdep_4_fir_avm_read),
        .out_memdep_4_fir_avm_write(bb_fir_B5_out_memdep_4_fir_avm_write),
        .out_memdep_4_fir_avm_writedata(bb_fir_B5_out_memdep_4_fir_avm_writedata),
        .out_pipeline_valid_out(bb_fir_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_fir_B5_out_stall_out_0),
        .out_stall_out_1(bb_fir_B5_out_stall_out_1),
        .out_valid_out_0(bb_fir_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B5_sr_1_aunroll_x(BLACKBOX,164)
    fir_bb_B5_sr_1 thebb_fir_B5_sr_1_aunroll_x (
        .in_i_stall(bb_fir_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_fir1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_fir_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fir1(BLACKBOX,99)
    fir_loop_limiter_1 theloop_limiter_fir1 (
        .in_i_stall(bb_fir_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fir_B5_out_exiting_stall_out),
        .in_i_valid(bb_fir_B2_out_valid_out_0),
        .in_i_valid_exit(bb_fir_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fir1_out_o_stall),
        .out_o_valid(loop_limiter_fir1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B2(BLACKBOX,5)
    fir_bb_B2 thebb_fir_B2 (
        .in_stall_in_0(loop_limiter_fir1_out_o_stall),
        .in_valid_in_0(bb_fir_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_fir_B2_out_stall_out_0),
        .out_valid_out_0(bb_fir_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B2_sr_0_aunroll_x(BLACKBOX,160)
    fir_bb_B2_sr_0 thebb_fir_B2_sr_0_aunroll_x (
        .in_i_stall(bb_fir_B2_out_stall_out_0),
        .in_i_valid(bb_fir_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_fir_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going55_fir6_sr(BLACKBOX,56)
    fir_i_llvm_fpga_pipeline_keep_going55_6_sr thei_llvm_fpga_pipeline_keep_going55_fir6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going55_fir6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going55_fir6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_fir_B3(BLACKBOX,6)
    fir_bb_B3 thebb_fir_B3 (
        .in_flush(in_start),
        .in_forked52_0(GND_q),
        .in_forked52_1(bb_fir_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_fir_avm_readdata(in_memdep_fir_avm_readdata),
        .in_memdep_fir_avm_readdatavalid(in_memdep_fir_avm_readdatavalid),
        .in_memdep_fir_avm_waitrequest(in_memdep_fir_avm_waitrequest),
        .in_memdep_fir_avm_writeack(in_memdep_fir_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going55_fir6_sr_out_o_stall),
        .in_stall_in_0(bb_fir_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going55_fir6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fir_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_fir_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fir_B3_out_exiting_valid_out),
        .out_memdep_fir_avm_address(bb_fir_B3_out_memdep_fir_avm_address),
        .out_memdep_fir_avm_burstcount(bb_fir_B3_out_memdep_fir_avm_burstcount),
        .out_memdep_fir_avm_byteenable(bb_fir_B3_out_memdep_fir_avm_byteenable),
        .out_memdep_fir_avm_enable(bb_fir_B3_out_memdep_fir_avm_enable),
        .out_memdep_fir_avm_read(bb_fir_B3_out_memdep_fir_avm_read),
        .out_memdep_fir_avm_write(bb_fir_B3_out_memdep_fir_avm_write),
        .out_memdep_fir_avm_writedata(bb_fir_B3_out_memdep_fir_avm_writedata),
        .out_pipeline_valid_out(bb_fir_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_fir_B3_out_stall_out_0),
        .out_stall_out_1(bb_fir_B3_out_stall_out_1),
        .out_valid_out_0(bb_fir_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B3_sr_1_aunroll_x(BLACKBOX,161)
    fir_bb_B3_sr_1 thebb_fir_B3_sr_1_aunroll_x (
        .in_i_stall(bb_fir_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_fir0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_fir_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fir0(BLACKBOX,98)
    fir_loop_limiter_0 theloop_limiter_fir0 (
        .in_i_stall(bb_fir_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fir_B3_out_exiting_stall_out),
        .in_i_valid(bb_fir_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_fir_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fir0_out_o_stall),
        .out_o_valid(loop_limiter_fir0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going68_fir1_sr(BLACKBOX,58)
    fir_i_llvm_fpga_pipeline_keep_going68_1_sr thei_llvm_fpga_pipeline_keep_going68_fir1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going68_fir1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going68_fir1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B7(BLACKBOX,9)
    fir_bb_B7 thebb_fir_B7 (
        .in_feedback_stall_in_1(bb_fir_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_1_0(bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .in_iowr_bl_return_fir_i_fifoready(in_iowr_bl_return_fir_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_unnamed_fir10_fir_avm_readdata(in_unnamed_fir10_fir_avm_readdata),
        .in_unnamed_fir10_fir_avm_readdatavalid(in_unnamed_fir10_fir_avm_readdatavalid),
        .in_unnamed_fir10_fir_avm_waitrequest(in_unnamed_fir10_fir_avm_waitrequest),
        .in_unnamed_fir10_fir_avm_writeack(in_unnamed_fir10_fir_avm_writeack),
        .in_valid_in_0(bb_fir_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_fir_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_fir_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_fir_o_fifodata(bb_fir_B7_out_iowr_bl_return_fir_o_fifodata),
        .out_iowr_bl_return_fir_o_fifovalid(bb_fir_B7_out_iowr_bl_return_fir_o_fifovalid),
        .out_stall_out_0(bb_fir_B7_out_stall_out_0),
        .out_unnamed_fir10_fir_avm_address(bb_fir_B7_out_unnamed_fir10_fir_avm_address),
        .out_unnamed_fir10_fir_avm_burstcount(bb_fir_B7_out_unnamed_fir10_fir_avm_burstcount),
        .out_unnamed_fir10_fir_avm_byteenable(bb_fir_B7_out_unnamed_fir10_fir_avm_byteenable),
        .out_unnamed_fir10_fir_avm_enable(bb_fir_B7_out_unnamed_fir10_fir_avm_enable),
        .out_unnamed_fir10_fir_avm_read(bb_fir_B7_out_unnamed_fir10_fir_avm_read),
        .out_unnamed_fir10_fir_avm_write(bb_fir_B7_out_unnamed_fir10_fir_avm_write),
        .out_unnamed_fir10_fir_avm_writedata(bb_fir_B7_out_unnamed_fir10_fir_avm_writedata),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B1_start_aunroll_x(BLACKBOX,159)
    fir_bb_B1_start thebb_fir_B1_start_aunroll_x (
        .in_feedback_in_1(bb_fir_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_fir_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_fir_i_fifodata(in_iord_bl_call_fir_i_fifodata),
        .in_iord_bl_call_fir_i_fifovalid(in_iord_bl_call_fir_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going68_fir1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_fir0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going68_fir1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_fir_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_1_0(bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_fir_o_fifoready(bb_fir_B1_start_aunroll_x_out_iord_bl_call_fir_o_fifoready),
        .out_pipeline_valid_out(bb_fir_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_fir_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_fir_B1_start_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_fir_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_fir_o_fifoready(GPOUT,103)
    assign out_iord_bl_call_fir_o_fifoready = bb_fir_B1_start_aunroll_x_out_iord_bl_call_fir_o_fifoready;

    // out_iowr_bl_return_fir_o_fifodata(GPOUT,104)
    assign out_iowr_bl_return_fir_o_fifodata = bb_fir_B7_out_iowr_bl_return_fir_o_fifodata;

    // out_iowr_bl_return_fir_o_fifovalid(GPOUT,105)
    assign out_iowr_bl_return_fir_o_fifovalid = bb_fir_B7_out_iowr_bl_return_fir_o_fifovalid;

    // out_lm121_fir_avm_address(GPOUT,106)
    assign out_lm121_fir_avm_address = bb_fir_B11_out_lm121_fir_avm_address;

    // out_lm121_fir_avm_burstcount(GPOUT,107)
    assign out_lm121_fir_avm_burstcount = bb_fir_B11_out_lm121_fir_avm_burstcount;

    // out_lm121_fir_avm_byteenable(GPOUT,108)
    assign out_lm121_fir_avm_byteenable = bb_fir_B11_out_lm121_fir_avm_byteenable;

    // out_lm121_fir_avm_enable(GPOUT,109)
    assign out_lm121_fir_avm_enable = bb_fir_B11_out_lm121_fir_avm_enable;

    // out_lm121_fir_avm_read(GPOUT,110)
    assign out_lm121_fir_avm_read = bb_fir_B11_out_lm121_fir_avm_read;

    // out_lm121_fir_avm_write(GPOUT,111)
    assign out_lm121_fir_avm_write = bb_fir_B11_out_lm121_fir_avm_write;

    // out_lm121_fir_avm_writedata(GPOUT,112)
    assign out_lm121_fir_avm_writedata = bb_fir_B11_out_lm121_fir_avm_writedata;

    // out_lm2_fir_avm_address(GPOUT,113)
    assign out_lm2_fir_avm_address = bb_fir_B11_out_lm2_fir_avm_address;

    // out_lm2_fir_avm_burstcount(GPOUT,114)
    assign out_lm2_fir_avm_burstcount = bb_fir_B11_out_lm2_fir_avm_burstcount;

    // out_lm2_fir_avm_byteenable(GPOUT,115)
    assign out_lm2_fir_avm_byteenable = bb_fir_B11_out_lm2_fir_avm_byteenable;

    // out_lm2_fir_avm_enable(GPOUT,116)
    assign out_lm2_fir_avm_enable = bb_fir_B11_out_lm2_fir_avm_enable;

    // out_lm2_fir_avm_read(GPOUT,117)
    assign out_lm2_fir_avm_read = bb_fir_B11_out_lm2_fir_avm_read;

    // out_lm2_fir_avm_write(GPOUT,118)
    assign out_lm2_fir_avm_write = bb_fir_B11_out_lm2_fir_avm_write;

    // out_lm2_fir_avm_writedata(GPOUT,119)
    assign out_lm2_fir_avm_writedata = bb_fir_B11_out_lm2_fir_avm_writedata;

    // out_memdep_3_fir_avm_address(GPOUT,120)
    assign out_memdep_3_fir_avm_address = bb_fir_B5_out_memdep_3_fir_avm_address;

    // out_memdep_3_fir_avm_burstcount(GPOUT,121)
    assign out_memdep_3_fir_avm_burstcount = bb_fir_B5_out_memdep_3_fir_avm_burstcount;

    // out_memdep_3_fir_avm_byteenable(GPOUT,122)
    assign out_memdep_3_fir_avm_byteenable = bb_fir_B5_out_memdep_3_fir_avm_byteenable;

    // out_memdep_3_fir_avm_enable(GPOUT,123)
    assign out_memdep_3_fir_avm_enable = bb_fir_B5_out_memdep_3_fir_avm_enable;

    // out_memdep_3_fir_avm_read(GPOUT,124)
    assign out_memdep_3_fir_avm_read = bb_fir_B5_out_memdep_3_fir_avm_read;

    // out_memdep_3_fir_avm_write(GPOUT,125)
    assign out_memdep_3_fir_avm_write = bb_fir_B5_out_memdep_3_fir_avm_write;

    // out_memdep_3_fir_avm_writedata(GPOUT,126)
    assign out_memdep_3_fir_avm_writedata = bb_fir_B5_out_memdep_3_fir_avm_writedata;

    // out_memdep_4_fir_avm_address(GPOUT,127)
    assign out_memdep_4_fir_avm_address = bb_fir_B5_out_memdep_4_fir_avm_address;

    // out_memdep_4_fir_avm_burstcount(GPOUT,128)
    assign out_memdep_4_fir_avm_burstcount = bb_fir_B5_out_memdep_4_fir_avm_burstcount;

    // out_memdep_4_fir_avm_byteenable(GPOUT,129)
    assign out_memdep_4_fir_avm_byteenable = bb_fir_B5_out_memdep_4_fir_avm_byteenable;

    // out_memdep_4_fir_avm_enable(GPOUT,130)
    assign out_memdep_4_fir_avm_enable = bb_fir_B5_out_memdep_4_fir_avm_enable;

    // out_memdep_4_fir_avm_read(GPOUT,131)
    assign out_memdep_4_fir_avm_read = bb_fir_B5_out_memdep_4_fir_avm_read;

    // out_memdep_4_fir_avm_write(GPOUT,132)
    assign out_memdep_4_fir_avm_write = bb_fir_B5_out_memdep_4_fir_avm_write;

    // out_memdep_4_fir_avm_writedata(GPOUT,133)
    assign out_memdep_4_fir_avm_writedata = bb_fir_B5_out_memdep_4_fir_avm_writedata;

    // out_memdep_5_fir_avm_address(GPOUT,134)
    assign out_memdep_5_fir_avm_address = bb_fir_B10_out_memdep_5_fir_avm_address;

    // out_memdep_5_fir_avm_burstcount(GPOUT,135)
    assign out_memdep_5_fir_avm_burstcount = bb_fir_B10_out_memdep_5_fir_avm_burstcount;

    // out_memdep_5_fir_avm_byteenable(GPOUT,136)
    assign out_memdep_5_fir_avm_byteenable = bb_fir_B10_out_memdep_5_fir_avm_byteenable;

    // out_memdep_5_fir_avm_enable(GPOUT,137)
    assign out_memdep_5_fir_avm_enable = bb_fir_B10_out_memdep_5_fir_avm_enable;

    // out_memdep_5_fir_avm_read(GPOUT,138)
    assign out_memdep_5_fir_avm_read = bb_fir_B10_out_memdep_5_fir_avm_read;

    // out_memdep_5_fir_avm_write(GPOUT,139)
    assign out_memdep_5_fir_avm_write = bb_fir_B10_out_memdep_5_fir_avm_write;

    // out_memdep_5_fir_avm_writedata(GPOUT,140)
    assign out_memdep_5_fir_avm_writedata = bb_fir_B10_out_memdep_5_fir_avm_writedata;

    // out_memdep_fir_avm_address(GPOUT,141)
    assign out_memdep_fir_avm_address = bb_fir_B3_out_memdep_fir_avm_address;

    // out_memdep_fir_avm_burstcount(GPOUT,142)
    assign out_memdep_fir_avm_burstcount = bb_fir_B3_out_memdep_fir_avm_burstcount;

    // out_memdep_fir_avm_byteenable(GPOUT,143)
    assign out_memdep_fir_avm_byteenable = bb_fir_B3_out_memdep_fir_avm_byteenable;

    // out_memdep_fir_avm_enable(GPOUT,144)
    assign out_memdep_fir_avm_enable = bb_fir_B3_out_memdep_fir_avm_enable;

    // out_memdep_fir_avm_read(GPOUT,145)
    assign out_memdep_fir_avm_read = bb_fir_B3_out_memdep_fir_avm_read;

    // out_memdep_fir_avm_write(GPOUT,146)
    assign out_memdep_fir_avm_write = bb_fir_B3_out_memdep_fir_avm_write;

    // out_memdep_fir_avm_writedata(GPOUT,147)
    assign out_memdep_fir_avm_writedata = bb_fir_B3_out_memdep_fir_avm_writedata;

    // bb_fir_B0_runOnce(BLACKBOX,2)
    fir_bb_B0_runOnce thebb_fir_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_fir_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,148)
    assign out_stall_out = bb_fir_B0_runOnce_out_stall_out_0;

    // out_unnamed_fir10_fir_avm_address(GPOUT,149)
    assign out_unnamed_fir10_fir_avm_address = bb_fir_B7_out_unnamed_fir10_fir_avm_address;

    // out_unnamed_fir10_fir_avm_burstcount(GPOUT,150)
    assign out_unnamed_fir10_fir_avm_burstcount = bb_fir_B7_out_unnamed_fir10_fir_avm_burstcount;

    // out_unnamed_fir10_fir_avm_byteenable(GPOUT,151)
    assign out_unnamed_fir10_fir_avm_byteenable = bb_fir_B7_out_unnamed_fir10_fir_avm_byteenable;

    // out_unnamed_fir10_fir_avm_enable(GPOUT,152)
    assign out_unnamed_fir10_fir_avm_enable = bb_fir_B7_out_unnamed_fir10_fir_avm_enable;

    // out_unnamed_fir10_fir_avm_read(GPOUT,153)
    assign out_unnamed_fir10_fir_avm_read = bb_fir_B7_out_unnamed_fir10_fir_avm_read;

    // out_unnamed_fir10_fir_avm_write(GPOUT,154)
    assign out_unnamed_fir10_fir_avm_write = bb_fir_B7_out_unnamed_fir10_fir_avm_write;

    // out_unnamed_fir10_fir_avm_writedata(GPOUT,155)
    assign out_unnamed_fir10_fir_avm_writedata = bb_fir_B7_out_unnamed_fir10_fir_avm_writedata;

    // out_valid_out(GPOUT,156)
    assign out_valid_out = GND_q;

endmodule
