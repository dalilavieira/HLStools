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

// SystemVerilog created from sobel_filter_bb_B8_stall_region
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B8_stall_region (
    input wire [31:0] in_lm1_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1_sobel_filter_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond45161_pop32199,
    input wire [0:0] in_forked156157_pop31195,
    input wire [0:0] in_forked175,
    input wire [0:0] in_memdep_phi_pop27192,
    input wire [0:0] in_notcmp131168_pop33203,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_lm1202_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1202_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1202_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1202_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_lm1_sobel_filter_avm_address,
    output wire [0:0] out_lm1_sobel_filter_avm_enable,
    output wire [0:0] out_lm1_sobel_filter_avm_read,
    output wire [0:0] out_lm1_sobel_filter_avm_write,
    output wire [31:0] out_lm1_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1_sobel_filter_avm_burstcount,
    input wire [31:0] in_lm1223_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1223_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1223_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1223_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_lm1202_sobel_filter_avm_address,
    output wire [0:0] out_lm1202_sobel_filter_avm_enable,
    output wire [0:0] out_lm1202_sobel_filter_avm_read,
    output wire [0:0] out_lm1202_sobel_filter_avm_write,
    output wire [31:0] out_lm1202_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1202_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1202_sobel_filter_avm_burstcount,
    input wire [31:0] in_lm1244_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1244_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1244_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1244_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_lm1223_sobel_filter_avm_address,
    output wire [0:0] out_lm1223_sobel_filter_avm_enable,
    output wire [0:0] out_lm1223_sobel_filter_avm_read,
    output wire [0:0] out_lm1223_sobel_filter_avm_write,
    output wire [31:0] out_lm1223_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1223_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1223_sobel_filter_avm_burstcount,
    input wire [31:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_writeack,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_lm1244_sobel_filter_avm_address,
    output wire [0:0] out_lm1244_sobel_filter_avm_enable,
    output wire [0:0] out_lm1244_sobel_filter_avm_read,
    output wire [0:0] out_lm1244_sobel_filter_avm_write,
    output wire [31:0] out_lm1244_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1244_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1244_sobel_filter_avm_burstcount,
    input wire [31:0] in_lm1265_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1265_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1265_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1265_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_writedata,
    output wire [3:0] out_unnamed_sobel_filter10_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_burstcount,
    input wire [31:0] in_lm1286_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1286_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1286_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1286_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_lm1265_sobel_filter_avm_address,
    output wire [0:0] out_lm1265_sobel_filter_avm_enable,
    output wire [0:0] out_lm1265_sobel_filter_avm_read,
    output wire [0:0] out_lm1265_sobel_filter_avm_write,
    output wire [31:0] out_lm1265_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1265_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1265_sobel_filter_avm_burstcount,
    input wire [31:0] in_lm1307_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1307_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1307_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1307_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_lm1286_sobel_filter_avm_address,
    output wire [0:0] out_lm1286_sobel_filter_avm_enable,
    output wire [0:0] out_lm1286_sobel_filter_avm_read,
    output wire [0:0] out_lm1286_sobel_filter_avm_write,
    output wire [31:0] out_lm1286_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1286_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1286_sobel_filter_avm_burstcount,
    input wire [31:0] in_lm1328_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1328_sobel_filter_avm_writeack,
    input wire [0:0] in_lm1328_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1328_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_lm1307_sobel_filter_avm_address,
    output wire [0:0] out_lm1307_sobel_filter_avm_enable,
    output wire [0:0] out_lm1307_sobel_filter_avm_read,
    output wire [0:0] out_lm1307_sobel_filter_avm_write,
    output wire [31:0] out_lm1307_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1307_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1307_sobel_filter_avm_burstcount,
    output wire [31:0] out_lm1328_sobel_filter_avm_address,
    output wire [0:0] out_lm1328_sobel_filter_avm_enable,
    output wire [0:0] out_lm1328_sobel_filter_avm_read,
    output wire [0:0] out_lm1328_sobel_filter_avm_write,
    output wire [31:0] out_lm1328_sobel_filter_avm_writedata,
    output wire [3:0] out_lm1328_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1328_sobel_filter_avm_burstcount,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [31:0] out_c0_exe1308,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [31:0] out_c0_exe2309,
    output wire [31:0] out_c0_exe3310,
    output wire [63:0] out_c0_exe4311,
    output wire [31:0] out_c0_exe5312_0_tpl,
    output wire [31:0] out_c0_exe5312_1_tpl,
    output wire [31:0] out_c0_exe5312_2_tpl,
    output wire [31:0] out_c0_exe5312_3_tpl,
    output wire [31:0] out_c0_exe5312_4_tpl,
    output wire [31:0] out_c0_exe5312_5_tpl,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_20_tpl;
    wire [0:0] sobel_filter_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] sobel_filter_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] sobel_filter_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] sobel_filter_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] sobel_filter_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] sobel_filter_B8_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] sobel_filter_B8_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [4:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [360:0] bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_t;
    wire [4:0] bubble_join_sobel_filter_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_sobel_filter_B8_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_sobel_filter_B8_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_sobel_filter_B8_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_sobel_filter_B8_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_sobel_filter_B8_merge_reg_aunroll_x_f;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_V0;
    wire [0:0] SE_out_sobel_filter_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_sobel_filter_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_sobel_filter_B8_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,41)
    assign bubble_join_stall_entry_q = {in_notcmp131168_pop33203, in_memdep_phi_pop27192, in_forked175, in_forked156157_pop31195, in_exitcond45161_pop32199};

    // bubble_select_stall_entry(BITSELECT,42)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);

    // SE_stall_entry(STALLENABLE,51)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = sobel_filter_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sobel_filter_B8_merge_reg_aunroll_x(BLACKBOX,38)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    sobel_filter_B8_merge_reg thesobel_filter_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_sobel_filter_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_b),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .out_stall_out(sobel_filter_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(sobel_filter_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(sobel_filter_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(sobel_filter_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(sobel_filter_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(sobel_filter_B8_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(sobel_filter_B8_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_sobel_filter_B8_merge_reg_aunroll_x(BITJOIN,49)
    assign bubble_join_sobel_filter_B8_merge_reg_aunroll_x_q = {sobel_filter_B8_merge_reg_aunroll_x_out_data_out_4_tpl, sobel_filter_B8_merge_reg_aunroll_x_out_data_out_3_tpl, sobel_filter_B8_merge_reg_aunroll_x_out_data_out_2_tpl, sobel_filter_B8_merge_reg_aunroll_x_out_data_out_1_tpl, sobel_filter_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_sobel_filter_B8_merge_reg_aunroll_x(BITSELECT,50)
    assign bubble_select_sobel_filter_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_sobel_filter_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_sobel_filter_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_sobel_filter_B8_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_sobel_filter_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_sobel_filter_B8_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_sobel_filter_B8_merge_reg_aunroll_x_e = $unsigned(bubble_join_sobel_filter_B8_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_sobel_filter_B8_merge_reg_aunroll_x_f = $unsigned(bubble_join_sobel_filter_B8_merge_reg_aunroll_x_q[4:4]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_sobel_filter_B8_merge_reg_aunroll_x(STALLENABLE,56)
    // Valid signal propagation
    assign SE_out_sobel_filter_B8_merge_reg_aunroll_x_V0 = SE_out_sobel_filter_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_sobel_filter_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_o_stall | ~ (SE_out_sobel_filter_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_sobel_filter_B8_merge_reg_aunroll_x_wireValid = sobel_filter_B8_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x(BLACKBOX,37)@1
    // in in_i_stall@20000000
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
    // out out_o_stall@20000000
    // out out_o_valid@61
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_address@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_burstcount@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_byteenable@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_enable@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_read@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_write@20000000
    // out out_unnamed_sobel_filter10_sobel_filter_avm_writedata@20000000
    // out out_c0_exit307_0_tpl@61
    // out out_c0_exit307_1_tpl@61
    // out out_c0_exit307_2_tpl@61
    // out out_c0_exit307_3_tpl@61
    // out out_c0_exit307_4_tpl@61
    // out out_c0_exit307_5_tpl@61
    // out out_c0_exit307_6_tpl@61
    // out out_c0_exit307_7_tpl@61
    // out out_c0_exit307_8_tpl@61
    // out out_c0_exit307_9_tpl@61
    // out out_c0_exit307_10_tpl@61
    // out out_c0_exit307_11_tpl@61
    // out out_c0_exit307_12_tpl@61
    // out out_c0_exit307_13_tpl@61
    // out out_c0_exit307_14_tpl@61
    // out out_c0_exit307_15_tpl@61
    // out out_c0_exit307_16_tpl@61
    // out out_c0_exit307_17_tpl@61
    // out out_c0_exit307_18_tpl@61
    // out out_c0_exit307_19_tpl@61
    // out out_c0_exit307_20_tpl@61
    sobel_filter_i_sfc_s_c0_in_for_body5_i_s_c0_enter29733_sobel_filter1 thei_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_backStall),
        .in_i_valid(SE_out_sobel_filter_B8_merge_reg_aunroll_x_V0),
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
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_sobel_filter_B8_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_sobel_filter_B8_merge_reg_aunroll_x_d),
        .in_c0_eni5_3_tpl(bubble_select_sobel_filter_B8_merge_reg_aunroll_x_e),
        .in_c0_eni5_4_tpl(bubble_select_sobel_filter_B8_merge_reg_aunroll_x_f),
        .in_c0_eni5_5_tpl(bubble_select_sobel_filter_B8_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out),
        .out_lm1202_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_address),
        .out_lm1202_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_burstcount),
        .out_lm1202_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_byteenable),
        .out_lm1202_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_enable),
        .out_lm1202_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_read),
        .out_lm1202_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_write),
        .out_lm1202_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_writedata),
        .out_lm1223_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_address),
        .out_lm1223_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_burstcount),
        .out_lm1223_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_byteenable),
        .out_lm1223_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_enable),
        .out_lm1223_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_read),
        .out_lm1223_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_write),
        .out_lm1223_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_writedata),
        .out_lm1244_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_address),
        .out_lm1244_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_burstcount),
        .out_lm1244_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_byteenable),
        .out_lm1244_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_enable),
        .out_lm1244_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_read),
        .out_lm1244_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_write),
        .out_lm1244_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_writedata),
        .out_lm1265_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_address),
        .out_lm1265_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_burstcount),
        .out_lm1265_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_byteenable),
        .out_lm1265_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_enable),
        .out_lm1265_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_read),
        .out_lm1265_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_write),
        .out_lm1265_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_writedata),
        .out_lm1286_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_address),
        .out_lm1286_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_burstcount),
        .out_lm1286_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_byteenable),
        .out_lm1286_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_enable),
        .out_lm1286_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_read),
        .out_lm1286_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_write),
        .out_lm1286_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_writedata),
        .out_lm1307_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_address),
        .out_lm1307_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_burstcount),
        .out_lm1307_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_byteenable),
        .out_lm1307_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_enable),
        .out_lm1307_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_read),
        .out_lm1307_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_write),
        .out_lm1307_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_writedata),
        .out_lm1328_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_address),
        .out_lm1328_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_burstcount),
        .out_lm1328_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_byteenable),
        .out_lm1328_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_enable),
        .out_lm1328_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_read),
        .out_lm1328_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_write),
        .out_lm1328_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_writedata),
        .out_lm1_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_address),
        .out_lm1_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_burstcount),
        .out_lm1_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_byteenable),
        .out_lm1_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_enable),
        .out_lm1_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_read),
        .out_lm1_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_write),
        .out_lm1_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_sobel_filter10_sobel_filter_avm_address(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address),
        .out_unnamed_sobel_filter10_sobel_filter_avm_burstcount(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter10_sobel_filter_avm_byteenable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_enable(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_read(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read),
        .out_unnamed_sobel_filter10_sobel_filter_avm_write(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write),
        .out_unnamed_sobel_filter10_sobel_filter_avm_writedata(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata),
        .out_c0_exit307_0_tpl(),
        .out_c0_exit307_1_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_1_tpl),
        .out_c0_exit307_2_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_2_tpl),
        .out_c0_exit307_3_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_3_tpl),
        .out_c0_exit307_4_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_4_tpl),
        .out_c0_exit307_5_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_5_tpl),
        .out_c0_exit307_6_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_6_tpl),
        .out_c0_exit307_7_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_7_tpl),
        .out_c0_exit307_8_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_8_tpl),
        .out_c0_exit307_9_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_9_tpl),
        .out_c0_exit307_10_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_10_tpl),
        .out_c0_exit307_11_tpl(),
        .out_c0_exit307_12_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_12_tpl),
        .out_c0_exit307_13_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_13_tpl),
        .out_c0_exit307_14_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_14_tpl),
        .out_c0_exit307_15_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_15_tpl),
        .out_c0_exit307_16_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_16_tpl),
        .out_c0_exit307_17_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_17_tpl),
        .out_c0_exit307_18_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_18_tpl),
        .out_c0_exit307_19_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_19_tpl),
        .out_c0_exit307_20_tpl(i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_lm1_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_address;
    assign out_lm1_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_enable;
    assign out_lm1_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_read;
    assign out_lm1_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_write;
    assign out_lm1_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_writedata;
    assign out_lm1_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_byteenable;
    assign out_lm1_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1_sobel_filter_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,23)
    assign out_lm1202_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_address;
    assign out_lm1202_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_enable;
    assign out_lm1202_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_read;
    assign out_lm1202_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_write;
    assign out_lm1202_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_writedata;
    assign out_lm1202_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_byteenable;
    assign out_lm1202_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1202_sobel_filter_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,25)
    assign out_lm1223_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_address;
    assign out_lm1223_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_enable;
    assign out_lm1223_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_read;
    assign out_lm1223_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_write;
    assign out_lm1223_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_writedata;
    assign out_lm1223_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_byteenable;
    assign out_lm1223_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1223_sobel_filter_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,27)
    assign out_lm1244_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_address;
    assign out_lm1244_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_enable;
    assign out_lm1244_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_read;
    assign out_lm1244_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_write;
    assign out_lm1244_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_writedata;
    assign out_lm1244_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_byteenable;
    assign out_lm1244_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1244_sobel_filter_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,29)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address;
    assign out_unnamed_sobel_filter10_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable;
    assign out_unnamed_sobel_filter10_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read;
    assign out_unnamed_sobel_filter10_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write;
    assign out_unnamed_sobel_filter10_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;
    assign out_unnamed_sobel_filter10_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;
    assign out_unnamed_sobel_filter10_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,31)
    assign out_lm1265_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_address;
    assign out_lm1265_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_enable;
    assign out_lm1265_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_read;
    assign out_lm1265_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_write;
    assign out_lm1265_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_writedata;
    assign out_lm1265_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_byteenable;
    assign out_lm1265_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1265_sobel_filter_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,33)
    assign out_lm1286_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_address;
    assign out_lm1286_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_enable;
    assign out_lm1286_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_read;
    assign out_lm1286_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_write;
    assign out_lm1286_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_writedata;
    assign out_lm1286_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_byteenable;
    assign out_lm1286_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1286_sobel_filter_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,35)
    assign out_lm1307_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_address;
    assign out_lm1307_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_enable;
    assign out_lm1307_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_read;
    assign out_lm1307_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_write;
    assign out_lm1307_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_writedata;
    assign out_lm1307_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_byteenable;
    assign out_lm1307_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1307_sobel_filter_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,36)
    assign out_lm1328_sobel_filter_avm_address = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_address;
    assign out_lm1328_sobel_filter_avm_enable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_enable;
    assign out_lm1328_sobel_filter_avm_read = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_read;
    assign out_lm1328_sobel_filter_avm_write = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_write;
    assign out_lm1328_sobel_filter_avm_writedata = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_writedata;
    assign out_lm1328_sobel_filter_avm_byteenable = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_byteenable;
    assign out_lm1328_sobel_filter_avm_burstcount = i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_lm1328_sobel_filter_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x(BITJOIN,45)
    assign bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q = {i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_20_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_19_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_18_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_17_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_16_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_15_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_14_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_13_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_12_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_10_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_9_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_8_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_7_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_6_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_5_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_4_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_3_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_2_tpl, i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_out_c0_exit307_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x(BITSELECT,46)
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[159:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[319:288]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[351:320]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[352:352]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[353:353]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[354:354]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[355:355]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[356:356]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[357:357]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[358:358]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[359:359]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q[360:360]);

    // dupName_0_sync_out_aunroll_x(GPOUT,39)@61
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_o;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_p;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_q;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_r;
    assign out_c0_exe1308 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_b;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_s;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_t;
    assign out_c0_exe2309 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_c;
    assign out_c0_exe3310 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_d;
    assign out_c0_exe4311 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_e;
    assign out_c0_exe5312_0_tpl = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_f;
    assign out_c0_exe5312_1_tpl = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_g;
    assign out_c0_exe5312_2_tpl = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_h;
    assign out_c0_exe5312_3_tpl = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_i;
    assign out_c0_exe5312_4_tpl = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_j;
    assign out_c0_exe5312_5_tpl = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_k;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_l;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_m;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_n;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body5_i_sobel_filters_c0_enter29733_sobel_filter1_aunroll_x_V0;

endmodule
