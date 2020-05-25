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

// SystemVerilog created from stb_from_utf8_function
// SystemVerilog created on Sun May 24 22:40:48 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stb_from_utf8_function (
    input wire [63:0] in_arg_buffer0,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_ostr,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_stb_from_utf8_i_fifodata,
    input wire [0:0] in_iord_bl_call_stb_from_utf8_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_stb_from_utf8_i_fifoready,
    input wire [63:0] in_lm2002_stb_from_utf8_avm_readdata,
    input wire [0:0] in_lm2002_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm2002_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm2002_stb_from_utf8_avm_writeack,
    input wire [63:0] in_lm2545_stb_from_utf8_avm_readdata,
    input wire [0:0] in_lm2545_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_lm2545_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm2545_stb_from_utf8_avm_writeack,
    input wire [63:0] in_memdep_1_stb_from_utf8_avm_readdata,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_writeack,
    input wire [63:0] in_memdep_6_stb_from_utf8_avm_readdata,
    input wire [0:0] in_memdep_6_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_memdep_6_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_memdep_6_stb_from_utf8_avm_writeack,
    input wire [63:0] in_memdep_stb_from_utf8_avm_readdata,
    input wire [0:0] in_memdep_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_memdep_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_memdep_stb_from_utf8_avm_writeack,
    input wire [63:0] in_ml2664_stb_from_utf8_avm_readdata,
    input wire [0:0] in_ml2664_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_ml2664_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_ml2664_stb_from_utf8_avm_writeack,
    input wire [63:0] in_ml3_stb_from_utf8_avm_readdata,
    input wire [0:0] in_ml3_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_ml3_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_ml3_stb_from_utf8_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_stb_from_utf8_o_fifoready,
    output wire [63:0] out_iowr_bl_return_stb_from_utf8_o_fifodata,
    output wire [0:0] out_iowr_bl_return_stb_from_utf8_o_fifovalid,
    output wire [63:0] out_lm2002_stb_from_utf8_avm_address,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_lm2002_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_enable,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_read,
    output wire [0:0] out_lm2002_stb_from_utf8_avm_write,
    output wire [63:0] out_lm2002_stb_from_utf8_avm_writedata,
    output wire [63:0] out_lm2545_stb_from_utf8_avm_address,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_lm2545_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_enable,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_read,
    output wire [0:0] out_lm2545_stb_from_utf8_avm_write,
    output wire [63:0] out_lm2545_stb_from_utf8_avm_writedata,
    output wire [63:0] out_memdep_1_stb_from_utf8_avm_address,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_memdep_1_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_enable,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_read,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_write,
    output wire [63:0] out_memdep_1_stb_from_utf8_avm_writedata,
    output wire [63:0] out_memdep_6_stb_from_utf8_avm_address,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_memdep_6_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_enable,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_read,
    output wire [0:0] out_memdep_6_stb_from_utf8_avm_write,
    output wire [63:0] out_memdep_6_stb_from_utf8_avm_writedata,
    output wire [63:0] out_memdep_stb_from_utf8_avm_address,
    output wire [0:0] out_memdep_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_memdep_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_memdep_stb_from_utf8_avm_enable,
    output wire [0:0] out_memdep_stb_from_utf8_avm_read,
    output wire [0:0] out_memdep_stb_from_utf8_avm_write,
    output wire [63:0] out_memdep_stb_from_utf8_avm_writedata,
    output wire [63:0] out_ml2664_stb_from_utf8_avm_address,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_ml2664_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_enable,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_read,
    output wire [0:0] out_ml2664_stb_from_utf8_avm_write,
    output wire [63:0] out_ml2664_stb_from_utf8_avm_writedata,
    output wire [63:0] out_ml3_stb_from_utf8_avm_address,
    output wire [0:0] out_ml3_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_ml3_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_ml3_stb_from_utf8_avm_enable,
    output wire [0:0] out_ml3_stb_from_utf8_avm_read,
    output wire [0:0] out_ml3_stb_from_utf8_avm_write,
    output wire [63:0] out_ml3_stb_from_utf8_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_1,
    output wire [0:0] out_o_active_memdep_6,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_address,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount,
    output wire [7:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_read,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_write,
    output wire [63:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_stb_from_utf8_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_stb_from_utf8_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_3_0;
    wire [7:0] bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_6_0;
    wire [0:0] bb_stb_from_utf8_B1_start_out_iord_bl_call_stb_from_utf8_o_fifoready;
    wire [0:0] bb_stb_from_utf8_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_stb_from_utf8_B1_start_out_stall_out_0;
    wire [63:0] bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;
    wire [0:0] bb_stb_from_utf8_B1_start_out_valid_out_0;
    wire [0:0] bb_stb_from_utf8_B2_out_exiting_stall_out;
    wire [0:0] bb_stb_from_utf8_B2_out_exiting_valid_out;
    wire [31:0] bb_stb_from_utf8_B2_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_stb_from_utf8_B2_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_writedata;
    wire [0:0] bb_stb_from_utf8_B2_out_lsu_memdep_6_o_active;
    wire [0:0] bb_stb_from_utf8_B2_out_lsu_memdep_o_active;
    wire [63:0] bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_writedata;
    wire [63:0] bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_writedata;
    wire [0:0] bb_stb_from_utf8_B2_out_pipeline_valid_out;
    wire [0:0] bb_stb_from_utf8_B2_out_stall_out_0;
    wire [0:0] bb_stb_from_utf8_B2_out_stall_out_1;
    wire [0:0] bb_stb_from_utf8_B2_out_valid_out_0;
    wire [0:0] bb_stb_from_utf8_B3_out_feedback_out_1;
    wire [0:0] bb_stb_from_utf8_B3_out_feedback_valid_out_1;
    wire [63:0] bb_stb_from_utf8_B3_out_iowr_bl_return_stb_from_utf8_o_fifodata;
    wire [0:0] bb_stb_from_utf8_B3_out_iowr_bl_return_stb_from_utf8_o_fifovalid;
    wire [0:0] bb_stb_from_utf8_B3_out_lsu_memdep_1_o_active;
    wire [63:0] bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_address;
    wire [0:0] bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_burstcount;
    wire [7:0] bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_byteenable;
    wire [0:0] bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_enable;
    wire [0:0] bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_read;
    wire [0:0] bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_write;
    wire [63:0] bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_writedata;
    wire [0:0] bb_stb_from_utf8_B3_out_stall_out_0;
    wire [1:0] c_i2_010_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr_out_o_valid;
    wire [0:0] loop_limiter_stb_from_utf80_out_o_stall;
    wire [0:0] loop_limiter_stb_from_utf80_out_o_valid;
    wire [0:0] bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stb_from_utf8_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stb_from_utf8_B3_sr_0_aunroll_x_out_o_valid;


    // c_i2_010(CONSTANT,14)
    assign c_i2_010_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo(BLACKBOX,17)
    stb_from_utf8_i_llvm_fpga_pipeline_keep_going52_1_valid_fifo thei_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo (
        .in_data_in(c_i2_010_q),
        .in_stall_in(bb_stb_from_utf8_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stb_from_utf8_B3_sr_0_aunroll_x(BLACKBOX,127)
    stb_from_utf8_bb_B3_sr_0 thebb_stb_from_utf8_B3_sr_0_aunroll_x (
        .in_i_stall(bb_stb_from_utf8_B3_out_stall_out_0),
        .in_i_valid(bb_stb_from_utf8_B2_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_stb_from_utf8_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stb_from_utf8_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr(BLACKBOX,18)
    stb_from_utf8_i_llvm_fpga_pipeline_keep_going_4_sr thei_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_stb_from_utf8_B2_out_stall_out_0),
        .in_i_valid(bb_stb_from_utf8_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_stb_from_utf8_B2(BLACKBOX,4)
    stb_from_utf8_bb_B2 thebb_stb_from_utf8_B2 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_6_0),
        .in_lm2002_stb_from_utf8_avm_readdata(in_lm2002_stb_from_utf8_avm_readdata),
        .in_lm2002_stb_from_utf8_avm_readdatavalid(in_lm2002_stb_from_utf8_avm_readdatavalid),
        .in_lm2002_stb_from_utf8_avm_waitrequest(in_lm2002_stb_from_utf8_avm_waitrequest),
        .in_lm2002_stb_from_utf8_avm_writeack(in_lm2002_stb_from_utf8_avm_writeack),
        .in_lm2545_stb_from_utf8_avm_readdata(in_lm2545_stb_from_utf8_avm_readdata),
        .in_lm2545_stb_from_utf8_avm_readdatavalid(in_lm2545_stb_from_utf8_avm_readdatavalid),
        .in_lm2545_stb_from_utf8_avm_waitrequest(in_lm2545_stb_from_utf8_avm_waitrequest),
        .in_lm2545_stb_from_utf8_avm_writeack(in_lm2545_stb_from_utf8_avm_writeack),
        .in_memdep_6_stb_from_utf8_avm_readdata(in_memdep_6_stb_from_utf8_avm_readdata),
        .in_memdep_6_stb_from_utf8_avm_readdatavalid(in_memdep_6_stb_from_utf8_avm_readdatavalid),
        .in_memdep_6_stb_from_utf8_avm_waitrequest(in_memdep_6_stb_from_utf8_avm_waitrequest),
        .in_memdep_6_stb_from_utf8_avm_writeack(in_memdep_6_stb_from_utf8_avm_writeack),
        .in_memdep_stb_from_utf8_avm_readdata(in_memdep_stb_from_utf8_avm_readdata),
        .in_memdep_stb_from_utf8_avm_readdatavalid(in_memdep_stb_from_utf8_avm_readdatavalid),
        .in_memdep_stb_from_utf8_avm_waitrequest(in_memdep_stb_from_utf8_avm_waitrequest),
        .in_memdep_stb_from_utf8_avm_writeack(in_memdep_stb_from_utf8_avm_writeack),
        .in_ml2664_stb_from_utf8_avm_readdata(in_ml2664_stb_from_utf8_avm_readdata),
        .in_ml2664_stb_from_utf8_avm_readdatavalid(in_ml2664_stb_from_utf8_avm_readdatavalid),
        .in_ml2664_stb_from_utf8_avm_waitrequest(in_ml2664_stb_from_utf8_avm_waitrequest),
        .in_ml2664_stb_from_utf8_avm_writeack(in_ml2664_stb_from_utf8_avm_writeack),
        .in_ml3_stb_from_utf8_avm_readdata(in_ml3_stb_from_utf8_avm_readdata),
        .in_ml3_stb_from_utf8_avm_readdatavalid(in_ml3_stb_from_utf8_avm_readdatavalid),
        .in_ml3_stb_from_utf8_avm_waitrequest(in_ml3_stb_from_utf8_avm_waitrequest),
        .in_ml3_stb_from_utf8_avm_writeack(in_ml3_stb_from_utf8_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr_out_o_stall),
        .in_stall_in_0(bb_stb_from_utf8_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_stb_from_utf84_sr_out_o_valid),
        .in_valid_in_1(bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_stb_from_utf8_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stb_from_utf8_B2_out_exiting_valid_out),
        .out_intel_reserved_ffwd_7_0(bb_stb_from_utf8_B2_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_stb_from_utf8_B2_out_intel_reserved_ffwd_8_0),
        .out_lm2002_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_address),
        .out_lm2002_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_burstcount),
        .out_lm2002_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_byteenable),
        .out_lm2002_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_enable),
        .out_lm2002_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_read),
        .out_lm2002_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_write),
        .out_lm2002_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_writedata),
        .out_lm2545_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_address),
        .out_lm2545_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_burstcount),
        .out_lm2545_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_byteenable),
        .out_lm2545_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_enable),
        .out_lm2545_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_read),
        .out_lm2545_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_write),
        .out_lm2545_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_writedata),
        .out_lsu_memdep_6_o_active(bb_stb_from_utf8_B2_out_lsu_memdep_6_o_active),
        .out_lsu_memdep_o_active(bb_stb_from_utf8_B2_out_lsu_memdep_o_active),
        .out_memdep_6_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_address),
        .out_memdep_6_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_burstcount),
        .out_memdep_6_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_byteenable),
        .out_memdep_6_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_enable),
        .out_memdep_6_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_read),
        .out_memdep_6_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_write),
        .out_memdep_6_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_writedata),
        .out_memdep_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_address),
        .out_memdep_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_burstcount),
        .out_memdep_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_byteenable),
        .out_memdep_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_enable),
        .out_memdep_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_read),
        .out_memdep_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_write),
        .out_memdep_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_writedata),
        .out_ml2664_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_address),
        .out_ml2664_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_burstcount),
        .out_ml2664_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_byteenable),
        .out_ml2664_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_enable),
        .out_ml2664_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_read),
        .out_ml2664_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_write),
        .out_ml2664_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_writedata),
        .out_ml3_stb_from_utf8_avm_address(bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_address),
        .out_ml3_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_burstcount),
        .out_ml3_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_byteenable),
        .out_ml3_stb_from_utf8_avm_enable(bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_enable),
        .out_ml3_stb_from_utf8_avm_read(bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_read),
        .out_ml3_stb_from_utf8_avm_write(bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_write),
        .out_ml3_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_writedata),
        .out_pipeline_valid_out(bb_stb_from_utf8_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_stb_from_utf8_B2_out_stall_out_0),
        .out_stall_out_1(bb_stb_from_utf8_B2_out_stall_out_1),
        .out_valid_out_0(bb_stb_from_utf8_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_stb_from_utf8_B2_sr_1_aunroll_x(BLACKBOX,126)
    stb_from_utf8_bb_B2_sr_1 thebb_stb_from_utf8_B2_sr_1_aunroll_x (
        .in_i_stall(bb_stb_from_utf8_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_stb_from_utf80_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stb_from_utf80(BLACKBOX,61)
    stb_from_utf8_loop_limiter_0 theloop_limiter_stb_from_utf80 (
        .in_i_stall(bb_stb_from_utf8_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stb_from_utf8_B2_out_exiting_stall_out),
        .in_i_valid(bb_stb_from_utf8_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_stb_from_utf8_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stb_from_utf80_out_o_stall),
        .out_o_valid(loop_limiter_stb_from_utf80_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr(BLACKBOX,16)
    stb_from_utf8_i_llvm_fpga_pipeline_keep_going52_1_sr thei_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo_out_stall_out),
        .in_i_valid(bb_stb_from_utf8_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stb_from_utf8_B3(BLACKBOX,5)
    stb_from_utf8_bb_B3 thebb_stb_from_utf8_B3 (
        .in_feedback_stall_in_1(bb_stb_from_utf8_B1_start_out_feedback_stall_out_1),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_0_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_5_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_stb_from_utf8_B2_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_stb_from_utf8_B2_out_intel_reserved_ffwd_8_0),
        .in_iowr_bl_return_stb_from_utf8_i_fifoready(in_iowr_bl_return_stb_from_utf8_i_fifoready),
        .in_memdep_1_stb_from_utf8_avm_readdata(in_memdep_1_stb_from_utf8_avm_readdata),
        .in_memdep_1_stb_from_utf8_avm_readdatavalid(in_memdep_1_stb_from_utf8_avm_readdatavalid),
        .in_memdep_1_stb_from_utf8_avm_waitrequest(in_memdep_1_stb_from_utf8_avm_waitrequest),
        .in_memdep_1_stb_from_utf8_avm_writeack(in_memdep_1_stb_from_utf8_avm_writeack),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_stb_from_utf8_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_stb_from_utf8_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_stb_from_utf8_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_stb_from_utf8_o_fifodata(bb_stb_from_utf8_B3_out_iowr_bl_return_stb_from_utf8_o_fifodata),
        .out_iowr_bl_return_stb_from_utf8_o_fifovalid(bb_stb_from_utf8_B3_out_iowr_bl_return_stb_from_utf8_o_fifovalid),
        .out_lsu_memdep_1_o_active(bb_stb_from_utf8_B3_out_lsu_memdep_1_o_active),
        .out_memdep_1_stb_from_utf8_avm_address(bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_address),
        .out_memdep_1_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_burstcount),
        .out_memdep_1_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_byteenable),
        .out_memdep_1_stb_from_utf8_avm_enable(bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_enable),
        .out_memdep_1_stb_from_utf8_avm_read(bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_read),
        .out_memdep_1_stb_from_utf8_avm_write(bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_write),
        .out_memdep_1_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_writedata),
        .out_stall_out_0(bb_stb_from_utf8_B3_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stb_from_utf8_B1_start(BLACKBOX,3)
    stb_from_utf8_bb_B1_start thebb_stb_from_utf8_B1_start (
        .in_feedback_in_1(bb_stb_from_utf8_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_stb_from_utf8_B3_out_feedback_valid_out_1),
        .in_flush(in_start),
        .in_iord_bl_call_stb_from_utf8_i_fifodata(in_iord_bl_call_stb_from_utf8_i_fifodata),
        .in_iord_bl_call_stb_from_utf8_i_fifovalid(in_iord_bl_call_stb_from_utf8_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_stb_from_utf80_out_o_stall),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata(in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid(in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest(in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack(in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going52_stb_from_utf81_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_stb_from_utf8_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_stb_from_utf8_B1_start_out_intel_reserved_ffwd_6_0),
        .out_iord_bl_call_stb_from_utf8_o_fifoready(bb_stb_from_utf8_B1_start_out_iord_bl_call_stb_from_utf8_o_fifoready),
        .out_pipeline_valid_out(bb_stb_from_utf8_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_stb_from_utf8_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_address(bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount(bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable(bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable(bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_read(bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_write(bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata(bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata),
        .out_valid_out_0(bb_stb_from_utf8_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_stb_from_utf8_o_fifoready(GPOUT,62)
    assign out_iord_bl_call_stb_from_utf8_o_fifoready = bb_stb_from_utf8_B1_start_out_iord_bl_call_stb_from_utf8_o_fifoready;

    // out_iowr_bl_return_stb_from_utf8_o_fifodata(GPOUT,63)
    assign out_iowr_bl_return_stb_from_utf8_o_fifodata = bb_stb_from_utf8_B3_out_iowr_bl_return_stb_from_utf8_o_fifodata;

    // out_iowr_bl_return_stb_from_utf8_o_fifovalid(GPOUT,64)
    assign out_iowr_bl_return_stb_from_utf8_o_fifovalid = bb_stb_from_utf8_B3_out_iowr_bl_return_stb_from_utf8_o_fifovalid;

    // out_lm2002_stb_from_utf8_avm_address(GPOUT,65)
    assign out_lm2002_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_address;

    // out_lm2002_stb_from_utf8_avm_burstcount(GPOUT,66)
    assign out_lm2002_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_burstcount;

    // out_lm2002_stb_from_utf8_avm_byteenable(GPOUT,67)
    assign out_lm2002_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_byteenable;

    // out_lm2002_stb_from_utf8_avm_enable(GPOUT,68)
    assign out_lm2002_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_enable;

    // out_lm2002_stb_from_utf8_avm_read(GPOUT,69)
    assign out_lm2002_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_read;

    // out_lm2002_stb_from_utf8_avm_write(GPOUT,70)
    assign out_lm2002_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_write;

    // out_lm2002_stb_from_utf8_avm_writedata(GPOUT,71)
    assign out_lm2002_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_out_lm2002_stb_from_utf8_avm_writedata;

    // out_lm2545_stb_from_utf8_avm_address(GPOUT,72)
    assign out_lm2545_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_address;

    // out_lm2545_stb_from_utf8_avm_burstcount(GPOUT,73)
    assign out_lm2545_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_burstcount;

    // out_lm2545_stb_from_utf8_avm_byteenable(GPOUT,74)
    assign out_lm2545_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_byteenable;

    // out_lm2545_stb_from_utf8_avm_enable(GPOUT,75)
    assign out_lm2545_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_enable;

    // out_lm2545_stb_from_utf8_avm_read(GPOUT,76)
    assign out_lm2545_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_read;

    // out_lm2545_stb_from_utf8_avm_write(GPOUT,77)
    assign out_lm2545_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_write;

    // out_lm2545_stb_from_utf8_avm_writedata(GPOUT,78)
    assign out_lm2545_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_out_lm2545_stb_from_utf8_avm_writedata;

    // out_memdep_1_stb_from_utf8_avm_address(GPOUT,79)
    assign out_memdep_1_stb_from_utf8_avm_address = bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_address;

    // out_memdep_1_stb_from_utf8_avm_burstcount(GPOUT,80)
    assign out_memdep_1_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_burstcount;

    // out_memdep_1_stb_from_utf8_avm_byteenable(GPOUT,81)
    assign out_memdep_1_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_byteenable;

    // out_memdep_1_stb_from_utf8_avm_enable(GPOUT,82)
    assign out_memdep_1_stb_from_utf8_avm_enable = bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_enable;

    // out_memdep_1_stb_from_utf8_avm_read(GPOUT,83)
    assign out_memdep_1_stb_from_utf8_avm_read = bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_read;

    // out_memdep_1_stb_from_utf8_avm_write(GPOUT,84)
    assign out_memdep_1_stb_from_utf8_avm_write = bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_write;

    // out_memdep_1_stb_from_utf8_avm_writedata(GPOUT,85)
    assign out_memdep_1_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B3_out_memdep_1_stb_from_utf8_avm_writedata;

    // out_memdep_6_stb_from_utf8_avm_address(GPOUT,86)
    assign out_memdep_6_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_address;

    // out_memdep_6_stb_from_utf8_avm_burstcount(GPOUT,87)
    assign out_memdep_6_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_burstcount;

    // out_memdep_6_stb_from_utf8_avm_byteenable(GPOUT,88)
    assign out_memdep_6_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_byteenable;

    // out_memdep_6_stb_from_utf8_avm_enable(GPOUT,89)
    assign out_memdep_6_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_enable;

    // out_memdep_6_stb_from_utf8_avm_read(GPOUT,90)
    assign out_memdep_6_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_read;

    // out_memdep_6_stb_from_utf8_avm_write(GPOUT,91)
    assign out_memdep_6_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_write;

    // out_memdep_6_stb_from_utf8_avm_writedata(GPOUT,92)
    assign out_memdep_6_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_out_memdep_6_stb_from_utf8_avm_writedata;

    // out_memdep_stb_from_utf8_avm_address(GPOUT,93)
    assign out_memdep_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_address;

    // out_memdep_stb_from_utf8_avm_burstcount(GPOUT,94)
    assign out_memdep_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_burstcount;

    // out_memdep_stb_from_utf8_avm_byteenable(GPOUT,95)
    assign out_memdep_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_byteenable;

    // out_memdep_stb_from_utf8_avm_enable(GPOUT,96)
    assign out_memdep_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_enable;

    // out_memdep_stb_from_utf8_avm_read(GPOUT,97)
    assign out_memdep_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_read;

    // out_memdep_stb_from_utf8_avm_write(GPOUT,98)
    assign out_memdep_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_write;

    // out_memdep_stb_from_utf8_avm_writedata(GPOUT,99)
    assign out_memdep_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_out_memdep_stb_from_utf8_avm_writedata;

    // out_ml2664_stb_from_utf8_avm_address(GPOUT,100)
    assign out_ml2664_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_address;

    // out_ml2664_stb_from_utf8_avm_burstcount(GPOUT,101)
    assign out_ml2664_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_burstcount;

    // out_ml2664_stb_from_utf8_avm_byteenable(GPOUT,102)
    assign out_ml2664_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_byteenable;

    // out_ml2664_stb_from_utf8_avm_enable(GPOUT,103)
    assign out_ml2664_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_enable;

    // out_ml2664_stb_from_utf8_avm_read(GPOUT,104)
    assign out_ml2664_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_read;

    // out_ml2664_stb_from_utf8_avm_write(GPOUT,105)
    assign out_ml2664_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_write;

    // out_ml2664_stb_from_utf8_avm_writedata(GPOUT,106)
    assign out_ml2664_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_out_ml2664_stb_from_utf8_avm_writedata;

    // out_ml3_stb_from_utf8_avm_address(GPOUT,107)
    assign out_ml3_stb_from_utf8_avm_address = bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_address;

    // out_ml3_stb_from_utf8_avm_burstcount(GPOUT,108)
    assign out_ml3_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_burstcount;

    // out_ml3_stb_from_utf8_avm_byteenable(GPOUT,109)
    assign out_ml3_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_byteenable;

    // out_ml3_stb_from_utf8_avm_enable(GPOUT,110)
    assign out_ml3_stb_from_utf8_avm_enable = bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_enable;

    // out_ml3_stb_from_utf8_avm_read(GPOUT,111)
    assign out_ml3_stb_from_utf8_avm_read = bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_read;

    // out_ml3_stb_from_utf8_avm_write(GPOUT,112)
    assign out_ml3_stb_from_utf8_avm_write = bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_write;

    // out_ml3_stb_from_utf8_avm_writedata(GPOUT,113)
    assign out_ml3_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B2_out_ml3_stb_from_utf8_avm_writedata;

    // out_o_active_memdep(GPOUT,114)
    assign out_o_active_memdep = bb_stb_from_utf8_B2_out_lsu_memdep_o_active;

    // out_o_active_memdep_1(GPOUT,115)
    assign out_o_active_memdep_1 = bb_stb_from_utf8_B3_out_lsu_memdep_1_o_active;

    // out_o_active_memdep_6(GPOUT,116)
    assign out_o_active_memdep_6 = bb_stb_from_utf8_B2_out_lsu_memdep_6_o_active;

    // bb_stb_from_utf8_B0_runOnce(BLACKBOX,2)
    stb_from_utf8_bb_B0_runOnce thebb_stb_from_utf8_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_stb_from_utf8_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,117)
    assign out_stall_out = bb_stb_from_utf8_B0_runOnce_out_stall_out_0;

    // out_unnamed_stb_from_utf83_stb_from_utf8_avm_address(GPOUT,118)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_address = bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;

    // out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount(GPOUT,119)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount = bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;

    // out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable(GPOUT,120)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable = bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;

    // out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable(GPOUT,121)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable = bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;

    // out_unnamed_stb_from_utf83_stb_from_utf8_avm_read(GPOUT,122)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_read = bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;

    // out_unnamed_stb_from_utf83_stb_from_utf8_avm_write(GPOUT,123)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_write = bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;

    // out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata(GPOUT,124)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata = bb_stb_from_utf8_B1_start_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;

    // out_valid_out(GPOUT,125)
    assign out_valid_out = GND_q;

endmodule
