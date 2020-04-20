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

// SystemVerilog created from poly6_function
// SystemVerilog created on Sun Apr 19 21:42:49 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly6_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [31:0] in_iord_bl_call_poly6_i_fifodata,
    input wire [0:0] in_iord_bl_call_poly6_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_poly6_i_fifoready,
    input wire [15:0] in_memdep_1_poly6_avm_readdata,
    input wire [0:0] in_memdep_1_poly6_avm_readdatavalid,
    input wire [0:0] in_memdep_1_poly6_avm_waitrequest,
    input wire [0:0] in_memdep_1_poly6_avm_writeack,
    input wire [15:0] in_memdep_2_poly6_avm_readdata,
    input wire [0:0] in_memdep_2_poly6_avm_readdatavalid,
    input wire [0:0] in_memdep_2_poly6_avm_waitrequest,
    input wire [0:0] in_memdep_2_poly6_avm_writeack,
    input wire [15:0] in_memdep_3_poly6_avm_readdata,
    input wire [0:0] in_memdep_3_poly6_avm_readdatavalid,
    input wire [0:0] in_memdep_3_poly6_avm_waitrequest,
    input wire [0:0] in_memdep_3_poly6_avm_writeack,
    input wire [15:0] in_memdep_4_poly6_avm_readdata,
    input wire [0:0] in_memdep_4_poly6_avm_readdatavalid,
    input wire [0:0] in_memdep_4_poly6_avm_waitrequest,
    input wire [0:0] in_memdep_4_poly6_avm_writeack,
    input wire [15:0] in_memdep_poly6_avm_readdata,
    input wire [0:0] in_memdep_poly6_avm_readdatavalid,
    input wire [0:0] in_memdep_poly6_avm_waitrequest,
    input wire [0:0] in_memdep_poly6_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [15:0] in_unnamed_poly65_poly6_avm_readdata,
    input wire [0:0] in_unnamed_poly65_poly6_avm_readdatavalid,
    input wire [0:0] in_unnamed_poly65_poly6_avm_waitrequest,
    input wire [0:0] in_unnamed_poly65_poly6_avm_writeack,
    input wire [15:0] in_unnamed_poly67_poly6_avm_readdata,
    input wire [0:0] in_unnamed_poly67_poly6_avm_readdatavalid,
    input wire [0:0] in_unnamed_poly67_poly6_avm_waitrequest,
    input wire [0:0] in_unnamed_poly67_poly6_avm_writeack,
    input wire [15:0] in_unnamed_poly68_poly6_avm_readdata,
    input wire [0:0] in_unnamed_poly68_poly6_avm_readdatavalid,
    input wire [0:0] in_unnamed_poly68_poly6_avm_waitrequest,
    input wire [0:0] in_unnamed_poly68_poly6_avm_writeack,
    input wire [15:0] in_unnamed_poly69_poly6_avm_readdata,
    input wire [0:0] in_unnamed_poly69_poly6_avm_readdatavalid,
    input wire [0:0] in_unnamed_poly69_poly6_avm_waitrequest,
    input wire [0:0] in_unnamed_poly69_poly6_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_poly6_o_fifoready,
    output wire [31:0] out_iowr_bl_return_poly6_o_fifodata,
    output wire [0:0] out_iowr_bl_return_poly6_o_fifovalid,
    output wire [31:0] out_memdep_1_poly6_avm_address,
    output wire [0:0] out_memdep_1_poly6_avm_burstcount,
    output wire [1:0] out_memdep_1_poly6_avm_byteenable,
    output wire [0:0] out_memdep_1_poly6_avm_enable,
    output wire [0:0] out_memdep_1_poly6_avm_read,
    output wire [0:0] out_memdep_1_poly6_avm_write,
    output wire [15:0] out_memdep_1_poly6_avm_writedata,
    output wire [31:0] out_memdep_2_poly6_avm_address,
    output wire [0:0] out_memdep_2_poly6_avm_burstcount,
    output wire [1:0] out_memdep_2_poly6_avm_byteenable,
    output wire [0:0] out_memdep_2_poly6_avm_enable,
    output wire [0:0] out_memdep_2_poly6_avm_read,
    output wire [0:0] out_memdep_2_poly6_avm_write,
    output wire [15:0] out_memdep_2_poly6_avm_writedata,
    output wire [31:0] out_memdep_3_poly6_avm_address,
    output wire [0:0] out_memdep_3_poly6_avm_burstcount,
    output wire [1:0] out_memdep_3_poly6_avm_byteenable,
    output wire [0:0] out_memdep_3_poly6_avm_enable,
    output wire [0:0] out_memdep_3_poly6_avm_read,
    output wire [0:0] out_memdep_3_poly6_avm_write,
    output wire [15:0] out_memdep_3_poly6_avm_writedata,
    output wire [31:0] out_memdep_4_poly6_avm_address,
    output wire [0:0] out_memdep_4_poly6_avm_burstcount,
    output wire [1:0] out_memdep_4_poly6_avm_byteenable,
    output wire [0:0] out_memdep_4_poly6_avm_enable,
    output wire [0:0] out_memdep_4_poly6_avm_read,
    output wire [0:0] out_memdep_4_poly6_avm_write,
    output wire [15:0] out_memdep_4_poly6_avm_writedata,
    output wire [31:0] out_memdep_poly6_avm_address,
    output wire [0:0] out_memdep_poly6_avm_burstcount,
    output wire [1:0] out_memdep_poly6_avm_byteenable,
    output wire [0:0] out_memdep_poly6_avm_enable,
    output wire [0:0] out_memdep_poly6_avm_read,
    output wire [0:0] out_memdep_poly6_avm_write,
    output wire [15:0] out_memdep_poly6_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_poly65_poly6_avm_address,
    output wire [0:0] out_unnamed_poly65_poly6_avm_burstcount,
    output wire [1:0] out_unnamed_poly65_poly6_avm_byteenable,
    output wire [0:0] out_unnamed_poly65_poly6_avm_enable,
    output wire [0:0] out_unnamed_poly65_poly6_avm_read,
    output wire [0:0] out_unnamed_poly65_poly6_avm_write,
    output wire [15:0] out_unnamed_poly65_poly6_avm_writedata,
    output wire [31:0] out_unnamed_poly67_poly6_avm_address,
    output wire [0:0] out_unnamed_poly67_poly6_avm_burstcount,
    output wire [1:0] out_unnamed_poly67_poly6_avm_byteenable,
    output wire [0:0] out_unnamed_poly67_poly6_avm_enable,
    output wire [0:0] out_unnamed_poly67_poly6_avm_read,
    output wire [0:0] out_unnamed_poly67_poly6_avm_write,
    output wire [15:0] out_unnamed_poly67_poly6_avm_writedata,
    output wire [31:0] out_unnamed_poly68_poly6_avm_address,
    output wire [0:0] out_unnamed_poly68_poly6_avm_burstcount,
    output wire [1:0] out_unnamed_poly68_poly6_avm_byteenable,
    output wire [0:0] out_unnamed_poly68_poly6_avm_enable,
    output wire [0:0] out_unnamed_poly68_poly6_avm_read,
    output wire [0:0] out_unnamed_poly68_poly6_avm_write,
    output wire [15:0] out_unnamed_poly68_poly6_avm_writedata,
    output wire [31:0] out_unnamed_poly69_poly6_avm_address,
    output wire [0:0] out_unnamed_poly69_poly6_avm_burstcount,
    output wire [1:0] out_unnamed_poly69_poly6_avm_byteenable,
    output wire [0:0] out_unnamed_poly69_poly6_avm_enable,
    output wire [0:0] out_unnamed_poly69_poly6_avm_read,
    output wire [0:0] out_unnamed_poly69_poly6_avm_write,
    output wire [15:0] out_unnamed_poly69_poly6_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_poly6_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_poly6_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_poly6_B1_start_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_poly6_B1_start_out_iord_bl_call_poly6_o_fifoready;
    wire [0:0] bb_poly6_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_poly6_B1_start_out_stall_out_0;
    wire [0:0] bb_poly6_B1_start_out_valid_out_0;
    wire [0:0] bb_poly6_B2_out_stall_out_0;
    wire [0:0] bb_poly6_B2_out_valid_out_0;
    wire [0:0] bb_poly6_B3_out_exiting_stall_out;
    wire [0:0] bb_poly6_B3_out_exiting_valid_out;
    wire [31:0] bb_poly6_B3_out_memdep_1_poly6_avm_address;
    wire [0:0] bb_poly6_B3_out_memdep_1_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B3_out_memdep_1_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B3_out_memdep_1_poly6_avm_enable;
    wire [0:0] bb_poly6_B3_out_memdep_1_poly6_avm_read;
    wire [0:0] bb_poly6_B3_out_memdep_1_poly6_avm_write;
    wire [15:0] bb_poly6_B3_out_memdep_1_poly6_avm_writedata;
    wire [31:0] bb_poly6_B3_out_memdep_2_poly6_avm_address;
    wire [0:0] bb_poly6_B3_out_memdep_2_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B3_out_memdep_2_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B3_out_memdep_2_poly6_avm_enable;
    wire [0:0] bb_poly6_B3_out_memdep_2_poly6_avm_read;
    wire [0:0] bb_poly6_B3_out_memdep_2_poly6_avm_write;
    wire [15:0] bb_poly6_B3_out_memdep_2_poly6_avm_writedata;
    wire [31:0] bb_poly6_B3_out_memdep_3_poly6_avm_address;
    wire [0:0] bb_poly6_B3_out_memdep_3_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B3_out_memdep_3_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B3_out_memdep_3_poly6_avm_enable;
    wire [0:0] bb_poly6_B3_out_memdep_3_poly6_avm_read;
    wire [0:0] bb_poly6_B3_out_memdep_3_poly6_avm_write;
    wire [15:0] bb_poly6_B3_out_memdep_3_poly6_avm_writedata;
    wire [31:0] bb_poly6_B3_out_memdep_poly6_avm_address;
    wire [0:0] bb_poly6_B3_out_memdep_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B3_out_memdep_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B3_out_memdep_poly6_avm_enable;
    wire [0:0] bb_poly6_B3_out_memdep_poly6_avm_read;
    wire [0:0] bb_poly6_B3_out_memdep_poly6_avm_write;
    wire [15:0] bb_poly6_B3_out_memdep_poly6_avm_writedata;
    wire [0:0] bb_poly6_B3_out_pipeline_valid_out;
    wire [0:0] bb_poly6_B3_out_stall_out_0;
    wire [0:0] bb_poly6_B3_out_stall_out_1;
    wire [0:0] bb_poly6_B3_out_valid_out_0;
    wire [0:0] bb_poly6_B4_out_c0_exe261;
    wire [0:0] bb_poly6_B4_out_exiting_stall_out;
    wire [0:0] bb_poly6_B4_out_exiting_valid_out;
    wire [0:0] bb_poly6_B4_out_pipeline_valid_out;
    wire [0:0] bb_poly6_B4_out_stall_out_0;
    wire [0:0] bb_poly6_B4_out_stall_out_1;
    wire [0:0] bb_poly6_B4_out_valid_out_0;
    wire [0:0] bb_poly6_B5_out_feedback_out_1;
    wire [0:0] bb_poly6_B5_out_feedback_valid_out_1;
    wire [31:0] bb_poly6_B5_out_iowr_bl_return_poly6_o_fifodata;
    wire [0:0] bb_poly6_B5_out_iowr_bl_return_poly6_o_fifovalid;
    wire [0:0] bb_poly6_B5_out_stall_out_0;
    wire [31:0] bb_poly6_B5_out_unnamed_poly65_poly6_avm_address;
    wire [0:0] bb_poly6_B5_out_unnamed_poly65_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B5_out_unnamed_poly65_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B5_out_unnamed_poly65_poly6_avm_enable;
    wire [0:0] bb_poly6_B5_out_unnamed_poly65_poly6_avm_read;
    wire [0:0] bb_poly6_B5_out_unnamed_poly65_poly6_avm_write;
    wire [15:0] bb_poly6_B5_out_unnamed_poly65_poly6_avm_writedata;
    wire [0:0] bb_poly6_B6_out_stall_out_0;
    wire [0:0] bb_poly6_B6_out_valid_out_0;
    wire [0:0] bb_poly6_B7_out_c0_exe3;
    wire [0:0] bb_poly6_B7_out_exiting_stall_out;
    wire [0:0] bb_poly6_B7_out_exiting_valid_out;
    wire [31:0] bb_poly6_B7_out_memdep_4_poly6_avm_address;
    wire [0:0] bb_poly6_B7_out_memdep_4_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B7_out_memdep_4_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B7_out_memdep_4_poly6_avm_enable;
    wire [0:0] bb_poly6_B7_out_memdep_4_poly6_avm_read;
    wire [0:0] bb_poly6_B7_out_memdep_4_poly6_avm_write;
    wire [15:0] bb_poly6_B7_out_memdep_4_poly6_avm_writedata;
    wire [0:0] bb_poly6_B7_out_pipeline_valid_out;
    wire [0:0] bb_poly6_B7_out_stall_out_0;
    wire [0:0] bb_poly6_B7_out_stall_out_1;
    wire [31:0] bb_poly6_B7_out_unnamed_poly67_poly6_avm_address;
    wire [0:0] bb_poly6_B7_out_unnamed_poly67_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B7_out_unnamed_poly67_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B7_out_unnamed_poly67_poly6_avm_enable;
    wire [0:0] bb_poly6_B7_out_unnamed_poly67_poly6_avm_read;
    wire [0:0] bb_poly6_B7_out_unnamed_poly67_poly6_avm_write;
    wire [15:0] bb_poly6_B7_out_unnamed_poly67_poly6_avm_writedata;
    wire [31:0] bb_poly6_B7_out_unnamed_poly68_poly6_avm_address;
    wire [0:0] bb_poly6_B7_out_unnamed_poly68_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B7_out_unnamed_poly68_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B7_out_unnamed_poly68_poly6_avm_enable;
    wire [0:0] bb_poly6_B7_out_unnamed_poly68_poly6_avm_read;
    wire [0:0] bb_poly6_B7_out_unnamed_poly68_poly6_avm_write;
    wire [15:0] bb_poly6_B7_out_unnamed_poly68_poly6_avm_writedata;
    wire [31:0] bb_poly6_B7_out_unnamed_poly69_poly6_avm_address;
    wire [0:0] bb_poly6_B7_out_unnamed_poly69_poly6_avm_burstcount;
    wire [1:0] bb_poly6_B7_out_unnamed_poly69_poly6_avm_byteenable;
    wire [0:0] bb_poly6_B7_out_unnamed_poly69_poly6_avm_enable;
    wire [0:0] bb_poly6_B7_out_unnamed_poly69_poly6_avm_read;
    wire [0:0] bb_poly6_B7_out_unnamed_poly69_poly6_avm_write;
    wire [15:0] bb_poly6_B7_out_unnamed_poly69_poly6_avm_writedata;
    wire [0:0] bb_poly6_B7_out_valid_out_0;
    wire [1:0] c_i2_019_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly62_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly62_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_poly66_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_poly66_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_poly61_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_poly61_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_poly66_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_poly60_out_o_stall;
    wire [0:0] loop_limiter_poly60_out_o_valid;
    wire [0:0] loop_limiter_poly61_out_o_stall;
    wire [0:0] loop_limiter_poly61_out_o_valid;
    wire [0:0] loop_limiter_poly62_out_o_stall;
    wire [0:0] loop_limiter_poly62_out_o_valid;
    wire [0:0] bb_poly6_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_poly6_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_poly6_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_poly6_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_poly6_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_poly6_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_poly6_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_poly6_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_poly6_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_poly6_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_poly6_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_poly6_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_poly6_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_poly6_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_poly6_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_poly6_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_poly6_B7_sr_1_aunroll_x_out_o_data_1_tpl;


    // c_i2_019(CONSTANT,28)
    assign c_i2_019_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo(BLACKBOX,38)
    poly6_i_llvm_fpga_pipeline_keep_going42_1_valid_fifo thei_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_poly6_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going42_poly61_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo(BLACKBOX,36)
    poly6_i_llvm_fpga_pipeline_keep_going26_6_valid_fifo thei_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_poly6_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_poly66_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo(BLACKBOX,34)
    poly6_i_llvm_fpga_pipeline_keep_going19_2_valid_fifo thei_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_poly6_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going19_poly62_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_poly66_valid_fifo(BLACKBOX,40)
    poly6_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_poly66_valid_fifo (
        .in_data_in(c_i2_019_q),
        .in_stall_in(bb_poly6_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_poly66_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_poly66_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_poly66_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B5_sr_0_aunroll_x(BLACKBOX,159)
    poly6_bb_B5_sr_0 thebb_poly6_B5_sr_0_aunroll_x (
        .in_i_stall(bb_poly6_B5_out_stall_out_0),
        .in_i_valid(bb_poly6_B6_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_poly6_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_poly6_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B6(BLACKBOX,8)
    poly6_bb_B6 thebb_poly6_B6 (
        .in_c0_exe31_0(bb_poly6_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_poly6_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_poly6_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_poly6_B6_out_stall_out_0),
        .out_valid_out_0(bb_poly6_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B6_sr_0_aunroll_x(BLACKBOX,160)
    poly6_bb_B6_sr_0 thebb_poly6_B6_sr_0_aunroll_x (
        .in_i_stall(bb_poly6_B6_out_stall_out_0),
        .in_i_valid(bb_poly6_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_poly6_B7_out_c0_exe3),
        .out_o_stall(bb_poly6_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_poly6_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_poly6_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_poly66_sr(BLACKBOX,39)
    poly6_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_poly66_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_poly66_valid_fifo_out_stall_out),
        .in_i_valid(bb_poly6_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_poly66_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_poly66_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B7(BLACKBOX,9)
    poly6_bb_B7 thebb_poly6_B7 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_poly6_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_4_poly6_avm_readdata(in_memdep_4_poly6_avm_readdata),
        .in_memdep_4_poly6_avm_readdatavalid(in_memdep_4_poly6_avm_readdatavalid),
        .in_memdep_4_poly6_avm_waitrequest(in_memdep_4_poly6_avm_waitrequest),
        .in_memdep_4_poly6_avm_writeack(in_memdep_4_poly6_avm_writeack),
        .in_notcmp1748_0(GND_q),
        .in_notcmp1748_1(bb_poly6_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_poly66_sr_out_o_stall),
        .in_stall_in_0(bb_poly6_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_poly67_poly6_avm_readdata(in_unnamed_poly67_poly6_avm_readdata),
        .in_unnamed_poly67_poly6_avm_readdatavalid(in_unnamed_poly67_poly6_avm_readdatavalid),
        .in_unnamed_poly67_poly6_avm_waitrequest(in_unnamed_poly67_poly6_avm_waitrequest),
        .in_unnamed_poly67_poly6_avm_writeack(in_unnamed_poly67_poly6_avm_writeack),
        .in_unnamed_poly68_poly6_avm_readdata(in_unnamed_poly68_poly6_avm_readdata),
        .in_unnamed_poly68_poly6_avm_readdatavalid(in_unnamed_poly68_poly6_avm_readdatavalid),
        .in_unnamed_poly68_poly6_avm_waitrequest(in_unnamed_poly68_poly6_avm_waitrequest),
        .in_unnamed_poly68_poly6_avm_writeack(in_unnamed_poly68_poly6_avm_writeack),
        .in_unnamed_poly69_poly6_avm_readdata(in_unnamed_poly69_poly6_avm_readdata),
        .in_unnamed_poly69_poly6_avm_readdatavalid(in_unnamed_poly69_poly6_avm_readdatavalid),
        .in_unnamed_poly69_poly6_avm_waitrequest(in_unnamed_poly69_poly6_avm_waitrequest),
        .in_unnamed_poly69_poly6_avm_writeack(in_unnamed_poly69_poly6_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_poly66_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_poly6_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3(bb_poly6_B7_out_c0_exe3),
        .out_exiting_stall_out(bb_poly6_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_poly6_B7_out_exiting_valid_out),
        .out_memdep_4_poly6_avm_address(bb_poly6_B7_out_memdep_4_poly6_avm_address),
        .out_memdep_4_poly6_avm_burstcount(bb_poly6_B7_out_memdep_4_poly6_avm_burstcount),
        .out_memdep_4_poly6_avm_byteenable(bb_poly6_B7_out_memdep_4_poly6_avm_byteenable),
        .out_memdep_4_poly6_avm_enable(bb_poly6_B7_out_memdep_4_poly6_avm_enable),
        .out_memdep_4_poly6_avm_read(bb_poly6_B7_out_memdep_4_poly6_avm_read),
        .out_memdep_4_poly6_avm_write(bb_poly6_B7_out_memdep_4_poly6_avm_write),
        .out_memdep_4_poly6_avm_writedata(bb_poly6_B7_out_memdep_4_poly6_avm_writedata),
        .out_pipeline_valid_out(bb_poly6_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_poly6_B7_out_stall_out_0),
        .out_stall_out_1(bb_poly6_B7_out_stall_out_1),
        .out_unnamed_poly67_poly6_avm_address(bb_poly6_B7_out_unnamed_poly67_poly6_avm_address),
        .out_unnamed_poly67_poly6_avm_burstcount(bb_poly6_B7_out_unnamed_poly67_poly6_avm_burstcount),
        .out_unnamed_poly67_poly6_avm_byteenable(bb_poly6_B7_out_unnamed_poly67_poly6_avm_byteenable),
        .out_unnamed_poly67_poly6_avm_enable(bb_poly6_B7_out_unnamed_poly67_poly6_avm_enable),
        .out_unnamed_poly67_poly6_avm_read(bb_poly6_B7_out_unnamed_poly67_poly6_avm_read),
        .out_unnamed_poly67_poly6_avm_write(bb_poly6_B7_out_unnamed_poly67_poly6_avm_write),
        .out_unnamed_poly67_poly6_avm_writedata(bb_poly6_B7_out_unnamed_poly67_poly6_avm_writedata),
        .out_unnamed_poly68_poly6_avm_address(bb_poly6_B7_out_unnamed_poly68_poly6_avm_address),
        .out_unnamed_poly68_poly6_avm_burstcount(bb_poly6_B7_out_unnamed_poly68_poly6_avm_burstcount),
        .out_unnamed_poly68_poly6_avm_byteenable(bb_poly6_B7_out_unnamed_poly68_poly6_avm_byteenable),
        .out_unnamed_poly68_poly6_avm_enable(bb_poly6_B7_out_unnamed_poly68_poly6_avm_enable),
        .out_unnamed_poly68_poly6_avm_read(bb_poly6_B7_out_unnamed_poly68_poly6_avm_read),
        .out_unnamed_poly68_poly6_avm_write(bb_poly6_B7_out_unnamed_poly68_poly6_avm_write),
        .out_unnamed_poly68_poly6_avm_writedata(bb_poly6_B7_out_unnamed_poly68_poly6_avm_writedata),
        .out_unnamed_poly69_poly6_avm_address(bb_poly6_B7_out_unnamed_poly69_poly6_avm_address),
        .out_unnamed_poly69_poly6_avm_burstcount(bb_poly6_B7_out_unnamed_poly69_poly6_avm_burstcount),
        .out_unnamed_poly69_poly6_avm_byteenable(bb_poly6_B7_out_unnamed_poly69_poly6_avm_byteenable),
        .out_unnamed_poly69_poly6_avm_enable(bb_poly6_B7_out_unnamed_poly69_poly6_avm_enable),
        .out_unnamed_poly69_poly6_avm_read(bb_poly6_B7_out_unnamed_poly69_poly6_avm_read),
        .out_unnamed_poly69_poly6_avm_write(bb_poly6_B7_out_unnamed_poly69_poly6_avm_write),
        .out_unnamed_poly69_poly6_avm_writedata(bb_poly6_B7_out_unnamed_poly69_poly6_avm_writedata),
        .out_valid_out_0(bb_poly6_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_poly6_B7_sr_1_aunroll_x(BLACKBOX,161)
    poly6_bb_B7_sr_1 thebb_poly6_B7_sr_1_aunroll_x (
        .in_i_stall(bb_poly6_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_poly62_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_poly6_B4_out_c0_exe261),
        .out_o_stall(bb_poly6_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_poly6_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_poly6_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_poly6_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_poly62(BLACKBOX,87)
    poly6_loop_limiter_2 theloop_limiter_poly62 (
        .in_i_stall(bb_poly6_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_poly6_B7_out_exiting_stall_out),
        .in_i_valid(bb_poly6_B4_out_valid_out_0),
        .in_i_valid_exit(bb_poly6_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_poly62_out_o_stall),
        .out_o_valid(loop_limiter_poly62_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_poly62_sr(BLACKBOX,33)
    poly6_i_llvm_fpga_pipeline_keep_going19_2_sr thei_llvm_fpga_pipeline_keep_going19_poly62_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo_out_stall_out),
        .in_i_valid(bb_poly6_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going19_poly62_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going19_poly62_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B4(BLACKBOX,6)
    poly6_bb_B4 thebb_poly6_B4 (
        .in_forked45_0(GND_q),
        .in_forked45_1(bb_poly6_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going19_poly62_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_poly62_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going19_poly62_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_poly6_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe261(bb_poly6_B4_out_c0_exe261),
        .out_exiting_stall_out(bb_poly6_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_poly6_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_poly6_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_poly6_B4_out_stall_out_0),
        .out_stall_out_1(bb_poly6_B4_out_stall_out_1),
        .out_valid_out_0(bb_poly6_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B4_sr_1_aunroll_x(BLACKBOX,158)
    poly6_bb_B4_sr_1 thebb_poly6_B4_sr_1_aunroll_x (
        .in_i_stall(bb_poly6_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_poly61_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_poly6_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_poly6_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_poly6_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_poly61(BLACKBOX,86)
    poly6_loop_limiter_1 theloop_limiter_poly61 (
        .in_i_stall(bb_poly6_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_poly6_B4_out_exiting_stall_out),
        .in_i_valid(bb_poly6_B2_out_valid_out_0),
        .in_i_valid_exit(bb_poly6_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_poly61_out_o_stall),
        .out_o_valid(loop_limiter_poly61_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B2(BLACKBOX,4)
    poly6_bb_B2 thebb_poly6_B2 (
        .in_stall_in_0(loop_limiter_poly61_out_o_stall),
        .in_valid_in_0(bb_poly6_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_poly6_B2_out_stall_out_0),
        .out_valid_out_0(bb_poly6_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B2_sr_0_aunroll_x(BLACKBOX,156)
    poly6_bb_B2_sr_0 thebb_poly6_B2_sr_0_aunroll_x (
        .in_i_stall(bb_poly6_B2_out_stall_out_0),
        .in_i_valid(bb_poly6_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_poly6_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_poly6_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_poly66_sr(BLACKBOX,35)
    poly6_i_llvm_fpga_pipeline_keep_going26_6_sr thei_llvm_fpga_pipeline_keep_going26_poly66_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo_out_stall_out),
        .in_i_valid(bb_poly6_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_poly66_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_poly66_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_poly6_B3(BLACKBOX,5)
    poly6_bb_B3 thebb_poly6_B3 (
        .in_flush(in_start),
        .in_forked23_0(GND_q),
        .in_forked23_1(bb_poly6_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_1_poly6_avm_readdata(in_memdep_1_poly6_avm_readdata),
        .in_memdep_1_poly6_avm_readdatavalid(in_memdep_1_poly6_avm_readdatavalid),
        .in_memdep_1_poly6_avm_waitrequest(in_memdep_1_poly6_avm_waitrequest),
        .in_memdep_1_poly6_avm_writeack(in_memdep_1_poly6_avm_writeack),
        .in_memdep_2_poly6_avm_readdata(in_memdep_2_poly6_avm_readdata),
        .in_memdep_2_poly6_avm_readdatavalid(in_memdep_2_poly6_avm_readdatavalid),
        .in_memdep_2_poly6_avm_waitrequest(in_memdep_2_poly6_avm_waitrequest),
        .in_memdep_2_poly6_avm_writeack(in_memdep_2_poly6_avm_writeack),
        .in_memdep_3_poly6_avm_readdata(in_memdep_3_poly6_avm_readdata),
        .in_memdep_3_poly6_avm_readdatavalid(in_memdep_3_poly6_avm_readdatavalid),
        .in_memdep_3_poly6_avm_waitrequest(in_memdep_3_poly6_avm_waitrequest),
        .in_memdep_3_poly6_avm_writeack(in_memdep_3_poly6_avm_writeack),
        .in_memdep_poly6_avm_readdata(in_memdep_poly6_avm_readdata),
        .in_memdep_poly6_avm_readdatavalid(in_memdep_poly6_avm_readdatavalid),
        .in_memdep_poly6_avm_waitrequest(in_memdep_poly6_avm_waitrequest),
        .in_memdep_poly6_avm_writeack(in_memdep_poly6_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_poly66_sr_out_o_stall),
        .in_stall_in_0(bb_poly6_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_poly66_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_poly6_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_poly6_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_poly6_B3_out_exiting_valid_out),
        .out_memdep_1_poly6_avm_address(bb_poly6_B3_out_memdep_1_poly6_avm_address),
        .out_memdep_1_poly6_avm_burstcount(bb_poly6_B3_out_memdep_1_poly6_avm_burstcount),
        .out_memdep_1_poly6_avm_byteenable(bb_poly6_B3_out_memdep_1_poly6_avm_byteenable),
        .out_memdep_1_poly6_avm_enable(bb_poly6_B3_out_memdep_1_poly6_avm_enable),
        .out_memdep_1_poly6_avm_read(bb_poly6_B3_out_memdep_1_poly6_avm_read),
        .out_memdep_1_poly6_avm_write(bb_poly6_B3_out_memdep_1_poly6_avm_write),
        .out_memdep_1_poly6_avm_writedata(bb_poly6_B3_out_memdep_1_poly6_avm_writedata),
        .out_memdep_2_poly6_avm_address(bb_poly6_B3_out_memdep_2_poly6_avm_address),
        .out_memdep_2_poly6_avm_burstcount(bb_poly6_B3_out_memdep_2_poly6_avm_burstcount),
        .out_memdep_2_poly6_avm_byteenable(bb_poly6_B3_out_memdep_2_poly6_avm_byteenable),
        .out_memdep_2_poly6_avm_enable(bb_poly6_B3_out_memdep_2_poly6_avm_enable),
        .out_memdep_2_poly6_avm_read(bb_poly6_B3_out_memdep_2_poly6_avm_read),
        .out_memdep_2_poly6_avm_write(bb_poly6_B3_out_memdep_2_poly6_avm_write),
        .out_memdep_2_poly6_avm_writedata(bb_poly6_B3_out_memdep_2_poly6_avm_writedata),
        .out_memdep_3_poly6_avm_address(bb_poly6_B3_out_memdep_3_poly6_avm_address),
        .out_memdep_3_poly6_avm_burstcount(bb_poly6_B3_out_memdep_3_poly6_avm_burstcount),
        .out_memdep_3_poly6_avm_byteenable(bb_poly6_B3_out_memdep_3_poly6_avm_byteenable),
        .out_memdep_3_poly6_avm_enable(bb_poly6_B3_out_memdep_3_poly6_avm_enable),
        .out_memdep_3_poly6_avm_read(bb_poly6_B3_out_memdep_3_poly6_avm_read),
        .out_memdep_3_poly6_avm_write(bb_poly6_B3_out_memdep_3_poly6_avm_write),
        .out_memdep_3_poly6_avm_writedata(bb_poly6_B3_out_memdep_3_poly6_avm_writedata),
        .out_memdep_poly6_avm_address(bb_poly6_B3_out_memdep_poly6_avm_address),
        .out_memdep_poly6_avm_burstcount(bb_poly6_B3_out_memdep_poly6_avm_burstcount),
        .out_memdep_poly6_avm_byteenable(bb_poly6_B3_out_memdep_poly6_avm_byteenable),
        .out_memdep_poly6_avm_enable(bb_poly6_B3_out_memdep_poly6_avm_enable),
        .out_memdep_poly6_avm_read(bb_poly6_B3_out_memdep_poly6_avm_read),
        .out_memdep_poly6_avm_write(bb_poly6_B3_out_memdep_poly6_avm_write),
        .out_memdep_poly6_avm_writedata(bb_poly6_B3_out_memdep_poly6_avm_writedata),
        .out_pipeline_valid_out(bb_poly6_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_poly6_B3_out_stall_out_0),
        .out_stall_out_1(bb_poly6_B3_out_stall_out_1),
        .out_valid_out_0(bb_poly6_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B3_sr_1_aunroll_x(BLACKBOX,157)
    poly6_bb_B3_sr_1 thebb_poly6_B3_sr_1_aunroll_x (
        .in_i_stall(bb_poly6_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_poly60_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_poly6_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_poly6_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_poly6_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_poly60(BLACKBOX,85)
    poly6_loop_limiter_0 theloop_limiter_poly60 (
        .in_i_stall(bb_poly6_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_poly6_B3_out_exiting_stall_out),
        .in_i_valid(bb_poly6_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_poly6_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_poly60_out_o_stall),
        .out_o_valid(loop_limiter_poly60_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going42_poly61_sr(BLACKBOX,37)
    poly6_i_llvm_fpga_pipeline_keep_going42_1_sr thei_llvm_fpga_pipeline_keep_going42_poly61_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo_out_stall_out),
        .in_i_valid(bb_poly6_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going42_poly61_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going42_poly61_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B5(BLACKBOX,7)
    poly6_bb_B5 thebb_poly6_B5 (
        .in_feedback_stall_in_1(bb_poly6_B1_start_out_feedback_stall_out_1),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_0_0(bb_poly6_B1_start_out_intel_reserved_ffwd_0_0),
        .in_iowr_bl_return_poly6_i_fifoready(in_iowr_bl_return_poly6_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_unnamed_poly65_poly6_avm_readdata(in_unnamed_poly65_poly6_avm_readdata),
        .in_unnamed_poly65_poly6_avm_readdatavalid(in_unnamed_poly65_poly6_avm_readdatavalid),
        .in_unnamed_poly65_poly6_avm_waitrequest(in_unnamed_poly65_poly6_avm_waitrequest),
        .in_unnamed_poly65_poly6_avm_writeack(in_unnamed_poly65_poly6_avm_writeack),
        .in_valid_in_0(bb_poly6_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_poly6_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_poly6_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_poly6_o_fifodata(bb_poly6_B5_out_iowr_bl_return_poly6_o_fifodata),
        .out_iowr_bl_return_poly6_o_fifovalid(bb_poly6_B5_out_iowr_bl_return_poly6_o_fifovalid),
        .out_stall_out_0(bb_poly6_B5_out_stall_out_0),
        .out_unnamed_poly65_poly6_avm_address(bb_poly6_B5_out_unnamed_poly65_poly6_avm_address),
        .out_unnamed_poly65_poly6_avm_burstcount(bb_poly6_B5_out_unnamed_poly65_poly6_avm_burstcount),
        .out_unnamed_poly65_poly6_avm_byteenable(bb_poly6_B5_out_unnamed_poly65_poly6_avm_byteenable),
        .out_unnamed_poly65_poly6_avm_enable(bb_poly6_B5_out_unnamed_poly65_poly6_avm_enable),
        .out_unnamed_poly65_poly6_avm_read(bb_poly6_B5_out_unnamed_poly65_poly6_avm_read),
        .out_unnamed_poly65_poly6_avm_write(bb_poly6_B5_out_unnamed_poly65_poly6_avm_write),
        .out_unnamed_poly65_poly6_avm_writedata(bb_poly6_B5_out_unnamed_poly65_poly6_avm_writedata),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly6_B1_start(BLACKBOX,3)
    poly6_bb_B1_start thebb_poly6_B1_start (
        .in_feedback_in_1(bb_poly6_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_poly6_B5_out_feedback_valid_out_1),
        .in_iord_bl_call_poly6_i_fifodata(in_iord_bl_call_poly6_i_fifodata),
        .in_iord_bl_call_poly6_i_fifovalid(in_iord_bl_call_poly6_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going42_poly61_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_poly60_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going42_poly61_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_poly6_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_poly6_B1_start_out_intel_reserved_ffwd_0_0),
        .out_iord_bl_call_poly6_o_fifoready(bb_poly6_B1_start_out_iord_bl_call_poly6_o_fifoready),
        .out_pipeline_valid_out(bb_poly6_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_poly6_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_poly6_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_poly6_o_fifoready(GPOUT,88)
    assign out_iord_bl_call_poly6_o_fifoready = bb_poly6_B1_start_out_iord_bl_call_poly6_o_fifoready;

    // out_iowr_bl_return_poly6_o_fifodata(GPOUT,89)
    assign out_iowr_bl_return_poly6_o_fifodata = bb_poly6_B5_out_iowr_bl_return_poly6_o_fifodata;

    // out_iowr_bl_return_poly6_o_fifovalid(GPOUT,90)
    assign out_iowr_bl_return_poly6_o_fifovalid = bb_poly6_B5_out_iowr_bl_return_poly6_o_fifovalid;

    // out_memdep_1_poly6_avm_address(GPOUT,91)
    assign out_memdep_1_poly6_avm_address = bb_poly6_B3_out_memdep_1_poly6_avm_address;

    // out_memdep_1_poly6_avm_burstcount(GPOUT,92)
    assign out_memdep_1_poly6_avm_burstcount = bb_poly6_B3_out_memdep_1_poly6_avm_burstcount;

    // out_memdep_1_poly6_avm_byteenable(GPOUT,93)
    assign out_memdep_1_poly6_avm_byteenable = bb_poly6_B3_out_memdep_1_poly6_avm_byteenable;

    // out_memdep_1_poly6_avm_enable(GPOUT,94)
    assign out_memdep_1_poly6_avm_enable = bb_poly6_B3_out_memdep_1_poly6_avm_enable;

    // out_memdep_1_poly6_avm_read(GPOUT,95)
    assign out_memdep_1_poly6_avm_read = bb_poly6_B3_out_memdep_1_poly6_avm_read;

    // out_memdep_1_poly6_avm_write(GPOUT,96)
    assign out_memdep_1_poly6_avm_write = bb_poly6_B3_out_memdep_1_poly6_avm_write;

    // out_memdep_1_poly6_avm_writedata(GPOUT,97)
    assign out_memdep_1_poly6_avm_writedata = bb_poly6_B3_out_memdep_1_poly6_avm_writedata;

    // out_memdep_2_poly6_avm_address(GPOUT,98)
    assign out_memdep_2_poly6_avm_address = bb_poly6_B3_out_memdep_2_poly6_avm_address;

    // out_memdep_2_poly6_avm_burstcount(GPOUT,99)
    assign out_memdep_2_poly6_avm_burstcount = bb_poly6_B3_out_memdep_2_poly6_avm_burstcount;

    // out_memdep_2_poly6_avm_byteenable(GPOUT,100)
    assign out_memdep_2_poly6_avm_byteenable = bb_poly6_B3_out_memdep_2_poly6_avm_byteenable;

    // out_memdep_2_poly6_avm_enable(GPOUT,101)
    assign out_memdep_2_poly6_avm_enable = bb_poly6_B3_out_memdep_2_poly6_avm_enable;

    // out_memdep_2_poly6_avm_read(GPOUT,102)
    assign out_memdep_2_poly6_avm_read = bb_poly6_B3_out_memdep_2_poly6_avm_read;

    // out_memdep_2_poly6_avm_write(GPOUT,103)
    assign out_memdep_2_poly6_avm_write = bb_poly6_B3_out_memdep_2_poly6_avm_write;

    // out_memdep_2_poly6_avm_writedata(GPOUT,104)
    assign out_memdep_2_poly6_avm_writedata = bb_poly6_B3_out_memdep_2_poly6_avm_writedata;

    // out_memdep_3_poly6_avm_address(GPOUT,105)
    assign out_memdep_3_poly6_avm_address = bb_poly6_B3_out_memdep_3_poly6_avm_address;

    // out_memdep_3_poly6_avm_burstcount(GPOUT,106)
    assign out_memdep_3_poly6_avm_burstcount = bb_poly6_B3_out_memdep_3_poly6_avm_burstcount;

    // out_memdep_3_poly6_avm_byteenable(GPOUT,107)
    assign out_memdep_3_poly6_avm_byteenable = bb_poly6_B3_out_memdep_3_poly6_avm_byteenable;

    // out_memdep_3_poly6_avm_enable(GPOUT,108)
    assign out_memdep_3_poly6_avm_enable = bb_poly6_B3_out_memdep_3_poly6_avm_enable;

    // out_memdep_3_poly6_avm_read(GPOUT,109)
    assign out_memdep_3_poly6_avm_read = bb_poly6_B3_out_memdep_3_poly6_avm_read;

    // out_memdep_3_poly6_avm_write(GPOUT,110)
    assign out_memdep_3_poly6_avm_write = bb_poly6_B3_out_memdep_3_poly6_avm_write;

    // out_memdep_3_poly6_avm_writedata(GPOUT,111)
    assign out_memdep_3_poly6_avm_writedata = bb_poly6_B3_out_memdep_3_poly6_avm_writedata;

    // out_memdep_4_poly6_avm_address(GPOUT,112)
    assign out_memdep_4_poly6_avm_address = bb_poly6_B7_out_memdep_4_poly6_avm_address;

    // out_memdep_4_poly6_avm_burstcount(GPOUT,113)
    assign out_memdep_4_poly6_avm_burstcount = bb_poly6_B7_out_memdep_4_poly6_avm_burstcount;

    // out_memdep_4_poly6_avm_byteenable(GPOUT,114)
    assign out_memdep_4_poly6_avm_byteenable = bb_poly6_B7_out_memdep_4_poly6_avm_byteenable;

    // out_memdep_4_poly6_avm_enable(GPOUT,115)
    assign out_memdep_4_poly6_avm_enable = bb_poly6_B7_out_memdep_4_poly6_avm_enable;

    // out_memdep_4_poly6_avm_read(GPOUT,116)
    assign out_memdep_4_poly6_avm_read = bb_poly6_B7_out_memdep_4_poly6_avm_read;

    // out_memdep_4_poly6_avm_write(GPOUT,117)
    assign out_memdep_4_poly6_avm_write = bb_poly6_B7_out_memdep_4_poly6_avm_write;

    // out_memdep_4_poly6_avm_writedata(GPOUT,118)
    assign out_memdep_4_poly6_avm_writedata = bb_poly6_B7_out_memdep_4_poly6_avm_writedata;

    // out_memdep_poly6_avm_address(GPOUT,119)
    assign out_memdep_poly6_avm_address = bb_poly6_B3_out_memdep_poly6_avm_address;

    // out_memdep_poly6_avm_burstcount(GPOUT,120)
    assign out_memdep_poly6_avm_burstcount = bb_poly6_B3_out_memdep_poly6_avm_burstcount;

    // out_memdep_poly6_avm_byteenable(GPOUT,121)
    assign out_memdep_poly6_avm_byteenable = bb_poly6_B3_out_memdep_poly6_avm_byteenable;

    // out_memdep_poly6_avm_enable(GPOUT,122)
    assign out_memdep_poly6_avm_enable = bb_poly6_B3_out_memdep_poly6_avm_enable;

    // out_memdep_poly6_avm_read(GPOUT,123)
    assign out_memdep_poly6_avm_read = bb_poly6_B3_out_memdep_poly6_avm_read;

    // out_memdep_poly6_avm_write(GPOUT,124)
    assign out_memdep_poly6_avm_write = bb_poly6_B3_out_memdep_poly6_avm_write;

    // out_memdep_poly6_avm_writedata(GPOUT,125)
    assign out_memdep_poly6_avm_writedata = bb_poly6_B3_out_memdep_poly6_avm_writedata;

    // bb_poly6_B0_runOnce(BLACKBOX,2)
    poly6_bb_B0_runOnce thebb_poly6_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_poly6_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,126)
    assign out_stall_out = bb_poly6_B0_runOnce_out_stall_out_0;

    // out_unnamed_poly65_poly6_avm_address(GPOUT,127)
    assign out_unnamed_poly65_poly6_avm_address = bb_poly6_B5_out_unnamed_poly65_poly6_avm_address;

    // out_unnamed_poly65_poly6_avm_burstcount(GPOUT,128)
    assign out_unnamed_poly65_poly6_avm_burstcount = bb_poly6_B5_out_unnamed_poly65_poly6_avm_burstcount;

    // out_unnamed_poly65_poly6_avm_byteenable(GPOUT,129)
    assign out_unnamed_poly65_poly6_avm_byteenable = bb_poly6_B5_out_unnamed_poly65_poly6_avm_byteenable;

    // out_unnamed_poly65_poly6_avm_enable(GPOUT,130)
    assign out_unnamed_poly65_poly6_avm_enable = bb_poly6_B5_out_unnamed_poly65_poly6_avm_enable;

    // out_unnamed_poly65_poly6_avm_read(GPOUT,131)
    assign out_unnamed_poly65_poly6_avm_read = bb_poly6_B5_out_unnamed_poly65_poly6_avm_read;

    // out_unnamed_poly65_poly6_avm_write(GPOUT,132)
    assign out_unnamed_poly65_poly6_avm_write = bb_poly6_B5_out_unnamed_poly65_poly6_avm_write;

    // out_unnamed_poly65_poly6_avm_writedata(GPOUT,133)
    assign out_unnamed_poly65_poly6_avm_writedata = bb_poly6_B5_out_unnamed_poly65_poly6_avm_writedata;

    // out_unnamed_poly67_poly6_avm_address(GPOUT,134)
    assign out_unnamed_poly67_poly6_avm_address = bb_poly6_B7_out_unnamed_poly67_poly6_avm_address;

    // out_unnamed_poly67_poly6_avm_burstcount(GPOUT,135)
    assign out_unnamed_poly67_poly6_avm_burstcount = bb_poly6_B7_out_unnamed_poly67_poly6_avm_burstcount;

    // out_unnamed_poly67_poly6_avm_byteenable(GPOUT,136)
    assign out_unnamed_poly67_poly6_avm_byteenable = bb_poly6_B7_out_unnamed_poly67_poly6_avm_byteenable;

    // out_unnamed_poly67_poly6_avm_enable(GPOUT,137)
    assign out_unnamed_poly67_poly6_avm_enable = bb_poly6_B7_out_unnamed_poly67_poly6_avm_enable;

    // out_unnamed_poly67_poly6_avm_read(GPOUT,138)
    assign out_unnamed_poly67_poly6_avm_read = bb_poly6_B7_out_unnamed_poly67_poly6_avm_read;

    // out_unnamed_poly67_poly6_avm_write(GPOUT,139)
    assign out_unnamed_poly67_poly6_avm_write = bb_poly6_B7_out_unnamed_poly67_poly6_avm_write;

    // out_unnamed_poly67_poly6_avm_writedata(GPOUT,140)
    assign out_unnamed_poly67_poly6_avm_writedata = bb_poly6_B7_out_unnamed_poly67_poly6_avm_writedata;

    // out_unnamed_poly68_poly6_avm_address(GPOUT,141)
    assign out_unnamed_poly68_poly6_avm_address = bb_poly6_B7_out_unnamed_poly68_poly6_avm_address;

    // out_unnamed_poly68_poly6_avm_burstcount(GPOUT,142)
    assign out_unnamed_poly68_poly6_avm_burstcount = bb_poly6_B7_out_unnamed_poly68_poly6_avm_burstcount;

    // out_unnamed_poly68_poly6_avm_byteenable(GPOUT,143)
    assign out_unnamed_poly68_poly6_avm_byteenable = bb_poly6_B7_out_unnamed_poly68_poly6_avm_byteenable;

    // out_unnamed_poly68_poly6_avm_enable(GPOUT,144)
    assign out_unnamed_poly68_poly6_avm_enable = bb_poly6_B7_out_unnamed_poly68_poly6_avm_enable;

    // out_unnamed_poly68_poly6_avm_read(GPOUT,145)
    assign out_unnamed_poly68_poly6_avm_read = bb_poly6_B7_out_unnamed_poly68_poly6_avm_read;

    // out_unnamed_poly68_poly6_avm_write(GPOUT,146)
    assign out_unnamed_poly68_poly6_avm_write = bb_poly6_B7_out_unnamed_poly68_poly6_avm_write;

    // out_unnamed_poly68_poly6_avm_writedata(GPOUT,147)
    assign out_unnamed_poly68_poly6_avm_writedata = bb_poly6_B7_out_unnamed_poly68_poly6_avm_writedata;

    // out_unnamed_poly69_poly6_avm_address(GPOUT,148)
    assign out_unnamed_poly69_poly6_avm_address = bb_poly6_B7_out_unnamed_poly69_poly6_avm_address;

    // out_unnamed_poly69_poly6_avm_burstcount(GPOUT,149)
    assign out_unnamed_poly69_poly6_avm_burstcount = bb_poly6_B7_out_unnamed_poly69_poly6_avm_burstcount;

    // out_unnamed_poly69_poly6_avm_byteenable(GPOUT,150)
    assign out_unnamed_poly69_poly6_avm_byteenable = bb_poly6_B7_out_unnamed_poly69_poly6_avm_byteenable;

    // out_unnamed_poly69_poly6_avm_enable(GPOUT,151)
    assign out_unnamed_poly69_poly6_avm_enable = bb_poly6_B7_out_unnamed_poly69_poly6_avm_enable;

    // out_unnamed_poly69_poly6_avm_read(GPOUT,152)
    assign out_unnamed_poly69_poly6_avm_read = bb_poly6_B7_out_unnamed_poly69_poly6_avm_read;

    // out_unnamed_poly69_poly6_avm_write(GPOUT,153)
    assign out_unnamed_poly69_poly6_avm_write = bb_poly6_B7_out_unnamed_poly69_poly6_avm_write;

    // out_unnamed_poly69_poly6_avm_writedata(GPOUT,154)
    assign out_unnamed_poly69_poly6_avm_writedata = bb_poly6_B7_out_unnamed_poly69_poly6_avm_writedata;

    // out_valid_out(GPOUT,155)
    assign out_valid_out = GND_q;

endmodule
