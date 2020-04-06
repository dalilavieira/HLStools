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

// SystemVerilog created from sobel_function
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_image1,
    input wire [63:0] in_arg_image2,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_sobel_i_fifodata,
    input wire [0:0] in_iord_bl_call_sobel_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_sobel_i_fifoready,
    input wire [63:0] in_memdep_sobel_avm_readdata,
    input wire [0:0] in_memdep_sobel_avm_readdatavalid,
    input wire [0:0] in_memdep_sobel_avm_waitrequest,
    input wire [0:0] in_memdep_sobel_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_sobel10_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel11_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel12_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel13_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel6_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel7_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel8_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_writeack,
    input wire [63:0] in_unnamed_sobel9_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_sobel_o_fifoready,
    output wire [0:0] out_iowr_bl_return_sobel_o_fifodata,
    output wire [0:0] out_iowr_bl_return_sobel_o_fifovalid,
    output wire [63:0] out_memdep_sobel_avm_address,
    output wire [0:0] out_memdep_sobel_avm_burstcount,
    output wire [7:0] out_memdep_sobel_avm_byteenable,
    output wire [0:0] out_memdep_sobel_avm_enable,
    output wire [0:0] out_memdep_sobel_avm_read,
    output wire [0:0] out_memdep_sobel_avm_write,
    output wire [63:0] out_memdep_sobel_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_sobel10_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel10_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel10_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel11_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel11_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel11_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel12_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel12_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel12_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel13_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel13_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel13_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel6_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel6_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel6_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel7_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel7_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel7_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel8_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel8_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel8_sobel_avm_writedata,
    output wire [63:0] out_unnamed_sobel9_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_burstcount,
    output wire [7:0] out_unnamed_sobel9_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel9_sobel_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_sobel_B0_runOnce_out_stall_out_0;
    wire [31:0] bb_sobel_B2_out_c0_exe146;
    wire [31:0] bb_sobel_B2_out_c0_exe2;
    wire [0:0] bb_sobel_B2_out_c0_exe3;
    wire [0:0] bb_sobel_B2_out_c0_exe4;
    wire [0:0] bb_sobel_B2_out_exiting_stall_out;
    wire [0:0] bb_sobel_B2_out_exiting_valid_out;
    wire [0:0] bb_sobel_B2_out_feedback_stall_out_10;
    wire [0:0] bb_sobel_B2_out_memdep_phi1_pop10;
    wire [0:0] bb_sobel_B2_out_pipeline_valid_out;
    wire [0:0] bb_sobel_B2_out_stall_out_0;
    wire [0:0] bb_sobel_B2_out_stall_out_1;
    wire [0:0] bb_sobel_B2_out_valid_out_0;
    wire [0:0] bb_sobel_B4_out_feedback_out_10;
    wire [0:0] bb_sobel_B4_out_feedback_valid_out_10;
    wire [0:0] bb_sobel_B4_out_stall_out_0;
    wire [0:0] bb_sobel_B4_out_valid_out_0;
    wire [0:0] bb_sobel_B5_out_feedback_out_1;
    wire [0:0] bb_sobel_B5_out_feedback_valid_out_1;
    wire [0:0] bb_sobel_B5_out_iowr_bl_return_sobel_o_fifodata;
    wire [0:0] bb_sobel_B5_out_iowr_bl_return_sobel_o_fifovalid;
    wire [0:0] bb_sobel_B5_out_stall_out_0;
    wire [1:0] c_i2_027_q;
    wire [31:0] c_i32_undef12_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sobel1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sobel1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_sr_out_o_valid;
    wire [0:0] loop_limiter_sobel0_out_o_stall;
    wire [0:0] loop_limiter_sobel0_out_o_valid;
    wire [0:0] loop_limiter_sobel1_out_o_stall;
    wire [0:0] loop_limiter_sobel1_out_o_valid;
    wire [0:0] bb_sobel_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [0:0] bb_sobel_B1_start_aunroll_x_out_iord_bl_call_sobel_o_fifoready;
    wire [0:0] bb_sobel_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_sobel_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_sobel_B1_start_aunroll_x_out_valid_out_0;
    wire [63:0] bb_sobel_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_sobel_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [0:0] bb_sobel_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_B3_aunroll_x_out_exitcond1132_pop17;
    wire [0:0] bb_sobel_B3_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_sobel_B3_aunroll_x_out_exiting_valid_out;
    wire [0:0] bb_sobel_B3_aunroll_x_out_lsu_memdep_o_active;
    wire [0:0] bb_sobel_B3_aunroll_x_out_memdep;
    wire [63:0] bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_writedata;
    wire [0:0] bb_sobel_B3_aunroll_x_out_notcmp2033_pop18;
    wire [0:0] bb_sobel_B3_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_sobel_B3_aunroll_x_out_stall_out_0;
    wire [0:0] bb_sobel_B3_aunroll_x_out_stall_out_1;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_writedata;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_address;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_burstcount;
    wire [7:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_byteenable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_enable;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_read;
    wire [0:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_write;
    wire [63:0] bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_writedata;
    wire [0:0] bb_sobel_B3_aunroll_x_out_valid_out_0;
    wire [0:0] bb_sobel_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_sobel_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_sobel_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_sobel_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_sobel_B3_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_sobel_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_B5_sr_0_aunroll_x_out_o_valid;


    // c_i2_027(CONSTANT,21)
    assign c_i2_027_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo(BLACKBOX,29)
    sobel_i_llvm_fpga_pipeline_keep_going26_1_valid_fifo thei_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo (
        .in_data_in(c_i2_027_q),
        .in_stall_in(bb_sobel_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_sobel1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo(BLACKBOX,27)
    sobel_i_llvm_fpga_pipeline_keep_going22_2_valid_fifo thei_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo (
        .in_data_in(c_i2_027_q),
        .in_stall_in(bb_sobel_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going22_sobel2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B4_sr_0_aunroll_x(BLACKBOX,152)
    sobel_bb_B4_sr_0 thebb_sobel_B4_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_B4_out_stall_out_0),
        .in_i_valid(bb_sobel_B3_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_B3_aunroll_x_out_exitcond1132_pop17),
        .in_i_data_1_tpl(bb_sobel_B3_aunroll_x_out_notcmp2033_pop18),
        .in_i_data_2_tpl(bb_sobel_B3_aunroll_x_out_memdep),
        .out_o_stall(bb_sobel_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_sobel3_sr(BLACKBOX,30)
    sobel_i_llvm_fpga_pipeline_keep_going_3_sr thei_llvm_fpga_pipeline_keep_going_sobel3_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_sobel_B3_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_sobel_B3_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_sobel3_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_sobel3_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef12(CONSTANT,23)
    assign c_i32_undef12_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_sobel_B3_aunroll_x(BLACKBOX,150)
    sobel_bb_B3 thebb_sobel_B3_aunroll_x (
        .in_add1236_0(c_i32_undef12_q),
        .in_add1236_1(bb_sobel_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_exitcond1137_0(GND_q),
        .in_exitcond1137_1(bb_sobel_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_sobel_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j_083_pop935_0(c_i32_undef12_q),
        .in_j_083_pop935_1(bb_sobel_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_phi1_pop1039_0(GND_q),
        .in_memdep_phi1_pop1039_1(bb_sobel_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_sobel_avm_readdata(in_memdep_sobel_avm_readdata),
        .in_memdep_sobel_avm_readdatavalid(in_memdep_sobel_avm_readdatavalid),
        .in_memdep_sobel_avm_waitrequest(in_memdep_sobel_avm_waitrequest),
        .in_memdep_sobel_avm_writeack(in_memdep_sobel_avm_writeack),
        .in_notcmp2038_0(GND_q),
        .in_notcmp2038_1(bb_sobel_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_sobel3_sr_out_o_stall),
        .in_stall_in_0(bb_sobel_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_sobel10_sobel_avm_readdata(in_unnamed_sobel10_sobel_avm_readdata),
        .in_unnamed_sobel10_sobel_avm_readdatavalid(in_unnamed_sobel10_sobel_avm_readdatavalid),
        .in_unnamed_sobel10_sobel_avm_waitrequest(in_unnamed_sobel10_sobel_avm_waitrequest),
        .in_unnamed_sobel10_sobel_avm_writeack(in_unnamed_sobel10_sobel_avm_writeack),
        .in_unnamed_sobel11_sobel_avm_readdata(in_unnamed_sobel11_sobel_avm_readdata),
        .in_unnamed_sobel11_sobel_avm_readdatavalid(in_unnamed_sobel11_sobel_avm_readdatavalid),
        .in_unnamed_sobel11_sobel_avm_waitrequest(in_unnamed_sobel11_sobel_avm_waitrequest),
        .in_unnamed_sobel11_sobel_avm_writeack(in_unnamed_sobel11_sobel_avm_writeack),
        .in_unnamed_sobel12_sobel_avm_readdata(in_unnamed_sobel12_sobel_avm_readdata),
        .in_unnamed_sobel12_sobel_avm_readdatavalid(in_unnamed_sobel12_sobel_avm_readdatavalid),
        .in_unnamed_sobel12_sobel_avm_waitrequest(in_unnamed_sobel12_sobel_avm_waitrequest),
        .in_unnamed_sobel12_sobel_avm_writeack(in_unnamed_sobel12_sobel_avm_writeack),
        .in_unnamed_sobel13_sobel_avm_readdata(in_unnamed_sobel13_sobel_avm_readdata),
        .in_unnamed_sobel13_sobel_avm_readdatavalid(in_unnamed_sobel13_sobel_avm_readdatavalid),
        .in_unnamed_sobel13_sobel_avm_waitrequest(in_unnamed_sobel13_sobel_avm_waitrequest),
        .in_unnamed_sobel13_sobel_avm_writeack(in_unnamed_sobel13_sobel_avm_writeack),
        .in_unnamed_sobel6_sobel_avm_readdata(in_unnamed_sobel6_sobel_avm_readdata),
        .in_unnamed_sobel6_sobel_avm_readdatavalid(in_unnamed_sobel6_sobel_avm_readdatavalid),
        .in_unnamed_sobel6_sobel_avm_waitrequest(in_unnamed_sobel6_sobel_avm_waitrequest),
        .in_unnamed_sobel6_sobel_avm_writeack(in_unnamed_sobel6_sobel_avm_writeack),
        .in_unnamed_sobel7_sobel_avm_readdata(in_unnamed_sobel7_sobel_avm_readdata),
        .in_unnamed_sobel7_sobel_avm_readdatavalid(in_unnamed_sobel7_sobel_avm_readdatavalid),
        .in_unnamed_sobel7_sobel_avm_waitrequest(in_unnamed_sobel7_sobel_avm_waitrequest),
        .in_unnamed_sobel7_sobel_avm_writeack(in_unnamed_sobel7_sobel_avm_writeack),
        .in_unnamed_sobel8_sobel_avm_readdata(in_unnamed_sobel8_sobel_avm_readdata),
        .in_unnamed_sobel8_sobel_avm_readdatavalid(in_unnamed_sobel8_sobel_avm_readdatavalid),
        .in_unnamed_sobel8_sobel_avm_waitrequest(in_unnamed_sobel8_sobel_avm_waitrequest),
        .in_unnamed_sobel8_sobel_avm_writeack(in_unnamed_sobel8_sobel_avm_writeack),
        .in_unnamed_sobel9_sobel_avm_readdata(in_unnamed_sobel9_sobel_avm_readdata),
        .in_unnamed_sobel9_sobel_avm_readdatavalid(in_unnamed_sobel9_sobel_avm_readdatavalid),
        .in_unnamed_sobel9_sobel_avm_waitrequest(in_unnamed_sobel9_sobel_avm_waitrequest),
        .in_unnamed_sobel9_sobel_avm_writeack(in_unnamed_sobel9_sobel_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_sobel3_sr_out_o_valid),
        .in_valid_in_1(bb_sobel_B3_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_sobel_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_sobel_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_exitcond1132_pop17(bb_sobel_B3_aunroll_x_out_exitcond1132_pop17),
        .out_exiting_stall_out(bb_sobel_B3_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_B3_aunroll_x_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_sobel_B3_aunroll_x_out_lsu_memdep_o_active),
        .out_memdep(bb_sobel_B3_aunroll_x_out_memdep),
        .out_memdep_sobel_avm_address(bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_address),
        .out_memdep_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_burstcount),
        .out_memdep_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_byteenable),
        .out_memdep_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_enable),
        .out_memdep_sobel_avm_read(bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_read),
        .out_memdep_sobel_avm_write(bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_write),
        .out_memdep_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_writedata),
        .out_notcmp2033_pop18(bb_sobel_B3_aunroll_x_out_notcmp2033_pop18),
        .out_pipeline_valid_out(bb_sobel_B3_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_B3_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_sobel_B3_aunroll_x_out_stall_out_1),
        .out_unnamed_sobel10_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_address),
        .out_unnamed_sobel10_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_burstcount),
        .out_unnamed_sobel10_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_byteenable),
        .out_unnamed_sobel10_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_enable),
        .out_unnamed_sobel10_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_read),
        .out_unnamed_sobel10_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_write),
        .out_unnamed_sobel10_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_writedata),
        .out_unnamed_sobel11_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_address),
        .out_unnamed_sobel11_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_burstcount),
        .out_unnamed_sobel11_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_byteenable),
        .out_unnamed_sobel11_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_enable),
        .out_unnamed_sobel11_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_read),
        .out_unnamed_sobel11_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_write),
        .out_unnamed_sobel11_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_writedata),
        .out_unnamed_sobel12_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_address),
        .out_unnamed_sobel12_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_burstcount),
        .out_unnamed_sobel12_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_byteenable),
        .out_unnamed_sobel12_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_enable),
        .out_unnamed_sobel12_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_read),
        .out_unnamed_sobel12_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_write),
        .out_unnamed_sobel12_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_writedata),
        .out_unnamed_sobel13_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_address),
        .out_unnamed_sobel13_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_burstcount),
        .out_unnamed_sobel13_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_byteenable),
        .out_unnamed_sobel13_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_enable),
        .out_unnamed_sobel13_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_read),
        .out_unnamed_sobel13_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_write),
        .out_unnamed_sobel13_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_writedata),
        .out_unnamed_sobel6_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_address),
        .out_unnamed_sobel6_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_burstcount),
        .out_unnamed_sobel6_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_byteenable),
        .out_unnamed_sobel6_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_enable),
        .out_unnamed_sobel6_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_read),
        .out_unnamed_sobel6_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_write),
        .out_unnamed_sobel6_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_writedata),
        .out_unnamed_sobel7_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_address),
        .out_unnamed_sobel7_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_burstcount),
        .out_unnamed_sobel7_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_byteenable),
        .out_unnamed_sobel7_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_enable),
        .out_unnamed_sobel7_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_read),
        .out_unnamed_sobel7_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_write),
        .out_unnamed_sobel7_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_writedata),
        .out_unnamed_sobel8_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_address),
        .out_unnamed_sobel8_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_burstcount),
        .out_unnamed_sobel8_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_byteenable),
        .out_unnamed_sobel8_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_enable),
        .out_unnamed_sobel8_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_read),
        .out_unnamed_sobel8_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_write),
        .out_unnamed_sobel8_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_writedata),
        .out_unnamed_sobel9_sobel_avm_address(bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_address),
        .out_unnamed_sobel9_sobel_avm_burstcount(bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_burstcount),
        .out_unnamed_sobel9_sobel_avm_byteenable(bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_byteenable),
        .out_unnamed_sobel9_sobel_avm_enable(bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_enable),
        .out_unnamed_sobel9_sobel_avm_read(bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_read),
        .out_unnamed_sobel9_sobel_avm_write(bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_write),
        .out_unnamed_sobel9_sobel_avm_writedata(bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_writedata),
        .out_valid_out_0(bb_sobel_B3_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_sobel_B3_sr_1_aunroll_x(BLACKBOX,151)
    sobel_bb_B3_sr_1 thebb_sobel_B3_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_B3_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_B2_out_c0_exe146),
        .in_i_data_2_tpl(bb_sobel_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_sobel_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_sobel_B2_out_c0_exe4),
        .in_i_data_5_tpl(bb_sobel_B2_out_memdep_phi1_pop10),
        .out_o_stall(bb_sobel_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_sobel_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_sobel_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel1(BLACKBOX,78)
    sobel_loop_limiter_1 theloop_limiter_sobel1 (
        .in_i_stall(bb_sobel_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_B3_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_sobel_B2_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_B3_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel1_out_o_stall),
        .out_o_valid(loop_limiter_sobel1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going22_sobel2_sr(BLACKBOX,26)
    sobel_i_llvm_fpga_pipeline_keep_going22_2_sr thei_llvm_fpga_pipeline_keep_going22_sobel2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going22_sobel2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going22_sobel2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_sobel_B5_sr_0_aunroll_x(BLACKBOX,153)
    sobel_bb_B5_sr_0 thebb_sobel_B5_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_B5_out_stall_out_0),
        .in_i_valid(bb_sobel_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_sobel_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B4(BLACKBOX,4)
    sobel_bb_B4 thebb_sobel_B4 (
        .in_exitcond1132_pop171_0(bb_sobel_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_10(bb_sobel_B2_out_feedback_stall_out_10),
        .in_memdep_3_0(bb_sobel_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2033_pop182_0(bb_sobel_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_sobel_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_sobel_B4_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_10(bb_sobel_B4_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_sobel_B4_out_feedback_valid_out_10),
        .out_stall_out_0(bb_sobel_B4_out_stall_out_0),
        .out_valid_out_0(bb_sobel_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B2(BLACKBOX,3)
    sobel_bb_B2 thebb_sobel_B2 (
        .in_feedback_in_10(bb_sobel_B4_out_feedback_out_10),
        .in_feedback_valid_in_10(bb_sobel_B4_out_feedback_valid_out_10),
        .in_forked29_0(GND_q),
        .in_forked29_1(bb_sobel_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going22_sobel2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_sobel1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going22_sobel2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe146(bb_sobel_B2_out_c0_exe146),
        .out_c0_exe2(bb_sobel_B2_out_c0_exe2),
        .out_c0_exe3(bb_sobel_B2_out_c0_exe3),
        .out_c0_exe4(bb_sobel_B2_out_c0_exe4),
        .out_exiting_stall_out(bb_sobel_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_B2_out_exiting_valid_out),
        .out_feedback_stall_out_10(bb_sobel_B2_out_feedback_stall_out_10),
        .out_memdep_phi1_pop10(bb_sobel_B2_out_memdep_phi1_pop10),
        .out_pipeline_valid_out(bb_sobel_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_B2_out_stall_out_0),
        .out_stall_out_1(bb_sobel_B2_out_stall_out_1),
        .out_valid_out_0(bb_sobel_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B2_sr_1_aunroll_x(BLACKBOX,149)
    sobel_bb_B2_sr_1 thebb_sobel_B2_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_sobel_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel0(BLACKBOX,77)
    sobel_loop_limiter_0 theloop_limiter_sobel0 (
        .in_i_stall(bb_sobel_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_B2_out_exiting_stall_out),
        .in_i_valid(bb_sobel_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel0_out_o_stall),
        .out_o_valid(loop_limiter_sobel0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_sobel1_sr(BLACKBOX,28)
    sobel_i_llvm_fpga_pipeline_keep_going26_1_sr thei_llvm_fpga_pipeline_keep_going26_sobel1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_sobel1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_sobel1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B5(BLACKBOX,5)
    sobel_bb_B5 thebb_sobel_B5 (
        .in_feedback_stall_in_1(bb_sobel_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_iowr_bl_return_sobel_i_fifoready(in_iowr_bl_return_sobel_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_sobel_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_sobel_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_sobel_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_sobel_o_fifodata(bb_sobel_B5_out_iowr_bl_return_sobel_o_fifodata),
        .out_iowr_bl_return_sobel_o_fifovalid(bb_sobel_B5_out_iowr_bl_return_sobel_o_fifovalid),
        .out_stall_out_0(bb_sobel_B5_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B1_start_aunroll_x(BLACKBOX,148)
    sobel_bb_B1_start thebb_sobel_B1_start_aunroll_x (
        .in_feedback_in_1(bb_sobel_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_sobel_B5_out_feedback_valid_out_1),
        .in_iord_bl_call_sobel_i_fifodata(in_iord_bl_call_sobel_i_fifodata),
        .in_iord_bl_call_sobel_i_fifovalid(in_iord_bl_call_sobel_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_sobel1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_sobel0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_sobel1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_sobel_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_iord_bl_call_sobel_o_fifoready(bb_sobel_B1_start_aunroll_x_out_iord_bl_call_sobel_o_fifoready),
        .out_pipeline_valid_out(bb_sobel_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_sobel_B1_start_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_sobel_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_sobel_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_sobel_o_fifoready(GPOUT,79)
    assign out_iord_bl_call_sobel_o_fifoready = bb_sobel_B1_start_aunroll_x_out_iord_bl_call_sobel_o_fifoready;

    // out_iowr_bl_return_sobel_o_fifodata(GPOUT,80)
    assign out_iowr_bl_return_sobel_o_fifodata = bb_sobel_B5_out_iowr_bl_return_sobel_o_fifodata;

    // out_iowr_bl_return_sobel_o_fifovalid(GPOUT,81)
    assign out_iowr_bl_return_sobel_o_fifovalid = bb_sobel_B5_out_iowr_bl_return_sobel_o_fifovalid;

    // out_memdep_sobel_avm_address(GPOUT,82)
    assign out_memdep_sobel_avm_address = bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_address;

    // out_memdep_sobel_avm_burstcount(GPOUT,83)
    assign out_memdep_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_burstcount;

    // out_memdep_sobel_avm_byteenable(GPOUT,84)
    assign out_memdep_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_byteenable;

    // out_memdep_sobel_avm_enable(GPOUT,85)
    assign out_memdep_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_enable;

    // out_memdep_sobel_avm_read(GPOUT,86)
    assign out_memdep_sobel_avm_read = bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_read;

    // out_memdep_sobel_avm_write(GPOUT,87)
    assign out_memdep_sobel_avm_write = bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_write;

    // out_memdep_sobel_avm_writedata(GPOUT,88)
    assign out_memdep_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_memdep_sobel_avm_writedata;

    // out_o_active_memdep(GPOUT,89)
    assign out_o_active_memdep = bb_sobel_B3_aunroll_x_out_lsu_memdep_o_active;

    // bb_sobel_B0_runOnce(BLACKBOX,2)
    sobel_bb_B0_runOnce thebb_sobel_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_sobel_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,90)
    assign out_stall_out = bb_sobel_B0_runOnce_out_stall_out_0;

    // out_unnamed_sobel10_sobel_avm_address(GPOUT,91)
    assign out_unnamed_sobel10_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_address;

    // out_unnamed_sobel10_sobel_avm_burstcount(GPOUT,92)
    assign out_unnamed_sobel10_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_burstcount;

    // out_unnamed_sobel10_sobel_avm_byteenable(GPOUT,93)
    assign out_unnamed_sobel10_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_byteenable;

    // out_unnamed_sobel10_sobel_avm_enable(GPOUT,94)
    assign out_unnamed_sobel10_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_enable;

    // out_unnamed_sobel10_sobel_avm_read(GPOUT,95)
    assign out_unnamed_sobel10_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_read;

    // out_unnamed_sobel10_sobel_avm_write(GPOUT,96)
    assign out_unnamed_sobel10_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_write;

    // out_unnamed_sobel10_sobel_avm_writedata(GPOUT,97)
    assign out_unnamed_sobel10_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel10_sobel_avm_writedata;

    // out_unnamed_sobel11_sobel_avm_address(GPOUT,98)
    assign out_unnamed_sobel11_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_address;

    // out_unnamed_sobel11_sobel_avm_burstcount(GPOUT,99)
    assign out_unnamed_sobel11_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_burstcount;

    // out_unnamed_sobel11_sobel_avm_byteenable(GPOUT,100)
    assign out_unnamed_sobel11_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_byteenable;

    // out_unnamed_sobel11_sobel_avm_enable(GPOUT,101)
    assign out_unnamed_sobel11_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_enable;

    // out_unnamed_sobel11_sobel_avm_read(GPOUT,102)
    assign out_unnamed_sobel11_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_read;

    // out_unnamed_sobel11_sobel_avm_write(GPOUT,103)
    assign out_unnamed_sobel11_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_write;

    // out_unnamed_sobel11_sobel_avm_writedata(GPOUT,104)
    assign out_unnamed_sobel11_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel11_sobel_avm_writedata;

    // out_unnamed_sobel12_sobel_avm_address(GPOUT,105)
    assign out_unnamed_sobel12_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_address;

    // out_unnamed_sobel12_sobel_avm_burstcount(GPOUT,106)
    assign out_unnamed_sobel12_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_burstcount;

    // out_unnamed_sobel12_sobel_avm_byteenable(GPOUT,107)
    assign out_unnamed_sobel12_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_byteenable;

    // out_unnamed_sobel12_sobel_avm_enable(GPOUT,108)
    assign out_unnamed_sobel12_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_enable;

    // out_unnamed_sobel12_sobel_avm_read(GPOUT,109)
    assign out_unnamed_sobel12_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_read;

    // out_unnamed_sobel12_sobel_avm_write(GPOUT,110)
    assign out_unnamed_sobel12_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_write;

    // out_unnamed_sobel12_sobel_avm_writedata(GPOUT,111)
    assign out_unnamed_sobel12_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel12_sobel_avm_writedata;

    // out_unnamed_sobel13_sobel_avm_address(GPOUT,112)
    assign out_unnamed_sobel13_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_address;

    // out_unnamed_sobel13_sobel_avm_burstcount(GPOUT,113)
    assign out_unnamed_sobel13_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_burstcount;

    // out_unnamed_sobel13_sobel_avm_byteenable(GPOUT,114)
    assign out_unnamed_sobel13_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_byteenable;

    // out_unnamed_sobel13_sobel_avm_enable(GPOUT,115)
    assign out_unnamed_sobel13_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_enable;

    // out_unnamed_sobel13_sobel_avm_read(GPOUT,116)
    assign out_unnamed_sobel13_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_read;

    // out_unnamed_sobel13_sobel_avm_write(GPOUT,117)
    assign out_unnamed_sobel13_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_write;

    // out_unnamed_sobel13_sobel_avm_writedata(GPOUT,118)
    assign out_unnamed_sobel13_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel13_sobel_avm_writedata;

    // out_unnamed_sobel6_sobel_avm_address(GPOUT,119)
    assign out_unnamed_sobel6_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_address;

    // out_unnamed_sobel6_sobel_avm_burstcount(GPOUT,120)
    assign out_unnamed_sobel6_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_burstcount;

    // out_unnamed_sobel6_sobel_avm_byteenable(GPOUT,121)
    assign out_unnamed_sobel6_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_byteenable;

    // out_unnamed_sobel6_sobel_avm_enable(GPOUT,122)
    assign out_unnamed_sobel6_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_enable;

    // out_unnamed_sobel6_sobel_avm_read(GPOUT,123)
    assign out_unnamed_sobel6_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_read;

    // out_unnamed_sobel6_sobel_avm_write(GPOUT,124)
    assign out_unnamed_sobel6_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_write;

    // out_unnamed_sobel6_sobel_avm_writedata(GPOUT,125)
    assign out_unnamed_sobel6_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel6_sobel_avm_writedata;

    // out_unnamed_sobel7_sobel_avm_address(GPOUT,126)
    assign out_unnamed_sobel7_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_address;

    // out_unnamed_sobel7_sobel_avm_burstcount(GPOUT,127)
    assign out_unnamed_sobel7_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_burstcount;

    // out_unnamed_sobel7_sobel_avm_byteenable(GPOUT,128)
    assign out_unnamed_sobel7_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_byteenable;

    // out_unnamed_sobel7_sobel_avm_enable(GPOUT,129)
    assign out_unnamed_sobel7_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_enable;

    // out_unnamed_sobel7_sobel_avm_read(GPOUT,130)
    assign out_unnamed_sobel7_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_read;

    // out_unnamed_sobel7_sobel_avm_write(GPOUT,131)
    assign out_unnamed_sobel7_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_write;

    // out_unnamed_sobel7_sobel_avm_writedata(GPOUT,132)
    assign out_unnamed_sobel7_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel7_sobel_avm_writedata;

    // out_unnamed_sobel8_sobel_avm_address(GPOUT,133)
    assign out_unnamed_sobel8_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_address;

    // out_unnamed_sobel8_sobel_avm_burstcount(GPOUT,134)
    assign out_unnamed_sobel8_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_burstcount;

    // out_unnamed_sobel8_sobel_avm_byteenable(GPOUT,135)
    assign out_unnamed_sobel8_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_byteenable;

    // out_unnamed_sobel8_sobel_avm_enable(GPOUT,136)
    assign out_unnamed_sobel8_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_enable;

    // out_unnamed_sobel8_sobel_avm_read(GPOUT,137)
    assign out_unnamed_sobel8_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_read;

    // out_unnamed_sobel8_sobel_avm_write(GPOUT,138)
    assign out_unnamed_sobel8_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_write;

    // out_unnamed_sobel8_sobel_avm_writedata(GPOUT,139)
    assign out_unnamed_sobel8_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel8_sobel_avm_writedata;

    // out_unnamed_sobel9_sobel_avm_address(GPOUT,140)
    assign out_unnamed_sobel9_sobel_avm_address = bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_address;

    // out_unnamed_sobel9_sobel_avm_burstcount(GPOUT,141)
    assign out_unnamed_sobel9_sobel_avm_burstcount = bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_burstcount;

    // out_unnamed_sobel9_sobel_avm_byteenable(GPOUT,142)
    assign out_unnamed_sobel9_sobel_avm_byteenable = bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_byteenable;

    // out_unnamed_sobel9_sobel_avm_enable(GPOUT,143)
    assign out_unnamed_sobel9_sobel_avm_enable = bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_enable;

    // out_unnamed_sobel9_sobel_avm_read(GPOUT,144)
    assign out_unnamed_sobel9_sobel_avm_read = bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_read;

    // out_unnamed_sobel9_sobel_avm_write(GPOUT,145)
    assign out_unnamed_sobel9_sobel_avm_write = bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_write;

    // out_unnamed_sobel9_sobel_avm_writedata(GPOUT,146)
    assign out_unnamed_sobel9_sobel_avm_writedata = bb_sobel_B3_aunroll_x_out_unnamed_sobel9_sobel_avm_writedata;

    // out_valid_out(GPOUT,147)
    assign out_valid_out = GND_q;

endmodule
