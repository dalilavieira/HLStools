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

// SystemVerilog created from sobel_filter_function
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [31:0] in_iord_bl_call_sobel_filter_i_fifodata,
    input wire [0:0] in_iord_bl_call_sobel_filter_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_sobel_filter_i_fifoready,
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
    input wire [31:0] in_lm1_sobel_filter_avm_readdata,
    input wire [0:0] in_lm1_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_lm1_sobel_filter_avm_waitrequest,
    input wire [0:0] in_lm1_sobel_filter_avm_writeack,
    input wire [31:0] in_memdep_19_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_19_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_memdep_19_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_19_sobel_filter_avm_writeack,
    input wire [31:0] in_memdep_20_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_20_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_memdep_20_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_20_sobel_filter_avm_writeack,
    input wire [31:0] in_memdep_21_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_21_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_memdep_21_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_21_sobel_filter_avm_writeack,
    input wire [31:0] in_memdep_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_memdep_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_sobel_filter_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter10_sobel_filter_avm_writeack,
    input wire [31:0] in_unnamed_sobel_filter12_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter12_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter12_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter12_sobel_filter_avm_writeack,
    input wire [31:0] in_unnamed_sobel_filter14_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_writeack,
    input wire [31:0] in_unnamed_sobel_filter15_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_writeack,
    input wire [31:0] in_unnamed_sobel_filter8_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter8_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter8_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter8_sobel_filter_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_sobel_filter_o_fifoready,
    output wire [31:0] out_iowr_bl_return_sobel_filter_o_fifodata,
    output wire [0:0] out_iowr_bl_return_sobel_filter_o_fifovalid,
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
    output wire [31:0] out_lm1_sobel_filter_avm_address,
    output wire [0:0] out_lm1_sobel_filter_avm_burstcount,
    output wire [3:0] out_lm1_sobel_filter_avm_byteenable,
    output wire [0:0] out_lm1_sobel_filter_avm_enable,
    output wire [0:0] out_lm1_sobel_filter_avm_read,
    output wire [0:0] out_lm1_sobel_filter_avm_write,
    output wire [31:0] out_lm1_sobel_filter_avm_writedata,
    output wire [31:0] out_memdep_19_sobel_filter_avm_address,
    output wire [0:0] out_memdep_19_sobel_filter_avm_burstcount,
    output wire [3:0] out_memdep_19_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_19_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_19_sobel_filter_avm_read,
    output wire [0:0] out_memdep_19_sobel_filter_avm_write,
    output wire [31:0] out_memdep_19_sobel_filter_avm_writedata,
    output wire [31:0] out_memdep_20_sobel_filter_avm_address,
    output wire [0:0] out_memdep_20_sobel_filter_avm_burstcount,
    output wire [3:0] out_memdep_20_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_20_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_20_sobel_filter_avm_read,
    output wire [0:0] out_memdep_20_sobel_filter_avm_write,
    output wire [31:0] out_memdep_20_sobel_filter_avm_writedata,
    output wire [31:0] out_memdep_21_sobel_filter_avm_address,
    output wire [0:0] out_memdep_21_sobel_filter_avm_burstcount,
    output wire [3:0] out_memdep_21_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_21_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_21_sobel_filter_avm_read,
    output wire [0:0] out_memdep_21_sobel_filter_avm_write,
    output wire [31:0] out_memdep_21_sobel_filter_avm_writedata,
    output wire [31:0] out_memdep_sobel_filter_avm_address,
    output wire [0:0] out_memdep_sobel_filter_avm_burstcount,
    output wire [3:0] out_memdep_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_sobel_filter_avm_read,
    output wire [0:0] out_memdep_sobel_filter_avm_write,
    output wire [31:0] out_memdep_sobel_filter_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter10_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter10_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter10_sobel_filter_avm_writedata,
    output wire [31:0] out_unnamed_sobel_filter12_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter12_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter12_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter12_sobel_filter_avm_writedata,
    output wire [31:0] out_unnamed_sobel_filter14_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter14_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter14_sobel_filter_avm_writedata,
    output wire [31:0] out_unnamed_sobel_filter15_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter15_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter15_sobel_filter_avm_writedata,
    output wire [31:0] out_unnamed_sobel_filter8_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter8_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter8_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter8_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter8_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter8_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter8_sobel_filter_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bb_sobel_filter_B0_runOnce_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_sobel_filter_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B10_out_c0_exe43415;
    wire [0:0] bb_sobel_filter_B10_out_c0_exe53427;
    wire [0:0] bb_sobel_filter_B10_out_c0_exe63439;
    wire [0:0] bb_sobel_filter_B10_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B10_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B11_out_c0_exe436915;
    wire [0:0] bb_sobel_filter_B11_out_c0_exe537016;
    wire [0:0] bb_sobel_filter_B11_out_feedback_stall_out_28;
    wire [0:0] bb_sobel_filter_B11_out_memdep_phi18_pop28;
    wire [0:0] bb_sobel_filter_B11_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B11_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B12_out_c0_exe3368;
    wire [0:0] bb_sobel_filter_B12_out_c0_exe4369;
    wire [0:0] bb_sobel_filter_B12_out_c0_exe5370;
    wire [0:0] bb_sobel_filter_B12_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B12_out_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B12_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B12_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B12_out_stall_out_1;
    wire [0:0] bb_sobel_filter_B12_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B15_out_c0_exe444918;
    wire [0:0] bb_sobel_filter_B15_out_c0_exe545020;
    wire [0:0] bb_sobel_filter_B15_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B15_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B16_out_c0_exe2472;
    wire [0:0] bb_sobel_filter_B16_out_c0_exe3473;
    wire [0:0] bb_sobel_filter_B16_out_c0_exe5475;
    wire [0:0] bb_sobel_filter_B16_out_c0_exe6476;
    wire [0:0] bb_sobel_filter_B16_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B16_out_exiting_valid_out;
    wire [31:0] bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B16_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B16_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B16_out_stall_out_1;
    wire [31:0] bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B16_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B17_out_feedback_out_27;
    wire [0:0] bb_sobel_filter_B17_out_feedback_out_28;
    wire [0:0] bb_sobel_filter_B17_out_feedback_valid_out_27;
    wire [0:0] bb_sobel_filter_B17_out_feedback_valid_out_28;
    wire [0:0] bb_sobel_filter_B17_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B17_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B18_out_c0_exe43416;
    wire [0:0] bb_sobel_filter_B18_out_c0_exe53428;
    wire [0:0] bb_sobel_filter_B18_out_c0_exe634310;
    wire [31:0] bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B18_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B18_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B19_out_c0_exe444919;
    wire [0:0] bb_sobel_filter_B19_out_c0_exe545021;
    wire [31:0] bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B19_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B19_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_sobel_filter_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_sobel_filter_B1_start_out_iord_bl_call_sobel_filter_o_fifoready;
    wire [0:0] bb_sobel_filter_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B1_start_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B1_start_out_stall_out_1;
    wire [0:0] bb_sobel_filter_B1_start_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B2_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B2_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B3_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B3_out_exiting_valid_out;
    wire [31:0] bb_sobel_filter_B3_out_memdep_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B3_out_memdep_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B3_out_memdep_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B3_out_memdep_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B3_out_memdep_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B3_out_memdep_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B3_out_memdep_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B3_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B3_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B3_out_stall_out_1;
    wire [0:0] bb_sobel_filter_B3_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B4_out_feedback_out_1;
    wire [0:0] bb_sobel_filter_B4_out_feedback_valid_out_1;
    wire [31:0] bb_sobel_filter_B4_out_iowr_bl_return_sobel_filter_o_fifodata;
    wire [0:0] bb_sobel_filter_B4_out_iowr_bl_return_sobel_filter_o_fifovalid;
    wire [0:0] bb_sobel_filter_B4_out_stall_out_0;
    wire [31:0] bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B5_out_c0_exe1281;
    wire [0:0] bb_sobel_filter_B5_out_c0_exe2282;
    wire [0:0] bb_sobel_filter_B5_out_c0_exe3;
    wire [0:0] bb_sobel_filter_B5_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B5_out_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B5_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B5_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B5_out_stall_out_1;
    wire [0:0] bb_sobel_filter_B5_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B6_out_c0_exe32921;
    wire [0:0] bb_sobel_filter_B6_out_c0_exe42;
    wire [0:0] bb_sobel_filter_B6_out_c0_exe53;
    wire [0:0] bb_sobel_filter_B6_out_feedback_stall_out_27;
    wire [0:0] bb_sobel_filter_B6_out_memdep_phi_pop27;
    wire [0:0] bb_sobel_filter_B6_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B6_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B7_out_c0_exe3292;
    wire [0:0] bb_sobel_filter_B7_out_c0_exe4;
    wire [0:0] bb_sobel_filter_B7_out_c0_exe5;
    wire [0:0] bb_sobel_filter_B7_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B7_out_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B7_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B7_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B7_out_stall_out_1;
    wire [0:0] bb_sobel_filter_B7_out_valid_out_0;
    wire [1:0] c_i2_0151_q;
    wire [31:0] c_i32_056_q;
    wire [63:0] c_i64_undef108_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_sobel_filter0_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter0_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter1_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter1_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter2_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter2_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter3_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter3_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter4_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter4_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter5_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter5_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter6_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter6_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter7_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter7_out_o_valid;
    wire [0:0] loop_limiter_sobel_filter8_out_o_stall;
    wire [0:0] loop_limiter_sobel_filter8_out_o_valid;
    wire [0:0] bb_sobel_filter_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe10403;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe11404;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe12405;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe13406;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe1394;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe2395;
    wire [63:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe3396;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe4397;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe7400;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe8401;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe9402;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_exiting_valid_out;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_stall_out_1;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B13_aunroll_x_out_valid_out_0;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_0_tpl;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_1_tpl;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_2_tpl;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_3_tpl;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_4_tpl;
    wire [31:0] bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_5_tpl;
    wire [0:0] bb_sobel_filter_B13_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B13_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_sobel_filter_B14_aunroll_x_out_c0_exe2447;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_c0_exe4449;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_c0_exe5450;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_c0_exe6451;
    wire [63:0] bb_sobel_filter_B14_aunroll_x_out_c0_exe7452;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_c0_exe8453;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_stall_out_1;
    wire [0:0] bb_sobel_filter_B14_aunroll_x_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_sobel_filter_B15_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B15_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B15_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B15_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B17_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B17_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_sobel_filter_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe10;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe11;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe12;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe13;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe1308;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe14;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe15;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe2309;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe3310;
    wire [63:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe4311;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe7;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe8;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe9;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_exiting_valid_out;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_stall_out_1;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B8_aunroll_x_out_valid_out_0;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_0_tpl;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_1_tpl;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_2_tpl;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_3_tpl;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_4_tpl;
    wire [31:0] bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_5_tpl;
    wire [0:0] bb_sobel_filter_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_sobel_filter_B9_aunroll_x_out_c0_exe2339;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_c0_exe4341;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_c0_exe5342;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_c0_exe6343;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_c0_exe7344;
    wire [63:0] bb_sobel_filter_B9_aunroll_x_out_c0_exe8345;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_c0_exe9346;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_stall_out_0;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_stall_out_1;
    wire [0:0] bb_sobel_filter_B9_aunroll_x_out_valid_out_0;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_19_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_sobel_filter_B0_runOnce(BLACKBOX,2)
    sobel_filter_bb_B0_runOnce thebb_sobel_filter_B0_runOnce (
        .in_stall_in_0(bb_sobel_filter_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_intel_reserved_ffwd_0_0(bb_sobel_filter_B0_runOnce_out_intel_reserved_ffwd_0_0),
        .out_stall_out_0(bb_sobel_filter_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B1_start_sr_1_aunroll_x(BLACKBOX,439)
    sobel_filter_bb_B1_start_sr_1 thebb_sobel_filter_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B1_start_out_stall_out_1),
        .in_i_valid(bb_sobel_filter_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_sobel_filter_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_0151(CONSTANT,90)
    assign c_i2_0151_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo(BLACKBOX,119)
    sobel_filter_i_llvm_fpga_pipeline_keep_going153_1_valid_fifo thei_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo(BLACKBOX,117)
    sobel_filter_i_llvm_fpga_pipeline_keep_going140_6_valid_fifo thei_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo(BLACKBOX,115)
    sobel_filter_i_llvm_fpga_pipeline_keep_going133_2_valid_fifo thei_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo(BLACKBOX,113)
    sobel_filter_i_llvm_fpga_pipeline_keep_going119_6_valid_fifo thei_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo(BLACKBOX,111)
    sobel_filter_i_llvm_fpga_pipeline_keep_going112_2_valid_fifo thei_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B8_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo(BLACKBOX,127)
    sobel_filter_i_llvm_fpga_pipeline_keep_going98_6_valid_fifo thei_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B9_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo(BLACKBOX,125)
    sobel_filter_i_llvm_fpga_pipeline_keep_going82_6_valid_fifo thei_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo(BLACKBOX,123)
    sobel_filter_i_llvm_fpga_pipeline_keep_going75_2_valid_fifo thei_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B13_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo(BLACKBOX,121)
    sobel_filter_i_llvm_fpga_pipeline_keep_going61_6_valid_fifo thei_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B14_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo(BLACKBOX,129)
    sobel_filter_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo (
        .in_data_in(c_i2_0151_q),
        .in_stall_in(bb_sobel_filter_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_sobel_filter6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B17_sr_0_aunroll_x(BLACKBOX,436)
    sobel_filter_bb_B17_sr_0 thebb_sobel_filter_B17_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B17_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B16_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_filter_B16_out_c0_exe2472),
        .in_i_data_1_tpl(bb_sobel_filter_B16_out_c0_exe3473),
        .in_i_data_2_tpl(bb_sobel_filter_B16_out_c0_exe5475),
        .in_i_data_3_tpl(bb_sobel_filter_B16_out_c0_exe6476),
        .out_o_stall(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_sobel_filter6_sr(BLACKBOX,128)
    sobel_filter_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_sobel_filter6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_sobel_filter6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_sobel_filter6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B16(BLACKBOX,7)
    sobel_filter_bb_B16 thebb_sobel_filter_B16 (
        .in_exitcond45166_pop73252_0(GND_q),
        .in_exitcond45166_pop73252_1(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_19_sobel_filter_avm_readdata(in_memdep_19_sobel_filter_avm_readdata),
        .in_memdep_19_sobel_filter_avm_readdatavalid(in_memdep_19_sobel_filter_avm_readdatavalid),
        .in_memdep_19_sobel_filter_avm_waitrequest(in_memdep_19_sobel_filter_avm_waitrequest),
        .in_memdep_19_sobel_filter_avm_writeack(in_memdep_19_sobel_filter_avm_writeack),
        .in_notcmp131173_pop74255_0(GND_q),
        .in_notcmp131173_pop74255_1(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_sobel_filter6_sr_out_o_stall),
        .in_stall_in_0(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdata(in_unnamed_sobel_filter14_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter14_sobel_filter_avm_writeack(in_unnamed_sobel_filter14_sobel_filter_avm_writeack),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdata(in_unnamed_sobel_filter15_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter15_sobel_filter_avm_writeack(in_unnamed_sobel_filter15_sobel_filter_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_sobel_filter6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2472(bb_sobel_filter_B16_out_c0_exe2472),
        .out_c0_exe3473(bb_sobel_filter_B16_out_c0_exe3473),
        .out_c0_exe5475(bb_sobel_filter_B16_out_c0_exe5475),
        .out_c0_exe6476(bb_sobel_filter_B16_out_c0_exe6476),
        .out_exiting_stall_out(bb_sobel_filter_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B16_out_exiting_valid_out),
        .out_memdep_19_sobel_filter_avm_address(bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_address),
        .out_memdep_19_sobel_filter_avm_burstcount(bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_burstcount),
        .out_memdep_19_sobel_filter_avm_byteenable(bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_byteenable),
        .out_memdep_19_sobel_filter_avm_enable(bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_enable),
        .out_memdep_19_sobel_filter_avm_read(bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_read),
        .out_memdep_19_sobel_filter_avm_write(bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_write),
        .out_memdep_19_sobel_filter_avm_writedata(bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_writedata),
        .out_pipeline_valid_out(bb_sobel_filter_B16_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B16_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B16_out_stall_out_1),
        .out_unnamed_sobel_filter14_sobel_filter_avm_address(bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_address),
        .out_unnamed_sobel_filter14_sobel_filter_avm_burstcount(bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter14_sobel_filter_avm_byteenable(bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_enable(bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_read(bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_read),
        .out_unnamed_sobel_filter14_sobel_filter_avm_write(bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_write),
        .out_unnamed_sobel_filter14_sobel_filter_avm_writedata(bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_writedata),
        .out_unnamed_sobel_filter15_sobel_filter_avm_address(bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_address),
        .out_unnamed_sobel_filter15_sobel_filter_avm_burstcount(bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter15_sobel_filter_avm_byteenable(bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_enable(bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_read(bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_read),
        .out_unnamed_sobel_filter15_sobel_filter_avm_write(bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_write),
        .out_unnamed_sobel_filter15_sobel_filter_avm_writedata(bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_writedata),
        .out_valid_out_0(bb_sobel_filter_B16_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_sobel_filter_B16_sr_1_aunroll_x(BLACKBOX,435)
    sobel_filter_bb_B16_sr_1 thebb_sobel_filter_B16_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter6_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_filter_B15_out_c0_exe444918),
        .in_i_data_2_tpl(bb_sobel_filter_B15_out_c0_exe545020),
        .out_o_stall(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter6(BLACKBOX,244)
    sobel_filter_loop_limiter_6 theloop_limiter_sobel_filter6 (
        .in_i_stall(bb_sobel_filter_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B16_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B15_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter6_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B15(BLACKBOX,6)
    sobel_filter_bb_B15 thebb_sobel_filter_B15 (
        .in_c0_exe444918_0(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe545020_0(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_sobel_filter6_out_o_stall),
        .in_valid_in_0(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe444918(bb_sobel_filter_B15_out_c0_exe444918),
        .out_c0_exe545020(bb_sobel_filter_B15_out_c0_exe545020),
        .out_stall_out_0(bb_sobel_filter_B15_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B15_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B15_sr_0_aunroll_x(BLACKBOX,434)
    sobel_filter_bb_B15_sr_0 thebb_sobel_filter_B15_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B15_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B19_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_filter_B19_out_c0_exe444919),
        .in_i_data_1_tpl(bb_sobel_filter_B19_out_c0_exe545021),
        .out_o_stall(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B19(BLACKBOX,10)
    sobel_filter_bb_B19 thebb_sobel_filter_B19 (
        .in_c0_exe244717_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe444919_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe545021_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe645122_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe745223_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe845324_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_memdep_21_sobel_filter_avm_readdata(in_memdep_21_sobel_filter_avm_readdata),
        .in_memdep_21_sobel_filter_avm_readdatavalid(in_memdep_21_sobel_filter_avm_readdatavalid),
        .in_memdep_21_sobel_filter_avm_waitrequest(in_memdep_21_sobel_filter_avm_waitrequest),
        .in_memdep_21_sobel_filter_avm_writeack(in_memdep_21_sobel_filter_avm_writeack),
        .in_stall_in_0(bb_sobel_filter_B15_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe444919(bb_sobel_filter_B19_out_c0_exe444919),
        .out_c0_exe545021(bb_sobel_filter_B19_out_c0_exe545021),
        .out_memdep_21_sobel_filter_avm_address(bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_address),
        .out_memdep_21_sobel_filter_avm_burstcount(bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_burstcount),
        .out_memdep_21_sobel_filter_avm_byteenable(bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_byteenable),
        .out_memdep_21_sobel_filter_avm_enable(bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_enable),
        .out_memdep_21_sobel_filter_avm_read(bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_read),
        .out_memdep_21_sobel_filter_avm_write(bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_write),
        .out_memdep_21_sobel_filter_avm_writedata(bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_writedata),
        .out_stall_out_0(bb_sobel_filter_B19_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B19_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B19_sr_0_aunroll_x(BLACKBOX,438)
    sobel_filter_bb_B19_sr_0 thebb_sobel_filter_B19_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B19_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B14_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_filter_B14_aunroll_x_out_c0_exe2447),
        .in_i_data_1_tpl(bb_sobel_filter_B14_aunroll_x_out_c0_exe4449),
        .in_i_data_2_tpl(bb_sobel_filter_B14_aunroll_x_out_c0_exe5450),
        .in_i_data_3_tpl(bb_sobel_filter_B14_aunroll_x_out_c0_exe6451),
        .in_i_data_4_tpl(bb_sobel_filter_B14_aunroll_x_out_c0_exe7452),
        .in_i_data_5_tpl(bb_sobel_filter_B14_aunroll_x_out_c0_exe8453),
        .out_o_stall(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr(BLACKBOX,120)
    sobel_filter_i_llvm_fpga_pipeline_keep_going61_6_sr thei_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B14_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B14_aunroll_x(BLACKBOX,432)
    sobel_filter_bb_B14 thebb_sobel_filter_B14_aunroll_x (
        .in_acl_140242_0(c_i32_056_q),
        .in_acl_140242_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_acl_141243_0(c_i32_056_q),
        .in_acl_141243_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_exitcond45164_pop43236_0(GND_q),
        .in_exitcond45164_pop43236_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_exitcond45165_pop47248_0(GND_q),
        .in_exitcond45165_pop47248_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_forked58_0(GND_q),
        .in_forked58_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom43_i_i78244_0(c_i64_undef108_q),
        .in_idxprom43_i_i78244_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_phi18_pop28179_pop49250_0(GND_q),
        .in_memdep_phi18_pop28179_pop49250_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_memdep_phi18_pop28232_0(GND_q),
        .in_memdep_phi18_pop28232_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mul_i_i124149245_0(c_i32_056_q),
        .in_mul_i_i124149245_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp131171_pop44240_0(GND_q),
        .in_notcmp131171_pop44240_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp131172_pop48249_0(GND_q),
        .in_notcmp131172_pop48249_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_notcmp73247_0(GND_q),
        .in_notcmp73247_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_sr_out_o_stall),
        .in_stall_in_0(bb_sobel_filter_B19_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going61_sobel_filter6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_valid),
        .in_case_assign178246_0_0_tpl(c_i32_056_q),
        .in_case_assign178246_0_1_tpl(c_i32_056_q),
        .in_case_assign178246_0_2_tpl(c_i32_056_q),
        .in_case_assign178246_0_3_tpl(c_i32_056_q),
        .in_case_assign178246_0_4_tpl(c_i32_056_q),
        .in_case_assign178246_0_5_tpl(c_i32_056_q),
        .in_case_assign178246_1_0_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_case_assign178246_1_1_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_case_assign178246_1_2_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_case_assign178246_1_3_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_case_assign178246_1_4_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_case_assign178246_1_5_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_c0_exe2447(bb_sobel_filter_B14_aunroll_x_out_c0_exe2447),
        .out_c0_exe4449(bb_sobel_filter_B14_aunroll_x_out_c0_exe4449),
        .out_c0_exe5450(bb_sobel_filter_B14_aunroll_x_out_c0_exe5450),
        .out_c0_exe6451(bb_sobel_filter_B14_aunroll_x_out_c0_exe6451),
        .out_c0_exe7452(bb_sobel_filter_B14_aunroll_x_out_c0_exe7452),
        .out_c0_exe8453(bb_sobel_filter_B14_aunroll_x_out_c0_exe8453),
        .out_exiting_stall_out(bb_sobel_filter_B14_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B14_aunroll_x_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_sobel_filter_B14_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B14_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B14_aunroll_x_out_stall_out_1),
        .out_valid_out_0(bb_sobel_filter_B14_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B14_sr_1_aunroll_x(BLACKBOX,433)
    sobel_filter_bb_B14_sr_1 thebb_sobel_filter_B14_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B14_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter8_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe11404),
        .in_i_data_2_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe12405),
        .in_i_data_3_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe13406),
        .in_i_data_4_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe1394),
        .in_i_data_5_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe2395),
        .in_i_data_6_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe3396),
        .in_i_data_7_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe4397),
        .in_i_data_8_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_0_tpl),
        .in_i_data_9_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_1_tpl),
        .in_i_data_10_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_2_tpl),
        .in_i_data_11_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_3_tpl),
        .in_i_data_12_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_4_tpl),
        .in_i_data_13_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_5_tpl),
        .in_i_data_14_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe7400),
        .in_i_data_15_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe8401),
        .in_i_data_16_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe9402),
        .in_i_data_17_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe10403),
        .out_o_stall(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_data_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter8(BLACKBOX,246)
    sobel_filter_loop_limiter_8 theloop_limiter_sobel_filter8 (
        .in_i_stall(bb_sobel_filter_B14_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B14_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B13_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B14_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter8_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr(BLACKBOX,122)
    sobel_filter_i_llvm_fpga_pipeline_keep_going75_2_sr thei_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B13_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B13_aunroll_x(BLACKBOX,430)
    sobel_filter_bb_B13 thebb_sobel_filter_B13_aunroll_x (
        .in_exitcond45164_pop43234_0(GND_q),
        .in_exitcond45164_pop43234_1(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked178_0(GND_q),
        .in_forked178_1(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_sobel_filter_B0_runOnce_out_intel_reserved_ffwd_0_0),
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
        .in_memdep_phi18_pop28230_0(GND_q),
        .in_memdep_phi18_pop28230_1(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp131171_pop44238_0(GND_q),
        .in_notcmp131171_pop44238_1(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_sobel_filter8_out_o_stall),
        .in_unnamed_sobel_filter12_sobel_filter_avm_readdata(in_unnamed_sobel_filter12_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter12_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter12_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter12_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter12_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter12_sobel_filter_avm_writeack(in_unnamed_sobel_filter12_sobel_filter_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going75_sobel_filter2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10403(bb_sobel_filter_B13_aunroll_x_out_c0_exe10403),
        .out_c0_exe11404(bb_sobel_filter_B13_aunroll_x_out_c0_exe11404),
        .out_c0_exe12405(bb_sobel_filter_B13_aunroll_x_out_c0_exe12405),
        .out_c0_exe13406(bb_sobel_filter_B13_aunroll_x_out_c0_exe13406),
        .out_c0_exe1394(bb_sobel_filter_B13_aunroll_x_out_c0_exe1394),
        .out_c0_exe2395(bb_sobel_filter_B13_aunroll_x_out_c0_exe2395),
        .out_c0_exe3396(bb_sobel_filter_B13_aunroll_x_out_c0_exe3396),
        .out_c0_exe4397(bb_sobel_filter_B13_aunroll_x_out_c0_exe4397),
        .out_c0_exe7400(bb_sobel_filter_B13_aunroll_x_out_c0_exe7400),
        .out_c0_exe8401(bb_sobel_filter_B13_aunroll_x_out_c0_exe8401),
        .out_c0_exe9402(bb_sobel_filter_B13_aunroll_x_out_c0_exe9402),
        .out_exiting_stall_out(bb_sobel_filter_B13_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B13_aunroll_x_out_exiting_valid_out),
        .out_lm1479_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_address),
        .out_lm1479_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_burstcount),
        .out_lm1479_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_byteenable),
        .out_lm1479_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_enable),
        .out_lm1479_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_read),
        .out_lm1479_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_write),
        .out_lm1479_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_writedata),
        .out_lm14910_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_address),
        .out_lm14910_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_burstcount),
        .out_lm14910_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_byteenable),
        .out_lm14910_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_enable),
        .out_lm14910_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_read),
        .out_lm14910_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_write),
        .out_lm14910_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_writedata),
        .out_lm15111_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_address),
        .out_lm15111_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_burstcount),
        .out_lm15111_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_byteenable),
        .out_lm15111_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_enable),
        .out_lm15111_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_read),
        .out_lm15111_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_write),
        .out_lm15111_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_writedata),
        .out_lm15312_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_address),
        .out_lm15312_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_burstcount),
        .out_lm15312_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_byteenable),
        .out_lm15312_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_enable),
        .out_lm15312_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_read),
        .out_lm15312_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_write),
        .out_lm15312_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_writedata),
        .out_lm15513_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_address),
        .out_lm15513_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_burstcount),
        .out_lm15513_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_byteenable),
        .out_lm15513_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_enable),
        .out_lm15513_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_read),
        .out_lm15513_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_write),
        .out_lm15513_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_writedata),
        .out_lm15714_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_address),
        .out_lm15714_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_burstcount),
        .out_lm15714_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_byteenable),
        .out_lm15714_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_enable),
        .out_lm15714_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_read),
        .out_lm15714_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_write),
        .out_lm15714_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_writedata),
        .out_lm15915_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_address),
        .out_lm15915_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_burstcount),
        .out_lm15915_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_byteenable),
        .out_lm15915_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_enable),
        .out_lm15915_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_read),
        .out_lm15915_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_write),
        .out_lm15915_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_writedata),
        .out_lm16116_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_address),
        .out_lm16116_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_burstcount),
        .out_lm16116_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_byteenable),
        .out_lm16116_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_enable),
        .out_lm16116_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_read),
        .out_lm16116_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_write),
        .out_lm16116_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_writedata),
        .out_pipeline_valid_out(bb_sobel_filter_B13_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B13_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B13_aunroll_x_out_stall_out_1),
        .out_unnamed_sobel_filter12_sobel_filter_avm_address(bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_address),
        .out_unnamed_sobel_filter12_sobel_filter_avm_burstcount(bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter12_sobel_filter_avm_byteenable(bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter12_sobel_filter_avm_enable(bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter12_sobel_filter_avm_read(bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_read),
        .out_unnamed_sobel_filter12_sobel_filter_avm_write(bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_write),
        .out_unnamed_sobel_filter12_sobel_filter_avm_writedata(bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_writedata),
        .out_valid_out_0(bb_sobel_filter_B13_aunroll_x_out_valid_out_0),
        .out_c0_exe5398_0_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_0_tpl),
        .out_c0_exe5398_1_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_1_tpl),
        .out_c0_exe5398_2_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_2_tpl),
        .out_c0_exe5398_3_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_3_tpl),
        .out_c0_exe5398_4_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_4_tpl),
        .out_c0_exe5398_5_tpl(bb_sobel_filter_B13_aunroll_x_out_c0_exe5398_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B13_sr_1_aunroll_x(BLACKBOX,431)
    sobel_filter_bb_B13_sr_1 thebb_sobel_filter_B13_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B13_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_filter_B11_out_memdep_phi18_pop28),
        .in_i_data_2_tpl(bb_sobel_filter_B11_out_c0_exe436915),
        .in_i_data_3_tpl(bb_sobel_filter_B11_out_c0_exe537016),
        .out_o_stall(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter5(BLACKBOX,243)
    sobel_filter_loop_limiter_5 theloop_limiter_sobel_filter5 (
        .in_i_stall(bb_sobel_filter_B13_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B13_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B11_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B13_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter5_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B11(BLACKBOX,4)
    sobel_filter_bb_B11 thebb_sobel_filter_B11 (
        .in_c0_exe336814_0(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe436915_0(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe537016_0(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_in_28(bb_sobel_filter_B17_out_feedback_out_28),
        .in_feedback_valid_in_28(bb_sobel_filter_B17_out_feedback_valid_out_28),
        .in_stall_in_0(loop_limiter_sobel_filter5_out_o_stall),
        .in_valid_in_0(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe436915(bb_sobel_filter_B11_out_c0_exe436915),
        .out_c0_exe537016(bb_sobel_filter_B11_out_c0_exe537016),
        .out_feedback_stall_out_28(bb_sobel_filter_B11_out_feedback_stall_out_28),
        .out_memdep_phi18_pop28(bb_sobel_filter_B11_out_memdep_phi18_pop28),
        .out_stall_out_0(bb_sobel_filter_B11_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B11_sr_0_aunroll_x(BLACKBOX,428)
    sobel_filter_bb_B11_sr_0 thebb_sobel_filter_B11_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B11_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B12_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_filter_B12_out_c0_exe3368),
        .in_i_data_1_tpl(bb_sobel_filter_B12_out_c0_exe4369),
        .in_i_data_2_tpl(bb_sobel_filter_B12_out_c0_exe5370),
        .out_o_stall(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr(BLACKBOX,124)
    sobel_filter_i_llvm_fpga_pipeline_keep_going82_6_sr thei_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B12(BLACKBOX,5)
    sobel_filter_bb_B12 thebb_sobel_filter_B12 (
        .in_exitcond45163_pop61221_0(GND_q),
        .in_exitcond45163_pop61221_1(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_forked156159_pop60218_0(GND_q),
        .in_forked156159_pop60218_1(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked79_0(GND_q),
        .in_forked79_1(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_notcmp131170_pop62224_0(GND_q),
        .in_notcmp131170_pop62224_1(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_sr_out_o_stall),
        .in_stall_in_0(bb_sobel_filter_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3368(bb_sobel_filter_B12_out_c0_exe3368),
        .out_c0_exe4369(bb_sobel_filter_B12_out_c0_exe4369),
        .out_c0_exe5370(bb_sobel_filter_B12_out_c0_exe5370),
        .out_exiting_stall_out(bb_sobel_filter_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_sobel_filter_B12_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B12_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B12_out_stall_out_1),
        .out_valid_out_0(bb_sobel_filter_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B12_sr_1_aunroll_x(BLACKBOX,429)
    sobel_filter_bb_B12_sr_1 thebb_sobel_filter_B12_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_filter_B10_out_c0_exe43415),
        .in_i_data_2_tpl(bb_sobel_filter_B10_out_c0_exe53427),
        .in_i_data_3_tpl(bb_sobel_filter_B10_out_c0_exe63439),
        .out_o_stall(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter4(BLACKBOX,242)
    sobel_filter_loop_limiter_4 theloop_limiter_sobel_filter4 (
        .in_i_stall(bb_sobel_filter_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B12_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B10_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter4_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B10(BLACKBOX,3)
    sobel_filter_bb_B10 thebb_sobel_filter_B10 (
        .in_c0_exe43415_0(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe53427_0(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe63439_0(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(loop_limiter_sobel_filter4_out_o_stall),
        .in_valid_in_0(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe43415(bb_sobel_filter_B10_out_c0_exe43415),
        .out_c0_exe53427(bb_sobel_filter_B10_out_c0_exe53427),
        .out_c0_exe63439(bb_sobel_filter_B10_out_c0_exe63439),
        .out_stall_out_0(bb_sobel_filter_B10_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B10_sr_0_aunroll_x(BLACKBOX,427)
    sobel_filter_bb_B10_sr_0 thebb_sobel_filter_B10_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B10_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B18_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_filter_B18_out_c0_exe43416),
        .in_i_data_1_tpl(bb_sobel_filter_B18_out_c0_exe53428),
        .in_i_data_2_tpl(bb_sobel_filter_B18_out_c0_exe634310),
        .out_o_stall(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B18(BLACKBOX,9)
    sobel_filter_bb_B18 thebb_sobel_filter_B18 (
        .in_c0_exe23394_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe43416_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe53428_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe634310_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe734411_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe834512_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe934613_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_memdep_20_sobel_filter_avm_readdata(in_memdep_20_sobel_filter_avm_readdata),
        .in_memdep_20_sobel_filter_avm_readdatavalid(in_memdep_20_sobel_filter_avm_readdatavalid),
        .in_memdep_20_sobel_filter_avm_waitrequest(in_memdep_20_sobel_filter_avm_waitrequest),
        .in_memdep_20_sobel_filter_avm_writeack(in_memdep_20_sobel_filter_avm_writeack),
        .in_stall_in_0(bb_sobel_filter_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe43416(bb_sobel_filter_B18_out_c0_exe43416),
        .out_c0_exe53428(bb_sobel_filter_B18_out_c0_exe53428),
        .out_c0_exe634310(bb_sobel_filter_B18_out_c0_exe634310),
        .out_memdep_20_sobel_filter_avm_address(bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_address),
        .out_memdep_20_sobel_filter_avm_burstcount(bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_burstcount),
        .out_memdep_20_sobel_filter_avm_byteenable(bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_byteenable),
        .out_memdep_20_sobel_filter_avm_enable(bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_enable),
        .out_memdep_20_sobel_filter_avm_read(bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_read),
        .out_memdep_20_sobel_filter_avm_write(bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_write),
        .out_memdep_20_sobel_filter_avm_writedata(bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_writedata),
        .out_stall_out_0(bb_sobel_filter_B18_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B18_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B18_sr_0_aunroll_x(BLACKBOX,437)
    sobel_filter_bb_B18_sr_0 thebb_sobel_filter_B18_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B18_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B9_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_filter_B9_aunroll_x_out_c0_exe2339),
        .in_i_data_1_tpl(bb_sobel_filter_B9_aunroll_x_out_c0_exe4341),
        .in_i_data_2_tpl(bb_sobel_filter_B9_aunroll_x_out_c0_exe5342),
        .in_i_data_3_tpl(bb_sobel_filter_B9_aunroll_x_out_c0_exe6343),
        .in_i_data_4_tpl(bb_sobel_filter_B9_aunroll_x_out_c0_exe7344),
        .in_i_data_5_tpl(bb_sobel_filter_B9_aunroll_x_out_c0_exe8345),
        .in_i_data_6_tpl(bb_sobel_filter_B9_aunroll_x_out_c0_exe9346),
        .out_o_stall(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr(BLACKBOX,126)
    sobel_filter_i_llvm_fpga_pipeline_keep_going98_6_sr thei_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B9_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef108(CONSTANT,107)
    assign c_i64_undef108_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_056(CONSTANT,100)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_sobel_filter_B9_aunroll_x(BLACKBOX,448)
    sobel_filter_bb_B9 thebb_sobel_filter_B9_aunroll_x (
        .in_acl_113208_0(c_i32_056_q),
        .in_acl_113208_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_acl_114209_0(c_i32_056_q),
        .in_acl_114209_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_acl_207_0(c_i32_056_q),
        .in_acl_207_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_exitcond45161_pop32201_0(GND_q),
        .in_exitcond45161_pop32201_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_exitcond45162_pop37214_0(GND_q),
        .in_exitcond45162_pop37214_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_forked156157_pop31197_0(GND_q),
        .in_forked156157_pop31197_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_forked156158_pop36213_0(GND_q),
        .in_forked156158_pop36213_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_forked95_0(GND_q),
        .in_forked95_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom43_i_i210_0(c_i64_undef108_q),
        .in_idxprom43_i_i210_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_phi_pop27176_pop39216_0(GND_q),
        .in_memdep_phi_pop27176_pop39216_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_memdep_phi_pop27194_0(GND_q),
        .in_memdep_phi_pop27194_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp110212_0(GND_q),
        .in_notcmp110212_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp131168_pop33205_0(GND_q),
        .in_notcmp131168_pop33205_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp131169_pop38215_0(GND_q),
        .in_notcmp131169_pop38215_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_sr_out_o_stall),
        .in_stall_in_0(bb_sobel_filter_B18_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_valid),
        .in_case_assign172211_0_0_tpl(c_i32_056_q),
        .in_case_assign172211_0_1_tpl(c_i32_056_q),
        .in_case_assign172211_0_2_tpl(c_i32_056_q),
        .in_case_assign172211_0_3_tpl(c_i32_056_q),
        .in_case_assign172211_0_4_tpl(c_i32_056_q),
        .in_case_assign172211_0_5_tpl(c_i32_056_q),
        .in_case_assign172211_1_0_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_case_assign172211_1_1_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_case_assign172211_1_2_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_case_assign172211_1_3_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_case_assign172211_1_4_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_case_assign172211_1_5_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_c0_exe2339(bb_sobel_filter_B9_aunroll_x_out_c0_exe2339),
        .out_c0_exe4341(bb_sobel_filter_B9_aunroll_x_out_c0_exe4341),
        .out_c0_exe5342(bb_sobel_filter_B9_aunroll_x_out_c0_exe5342),
        .out_c0_exe6343(bb_sobel_filter_B9_aunroll_x_out_c0_exe6343),
        .out_c0_exe7344(bb_sobel_filter_B9_aunroll_x_out_c0_exe7344),
        .out_c0_exe8345(bb_sobel_filter_B9_aunroll_x_out_c0_exe8345),
        .out_c0_exe9346(bb_sobel_filter_B9_aunroll_x_out_c0_exe9346),
        .out_exiting_stall_out(bb_sobel_filter_B9_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B9_aunroll_x_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_sobel_filter_B9_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B9_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B9_aunroll_x_out_stall_out_1),
        .out_valid_out_0(bb_sobel_filter_B9_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B9_sr_1_aunroll_x(BLACKBOX,449)
    sobel_filter_bb_B9_sr_1 thebb_sobel_filter_B9_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B9_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter7_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe12),
        .in_i_data_2_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe13),
        .in_i_data_3_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe14),
        .in_i_data_4_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe15),
        .in_i_data_5_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe1308),
        .in_i_data_6_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe2309),
        .in_i_data_7_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe3310),
        .in_i_data_8_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe4311),
        .in_i_data_9_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_0_tpl),
        .in_i_data_10_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_1_tpl),
        .in_i_data_11_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_2_tpl),
        .in_i_data_12_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_3_tpl),
        .in_i_data_13_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_4_tpl),
        .in_i_data_14_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_5_tpl),
        .in_i_data_15_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe7),
        .in_i_data_16_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe8),
        .in_i_data_17_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe9),
        .in_i_data_18_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe10),
        .in_i_data_19_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe11),
        .out_o_stall(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_data_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter7(BLACKBOX,245)
    sobel_filter_loop_limiter_7 theloop_limiter_sobel_filter7 (
        .in_i_stall(bb_sobel_filter_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B9_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B8_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B9_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter7_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr(BLACKBOX,110)
    sobel_filter_i_llvm_fpga_pipeline_keep_going112_2_sr thei_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B8_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B8_aunroll_x(BLACKBOX,446)
    sobel_filter_bb_B8 thebb_sobel_filter_B8_aunroll_x (
        .in_exitcond45161_pop32199_0(GND_q),
        .in_exitcond45161_pop32199_1(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_forked156157_pop31195_0(GND_q),
        .in_forked156157_pop31195_1(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_forked175_0(GND_q),
        .in_forked175_1(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_sobel_filter_B0_runOnce_out_intel_reserved_ffwd_0_0),
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
        .in_memdep_phi_pop27192_0(GND_q),
        .in_memdep_phi_pop27192_1(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp131168_pop33203_0(GND_q),
        .in_notcmp131168_pop33203_1(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_sobel_filter7_out_o_stall),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdata(in_unnamed_sobel_filter10_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter10_sobel_filter_avm_writeack(in_unnamed_sobel_filter10_sobel_filter_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going112_sobel_filter2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_sobel_filter_B8_aunroll_x_out_c0_exe10),
        .out_c0_exe11(bb_sobel_filter_B8_aunroll_x_out_c0_exe11),
        .out_c0_exe12(bb_sobel_filter_B8_aunroll_x_out_c0_exe12),
        .out_c0_exe13(bb_sobel_filter_B8_aunroll_x_out_c0_exe13),
        .out_c0_exe1308(bb_sobel_filter_B8_aunroll_x_out_c0_exe1308),
        .out_c0_exe14(bb_sobel_filter_B8_aunroll_x_out_c0_exe14),
        .out_c0_exe15(bb_sobel_filter_B8_aunroll_x_out_c0_exe15),
        .out_c0_exe2309(bb_sobel_filter_B8_aunroll_x_out_c0_exe2309),
        .out_c0_exe3310(bb_sobel_filter_B8_aunroll_x_out_c0_exe3310),
        .out_c0_exe4311(bb_sobel_filter_B8_aunroll_x_out_c0_exe4311),
        .out_c0_exe7(bb_sobel_filter_B8_aunroll_x_out_c0_exe7),
        .out_c0_exe8(bb_sobel_filter_B8_aunroll_x_out_c0_exe8),
        .out_c0_exe9(bb_sobel_filter_B8_aunroll_x_out_c0_exe9),
        .out_exiting_stall_out(bb_sobel_filter_B8_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B8_aunroll_x_out_exiting_valid_out),
        .out_lm1202_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_address),
        .out_lm1202_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_burstcount),
        .out_lm1202_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_byteenable),
        .out_lm1202_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_enable),
        .out_lm1202_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_read),
        .out_lm1202_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_write),
        .out_lm1202_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_writedata),
        .out_lm1223_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_address),
        .out_lm1223_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_burstcount),
        .out_lm1223_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_byteenable),
        .out_lm1223_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_enable),
        .out_lm1223_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_read),
        .out_lm1223_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_write),
        .out_lm1223_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_writedata),
        .out_lm1244_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_address),
        .out_lm1244_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_burstcount),
        .out_lm1244_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_byteenable),
        .out_lm1244_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_enable),
        .out_lm1244_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_read),
        .out_lm1244_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_write),
        .out_lm1244_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_writedata),
        .out_lm1265_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_address),
        .out_lm1265_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_burstcount),
        .out_lm1265_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_byteenable),
        .out_lm1265_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_enable),
        .out_lm1265_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_read),
        .out_lm1265_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_write),
        .out_lm1265_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_writedata),
        .out_lm1286_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_address),
        .out_lm1286_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_burstcount),
        .out_lm1286_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_byteenable),
        .out_lm1286_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_enable),
        .out_lm1286_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_read),
        .out_lm1286_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_write),
        .out_lm1286_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_writedata),
        .out_lm1307_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_address),
        .out_lm1307_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_burstcount),
        .out_lm1307_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_byteenable),
        .out_lm1307_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_enable),
        .out_lm1307_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_read),
        .out_lm1307_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_write),
        .out_lm1307_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_writedata),
        .out_lm1328_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_address),
        .out_lm1328_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_burstcount),
        .out_lm1328_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_byteenable),
        .out_lm1328_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_enable),
        .out_lm1328_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_read),
        .out_lm1328_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_write),
        .out_lm1328_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_writedata),
        .out_lm1_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_address),
        .out_lm1_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_burstcount),
        .out_lm1_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_byteenable),
        .out_lm1_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_enable),
        .out_lm1_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_read),
        .out_lm1_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_write),
        .out_lm1_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_writedata),
        .out_pipeline_valid_out(bb_sobel_filter_B8_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B8_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B8_aunroll_x_out_stall_out_1),
        .out_unnamed_sobel_filter10_sobel_filter_avm_address(bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address),
        .out_unnamed_sobel_filter10_sobel_filter_avm_burstcount(bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter10_sobel_filter_avm_byteenable(bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_enable(bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_read(bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read),
        .out_unnamed_sobel_filter10_sobel_filter_avm_write(bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write),
        .out_unnamed_sobel_filter10_sobel_filter_avm_writedata(bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata),
        .out_valid_out_0(bb_sobel_filter_B8_aunroll_x_out_valid_out_0),
        .out_c0_exe5312_0_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_0_tpl),
        .out_c0_exe5312_1_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_1_tpl),
        .out_c0_exe5312_2_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_2_tpl),
        .out_c0_exe5312_3_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_3_tpl),
        .out_c0_exe5312_4_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_4_tpl),
        .out_c0_exe5312_5_tpl(bb_sobel_filter_B8_aunroll_x_out_c0_exe5312_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B8_sr_1_aunroll_x(BLACKBOX,447)
    sobel_filter_bb_B8_sr_1 thebb_sobel_filter_B8_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B8_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_filter_B6_out_memdep_phi_pop27),
        .in_i_data_2_tpl(bb_sobel_filter_B6_out_c0_exe32921),
        .in_i_data_3_tpl(bb_sobel_filter_B6_out_c0_exe42),
        .in_i_data_4_tpl(bb_sobel_filter_B6_out_c0_exe53),
        .out_o_stall(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter3(BLACKBOX,241)
    sobel_filter_loop_limiter_3 theloop_limiter_sobel_filter3 (
        .in_i_stall(bb_sobel_filter_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B8_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B6_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B8_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter3_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B4_sr_0_aunroll_x(BLACKBOX,442)
    sobel_filter_bb_B4_sr_0 thebb_sobel_filter_B4_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B4_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B17_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_sobel_filter_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B17(BLACKBOX,8)
    sobel_filter_bb_B17 thebb_sobel_filter_B17 (
        .in_c0_exe247225_0(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe347326_0(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe547527_0(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe647628_0(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_27(bb_sobel_filter_B6_out_feedback_stall_out_27),
        .in_feedback_stall_in_28(bb_sobel_filter_B11_out_feedback_stall_out_28),
        .in_stall_in_0(bb_sobel_filter_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_sobel_filter_B17_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_27(bb_sobel_filter_B17_out_feedback_out_27),
        .out_feedback_out_28(bb_sobel_filter_B17_out_feedback_out_28),
        .out_feedback_valid_out_27(bb_sobel_filter_B17_out_feedback_valid_out_27),
        .out_feedback_valid_out_28(bb_sobel_filter_B17_out_feedback_valid_out_28),
        .out_stall_out_0(bb_sobel_filter_B17_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B17_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B6(BLACKBOX,16)
    sobel_filter_bb_B6 thebb_sobel_filter_B6 (
        .in_c0_exe32921_0(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42_0(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe53_0(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_in_27(bb_sobel_filter_B17_out_feedback_out_27),
        .in_feedback_valid_in_27(bb_sobel_filter_B17_out_feedback_valid_out_27),
        .in_stall_in_0(loop_limiter_sobel_filter3_out_o_stall),
        .in_valid_in_0(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe32921(bb_sobel_filter_B6_out_c0_exe32921),
        .out_c0_exe42(bb_sobel_filter_B6_out_c0_exe42),
        .out_c0_exe53(bb_sobel_filter_B6_out_c0_exe53),
        .out_feedback_stall_out_27(bb_sobel_filter_B6_out_feedback_stall_out_27),
        .out_memdep_phi_pop27(bb_sobel_filter_B6_out_memdep_phi_pop27),
        .out_stall_out_0(bb_sobel_filter_B6_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B6_sr_0_aunroll_x(BLACKBOX,444)
    sobel_filter_bb_B6_sr_0 thebb_sobel_filter_B6_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B6_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_sobel_filter_B7_out_c0_exe3292),
        .in_i_data_1_tpl(bb_sobel_filter_B7_out_c0_exe4),
        .in_i_data_2_tpl(bb_sobel_filter_B7_out_c0_exe5),
        .out_o_stall(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr(BLACKBOX,112)
    sobel_filter_i_llvm_fpga_pipeline_keep_going119_6_sr thei_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B7(BLACKBOX,17)
    sobel_filter_bb_B7 thebb_sobel_filter_B7 (
        .in_exitcond45190_0(GND_q),
        .in_exitcond45190_1(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_forked116_0(GND_q),
        .in_forked116_1(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked156189_0(GND_q),
        .in_forked156189_1(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp131191_0(GND_q),
        .in_notcmp131191_1(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_sr_out_o_stall),
        .in_stall_in_0(bb_sobel_filter_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going119_sobel_filter6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3292(bb_sobel_filter_B7_out_c0_exe3292),
        .out_c0_exe4(bb_sobel_filter_B7_out_c0_exe4),
        .out_c0_exe5(bb_sobel_filter_B7_out_c0_exe5),
        .out_exiting_stall_out(bb_sobel_filter_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B7_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_sobel_filter_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B7_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B7_out_stall_out_1),
        .out_valid_out_0(bb_sobel_filter_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B7_sr_1_aunroll_x(BLACKBOX,445)
    sobel_filter_bb_B7_sr_1 thebb_sobel_filter_B7_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_sobel_filter_B5_out_c0_exe3),
        .in_i_data_2_tpl(bb_sobel_filter_B5_out_c0_exe1281),
        .in_i_data_3_tpl(bb_sobel_filter_B5_out_c0_exe2282),
        .out_o_stall(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter2(BLACKBOX,240)
    sobel_filter_loop_limiter_2 theloop_limiter_sobel_filter2 (
        .in_i_stall(bb_sobel_filter_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B7_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B5_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter2_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr(BLACKBOX,114)
    sobel_filter_i_llvm_fpga_pipeline_keep_going133_2_sr thei_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B5(BLACKBOX,15)
    sobel_filter_bb_B5 thebb_sobel_filter_B5 (
        .in_forked156_0(GND_q),
        .in_forked156_1(bb_sobel_filter_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_sobel_filter2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going133_sobel_filter2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1281(bb_sobel_filter_B5_out_c0_exe1281),
        .out_c0_exe2282(bb_sobel_filter_B5_out_c0_exe2282),
        .out_c0_exe3(bb_sobel_filter_B5_out_c0_exe3),
        .out_exiting_stall_out(bb_sobel_filter_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B5_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_sobel_filter_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B5_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B5_out_stall_out_1),
        .out_valid_out_0(bb_sobel_filter_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B5_sr_1_aunroll_x(BLACKBOX,443)
    sobel_filter_bb_B5_sr_1 thebb_sobel_filter_B5_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_sobel_filter_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter1(BLACKBOX,239)
    sobel_filter_loop_limiter_1 theloop_limiter_sobel_filter1 (
        .in_i_stall(bb_sobel_filter_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B5_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B2_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter1_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B2(BLACKBOX,12)
    sobel_filter_bb_B2 thebb_sobel_filter_B2 (
        .in_stall_in_0(loop_limiter_sobel_filter1_out_o_stall),
        .in_valid_in_0(bb_sobel_filter_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_sobel_filter_B2_out_stall_out_0),
        .out_valid_out_0(bb_sobel_filter_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B2_sr_0_aunroll_x(BLACKBOX,440)
    sobel_filter_bb_B2_sr_0 thebb_sobel_filter_B2_sr_0_aunroll_x (
        .in_i_stall(bb_sobel_filter_B2_out_stall_out_0),
        .in_i_valid(bb_sobel_filter_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_sobel_filter_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr(BLACKBOX,116)
    sobel_filter_i_llvm_fpga_pipeline_keep_going140_6_sr thei_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B3(BLACKBOX,13)
    sobel_filter_bb_B3 thebb_sobel_filter_B3 (
        .in_flush(in_start),
        .in_forked137_0(GND_q),
        .in_forked137_1(bb_sobel_filter_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_sobel_filter_avm_readdata(in_memdep_sobel_filter_avm_readdata),
        .in_memdep_sobel_filter_avm_readdatavalid(in_memdep_sobel_filter_avm_readdatavalid),
        .in_memdep_sobel_filter_avm_waitrequest(in_memdep_sobel_filter_avm_waitrequest),
        .in_memdep_sobel_filter_avm_writeack(in_memdep_sobel_filter_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_sr_out_o_stall),
        .in_stall_in_0(bb_sobel_filter_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_sobel_filter_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_sobel_filter_B3_out_exiting_valid_out),
        .out_memdep_sobel_filter_avm_address(bb_sobel_filter_B3_out_memdep_sobel_filter_avm_address),
        .out_memdep_sobel_filter_avm_burstcount(bb_sobel_filter_B3_out_memdep_sobel_filter_avm_burstcount),
        .out_memdep_sobel_filter_avm_byteenable(bb_sobel_filter_B3_out_memdep_sobel_filter_avm_byteenable),
        .out_memdep_sobel_filter_avm_enable(bb_sobel_filter_B3_out_memdep_sobel_filter_avm_enable),
        .out_memdep_sobel_filter_avm_read(bb_sobel_filter_B3_out_memdep_sobel_filter_avm_read),
        .out_memdep_sobel_filter_avm_write(bb_sobel_filter_B3_out_memdep_sobel_filter_avm_write),
        .out_memdep_sobel_filter_avm_writedata(bb_sobel_filter_B3_out_memdep_sobel_filter_avm_writedata),
        .out_pipeline_valid_out(bb_sobel_filter_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B3_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B3_out_stall_out_1),
        .out_valid_out_0(bb_sobel_filter_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B3_sr_1_aunroll_x(BLACKBOX,441)
    sobel_filter_bb_B3_sr_1 thebb_sobel_filter_B3_sr_1_aunroll_x (
        .in_i_stall(bb_sobel_filter_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_sobel_filter0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_sobel_filter_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_sobel_filter_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_sobel_filter_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_sobel_filter0(BLACKBOX,238)
    sobel_filter_loop_limiter_0 theloop_limiter_sobel_filter0 (
        .in_i_stall(bb_sobel_filter_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_sobel_filter_B3_out_exiting_stall_out),
        .in_i_valid(bb_sobel_filter_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_sobel_filter_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_sobel_filter0_out_o_stall),
        .out_o_valid(loop_limiter_sobel_filter0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr(BLACKBOX,118)
    sobel_filter_i_llvm_fpga_pipeline_keep_going153_1_sr thei_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo_out_stall_out),
        .in_i_valid(bb_sobel_filter_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B4(BLACKBOX,14)
    sobel_filter_bb_B4 thebb_sobel_filter_B4 (
        .in_feedback_stall_in_1(bb_sobel_filter_B1_start_out_feedback_stall_out_1),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_1_0(bb_sobel_filter_B1_start_out_intel_reserved_ffwd_1_0),
        .in_iowr_bl_return_sobel_filter_i_fifoready(in_iowr_bl_return_sobel_filter_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_unnamed_sobel_filter8_sobel_filter_avm_readdata(in_unnamed_sobel_filter8_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter8_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter8_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter8_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter8_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter8_sobel_filter_avm_writeack(in_unnamed_sobel_filter8_sobel_filter_avm_writeack),
        .in_valid_in_0(bb_sobel_filter_B4_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_sobel_filter_B4_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_sobel_filter_B4_out_feedback_valid_out_1),
        .out_iowr_bl_return_sobel_filter_o_fifodata(bb_sobel_filter_B4_out_iowr_bl_return_sobel_filter_o_fifodata),
        .out_iowr_bl_return_sobel_filter_o_fifovalid(bb_sobel_filter_B4_out_iowr_bl_return_sobel_filter_o_fifovalid),
        .out_stall_out_0(bb_sobel_filter_B4_out_stall_out_0),
        .out_unnamed_sobel_filter8_sobel_filter_avm_address(bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_address),
        .out_unnamed_sobel_filter8_sobel_filter_avm_burstcount(bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter8_sobel_filter_avm_byteenable(bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter8_sobel_filter_avm_enable(bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter8_sobel_filter_avm_read(bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_read),
        .out_unnamed_sobel_filter8_sobel_filter_avm_write(bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_write),
        .out_unnamed_sobel_filter8_sobel_filter_avm_writedata(bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_writedata),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B1_start(BLACKBOX,11)
    sobel_filter_bb_B1_start thebb_sobel_filter_B1_start (
        .in_feedback_in_1(bb_sobel_filter_B4_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_sobel_filter_B4_out_feedback_valid_out_1),
        .in_iord_bl_call_sobel_filter_i_fifodata(in_iord_bl_call_sobel_filter_i_fifodata),
        .in_iord_bl_call_sobel_filter_i_fifovalid(in_iord_bl_call_sobel_filter_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_sobel_filter0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going153_sobel_filter1_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_sobel_filter_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_sobel_filter_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_1_0(bb_sobel_filter_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_sobel_filter_o_fifoready(bb_sobel_filter_B1_start_out_iord_bl_call_sobel_filter_o_fifoready),
        .out_pipeline_valid_out(bb_sobel_filter_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_sobel_filter_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_sobel_filter_B1_start_out_stall_out_1),
        .out_valid_out_0(bb_sobel_filter_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_sobel_filter_o_fifoready(GPOUT,247)
    assign out_iord_bl_call_sobel_filter_o_fifoready = bb_sobel_filter_B1_start_out_iord_bl_call_sobel_filter_o_fifoready;

    // out_iowr_bl_return_sobel_filter_o_fifodata(GPOUT,248)
    assign out_iowr_bl_return_sobel_filter_o_fifodata = bb_sobel_filter_B4_out_iowr_bl_return_sobel_filter_o_fifodata;

    // out_iowr_bl_return_sobel_filter_o_fifovalid(GPOUT,249)
    assign out_iowr_bl_return_sobel_filter_o_fifovalid = bb_sobel_filter_B4_out_iowr_bl_return_sobel_filter_o_fifovalid;

    // out_lm1202_sobel_filter_avm_address(GPOUT,250)
    assign out_lm1202_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_address;

    // out_lm1202_sobel_filter_avm_burstcount(GPOUT,251)
    assign out_lm1202_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_burstcount;

    // out_lm1202_sobel_filter_avm_byteenable(GPOUT,252)
    assign out_lm1202_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_byteenable;

    // out_lm1202_sobel_filter_avm_enable(GPOUT,253)
    assign out_lm1202_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_enable;

    // out_lm1202_sobel_filter_avm_read(GPOUT,254)
    assign out_lm1202_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_read;

    // out_lm1202_sobel_filter_avm_write(GPOUT,255)
    assign out_lm1202_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_write;

    // out_lm1202_sobel_filter_avm_writedata(GPOUT,256)
    assign out_lm1202_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1202_sobel_filter_avm_writedata;

    // out_lm1223_sobel_filter_avm_address(GPOUT,257)
    assign out_lm1223_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_address;

    // out_lm1223_sobel_filter_avm_burstcount(GPOUT,258)
    assign out_lm1223_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_burstcount;

    // out_lm1223_sobel_filter_avm_byteenable(GPOUT,259)
    assign out_lm1223_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_byteenable;

    // out_lm1223_sobel_filter_avm_enable(GPOUT,260)
    assign out_lm1223_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_enable;

    // out_lm1223_sobel_filter_avm_read(GPOUT,261)
    assign out_lm1223_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_read;

    // out_lm1223_sobel_filter_avm_write(GPOUT,262)
    assign out_lm1223_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_write;

    // out_lm1223_sobel_filter_avm_writedata(GPOUT,263)
    assign out_lm1223_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1223_sobel_filter_avm_writedata;

    // out_lm1244_sobel_filter_avm_address(GPOUT,264)
    assign out_lm1244_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_address;

    // out_lm1244_sobel_filter_avm_burstcount(GPOUT,265)
    assign out_lm1244_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_burstcount;

    // out_lm1244_sobel_filter_avm_byteenable(GPOUT,266)
    assign out_lm1244_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_byteenable;

    // out_lm1244_sobel_filter_avm_enable(GPOUT,267)
    assign out_lm1244_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_enable;

    // out_lm1244_sobel_filter_avm_read(GPOUT,268)
    assign out_lm1244_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_read;

    // out_lm1244_sobel_filter_avm_write(GPOUT,269)
    assign out_lm1244_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_write;

    // out_lm1244_sobel_filter_avm_writedata(GPOUT,270)
    assign out_lm1244_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1244_sobel_filter_avm_writedata;

    // out_lm1265_sobel_filter_avm_address(GPOUT,271)
    assign out_lm1265_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_address;

    // out_lm1265_sobel_filter_avm_burstcount(GPOUT,272)
    assign out_lm1265_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_burstcount;

    // out_lm1265_sobel_filter_avm_byteenable(GPOUT,273)
    assign out_lm1265_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_byteenable;

    // out_lm1265_sobel_filter_avm_enable(GPOUT,274)
    assign out_lm1265_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_enable;

    // out_lm1265_sobel_filter_avm_read(GPOUT,275)
    assign out_lm1265_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_read;

    // out_lm1265_sobel_filter_avm_write(GPOUT,276)
    assign out_lm1265_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_write;

    // out_lm1265_sobel_filter_avm_writedata(GPOUT,277)
    assign out_lm1265_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1265_sobel_filter_avm_writedata;

    // out_lm1286_sobel_filter_avm_address(GPOUT,278)
    assign out_lm1286_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_address;

    // out_lm1286_sobel_filter_avm_burstcount(GPOUT,279)
    assign out_lm1286_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_burstcount;

    // out_lm1286_sobel_filter_avm_byteenable(GPOUT,280)
    assign out_lm1286_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_byteenable;

    // out_lm1286_sobel_filter_avm_enable(GPOUT,281)
    assign out_lm1286_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_enable;

    // out_lm1286_sobel_filter_avm_read(GPOUT,282)
    assign out_lm1286_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_read;

    // out_lm1286_sobel_filter_avm_write(GPOUT,283)
    assign out_lm1286_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_write;

    // out_lm1286_sobel_filter_avm_writedata(GPOUT,284)
    assign out_lm1286_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1286_sobel_filter_avm_writedata;

    // out_lm1307_sobel_filter_avm_address(GPOUT,285)
    assign out_lm1307_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_address;

    // out_lm1307_sobel_filter_avm_burstcount(GPOUT,286)
    assign out_lm1307_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_burstcount;

    // out_lm1307_sobel_filter_avm_byteenable(GPOUT,287)
    assign out_lm1307_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_byteenable;

    // out_lm1307_sobel_filter_avm_enable(GPOUT,288)
    assign out_lm1307_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_enable;

    // out_lm1307_sobel_filter_avm_read(GPOUT,289)
    assign out_lm1307_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_read;

    // out_lm1307_sobel_filter_avm_write(GPOUT,290)
    assign out_lm1307_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_write;

    // out_lm1307_sobel_filter_avm_writedata(GPOUT,291)
    assign out_lm1307_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1307_sobel_filter_avm_writedata;

    // out_lm1328_sobel_filter_avm_address(GPOUT,292)
    assign out_lm1328_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_address;

    // out_lm1328_sobel_filter_avm_burstcount(GPOUT,293)
    assign out_lm1328_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_burstcount;

    // out_lm1328_sobel_filter_avm_byteenable(GPOUT,294)
    assign out_lm1328_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_byteenable;

    // out_lm1328_sobel_filter_avm_enable(GPOUT,295)
    assign out_lm1328_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_enable;

    // out_lm1328_sobel_filter_avm_read(GPOUT,296)
    assign out_lm1328_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_read;

    // out_lm1328_sobel_filter_avm_write(GPOUT,297)
    assign out_lm1328_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_write;

    // out_lm1328_sobel_filter_avm_writedata(GPOUT,298)
    assign out_lm1328_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1328_sobel_filter_avm_writedata;

    // out_lm1479_sobel_filter_avm_address(GPOUT,299)
    assign out_lm1479_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_address;

    // out_lm1479_sobel_filter_avm_burstcount(GPOUT,300)
    assign out_lm1479_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_burstcount;

    // out_lm1479_sobel_filter_avm_byteenable(GPOUT,301)
    assign out_lm1479_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_byteenable;

    // out_lm1479_sobel_filter_avm_enable(GPOUT,302)
    assign out_lm1479_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_enable;

    // out_lm1479_sobel_filter_avm_read(GPOUT,303)
    assign out_lm1479_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_read;

    // out_lm1479_sobel_filter_avm_write(GPOUT,304)
    assign out_lm1479_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_write;

    // out_lm1479_sobel_filter_avm_writedata(GPOUT,305)
    assign out_lm1479_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm1479_sobel_filter_avm_writedata;

    // out_lm14910_sobel_filter_avm_address(GPOUT,306)
    assign out_lm14910_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_address;

    // out_lm14910_sobel_filter_avm_burstcount(GPOUT,307)
    assign out_lm14910_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_burstcount;

    // out_lm14910_sobel_filter_avm_byteenable(GPOUT,308)
    assign out_lm14910_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_byteenable;

    // out_lm14910_sobel_filter_avm_enable(GPOUT,309)
    assign out_lm14910_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_enable;

    // out_lm14910_sobel_filter_avm_read(GPOUT,310)
    assign out_lm14910_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_read;

    // out_lm14910_sobel_filter_avm_write(GPOUT,311)
    assign out_lm14910_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_write;

    // out_lm14910_sobel_filter_avm_writedata(GPOUT,312)
    assign out_lm14910_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm14910_sobel_filter_avm_writedata;

    // out_lm15111_sobel_filter_avm_address(GPOUT,313)
    assign out_lm15111_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_address;

    // out_lm15111_sobel_filter_avm_burstcount(GPOUT,314)
    assign out_lm15111_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_burstcount;

    // out_lm15111_sobel_filter_avm_byteenable(GPOUT,315)
    assign out_lm15111_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_byteenable;

    // out_lm15111_sobel_filter_avm_enable(GPOUT,316)
    assign out_lm15111_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_enable;

    // out_lm15111_sobel_filter_avm_read(GPOUT,317)
    assign out_lm15111_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_read;

    // out_lm15111_sobel_filter_avm_write(GPOUT,318)
    assign out_lm15111_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_write;

    // out_lm15111_sobel_filter_avm_writedata(GPOUT,319)
    assign out_lm15111_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm15111_sobel_filter_avm_writedata;

    // out_lm15312_sobel_filter_avm_address(GPOUT,320)
    assign out_lm15312_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_address;

    // out_lm15312_sobel_filter_avm_burstcount(GPOUT,321)
    assign out_lm15312_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_burstcount;

    // out_lm15312_sobel_filter_avm_byteenable(GPOUT,322)
    assign out_lm15312_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_byteenable;

    // out_lm15312_sobel_filter_avm_enable(GPOUT,323)
    assign out_lm15312_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_enable;

    // out_lm15312_sobel_filter_avm_read(GPOUT,324)
    assign out_lm15312_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_read;

    // out_lm15312_sobel_filter_avm_write(GPOUT,325)
    assign out_lm15312_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_write;

    // out_lm15312_sobel_filter_avm_writedata(GPOUT,326)
    assign out_lm15312_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm15312_sobel_filter_avm_writedata;

    // out_lm15513_sobel_filter_avm_address(GPOUT,327)
    assign out_lm15513_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_address;

    // out_lm15513_sobel_filter_avm_burstcount(GPOUT,328)
    assign out_lm15513_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_burstcount;

    // out_lm15513_sobel_filter_avm_byteenable(GPOUT,329)
    assign out_lm15513_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_byteenable;

    // out_lm15513_sobel_filter_avm_enable(GPOUT,330)
    assign out_lm15513_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_enable;

    // out_lm15513_sobel_filter_avm_read(GPOUT,331)
    assign out_lm15513_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_read;

    // out_lm15513_sobel_filter_avm_write(GPOUT,332)
    assign out_lm15513_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_write;

    // out_lm15513_sobel_filter_avm_writedata(GPOUT,333)
    assign out_lm15513_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm15513_sobel_filter_avm_writedata;

    // out_lm15714_sobel_filter_avm_address(GPOUT,334)
    assign out_lm15714_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_address;

    // out_lm15714_sobel_filter_avm_burstcount(GPOUT,335)
    assign out_lm15714_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_burstcount;

    // out_lm15714_sobel_filter_avm_byteenable(GPOUT,336)
    assign out_lm15714_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_byteenable;

    // out_lm15714_sobel_filter_avm_enable(GPOUT,337)
    assign out_lm15714_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_enable;

    // out_lm15714_sobel_filter_avm_read(GPOUT,338)
    assign out_lm15714_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_read;

    // out_lm15714_sobel_filter_avm_write(GPOUT,339)
    assign out_lm15714_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_write;

    // out_lm15714_sobel_filter_avm_writedata(GPOUT,340)
    assign out_lm15714_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm15714_sobel_filter_avm_writedata;

    // out_lm15915_sobel_filter_avm_address(GPOUT,341)
    assign out_lm15915_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_address;

    // out_lm15915_sobel_filter_avm_burstcount(GPOUT,342)
    assign out_lm15915_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_burstcount;

    // out_lm15915_sobel_filter_avm_byteenable(GPOUT,343)
    assign out_lm15915_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_byteenable;

    // out_lm15915_sobel_filter_avm_enable(GPOUT,344)
    assign out_lm15915_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_enable;

    // out_lm15915_sobel_filter_avm_read(GPOUT,345)
    assign out_lm15915_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_read;

    // out_lm15915_sobel_filter_avm_write(GPOUT,346)
    assign out_lm15915_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_write;

    // out_lm15915_sobel_filter_avm_writedata(GPOUT,347)
    assign out_lm15915_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm15915_sobel_filter_avm_writedata;

    // out_lm16116_sobel_filter_avm_address(GPOUT,348)
    assign out_lm16116_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_address;

    // out_lm16116_sobel_filter_avm_burstcount(GPOUT,349)
    assign out_lm16116_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_burstcount;

    // out_lm16116_sobel_filter_avm_byteenable(GPOUT,350)
    assign out_lm16116_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_byteenable;

    // out_lm16116_sobel_filter_avm_enable(GPOUT,351)
    assign out_lm16116_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_enable;

    // out_lm16116_sobel_filter_avm_read(GPOUT,352)
    assign out_lm16116_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_read;

    // out_lm16116_sobel_filter_avm_write(GPOUT,353)
    assign out_lm16116_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_write;

    // out_lm16116_sobel_filter_avm_writedata(GPOUT,354)
    assign out_lm16116_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_lm16116_sobel_filter_avm_writedata;

    // out_lm1_sobel_filter_avm_address(GPOUT,355)
    assign out_lm1_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_address;

    // out_lm1_sobel_filter_avm_burstcount(GPOUT,356)
    assign out_lm1_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_burstcount;

    // out_lm1_sobel_filter_avm_byteenable(GPOUT,357)
    assign out_lm1_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_byteenable;

    // out_lm1_sobel_filter_avm_enable(GPOUT,358)
    assign out_lm1_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_enable;

    // out_lm1_sobel_filter_avm_read(GPOUT,359)
    assign out_lm1_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_read;

    // out_lm1_sobel_filter_avm_write(GPOUT,360)
    assign out_lm1_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_write;

    // out_lm1_sobel_filter_avm_writedata(GPOUT,361)
    assign out_lm1_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_lm1_sobel_filter_avm_writedata;

    // out_memdep_19_sobel_filter_avm_address(GPOUT,362)
    assign out_memdep_19_sobel_filter_avm_address = bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_address;

    // out_memdep_19_sobel_filter_avm_burstcount(GPOUT,363)
    assign out_memdep_19_sobel_filter_avm_burstcount = bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_burstcount;

    // out_memdep_19_sobel_filter_avm_byteenable(GPOUT,364)
    assign out_memdep_19_sobel_filter_avm_byteenable = bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_byteenable;

    // out_memdep_19_sobel_filter_avm_enable(GPOUT,365)
    assign out_memdep_19_sobel_filter_avm_enable = bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_enable;

    // out_memdep_19_sobel_filter_avm_read(GPOUT,366)
    assign out_memdep_19_sobel_filter_avm_read = bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_read;

    // out_memdep_19_sobel_filter_avm_write(GPOUT,367)
    assign out_memdep_19_sobel_filter_avm_write = bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_write;

    // out_memdep_19_sobel_filter_avm_writedata(GPOUT,368)
    assign out_memdep_19_sobel_filter_avm_writedata = bb_sobel_filter_B16_out_memdep_19_sobel_filter_avm_writedata;

    // out_memdep_20_sobel_filter_avm_address(GPOUT,369)
    assign out_memdep_20_sobel_filter_avm_address = bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_address;

    // out_memdep_20_sobel_filter_avm_burstcount(GPOUT,370)
    assign out_memdep_20_sobel_filter_avm_burstcount = bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_burstcount;

    // out_memdep_20_sobel_filter_avm_byteenable(GPOUT,371)
    assign out_memdep_20_sobel_filter_avm_byteenable = bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_byteenable;

    // out_memdep_20_sobel_filter_avm_enable(GPOUT,372)
    assign out_memdep_20_sobel_filter_avm_enable = bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_enable;

    // out_memdep_20_sobel_filter_avm_read(GPOUT,373)
    assign out_memdep_20_sobel_filter_avm_read = bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_read;

    // out_memdep_20_sobel_filter_avm_write(GPOUT,374)
    assign out_memdep_20_sobel_filter_avm_write = bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_write;

    // out_memdep_20_sobel_filter_avm_writedata(GPOUT,375)
    assign out_memdep_20_sobel_filter_avm_writedata = bb_sobel_filter_B18_out_memdep_20_sobel_filter_avm_writedata;

    // out_memdep_21_sobel_filter_avm_address(GPOUT,376)
    assign out_memdep_21_sobel_filter_avm_address = bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_address;

    // out_memdep_21_sobel_filter_avm_burstcount(GPOUT,377)
    assign out_memdep_21_sobel_filter_avm_burstcount = bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_burstcount;

    // out_memdep_21_sobel_filter_avm_byteenable(GPOUT,378)
    assign out_memdep_21_sobel_filter_avm_byteenable = bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_byteenable;

    // out_memdep_21_sobel_filter_avm_enable(GPOUT,379)
    assign out_memdep_21_sobel_filter_avm_enable = bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_enable;

    // out_memdep_21_sobel_filter_avm_read(GPOUT,380)
    assign out_memdep_21_sobel_filter_avm_read = bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_read;

    // out_memdep_21_sobel_filter_avm_write(GPOUT,381)
    assign out_memdep_21_sobel_filter_avm_write = bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_write;

    // out_memdep_21_sobel_filter_avm_writedata(GPOUT,382)
    assign out_memdep_21_sobel_filter_avm_writedata = bb_sobel_filter_B19_out_memdep_21_sobel_filter_avm_writedata;

    // out_memdep_sobel_filter_avm_address(GPOUT,383)
    assign out_memdep_sobel_filter_avm_address = bb_sobel_filter_B3_out_memdep_sobel_filter_avm_address;

    // out_memdep_sobel_filter_avm_burstcount(GPOUT,384)
    assign out_memdep_sobel_filter_avm_burstcount = bb_sobel_filter_B3_out_memdep_sobel_filter_avm_burstcount;

    // out_memdep_sobel_filter_avm_byteenable(GPOUT,385)
    assign out_memdep_sobel_filter_avm_byteenable = bb_sobel_filter_B3_out_memdep_sobel_filter_avm_byteenable;

    // out_memdep_sobel_filter_avm_enable(GPOUT,386)
    assign out_memdep_sobel_filter_avm_enable = bb_sobel_filter_B3_out_memdep_sobel_filter_avm_enable;

    // out_memdep_sobel_filter_avm_read(GPOUT,387)
    assign out_memdep_sobel_filter_avm_read = bb_sobel_filter_B3_out_memdep_sobel_filter_avm_read;

    // out_memdep_sobel_filter_avm_write(GPOUT,388)
    assign out_memdep_sobel_filter_avm_write = bb_sobel_filter_B3_out_memdep_sobel_filter_avm_write;

    // out_memdep_sobel_filter_avm_writedata(GPOUT,389)
    assign out_memdep_sobel_filter_avm_writedata = bb_sobel_filter_B3_out_memdep_sobel_filter_avm_writedata;

    // out_stall_out(GPOUT,390)
    assign out_stall_out = bb_sobel_filter_B0_runOnce_out_stall_out_0;

    // out_unnamed_sobel_filter10_sobel_filter_avm_address(GPOUT,391)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_address = bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_address;

    // out_unnamed_sobel_filter10_sobel_filter_avm_burstcount(GPOUT,392)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_burstcount = bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter10_sobel_filter_avm_byteenable(GPOUT,393)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_byteenable = bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter10_sobel_filter_avm_enable(GPOUT,394)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_enable = bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter10_sobel_filter_avm_read(GPOUT,395)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_read = bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_read;

    // out_unnamed_sobel_filter10_sobel_filter_avm_write(GPOUT,396)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_write = bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_write;

    // out_unnamed_sobel_filter10_sobel_filter_avm_writedata(GPOUT,397)
    assign out_unnamed_sobel_filter10_sobel_filter_avm_writedata = bb_sobel_filter_B8_aunroll_x_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;

    // out_unnamed_sobel_filter12_sobel_filter_avm_address(GPOUT,398)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_address = bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_address;

    // out_unnamed_sobel_filter12_sobel_filter_avm_burstcount(GPOUT,399)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_burstcount = bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter12_sobel_filter_avm_byteenable(GPOUT,400)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_byteenable = bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter12_sobel_filter_avm_enable(GPOUT,401)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_enable = bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter12_sobel_filter_avm_read(GPOUT,402)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_read = bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_read;

    // out_unnamed_sobel_filter12_sobel_filter_avm_write(GPOUT,403)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_write = bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_write;

    // out_unnamed_sobel_filter12_sobel_filter_avm_writedata(GPOUT,404)
    assign out_unnamed_sobel_filter12_sobel_filter_avm_writedata = bb_sobel_filter_B13_aunroll_x_out_unnamed_sobel_filter12_sobel_filter_avm_writedata;

    // out_unnamed_sobel_filter14_sobel_filter_avm_address(GPOUT,405)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_address = bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_address;

    // out_unnamed_sobel_filter14_sobel_filter_avm_burstcount(GPOUT,406)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_burstcount = bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter14_sobel_filter_avm_byteenable(GPOUT,407)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_byteenable = bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter14_sobel_filter_avm_enable(GPOUT,408)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_enable = bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter14_sobel_filter_avm_read(GPOUT,409)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_read = bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_read;

    // out_unnamed_sobel_filter14_sobel_filter_avm_write(GPOUT,410)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_write = bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_write;

    // out_unnamed_sobel_filter14_sobel_filter_avm_writedata(GPOUT,411)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_writedata = bb_sobel_filter_B16_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;

    // out_unnamed_sobel_filter15_sobel_filter_avm_address(GPOUT,412)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_address = bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_address;

    // out_unnamed_sobel_filter15_sobel_filter_avm_burstcount(GPOUT,413)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_burstcount = bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter15_sobel_filter_avm_byteenable(GPOUT,414)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_byteenable = bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter15_sobel_filter_avm_enable(GPOUT,415)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_enable = bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter15_sobel_filter_avm_read(GPOUT,416)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_read = bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_read;

    // out_unnamed_sobel_filter15_sobel_filter_avm_write(GPOUT,417)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_write = bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_write;

    // out_unnamed_sobel_filter15_sobel_filter_avm_writedata(GPOUT,418)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_writedata = bb_sobel_filter_B16_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;

    // out_unnamed_sobel_filter8_sobel_filter_avm_address(GPOUT,419)
    assign out_unnamed_sobel_filter8_sobel_filter_avm_address = bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_address;

    // out_unnamed_sobel_filter8_sobel_filter_avm_burstcount(GPOUT,420)
    assign out_unnamed_sobel_filter8_sobel_filter_avm_burstcount = bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter8_sobel_filter_avm_byteenable(GPOUT,421)
    assign out_unnamed_sobel_filter8_sobel_filter_avm_byteenable = bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter8_sobel_filter_avm_enable(GPOUT,422)
    assign out_unnamed_sobel_filter8_sobel_filter_avm_enable = bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter8_sobel_filter_avm_read(GPOUT,423)
    assign out_unnamed_sobel_filter8_sobel_filter_avm_read = bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_read;

    // out_unnamed_sobel_filter8_sobel_filter_avm_write(GPOUT,424)
    assign out_unnamed_sobel_filter8_sobel_filter_avm_write = bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_write;

    // out_unnamed_sobel_filter8_sobel_filter_avm_writedata(GPOUT,425)
    assign out_unnamed_sobel_filter8_sobel_filter_avm_writedata = bb_sobel_filter_B4_out_unnamed_sobel_filter8_sobel_filter_avm_writedata;

    // out_valid_out(GPOUT,426)
    assign out_valid_out = GND_q;

endmodule
