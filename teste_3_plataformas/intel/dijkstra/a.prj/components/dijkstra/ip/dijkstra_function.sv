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

// SystemVerilog created from dijkstra_function
// SystemVerilog created on Mon Apr  6 11:16:52 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_graph,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_dijkstra_i_fifodata,
    input wire [0:0] in_iord_bl_call_dijkstra_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_dijkstra_i_fifoready,
    input wire [63:0] in_lm1_dijkstra_avm_readdata,
    input wire [0:0] in_lm1_dijkstra_avm_readdatavalid,
    input wire [0:0] in_lm1_dijkstra_avm_waitrequest,
    input wire [0:0] in_lm1_dijkstra_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_dijkstra_o_fifoready,
    output wire [0:0] out_iowr_bl_return_dijkstra_o_fifodata,
    output wire [0:0] out_iowr_bl_return_dijkstra_o_fifovalid,
    output wire [63:0] out_lm1_dijkstra_avm_address,
    output wire [0:0] out_lm1_dijkstra_avm_burstcount,
    output wire [7:0] out_lm1_dijkstra_avm_byteenable,
    output wire [0:0] out_lm1_dijkstra_avm_enable,
    output wire [0:0] out_lm1_dijkstra_avm_read,
    output wire [0:0] out_lm1_dijkstra_avm_write,
    output wire [63:0] out_lm1_dijkstra_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_dijkstra_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_dijkstra_B3_out_exiting_stall_out;
    wire [0:0] bb_dijkstra_B3_out_exiting_valid_out;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_14_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_24_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_25_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_27_0;
    wire [31:0] bb_dijkstra_B3_out_intel_reserved_ffwd_28_0;
    wire [0:0] bb_dijkstra_B3_out_pipeline_valid_out;
    wire [0:0] bb_dijkstra_B3_out_stall_out_0;
    wire [0:0] bb_dijkstra_B3_out_stall_out_1;
    wire [0:0] bb_dijkstra_B3_out_valid_out_0;
    wire [0:0] bb_dijkstra_B5_out_feedback_out_1;
    wire [0:0] bb_dijkstra_B5_out_feedback_valid_out_1;
    wire [0:0] bb_dijkstra_B5_out_iowr_bl_return_dijkstra_o_fifodata;
    wire [0:0] bb_dijkstra_B5_out_iowr_bl_return_dijkstra_o_fifovalid;
    wire [0:0] bb_dijkstra_B5_out_stall_out_0;
    wire [31:0] bb_dijkstra_B8_out_c0_exe32042;
    wire [0:0] bb_dijkstra_B8_out_stall_out_0;
    wire [0:0] bb_dijkstra_B8_out_valid_out_0;
    wire [0:0] bb_dijkstra_B8_out_valid_out_1;
    wire [1:0] c_i2_030_q;
    wire [31:0] c_i32_09_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going172_dijkstra1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going172_dijkstra1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_dijkstra0_out_o_stall;
    wire [0:0] loop_limiter_dijkstra0_out_o_valid;
    wire [0:0] loop_limiter_dijkstra1_out_o_stall;
    wire [0:0] loop_limiter_dijkstra1_out_o_valid;
    wire [0:0] loop_limiter_dijkstra2_out_o_stall;
    wire [0:0] loop_limiter_dijkstra2_out_o_valid;
    wire [0:0] loop_limiter_dijkstra3_out_o_stall;
    wire [0:0] loop_limiter_dijkstra3_out_o_valid;
    wire [0:0] bb_dijkstra_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [63:0] bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_dijkstra_B1_start_aunroll_x_out_iord_bl_call_dijkstra_o_fifoready;
    wire [0:0] bb_dijkstra_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_dijkstra_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_dijkstra_B1_start_aunroll_x_out_valid_out_0;
    wire [63:0] bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_dijkstra_B2_aunroll_x_out_stall_out_0;
    wire [0:0] bb_dijkstra_B2_aunroll_x_out_valid_out_0;
    wire [0:0] bb_dijkstra_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_dijkstra_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_dijkstra_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_inc50;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [0:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [0:0] bb_dijkstra_B4_aunroll_x_out_stall_out_0;
    wire [0:0] bb_dijkstra_B4_aunroll_x_out_stall_out_1;
    wire [0:0] bb_dijkstra_B4_aunroll_x_out_valid_out_0;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_0_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_1_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_2_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_3_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_4_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_5_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_6_tpl;
    wire [31:0] bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_7_tpl;
    wire [0:0] bb_dijkstra_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_dijkstra_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_dijkstra_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_dijkstra_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B4_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_dijkstra_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_dijkstra_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_dijkstra_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B5_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_dijkstra_B6_aunroll_x_out_c0_exe3;
    wire [0:0] bb_dijkstra_B6_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_dijkstra_B6_aunroll_x_out_exiting_valid_out;
    wire [31:0] bb_dijkstra_B6_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [0:0] bb_dijkstra_B6_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_dijkstra_B6_aunroll_x_out_stall_out_0;
    wire [0:0] bb_dijkstra_B6_aunroll_x_out_stall_out_1;
    wire [0:0] bb_dijkstra_B6_aunroll_x_out_valid_out_0;
    wire [0:0] bb_dijkstra_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_dijkstra_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_dijkstra_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_c0_exe31;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_51_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_52_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_53_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_54_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_55_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_56_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_57_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_58_0;
    wire [0:0] bb_dijkstra_B7_aunroll_x_out_stall_out_0;
    wire [0:0] bb_dijkstra_B7_aunroll_x_out_valid_out_0;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_0_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_1_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_2_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_3_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_4_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_5_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_6_tpl;
    wire [31:0] bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_7_tpl;
    wire [0:0] bb_dijkstra_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_dijkstra_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_dijkstra_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B8_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_dijkstra_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_c0_exe3204;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_exiting_valid_out;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_65_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_66_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_67_0;
    wire [31:0] bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_68_0;
    wire [63:0] bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_address;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_burstcount;
    wire [7:0] bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_byteenable;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_enable;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_read;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_write;
    wire [63:0] bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_writedata;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_stall_out_0;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_stall_out_1;
    wire [0:0] bb_dijkstra_B9_aunroll_x_out_valid_out_0;
    wire [0:0] bb_dijkstra_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_dijkstra_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_dijkstra_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_dijkstra_B9_sr_1_aunroll_x_out_o_data_1_tpl;


    // c_i2_030(CONSTANT,25)
    assign c_i2_030_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo(BLACKBOX,38)
    dijkstra_i_llvm_fpga_pipeline_keep_going172_1_valid_fifo thei_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo (
        .in_data_in(c_i2_030_q),
        .in_stall_in(bb_dijkstra_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going172_dijkstra1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo(BLACKBOX,36)
    dijkstra_i_llvm_fpga_pipeline_keep_going142_6_valid_fifo thei_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo (
        .in_data_in(c_i2_030_q),
        .in_stall_in(bb_dijkstra_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going142_dijkstra6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B4_sr_0_aunroll_x(BLACKBOX,75)
    dijkstra_bb_B4_sr_0 thebb_dijkstra_B4_sr_0_aunroll_x (
        .in_i_stall(bb_dijkstra_B4_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_dijkstra_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_dijkstra_B8_out_c0_exe32042),
        .in_i_data_1_tpl(GND_q),
        .out_o_stall(bb_dijkstra_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_dijkstra_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_dijkstra_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo(BLACKBOX,34)
    dijkstra_i_llvm_fpga_pipeline_keep_going126_6_valid_fifo thei_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo (
        .in_data_in(c_i2_030_q),
        .in_stall_in(bb_dijkstra_B6_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going126_dijkstra6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B7_sr_0_aunroll_x(BLACKBOX,81)
    dijkstra_bb_B7_sr_0 thebb_dijkstra_B7_sr_0_aunroll_x (
        .in_i_stall(bb_dijkstra_B7_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_dijkstra_B6_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_dijkstra_B6_aunroll_x_out_c0_exe3),
        .out_o_stall(bb_dijkstra_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_dijkstra_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going126_dijkstra6_sr(BLACKBOX,33)
    dijkstra_i_llvm_fpga_pipeline_keep_going126_6_sr thei_llvm_fpga_pipeline_keep_going126_dijkstra6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo_out_stall_out),
        .in_i_valid(bb_dijkstra_B6_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going126_dijkstra6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going126_dijkstra6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_09(CONSTANT,29)
    assign c_i32_09_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_dijkstra_B6_aunroll_x(BLACKBOX,78)
    dijkstra_bb_B6 thebb_dijkstra_B6_aunroll_x (
        .in_forked123_0(GND_q),
        .in_forked123_1(bb_dijkstra_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc50177_0(c_i32_09_q),
        .in_inc50177_1(bb_dijkstra_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_29_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_46_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_46_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going126_dijkstra6_sr_out_o_stall),
        .in_stall_in_0(bb_dijkstra_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going126_dijkstra6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_dijkstra_B6_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_47_0_0_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_0_tpl),
        .in_intel_reserved_ffwd_47_0_1_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_1_tpl),
        .in_intel_reserved_ffwd_47_0_2_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_2_tpl),
        .in_intel_reserved_ffwd_47_0_3_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_3_tpl),
        .in_intel_reserved_ffwd_47_0_4_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_4_tpl),
        .in_intel_reserved_ffwd_47_0_5_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_5_tpl),
        .in_intel_reserved_ffwd_47_0_6_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_6_tpl),
        .in_intel_reserved_ffwd_47_0_7_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_7_tpl),
        .out_c0_exe3(bb_dijkstra_B6_aunroll_x_out_c0_exe3),
        .out_exiting_stall_out(bb_dijkstra_B6_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_dijkstra_B6_aunroll_x_out_exiting_valid_out),
        .out_intel_reserved_ffwd_49_0(bb_dijkstra_B6_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_pipeline_valid_out(bb_dijkstra_B6_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_dijkstra_B6_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_dijkstra_B6_aunroll_x_out_stall_out_1),
        .out_valid_out_0(bb_dijkstra_B6_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_dijkstra_B6_sr_1_aunroll_x(BLACKBOX,79)
    dijkstra_bb_B6_sr_1 thebb_dijkstra_B6_sr_1_aunroll_x (
        .in_i_stall(bb_dijkstra_B6_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_dijkstra2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_dijkstra_B4_aunroll_x_out_inc50),
        .out_o_stall(bb_dijkstra_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_dijkstra_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_dijkstra_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_dijkstra2(BLACKBOX,56)
    dijkstra_loop_limiter_2 theloop_limiter_dijkstra2 (
        .in_i_stall(bb_dijkstra_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_dijkstra_B6_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_dijkstra_B4_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_dijkstra_B6_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_dijkstra2_out_o_stall),
        .out_o_valid(loop_limiter_dijkstra2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo(BLACKBOX,40)
    dijkstra_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo (
        .in_data_in(c_i2_030_q),
        .in_stall_in(bb_dijkstra_B9_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_dijkstra6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_dijkstra6_sr(BLACKBOX,39)
    dijkstra_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_dijkstra6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo_out_stall_out),
        .in_i_valid(bb_dijkstra_B9_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_dijkstra6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_dijkstra6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_dijkstra3(BLACKBOX,57)
    dijkstra_loop_limiter_3 theloop_limiter_dijkstra3 (
        .in_i_stall(bb_dijkstra_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_dijkstra_B9_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_dijkstra_B7_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_dijkstra_B9_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_dijkstra3_out_o_stall),
        .out_o_valid(loop_limiter_dijkstra3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B9_sr_1_aunroll_x(BLACKBOX,84)
    dijkstra_bb_B9_sr_1 thebb_dijkstra_B9_sr_1_aunroll_x (
        .in_i_stall(bb_dijkstra_B9_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_dijkstra3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_dijkstra_B7_aunroll_x_out_c0_exe31),
        .out_o_stall(bb_dijkstra_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_dijkstra_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_dijkstra_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B9_aunroll_x(BLACKBOX,83)
    dijkstra_bb_B9 thebb_dijkstra_B9_aunroll_x (
        .in_flush(in_start),
        .in_forked52_0(GND_q),
        .in_forked52_1(bb_dijkstra_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc50175_pop37178_0(c_i32_09_q),
        .in_inc50175_pop37178_1(bb_dijkstra_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_1_0(bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_38_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_49_0(bb_dijkstra_B6_aunroll_x_out_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_50_0),
        .in_lm1_dijkstra_avm_readdata(in_lm1_dijkstra_avm_readdata),
        .in_lm1_dijkstra_avm_readdatavalid(in_lm1_dijkstra_avm_readdatavalid),
        .in_lm1_dijkstra_avm_waitrequest(in_lm1_dijkstra_avm_waitrequest),
        .in_lm1_dijkstra_avm_writeack(in_lm1_dijkstra_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_dijkstra6_sr_out_o_stall),
        .in_stall_in_0(bb_dijkstra_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_dijkstra6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_dijkstra_B9_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_59_0_0_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_0_tpl),
        .in_intel_reserved_ffwd_59_0_1_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_1_tpl),
        .in_intel_reserved_ffwd_59_0_2_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_2_tpl),
        .in_intel_reserved_ffwd_59_0_3_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_3_tpl),
        .in_intel_reserved_ffwd_59_0_4_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_4_tpl),
        .in_intel_reserved_ffwd_59_0_5_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_5_tpl),
        .in_intel_reserved_ffwd_59_0_6_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_6_tpl),
        .in_intel_reserved_ffwd_59_0_7_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_7_tpl),
        .out_c0_exe3204(bb_dijkstra_B9_aunroll_x_out_c0_exe3204),
        .out_exiting_stall_out(bb_dijkstra_B9_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_dijkstra_B9_aunroll_x_out_exiting_valid_out),
        .out_intel_reserved_ffwd_60_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_68_0),
        .out_lm1_dijkstra_avm_address(bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_address),
        .out_lm1_dijkstra_avm_burstcount(bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_burstcount),
        .out_lm1_dijkstra_avm_byteenable(bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_byteenable),
        .out_lm1_dijkstra_avm_enable(bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_enable),
        .out_lm1_dijkstra_avm_read(bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_read),
        .out_lm1_dijkstra_avm_write(bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_write),
        .out_lm1_dijkstra_avm_writedata(bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_writedata),
        .out_pipeline_valid_out(bb_dijkstra_B9_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_dijkstra_B9_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_dijkstra_B9_aunroll_x_out_stall_out_1),
        .out_valid_out_0(bb_dijkstra_B9_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B7_aunroll_x(BLACKBOX,80)
    dijkstra_bb_B7 thebb_dijkstra_B7_aunroll_x (
        .in_c0_exe31_0(bb_dijkstra_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_29_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_49_0(bb_dijkstra_B6_aunroll_x_out_intel_reserved_ffwd_49_0),
        .in_stall_in_0(loop_limiter_dijkstra3_out_o_stall),
        .in_valid_in_0(bb_dijkstra_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe31(bb_dijkstra_B7_aunroll_x_out_c0_exe31),
        .out_intel_reserved_ffwd_50_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_58_0),
        .out_stall_out_0(bb_dijkstra_B7_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_dijkstra_B7_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_59_0_0_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_0_tpl),
        .out_intel_reserved_ffwd_59_0_1_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_1_tpl),
        .out_intel_reserved_ffwd_59_0_2_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_2_tpl),
        .out_intel_reserved_ffwd_59_0_3_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_3_tpl),
        .out_intel_reserved_ffwd_59_0_4_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_4_tpl),
        .out_intel_reserved_ffwd_59_0_5_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_5_tpl),
        .out_intel_reserved_ffwd_59_0_6_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_6_tpl),
        .out_intel_reserved_ffwd_59_0_7_tpl(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_59_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B4_aunroll_x(BLACKBOX,74)
    dijkstra_bb_B4 thebb_dijkstra_B4_aunroll_x (
        .in_count_034_0(bb_dijkstra_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_count_034_1(bb_dijkstra_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked_0(bb_dijkstra_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_forked_1(bb_dijkstra_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_10_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_20_0(bb_dijkstra_B3_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_dijkstra_B3_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(bb_dijkstra_B3_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_dijkstra_B3_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(bb_dijkstra_B3_out_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(bb_dijkstra_B3_out_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(bb_dijkstra_B3_out_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(bb_dijkstra_B3_out_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(bb_dijkstra_B3_out_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_2_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_50_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_53_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_58_0(bb_dijkstra_B7_aunroll_x_out_intel_reserved_ffwd_58_0),
        .in_intel_reserved_ffwd_5_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_60_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_65_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_65_0),
        .in_intel_reserved_ffwd_66_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_66_0),
        .in_intel_reserved_ffwd_67_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_67_0),
        .in_intel_reserved_ffwd_68_0(bb_dijkstra_B9_aunroll_x_out_intel_reserved_ffwd_68_0),
        .in_intel_reserved_ffwd_6_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_9_0),
        .in_stall_in_0(loop_limiter_dijkstra2_out_o_stall),
        .in_valid_in_0(bb_dijkstra_B4_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_dijkstra_B4_sr_1_aunroll_x_out_o_valid),
        .out_inc50(bb_dijkstra_B4_aunroll_x_out_inc50),
        .out_intel_reserved_ffwd_29_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_48_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_stall_out_0(bb_dijkstra_B4_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_dijkstra_B4_aunroll_x_out_stall_out_1),
        .out_valid_out_0(bb_dijkstra_B4_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_47_0_0_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_0_tpl),
        .out_intel_reserved_ffwd_47_0_1_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_1_tpl),
        .out_intel_reserved_ffwd_47_0_2_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_2_tpl),
        .out_intel_reserved_ffwd_47_0_3_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_3_tpl),
        .out_intel_reserved_ffwd_47_0_4_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_4_tpl),
        .out_intel_reserved_ffwd_47_0_5_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_5_tpl),
        .out_intel_reserved_ffwd_47_0_6_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_6_tpl),
        .out_intel_reserved_ffwd_47_0_7_tpl(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_47_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B8_sr_0_aunroll_x(BLACKBOX,82)
    dijkstra_bb_B8_sr_0 thebb_dijkstra_B8_sr_0_aunroll_x (
        .in_i_stall(bb_dijkstra_B8_out_stall_out_0),
        .in_i_valid(bb_dijkstra_B9_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_dijkstra_B9_aunroll_x_out_c0_exe3204),
        .out_o_stall(bb_dijkstra_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_dijkstra_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B8(BLACKBOX,5)
    dijkstra_bb_B8 thebb_dijkstra_B8 (
        .in_c0_exe32042_0(bb_dijkstra_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_48_0(bb_dijkstra_B4_aunroll_x_out_intel_reserved_ffwd_48_0),
        .in_stall_in_0(bb_dijkstra_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_dijkstra_B5_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_dijkstra_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe32042(bb_dijkstra_B8_out_c0_exe32042),
        .out_stall_out_0(bb_dijkstra_B8_out_stall_out_0),
        .out_valid_out_0(bb_dijkstra_B8_out_valid_out_0),
        .out_valid_out_1(bb_dijkstra_B8_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B5_sr_0_aunroll_x(BLACKBOX,77)
    dijkstra_bb_B5_sr_0 thebb_dijkstra_B5_sr_0_aunroll_x (
        .in_i_stall(bb_dijkstra_B5_out_stall_out_0),
        .in_i_valid(bb_dijkstra_B8_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_dijkstra_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B4_sr_1_aunroll_x(BLACKBOX,76)
    dijkstra_bb_B4_sr_1 thebb_dijkstra_B4_sr_1_aunroll_x (
        .in_i_stall(bb_dijkstra_B4_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_dijkstra1_out_o_valid),
        .in_i_data_0_tpl(c_i32_09_q),
        .in_i_data_1_tpl(VCC_q),
        .out_o_stall(bb_dijkstra_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_dijkstra_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_dijkstra_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_dijkstra1(BLACKBOX,55)
    dijkstra_loop_limiter_1 theloop_limiter_dijkstra1 (
        .in_i_stall(bb_dijkstra_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_dijkstra_B5_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_dijkstra_B2_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_dijkstra_B8_out_valid_out_1),
        .out_o_stall(loop_limiter_dijkstra1_out_o_stall),
        .out_o_valid(loop_limiter_dijkstra1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B2_aunroll_x(BLACKBOX,71)
    dijkstra_bb_B2 thebb_dijkstra_B2_aunroll_x (
        .in_intel_reserved_ffwd_11_0(bb_dijkstra_B3_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_dijkstra_B3_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(bb_dijkstra_B3_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(bb_dijkstra_B3_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(bb_dijkstra_B3_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_dijkstra_B3_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_dijkstra_B3_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_dijkstra_B3_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_dijkstra_B3_out_intel_reserved_ffwd_19_0),
        .in_stall_in_0(loop_limiter_dijkstra1_out_o_stall),
        .in_valid_in_0(bb_dijkstra_B2_sr_0_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_10_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_2_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_dijkstra_B2_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_stall_out_0(bb_dijkstra_B2_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_dijkstra_B2_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B2_sr_0_aunroll_x(BLACKBOX,72)
    dijkstra_bb_B2_sr_0 thebb_dijkstra_B2_sr_0_aunroll_x (
        .in_i_stall(bb_dijkstra_B2_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_dijkstra_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_dijkstra_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going142_dijkstra6_sr(BLACKBOX,35)
    dijkstra_i_llvm_fpga_pipeline_keep_going142_6_sr thei_llvm_fpga_pipeline_keep_going142_dijkstra6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo_out_stall_out),
        .in_i_valid(bb_dijkstra_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going142_dijkstra6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going142_dijkstra6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_dijkstra_B3(BLACKBOX,3)
    dijkstra_bb_B3 thebb_dijkstra_B3 (
        .in_forked139_0(GND_q),
        .in_forked139_1(bb_dijkstra_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going142_dijkstra6_sr_out_o_stall),
        .in_stall_in_0(bb_dijkstra_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going142_dijkstra6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_dijkstra_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_dijkstra_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_dijkstra_B3_out_exiting_valid_out),
        .out_intel_reserved_ffwd_11_0(bb_dijkstra_B3_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_dijkstra_B3_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_dijkstra_B3_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_dijkstra_B3_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_dijkstra_B3_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_dijkstra_B3_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_dijkstra_B3_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_dijkstra_B3_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_dijkstra_B3_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_dijkstra_B3_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_dijkstra_B3_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_dijkstra_B3_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_dijkstra_B3_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_dijkstra_B3_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_dijkstra_B3_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_dijkstra_B3_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_dijkstra_B3_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_dijkstra_B3_out_intel_reserved_ffwd_28_0),
        .out_pipeline_valid_out(bb_dijkstra_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_dijkstra_B3_out_stall_out_0),
        .out_stall_out_1(bb_dijkstra_B3_out_stall_out_1),
        .out_valid_out_0(bb_dijkstra_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B3_sr_1_aunroll_x(BLACKBOX,73)
    dijkstra_bb_B3_sr_1 thebb_dijkstra_B3_sr_1_aunroll_x (
        .in_i_stall(bb_dijkstra_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_dijkstra0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_dijkstra_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_dijkstra_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_dijkstra_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_dijkstra0(BLACKBOX,54)
    dijkstra_loop_limiter_0 theloop_limiter_dijkstra0 (
        .in_i_stall(bb_dijkstra_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_dijkstra_B3_out_exiting_stall_out),
        .in_i_valid(bb_dijkstra_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_dijkstra_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_dijkstra0_out_o_stall),
        .out_o_valid(loop_limiter_dijkstra0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going172_dijkstra1_sr(BLACKBOX,37)
    dijkstra_i_llvm_fpga_pipeline_keep_going172_1_sr thei_llvm_fpga_pipeline_keep_going172_dijkstra1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo_out_stall_out),
        .in_i_valid(bb_dijkstra_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going172_dijkstra1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going172_dijkstra1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B5(BLACKBOX,4)
    dijkstra_bb_B5 thebb_dijkstra_B5 (
        .in_feedback_stall_in_1(bb_dijkstra_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_iowr_bl_return_dijkstra_i_fifoready(in_iowr_bl_return_dijkstra_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_dijkstra_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_dijkstra_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_dijkstra_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_dijkstra_o_fifodata(bb_dijkstra_B5_out_iowr_bl_return_dijkstra_o_fifodata),
        .out_iowr_bl_return_dijkstra_o_fifovalid(bb_dijkstra_B5_out_iowr_bl_return_dijkstra_o_fifovalid),
        .out_stall_out_0(bb_dijkstra_B5_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B1_start_aunroll_x(BLACKBOX,70)
    dijkstra_bb_B1_start thebb_dijkstra_B1_start_aunroll_x (
        .in_feedback_in_1(bb_dijkstra_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_dijkstra_B5_out_feedback_valid_out_1),
        .in_iord_bl_call_dijkstra_i_fifodata(in_iord_bl_call_dijkstra_i_fifodata),
        .in_iord_bl_call_dijkstra_i_fifovalid(in_iord_bl_call_dijkstra_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going172_dijkstra1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_dijkstra0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going172_dijkstra1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_dijkstra_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_1_0(bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_dijkstra_o_fifoready(bb_dijkstra_B1_start_aunroll_x_out_iord_bl_call_dijkstra_o_fifoready),
        .out_pipeline_valid_out(bb_dijkstra_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_dijkstra_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_dijkstra_B1_start_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_dijkstra_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_dijkstra_o_fifoready(GPOUT,58)
    assign out_iord_bl_call_dijkstra_o_fifoready = bb_dijkstra_B1_start_aunroll_x_out_iord_bl_call_dijkstra_o_fifoready;

    // out_iowr_bl_return_dijkstra_o_fifodata(GPOUT,59)
    assign out_iowr_bl_return_dijkstra_o_fifodata = bb_dijkstra_B5_out_iowr_bl_return_dijkstra_o_fifodata;

    // out_iowr_bl_return_dijkstra_o_fifovalid(GPOUT,60)
    assign out_iowr_bl_return_dijkstra_o_fifovalid = bb_dijkstra_B5_out_iowr_bl_return_dijkstra_o_fifovalid;

    // out_lm1_dijkstra_avm_address(GPOUT,61)
    assign out_lm1_dijkstra_avm_address = bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_address;

    // out_lm1_dijkstra_avm_burstcount(GPOUT,62)
    assign out_lm1_dijkstra_avm_burstcount = bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_burstcount;

    // out_lm1_dijkstra_avm_byteenable(GPOUT,63)
    assign out_lm1_dijkstra_avm_byteenable = bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_byteenable;

    // out_lm1_dijkstra_avm_enable(GPOUT,64)
    assign out_lm1_dijkstra_avm_enable = bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_enable;

    // out_lm1_dijkstra_avm_read(GPOUT,65)
    assign out_lm1_dijkstra_avm_read = bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_read;

    // out_lm1_dijkstra_avm_write(GPOUT,66)
    assign out_lm1_dijkstra_avm_write = bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_write;

    // out_lm1_dijkstra_avm_writedata(GPOUT,67)
    assign out_lm1_dijkstra_avm_writedata = bb_dijkstra_B9_aunroll_x_out_lm1_dijkstra_avm_writedata;

    // bb_dijkstra_B0_runOnce(BLACKBOX,2)
    dijkstra_bb_B0_runOnce thebb_dijkstra_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_dijkstra_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,68)
    assign out_stall_out = bb_dijkstra_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,69)
    assign out_valid_out = GND_q;

endmodule
