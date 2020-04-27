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

// SystemVerilog created from sobel_filter_bb_B13
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B13 (
    input wire [0:0] in_exitcond45164_pop43234_0,
    input wire [0:0] in_exitcond45164_pop43234_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked178_0,
    input wire [0:0] in_forked178_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_lm1479_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1479_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1479_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1479_sobel_filter_avm_writeack,
    input wire [31:0] in_lm14910_sobel_filter_avm_readdata,
    input wire [0:0] in_lm14910_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm14910_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm14910_sobel_filter_avm_writeack,
    input wire [31:0] in_lm15111_sobel_filter_avm_readdata,
    input wire [0:0] in_lm15111_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm15111_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm15111_sobel_filter_avm_writeack,
    input wire [31:0] in_lm15312_sobel_filter_avm_readdata,
    input wire [0:0] in_lm15312_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm15312_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm15312_sobel_filter_avm_writeack,
    input wire [31:0] in_lm15513_sobel_filter_avm_readdata,
    input wire [0:0] in_lm15513_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm15513_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm15513_sobel_filter_avm_writeack,
    input wire [31:0] in_lm15714_sobel_filter_avm_readdata,
    input wire [0:0] in_lm15714_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm15714_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm15714_sobel_filter_avm_writeack,
    input wire [31:0] in_lm15915_sobel_filter_avm_readdata,
    input wire [0:0] in_lm15915_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm15915_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm15915_sobel_filter_avm_writeack,
    input wire [31:0] in_lm16116_sobel_filter_avm_readdata,
    input wire [0:0] in_lm16116_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm16116_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm16116_sobel_filter_avm_writeack,
    input wire [0:0] in_memdep_phi18_pop28230_0,
    input wire [0:0] in_memdep_phi18_pop28230_1,
    input wire [0:0] in_notcmp131171_pop44238_0,
    input wire [0:0] in_notcmp131171_pop44238_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_sobel_filter12_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter12_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter12_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter12_sobel_filter_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exe10403,
    output wire [0:0] out_c0_exe11404,
    output wire [0:0] out_c0_exe12405,
    output wire [0:0] out_c0_exe13406,
    output wire [31:0] out_c0_exe1394,
    output wire [31:0] out_c0_exe2395,
    output wire [63:0] out_c0_exe3396,
    output wire [31:0] out_c0_exe4397,
    output wire [0:0] out_c0_exe7400,
    output wire [0:0] out_c0_exe8401,
    output wire [0:0] out_c0_exe9402,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm1479_sobel_filter_avm_address,
    output wire [0:0] out_lm1479_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1479_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1479_sobel_filter_avm_enable,
    output wire [0:0] out_lm1479_sobel_filter_avm_read,
    output wire [0:0] out_lm1479_sobel_filter_avm_write,
    output wire [31:0] out_lm1479_sobel_filter_avm_writedata,
    output wire [31:0] out_lm14910_sobel_filter_avm_address,
    output wire [0:0] out_lm14910_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm14910_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm14910_sobel_filter_avm_enable,
    output wire [0:0] out_lm14910_sobel_filter_avm_read,
    output wire [0:0] out_lm14910_sobel_filter_avm_write,
    output wire [31:0] out_lm14910_sobel_filter_avm_writedata,
    output wire [31:0] out_lm15111_sobel_filter_avm_address,
    output wire [0:0] out_lm15111_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm15111_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm15111_sobel_filter_avm_enable,
    output wire [0:0] out_lm15111_sobel_filter_avm_read,
    output wire [0:0] out_lm15111_sobel_filter_avm_write,
    output wire [31:0] out_lm15111_sobel_filter_avm_writedata,
    output wire [31:0] out_lm15312_sobel_filter_avm_address,
    output wire [0:0] out_lm15312_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm15312_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm15312_sobel_filter_avm_enable,
    output wire [0:0] out_lm15312_sobel_filter_avm_read,
    output wire [0:0] out_lm15312_sobel_filter_avm_write,
    output wire [31:0] out_lm15312_sobel_filter_avm_writedata,
    output wire [31:0] out_lm15513_sobel_filter_avm_address,
    output wire [0:0] out_lm15513_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm15513_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm15513_sobel_filter_avm_enable,
    output wire [0:0] out_lm15513_sobel_filter_avm_read,
    output wire [0:0] out_lm15513_sobel_filter_avm_write,
    output wire [31:0] out_lm15513_sobel_filter_avm_writedata,
    output wire [31:0] out_lm15714_sobel_filter_avm_address,
    output wire [0:0] out_lm15714_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm15714_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm15714_sobel_filter_avm_enable,
    output wire [0:0] out_lm15714_sobel_filter_avm_read,
    output wire [0:0] out_lm15714_sobel_filter_avm_write,
    output wire [31:0] out_lm15714_sobel_filter_avm_writedata,
    output wire [31:0] out_lm15915_sobel_filter_avm_address,
    output wire [0:0] out_lm15915_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm15915_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm15915_sobel_filter_avm_enable,
    output wire [0:0] out_lm15915_sobel_filter_avm_read,
    output wire [0:0] out_lm15915_sobel_filter_avm_write,
    output wire [31:0] out_lm15915_sobel_filter_avm_writedata,
    output wire [31:0] out_lm16116_sobel_filter_avm_address,
    output wire [0:0] out_lm16116_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm16116_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm16116_sobel_filter_avm_enable,
    output wire [0:0] out_lm16116_sobel_filter_avm_read,
    output wire [0:0] out_lm16116_sobel_filter_avm_write,
    output wire [31:0] out_lm16116_sobel_filter_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_sobel_filter12_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter12_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter12_sobel_filter_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_c0_exe5398_0_tpl,
    output wire [31:0] out_c0_exe5398_1_tpl,
    output wire [31:0] out_c0_exe5398_2_tpl,
    output wire [31:0] out_c0_exe5398_3_tpl,
    output wire [31:0] out_c0_exe5398_4_tpl,
    output wire [31:0] out_c0_exe5398_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_c0_exe10403;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_c0_exe11404;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_c0_exe12405;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_c0_exe13406;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe1394;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe2395;
    wire [63:0] bb_sobel_filter_B13_stall_region_out_c0_exe3396;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe4397;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_c0_exe7400;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_c0_exe8401;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_c0_exe9402;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_stall_out;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B13_stall_region_out_valid_out;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe5398_0_tpl;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe5398_1_tpl;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe5398_2_tpl;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe5398_3_tpl;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe5398_4_tpl;
    wire [31:0] bb_sobel_filter_B13_stall_region_out_c0_exe5398_5_tpl;
    wire [0:0] sobel_filter_B13_merge_out_exitcond45164_pop43234;
    wire [0:0] sobel_filter_B13_merge_out_forked178;
    wire [0:0] sobel_filter_B13_merge_out_memdep_phi18_pop28230;
    wire [0:0] sobel_filter_B13_merge_out_notcmp131171_pop44238;
    wire [0:0] sobel_filter_B13_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B13_merge_out_stall_out_1;
    wire [0:0] sobel_filter_B13_merge_out_valid_out;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe10403;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe11404;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe12405;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe13406;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe1394;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe2395;
    wire [63:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe3396;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe4397;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe7400;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe8401;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe9402;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_stall_out;
    wire [0:0] sobel_filter_B13_branch_aunroll_x_out_valid_out_0;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_0_tpl;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_1_tpl;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_2_tpl;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_3_tpl;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_4_tpl;
    wire [31:0] sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_5_tpl;


    // sobel_filter_B13_branch_aunroll_x(BLACKBOX,140)
    sobel_filter_B13_branch thesobel_filter_B13_branch_aunroll_x (
        .in_c0_exe10403(bb_sobel_filter_B13_stall_region_out_c0_exe10403),
        .in_c0_exe11404(bb_sobel_filter_B13_stall_region_out_c0_exe11404),
        .in_c0_exe12405(bb_sobel_filter_B13_stall_region_out_c0_exe12405),
        .in_c0_exe13406(bb_sobel_filter_B13_stall_region_out_c0_exe13406),
        .in_c0_exe1394(bb_sobel_filter_B13_stall_region_out_c0_exe1394),
        .in_c0_exe2395(bb_sobel_filter_B13_stall_region_out_c0_exe2395),
        .in_c0_exe3396(bb_sobel_filter_B13_stall_region_out_c0_exe3396),
        .in_c0_exe4397(bb_sobel_filter_B13_stall_region_out_c0_exe4397),
        .in_c0_exe7400(bb_sobel_filter_B13_stall_region_out_c0_exe7400),
        .in_c0_exe8401(bb_sobel_filter_B13_stall_region_out_c0_exe8401),
        .in_c0_exe9402(bb_sobel_filter_B13_stall_region_out_c0_exe9402),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_sobel_filter_B13_stall_region_out_valid_out),
        .in_c0_exe5398_0_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_0_tpl),
        .in_c0_exe5398_1_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_1_tpl),
        .in_c0_exe5398_2_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_2_tpl),
        .in_c0_exe5398_3_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_3_tpl),
        .in_c0_exe5398_4_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_4_tpl),
        .in_c0_exe5398_5_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_5_tpl),
        .out_c0_exe10403(sobel_filter_B13_branch_aunroll_x_out_c0_exe10403),
        .out_c0_exe11404(sobel_filter_B13_branch_aunroll_x_out_c0_exe11404),
        .out_c0_exe12405(sobel_filter_B13_branch_aunroll_x_out_c0_exe12405),
        .out_c0_exe13406(sobel_filter_B13_branch_aunroll_x_out_c0_exe13406),
        .out_c0_exe1394(sobel_filter_B13_branch_aunroll_x_out_c0_exe1394),
        .out_c0_exe2395(sobel_filter_B13_branch_aunroll_x_out_c0_exe2395),
        .out_c0_exe3396(sobel_filter_B13_branch_aunroll_x_out_c0_exe3396),
        .out_c0_exe4397(sobel_filter_B13_branch_aunroll_x_out_c0_exe4397),
        .out_c0_exe7400(sobel_filter_B13_branch_aunroll_x_out_c0_exe7400),
        .out_c0_exe8401(sobel_filter_B13_branch_aunroll_x_out_c0_exe8401),
        .out_c0_exe9402(sobel_filter_B13_branch_aunroll_x_out_c0_exe9402),
        .out_stall_out(sobel_filter_B13_branch_aunroll_x_out_stall_out),
        .out_valid_out_0(sobel_filter_B13_branch_aunroll_x_out_valid_out_0),
        .out_c0_exe5398_0_tpl(sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_0_tpl),
        .out_c0_exe5398_1_tpl(sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_1_tpl),
        .out_c0_exe5398_2_tpl(sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_2_tpl),
        .out_c0_exe5398_3_tpl(sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_3_tpl),
        .out_c0_exe5398_4_tpl(sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_4_tpl),
        .out_c0_exe5398_5_tpl(sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B13_merge(BLACKBOX,54)
    sobel_filter_B13_merge thesobel_filter_B13_merge (
        .in_exitcond45164_pop43234_0(in_exitcond45164_pop43234_0),
        .in_exitcond45164_pop43234_1(in_exitcond45164_pop43234_1),
        .in_forked178_0(in_forked178_0),
        .in_forked178_1(in_forked178_1),
        .in_memdep_phi18_pop28230_0(in_memdep_phi18_pop28230_0),
        .in_memdep_phi18_pop28230_1(in_memdep_phi18_pop28230_1),
        .in_notcmp131171_pop44238_0(in_notcmp131171_pop44238_0),
        .in_notcmp131171_pop44238_1(in_notcmp131171_pop44238_1),
        .in_stall_in(bb_sobel_filter_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond45164_pop43234(sobel_filter_B13_merge_out_exitcond45164_pop43234),
        .out_forked178(sobel_filter_B13_merge_out_forked178),
        .out_memdep_phi18_pop28230(sobel_filter_B13_merge_out_memdep_phi18_pop28230),
        .out_notcmp131171_pop44238(sobel_filter_B13_merge_out_notcmp131171_pop44238),
        .out_stall_out_0(sobel_filter_B13_merge_out_stall_out_0),
        .out_stall_out_1(sobel_filter_B13_merge_out_stall_out_1),
        .out_valid_out(sobel_filter_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B13_stall_region(BLACKBOX,2)
    sobel_filter_bb_B13_stall_region thebb_sobel_filter_B13_stall_region (
        .in_exitcond45164_pop43234(sobel_filter_B13_merge_out_exitcond45164_pop43234),
        .in_flush(in_flush),
        .in_forked178(sobel_filter_B13_merge_out_forked178),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lm1479_sobel_filter_avm_readdata(in_lm1479_sobel_filter_avm_readdata),
        .in_lm1479_sobel_filter_avm_readdatavalid(in_lm1479_sobel_filter_avm_readdatavalid),
        .in_lm1479_sobel_filter_avm_waitrequest(in_lm1479_sobel_filter_avm_waitrequest),
        .in_lm1479_sobel_filter_avm_writeack(in_lm1479_sobel_filter_avm_writeack),
        .in_lm14910_sobel_filter_avm_readdata(in_lm14910_sobel_filter_avm_readdata),
        .in_lm14910_sobel_filter_avm_readdatavalid(in_lm14910_sobel_filter_avm_readdatavalid),
        .in_lm14910_sobel_filter_avm_waitrequest(in_lm14910_sobel_filter_avm_waitrequest),
        .in_lm14910_sobel_filter_avm_writeack(in_lm14910_sobel_filter_avm_writeack),
        .in_lm15111_sobel_filter_avm_readdata(in_lm15111_sobel_filter_avm_readdata),
        .in_lm15111_sobel_filter_avm_readdatavalid(in_lm15111_sobel_filter_avm_readdatavalid),
        .in_lm15111_sobel_filter_avm_waitrequest(in_lm15111_sobel_filter_avm_waitrequest),
        .in_lm15111_sobel_filter_avm_writeack(in_lm15111_sobel_filter_avm_writeack),
        .in_lm15312_sobel_filter_avm_readdata(in_lm15312_sobel_filter_avm_readdata),
        .in_lm15312_sobel_filter_avm_readdatavalid(in_lm15312_sobel_filter_avm_readdatavalid),
        .in_lm15312_sobel_filter_avm_waitrequest(in_lm15312_sobel_filter_avm_waitrequest),
        .in_lm15312_sobel_filter_avm_writeack(in_lm15312_sobel_filter_avm_writeack),
        .in_lm15513_sobel_filter_avm_readdata(in_lm15513_sobel_filter_avm_readdata),
        .in_lm15513_sobel_filter_avm_readdatavalid(in_lm15513_sobel_filter_avm_readdatavalid),
        .in_lm15513_sobel_filter_avm_waitrequest(in_lm15513_sobel_filter_avm_waitrequest),
        .in_lm15513_sobel_filter_avm_writeack(in_lm15513_sobel_filter_avm_writeack),
        .in_lm15714_sobel_filter_avm_readdata(in_lm15714_sobel_filter_avm_readdata),
        .in_lm15714_sobel_filter_avm_readdatavalid(in_lm15714_sobel_filter_avm_readdatavalid),
        .in_lm15714_sobel_filter_avm_waitrequest(in_lm15714_sobel_filter_avm_waitrequest),
        .in_lm15714_sobel_filter_avm_writeack(in_lm15714_sobel_filter_avm_writeack),
        .in_lm15915_sobel_filter_avm_readdata(in_lm15915_sobel_filter_avm_readdata),
        .in_lm15915_sobel_filter_avm_readdatavalid(in_lm15915_sobel_filter_avm_readdatavalid),
        .in_lm15915_sobel_filter_avm_waitrequest(in_lm15915_sobel_filter_avm_waitrequest),
        .in_lm15915_sobel_filter_avm_writeack(in_lm15915_sobel_filter_avm_writeack),
        .in_lm16116_sobel_filter_avm_readdata(in_lm16116_sobel_filter_avm_readdata),
        .in_lm16116_sobel_filter_avm_readdatavalid(in_lm16116_sobel_filter_avm_readdatavalid),
        .in_lm16116_sobel_filter_avm_waitrequest(in_lm16116_sobel_filter_avm_waitrequest),
        .in_lm16116_sobel_filter_avm_writeack(in_lm16116_sobel_filter_avm_writeack),
        .in_memdep_phi18_pop28230(sobel_filter_B13_merge_out_memdep_phi18_pop28230),
        .in_notcmp131171_pop44238(sobel_filter_B13_merge_out_notcmp131171_pop44238),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_filter_B13_branch_aunroll_x_out_stall_out),
        .in_unnamed_sobel_filter12_sobel_filter_avm_readdata(in_unnamed_sobel_filter12_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter12_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter12_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter12_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter12_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter12_sobel_filter_avm_writeack(in_unnamed_sobel_filter12_sobel_filter_avm_writeack),
        .in_valid_in(sobel_filter_B13_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_stall_out(bb_sobel_filter_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_valid_out(bb_sobel_filter_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_valid_out),
        .out_c0_exe10403(bb_sobel_filter_B13_stall_region_out_c0_exe10403),
        .out_c0_exe11404(bb_sobel_filter_B13_stall_region_out_c0_exe11404),
        .out_c0_exe12405(bb_sobel_filter_B13_stall_region_out_c0_exe12405),
        .out_c0_exe13406(bb_sobel_filter_B13_stall_region_out_c0_exe13406),
        .out_c0_exe1394(bb_sobel_filter_B13_stall_region_out_c0_exe1394),
        .out_c0_exe2395(bb_sobel_filter_B13_stall_region_out_c0_exe2395),
        .out_c0_exe3396(bb_sobel_filter_B13_stall_region_out_c0_exe3396),
        .out_c0_exe4397(bb_sobel_filter_B13_stall_region_out_c0_exe4397),
        .out_c0_exe7400(bb_sobel_filter_B13_stall_region_out_c0_exe7400),
        .out_c0_exe8401(bb_sobel_filter_B13_stall_region_out_c0_exe8401),
        .out_c0_exe9402(bb_sobel_filter_B13_stall_region_out_c0_exe9402),
        .out_lm1479_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_address),
        .out_lm1479_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_burstcount),
        .out_lm1479_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_byteenable),
        .out_lm1479_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_enable),
        .out_lm1479_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_read),
        .out_lm1479_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_write),
        .out_lm1479_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_writedata),
        .out_lm14910_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_address),
        .out_lm14910_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_burstcount),
        .out_lm14910_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_byteenable),
        .out_lm14910_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_enable),
        .out_lm14910_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_read),
        .out_lm14910_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_write),
        .out_lm14910_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_writedata),
        .out_lm15111_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_address),
        .out_lm15111_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_burstcount),
        .out_lm15111_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_byteenable),
        .out_lm15111_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_enable),
        .out_lm15111_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_read),
        .out_lm15111_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_write),
        .out_lm15111_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_writedata),
        .out_lm15312_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_address),
        .out_lm15312_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_burstcount),
        .out_lm15312_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_byteenable),
        .out_lm15312_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_enable),
        .out_lm15312_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_read),
        .out_lm15312_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_write),
        .out_lm15312_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_writedata),
        .out_lm15513_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_address),
        .out_lm15513_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_burstcount),
        .out_lm15513_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_byteenable),
        .out_lm15513_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_enable),
        .out_lm15513_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_read),
        .out_lm15513_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_write),
        .out_lm15513_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_writedata),
        .out_lm15714_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_address),
        .out_lm15714_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_burstcount),
        .out_lm15714_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_byteenable),
        .out_lm15714_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_enable),
        .out_lm15714_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_read),
        .out_lm15714_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_write),
        .out_lm15714_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_writedata),
        .out_lm15915_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_address),
        .out_lm15915_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_burstcount),
        .out_lm15915_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_byteenable),
        .out_lm15915_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_enable),
        .out_lm15915_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_read),
        .out_lm15915_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_write),
        .out_lm15915_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_writedata),
        .out_lm16116_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_address),
        .out_lm16116_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_burstcount),
        .out_lm16116_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_byteenable),
        .out_lm16116_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_enable),
        .out_lm16116_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_read),
        .out_lm16116_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_write),
        .out_lm16116_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_writedata),
        .out_pipeline_valid_out(bb_sobel_filter_B13_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_filter_B13_stall_region_out_stall_out),
        .out_unnamed_sobel_filter12_sobel_filter_avm_address(bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_address),
        .out_unnamed_sobel_filter12_sobel_filter_avm_burstcount(bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter12_sobel_filter_avm_byteenable(bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter12_sobel_filter_avm_enable(bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter12_sobel_filter_avm_read(bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_read),
        .out_unnamed_sobel_filter12_sobel_filter_avm_write(bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_write),
        .out_unnamed_sobel_filter12_sobel_filter_avm_writedata(bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_writedata),
        .out_valid_out(bb_sobel_filter_B13_stall_region_out_valid_out),
        .out_c0_exe5398_0_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_0_tpl),
        .out_c0_exe5398_1_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_1_tpl),
        .out_c0_exe5398_2_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_2_tpl),
        .out_c0_exe5398_3_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_3_tpl),
        .out_c0_exe5398_4_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_4_tpl),
        .out_c0_exe5398_5_tpl(bb_sobel_filter_B13_stall_region_out_c0_exe5398_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = bb_sobel_filter_B13_stall_region_out_pipeline_valid_out;

    // out_c0_exe10403(GPOUT,55)
    assign out_c0_exe10403 = sobel_filter_B13_branch_aunroll_x_out_c0_exe10403;

    // out_c0_exe11404(GPOUT,56)
    assign out_c0_exe11404 = sobel_filter_B13_branch_aunroll_x_out_c0_exe11404;

    // out_c0_exe12405(GPOUT,57)
    assign out_c0_exe12405 = sobel_filter_B13_branch_aunroll_x_out_c0_exe12405;

    // out_c0_exe13406(GPOUT,58)
    assign out_c0_exe13406 = sobel_filter_B13_branch_aunroll_x_out_c0_exe13406;

    // out_c0_exe1394(GPOUT,59)
    assign out_c0_exe1394 = sobel_filter_B13_branch_aunroll_x_out_c0_exe1394;

    // out_c0_exe2395(GPOUT,60)
    assign out_c0_exe2395 = sobel_filter_B13_branch_aunroll_x_out_c0_exe2395;

    // out_c0_exe3396(GPOUT,61)
    assign out_c0_exe3396 = sobel_filter_B13_branch_aunroll_x_out_c0_exe3396;

    // out_c0_exe4397(GPOUT,62)
    assign out_c0_exe4397 = sobel_filter_B13_branch_aunroll_x_out_c0_exe4397;

    // out_c0_exe7400(GPOUT,63)
    assign out_c0_exe7400 = sobel_filter_B13_branch_aunroll_x_out_c0_exe7400;

    // out_c0_exe8401(GPOUT,64)
    assign out_c0_exe8401 = sobel_filter_B13_branch_aunroll_x_out_c0_exe8401;

    // out_c0_exe9402(GPOUT,65)
    assign out_c0_exe9402 = sobel_filter_B13_branch_aunroll_x_out_c0_exe9402;

    // out_exiting_stall_out(GPOUT,66)
    assign out_exiting_stall_out = bb_sobel_filter_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,67)
    assign out_exiting_valid_out = bb_sobel_filter_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_sobel_filter2_exiting_valid_out;

    // out_lm1479_sobel_filter_avm_address(GPOUT,68)
    assign out_lm1479_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_address;

    // out_lm1479_sobel_filter_avm_burstcount(GPOUT,69)
    assign out_lm1479_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_burstcount;

    // out_lm1479_sobel_filter_avm_byteenable(GPOUT,70)
    assign out_lm1479_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_byteenable;

    // out_lm1479_sobel_filter_avm_enable(GPOUT,71)
    assign out_lm1479_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_enable;

    // out_lm1479_sobel_filter_avm_read(GPOUT,72)
    assign out_lm1479_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_read;

    // out_lm1479_sobel_filter_avm_write(GPOUT,73)
    assign out_lm1479_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_write;

    // out_lm1479_sobel_filter_avm_writedata(GPOUT,74)
    assign out_lm1479_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm1479_sobel_filter_avm_writedata;

    // out_lm14910_sobel_filter_avm_address(GPOUT,75)
    assign out_lm14910_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_address;

    // out_lm14910_sobel_filter_avm_burstcount(GPOUT,76)
    assign out_lm14910_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_burstcount;

    // out_lm14910_sobel_filter_avm_byteenable(GPOUT,77)
    assign out_lm14910_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_byteenable;

    // out_lm14910_sobel_filter_avm_enable(GPOUT,78)
    assign out_lm14910_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_enable;

    // out_lm14910_sobel_filter_avm_read(GPOUT,79)
    assign out_lm14910_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_read;

    // out_lm14910_sobel_filter_avm_write(GPOUT,80)
    assign out_lm14910_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_write;

    // out_lm14910_sobel_filter_avm_writedata(GPOUT,81)
    assign out_lm14910_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm14910_sobel_filter_avm_writedata;

    // out_lm15111_sobel_filter_avm_address(GPOUT,82)
    assign out_lm15111_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_address;

    // out_lm15111_sobel_filter_avm_burstcount(GPOUT,83)
    assign out_lm15111_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_burstcount;

    // out_lm15111_sobel_filter_avm_byteenable(GPOUT,84)
    assign out_lm15111_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_byteenable;

    // out_lm15111_sobel_filter_avm_enable(GPOUT,85)
    assign out_lm15111_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_enable;

    // out_lm15111_sobel_filter_avm_read(GPOUT,86)
    assign out_lm15111_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_read;

    // out_lm15111_sobel_filter_avm_write(GPOUT,87)
    assign out_lm15111_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_write;

    // out_lm15111_sobel_filter_avm_writedata(GPOUT,88)
    assign out_lm15111_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm15111_sobel_filter_avm_writedata;

    // out_lm15312_sobel_filter_avm_address(GPOUT,89)
    assign out_lm15312_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_address;

    // out_lm15312_sobel_filter_avm_burstcount(GPOUT,90)
    assign out_lm15312_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_burstcount;

    // out_lm15312_sobel_filter_avm_byteenable(GPOUT,91)
    assign out_lm15312_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_byteenable;

    // out_lm15312_sobel_filter_avm_enable(GPOUT,92)
    assign out_lm15312_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_enable;

    // out_lm15312_sobel_filter_avm_read(GPOUT,93)
    assign out_lm15312_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_read;

    // out_lm15312_sobel_filter_avm_write(GPOUT,94)
    assign out_lm15312_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_write;

    // out_lm15312_sobel_filter_avm_writedata(GPOUT,95)
    assign out_lm15312_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm15312_sobel_filter_avm_writedata;

    // out_lm15513_sobel_filter_avm_address(GPOUT,96)
    assign out_lm15513_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_address;

    // out_lm15513_sobel_filter_avm_burstcount(GPOUT,97)
    assign out_lm15513_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_burstcount;

    // out_lm15513_sobel_filter_avm_byteenable(GPOUT,98)
    assign out_lm15513_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_byteenable;

    // out_lm15513_sobel_filter_avm_enable(GPOUT,99)
    assign out_lm15513_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_enable;

    // out_lm15513_sobel_filter_avm_read(GPOUT,100)
    assign out_lm15513_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_read;

    // out_lm15513_sobel_filter_avm_write(GPOUT,101)
    assign out_lm15513_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_write;

    // out_lm15513_sobel_filter_avm_writedata(GPOUT,102)
    assign out_lm15513_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm15513_sobel_filter_avm_writedata;

    // out_lm15714_sobel_filter_avm_address(GPOUT,103)
    assign out_lm15714_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_address;

    // out_lm15714_sobel_filter_avm_burstcount(GPOUT,104)
    assign out_lm15714_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_burstcount;

    // out_lm15714_sobel_filter_avm_byteenable(GPOUT,105)
    assign out_lm15714_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_byteenable;

    // out_lm15714_sobel_filter_avm_enable(GPOUT,106)
    assign out_lm15714_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_enable;

    // out_lm15714_sobel_filter_avm_read(GPOUT,107)
    assign out_lm15714_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_read;

    // out_lm15714_sobel_filter_avm_write(GPOUT,108)
    assign out_lm15714_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_write;

    // out_lm15714_sobel_filter_avm_writedata(GPOUT,109)
    assign out_lm15714_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm15714_sobel_filter_avm_writedata;

    // out_lm15915_sobel_filter_avm_address(GPOUT,110)
    assign out_lm15915_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_address;

    // out_lm15915_sobel_filter_avm_burstcount(GPOUT,111)
    assign out_lm15915_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_burstcount;

    // out_lm15915_sobel_filter_avm_byteenable(GPOUT,112)
    assign out_lm15915_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_byteenable;

    // out_lm15915_sobel_filter_avm_enable(GPOUT,113)
    assign out_lm15915_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_enable;

    // out_lm15915_sobel_filter_avm_read(GPOUT,114)
    assign out_lm15915_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_read;

    // out_lm15915_sobel_filter_avm_write(GPOUT,115)
    assign out_lm15915_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_write;

    // out_lm15915_sobel_filter_avm_writedata(GPOUT,116)
    assign out_lm15915_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm15915_sobel_filter_avm_writedata;

    // out_lm16116_sobel_filter_avm_address(GPOUT,117)
    assign out_lm16116_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_address;

    // out_lm16116_sobel_filter_avm_burstcount(GPOUT,118)
    assign out_lm16116_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_burstcount;

    // out_lm16116_sobel_filter_avm_byteenable(GPOUT,119)
    assign out_lm16116_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_byteenable;

    // out_lm16116_sobel_filter_avm_enable(GPOUT,120)
    assign out_lm16116_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_enable;

    // out_lm16116_sobel_filter_avm_read(GPOUT,121)
    assign out_lm16116_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_read;

    // out_lm16116_sobel_filter_avm_write(GPOUT,122)
    assign out_lm16116_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_write;

    // out_lm16116_sobel_filter_avm_writedata(GPOUT,123)
    assign out_lm16116_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_lm16116_sobel_filter_avm_writedata;

    // out_stall_out_0(GPOUT,124)
    assign out_stall_out_0 = sobel_filter_B13_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,125)
    assign out_stall_out_1 = sobel_filter_B13_merge_out_stall_out_1;

    // out_unnamed_sobel_filter12_sobel_filter_avm_address(GPOUT,126)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_address = bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_address;

    // out_unnamed_sobel_filter12_sobel_filter_avm_burstcount(GPOUT,127)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_burstcount = bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter12_sobel_filter_avm_byteenable(GPOUT,128)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_byteenable = bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter12_sobel_filter_avm_enable(GPOUT,129)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_enable = bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter12_sobel_filter_avm_read(GPOUT,130)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_read = bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_read;

    // out_unnamed_sobel_filter12_sobel_filter_avm_write(GPOUT,131)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_write = bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_write;

    // out_unnamed_sobel_filter12_sobel_filter_avm_writedata(GPOUT,132)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_writedata = bb_sobel_filter_B13_stall_region_out_unnamed_sobel_filter12_sobel_filter_avm_writedata;

    // out_valid_out_0(GPOUT,133)
    assign out_valid_out_0 = sobel_filter_B13_branch_aunroll_x_out_valid_out_0;

    // out_c0_exe5398_0_tpl(GPOUT,134)
    assign out_c0_exe5398_0_tpl = sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_0_tpl;

    // out_c0_exe5398_1_tpl(GPOUT,135)
    assign out_c0_exe5398_1_tpl = sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_1_tpl;

    // out_c0_exe5398_2_tpl(GPOUT,136)
    assign out_c0_exe5398_2_tpl = sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_2_tpl;

    // out_c0_exe5398_3_tpl(GPOUT,137)
    assign out_c0_exe5398_3_tpl = sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_3_tpl;

    // out_c0_exe5398_4_tpl(GPOUT,138)
    assign out_c0_exe5398_4_tpl = sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_4_tpl;

    // out_c0_exe5398_5_tpl(GPOUT,139)
    assign out_c0_exe5398_5_tpl = sobel_filter_B13_branch_aunroll_x_out_c0_exe5398_5_tpl;

endmodule
