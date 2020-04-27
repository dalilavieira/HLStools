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

// SystemVerilog created from sobel_filter_bb_B8
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B8 (
    input wire [0:0] in_exitcond45161_pop32199_0,
    input wire [0:0] in_exitcond45161_pop32199_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked156157_pop31195_0,
    input wire [0:0] in_forked156157_pop31195_1,
    input wire [0:0] in_forked175_0,
    input wire [0:0] in_forked175_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_lm1202_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1202_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1202_sobel_filter_avm_waitrequest,
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
    input wire [0:0] in_memdep_phi_pop27192_0,
    input wire [0:0] in_memdep_phi_pop27192_1,
    input wire [0:0] in_notcmp131168_pop33203_0,
    input wire [0:0] in_notcmp131168_pop33203_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
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
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter10_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_c0_exe5312_0_tpl,
    output wire [31:0] out_c0_exe5312_1_tpl,
    output wire [31:0] out_c0_exe5312_2_tpl,
    output wire [31:0] out_c0_exe5312_3_tpl,
    output wire [31:0] out_c0_exe5312_4_tpl,
    output wire [31:0] out_c0_exe5312_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe10;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe11;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe12;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe13;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe1308;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe14;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe15;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe2309;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe3310;
    wire [63:0] bb_sobel_filter_B8_stall_region_out_c0_exe4311;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe7;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe8;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_c0_exe9;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_stall_out;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B8_stall_region_out_valid_out;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe5312_0_tpl;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe5312_1_tpl;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe5312_2_tpl;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe5312_3_tpl;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe5312_4_tpl;
    wire [31:0] bb_sobel_filter_B8_stall_region_out_c0_exe5312_5_tpl;
    wire [0:0] sobel_filter_B8_merge_out_exitcond45161_pop32199;
    wire [0:0] sobel_filter_B8_merge_out_forked156157_pop31195;
    wire [0:0] sobel_filter_B8_merge_out_forked175;
    wire [0:0] sobel_filter_B8_merge_out_memdep_phi_pop27192;
    wire [0:0] sobel_filter_B8_merge_out_notcmp131168_pop33203;
    wire [0:0] sobel_filter_B8_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B8_merge_out_stall_out_1;
    wire [0:0] sobel_filter_B8_merge_out_valid_out;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe10;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe11;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe12;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe13;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe1308;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe14;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe15;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe2309;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe3310;
    wire [63:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe4311;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe7;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe8;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe9;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_stall_out;
    wire [0:0] sobel_filter_B8_branch_aunroll_x_out_valid_out_0;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_0_tpl;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_1_tpl;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_2_tpl;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_3_tpl;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_4_tpl;
    wire [31:0] sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_5_tpl;


    // sobel_filter_B8_branch_aunroll_x(BLACKBOX,144)
    sobel_filter_B8_branch thesobel_filter_B8_branch_aunroll_x (
        .in_c0_exe10(bb_sobel_filter_B8_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_sobel_filter_B8_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_sobel_filter_B8_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_sobel_filter_B8_stall_region_out_c0_exe13),
        .in_c0_exe1308(bb_sobel_filter_B8_stall_region_out_c0_exe1308),
        .in_c0_exe14(bb_sobel_filter_B8_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_sobel_filter_B8_stall_region_out_c0_exe15),
        .in_c0_exe2309(bb_sobel_filter_B8_stall_region_out_c0_exe2309),
        .in_c0_exe3310(bb_sobel_filter_B8_stall_region_out_c0_exe3310),
        .in_c0_exe4311(bb_sobel_filter_B8_stall_region_out_c0_exe4311),
        .in_c0_exe7(bb_sobel_filter_B8_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_sobel_filter_B8_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_sobel_filter_B8_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_sobel_filter_B8_stall_region_out_valid_out),
        .in_c0_exe5312_0_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_0_tpl),
        .in_c0_exe5312_1_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_1_tpl),
        .in_c0_exe5312_2_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_2_tpl),
        .in_c0_exe5312_3_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_3_tpl),
        .in_c0_exe5312_4_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_4_tpl),
        .in_c0_exe5312_5_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_5_tpl),
        .out_c0_exe10(sobel_filter_B8_branch_aunroll_x_out_c0_exe10),
        .out_c0_exe11(sobel_filter_B8_branch_aunroll_x_out_c0_exe11),
        .out_c0_exe12(sobel_filter_B8_branch_aunroll_x_out_c0_exe12),
        .out_c0_exe13(sobel_filter_B8_branch_aunroll_x_out_c0_exe13),
        .out_c0_exe1308(sobel_filter_B8_branch_aunroll_x_out_c0_exe1308),
        .out_c0_exe14(sobel_filter_B8_branch_aunroll_x_out_c0_exe14),
        .out_c0_exe15(sobel_filter_B8_branch_aunroll_x_out_c0_exe15),
        .out_c0_exe2309(sobel_filter_B8_branch_aunroll_x_out_c0_exe2309),
        .out_c0_exe3310(sobel_filter_B8_branch_aunroll_x_out_c0_exe3310),
        .out_c0_exe4311(sobel_filter_B8_branch_aunroll_x_out_c0_exe4311),
        .out_c0_exe7(sobel_filter_B8_branch_aunroll_x_out_c0_exe7),
        .out_c0_exe8(sobel_filter_B8_branch_aunroll_x_out_c0_exe8),
        .out_c0_exe9(sobel_filter_B8_branch_aunroll_x_out_c0_exe9),
        .out_stall_out(sobel_filter_B8_branch_aunroll_x_out_stall_out),
        .out_valid_out_0(sobel_filter_B8_branch_aunroll_x_out_valid_out_0),
        .out_c0_exe5312_0_tpl(sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_0_tpl),
        .out_c0_exe5312_1_tpl(sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_1_tpl),
        .out_c0_exe5312_2_tpl(sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_2_tpl),
        .out_c0_exe5312_3_tpl(sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_3_tpl),
        .out_c0_exe5312_4_tpl(sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_4_tpl),
        .out_c0_exe5312_5_tpl(sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B8_merge(BLACKBOX,56)
    sobel_filter_B8_merge thesobel_filter_B8_merge (
        .in_exitcond45161_pop32199_0(in_exitcond45161_pop32199_0),
        .in_exitcond45161_pop32199_1(in_exitcond45161_pop32199_1),
        .in_forked156157_pop31195_0(in_forked156157_pop31195_0),
        .in_forked156157_pop31195_1(in_forked156157_pop31195_1),
        .in_forked175_0(in_forked175_0),
        .in_forked175_1(in_forked175_1),
        .in_memdep_phi_pop27192_0(in_memdep_phi_pop27192_0),
        .in_memdep_phi_pop27192_1(in_memdep_phi_pop27192_1),
        .in_notcmp131168_pop33203_0(in_notcmp131168_pop33203_0),
        .in_notcmp131168_pop33203_1(in_notcmp131168_pop33203_1),
        .in_stall_in(bb_sobel_filter_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond45161_pop32199(sobel_filter_B8_merge_out_exitcond45161_pop32199),
        .out_forked156157_pop31195(sobel_filter_B8_merge_out_forked156157_pop31195),
        .out_forked175(sobel_filter_B8_merge_out_forked175),
        .out_memdep_phi_pop27192(sobel_filter_B8_merge_out_memdep_phi_pop27192),
        .out_notcmp131168_pop33203(sobel_filter_B8_merge_out_notcmp131168_pop33203),
        .out_stall_out_0(sobel_filter_B8_merge_out_stall_out_0),
        .out_stall_out_1(sobel_filter_B8_merge_out_stall_out_1),
        .out_valid_out(sobel_filter_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B8_stall_region(BLACKBOX,2)
    sobel_filter_bb_B8_stall_region thebb_sobel_filter_B8_stall_region (
        .in_exitcond45161_pop32199(sobel_filter_B8_merge_out_exitcond45161_pop32199),
        .in_flush(in_flush),
        .in_forked156157_pop31195(sobel_filter_B8_merge_out_forked156157_pop31195),
        .in_forked175(sobel_filter_B8_merge_out_forked175),
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
        .in_memdep_phi_pop27192(sobel_filter_B8_merge_out_memdep_phi_pop27192),
        .in_notcmp131168_pop33203(sobel_filter_B8_merge_out_notcmp131168_pop33203),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_filter_B8_branch_aunroll_x_out_stall_out),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdata(in_unnamed_sobel_filter10_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter10_sobel_filter_avm_writeack(in_unnamed_sobel_filter10_sobel_filter_avm_writeack),
        .in_valid_in(sobel_filter_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out(bb_sobel_filter_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out(bb_sobel_filter_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out),
        .out_c0_exe10(bb_sobel_filter_B8_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_sobel_filter_B8_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_sobel_filter_B8_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_sobel_filter_B8_stall_region_out_c0_exe13),
        .out_c0_exe1308(bb_sobel_filter_B8_stall_region_out_c0_exe1308),
        .out_c0_exe14(bb_sobel_filter_B8_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_sobel_filter_B8_stall_region_out_c0_exe15),
        .out_c0_exe2309(bb_sobel_filter_B8_stall_region_out_c0_exe2309),
        .out_c0_exe3310(bb_sobel_filter_B8_stall_region_out_c0_exe3310),
        .out_c0_exe4311(bb_sobel_filter_B8_stall_region_out_c0_exe4311),
        .out_c0_exe7(bb_sobel_filter_B8_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_sobel_filter_B8_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_sobel_filter_B8_stall_region_out_c0_exe9),
        .out_lm1202_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_address),
        .out_lm1202_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_burstcount),
        .out_lm1202_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_byteenable),
        .out_lm1202_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_enable),
        .out_lm1202_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_read),
        .out_lm1202_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_write),
        .out_lm1202_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_writedata),
        .out_lm1223_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_address),
        .out_lm1223_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_burstcount),
        .out_lm1223_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_byteenable),
        .out_lm1223_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_enable),
        .out_lm1223_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_read),
        .out_lm1223_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_write),
        .out_lm1223_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_writedata),
        .out_lm1244_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_address),
        .out_lm1244_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_burstcount),
        .out_lm1244_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_byteenable),
        .out_lm1244_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_enable),
        .out_lm1244_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_read),
        .out_lm1244_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_write),
        .out_lm1244_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_writedata),
        .out_lm1265_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_address),
        .out_lm1265_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_burstcount),
        .out_lm1265_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_byteenable),
        .out_lm1265_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_enable),
        .out_lm1265_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_read),
        .out_lm1265_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_write),
        .out_lm1265_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_writedata),
        .out_lm1286_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_address),
        .out_lm1286_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_burstcount),
        .out_lm1286_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_byteenable),
        .out_lm1286_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_enable),
        .out_lm1286_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_read),
        .out_lm1286_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_write),
        .out_lm1286_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_writedata),
        .out_lm1307_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_address),
        .out_lm1307_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_burstcount),
        .out_lm1307_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_byteenable),
        .out_lm1307_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_enable),
        .out_lm1307_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_read),
        .out_lm1307_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_write),
        .out_lm1307_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_writedata),
        .out_lm1328_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_address),
        .out_lm1328_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_burstcount),
        .out_lm1328_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_byteenable),
        .out_lm1328_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_enable),
        .out_lm1328_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_read),
        .out_lm1328_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_write),
        .out_lm1328_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_writedata),
        .out_lm1_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_address),
        .out_lm1_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_burstcount),
        .out_lm1_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_byteenable),
        .out_lm1_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_enable),
        .out_lm1_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_read),
        .out_lm1_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_write),
        .out_lm1_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_writedata),
        .out_pipeline_valid_out(bb_sobel_filter_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_filter_B8_stall_region_out_stall_out),
        .out_unnamed_sobel_filter10_sobel_filter_avm_address(bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_address),
        .out_unnamed_sobel_filter10_sobel_filter_avm_burstcount(bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter10_sobel_filter_avm_byteenable(bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_enable(bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_read(bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_read),
        .out_unnamed_sobel_filter10_sobel_filter_avm_write(bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_write),
        .out_unnamed_sobel_filter10_sobel_filter_avm_writedata(bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_writedata),
        .out_valid_out(bb_sobel_filter_B8_stall_region_out_valid_out),
        .out_c0_exe5312_0_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_0_tpl),
        .out_c0_exe5312_1_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_1_tpl),
        .out_c0_exe5312_2_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_2_tpl),
        .out_c0_exe5312_3_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_3_tpl),
        .out_c0_exe5312_4_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_4_tpl),
        .out_c0_exe5312_5_tpl(bb_sobel_filter_B8_stall_region_out_c0_exe5312_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,55)
    assign out_pipeline_valid_out = bb_sobel_filter_B8_stall_region_out_pipeline_valid_out;

    // out_c0_exe10(GPOUT,57)
    assign out_c0_exe10 = sobel_filter_B8_branch_aunroll_x_out_c0_exe10;

    // out_c0_exe11(GPOUT,58)
    assign out_c0_exe11 = sobel_filter_B8_branch_aunroll_x_out_c0_exe11;

    // out_c0_exe12(GPOUT,59)
    assign out_c0_exe12 = sobel_filter_B8_branch_aunroll_x_out_c0_exe12;

    // out_c0_exe13(GPOUT,60)
    assign out_c0_exe13 = sobel_filter_B8_branch_aunroll_x_out_c0_exe13;

    // out_c0_exe1308(GPOUT,61)
    assign out_c0_exe1308 = sobel_filter_B8_branch_aunroll_x_out_c0_exe1308;

    // out_c0_exe14(GPOUT,62)
    assign out_c0_exe14 = sobel_filter_B8_branch_aunroll_x_out_c0_exe14;

    // out_c0_exe15(GPOUT,63)
    assign out_c0_exe15 = sobel_filter_B8_branch_aunroll_x_out_c0_exe15;

    // out_c0_exe2309(GPOUT,64)
    assign out_c0_exe2309 = sobel_filter_B8_branch_aunroll_x_out_c0_exe2309;

    // out_c0_exe3310(GPOUT,65)
    assign out_c0_exe3310 = sobel_filter_B8_branch_aunroll_x_out_c0_exe3310;

    // out_c0_exe4311(GPOUT,66)
    assign out_c0_exe4311 = sobel_filter_B8_branch_aunroll_x_out_c0_exe4311;

    // out_c0_exe7(GPOUT,67)
    assign out_c0_exe7 = sobel_filter_B8_branch_aunroll_x_out_c0_exe7;

    // out_c0_exe8(GPOUT,68)
    assign out_c0_exe8 = sobel_filter_B8_branch_aunroll_x_out_c0_exe8;

    // out_c0_exe9(GPOUT,69)
    assign out_c0_exe9 = sobel_filter_B8_branch_aunroll_x_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,70)
    assign out_exiting_stall_out = bb_sobel_filter_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,71)
    assign out_exiting_valid_out = bb_sobel_filter_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going112_sobel_filter2_exiting_valid_out;

    // out_lm1202_sobel_filter_avm_address(GPOUT,72)
    assign out_lm1202_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_address;

    // out_lm1202_sobel_filter_avm_burstcount(GPOUT,73)
    assign out_lm1202_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_burstcount;

    // out_lm1202_sobel_filter_avm_byteenable(GPOUT,74)
    assign out_lm1202_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_byteenable;

    // out_lm1202_sobel_filter_avm_enable(GPOUT,75)
    assign out_lm1202_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_enable;

    // out_lm1202_sobel_filter_avm_read(GPOUT,76)
    assign out_lm1202_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_read;

    // out_lm1202_sobel_filter_avm_write(GPOUT,77)
    assign out_lm1202_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_write;

    // out_lm1202_sobel_filter_avm_writedata(GPOUT,78)
    assign out_lm1202_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1202_sobel_filter_avm_writedata;

    // out_lm1223_sobel_filter_avm_address(GPOUT,79)
    assign out_lm1223_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_address;

    // out_lm1223_sobel_filter_avm_burstcount(GPOUT,80)
    assign out_lm1223_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_burstcount;

    // out_lm1223_sobel_filter_avm_byteenable(GPOUT,81)
    assign out_lm1223_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_byteenable;

    // out_lm1223_sobel_filter_avm_enable(GPOUT,82)
    assign out_lm1223_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_enable;

    // out_lm1223_sobel_filter_avm_read(GPOUT,83)
    assign out_lm1223_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_read;

    // out_lm1223_sobel_filter_avm_write(GPOUT,84)
    assign out_lm1223_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_write;

    // out_lm1223_sobel_filter_avm_writedata(GPOUT,85)
    assign out_lm1223_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1223_sobel_filter_avm_writedata;

    // out_lm1244_sobel_filter_avm_address(GPOUT,86)
    assign out_lm1244_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_address;

    // out_lm1244_sobel_filter_avm_burstcount(GPOUT,87)
    assign out_lm1244_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_burstcount;

    // out_lm1244_sobel_filter_avm_byteenable(GPOUT,88)
    assign out_lm1244_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_byteenable;

    // out_lm1244_sobel_filter_avm_enable(GPOUT,89)
    assign out_lm1244_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_enable;

    // out_lm1244_sobel_filter_avm_read(GPOUT,90)
    assign out_lm1244_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_read;

    // out_lm1244_sobel_filter_avm_write(GPOUT,91)
    assign out_lm1244_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_write;

    // out_lm1244_sobel_filter_avm_writedata(GPOUT,92)
    assign out_lm1244_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1244_sobel_filter_avm_writedata;

    // out_lm1265_sobel_filter_avm_address(GPOUT,93)
    assign out_lm1265_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_address;

    // out_lm1265_sobel_filter_avm_burstcount(GPOUT,94)
    assign out_lm1265_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_burstcount;

    // out_lm1265_sobel_filter_avm_byteenable(GPOUT,95)
    assign out_lm1265_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_byteenable;

    // out_lm1265_sobel_filter_avm_enable(GPOUT,96)
    assign out_lm1265_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_enable;

    // out_lm1265_sobel_filter_avm_read(GPOUT,97)
    assign out_lm1265_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_read;

    // out_lm1265_sobel_filter_avm_write(GPOUT,98)
    assign out_lm1265_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_write;

    // out_lm1265_sobel_filter_avm_writedata(GPOUT,99)
    assign out_lm1265_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1265_sobel_filter_avm_writedata;

    // out_lm1286_sobel_filter_avm_address(GPOUT,100)
    assign out_lm1286_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_address;

    // out_lm1286_sobel_filter_avm_burstcount(GPOUT,101)
    assign out_lm1286_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_burstcount;

    // out_lm1286_sobel_filter_avm_byteenable(GPOUT,102)
    assign out_lm1286_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_byteenable;

    // out_lm1286_sobel_filter_avm_enable(GPOUT,103)
    assign out_lm1286_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_enable;

    // out_lm1286_sobel_filter_avm_read(GPOUT,104)
    assign out_lm1286_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_read;

    // out_lm1286_sobel_filter_avm_write(GPOUT,105)
    assign out_lm1286_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_write;

    // out_lm1286_sobel_filter_avm_writedata(GPOUT,106)
    assign out_lm1286_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1286_sobel_filter_avm_writedata;

    // out_lm1307_sobel_filter_avm_address(GPOUT,107)
    assign out_lm1307_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_address;

    // out_lm1307_sobel_filter_avm_burstcount(GPOUT,108)
    assign out_lm1307_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_burstcount;

    // out_lm1307_sobel_filter_avm_byteenable(GPOUT,109)
    assign out_lm1307_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_byteenable;

    // out_lm1307_sobel_filter_avm_enable(GPOUT,110)
    assign out_lm1307_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_enable;

    // out_lm1307_sobel_filter_avm_read(GPOUT,111)
    assign out_lm1307_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_read;

    // out_lm1307_sobel_filter_avm_write(GPOUT,112)
    assign out_lm1307_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_write;

    // out_lm1307_sobel_filter_avm_writedata(GPOUT,113)
    assign out_lm1307_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1307_sobel_filter_avm_writedata;

    // out_lm1328_sobel_filter_avm_address(GPOUT,114)
    assign out_lm1328_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_address;

    // out_lm1328_sobel_filter_avm_burstcount(GPOUT,115)
    assign out_lm1328_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_burstcount;

    // out_lm1328_sobel_filter_avm_byteenable(GPOUT,116)
    assign out_lm1328_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_byteenable;

    // out_lm1328_sobel_filter_avm_enable(GPOUT,117)
    assign out_lm1328_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_enable;

    // out_lm1328_sobel_filter_avm_read(GPOUT,118)
    assign out_lm1328_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_read;

    // out_lm1328_sobel_filter_avm_write(GPOUT,119)
    assign out_lm1328_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_write;

    // out_lm1328_sobel_filter_avm_writedata(GPOUT,120)
    assign out_lm1328_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1328_sobel_filter_avm_writedata;

    // out_lm1_sobel_filter_avm_address(GPOUT,121)
    assign out_lm1_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_address;

    // out_lm1_sobel_filter_avm_burstcount(GPOUT,122)
    assign out_lm1_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_burstcount;

    // out_lm1_sobel_filter_avm_byteenable(GPOUT,123)
    assign out_lm1_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_byteenable;

    // out_lm1_sobel_filter_avm_enable(GPOUT,124)
    assign out_lm1_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_enable;

    // out_lm1_sobel_filter_avm_read(GPOUT,125)
    assign out_lm1_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_read;

    // out_lm1_sobel_filter_avm_write(GPOUT,126)
    assign out_lm1_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_write;

    // out_lm1_sobel_filter_avm_writedata(GPOUT,127)
    assign out_lm1_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_lm1_sobel_filter_avm_writedata;

    // out_stall_out_0(GPOUT,128)
    assign out_stall_out_0 = sobel_filter_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,129)
    assign out_stall_out_1 = sobel_filter_B8_merge_out_stall_out_1;

    // out_unnamed_sobel_filter10_sobel_filter_avm_address(GPOUT,130)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_address = bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_address;

    // out_unnamed_sobel_filter10_sobel_filter_avm_burstcount(GPOUT,131)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_burstcount = bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter10_sobel_filter_avm_byteenable(GPOUT,132)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_byteenable = bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter10_sobel_filter_avm_enable(GPOUT,133)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_enable = bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter10_sobel_filter_avm_read(GPOUT,134)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_read = bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_read;

    // out_unnamed_sobel_filter10_sobel_filter_avm_write(GPOUT,135)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_write = bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_write;

    // out_unnamed_sobel_filter10_sobel_filter_avm_writedata(GPOUT,136)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_writedata = bb_sobel_filter_B8_stall_region_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;

    // out_valid_out_0(GPOUT,137)
    assign out_valid_out_0 = sobel_filter_B8_branch_aunroll_x_out_valid_out_0;

    // out_c0_exe5312_0_tpl(GPOUT,138)
    assign out_c0_exe5312_0_tpl = sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_0_tpl;

    // out_c0_exe5312_1_tpl(GPOUT,139)
    assign out_c0_exe5312_1_tpl = sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_1_tpl;

    // out_c0_exe5312_2_tpl(GPOUT,140)
    assign out_c0_exe5312_2_tpl = sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_2_tpl;

    // out_c0_exe5312_3_tpl(GPOUT,141)
    assign out_c0_exe5312_3_tpl = sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_3_tpl;

    // out_c0_exe5312_4_tpl(GPOUT,142)
    assign out_c0_exe5312_4_tpl = sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_4_tpl;

    // out_c0_exe5312_5_tpl(GPOUT,143)
    assign out_c0_exe5312_5_tpl = sobel_filter_B8_branch_aunroll_x_out_c0_exe5312_5_tpl;

endmodule
