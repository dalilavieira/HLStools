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

// SystemVerilog created from sobel_filter_i_sfc_s_c0_in_for_body5_i_s_c0_enter29733_sobel_filter1
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_sfc_s_c0_in_for_body5_i_s_c0_enter29733_sobel_filter1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_lm1202_sobel_filter_avm_writeack,
    input wire [31:0] in_lm1223_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1223_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1223_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1223_sobel_filter_avm_writeack,
    input wire [31:0] in_lm1244_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1244_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1244_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1244_sobel_filter_avm_writeack,
    input wire [31:0] in_lm1265_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1265_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1265_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1265_sobel_filter_avm_writeack,
    input wire [31:0] in_lm1286_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1286_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1286_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1286_sobel_filter_avm_writeack,
    input wire [31:0] in_lm1307_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1307_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1307_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1307_sobel_filter_avm_writeack,
    input wire [31:0] in_lm1328_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1328_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1328_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1328_sobel_filter_avm_writeack,
    input wire [31:0] in_lm1_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1_sobel_filter_avm_writeack,
    input wire [31:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_lm1202_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1202_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1202_sobel_filter_avm_waitrequest,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out,
    output wire [31:0] out_lm1202_sobel_filter_avm_address,
    output wire [0:0] out_lm1202_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1202_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1202_sobel_filter_avm_enable,
    output wire [0:0] out_lm1202_sobel_filter_avm_read,
    output wire [0:0] out_lm1202_sobel_filter_avm_write,
    output wire [31:0] out_lm1202_sobel_filter_avm_writedata,
    output wire [31:0] out_lm1223_sobel_filter_avm_address,
    output wire [0:0] out_lm1223_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1223_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1223_sobel_filter_avm_enable,
    output wire [0:0] out_lm1223_sobel_filter_avm_read,
    output wire [0:0] out_lm1223_sobel_filter_avm_write,
    output wire [31:0] out_lm1223_sobel_filter_avm_writedata,
    output wire [31:0] out_lm1244_sobel_filter_avm_address,
    output wire [0:0] out_lm1244_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1244_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1244_sobel_filter_avm_enable,
    output wire [0:0] out_lm1244_sobel_filter_avm_read,
    output wire [0:0] out_lm1244_sobel_filter_avm_write,
    output wire [31:0] out_lm1244_sobel_filter_avm_writedata,
    output wire [31:0] out_lm1265_sobel_filter_avm_address,
    output wire [0:0] out_lm1265_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1265_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1265_sobel_filter_avm_enable,
    output wire [0:0] out_lm1265_sobel_filter_avm_read,
    output wire [0:0] out_lm1265_sobel_filter_avm_write,
    output wire [31:0] out_lm1265_sobel_filter_avm_writedata,
    output wire [31:0] out_lm1286_sobel_filter_avm_address,
    output wire [0:0] out_lm1286_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1286_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1286_sobel_filter_avm_enable,
    output wire [0:0] out_lm1286_sobel_filter_avm_read,
    output wire [0:0] out_lm1286_sobel_filter_avm_write,
    output wire [31:0] out_lm1286_sobel_filter_avm_writedata,
    output wire [31:0] out_lm1307_sobel_filter_avm_address,
    output wire [0:0] out_lm1307_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1307_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1307_sobel_filter_avm_enable,
    output wire [0:0] out_lm1307_sobel_filter_avm_read,
    output wire [0:0] out_lm1307_sobel_filter_avm_write,
    output wire [31:0] out_lm1307_sobel_filter_avm_writedata,
    output wire [31:0] out_lm1328_sobel_filter_avm_address,
    output wire [0:0] out_lm1328_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1328_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1328_sobel_filter_avm_enable,
    output wire [0:0] out_lm1328_sobel_filter_avm_read,
    output wire [0:0] out_lm1328_sobel_filter_avm_write,
    output wire [31:0] out_lm1328_sobel_filter_avm_writedata,
    output wire [31:0] out_lm1_sobel_filter_avm_address,
    output wire [0:0] out_lm1_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1_sobel_filter_avm_enable,
    output wire [0:0] out_lm1_sobel_filter_avm_read,
    output wire [0:0] out_lm1_sobel_filter_avm_write,
    output wire [31:0] out_lm1_sobel_filter_avm_writedata,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter10_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_writedata,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit307_0_tpl,
    output wire [31:0] out_c0_exit307_1_tpl,
    output wire [31:0] out_c0_exit307_2_tpl,
    output wire [31:0] out_c0_exit307_3_tpl,
    output wire [63:0] out_c0_exit307_4_tpl,
    output wire [31:0] out_c0_exit307_5_tpl,
    output wire [31:0] out_c0_exit307_6_tpl,
    output wire [31:0] out_c0_exit307_7_tpl,
    output wire [31:0] out_c0_exit307_8_tpl,
    output wire [31:0] out_c0_exit307_9_tpl,
    output wire [31:0] out_c0_exit307_10_tpl,
    output wire [0:0] out_c0_exit307_11_tpl,
    output wire [0:0] out_c0_exit307_12_tpl,
    output wire [0:0] out_c0_exit307_13_tpl,
    output wire [0:0] out_c0_exit307_14_tpl,
    output wire [0:0] out_c0_exit307_15_tpl,
    output wire [0:0] out_c0_exit307_16_tpl,
    output wire [0:0] out_c0_exit307_17_tpl,
    output wire [0:0] out_c0_exit307_18_tpl,
    output wire [0:0] out_c0_exit307_19_tpl,
    output wire [0:0] out_c0_exit307_20_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_12_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_13_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_14_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_18_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_3_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_4_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_6_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_8_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_9_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_12_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_13_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_14_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_15_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_17_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_18_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_19_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_20_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x(BLACKBOX,112)@58
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@61
    // out out_data_out_0_tpl@61
    // out out_data_out_1_tpl@61
    // out out_data_out_2_tpl@61
    // out out_data_out_3_tpl@61
    // out out_data_out_4_tpl@61
    // out out_data_out_5_tpl@61
    // out out_data_out_6_tpl@61
    // out out_data_out_7_tpl@61
    // out out_data_out_8_tpl@61
    // out out_data_out_9_tpl@61
    // out out_data_out_10_tpl@61
    // out out_data_out_11_tpl@61
    // out out_data_out_12_tpl@61
    // out out_data_out_13_tpl@61
    // out out_data_out_14_tpl@61
    // out out_data_out_15_tpl@61
    // out out_data_out_16_tpl@61
    // out out_data_out_17_tpl@61
    // out out_data_out_18_tpl@61
    // out out_data_out_19_tpl@61
    // out out_data_out_20_tpl@61
    sobel_filter_i_llvm_fpga_sfc_exit_s_c0_oA000000Zxit307_sobel_filter0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_20_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x(BLACKBOX,113)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out@20000000
    // out out_lm1202_sobel_filter_avm_address@20000000
    // out out_lm1202_sobel_filter_avm_burstcount@20000000
    // out out_lm1202_sobel_filter_avm_byteenable@20000000
    // out out_lm1202_sobel_filter_avm_enable@20000000
    // out out_lm1202_sobel_filter_avm_read@20000000
    // out out_lm1202_sobel_filter_avm_write@20000000
    // out out_lm1202_sobel_filter_avm_writedata@20000000
    // out out_lm1223_sobel_filter_avm_address@20000000
    // out out_lm1223_sobel_filter_avm_burstcount@20000000
    // out out_lm1223_sobel_filter_avm_byteenable@20000000
    // out out_lm1223_sobel_filter_avm_enable@20000000
    // out out_lm1223_sobel_filter_avm_read@20000000
    // out out_lm1223_sobel_filter_avm_write@20000000
    // out out_lm1223_sobel_filter_avm_writedata@20000000
    // out out_lm1244_sobel_filter_avm_address@20000000
    // out out_lm1244_sobel_filter_avm_burstcount@20000000
    // out out_lm1244_sobel_filter_avm_byteenable@20000000
    // out out_lm1244_sobel_filter_avm_enable@20000000
    // out out_lm1244_sobel_filter_avm_read@20000000
    // out out_lm1244_sobel_filter_avm_write@20000000
    // out out_lm1244_sobel_filter_avm_writedata@20000000
    // out out_lm1265_sobel_filter_avm_address@20000000
    // out out_lm1265_sobel_filter_avm_burstcount@20000000
    // out out_lm1265_sobel_filter_avm_byteenable@20000000
    // out out_lm1265_sobel_filter_avm_enable@20000000
    // out out_lm1265_sobel_filter_avm_read@20000000
    // out out_lm1265_sobel_filter_avm_write@20000000
    // out out_lm1265_sobel_filter_avm_writedata@20000000
    // out out_lm1286_sobel_filter_avm_address@20000000
    // out out_lm1286_sobel_filter_avm_burstcount@20000000
    // out out_lm1286_sobel_filter_avm_byteenable@20000000
    // out out_lm1286_sobel_filter_avm_enable@20000000
    // out out_lm1286_sobel_filter_avm_read@20000000
    // out out_lm1286_sobel_filter_avm_write@20000000
    // out out_lm1286_sobel_filter_avm_writedata@20000000
    // out out_lm1307_sobel_filter_avm_address@20000000
    // out out_lm1307_sobel_filter_avm_burstcount@20000000
    // out out_lm1307_sobel_filter_avm_byteenable@20000000
    // out out_lm1307_sobel_filter_avm_enable@20000000
    // out out_lm1307_sobel_filter_avm_read@20000000
    // out out_lm1307_sobel_filter_avm_write@20000000
    // out out_lm1307_sobel_filter_avm_writedata@20000000
    // out out_lm1328_sobel_filter_avm_address@20000000
    // out out_lm1328_sobel_filter_avm_burstcount@20000000
    // out out_lm1328_sobel_filter_avm_byteenable@20000000
    // out out_lm1328_sobel_filter_avm_enable@20000000
    // out out_lm1328_sobel_filter_avm_read@20000000
    // out out_lm1328_sobel_filter_avm_write@20000000
    // out out_lm1328_sobel_filter_avm_writedata@20000000
    // out out_lm1_sobel_filter_avm_address@20000000
    // out out_lm1_sobel_filter_avm_burstcount@20000000
    // out out_lm1_sobel_filter_avm_byteenable@20000000
    // out out_lm1_sobel_filter_avm_enable@20000000
    // out out_lm1_sobel_filter_avm_read@20000000
    // out out_lm1_sobel_filter_avm_write@20000000
    // out out_lm1_sobel_filter_avm_writedata@20000000
    // out out_o_valid@58
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_address@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_burstcount@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_byteenable@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_enable@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_read@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_write@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_writedata@20000000
    // out out_unnamed_sobel_filter3@58
    // out out_c0_exi15_0_tpl@58
    // out out_c0_exi15_1_tpl@58
    // out out_c0_exi15_2_tpl@58
    // out out_c0_exi15_3_tpl@58
    // out out_c0_exi15_4_tpl@58
    // out out_c0_exi15_5_tpl@58
    // out out_c0_exi15_6_tpl@58
    // out out_c0_exi15_7_tpl@58
    // out out_c0_exi15_8_tpl@58
    // out out_c0_exi15_9_tpl@58
    // out out_c0_exi15_10_tpl@58
    // out out_c0_exi15_11_tpl@58
    // out out_c0_exi15_12_tpl@58
    // out out_c0_exi15_13_tpl@58
    // out out_c0_exi15_14_tpl@58
    // out out_c0_exi15_15_tpl@58
    // out out_c0_exi15_16_tpl@58
    // out out_c0_exi15_17_tpl@58
    // out out_c0_exi15_18_tpl@58
    // out out_c0_exi15_19_tpl@58
    // out out_c0_exi15_20_tpl@58
    sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr29733_sobel_filter0 thei_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lm1202_sobel_filter_avm_readdata(in_lm1202_sobel_filter_avm_readdata),
        .in_lm1202_sobel_filter_avm_readdatavalid(in_lm1202_sobel_filter_avm_readdatavalid),
        .in_lm1202_sobel_filter_avm_waitrequest(in_lm1202_sobel_filter_avm_waitrequest),
        .in_lm1202_sobel_filter_avm_writeack(in_lm1202_sobel_filter_avm_writeack),
        .in_lm1223_sobel_filter_avm_readdata(in_lm1223_sobel_filter_avm_readdata),
        .in_lm1223_sobel_filter_avm_readdatavalid(in_lm1223_sobel_filter_avm_readdatavalid),
        .in_lm1223_sobel_filter_avm_waitrequest(in_lm1223_sobel_filter_avm_waitrequest),
        .in_lm1223_sobel_filter_avm_writeack(in_lm1223_sobel_filter_avm_writeack),
        .in_lm1244_sobel_filter_avm_readdata(in_lm1244_sobel_filter_avm_readdata),
        .in_lm1244_sobel_filter_avm_readdatavalid(in_lm1244_sobel_filter_avm_readdatavalid),
        .in_lm1244_sobel_filter_avm_waitrequest(in_lm1244_sobel_filter_avm_waitrequest),
        .in_lm1244_sobel_filter_avm_writeack(in_lm1244_sobel_filter_avm_writeack),
        .in_lm1265_sobel_filter_avm_readdata(in_lm1265_sobel_filter_avm_readdata),
        .in_lm1265_sobel_filter_avm_readdatavalid(in_lm1265_sobel_filter_avm_readdatavalid),
        .in_lm1265_sobel_filter_avm_waitrequest(in_lm1265_sobel_filter_avm_waitrequest),
        .in_lm1265_sobel_filter_avm_writeack(in_lm1265_sobel_filter_avm_writeack),
        .in_lm1286_sobel_filter_avm_readdata(in_lm1286_sobel_filter_avm_readdata),
        .in_lm1286_sobel_filter_avm_readdatavalid(in_lm1286_sobel_filter_avm_readdatavalid),
        .in_lm1286_sobel_filter_avm_waitrequest(in_lm1286_sobel_filter_avm_waitrequest),
        .in_lm1286_sobel_filter_avm_writeack(in_lm1286_sobel_filter_avm_writeack),
        .in_lm1307_sobel_filter_avm_readdata(in_lm1307_sobel_filter_avm_readdata),
        .in_lm1307_sobel_filter_avm_readdatavalid(in_lm1307_sobel_filter_avm_readdatavalid),
        .in_lm1307_sobel_filter_avm_waitrequest(in_lm1307_sobel_filter_avm_waitrequest),
        .in_lm1307_sobel_filter_avm_writeack(in_lm1307_sobel_filter_avm_writeack),
        .in_lm1328_sobel_filter_avm_readdata(in_lm1328_sobel_filter_avm_readdata),
        .in_lm1328_sobel_filter_avm_readdatavalid(in_lm1328_sobel_filter_avm_readdatavalid),
        .in_lm1328_sobel_filter_avm_waitrequest(in_lm1328_sobel_filter_avm_waitrequest),
        .in_lm1328_sobel_filter_avm_writeack(in_lm1328_sobel_filter_avm_writeack),
        .in_lm1_sobel_filter_avm_readdata(in_lm1_sobel_filter_avm_readdata),
        .in_lm1_sobel_filter_avm_readdatavalid(in_lm1_sobel_filter_avm_readdatavalid),
        .in_lm1_sobel_filter_avm_waitrequest(in_lm1_sobel_filter_avm_waitrequest),
        .in_lm1_sobel_filter_avm_writeack(in_lm1_sobel_filter_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdata(in_unnamed_sobel_filter10_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter10_sobel_filter_avm_writeack(in_unnamed_sobel_filter10_sobel_filter_avm_writeack),
        .in_c0_eni5_0_tpl(in_c0_eni5_0_tpl),
        .in_c0_eni5_1_tpl(in_c0_eni5_1_tpl),
        .in_c0_eni5_2_tpl(in_c0_eni5_2_tpl),
        .in_c0_eni5_3_tpl(in_c0_eni5_3_tpl),
        .in_c0_eni5_4_tpl(in_c0_eni5_4_tpl),
        .in_c0_eni5_5_tpl(in_c0_eni5_5_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out),
        .out_lm1202_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_address),
        .out_lm1202_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_burstcount),
        .out_lm1202_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_byteenable),
        .out_lm1202_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_enable),
        .out_lm1202_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_read),
        .out_lm1202_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_write),
        .out_lm1202_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_writedata),
        .out_lm1223_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_address),
        .out_lm1223_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_burstcount),
        .out_lm1223_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_byteenable),
        .out_lm1223_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_enable),
        .out_lm1223_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_read),
        .out_lm1223_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_write),
        .out_lm1223_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_writedata),
        .out_lm1244_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_address),
        .out_lm1244_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_burstcount),
        .out_lm1244_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_byteenable),
        .out_lm1244_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_enable),
        .out_lm1244_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_read),
        .out_lm1244_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_write),
        .out_lm1244_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_writedata),
        .out_lm1265_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_address),
        .out_lm1265_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_burstcount),
        .out_lm1265_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_byteenable),
        .out_lm1265_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_enable),
        .out_lm1265_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_read),
        .out_lm1265_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_write),
        .out_lm1265_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_writedata),
        .out_lm1286_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_address),
        .out_lm1286_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_burstcount),
        .out_lm1286_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_byteenable),
        .out_lm1286_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_enable),
        .out_lm1286_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_read),
        .out_lm1286_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_write),
        .out_lm1286_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_writedata),
        .out_lm1307_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_address),
        .out_lm1307_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_burstcount),
        .out_lm1307_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_byteenable),
        .out_lm1307_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_enable),
        .out_lm1307_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_read),
        .out_lm1307_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_write),
        .out_lm1307_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_writedata),
        .out_lm1328_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_address),
        .out_lm1328_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_burstcount),
        .out_lm1328_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_byteenable),
        .out_lm1328_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_enable),
        .out_lm1328_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_read),
        .out_lm1328_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_write),
        .out_lm1328_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_writedata),
        .out_lm1_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_address),
        .out_lm1_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_burstcount),
        .out_lm1_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_byteenable),
        .out_lm1_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_enable),
        .out_lm1_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_read),
        .out_lm1_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_write),
        .out_lm1_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_sobel_filter10_sobel_filter_avm_address(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address),
        .out_unnamed_sobel_filter10_sobel_filter_avm_burstcount(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter10_sobel_filter_avm_byteenable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_enable(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_read(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read),
        .out_unnamed_sobel_filter10_sobel_filter_avm_write(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write),
        .out_unnamed_sobel_filter10_sobel_filter_avm_writedata(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata),
        .out_unnamed_sobel_filter3(),
        .out_c0_exi15_0_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_0_tpl),
        .out_c0_exi15_1_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_1_tpl),
        .out_c0_exi15_2_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_2_tpl),
        .out_c0_exi15_3_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_3_tpl),
        .out_c0_exi15_4_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_4_tpl),
        .out_c0_exi15_5_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_5_tpl),
        .out_c0_exi15_6_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_6_tpl),
        .out_c0_exi15_7_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_7_tpl),
        .out_c0_exi15_8_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_8_tpl),
        .out_c0_exi15_9_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_9_tpl),
        .out_c0_exi15_10_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_10_tpl),
        .out_c0_exi15_11_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_11_tpl),
        .out_c0_exi15_12_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_12_tpl),
        .out_c0_exi15_13_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_13_tpl),
        .out_c0_exi15_14_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_14_tpl),
        .out_c0_exi15_15_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_15_tpl),
        .out_c0_exi15_16_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_16_tpl),
        .out_c0_exi15_17_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_17_tpl),
        .out_c0_exi15_18_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_18_tpl),
        .out_c0_exi15_19_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_19_tpl),
        .out_c0_exi15_20_tpl(i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_c0_exi15_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,45)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out;

    // sync_out(GPOUT,47)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,48)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,49)
    assign out_lm1202_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,50)
    assign out_lm1202_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,51)
    assign out_lm1202_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,52)
    assign out_lm1202_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,53)
    assign out_lm1202_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,54)
    assign out_lm1202_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,55)
    assign out_lm1202_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1202_sobel_filter_avm_writedata;

    // dupName_8_regfree_osync_x(GPOUT,56)
    assign out_lm1223_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_address;

    // dupName_9_regfree_osync_x(GPOUT,57)
    assign out_lm1223_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_burstcount;

    // dupName_10_regfree_osync_x(GPOUT,58)
    assign out_lm1223_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_byteenable;

    // dupName_11_regfree_osync_x(GPOUT,59)
    assign out_lm1223_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_enable;

    // dupName_12_regfree_osync_x(GPOUT,60)
    assign out_lm1223_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_read;

    // dupName_13_regfree_osync_x(GPOUT,61)
    assign out_lm1223_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_write;

    // dupName_14_regfree_osync_x(GPOUT,62)
    assign out_lm1223_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1223_sobel_filter_avm_writedata;

    // dupName_15_regfree_osync_x(GPOUT,63)
    assign out_lm1244_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_address;

    // dupName_16_regfree_osync_x(GPOUT,64)
    assign out_lm1244_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_burstcount;

    // dupName_17_regfree_osync_x(GPOUT,65)
    assign out_lm1244_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_byteenable;

    // dupName_18_regfree_osync_x(GPOUT,66)
    assign out_lm1244_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_enable;

    // dupName_19_regfree_osync_x(GPOUT,67)
    assign out_lm1244_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_read;

    // dupName_20_regfree_osync_x(GPOUT,68)
    assign out_lm1244_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_write;

    // dupName_21_regfree_osync_x(GPOUT,69)
    assign out_lm1244_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1244_sobel_filter_avm_writedata;

    // dupName_22_regfree_osync_x(GPOUT,70)
    assign out_lm1265_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_address;

    // dupName_23_regfree_osync_x(GPOUT,71)
    assign out_lm1265_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_burstcount;

    // dupName_24_regfree_osync_x(GPOUT,72)
    assign out_lm1265_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_byteenable;

    // dupName_25_regfree_osync_x(GPOUT,73)
    assign out_lm1265_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_enable;

    // dupName_26_regfree_osync_x(GPOUT,74)
    assign out_lm1265_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_read;

    // dupName_27_regfree_osync_x(GPOUT,75)
    assign out_lm1265_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_write;

    // dupName_28_regfree_osync_x(GPOUT,76)
    assign out_lm1265_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1265_sobel_filter_avm_writedata;

    // dupName_29_regfree_osync_x(GPOUT,77)
    assign out_lm1286_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_address;

    // dupName_30_regfree_osync_x(GPOUT,78)
    assign out_lm1286_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_burstcount;

    // dupName_31_regfree_osync_x(GPOUT,79)
    assign out_lm1286_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_byteenable;

    // dupName_32_regfree_osync_x(GPOUT,80)
    assign out_lm1286_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_enable;

    // dupName_33_regfree_osync_x(GPOUT,81)
    assign out_lm1286_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_read;

    // dupName_34_regfree_osync_x(GPOUT,82)
    assign out_lm1286_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_write;

    // dupName_35_regfree_osync_x(GPOUT,83)
    assign out_lm1286_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1286_sobel_filter_avm_writedata;

    // dupName_36_regfree_osync_x(GPOUT,84)
    assign out_lm1307_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_address;

    // dupName_37_regfree_osync_x(GPOUT,85)
    assign out_lm1307_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_burstcount;

    // dupName_38_regfree_osync_x(GPOUT,86)
    assign out_lm1307_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_byteenable;

    // dupName_39_regfree_osync_x(GPOUT,87)
    assign out_lm1307_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_enable;

    // dupName_40_regfree_osync_x(GPOUT,88)
    assign out_lm1307_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_read;

    // dupName_41_regfree_osync_x(GPOUT,89)
    assign out_lm1307_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_write;

    // dupName_42_regfree_osync_x(GPOUT,90)
    assign out_lm1307_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1307_sobel_filter_avm_writedata;

    // dupName_43_regfree_osync_x(GPOUT,91)
    assign out_lm1328_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_address;

    // dupName_44_regfree_osync_x(GPOUT,92)
    assign out_lm1328_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_burstcount;

    // dupName_45_regfree_osync_x(GPOUT,93)
    assign out_lm1328_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_byteenable;

    // dupName_46_regfree_osync_x(GPOUT,94)
    assign out_lm1328_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_enable;

    // dupName_47_regfree_osync_x(GPOUT,95)
    assign out_lm1328_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_read;

    // dupName_48_regfree_osync_x(GPOUT,96)
    assign out_lm1328_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_write;

    // dupName_49_regfree_osync_x(GPOUT,97)
    assign out_lm1328_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1328_sobel_filter_avm_writedata;

    // dupName_50_regfree_osync_x(GPOUT,98)
    assign out_lm1_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_address;

    // dupName_51_regfree_osync_x(GPOUT,99)
    assign out_lm1_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_burstcount;

    // dupName_52_regfree_osync_x(GPOUT,100)
    assign out_lm1_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_byteenable;

    // dupName_53_regfree_osync_x(GPOUT,101)
    assign out_lm1_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_enable;

    // dupName_54_regfree_osync_x(GPOUT,102)
    assign out_lm1_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_read;

    // dupName_55_regfree_osync_x(GPOUT,103)
    assign out_lm1_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_write;

    // dupName_56_regfree_osync_x(GPOUT,104)
    assign out_lm1_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_lm1_sobel_filter_avm_writedata;

    // dupName_57_regfree_osync_x(GPOUT,105)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_address = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address;

    // dupName_58_regfree_osync_x(GPOUT,106)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_burstcount = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;

    // dupName_59_regfree_osync_x(GPOUT,107)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_byteenable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;

    // dupName_60_regfree_osync_x(GPOUT,108)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_enable = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable;

    // dupName_61_regfree_osync_x(GPOUT,109)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_read = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read;

    // dupName_62_regfree_osync_x(GPOUT,110)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_write = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write;

    // dupName_63_regfree_osync_x(GPOUT,111)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_writedata = i_sfc_logic_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter0_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,115)@61
    assign out_c0_exit307_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit307_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit307_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit307_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit307_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit307_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit307_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit307_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit307_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit307_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit307_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit307_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit307_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit307_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit307_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit307_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit307_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit307_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit307_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit307_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit307_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_data_out_20_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter1_aunroll_x_out_valid_out;

endmodule
