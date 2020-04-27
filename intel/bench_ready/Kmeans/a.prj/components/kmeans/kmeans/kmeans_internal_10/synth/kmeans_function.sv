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

// SystemVerilog created from kmeans_function
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [95:0] in_iord_bl_call_kmeans_i_fifodata,
    input wire [0:0] in_iord_bl_call_kmeans_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_kmeans_i_fifoready,
    input wire [15:0] in_lm1_kmeans_avm_readdata,
    input wire [0:0] in_lm1_kmeans_avm_readdatavalid,
    input wire [0:0] in_lm1_kmeans_avm_waitrequest,
    input wire [0:0] in_lm1_kmeans_avm_writeack,
    input wire [15:0] in_lm252_kmeans_avm_readdata,
    input wire [0:0] in_lm252_kmeans_avm_readdatavalid,
    input wire [0:0] in_lm252_kmeans_avm_waitrequest,
    input wire [0:0] in_lm252_kmeans_avm_writeack,
    input wire [15:0] in_memdep_3_kmeans_avm_readdata,
    input wire [0:0] in_memdep_3_kmeans_avm_readdatavalid,
    input wire [0:0] in_memdep_3_kmeans_avm_waitrequest,
    input wire [0:0] in_memdep_3_kmeans_avm_writeack,
    input wire [15:0] in_memdep_4_kmeans_avm_readdata,
    input wire [0:0] in_memdep_4_kmeans_avm_readdatavalid,
    input wire [0:0] in_memdep_4_kmeans_avm_waitrequest,
    input wire [0:0] in_memdep_4_kmeans_avm_writeack,
    input wire [15:0] in_memdep_5_kmeans_avm_readdata,
    input wire [0:0] in_memdep_5_kmeans_avm_readdatavalid,
    input wire [0:0] in_memdep_5_kmeans_avm_waitrequest,
    input wire [0:0] in_memdep_5_kmeans_avm_writeack,
    input wire [15:0] in_memdep_kmeans_avm_readdata,
    input wire [0:0] in_memdep_kmeans_avm_readdatavalid,
    input wire [0:0] in_memdep_kmeans_avm_waitrequest,
    input wire [0:0] in_memdep_kmeans_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [15:0] in_unnamed_kmeans20_kmeans_avm_readdata,
    input wire [0:0] in_unnamed_kmeans20_kmeans_avm_readdatavalid,
    input wire [0:0] in_unnamed_kmeans20_kmeans_avm_waitrequest,
    input wire [0:0] in_unnamed_kmeans20_kmeans_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kmeans_o_fifoready,
    output wire [31:0] out_iowr_bl_return_kmeans_o_fifodata,
    output wire [0:0] out_iowr_bl_return_kmeans_o_fifovalid,
    output wire [31:0] out_lm1_kmeans_avm_address,
    output wire [0:0] out_lm1_kmeans_avm_burstcount,
    output wire [1:0] out_lm1_kmeans_avm_byteenable,
    output wire [0:0] out_lm1_kmeans_avm_enable,
    output wire [0:0] out_lm1_kmeans_avm_read,
    output wire [0:0] out_lm1_kmeans_avm_write,
    output wire [15:0] out_lm1_kmeans_avm_writedata,
    output wire [31:0] out_lm252_kmeans_avm_address,
    output wire [0:0] out_lm252_kmeans_avm_burstcount,
    output wire [1:0] out_lm252_kmeans_avm_byteenable,
    output wire [0:0] out_lm252_kmeans_avm_enable,
    output wire [0:0] out_lm252_kmeans_avm_read,
    output wire [0:0] out_lm252_kmeans_avm_write,
    output wire [15:0] out_lm252_kmeans_avm_writedata,
    output wire [31:0] out_memdep_3_kmeans_avm_address,
    output wire [0:0] out_memdep_3_kmeans_avm_burstcount,
    output wire [1:0] out_memdep_3_kmeans_avm_byteenable,
    output wire [0:0] out_memdep_3_kmeans_avm_enable,
    output wire [0:0] out_memdep_3_kmeans_avm_read,
    output wire [0:0] out_memdep_3_kmeans_avm_write,
    output wire [15:0] out_memdep_3_kmeans_avm_writedata,
    output wire [31:0] out_memdep_4_kmeans_avm_address,
    output wire [0:0] out_memdep_4_kmeans_avm_burstcount,
    output wire [1:0] out_memdep_4_kmeans_avm_byteenable,
    output wire [0:0] out_memdep_4_kmeans_avm_enable,
    output wire [0:0] out_memdep_4_kmeans_avm_read,
    output wire [0:0] out_memdep_4_kmeans_avm_write,
    output wire [15:0] out_memdep_4_kmeans_avm_writedata,
    output wire [31:0] out_memdep_5_kmeans_avm_address,
    output wire [0:0] out_memdep_5_kmeans_avm_burstcount,
    output wire [1:0] out_memdep_5_kmeans_avm_byteenable,
    output wire [0:0] out_memdep_5_kmeans_avm_enable,
    output wire [0:0] out_memdep_5_kmeans_avm_read,
    output wire [0:0] out_memdep_5_kmeans_avm_write,
    output wire [15:0] out_memdep_5_kmeans_avm_writedata,
    output wire [31:0] out_memdep_kmeans_avm_address,
    output wire [0:0] out_memdep_kmeans_avm_burstcount,
    output wire [1:0] out_memdep_kmeans_avm_byteenable,
    output wire [0:0] out_memdep_kmeans_avm_enable,
    output wire [0:0] out_memdep_kmeans_avm_read,
    output wire [0:0] out_memdep_kmeans_avm_write,
    output wire [15:0] out_memdep_kmeans_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kmeans20_kmeans_avm_address,
    output wire [0:0] out_unnamed_kmeans20_kmeans_avm_burstcount,
    output wire [1:0] out_unnamed_kmeans20_kmeans_avm_byteenable,
    output wire [0:0] out_unnamed_kmeans20_kmeans_avm_enable,
    output wire [0:0] out_unnamed_kmeans20_kmeans_avm_read,
    output wire [0:0] out_unnamed_kmeans20_kmeans_avm_write,
    output wire [15:0] out_unnamed_kmeans20_kmeans_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kmeans_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_kmeans_B10_out_c0_exe2197;
    wire [31:0] bb_kmeans_B10_out_c0_exe3;
    wire [0:0] bb_kmeans_B10_out_c0_exe4;
    wire [0:0] bb_kmeans_B10_out_c0_exe5;
    wire [0:0] bb_kmeans_B10_out_exiting_stall_out;
    wire [0:0] bb_kmeans_B10_out_exiting_valid_out;
    wire [0:0] bb_kmeans_B10_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B10_out_stall_out_0;
    wire [0:0] bb_kmeans_B10_out_stall_out_1;
    wire [0:0] bb_kmeans_B10_out_valid_out_0;
    wire [0:0] bb_kmeans_B11_out_stall_out_0;
    wire [0:0] bb_kmeans_B11_out_valid_out_0;
    wire [0:0] bb_kmeans_B12_out_c0_exe10;
    wire [31:0] bb_kmeans_B12_out_c0_exe11;
    wire [0:0] bb_kmeans_B12_out_c0_exe12;
    wire [31:0] bb_kmeans_B12_out_c0_exe1209;
    wire [15:0] bb_kmeans_B12_out_c0_exe2210;
    wire [0:0] bb_kmeans_B12_out_c0_exe3211;
    wire [0:0] bb_kmeans_B12_out_c0_exe4212;
    wire [0:0] bb_kmeans_B12_out_c0_exe5213;
    wire [0:0] bb_kmeans_B12_out_c0_exe6;
    wire [31:0] bb_kmeans_B12_out_c0_exe7;
    wire [0:0] bb_kmeans_B12_out_c0_exe8;
    wire [0:0] bb_kmeans_B12_out_c0_exe9;
    wire [0:0] bb_kmeans_B12_out_exiting_stall_out;
    wire [0:0] bb_kmeans_B12_out_exiting_valid_out;
    wire [0:0] bb_kmeans_B12_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B12_out_stall_out_0;
    wire [0:0] bb_kmeans_B12_out_stall_out_1;
    wire [0:0] bb_kmeans_B12_out_valid_out_0;
    wire [0:0] bb_kmeans_B13_out_c0_exe52546;
    wire [31:0] bb_kmeans_B13_out_memdep_5_kmeans_avm_address;
    wire [0:0] bb_kmeans_B13_out_memdep_5_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B13_out_memdep_5_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B13_out_memdep_5_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B13_out_memdep_5_kmeans_avm_read;
    wire [0:0] bb_kmeans_B13_out_memdep_5_kmeans_avm_write;
    wire [15:0] bb_kmeans_B13_out_memdep_5_kmeans_avm_writedata;
    wire [0:0] bb_kmeans_B13_out_stall_out_0;
    wire [0:0] bb_kmeans_B13_out_valid_out_0;
    wire [15:0] bb_kmeans_B14_out_c0_exe1225;
    wire [31:0] bb_kmeans_B14_out_c0_exe22513;
    wire [0:0] bb_kmeans_B14_out_c0_exe52547;
    wire [0:0] bb_kmeans_B14_out_c0_exe62559;
    wire [0:0] bb_kmeans_B14_out_stall_out_0;
    wire [0:0] bb_kmeans_B14_out_valid_out_0;
    wire [0:0] bb_kmeans_B15_out_c0_exe10259;
    wire [31:0] bb_kmeans_B15_out_c0_exe2251;
    wire [15:0] bb_kmeans_B15_out_c0_exe4253;
    wire [0:0] bb_kmeans_B15_out_c0_exe5254;
    wire [0:0] bb_kmeans_B15_out_c0_exe6255;
    wire [0:0] bb_kmeans_B15_out_c0_exe7256;
    wire [15:0] bb_kmeans_B15_out_c0_exe8257;
    wire [0:0] bb_kmeans_B15_out_c0_exe9258;
    wire [0:0] bb_kmeans_B15_out_exiting_stall_out;
    wire [0:0] bb_kmeans_B15_out_exiting_valid_out;
    wire [31:0] bb_kmeans_B15_out_lm1_kmeans_avm_address;
    wire [0:0] bb_kmeans_B15_out_lm1_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B15_out_lm1_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B15_out_lm1_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B15_out_lm1_kmeans_avm_read;
    wire [0:0] bb_kmeans_B15_out_lm1_kmeans_avm_write;
    wire [15:0] bb_kmeans_B15_out_lm1_kmeans_avm_writedata;
    wire [31:0] bb_kmeans_B15_out_lm252_kmeans_avm_address;
    wire [0:0] bb_kmeans_B15_out_lm252_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B15_out_lm252_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B15_out_lm252_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B15_out_lm252_kmeans_avm_read;
    wire [0:0] bb_kmeans_B15_out_lm252_kmeans_avm_write;
    wire [15:0] bb_kmeans_B15_out_lm252_kmeans_avm_writedata;
    wire [0:0] bb_kmeans_B15_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B15_out_stall_out_0;
    wire [0:0] bb_kmeans_B15_out_stall_out_1;
    wire [0:0] bb_kmeans_B15_out_valid_out_0;
    wire [0:0] bb_kmeans_B2_out_stall_out_0;
    wire [0:0] bb_kmeans_B2_out_valid_out_0;
    wire [0:0] bb_kmeans_B3_out_exiting_stall_out;
    wire [0:0] bb_kmeans_B3_out_exiting_valid_out;
    wire [31:0] bb_kmeans_B3_out_memdep_kmeans_avm_address;
    wire [0:0] bb_kmeans_B3_out_memdep_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B3_out_memdep_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B3_out_memdep_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B3_out_memdep_kmeans_avm_read;
    wire [0:0] bb_kmeans_B3_out_memdep_kmeans_avm_write;
    wire [15:0] bb_kmeans_B3_out_memdep_kmeans_avm_writedata;
    wire [0:0] bb_kmeans_B3_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B3_out_stall_out_0;
    wire [0:0] bb_kmeans_B3_out_stall_out_1;
    wire [0:0] bb_kmeans_B3_out_valid_out_0;
    wire [0:0] bb_kmeans_B5_out_exiting_stall_out;
    wire [0:0] bb_kmeans_B5_out_exiting_valid_out;
    wire [31:0] bb_kmeans_B5_out_memdep_3_kmeans_avm_address;
    wire [0:0] bb_kmeans_B5_out_memdep_3_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B5_out_memdep_3_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B5_out_memdep_3_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B5_out_memdep_3_kmeans_avm_read;
    wire [0:0] bb_kmeans_B5_out_memdep_3_kmeans_avm_write;
    wire [15:0] bb_kmeans_B5_out_memdep_3_kmeans_avm_writedata;
    wire [0:0] bb_kmeans_B5_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B5_out_stall_out_0;
    wire [0:0] bb_kmeans_B5_out_stall_out_1;
    wire [0:0] bb_kmeans_B5_out_valid_out_0;
    wire [32:0] bb_kmeans_B6_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_kmeans_B6_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_kmeans_B6_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_kmeans_B6_out_stall_out_0;
    wire [0:0] bb_kmeans_B6_out_valid_out_0;
    wire [0:0] bb_kmeans_B7_out_exiting_stall_out;
    wire [0:0] bb_kmeans_B7_out_exiting_valid_out;
    wire [31:0] bb_kmeans_B7_out_memdep_4_kmeans_avm_address;
    wire [0:0] bb_kmeans_B7_out_memdep_4_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B7_out_memdep_4_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B7_out_memdep_4_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B7_out_memdep_4_kmeans_avm_read;
    wire [0:0] bb_kmeans_B7_out_memdep_4_kmeans_avm_write;
    wire [15:0] bb_kmeans_B7_out_memdep_4_kmeans_avm_writedata;
    wire [0:0] bb_kmeans_B7_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B7_out_stall_out_0;
    wire [0:0] bb_kmeans_B7_out_stall_out_1;
    wire [0:0] bb_kmeans_B7_out_valid_out_0;
    wire [0:0] bb_kmeans_B8_out_c0_exe2185;
    wire [0:0] bb_kmeans_B8_out_exiting_stall_out;
    wire [0:0] bb_kmeans_B8_out_exiting_valid_out;
    wire [0:0] bb_kmeans_B8_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B8_out_stall_out_0;
    wire [0:0] bb_kmeans_B8_out_stall_out_1;
    wire [0:0] bb_kmeans_B8_out_valid_out_0;
    wire [0:0] bb_kmeans_B9_out_feedback_out_1;
    wire [0:0] bb_kmeans_B9_out_feedback_valid_out_1;
    wire [31:0] bb_kmeans_B9_out_iowr_bl_return_kmeans_o_fifodata;
    wire [0:0] bb_kmeans_B9_out_iowr_bl_return_kmeans_o_fifovalid;
    wire [0:0] bb_kmeans_B9_out_stall_out_0;
    wire [31:0] bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_address;
    wire [0:0] bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_read;
    wire [0:0] bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_write;
    wire [15:0] bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_writedata;
    wire [15:0] c_i16_undef65_q;
    wire [1:0] c_i2_079_q;
    wire [31:0] c_i32_undef33_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_kmeans1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_kmeans1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kmeans2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kmeans2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going59_kmeans6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going59_kmeans6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kmeans6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kmeans6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_kmeans0_out_o_stall;
    wire [0:0] loop_limiter_kmeans0_out_o_valid;
    wire [0:0] loop_limiter_kmeans1_out_o_stall;
    wire [0:0] loop_limiter_kmeans1_out_o_valid;
    wire [0:0] loop_limiter_kmeans2_out_o_stall;
    wire [0:0] loop_limiter_kmeans2_out_o_valid;
    wire [0:0] loop_limiter_kmeans3_out_o_stall;
    wire [0:0] loop_limiter_kmeans3_out_o_valid;
    wire [0:0] loop_limiter_kmeans4_out_o_stall;
    wire [0:0] loop_limiter_kmeans4_out_o_valid;
    wire [0:0] loop_limiter_kmeans5_out_o_stall;
    wire [0:0] loop_limiter_kmeans5_out_o_valid;
    wire [0:0] loop_limiter_kmeans6_out_o_stall;
    wire [0:0] loop_limiter_kmeans6_out_o_valid;
    wire [0:0] bb_kmeans_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kmeans_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kmeans_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kmeans_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kmeans_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kmeans_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kmeans_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kmeans_B12_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kmeans_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B13_sr_0_aunroll_x_out_o_valid;
    wire [15:0] bb_kmeans_B13_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kmeans_B13_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kmeans_B13_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kmeans_B13_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [15:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [15:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kmeans_B14_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [15:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_kmeans_B15_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_kmeans_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [31:0] bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_kmeans_B1_start_aunroll_x_out_iord_bl_call_kmeans_o_fifoready;
    wire [0:0] bb_kmeans_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_kmeans_B1_start_aunroll_x_out_valid_out_0;
    wire [31:0] bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [31:0] bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] bb_kmeans_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [32:0] bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_kmeans_B4_aunroll_x_out_stall_out_0;
    wire [0:0] bb_kmeans_B4_aunroll_x_out_valid_out_0;
    wire [0:0] bb_kmeans_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kmeans_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kmeans_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kmeans_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kmeans_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kmeans_B9_sr_0_aunroll_x_out_o_valid;


    // c_i2_079(CONSTANT,64)
    assign c_i2_079_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo(BLACKBOX,78)
    kmeans_i_llvm_fpga_pipeline_keep_going103_1_valid_fifo thei_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going103_kmeans1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo(BLACKBOX,90)
    kmeans_i_llvm_fpga_pipeline_keep_going90_6_valid_fifo thei_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going90_kmeans6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo(BLACKBOX,88)
    kmeans_i_llvm_fpga_pipeline_keep_going75_6_valid_fifo thei_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going75_kmeans6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo(BLACKBOX,86)
    kmeans_i_llvm_fpga_pipeline_keep_going59_6_valid_fifo thei_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going59_kmeans6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo(BLACKBOX,84)
    kmeans_i_llvm_fpga_pipeline_keep_going53_2_valid_fifo thei_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going53_kmeans2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo(BLACKBOX,82)
    kmeans_i_llvm_fpga_pipeline_keep_going48_2_valid_fifo thei_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_kmeans2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo(BLACKBOX,80)
    kmeans_i_llvm_fpga_pipeline_keep_going43_2_valid_fifo thei_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going43_kmeans2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo(BLACKBOX,92)
    kmeans_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo (
        .in_data_in(c_i2_079_q),
        .in_stall_in(bb_kmeans_B15_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_kmeans6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B9_sr_0_aunroll_x(BLACKBOX,205)
    kmeans_bb_B9_sr_0 thebb_kmeans_B9_sr_0_aunroll_x (
        .in_i_stall(bb_kmeans_B9_out_stall_out_0),
        .in_i_valid(bb_kmeans_B11_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kmeans_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B11(BLACKBOX,4)
    kmeans_bb_B11 thebb_kmeans_B11 (
        .in_c0_exe52545_0(bb_kmeans_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kmeans_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kmeans_B11_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kmeans_B11_out_stall_out_0),
        .out_valid_out_0(bb_kmeans_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B11_sr_0_aunroll_x(BLACKBOX,191)
    kmeans_bb_B11_sr_0 thebb_kmeans_B11_sr_0_aunroll_x (
        .in_i_stall(bb_kmeans_B11_out_stall_out_0),
        .in_i_valid(bb_kmeans_B13_out_valid_out_0),
        .in_i_data_0_tpl(bb_kmeans_B13_out_c0_exe52546),
        .out_o_stall(bb_kmeans_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B13(BLACKBOX,6)
    kmeans_bb_B13 thebb_kmeans_B13 (
        .in_c0_exe12251_0(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe22512_0(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52546_0(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62558_0(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_memdep_5_kmeans_avm_readdata(in_memdep_5_kmeans_avm_readdata),
        .in_memdep_5_kmeans_avm_readdatavalid(in_memdep_5_kmeans_avm_readdatavalid),
        .in_memdep_5_kmeans_avm_waitrequest(in_memdep_5_kmeans_avm_waitrequest),
        .in_memdep_5_kmeans_avm_writeack(in_memdep_5_kmeans_avm_writeack),
        .in_stall_in_0(bb_kmeans_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kmeans_B13_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe52546(bb_kmeans_B13_out_c0_exe52546),
        .out_memdep_5_kmeans_avm_address(bb_kmeans_B13_out_memdep_5_kmeans_avm_address),
        .out_memdep_5_kmeans_avm_burstcount(bb_kmeans_B13_out_memdep_5_kmeans_avm_burstcount),
        .out_memdep_5_kmeans_avm_byteenable(bb_kmeans_B13_out_memdep_5_kmeans_avm_byteenable),
        .out_memdep_5_kmeans_avm_enable(bb_kmeans_B13_out_memdep_5_kmeans_avm_enable),
        .out_memdep_5_kmeans_avm_read(bb_kmeans_B13_out_memdep_5_kmeans_avm_read),
        .out_memdep_5_kmeans_avm_write(bb_kmeans_B13_out_memdep_5_kmeans_avm_write),
        .out_memdep_5_kmeans_avm_writedata(bb_kmeans_B13_out_memdep_5_kmeans_avm_writedata),
        .out_stall_out_0(bb_kmeans_B13_out_stall_out_0),
        .out_valid_out_0(bb_kmeans_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B13_sr_0_aunroll_x(BLACKBOX,193)
    kmeans_bb_B13_sr_0 thebb_kmeans_B13_sr_0_aunroll_x (
        .in_i_stall(bb_kmeans_B13_out_stall_out_0),
        .in_i_valid(bb_kmeans_B14_out_valid_out_0),
        .in_i_data_0_tpl(bb_kmeans_B14_out_c0_exe1225),
        .in_i_data_1_tpl(bb_kmeans_B14_out_c0_exe22513),
        .in_i_data_2_tpl(bb_kmeans_B14_out_c0_exe52547),
        .in_i_data_3_tpl(bb_kmeans_B14_out_c0_exe62559),
        .out_o_stall(bb_kmeans_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kmeans_B13_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B14(BLACKBOX,7)
    kmeans_bb_B14 thebb_kmeans_B14 (
        .in_c0_exe1025913_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe22513_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42534_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52547_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62559_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe725610_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe825711_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe925812_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_intel_reserved_ffwd_8_0(bb_kmeans_B6_out_intel_reserved_ffwd_8_0),
        .in_stall_in_0(bb_kmeans_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1225(bb_kmeans_B14_out_c0_exe1225),
        .out_c0_exe22513(bb_kmeans_B14_out_c0_exe22513),
        .out_c0_exe52547(bb_kmeans_B14_out_c0_exe52547),
        .out_c0_exe62559(bb_kmeans_B14_out_c0_exe62559),
        .out_stall_out_0(bb_kmeans_B14_out_stall_out_0),
        .out_valid_out_0(bb_kmeans_B14_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B14_sr_0_aunroll_x(BLACKBOX,194)
    kmeans_bb_B14_sr_0 thebb_kmeans_B14_sr_0_aunroll_x (
        .in_i_stall(bb_kmeans_B14_out_stall_out_0),
        .in_i_valid(bb_kmeans_B15_out_valid_out_0),
        .in_i_data_0_tpl(bb_kmeans_B15_out_c0_exe2251),
        .in_i_data_1_tpl(bb_kmeans_B15_out_c0_exe4253),
        .in_i_data_2_tpl(bb_kmeans_B15_out_c0_exe5254),
        .in_i_data_3_tpl(bb_kmeans_B15_out_c0_exe6255),
        .in_i_data_4_tpl(bb_kmeans_B15_out_c0_exe7256),
        .in_i_data_5_tpl(bb_kmeans_B15_out_c0_exe8257),
        .in_i_data_6_tpl(bb_kmeans_B15_out_c0_exe9258),
        .in_i_data_7_tpl(bb_kmeans_B15_out_c0_exe10259),
        .out_o_stall(bb_kmeans_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B14_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kmeans_B14_sr_0_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kmeans6_sr(BLACKBOX,91)
    kmeans_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_kmeans6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B15_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_kmeans6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_kmeans6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i16_undef65(CONSTANT,16)
    assign c_i16_undef65_q = $unsigned(16'b0000000000000000);

    // bb_kmeans_B15(BLACKBOX,8)
    kmeans_bb_B15 thebb_kmeans_B15 (
        .in_c_044_pop35138_0(c_i16_undef65_q),
        .in_c_044_pop35138_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_flush(in_start),
        .in_forked111136_0(GND_q),
        .in_forked111136_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_forked39_0(GND_q),
        .in_forked39_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i27_047_pop32114_pop40142_0(c_i32_undef33_q),
        .in_i27_047_pop32114_pop40142_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_i27_047_pop32132_0(c_i32_undef33_q),
        .in_i27_047_pop32132_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_10_0(bb_kmeans_B6_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_2_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_9_0(bb_kmeans_B6_out_intel_reserved_ffwd_9_0),
        .in_lm1_kmeans_avm_readdata(in_lm1_kmeans_avm_readdata),
        .in_lm1_kmeans_avm_readdatavalid(in_lm1_kmeans_avm_readdatavalid),
        .in_lm1_kmeans_avm_waitrequest(in_lm1_kmeans_avm_waitrequest),
        .in_lm1_kmeans_avm_writeack(in_lm1_kmeans_avm_writeack),
        .in_lm252_kmeans_avm_readdata(in_lm252_kmeans_avm_readdata),
        .in_lm252_kmeans_avm_readdatavalid(in_lm252_kmeans_avm_readdatavalid),
        .in_lm252_kmeans_avm_waitrequest(in_lm252_kmeans_avm_waitrequest),
        .in_lm252_kmeans_avm_writeack(in_lm252_kmeans_avm_writeack),
        .in_mul46137_0(c_i32_undef33_q),
        .in_mul46137_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp41139_0(GND_q),
        .in_notcmp41139_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp46112_pop39141_0(GND_q),
        .in_notcmp46112_pop39141_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp46129_0(GND_q),
        .in_notcmp46129_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp51108_pop33135_0(GND_q),
        .in_notcmp51108_pop33135_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp51109_pop38140_0(GND_q),
        .in_notcmp51109_pop38140_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp51125_0(GND_q),
        .in_notcmp51125_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_kmeans6_sr_out_o_stall),
        .in_stall_in_0(bb_kmeans_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kmeans22_0(GND_q),
        .in_unnamed_kmeans22_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_kmeans6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kmeans_B15_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10259(bb_kmeans_B15_out_c0_exe10259),
        .out_c0_exe2251(bb_kmeans_B15_out_c0_exe2251),
        .out_c0_exe4253(bb_kmeans_B15_out_c0_exe4253),
        .out_c0_exe5254(bb_kmeans_B15_out_c0_exe5254),
        .out_c0_exe6255(bb_kmeans_B15_out_c0_exe6255),
        .out_c0_exe7256(bb_kmeans_B15_out_c0_exe7256),
        .out_c0_exe8257(bb_kmeans_B15_out_c0_exe8257),
        .out_c0_exe9258(bb_kmeans_B15_out_c0_exe9258),
        .out_exiting_stall_out(bb_kmeans_B15_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kmeans_B15_out_exiting_valid_out),
        .out_lm1_kmeans_avm_address(bb_kmeans_B15_out_lm1_kmeans_avm_address),
        .out_lm1_kmeans_avm_burstcount(bb_kmeans_B15_out_lm1_kmeans_avm_burstcount),
        .out_lm1_kmeans_avm_byteenable(bb_kmeans_B15_out_lm1_kmeans_avm_byteenable),
        .out_lm1_kmeans_avm_enable(bb_kmeans_B15_out_lm1_kmeans_avm_enable),
        .out_lm1_kmeans_avm_read(bb_kmeans_B15_out_lm1_kmeans_avm_read),
        .out_lm1_kmeans_avm_write(bb_kmeans_B15_out_lm1_kmeans_avm_write),
        .out_lm1_kmeans_avm_writedata(bb_kmeans_B15_out_lm1_kmeans_avm_writedata),
        .out_lm252_kmeans_avm_address(bb_kmeans_B15_out_lm252_kmeans_avm_address),
        .out_lm252_kmeans_avm_burstcount(bb_kmeans_B15_out_lm252_kmeans_avm_burstcount),
        .out_lm252_kmeans_avm_byteenable(bb_kmeans_B15_out_lm252_kmeans_avm_byteenable),
        .out_lm252_kmeans_avm_enable(bb_kmeans_B15_out_lm252_kmeans_avm_enable),
        .out_lm252_kmeans_avm_read(bb_kmeans_B15_out_lm252_kmeans_avm_read),
        .out_lm252_kmeans_avm_write(bb_kmeans_B15_out_lm252_kmeans_avm_write),
        .out_lm252_kmeans_avm_writedata(bb_kmeans_B15_out_lm252_kmeans_avm_writedata),
        .out_pipeline_valid_out(bb_kmeans_B15_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B15_out_stall_out_0),
        .out_stall_out_1(bb_kmeans_B15_out_stall_out_1),
        .out_valid_out_0(bb_kmeans_B15_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_kmeans_B15_sr_1_aunroll_x(BLACKBOX,195)
    kmeans_bb_B15_sr_1 thebb_kmeans_B15_sr_1_aunroll_x (
        .in_i_stall(bb_kmeans_B15_out_stall_out_1),
        .in_i_valid(loop_limiter_kmeans6_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kmeans_B12_out_c0_exe9),
        .in_i_data_2_tpl(bb_kmeans_B12_out_c0_exe10),
        .in_i_data_3_tpl(bb_kmeans_B12_out_c0_exe11),
        .in_i_data_4_tpl(bb_kmeans_B12_out_c0_exe12),
        .in_i_data_5_tpl(bb_kmeans_B12_out_c0_exe8),
        .in_i_data_6_tpl(bb_kmeans_B12_out_c0_exe1209),
        .in_i_data_7_tpl(bb_kmeans_B12_out_c0_exe2210),
        .in_i_data_8_tpl(bb_kmeans_B12_out_c0_exe3211),
        .in_i_data_9_tpl(bb_kmeans_B12_out_c0_exe4212),
        .in_i_data_10_tpl(bb_kmeans_B12_out_c0_exe5213),
        .in_i_data_11_tpl(bb_kmeans_B12_out_c0_exe6),
        .in_i_data_12_tpl(bb_kmeans_B12_out_c0_exe7),
        .out_o_stall(bb_kmeans_B15_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B15_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kmeans_B15_sr_1_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kmeans6(BLACKBOX,135)
    kmeans_loop_limiter_6 theloop_limiter_kmeans6 (
        .in_i_stall(bb_kmeans_B15_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kmeans_B15_out_exiting_stall_out),
        .in_i_valid(bb_kmeans_B12_out_valid_out_0),
        .in_i_valid_exit(bb_kmeans_B15_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kmeans6_out_o_stall),
        .out_o_valid(loop_limiter_kmeans6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_kmeans2_sr(BLACKBOX,79)
    kmeans_i_llvm_fpga_pipeline_keep_going43_2_sr thei_llvm_fpga_pipeline_keep_going43_kmeans2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going43_kmeans2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going43_kmeans2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef33(CONSTANT,72)
    assign c_i32_undef33_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_kmeans_B12(BLACKBOX,5)
    kmeans_bb_B12 thebb_kmeans_B12 (
        .in_forked111_0(GND_q),
        .in_forked111_1(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i27_047_pop32130_0(c_i32_undef33_q),
        .in_i27_047_pop32130_1(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_2_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_5_0(bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_8_0(bb_kmeans_B6_out_intel_reserved_ffwd_8_0),
        .in_notcmp46127_0(GND_q),
        .in_notcmp46127_1(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp51108_pop33133_0(GND_q),
        .in_notcmp51108_pop33133_1(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp51126_0(GND_q),
        .in_notcmp51126_1(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going43_kmeans2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kmeans6_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going43_kmeans2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kmeans_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_kmeans_B12_out_c0_exe10),
        .out_c0_exe11(bb_kmeans_B12_out_c0_exe11),
        .out_c0_exe12(bb_kmeans_B12_out_c0_exe12),
        .out_c0_exe1209(bb_kmeans_B12_out_c0_exe1209),
        .out_c0_exe2210(bb_kmeans_B12_out_c0_exe2210),
        .out_c0_exe3211(bb_kmeans_B12_out_c0_exe3211),
        .out_c0_exe4212(bb_kmeans_B12_out_c0_exe4212),
        .out_c0_exe5213(bb_kmeans_B12_out_c0_exe5213),
        .out_c0_exe6(bb_kmeans_B12_out_c0_exe6),
        .out_c0_exe7(bb_kmeans_B12_out_c0_exe7),
        .out_c0_exe8(bb_kmeans_B12_out_c0_exe8),
        .out_c0_exe9(bb_kmeans_B12_out_c0_exe9),
        .out_exiting_stall_out(bb_kmeans_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kmeans_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kmeans_B12_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B12_out_stall_out_0),
        .out_stall_out_1(bb_kmeans_B12_out_stall_out_1),
        .out_valid_out_0(bb_kmeans_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B12_sr_1_aunroll_x(BLACKBOX,192)
    kmeans_bb_B12_sr_1 thebb_kmeans_B12_sr_1_aunroll_x (
        .in_i_stall(bb_kmeans_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_kmeans5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kmeans_B10_out_c0_exe5),
        .in_i_data_2_tpl(bb_kmeans_B10_out_c0_exe2197),
        .in_i_data_3_tpl(bb_kmeans_B10_out_c0_exe3),
        .in_i_data_4_tpl(bb_kmeans_B10_out_c0_exe4),
        .out_o_stall(bb_kmeans_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kmeans_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kmeans5(BLACKBOX,134)
    kmeans_loop_limiter_5 theloop_limiter_kmeans5 (
        .in_i_stall(bb_kmeans_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kmeans_B12_out_exiting_stall_out),
        .in_i_valid(bb_kmeans_B10_out_valid_out_0),
        .in_i_valid_exit(bb_kmeans_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kmeans5_out_o_stall),
        .out_o_valid(loop_limiter_kmeans5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_kmeans2_sr(BLACKBOX,81)
    kmeans_i_llvm_fpga_pipeline_keep_going48_2_sr thei_llvm_fpga_pipeline_keep_going48_kmeans2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_kmeans2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_kmeans2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B10(BLACKBOX,3)
    kmeans_bb_B10 thebb_kmeans_B10 (
        .in_forked107_0(GND_q),
        .in_forked107_1(bb_kmeans_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_notcmp51122_0(GND_q),
        .in_notcmp51122_1(bb_kmeans_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_kmeans2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kmeans5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_kmeans2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kmeans_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2197(bb_kmeans_B10_out_c0_exe2197),
        .out_c0_exe3(bb_kmeans_B10_out_c0_exe3),
        .out_c0_exe4(bb_kmeans_B10_out_c0_exe4),
        .out_c0_exe5(bb_kmeans_B10_out_c0_exe5),
        .out_exiting_stall_out(bb_kmeans_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kmeans_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kmeans_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B10_out_stall_out_0),
        .out_stall_out_1(bb_kmeans_B10_out_stall_out_1),
        .out_valid_out_0(bb_kmeans_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B10_sr_1_aunroll_x(BLACKBOX,190)
    kmeans_bb_B10_sr_1 thebb_kmeans_B10_sr_1_aunroll_x (
        .in_i_stall(bb_kmeans_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_kmeans4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kmeans_B8_out_c0_exe2185),
        .out_o_stall(bb_kmeans_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kmeans_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kmeans4(BLACKBOX,133)
    kmeans_loop_limiter_4 theloop_limiter_kmeans4 (
        .in_i_stall(bb_kmeans_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kmeans_B10_out_exiting_stall_out),
        .in_i_valid(bb_kmeans_B8_out_valid_out_0),
        .in_i_valid_exit(bb_kmeans_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kmeans4_out_o_stall),
        .out_o_valid(loop_limiter_kmeans4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_kmeans2_sr(BLACKBOX,83)
    kmeans_i_llvm_fpga_pipeline_keep_going53_2_sr thei_llvm_fpga_pipeline_keep_going53_kmeans2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going53_kmeans2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going53_kmeans2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B8(BLACKBOX,14)
    kmeans_bb_B8 thebb_kmeans_B8 (
        .in_forked106_0(GND_q),
        .in_forked106_1(bb_kmeans_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going53_kmeans2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kmeans4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going53_kmeans2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kmeans_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2185(bb_kmeans_B8_out_c0_exe2185),
        .out_exiting_stall_out(bb_kmeans_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kmeans_B8_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kmeans_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B8_out_stall_out_0),
        .out_stall_out_1(bb_kmeans_B8_out_stall_out_1),
        .out_valid_out_0(bb_kmeans_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B8_sr_1_aunroll_x(BLACKBOX,204)
    kmeans_bb_B8_sr_1 thebb_kmeans_B8_sr_1_aunroll_x (
        .in_i_stall(bb_kmeans_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_kmeans3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kmeans_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kmeans3(BLACKBOX,132)
    kmeans_loop_limiter_3 theloop_limiter_kmeans3 (
        .in_i_stall(bb_kmeans_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kmeans_B8_out_exiting_stall_out),
        .in_i_valid(bb_kmeans_B6_out_valid_out_0),
        .in_i_valid_exit(bb_kmeans_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kmeans3_out_o_stall),
        .out_o_valid(loop_limiter_kmeans3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B6(BLACKBOX,12)
    kmeans_bb_B6 thebb_kmeans_B6 (
        .in_intel_reserved_ffwd_2_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_5_0),
        .in_stall_in_0(loop_limiter_kmeans3_out_o_stall),
        .in_valid_in_0(bb_kmeans_B6_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_10_0(bb_kmeans_B6_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_8_0(bb_kmeans_B6_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_kmeans_B6_out_intel_reserved_ffwd_9_0),
        .out_stall_out_0(bb_kmeans_B6_out_stall_out_0),
        .out_valid_out_0(bb_kmeans_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B6_sr_0_aunroll_x(BLACKBOX,202)
    kmeans_bb_B6_sr_0 thebb_kmeans_B6_sr_0_aunroll_x (
        .in_i_stall(bb_kmeans_B6_out_stall_out_0),
        .in_i_valid(bb_kmeans_B7_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kmeans_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going59_kmeans6_sr(BLACKBOX,85)
    kmeans_i_llvm_fpga_pipeline_keep_going59_6_sr thei_llvm_fpga_pipeline_keep_going59_kmeans6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going59_kmeans6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going59_kmeans6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B7(BLACKBOX,13)
    kmeans_bb_B7 thebb_kmeans_B7 (
        .in_flush(in_start),
        .in_forked36_0(GND_q),
        .in_forked36_1(bb_kmeans_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_6_0(bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_7_0),
        .in_memdep_4_kmeans_avm_readdata(in_memdep_4_kmeans_avm_readdata),
        .in_memdep_4_kmeans_avm_readdatavalid(in_memdep_4_kmeans_avm_readdatavalid),
        .in_memdep_4_kmeans_avm_waitrequest(in_memdep_4_kmeans_avm_waitrequest),
        .in_memdep_4_kmeans_avm_writeack(in_memdep_4_kmeans_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going59_kmeans6_sr_out_o_stall),
        .in_stall_in_0(bb_kmeans_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going59_kmeans6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kmeans_B7_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_kmeans_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kmeans_B7_out_exiting_valid_out),
        .out_memdep_4_kmeans_avm_address(bb_kmeans_B7_out_memdep_4_kmeans_avm_address),
        .out_memdep_4_kmeans_avm_burstcount(bb_kmeans_B7_out_memdep_4_kmeans_avm_burstcount),
        .out_memdep_4_kmeans_avm_byteenable(bb_kmeans_B7_out_memdep_4_kmeans_avm_byteenable),
        .out_memdep_4_kmeans_avm_enable(bb_kmeans_B7_out_memdep_4_kmeans_avm_enable),
        .out_memdep_4_kmeans_avm_read(bb_kmeans_B7_out_memdep_4_kmeans_avm_read),
        .out_memdep_4_kmeans_avm_write(bb_kmeans_B7_out_memdep_4_kmeans_avm_write),
        .out_memdep_4_kmeans_avm_writedata(bb_kmeans_B7_out_memdep_4_kmeans_avm_writedata),
        .out_pipeline_valid_out(bb_kmeans_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B7_out_stall_out_0),
        .out_stall_out_1(bb_kmeans_B7_out_stall_out_1),
        .out_valid_out_0(bb_kmeans_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B7_sr_1_aunroll_x(BLACKBOX,203)
    kmeans_bb_B7_sr_1 thebb_kmeans_B7_sr_1_aunroll_x (
        .in_i_stall(bb_kmeans_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_kmeans2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kmeans_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kmeans2(BLACKBOX,131)
    kmeans_loop_limiter_2 theloop_limiter_kmeans2 (
        .in_i_stall(bb_kmeans_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kmeans_B7_out_exiting_stall_out),
        .in_i_valid(bb_kmeans_B4_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_kmeans_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kmeans2_out_o_stall),
        .out_o_valid(loop_limiter_kmeans2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B4_aunroll_x(BLACKBOX,199)
    kmeans_bb_B4 thebb_kmeans_B4_aunroll_x (
        .in_intel_reserved_ffwd_2_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_stall_in_0(loop_limiter_kmeans2_out_o_stall),
        .in_valid_in_0(bb_kmeans_B4_sr_0_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_intel_reserved_ffwd_5_0(bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_kmeans_B4_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_stall_out_0(bb_kmeans_B4_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_kmeans_B4_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B4_sr_0_aunroll_x(BLACKBOX,200)
    kmeans_bb_B4_sr_0 thebb_kmeans_B4_sr_0_aunroll_x (
        .in_i_stall(bb_kmeans_B4_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_kmeans_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kmeans_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_kmeans6_sr(BLACKBOX,87)
    kmeans_i_llvm_fpga_pipeline_keep_going75_6_sr thei_llvm_fpga_pipeline_keep_going75_kmeans6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going75_kmeans6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going75_kmeans6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B5(BLACKBOX,11)
    kmeans_bb_B5 thebb_kmeans_B5 (
        .in_flush(in_start),
        .in_forked72_0(GND_q),
        .in_forked72_1(bb_kmeans_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_3_kmeans_avm_readdata(in_memdep_3_kmeans_avm_readdata),
        .in_memdep_3_kmeans_avm_readdatavalid(in_memdep_3_kmeans_avm_readdatavalid),
        .in_memdep_3_kmeans_avm_waitrequest(in_memdep_3_kmeans_avm_waitrequest),
        .in_memdep_3_kmeans_avm_writeack(in_memdep_3_kmeans_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going75_kmeans6_sr_out_o_stall),
        .in_stall_in_0(bb_kmeans_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going75_kmeans6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kmeans_B5_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_kmeans_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kmeans_B5_out_exiting_valid_out),
        .out_memdep_3_kmeans_avm_address(bb_kmeans_B5_out_memdep_3_kmeans_avm_address),
        .out_memdep_3_kmeans_avm_burstcount(bb_kmeans_B5_out_memdep_3_kmeans_avm_burstcount),
        .out_memdep_3_kmeans_avm_byteenable(bb_kmeans_B5_out_memdep_3_kmeans_avm_byteenable),
        .out_memdep_3_kmeans_avm_enable(bb_kmeans_B5_out_memdep_3_kmeans_avm_enable),
        .out_memdep_3_kmeans_avm_read(bb_kmeans_B5_out_memdep_3_kmeans_avm_read),
        .out_memdep_3_kmeans_avm_write(bb_kmeans_B5_out_memdep_3_kmeans_avm_write),
        .out_memdep_3_kmeans_avm_writedata(bb_kmeans_B5_out_memdep_3_kmeans_avm_writedata),
        .out_pipeline_valid_out(bb_kmeans_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B5_out_stall_out_0),
        .out_stall_out_1(bb_kmeans_B5_out_stall_out_1),
        .out_valid_out_0(bb_kmeans_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B5_sr_1_aunroll_x(BLACKBOX,201)
    kmeans_bb_B5_sr_1 thebb_kmeans_B5_sr_1_aunroll_x (
        .in_i_stall(bb_kmeans_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_kmeans1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kmeans_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kmeans1(BLACKBOX,130)
    kmeans_loop_limiter_1 theloop_limiter_kmeans1 (
        .in_i_stall(bb_kmeans_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kmeans_B5_out_exiting_stall_out),
        .in_i_valid(bb_kmeans_B2_out_valid_out_0),
        .in_i_valid_exit(bb_kmeans_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kmeans1_out_o_stall),
        .out_o_valid(loop_limiter_kmeans1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B2(BLACKBOX,9)
    kmeans_bb_B2 thebb_kmeans_B2 (
        .in_stall_in_0(loop_limiter_kmeans1_out_o_stall),
        .in_valid_in_0(bb_kmeans_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kmeans_B2_out_stall_out_0),
        .out_valid_out_0(bb_kmeans_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B2_sr_0_aunroll_x(BLACKBOX,197)
    kmeans_bb_B2_sr_0 thebb_kmeans_B2_sr_0_aunroll_x (
        .in_i_stall(bb_kmeans_B2_out_stall_out_0),
        .in_i_valid(bb_kmeans_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kmeans_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going90_kmeans6_sr(BLACKBOX,89)
    kmeans_i_llvm_fpga_pipeline_keep_going90_6_sr thei_llvm_fpga_pipeline_keep_going90_kmeans6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going90_kmeans6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going90_kmeans6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_kmeans_B3(BLACKBOX,10)
    kmeans_bb_B3 thebb_kmeans_B3 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_kmeans_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_3_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_4_0),
        .in_memdep_kmeans_avm_readdata(in_memdep_kmeans_avm_readdata),
        .in_memdep_kmeans_avm_readdatavalid(in_memdep_kmeans_avm_readdatavalid),
        .in_memdep_kmeans_avm_waitrequest(in_memdep_kmeans_avm_waitrequest),
        .in_memdep_kmeans_avm_writeack(in_memdep_kmeans_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going90_kmeans6_sr_out_o_stall),
        .in_stall_in_0(bb_kmeans_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going90_kmeans6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kmeans_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_kmeans_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kmeans_B3_out_exiting_valid_out),
        .out_memdep_kmeans_avm_address(bb_kmeans_B3_out_memdep_kmeans_avm_address),
        .out_memdep_kmeans_avm_burstcount(bb_kmeans_B3_out_memdep_kmeans_avm_burstcount),
        .out_memdep_kmeans_avm_byteenable(bb_kmeans_B3_out_memdep_kmeans_avm_byteenable),
        .out_memdep_kmeans_avm_enable(bb_kmeans_B3_out_memdep_kmeans_avm_enable),
        .out_memdep_kmeans_avm_read(bb_kmeans_B3_out_memdep_kmeans_avm_read),
        .out_memdep_kmeans_avm_write(bb_kmeans_B3_out_memdep_kmeans_avm_write),
        .out_memdep_kmeans_avm_writedata(bb_kmeans_B3_out_memdep_kmeans_avm_writedata),
        .out_pipeline_valid_out(bb_kmeans_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B3_out_stall_out_0),
        .out_stall_out_1(bb_kmeans_B3_out_stall_out_1),
        .out_valid_out_0(bb_kmeans_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B3_sr_1_aunroll_x(BLACKBOX,198)
    kmeans_bb_B3_sr_1 thebb_kmeans_B3_sr_1_aunroll_x (
        .in_i_stall(bb_kmeans_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_kmeans0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kmeans_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kmeans_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kmeans_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kmeans0(BLACKBOX,129)
    kmeans_loop_limiter_0 theloop_limiter_kmeans0 (
        .in_i_stall(bb_kmeans_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kmeans_B3_out_exiting_stall_out),
        .in_i_valid(bb_kmeans_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_kmeans_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kmeans0_out_o_stall),
        .out_o_valid(loop_limiter_kmeans0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going103_kmeans1_sr(BLACKBOX,77)
    kmeans_i_llvm_fpga_pipeline_keep_going103_1_sr thei_llvm_fpga_pipeline_keep_going103_kmeans1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo_out_stall_out),
        .in_i_valid(bb_kmeans_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going103_kmeans1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going103_kmeans1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B9(BLACKBOX,15)
    kmeans_bb_B9 thebb_kmeans_B9 (
        .in_feedback_stall_in_1(bb_kmeans_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_1_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .in_iowr_bl_return_kmeans_i_fifoready(in_iowr_bl_return_kmeans_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_unnamed_kmeans20_kmeans_avm_readdata(in_unnamed_kmeans20_kmeans_avm_readdata),
        .in_unnamed_kmeans20_kmeans_avm_readdatavalid(in_unnamed_kmeans20_kmeans_avm_readdatavalid),
        .in_unnamed_kmeans20_kmeans_avm_waitrequest(in_unnamed_kmeans20_kmeans_avm_waitrequest),
        .in_unnamed_kmeans20_kmeans_avm_writeack(in_unnamed_kmeans20_kmeans_avm_writeack),
        .in_valid_in_0(bb_kmeans_B9_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_kmeans_B9_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_kmeans_B9_out_feedback_valid_out_1),
        .out_iowr_bl_return_kmeans_o_fifodata(bb_kmeans_B9_out_iowr_bl_return_kmeans_o_fifodata),
        .out_iowr_bl_return_kmeans_o_fifovalid(bb_kmeans_B9_out_iowr_bl_return_kmeans_o_fifovalid),
        .out_stall_out_0(bb_kmeans_B9_out_stall_out_0),
        .out_unnamed_kmeans20_kmeans_avm_address(bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_address),
        .out_unnamed_kmeans20_kmeans_avm_burstcount(bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_burstcount),
        .out_unnamed_kmeans20_kmeans_avm_byteenable(bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_byteenable),
        .out_unnamed_kmeans20_kmeans_avm_enable(bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_enable),
        .out_unnamed_kmeans20_kmeans_avm_read(bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_read),
        .out_unnamed_kmeans20_kmeans_avm_write(bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_write),
        .out_unnamed_kmeans20_kmeans_avm_writedata(bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_writedata),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B1_start_aunroll_x(BLACKBOX,196)
    kmeans_bb_B1_start thebb_kmeans_B1_start_aunroll_x (
        .in_feedback_in_1(bb_kmeans_B9_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_kmeans_B9_out_feedback_valid_out_1),
        .in_iord_bl_call_kmeans_i_fifodata(in_iord_bl_call_kmeans_i_fifodata),
        .in_iord_bl_call_kmeans_i_fifovalid(in_iord_bl_call_kmeans_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going103_kmeans1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kmeans0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going103_kmeans1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_kmeans_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_1_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_iord_bl_call_kmeans_o_fifoready(bb_kmeans_B1_start_aunroll_x_out_iord_bl_call_kmeans_o_fifoready),
        .out_pipeline_valid_out(bb_kmeans_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_kmeans_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_kmeans_B1_start_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_kmeans_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_kmeans_o_fifoready(GPOUT,136)
    assign out_iord_bl_call_kmeans_o_fifoready = bb_kmeans_B1_start_aunroll_x_out_iord_bl_call_kmeans_o_fifoready;

    // out_iowr_bl_return_kmeans_o_fifodata(GPOUT,137)
    assign out_iowr_bl_return_kmeans_o_fifodata = bb_kmeans_B9_out_iowr_bl_return_kmeans_o_fifodata;

    // out_iowr_bl_return_kmeans_o_fifovalid(GPOUT,138)
    assign out_iowr_bl_return_kmeans_o_fifovalid = bb_kmeans_B9_out_iowr_bl_return_kmeans_o_fifovalid;

    // out_lm1_kmeans_avm_address(GPOUT,139)
    assign out_lm1_kmeans_avm_address = bb_kmeans_B15_out_lm1_kmeans_avm_address;

    // out_lm1_kmeans_avm_burstcount(GPOUT,140)
    assign out_lm1_kmeans_avm_burstcount = bb_kmeans_B15_out_lm1_kmeans_avm_burstcount;

    // out_lm1_kmeans_avm_byteenable(GPOUT,141)
    assign out_lm1_kmeans_avm_byteenable = bb_kmeans_B15_out_lm1_kmeans_avm_byteenable;

    // out_lm1_kmeans_avm_enable(GPOUT,142)
    assign out_lm1_kmeans_avm_enable = bb_kmeans_B15_out_lm1_kmeans_avm_enable;

    // out_lm1_kmeans_avm_read(GPOUT,143)
    assign out_lm1_kmeans_avm_read = bb_kmeans_B15_out_lm1_kmeans_avm_read;

    // out_lm1_kmeans_avm_write(GPOUT,144)
    assign out_lm1_kmeans_avm_write = bb_kmeans_B15_out_lm1_kmeans_avm_write;

    // out_lm1_kmeans_avm_writedata(GPOUT,145)
    assign out_lm1_kmeans_avm_writedata = bb_kmeans_B15_out_lm1_kmeans_avm_writedata;

    // out_lm252_kmeans_avm_address(GPOUT,146)
    assign out_lm252_kmeans_avm_address = bb_kmeans_B15_out_lm252_kmeans_avm_address;

    // out_lm252_kmeans_avm_burstcount(GPOUT,147)
    assign out_lm252_kmeans_avm_burstcount = bb_kmeans_B15_out_lm252_kmeans_avm_burstcount;

    // out_lm252_kmeans_avm_byteenable(GPOUT,148)
    assign out_lm252_kmeans_avm_byteenable = bb_kmeans_B15_out_lm252_kmeans_avm_byteenable;

    // out_lm252_kmeans_avm_enable(GPOUT,149)
    assign out_lm252_kmeans_avm_enable = bb_kmeans_B15_out_lm252_kmeans_avm_enable;

    // out_lm252_kmeans_avm_read(GPOUT,150)
    assign out_lm252_kmeans_avm_read = bb_kmeans_B15_out_lm252_kmeans_avm_read;

    // out_lm252_kmeans_avm_write(GPOUT,151)
    assign out_lm252_kmeans_avm_write = bb_kmeans_B15_out_lm252_kmeans_avm_write;

    // out_lm252_kmeans_avm_writedata(GPOUT,152)
    assign out_lm252_kmeans_avm_writedata = bb_kmeans_B15_out_lm252_kmeans_avm_writedata;

    // out_memdep_3_kmeans_avm_address(GPOUT,153)
    assign out_memdep_3_kmeans_avm_address = bb_kmeans_B5_out_memdep_3_kmeans_avm_address;

    // out_memdep_3_kmeans_avm_burstcount(GPOUT,154)
    assign out_memdep_3_kmeans_avm_burstcount = bb_kmeans_B5_out_memdep_3_kmeans_avm_burstcount;

    // out_memdep_3_kmeans_avm_byteenable(GPOUT,155)
    assign out_memdep_3_kmeans_avm_byteenable = bb_kmeans_B5_out_memdep_3_kmeans_avm_byteenable;

    // out_memdep_3_kmeans_avm_enable(GPOUT,156)
    assign out_memdep_3_kmeans_avm_enable = bb_kmeans_B5_out_memdep_3_kmeans_avm_enable;

    // out_memdep_3_kmeans_avm_read(GPOUT,157)
    assign out_memdep_3_kmeans_avm_read = bb_kmeans_B5_out_memdep_3_kmeans_avm_read;

    // out_memdep_3_kmeans_avm_write(GPOUT,158)
    assign out_memdep_3_kmeans_avm_write = bb_kmeans_B5_out_memdep_3_kmeans_avm_write;

    // out_memdep_3_kmeans_avm_writedata(GPOUT,159)
    assign out_memdep_3_kmeans_avm_writedata = bb_kmeans_B5_out_memdep_3_kmeans_avm_writedata;

    // out_memdep_4_kmeans_avm_address(GPOUT,160)
    assign out_memdep_4_kmeans_avm_address = bb_kmeans_B7_out_memdep_4_kmeans_avm_address;

    // out_memdep_4_kmeans_avm_burstcount(GPOUT,161)
    assign out_memdep_4_kmeans_avm_burstcount = bb_kmeans_B7_out_memdep_4_kmeans_avm_burstcount;

    // out_memdep_4_kmeans_avm_byteenable(GPOUT,162)
    assign out_memdep_4_kmeans_avm_byteenable = bb_kmeans_B7_out_memdep_4_kmeans_avm_byteenable;

    // out_memdep_4_kmeans_avm_enable(GPOUT,163)
    assign out_memdep_4_kmeans_avm_enable = bb_kmeans_B7_out_memdep_4_kmeans_avm_enable;

    // out_memdep_4_kmeans_avm_read(GPOUT,164)
    assign out_memdep_4_kmeans_avm_read = bb_kmeans_B7_out_memdep_4_kmeans_avm_read;

    // out_memdep_4_kmeans_avm_write(GPOUT,165)
    assign out_memdep_4_kmeans_avm_write = bb_kmeans_B7_out_memdep_4_kmeans_avm_write;

    // out_memdep_4_kmeans_avm_writedata(GPOUT,166)
    assign out_memdep_4_kmeans_avm_writedata = bb_kmeans_B7_out_memdep_4_kmeans_avm_writedata;

    // out_memdep_5_kmeans_avm_address(GPOUT,167)
    assign out_memdep_5_kmeans_avm_address = bb_kmeans_B13_out_memdep_5_kmeans_avm_address;

    // out_memdep_5_kmeans_avm_burstcount(GPOUT,168)
    assign out_memdep_5_kmeans_avm_burstcount = bb_kmeans_B13_out_memdep_5_kmeans_avm_burstcount;

    // out_memdep_5_kmeans_avm_byteenable(GPOUT,169)
    assign out_memdep_5_kmeans_avm_byteenable = bb_kmeans_B13_out_memdep_5_kmeans_avm_byteenable;

    // out_memdep_5_kmeans_avm_enable(GPOUT,170)
    assign out_memdep_5_kmeans_avm_enable = bb_kmeans_B13_out_memdep_5_kmeans_avm_enable;

    // out_memdep_5_kmeans_avm_read(GPOUT,171)
    assign out_memdep_5_kmeans_avm_read = bb_kmeans_B13_out_memdep_5_kmeans_avm_read;

    // out_memdep_5_kmeans_avm_write(GPOUT,172)
    assign out_memdep_5_kmeans_avm_write = bb_kmeans_B13_out_memdep_5_kmeans_avm_write;

    // out_memdep_5_kmeans_avm_writedata(GPOUT,173)
    assign out_memdep_5_kmeans_avm_writedata = bb_kmeans_B13_out_memdep_5_kmeans_avm_writedata;

    // out_memdep_kmeans_avm_address(GPOUT,174)
    assign out_memdep_kmeans_avm_address = bb_kmeans_B3_out_memdep_kmeans_avm_address;

    // out_memdep_kmeans_avm_burstcount(GPOUT,175)
    assign out_memdep_kmeans_avm_burstcount = bb_kmeans_B3_out_memdep_kmeans_avm_burstcount;

    // out_memdep_kmeans_avm_byteenable(GPOUT,176)
    assign out_memdep_kmeans_avm_byteenable = bb_kmeans_B3_out_memdep_kmeans_avm_byteenable;

    // out_memdep_kmeans_avm_enable(GPOUT,177)
    assign out_memdep_kmeans_avm_enable = bb_kmeans_B3_out_memdep_kmeans_avm_enable;

    // out_memdep_kmeans_avm_read(GPOUT,178)
    assign out_memdep_kmeans_avm_read = bb_kmeans_B3_out_memdep_kmeans_avm_read;

    // out_memdep_kmeans_avm_write(GPOUT,179)
    assign out_memdep_kmeans_avm_write = bb_kmeans_B3_out_memdep_kmeans_avm_write;

    // out_memdep_kmeans_avm_writedata(GPOUT,180)
    assign out_memdep_kmeans_avm_writedata = bb_kmeans_B3_out_memdep_kmeans_avm_writedata;

    // bb_kmeans_B0_runOnce(BLACKBOX,2)
    kmeans_bb_B0_runOnce thebb_kmeans_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kmeans_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,181)
    assign out_stall_out = bb_kmeans_B0_runOnce_out_stall_out_0;

    // out_unnamed_kmeans20_kmeans_avm_address(GPOUT,182)
    assign out_unnamed_kmeans20_kmeans_avm_address = bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_address;

    // out_unnamed_kmeans20_kmeans_avm_burstcount(GPOUT,183)
    assign out_unnamed_kmeans20_kmeans_avm_burstcount = bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_burstcount;

    // out_unnamed_kmeans20_kmeans_avm_byteenable(GPOUT,184)
    assign out_unnamed_kmeans20_kmeans_avm_byteenable = bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_byteenable;

    // out_unnamed_kmeans20_kmeans_avm_enable(GPOUT,185)
    assign out_unnamed_kmeans20_kmeans_avm_enable = bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_enable;

    // out_unnamed_kmeans20_kmeans_avm_read(GPOUT,186)
    assign out_unnamed_kmeans20_kmeans_avm_read = bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_read;

    // out_unnamed_kmeans20_kmeans_avm_write(GPOUT,187)
    assign out_unnamed_kmeans20_kmeans_avm_write = bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_write;

    // out_unnamed_kmeans20_kmeans_avm_writedata(GPOUT,188)
    assign out_unnamed_kmeans20_kmeans_avm_writedata = bb_kmeans_B9_out_unnamed_kmeans20_kmeans_avm_writedata;

    // out_valid_out(GPOUT,189)
    assign out_valid_out = GND_q;

endmodule
