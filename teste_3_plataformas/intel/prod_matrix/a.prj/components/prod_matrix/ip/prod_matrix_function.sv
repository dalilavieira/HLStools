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

// SystemVerilog created from prod_matrix_function
// SystemVerilog created on Mon Apr  6 10:28:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_r,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_v,
    input wire [191:0] in_iord_bl_call_prod_matrix_i_fifodata,
    input wire [0:0] in_iord_bl_call_prod_matrix_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_prod_matrix_i_fifoready,
    input wire [63:0] in_lm1_prod_matrix_avm_readdata,
    input wire [0:0] in_lm1_prod_matrix_avm_readdatavalid,
    input wire [0:0] in_lm1_prod_matrix_avm_waitrequest,
    input wire [0:0] in_lm1_prod_matrix_avm_writeack,
    input wire [63:0] in_lm82_prod_matrix_avm_readdata,
    input wire [0:0] in_lm82_prod_matrix_avm_readdatavalid,
    input wire [0:0] in_lm82_prod_matrix_avm_waitrequest,
    input wire [0:0] in_lm82_prod_matrix_avm_writeack,
    input wire [63:0] in_memdep_prod_matrix_avm_readdata,
    input wire [0:0] in_memdep_prod_matrix_avm_readdatavalid,
    input wire [0:0] in_memdep_prod_matrix_avm_waitrequest,
    input wire [0:0] in_memdep_prod_matrix_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_prod_matrix_o_fifoready,
    output wire [0:0] out_iowr_bl_return_prod_matrix_o_fifodata,
    output wire [0:0] out_iowr_bl_return_prod_matrix_o_fifovalid,
    output wire [63:0] out_lm1_prod_matrix_avm_address,
    output wire [0:0] out_lm1_prod_matrix_avm_burstcount,
    output wire [7:0] out_lm1_prod_matrix_avm_byteenable,
    output wire [0:0] out_lm1_prod_matrix_avm_enable,
    output wire [0:0] out_lm1_prod_matrix_avm_read,
    output wire [0:0] out_lm1_prod_matrix_avm_write,
    output wire [63:0] out_lm1_prod_matrix_avm_writedata,
    output wire [63:0] out_lm82_prod_matrix_avm_address,
    output wire [0:0] out_lm82_prod_matrix_avm_burstcount,
    output wire [7:0] out_lm82_prod_matrix_avm_byteenable,
    output wire [0:0] out_lm82_prod_matrix_avm_enable,
    output wire [0:0] out_lm82_prod_matrix_avm_read,
    output wire [0:0] out_lm82_prod_matrix_avm_write,
    output wire [63:0] out_lm82_prod_matrix_avm_writedata,
    output wire [63:0] out_memdep_prod_matrix_avm_address,
    output wire [0:0] out_memdep_prod_matrix_avm_burstcount,
    output wire [7:0] out_memdep_prod_matrix_avm_byteenable,
    output wire [0:0] out_memdep_prod_matrix_avm_enable,
    output wire [0:0] out_memdep_prod_matrix_avm_read,
    output wire [0:0] out_memdep_prod_matrix_avm_write,
    output wire [63:0] out_memdep_prod_matrix_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_prod_matrix_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_prod_matrix_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_prod_matrix_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_prod_matrix_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_prod_matrix_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_prod_matrix_B1_start_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_prod_matrix_B1_start_out_intel_reserved_ffwd_4_0;
    wire [32:0] bb_prod_matrix_B1_start_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_prod_matrix_B1_start_out_iord_bl_call_prod_matrix_o_fifoready;
    wire [0:0] bb_prod_matrix_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_prod_matrix_B1_start_out_stall_out_0;
    wire [0:0] bb_prod_matrix_B1_start_out_valid_out_0;
    wire [0:0] bb_prod_matrix_B2_out_c0_exe170;
    wire [0:0] bb_prod_matrix_B2_out_c0_exe2;
    wire [31:0] bb_prod_matrix_B2_out_c0_exe3;
    wire [0:0] bb_prod_matrix_B2_out_exiting_stall_out;
    wire [0:0] bb_prod_matrix_B2_out_exiting_valid_out;
    wire [0:0] bb_prod_matrix_B2_out_feedback_stall_out_12;
    wire [0:0] bb_prod_matrix_B2_out_memdep_phi4_pop12;
    wire [0:0] bb_prod_matrix_B2_out_pipeline_valid_out;
    wire [0:0] bb_prod_matrix_B2_out_stall_out_0;
    wire [0:0] bb_prod_matrix_B2_out_stall_out_1;
    wire [0:0] bb_prod_matrix_B2_out_valid_out_0;
    wire [0:0] bb_prod_matrix_B3_out_c0_exe179;
    wire [0:0] bb_prod_matrix_B3_out_c0_exe280;
    wire [31:0] bb_prod_matrix_B3_out_c0_exe381;
    wire [0:0] bb_prod_matrix_B3_out_c0_exe482;
    wire [0:0] bb_prod_matrix_B3_out_c0_exe5;
    wire [31:0] bb_prod_matrix_B3_out_c0_exe6;
    wire [0:0] bb_prod_matrix_B3_out_c0_exe7;
    wire [0:0] bb_prod_matrix_B3_out_exiting_stall_out;
    wire [0:0] bb_prod_matrix_B3_out_exiting_valid_out;
    wire [0:0] bb_prod_matrix_B3_out_feedback_stall_out_15;
    wire [0:0] bb_prod_matrix_B3_out_memdep_phi3_pop15;
    wire [0:0] bb_prod_matrix_B3_out_pipeline_valid_out;
    wire [0:0] bb_prod_matrix_B3_out_stall_out_0;
    wire [0:0] bb_prod_matrix_B3_out_stall_out_1;
    wire [0:0] bb_prod_matrix_B3_out_valid_out_0;
    wire [0:0] bb_prod_matrix_B4_out_exiting_stall_out;
    wire [0:0] bb_prod_matrix_B4_out_exiting_valid_out;
    wire [63:0] bb_prod_matrix_B4_out_lm1_prod_matrix_avm_address;
    wire [0:0] bb_prod_matrix_B4_out_lm1_prod_matrix_avm_burstcount;
    wire [7:0] bb_prod_matrix_B4_out_lm1_prod_matrix_avm_byteenable;
    wire [0:0] bb_prod_matrix_B4_out_lm1_prod_matrix_avm_enable;
    wire [0:0] bb_prod_matrix_B4_out_lm1_prod_matrix_avm_read;
    wire [0:0] bb_prod_matrix_B4_out_lm1_prod_matrix_avm_write;
    wire [63:0] bb_prod_matrix_B4_out_lm1_prod_matrix_avm_writedata;
    wire [63:0] bb_prod_matrix_B4_out_lm82_prod_matrix_avm_address;
    wire [0:0] bb_prod_matrix_B4_out_lm82_prod_matrix_avm_burstcount;
    wire [7:0] bb_prod_matrix_B4_out_lm82_prod_matrix_avm_byteenable;
    wire [0:0] bb_prod_matrix_B4_out_lm82_prod_matrix_avm_enable;
    wire [0:0] bb_prod_matrix_B4_out_lm82_prod_matrix_avm_read;
    wire [0:0] bb_prod_matrix_B4_out_lm82_prod_matrix_avm_write;
    wire [63:0] bb_prod_matrix_B4_out_lm82_prod_matrix_avm_writedata;
    wire [0:0] bb_prod_matrix_B4_out_lsu_memdep_o_active;
    wire [0:0] bb_prod_matrix_B4_out_memdep;
    wire [63:0] bb_prod_matrix_B4_out_memdep_prod_matrix_avm_address;
    wire [0:0] bb_prod_matrix_B4_out_memdep_prod_matrix_avm_burstcount;
    wire [7:0] bb_prod_matrix_B4_out_memdep_prod_matrix_avm_byteenable;
    wire [0:0] bb_prod_matrix_B4_out_memdep_prod_matrix_avm_enable;
    wire [0:0] bb_prod_matrix_B4_out_memdep_prod_matrix_avm_read;
    wire [0:0] bb_prod_matrix_B4_out_memdep_prod_matrix_avm_write;
    wire [63:0] bb_prod_matrix_B4_out_memdep_prod_matrix_avm_writedata;
    wire [0:0] bb_prod_matrix_B4_out_notcmp2240_pop29;
    wire [0:0] bb_prod_matrix_B4_out_notcmp2635_pop25;
    wire [0:0] bb_prod_matrix_B4_out_pipeline_valid_out;
    wire [0:0] bb_prod_matrix_B4_out_pop24;
    wire [0:0] bb_prod_matrix_B4_out_pop28;
    wire [0:0] bb_prod_matrix_B4_out_stall_out_0;
    wire [0:0] bb_prod_matrix_B4_out_stall_out_1;
    wire [0:0] bb_prod_matrix_B4_out_valid_out_0;
    wire [0:0] bb_prod_matrix_B5_out_feedback_out_15;
    wire [0:0] bb_prod_matrix_B5_out_feedback_valid_out_15;
    wire [0:0] bb_prod_matrix_B5_out_memdep_2;
    wire [0:0] bb_prod_matrix_B5_out_notcmp2635_pop256;
    wire [0:0] bb_prod_matrix_B5_out_pop244;
    wire [0:0] bb_prod_matrix_B5_out_stall_out_0;
    wire [0:0] bb_prod_matrix_B5_out_valid_out_0;
    wire [0:0] bb_prod_matrix_B6_out_feedback_out_12;
    wire [0:0] bb_prod_matrix_B6_out_feedback_valid_out_12;
    wire [0:0] bb_prod_matrix_B6_out_stall_out_0;
    wire [0:0] bb_prod_matrix_B6_out_valid_out_0;
    wire [0:0] bb_prod_matrix_B7_out_feedback_out_1;
    wire [0:0] bb_prod_matrix_B7_out_feedback_valid_out_1;
    wire [0:0] bb_prod_matrix_B7_out_iowr_bl_return_prod_matrix_o_fifodata;
    wire [0:0] bb_prod_matrix_B7_out_iowr_bl_return_prod_matrix_o_fifovalid;
    wire [0:0] bb_prod_matrix_B7_out_stall_out_0;
    wire [1:0] c_i2_050_q;
    wire [31:0] c_i32_undef16_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_prod_matrix4_sr_out_o_valid;
    wire [0:0] loop_limiter_prod_matrix0_out_o_stall;
    wire [0:0] loop_limiter_prod_matrix0_out_o_valid;
    wire [0:0] loop_limiter_prod_matrix1_out_o_stall;
    wire [0:0] loop_limiter_prod_matrix1_out_o_valid;
    wire [0:0] loop_limiter_prod_matrix2_out_o_stall;
    wire [0:0] loop_limiter_prod_matrix2_out_o_valid;
    wire [0:0] bb_prod_matrix_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_prod_matrix_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_prod_matrix_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_prod_matrix_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_prod_matrix_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_prod_matrix_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_prod_matrix_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_prod_matrix_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_prod_matrix_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_prod_matrix_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_prod_matrix_B7_sr_0_aunroll_x_out_o_valid;


    // c_i2_050(CONSTANT,35)
    assign c_i2_050_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo(BLACKBOX,47)
    prod_matrix_i_llvm_fpga_pipeline_keep_going31_1_valid_fifo thei_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_prod_matrix_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo(BLACKBOX,45)
    prod_matrix_i_llvm_fpga_pipeline_keep_going27_2_valid_fifo thei_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_prod_matrix_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo(BLACKBOX,43)
    prod_matrix_i_llvm_fpga_pipeline_keep_going23_2_valid_fifo thei_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_prod_matrix_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B5_sr_0_aunroll_x(BLACKBOX,104)
    prod_matrix_bb_B5_sr_0 thebb_prod_matrix_B5_sr_0_aunroll_x (
        .in_i_stall(bb_prod_matrix_B5_out_stall_out_0),
        .in_i_valid(bb_prod_matrix_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_prod_matrix_B4_out_memdep),
        .in_i_data_1_tpl(bb_prod_matrix_B4_out_pop24),
        .in_i_data_2_tpl(bb_prod_matrix_B4_out_notcmp2635_pop25),
        .in_i_data_3_tpl(bb_prod_matrix_B4_out_pop28),
        .in_i_data_4_tpl(bb_prod_matrix_B4_out_notcmp2240_pop29),
        .out_o_stall(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_prod_matrix4_sr(BLACKBOX,48)
    prod_matrix_i_llvm_fpga_pipeline_keep_going_4_sr thei_llvm_fpga_pipeline_keep_going_prod_matrix4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_prod_matrix_B4_out_stall_out_0),
        .in_i_valid(bb_prod_matrix_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_prod_matrix4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_prod_matrix4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B4(BLACKBOX,6)
    prod_matrix_bb_B4 thebb_prod_matrix_B4 (
        .in_flush(in_start),
        .in_forked18_0(GND_q),
        .in_forked18_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_021_pop1136_pop1857_0(c_i32_undef16_q),
        .in_i_021_pop1136_pop1857_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_intel_reserved_ffwd_0_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_3_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_4_0),
        .in_j_018_pop1453_0(c_i32_undef16_q),
        .in_j_018_pop1453_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lm1_prod_matrix_avm_readdata(in_lm1_prod_matrix_avm_readdata),
        .in_lm1_prod_matrix_avm_readdatavalid(in_lm1_prod_matrix_avm_readdatavalid),
        .in_lm1_prod_matrix_avm_waitrequest(in_lm1_prod_matrix_avm_waitrequest),
        .in_lm1_prod_matrix_avm_writeack(in_lm1_prod_matrix_avm_writeack),
        .in_lm82_prod_matrix_avm_readdata(in_lm82_prod_matrix_avm_readdata),
        .in_lm82_prod_matrix_avm_readdatavalid(in_lm82_prod_matrix_avm_readdatavalid),
        .in_lm82_prod_matrix_avm_waitrequest(in_lm82_prod_matrix_avm_waitrequest),
        .in_lm82_prod_matrix_avm_writeack(in_lm82_prod_matrix_avm_writeack),
        .in_memdep_phi3_pop1554_0(GND_q),
        .in_memdep_phi3_pop1554_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi4_pop1238_pop1958_0(GND_q),
        .in_memdep_phi4_pop1238_pop1958_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_prod_matrix_avm_readdata(in_memdep_prod_matrix_avm_readdata),
        .in_memdep_prod_matrix_avm_readdatavalid(in_memdep_prod_matrix_avm_readdatavalid),
        .in_memdep_prod_matrix_avm_waitrequest(in_memdep_prod_matrix_avm_waitrequest),
        .in_memdep_prod_matrix_avm_writeack(in_memdep_prod_matrix_avm_writeack),
        .in_notcmp2252_0(GND_q),
        .in_notcmp2252_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2634_pop1756_0(GND_q),
        .in_notcmp2634_pop1756_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_prod_matrix4_sr_out_o_stall),
        .in_pop1655_0(GND_q),
        .in_pop1655_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_prod_matrix13_0(GND_q),
        .in_unnamed_prod_matrix13_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_prod_matrix4_sr_out_o_valid),
        .in_valid_in_1(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_prod_matrix_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_prod_matrix_B4_out_exiting_valid_out),
        .out_lm1_prod_matrix_avm_address(bb_prod_matrix_B4_out_lm1_prod_matrix_avm_address),
        .out_lm1_prod_matrix_avm_burstcount(bb_prod_matrix_B4_out_lm1_prod_matrix_avm_burstcount),
        .out_lm1_prod_matrix_avm_byteenable(bb_prod_matrix_B4_out_lm1_prod_matrix_avm_byteenable),
        .out_lm1_prod_matrix_avm_enable(bb_prod_matrix_B4_out_lm1_prod_matrix_avm_enable),
        .out_lm1_prod_matrix_avm_read(bb_prod_matrix_B4_out_lm1_prod_matrix_avm_read),
        .out_lm1_prod_matrix_avm_write(bb_prod_matrix_B4_out_lm1_prod_matrix_avm_write),
        .out_lm1_prod_matrix_avm_writedata(bb_prod_matrix_B4_out_lm1_prod_matrix_avm_writedata),
        .out_lm82_prod_matrix_avm_address(bb_prod_matrix_B4_out_lm82_prod_matrix_avm_address),
        .out_lm82_prod_matrix_avm_burstcount(bb_prod_matrix_B4_out_lm82_prod_matrix_avm_burstcount),
        .out_lm82_prod_matrix_avm_byteenable(bb_prod_matrix_B4_out_lm82_prod_matrix_avm_byteenable),
        .out_lm82_prod_matrix_avm_enable(bb_prod_matrix_B4_out_lm82_prod_matrix_avm_enable),
        .out_lm82_prod_matrix_avm_read(bb_prod_matrix_B4_out_lm82_prod_matrix_avm_read),
        .out_lm82_prod_matrix_avm_write(bb_prod_matrix_B4_out_lm82_prod_matrix_avm_write),
        .out_lm82_prod_matrix_avm_writedata(bb_prod_matrix_B4_out_lm82_prod_matrix_avm_writedata),
        .out_lsu_memdep_o_active(bb_prod_matrix_B4_out_lsu_memdep_o_active),
        .out_memdep(bb_prod_matrix_B4_out_memdep),
        .out_memdep_prod_matrix_avm_address(bb_prod_matrix_B4_out_memdep_prod_matrix_avm_address),
        .out_memdep_prod_matrix_avm_burstcount(bb_prod_matrix_B4_out_memdep_prod_matrix_avm_burstcount),
        .out_memdep_prod_matrix_avm_byteenable(bb_prod_matrix_B4_out_memdep_prod_matrix_avm_byteenable),
        .out_memdep_prod_matrix_avm_enable(bb_prod_matrix_B4_out_memdep_prod_matrix_avm_enable),
        .out_memdep_prod_matrix_avm_read(bb_prod_matrix_B4_out_memdep_prod_matrix_avm_read),
        .out_memdep_prod_matrix_avm_write(bb_prod_matrix_B4_out_memdep_prod_matrix_avm_write),
        .out_memdep_prod_matrix_avm_writedata(bb_prod_matrix_B4_out_memdep_prod_matrix_avm_writedata),
        .out_notcmp2240_pop29(bb_prod_matrix_B4_out_notcmp2240_pop29),
        .out_notcmp2635_pop25(bb_prod_matrix_B4_out_notcmp2635_pop25),
        .out_pipeline_valid_out(bb_prod_matrix_B4_out_pipeline_valid_out),
        .out_pop24(bb_prod_matrix_B4_out_pop24),
        .out_pop28(bb_prod_matrix_B4_out_pop28),
        .out_stall_out_0(bb_prod_matrix_B4_out_stall_out_0),
        .out_stall_out_1(bb_prod_matrix_B4_out_stall_out_1),
        .out_valid_out_0(bb_prod_matrix_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_prod_matrix_B4_sr_1_aunroll_x(BLACKBOX,103)
    prod_matrix_bb_B4_sr_1 thebb_prod_matrix_B4_sr_1_aunroll_x (
        .in_i_stall(bb_prod_matrix_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_prod_matrix2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_prod_matrix_B3_out_c0_exe179),
        .in_i_data_2_tpl(bb_prod_matrix_B3_out_c0_exe280),
        .in_i_data_3_tpl(bb_prod_matrix_B3_out_c0_exe381),
        .in_i_data_4_tpl(bb_prod_matrix_B3_out_memdep_phi3_pop15),
        .in_i_data_5_tpl(bb_prod_matrix_B3_out_c0_exe482),
        .in_i_data_6_tpl(bb_prod_matrix_B3_out_c0_exe5),
        .in_i_data_7_tpl(bb_prod_matrix_B3_out_c0_exe6),
        .in_i_data_8_tpl(bb_prod_matrix_B3_out_c0_exe7),
        .out_o_stall(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_prod_matrix2(BLACKBOX,73)
    prod_matrix_loop_limiter_2 theloop_limiter_prod_matrix2 (
        .in_i_stall(bb_prod_matrix_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_prod_matrix_B4_out_exiting_stall_out),
        .in_i_valid(bb_prod_matrix_B3_out_valid_out_0),
        .in_i_valid_exit(bb_prod_matrix_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_prod_matrix2_out_o_stall),
        .out_o_valid(loop_limiter_prod_matrix2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr(BLACKBOX,42)
    prod_matrix_i_llvm_fpga_pipeline_keep_going23_2_sr thei_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo_out_stall_out),
        .in_i_valid(bb_prod_matrix_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef16(CONSTANT,38)
    assign c_i32_undef16_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_prod_matrix_B6_sr_0_aunroll_x(BLACKBOX,105)
    prod_matrix_bb_B6_sr_0 thebb_prod_matrix_B6_sr_0_aunroll_x (
        .in_i_stall(bb_prod_matrix_B6_out_stall_out_0),
        .in_i_valid(bb_prod_matrix_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_prod_matrix_B5_out_memdep_2),
        .in_i_data_1_tpl(bb_prod_matrix_B5_out_pop244),
        .in_i_data_2_tpl(bb_prod_matrix_B5_out_notcmp2635_pop256),
        .out_o_stall(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B5(BLACKBOX,7)
    prod_matrix_bb_B5 thebb_prod_matrix_B5 (
        .in_feedback_stall_in_15(bb_prod_matrix_B3_out_feedback_stall_out_15),
        .in_memdep_2_0(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_notcmp2240_pop298_0(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_notcmp2635_pop256_0(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_pop244_0(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_pop287_0(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_prod_matrix_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_15(bb_prod_matrix_B5_out_feedback_out_15),
        .out_feedback_valid_out_15(bb_prod_matrix_B5_out_feedback_valid_out_15),
        .out_memdep_2(bb_prod_matrix_B5_out_memdep_2),
        .out_notcmp2635_pop256(bb_prod_matrix_B5_out_notcmp2635_pop256),
        .out_pop244(bb_prod_matrix_B5_out_pop244),
        .out_stall_out_0(bb_prod_matrix_B5_out_stall_out_0),
        .out_valid_out_0(bb_prod_matrix_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B3(BLACKBOX,5)
    prod_matrix_bb_B3 thebb_prod_matrix_B3 (
        .in_feedback_in_15(bb_prod_matrix_B5_out_feedback_out_15),
        .in_feedback_valid_in_15(bb_prod_matrix_B5_out_feedback_valid_out_15),
        .in_forked19_0(GND_q),
        .in_forked19_1(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_021_pop1146_0(c_i32_undef16_q),
        .in_i_021_pop1146_1(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_3_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_5_0),
        .in_memdep_phi4_pop1249_0(GND_q),
        .in_memdep_phi4_pop1249_1(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp2643_0(GND_q),
        .in_notcmp2643_1(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_prod_matrix2_out_o_stall),
        .in_unnamed_prod_matrix10_0(GND_q),
        .in_unnamed_prod_matrix10_1(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe179(bb_prod_matrix_B3_out_c0_exe179),
        .out_c0_exe280(bb_prod_matrix_B3_out_c0_exe280),
        .out_c0_exe381(bb_prod_matrix_B3_out_c0_exe381),
        .out_c0_exe482(bb_prod_matrix_B3_out_c0_exe482),
        .out_c0_exe5(bb_prod_matrix_B3_out_c0_exe5),
        .out_c0_exe6(bb_prod_matrix_B3_out_c0_exe6),
        .out_c0_exe7(bb_prod_matrix_B3_out_c0_exe7),
        .out_exiting_stall_out(bb_prod_matrix_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_prod_matrix_B3_out_exiting_valid_out),
        .out_feedback_stall_out_15(bb_prod_matrix_B3_out_feedback_stall_out_15),
        .out_memdep_phi3_pop15(bb_prod_matrix_B3_out_memdep_phi3_pop15),
        .out_pipeline_valid_out(bb_prod_matrix_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_prod_matrix_B3_out_stall_out_0),
        .out_stall_out_1(bb_prod_matrix_B3_out_stall_out_1),
        .out_valid_out_0(bb_prod_matrix_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B3_sr_1_aunroll_x(BLACKBOX,102)
    prod_matrix_bb_B3_sr_1 thebb_prod_matrix_B3_sr_1_aunroll_x (
        .in_i_stall(bb_prod_matrix_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_prod_matrix1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_prod_matrix_B2_out_c0_exe170),
        .in_i_data_2_tpl(bb_prod_matrix_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_prod_matrix_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_prod_matrix_B2_out_memdep_phi4_pop12),
        .out_o_stall(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_prod_matrix1(BLACKBOX,72)
    prod_matrix_loop_limiter_1 theloop_limiter_prod_matrix1 (
        .in_i_stall(bb_prod_matrix_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_prod_matrix_B3_out_exiting_stall_out),
        .in_i_valid(bb_prod_matrix_B2_out_valid_out_0),
        .in_i_valid_exit(bb_prod_matrix_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_prod_matrix1_out_o_stall),
        .out_o_valid(loop_limiter_prod_matrix1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr(BLACKBOX,44)
    prod_matrix_i_llvm_fpga_pipeline_keep_going27_2_sr thei_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo_out_stall_out),
        .in_i_valid(bb_prod_matrix_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_prod_matrix_B7_sr_0_aunroll_x(BLACKBOX,106)
    prod_matrix_bb_B7_sr_0 thebb_prod_matrix_B7_sr_0_aunroll_x (
        .in_i_stall(bb_prod_matrix_B7_out_stall_out_0),
        .in_i_valid(bb_prod_matrix_B6_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_prod_matrix_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_prod_matrix_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B6(BLACKBOX,8)
    prod_matrix_bb_B6 thebb_prod_matrix_B6 (
        .in_feedback_stall_in_12(bb_prod_matrix_B2_out_feedback_stall_out_12),
        .in_memdep_1_0(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_notcmp2635_pop255_0(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_pop243_0(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_prod_matrix_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_prod_matrix_B6_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_12(bb_prod_matrix_B6_out_feedback_out_12),
        .out_feedback_valid_out_12(bb_prod_matrix_B6_out_feedback_valid_out_12),
        .out_stall_out_0(bb_prod_matrix_B6_out_stall_out_0),
        .out_valid_out_0(bb_prod_matrix_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B2(BLACKBOX,4)
    prod_matrix_bb_B2 thebb_prod_matrix_B2 (
        .in_feedback_in_12(bb_prod_matrix_B6_out_feedback_out_12),
        .in_feedback_valid_in_12(bb_prod_matrix_B6_out_feedback_valid_out_12),
        .in_forked_0(GND_q),
        .in_forked_1(bb_prod_matrix_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_4_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_prod_matrix1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_prod_matrix_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe170(bb_prod_matrix_B2_out_c0_exe170),
        .out_c0_exe2(bb_prod_matrix_B2_out_c0_exe2),
        .out_c0_exe3(bb_prod_matrix_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_prod_matrix_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_prod_matrix_B2_out_exiting_valid_out),
        .out_feedback_stall_out_12(bb_prod_matrix_B2_out_feedback_stall_out_12),
        .out_memdep_phi4_pop12(bb_prod_matrix_B2_out_memdep_phi4_pop12),
        .out_pipeline_valid_out(bb_prod_matrix_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_prod_matrix_B2_out_stall_out_0),
        .out_stall_out_1(bb_prod_matrix_B2_out_stall_out_1),
        .out_valid_out_0(bb_prod_matrix_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B2_sr_1_aunroll_x(BLACKBOX,101)
    prod_matrix_bb_B2_sr_1 thebb_prod_matrix_B2_sr_1_aunroll_x (
        .in_i_stall(bb_prod_matrix_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_prod_matrix0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_prod_matrix_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_prod_matrix_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_prod_matrix_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_prod_matrix0(BLACKBOX,71)
    prod_matrix_loop_limiter_0 theloop_limiter_prod_matrix0 (
        .in_i_stall(bb_prod_matrix_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_prod_matrix_B2_out_exiting_stall_out),
        .in_i_valid(bb_prod_matrix_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_prod_matrix_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_prod_matrix0_out_o_stall),
        .out_o_valid(loop_limiter_prod_matrix0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr(BLACKBOX,46)
    prod_matrix_i_llvm_fpga_pipeline_keep_going31_1_sr thei_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo_out_stall_out),
        .in_i_valid(bb_prod_matrix_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B7(BLACKBOX,9)
    prod_matrix_bb_B7 thebb_prod_matrix_B7 (
        .in_feedback_stall_in_1(bb_prod_matrix_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_prod_matrix_i_fifoready(in_iowr_bl_return_prod_matrix_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_prod_matrix_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_prod_matrix_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_prod_matrix_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_prod_matrix_o_fifodata(bb_prod_matrix_B7_out_iowr_bl_return_prod_matrix_o_fifodata),
        .out_iowr_bl_return_prod_matrix_o_fifovalid(bb_prod_matrix_B7_out_iowr_bl_return_prod_matrix_o_fifovalid),
        .out_stall_out_0(bb_prod_matrix_B7_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_prod_matrix_B1_start(BLACKBOX,3)
    prod_matrix_bb_B1_start thebb_prod_matrix_B1_start (
        .in_feedback_in_1(bb_prod_matrix_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_prod_matrix_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_prod_matrix_i_fifodata(in_iord_bl_call_prod_matrix_i_fifodata),
        .in_iord_bl_call_prod_matrix_i_fifovalid(in_iord_bl_call_prod_matrix_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_prod_matrix0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going31_prod_matrix1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_prod_matrix_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_prod_matrix_B1_start_out_intel_reserved_ffwd_5_0),
        .out_iord_bl_call_prod_matrix_o_fifoready(bb_prod_matrix_B1_start_out_iord_bl_call_prod_matrix_o_fifoready),
        .out_pipeline_valid_out(bb_prod_matrix_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_prod_matrix_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_prod_matrix_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_prod_matrix_o_fifoready(GPOUT,74)
    assign out_iord_bl_call_prod_matrix_o_fifoready = bb_prod_matrix_B1_start_out_iord_bl_call_prod_matrix_o_fifoready;

    // out_iowr_bl_return_prod_matrix_o_fifodata(GPOUT,75)
    assign out_iowr_bl_return_prod_matrix_o_fifodata = bb_prod_matrix_B7_out_iowr_bl_return_prod_matrix_o_fifodata;

    // out_iowr_bl_return_prod_matrix_o_fifovalid(GPOUT,76)
    assign out_iowr_bl_return_prod_matrix_o_fifovalid = bb_prod_matrix_B7_out_iowr_bl_return_prod_matrix_o_fifovalid;

    // out_lm1_prod_matrix_avm_address(GPOUT,77)
    assign out_lm1_prod_matrix_avm_address = bb_prod_matrix_B4_out_lm1_prod_matrix_avm_address;

    // out_lm1_prod_matrix_avm_burstcount(GPOUT,78)
    assign out_lm1_prod_matrix_avm_burstcount = bb_prod_matrix_B4_out_lm1_prod_matrix_avm_burstcount;

    // out_lm1_prod_matrix_avm_byteenable(GPOUT,79)
    assign out_lm1_prod_matrix_avm_byteenable = bb_prod_matrix_B4_out_lm1_prod_matrix_avm_byteenable;

    // out_lm1_prod_matrix_avm_enable(GPOUT,80)
    assign out_lm1_prod_matrix_avm_enable = bb_prod_matrix_B4_out_lm1_prod_matrix_avm_enable;

    // out_lm1_prod_matrix_avm_read(GPOUT,81)
    assign out_lm1_prod_matrix_avm_read = bb_prod_matrix_B4_out_lm1_prod_matrix_avm_read;

    // out_lm1_prod_matrix_avm_write(GPOUT,82)
    assign out_lm1_prod_matrix_avm_write = bb_prod_matrix_B4_out_lm1_prod_matrix_avm_write;

    // out_lm1_prod_matrix_avm_writedata(GPOUT,83)
    assign out_lm1_prod_matrix_avm_writedata = bb_prod_matrix_B4_out_lm1_prod_matrix_avm_writedata;

    // out_lm82_prod_matrix_avm_address(GPOUT,84)
    assign out_lm82_prod_matrix_avm_address = bb_prod_matrix_B4_out_lm82_prod_matrix_avm_address;

    // out_lm82_prod_matrix_avm_burstcount(GPOUT,85)
    assign out_lm82_prod_matrix_avm_burstcount = bb_prod_matrix_B4_out_lm82_prod_matrix_avm_burstcount;

    // out_lm82_prod_matrix_avm_byteenable(GPOUT,86)
    assign out_lm82_prod_matrix_avm_byteenable = bb_prod_matrix_B4_out_lm82_prod_matrix_avm_byteenable;

    // out_lm82_prod_matrix_avm_enable(GPOUT,87)
    assign out_lm82_prod_matrix_avm_enable = bb_prod_matrix_B4_out_lm82_prod_matrix_avm_enable;

    // out_lm82_prod_matrix_avm_read(GPOUT,88)
    assign out_lm82_prod_matrix_avm_read = bb_prod_matrix_B4_out_lm82_prod_matrix_avm_read;

    // out_lm82_prod_matrix_avm_write(GPOUT,89)
    assign out_lm82_prod_matrix_avm_write = bb_prod_matrix_B4_out_lm82_prod_matrix_avm_write;

    // out_lm82_prod_matrix_avm_writedata(GPOUT,90)
    assign out_lm82_prod_matrix_avm_writedata = bb_prod_matrix_B4_out_lm82_prod_matrix_avm_writedata;

    // out_memdep_prod_matrix_avm_address(GPOUT,91)
    assign out_memdep_prod_matrix_avm_address = bb_prod_matrix_B4_out_memdep_prod_matrix_avm_address;

    // out_memdep_prod_matrix_avm_burstcount(GPOUT,92)
    assign out_memdep_prod_matrix_avm_burstcount = bb_prod_matrix_B4_out_memdep_prod_matrix_avm_burstcount;

    // out_memdep_prod_matrix_avm_byteenable(GPOUT,93)
    assign out_memdep_prod_matrix_avm_byteenable = bb_prod_matrix_B4_out_memdep_prod_matrix_avm_byteenable;

    // out_memdep_prod_matrix_avm_enable(GPOUT,94)
    assign out_memdep_prod_matrix_avm_enable = bb_prod_matrix_B4_out_memdep_prod_matrix_avm_enable;

    // out_memdep_prod_matrix_avm_read(GPOUT,95)
    assign out_memdep_prod_matrix_avm_read = bb_prod_matrix_B4_out_memdep_prod_matrix_avm_read;

    // out_memdep_prod_matrix_avm_write(GPOUT,96)
    assign out_memdep_prod_matrix_avm_write = bb_prod_matrix_B4_out_memdep_prod_matrix_avm_write;

    // out_memdep_prod_matrix_avm_writedata(GPOUT,97)
    assign out_memdep_prod_matrix_avm_writedata = bb_prod_matrix_B4_out_memdep_prod_matrix_avm_writedata;

    // out_o_active_memdep(GPOUT,98)
    assign out_o_active_memdep = bb_prod_matrix_B4_out_lsu_memdep_o_active;

    // bb_prod_matrix_B0_runOnce(BLACKBOX,2)
    prod_matrix_bb_B0_runOnce thebb_prod_matrix_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_prod_matrix_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,99)
    assign out_stall_out = bb_prod_matrix_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,100)
    assign out_valid_out = GND_q;

endmodule
