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

// SystemVerilog created from SiS_Generic_ConvertCRData_function_wrapper
// SystemVerilog created on Sun May 24 22:36:42 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SiS_Generic_ConvertCRData_function_wrapper (
    input wire [63:0] SiS_Pr,
    input wire [63:0] avm_memdep_107_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_107_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_107_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_107_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_116_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_116_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_116_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_116_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_11_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_11_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_11_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_11_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_125_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_125_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_125_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_125_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_134_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_134_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_134_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_134_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_143_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_143_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_143_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_143_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_152_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_152_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_152_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_152_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_161_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_161_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_161_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_161_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_710_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_710_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_710_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_710_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_89_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_89_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_89_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_89_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_memdep_98_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_memdep_98_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_memdep_98_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_memdep_98_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_writeack,
    input wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_readdata,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_readdatavalid,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_waitrequest,
    input wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_writeack,
    input wire [319:0] avst_iord_bl_call_SiS_Generic_ConvertCRData_data,
    input wire [0:0] avst_iord_bl_call_SiS_Generic_ConvertCRData_valid,
    input wire [0:0] avst_iowr_bl_return_SiS_Generic_ConvertCRData_almostfull,
    input wire [0:0] avst_iowr_bl_return_SiS_Generic_ConvertCRData_ready,
    input wire [63:0] crdata,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [63:0] var0,
    input wire [0:0] writeres,
    input wire [31:0] xres,
    input wire [31:0] yres,
    output wire [63:0] avm_memdep_107_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_107_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_107_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_107_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_107_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_107_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_107_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_116_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_116_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_116_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_116_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_116_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_116_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_116_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_11_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_11_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_11_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_11_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_11_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_11_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_11_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_125_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_125_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_125_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_125_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_125_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_125_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_125_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_134_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_134_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_134_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_134_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_134_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_134_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_134_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_143_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_143_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_143_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_143_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_143_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_143_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_143_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_152_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_152_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_152_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_152_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_152_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_152_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_152_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_161_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_161_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_161_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_161_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_161_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_161_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_161_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_710_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_710_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_710_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_710_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_710_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_710_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_710_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_89_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_89_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_89_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_89_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_89_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_89_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_89_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_memdep_98_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_memdep_98_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_memdep_98_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_memdep_98_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_memdep_98_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_memdep_98_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_memdep_98_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_writedata,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_address,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_burstcount,
    output wire [7:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_byteenable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_enable,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_read,
    output wire [0:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_write,
    output wire [63:0] avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_writedata,
    output wire [0:0] avst_iord_bl_call_SiS_Generic_ConvertCRData_ready,
    output wire [0:0] avst_iowr_bl_return_SiS_Generic_ConvertCRData_data,
    output wire [0:0] avst_iowr_bl_return_SiS_Generic_ConvertCRData_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_iord_bl_call_SiS_Generic_ConvertCRData_o_fifoready;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifodata;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifovalid;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_address;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_burstcount;
    wire [7:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_byteenable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_enable;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_read;
    wire [0:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_write;
    wire [63:0] SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_writedata;
    wire [63:0] SiS_Pr_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [319:0] implicit_input_q;
    wire [62:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,119)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,11)
    assign implicit_input_pad_const_end_q = $unsigned(63'b000000000000000000000000000000000000000000000000000000000000000);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {implicit_input_pad_const_end_q, writeres, var0, yres, xres, crdata, SiS_Pr};

    // SiS_Pr_const(CONSTANT,3)
    assign SiS_Pr_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // SiS_Generic_ConvertCRData_function(BLACKBOX,2)
    SiS_Generic_ConvertCRData_function theSiS_Generic_ConvertCRData_function (
        .in_arg_SiS_Pr(SiS_Pr_const_q),
        .in_arg_call(SiS_Pr_const_q),
        .in_arg_crdata(SiS_Pr_const_q),
        .in_arg_return(SiS_Pr_const_q),
        .in_arg_var0(SiS_Pr_const_q),
        .in_iord_bl_call_SiS_Generic_ConvertCRData_i_fifodata(implicit_input_q),
        .in_iord_bl_call_SiS_Generic_ConvertCRData_i_fifovalid(start),
        .in_iowr_bl_return_SiS_Generic_ConvertCRData_i_fifoready(not_stall_q),
        .in_memdep_107_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_107_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_107_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_107_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_107_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_107_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_107_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_107_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_116_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_116_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_116_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_116_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_116_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_116_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_116_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_116_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_11_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_11_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_11_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_11_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_11_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_11_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_11_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_11_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_125_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_125_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_125_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_125_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_125_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_125_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_125_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_125_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_134_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_134_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_134_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_134_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_134_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_134_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_134_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_134_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_143_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_143_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_143_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_143_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_143_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_143_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_143_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_143_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_152_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_152_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_152_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_152_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_152_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_152_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_152_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_152_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_161_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_161_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_161_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_161_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_161_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_161_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_161_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_161_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_710_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_710_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_710_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_710_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_710_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_710_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_710_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_710_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_89_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_89_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_89_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_89_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_89_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_89_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_89_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_89_SiS_Generic_ConvertCRData_writeack),
        .in_memdep_98_SiS_Generic_ConvertCRData_avm_readdata(avm_memdep_98_SiS_Generic_ConvertCRData_readdata),
        .in_memdep_98_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_memdep_98_SiS_Generic_ConvertCRData_readdatavalid),
        .in_memdep_98_SiS_Generic_ConvertCRData_avm_waitrequest(avm_memdep_98_SiS_Generic_ConvertCRData_waitrequest),
        .in_memdep_98_SiS_Generic_ConvertCRData_avm_writeack(avm_memdep_98_SiS_Generic_ConvertCRData_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_writeack),
        .in_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_readdata(avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_readdata),
        .in_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_readdatavalid(avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_readdatavalid),
        .in_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_waitrequest(avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_waitrequest),
        .in_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_writeack(avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_SiS_Generic_ConvertCRData_o_fifoready(SiS_Generic_ConvertCRData_function_out_iord_bl_call_SiS_Generic_ConvertCRData_o_fifoready),
        .out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifodata(SiS_Generic_ConvertCRData_function_out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifodata),
        .out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifovalid(SiS_Generic_ConvertCRData_function_out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifovalid),
        .out_memdep_107_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_107_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_107_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_107_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_107_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_107_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_107_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_116_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_116_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_116_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_116_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_116_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_116_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_116_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_11_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_11_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_11_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_11_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_11_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_11_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_11_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_125_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_125_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_125_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_125_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_125_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_125_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_125_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_134_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_134_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_134_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_134_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_134_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_134_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_134_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_143_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_143_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_143_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_143_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_143_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_143_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_143_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_152_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_152_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_152_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_152_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_152_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_152_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_152_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_161_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_161_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_161_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_161_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_161_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_161_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_161_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_710_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_710_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_710_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_710_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_710_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_710_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_710_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_89_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_89_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_89_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_89_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_89_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_89_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_89_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_writedata),
        .out_memdep_98_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_address),
        .out_memdep_98_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_memdep_98_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_memdep_98_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_enable),
        .out_memdep_98_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_read),
        .out_memdep_98_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_write),
        .out_memdep_98_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_writedata),
        .out_o_active_memdep_107(),
        .out_o_active_memdep_11(),
        .out_o_active_memdep_116(),
        .out_o_active_memdep_125(),
        .out_o_active_memdep_134(),
        .out_o_active_memdep_143(),
        .out_o_active_memdep_152(),
        .out_o_active_memdep_161(),
        .out_o_active_memdep_710(),
        .out_o_active_memdep_89(),
        .out_o_active_memdep_98(),
        .out_stall_out(),
        .out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_writedata),
        .out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_address(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_address),
        .out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_burstcount(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_burstcount),
        .out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_byteenable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_byteenable),
        .out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_enable(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_enable),
        .out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_read(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_read),
        .out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_write(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_write),
        .out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_writedata(SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_107_SiS_Generic_ConvertCRData_address(GPOUT,120)
    assign avm_memdep_107_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_107_SiS_Generic_ConvertCRData_burstcount(GPOUT,121)
    assign avm_memdep_107_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_107_SiS_Generic_ConvertCRData_byteenable(GPOUT,122)
    assign avm_memdep_107_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_107_SiS_Generic_ConvertCRData_enable(GPOUT,123)
    assign avm_memdep_107_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_107_SiS_Generic_ConvertCRData_read(GPOUT,124)
    assign avm_memdep_107_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_107_SiS_Generic_ConvertCRData_write(GPOUT,125)
    assign avm_memdep_107_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_107_SiS_Generic_ConvertCRData_writedata(GPOUT,126)
    assign avm_memdep_107_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_107_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_116_SiS_Generic_ConvertCRData_address(GPOUT,127)
    assign avm_memdep_116_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_116_SiS_Generic_ConvertCRData_burstcount(GPOUT,128)
    assign avm_memdep_116_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_116_SiS_Generic_ConvertCRData_byteenable(GPOUT,129)
    assign avm_memdep_116_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_116_SiS_Generic_ConvertCRData_enable(GPOUT,130)
    assign avm_memdep_116_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_116_SiS_Generic_ConvertCRData_read(GPOUT,131)
    assign avm_memdep_116_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_116_SiS_Generic_ConvertCRData_write(GPOUT,132)
    assign avm_memdep_116_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_116_SiS_Generic_ConvertCRData_writedata(GPOUT,133)
    assign avm_memdep_116_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_116_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_11_SiS_Generic_ConvertCRData_address(GPOUT,134)
    assign avm_memdep_11_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_11_SiS_Generic_ConvertCRData_burstcount(GPOUT,135)
    assign avm_memdep_11_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_11_SiS_Generic_ConvertCRData_byteenable(GPOUT,136)
    assign avm_memdep_11_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_11_SiS_Generic_ConvertCRData_enable(GPOUT,137)
    assign avm_memdep_11_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_11_SiS_Generic_ConvertCRData_read(GPOUT,138)
    assign avm_memdep_11_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_11_SiS_Generic_ConvertCRData_write(GPOUT,139)
    assign avm_memdep_11_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_11_SiS_Generic_ConvertCRData_writedata(GPOUT,140)
    assign avm_memdep_11_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_11_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_125_SiS_Generic_ConvertCRData_address(GPOUT,141)
    assign avm_memdep_125_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_125_SiS_Generic_ConvertCRData_burstcount(GPOUT,142)
    assign avm_memdep_125_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_125_SiS_Generic_ConvertCRData_byteenable(GPOUT,143)
    assign avm_memdep_125_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_125_SiS_Generic_ConvertCRData_enable(GPOUT,144)
    assign avm_memdep_125_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_125_SiS_Generic_ConvertCRData_read(GPOUT,145)
    assign avm_memdep_125_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_125_SiS_Generic_ConvertCRData_write(GPOUT,146)
    assign avm_memdep_125_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_125_SiS_Generic_ConvertCRData_writedata(GPOUT,147)
    assign avm_memdep_125_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_125_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_134_SiS_Generic_ConvertCRData_address(GPOUT,148)
    assign avm_memdep_134_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_134_SiS_Generic_ConvertCRData_burstcount(GPOUT,149)
    assign avm_memdep_134_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_134_SiS_Generic_ConvertCRData_byteenable(GPOUT,150)
    assign avm_memdep_134_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_134_SiS_Generic_ConvertCRData_enable(GPOUT,151)
    assign avm_memdep_134_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_134_SiS_Generic_ConvertCRData_read(GPOUT,152)
    assign avm_memdep_134_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_134_SiS_Generic_ConvertCRData_write(GPOUT,153)
    assign avm_memdep_134_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_134_SiS_Generic_ConvertCRData_writedata(GPOUT,154)
    assign avm_memdep_134_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_134_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_143_SiS_Generic_ConvertCRData_address(GPOUT,155)
    assign avm_memdep_143_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_143_SiS_Generic_ConvertCRData_burstcount(GPOUT,156)
    assign avm_memdep_143_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_143_SiS_Generic_ConvertCRData_byteenable(GPOUT,157)
    assign avm_memdep_143_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_143_SiS_Generic_ConvertCRData_enable(GPOUT,158)
    assign avm_memdep_143_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_143_SiS_Generic_ConvertCRData_read(GPOUT,159)
    assign avm_memdep_143_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_143_SiS_Generic_ConvertCRData_write(GPOUT,160)
    assign avm_memdep_143_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_143_SiS_Generic_ConvertCRData_writedata(GPOUT,161)
    assign avm_memdep_143_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_143_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_152_SiS_Generic_ConvertCRData_address(GPOUT,162)
    assign avm_memdep_152_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_152_SiS_Generic_ConvertCRData_burstcount(GPOUT,163)
    assign avm_memdep_152_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_152_SiS_Generic_ConvertCRData_byteenable(GPOUT,164)
    assign avm_memdep_152_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_152_SiS_Generic_ConvertCRData_enable(GPOUT,165)
    assign avm_memdep_152_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_152_SiS_Generic_ConvertCRData_read(GPOUT,166)
    assign avm_memdep_152_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_152_SiS_Generic_ConvertCRData_write(GPOUT,167)
    assign avm_memdep_152_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_152_SiS_Generic_ConvertCRData_writedata(GPOUT,168)
    assign avm_memdep_152_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_152_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_161_SiS_Generic_ConvertCRData_address(GPOUT,169)
    assign avm_memdep_161_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_161_SiS_Generic_ConvertCRData_burstcount(GPOUT,170)
    assign avm_memdep_161_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_161_SiS_Generic_ConvertCRData_byteenable(GPOUT,171)
    assign avm_memdep_161_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_161_SiS_Generic_ConvertCRData_enable(GPOUT,172)
    assign avm_memdep_161_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_161_SiS_Generic_ConvertCRData_read(GPOUT,173)
    assign avm_memdep_161_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_161_SiS_Generic_ConvertCRData_write(GPOUT,174)
    assign avm_memdep_161_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_161_SiS_Generic_ConvertCRData_writedata(GPOUT,175)
    assign avm_memdep_161_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_161_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_710_SiS_Generic_ConvertCRData_address(GPOUT,176)
    assign avm_memdep_710_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_710_SiS_Generic_ConvertCRData_burstcount(GPOUT,177)
    assign avm_memdep_710_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_710_SiS_Generic_ConvertCRData_byteenable(GPOUT,178)
    assign avm_memdep_710_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_710_SiS_Generic_ConvertCRData_enable(GPOUT,179)
    assign avm_memdep_710_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_710_SiS_Generic_ConvertCRData_read(GPOUT,180)
    assign avm_memdep_710_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_710_SiS_Generic_ConvertCRData_write(GPOUT,181)
    assign avm_memdep_710_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_710_SiS_Generic_ConvertCRData_writedata(GPOUT,182)
    assign avm_memdep_710_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_710_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_89_SiS_Generic_ConvertCRData_address(GPOUT,183)
    assign avm_memdep_89_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_89_SiS_Generic_ConvertCRData_burstcount(GPOUT,184)
    assign avm_memdep_89_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_89_SiS_Generic_ConvertCRData_byteenable(GPOUT,185)
    assign avm_memdep_89_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_89_SiS_Generic_ConvertCRData_enable(GPOUT,186)
    assign avm_memdep_89_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_89_SiS_Generic_ConvertCRData_read(GPOUT,187)
    assign avm_memdep_89_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_89_SiS_Generic_ConvertCRData_write(GPOUT,188)
    assign avm_memdep_89_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_89_SiS_Generic_ConvertCRData_writedata(GPOUT,189)
    assign avm_memdep_89_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_89_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_memdep_98_SiS_Generic_ConvertCRData_address(GPOUT,190)
    assign avm_memdep_98_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_address;

    // avm_memdep_98_SiS_Generic_ConvertCRData_burstcount(GPOUT,191)
    assign avm_memdep_98_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_memdep_98_SiS_Generic_ConvertCRData_byteenable(GPOUT,192)
    assign avm_memdep_98_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_memdep_98_SiS_Generic_ConvertCRData_enable(GPOUT,193)
    assign avm_memdep_98_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_enable;

    // avm_memdep_98_SiS_Generic_ConvertCRData_read(GPOUT,194)
    assign avm_memdep_98_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_read;

    // avm_memdep_98_SiS_Generic_ConvertCRData_write(GPOUT,195)
    assign avm_memdep_98_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_write;

    // avm_memdep_98_SiS_Generic_ConvertCRData_writedata(GPOUT,196)
    assign avm_memdep_98_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_memdep_98_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_address(GPOUT,197)
    assign avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_burstcount(GPOUT,198)
    assign avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_byteenable(GPOUT,199)
    assign avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_enable(GPOUT,200)
    assign avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_read(GPOUT,201)
    assign avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_write(GPOUT,202)
    assign avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_writedata(GPOUT,203)
    assign avm_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData10_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_address(GPOUT,204)
    assign avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_burstcount(GPOUT,205)
    assign avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_byteenable(GPOUT,206)
    assign avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_enable(GPOUT,207)
    assign avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_read(GPOUT,208)
    assign avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_write(GPOUT,209)
    assign avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_writedata(GPOUT,210)
    assign avm_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData11_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_address(GPOUT,211)
    assign avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_burstcount(GPOUT,212)
    assign avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_byteenable(GPOUT,213)
    assign avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_enable(GPOUT,214)
    assign avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_read(GPOUT,215)
    assign avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_write(GPOUT,216)
    assign avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_writedata(GPOUT,217)
    assign avm_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData12_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_address(GPOUT,218)
    assign avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_burstcount(GPOUT,219)
    assign avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_byteenable(GPOUT,220)
    assign avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_enable(GPOUT,221)
    assign avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_read(GPOUT,222)
    assign avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_write(GPOUT,223)
    assign avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_writedata(GPOUT,224)
    assign avm_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData13_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_address(GPOUT,225)
    assign avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_burstcount(GPOUT,226)
    assign avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_byteenable(GPOUT,227)
    assign avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_enable(GPOUT,228)
    assign avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_read(GPOUT,229)
    assign avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_write(GPOUT,230)
    assign avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_writedata(GPOUT,231)
    assign avm_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData1_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_address(GPOUT,232)
    assign avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_burstcount(GPOUT,233)
    assign avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_byteenable(GPOUT,234)
    assign avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_enable(GPOUT,235)
    assign avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_read(GPOUT,236)
    assign avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_write(GPOUT,237)
    assign avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_writedata(GPOUT,238)
    assign avm_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData2_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_address(GPOUT,239)
    assign avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_burstcount(GPOUT,240)
    assign avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_byteenable(GPOUT,241)
    assign avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_enable(GPOUT,242)
    assign avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_read(GPOUT,243)
    assign avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_write(GPOUT,244)
    assign avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_writedata(GPOUT,245)
    assign avm_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData3_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_address(GPOUT,246)
    assign avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_burstcount(GPOUT,247)
    assign avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_byteenable(GPOUT,248)
    assign avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_enable(GPOUT,249)
    assign avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_read(GPOUT,250)
    assign avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_write(GPOUT,251)
    assign avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_writedata(GPOUT,252)
    assign avm_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData4_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_address(GPOUT,253)
    assign avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_burstcount(GPOUT,254)
    assign avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_byteenable(GPOUT,255)
    assign avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_enable(GPOUT,256)
    assign avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_read(GPOUT,257)
    assign avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_write(GPOUT,258)
    assign avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_writedata(GPOUT,259)
    assign avm_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData5_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_address(GPOUT,260)
    assign avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_burstcount(GPOUT,261)
    assign avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_byteenable(GPOUT,262)
    assign avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_enable(GPOUT,263)
    assign avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_read(GPOUT,264)
    assign avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_write(GPOUT,265)
    assign avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_writedata(GPOUT,266)
    assign avm_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData6_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_address(GPOUT,267)
    assign avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_burstcount(GPOUT,268)
    assign avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_byteenable(GPOUT,269)
    assign avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_enable(GPOUT,270)
    assign avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_read(GPOUT,271)
    assign avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_write(GPOUT,272)
    assign avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_writedata(GPOUT,273)
    assign avm_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData8_SiS_Generic_ConvertCRData_avm_writedata;

    // avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_address(GPOUT,274)
    assign avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_address = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_address;

    // avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_burstcount(GPOUT,275)
    assign avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_burstcount = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_burstcount;

    // avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_byteenable(GPOUT,276)
    assign avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_byteenable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_byteenable;

    // avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_enable(GPOUT,277)
    assign avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_enable = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_enable;

    // avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_read(GPOUT,278)
    assign avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_read = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_read;

    // avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_write(GPOUT,279)
    assign avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_write = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_write;

    // avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_writedata(GPOUT,280)
    assign avm_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_writedata = SiS_Generic_ConvertCRData_function_out_unnamed_SiS_Generic_ConvertCRData9_SiS_Generic_ConvertCRData_avm_writedata;

    // avst_iord_bl_call_SiS_Generic_ConvertCRData_ready(GPOUT,281)
    assign avst_iord_bl_call_SiS_Generic_ConvertCRData_ready = SiS_Generic_ConvertCRData_function_out_iord_bl_call_SiS_Generic_ConvertCRData_o_fifoready;

    // avst_iowr_bl_return_SiS_Generic_ConvertCRData_data(GPOUT,282)
    assign avst_iowr_bl_return_SiS_Generic_ConvertCRData_data = SiS_Generic_ConvertCRData_function_out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifodata;

    // avst_iowr_bl_return_SiS_Generic_ConvertCRData_valid(GPOUT,283)
    assign avst_iowr_bl_return_SiS_Generic_ConvertCRData_valid = SiS_Generic_ConvertCRData_function_out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifovalid;

    // not_ready(LOGICAL,118)
    assign not_ready_q = ~ (SiS_Generic_ConvertCRData_function_out_iord_bl_call_SiS_Generic_ConvertCRData_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,287)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,286)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,284)
    assign busy = busy_or_q;

    // done(GPOUT,285)
    assign done = SiS_Generic_ConvertCRData_function_out_iowr_bl_return_SiS_Generic_ConvertCRData_o_fifovalid;

endmodule
