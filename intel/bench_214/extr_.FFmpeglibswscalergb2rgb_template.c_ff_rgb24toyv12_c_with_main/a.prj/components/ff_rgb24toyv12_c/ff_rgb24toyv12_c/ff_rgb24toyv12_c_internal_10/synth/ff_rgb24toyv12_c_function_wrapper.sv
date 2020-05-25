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

// SystemVerilog created from ff_rgb24toyv12_c_function_wrapper
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_function_wrapper (
    input wire [63:0] BU_IDX,
    input wire [63:0] BV_IDX,
    input wire [63:0] BY_IDX,
    input wire [63:0] GU_IDX,
    input wire [63:0] GV_IDX,
    input wire [63:0] GY_IDX,
    input wire [63:0] RGB2YUV_SHIFT,
    input wire [63:0] RU_IDX,
    input wire [63:0] RV_IDX,
    input wire [63:0] RY_IDX,
    input wire [63:0] avm_lm1_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm1_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm1_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm1_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm302_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm302_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm302_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm302_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm323_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm323_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm323_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm323_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm344_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm344_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm344_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm344_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm365_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm365_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm365_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm365_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm386_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm386_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm386_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm386_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm407_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm407_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm407_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm407_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm428_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm428_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm428_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm428_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm539_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm539_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm539_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm539_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm5510_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm5510_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm5510_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm5510_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm5711_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm5711_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm5711_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm5711_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm5912_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm5912_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm5912_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm5912_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm6113_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm6113_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm6113_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm6113_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm6314_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm6314_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm6314_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm6314_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm6515_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm6515_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm6515_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm6515_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_lm6716_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_lm6716_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_lm6716_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_lm6716_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_memdep_104_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_memdep_104_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_memdep_104_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_memdep_104_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_memdep_154_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_memdep_154_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_memdep_154_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_memdep_154_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_memdep_201_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_memdep_201_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_memdep_201_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_memdep_201_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_memdep_39_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_memdep_39_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_memdep_39_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_memdep_39_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_memdep_59_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_memdep_59_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_memdep_59_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_memdep_59_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_memdep_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_memdep_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_memdep_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_memdep_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_writeack,
    input wire [63:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_readdata,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_readdatavalid,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_waitrequest,
    input wire [0:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_writeack,
    input wire [1151:0] avst_iord_bl_call_ff_rgb24toyv12_c_data,
    input wire [0:0] avst_iord_bl_call_ff_rgb24toyv12_c_valid,
    input wire [0:0] avst_iowr_bl_return_ff_rgb24toyv12_c_almostfull,
    input wire [0:0] avst_iowr_bl_return_ff_rgb24toyv12_c_ready,
    input wire [31:0] chromStride,
    input wire [31:0] height,
    input wire [31:0] lumStride,
    input wire [63:0] rgb2yuv,
    input wire [63:0] src,
    input wire [31:0] srcStride,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [63:0] udst,
    input wire [0:0] valid_in,
    input wire [63:0] vdst,
    input wire [31:0] width,
    input wire [63:0] ydst,
    output wire [63:0] avm_lm1_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm1_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm1_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm1_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm1_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm1_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm1_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm302_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm302_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm302_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm302_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm302_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm302_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm302_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm323_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm323_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm323_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm323_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm323_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm323_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm323_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm344_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm344_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm344_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm344_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm344_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm344_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm344_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm365_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm365_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm365_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm365_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm365_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm365_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm365_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm386_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm386_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm386_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm386_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm386_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm386_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm386_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm407_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm407_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm407_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm407_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm407_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm407_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm407_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm428_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm428_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm428_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm428_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm428_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm428_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm428_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm539_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm539_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm539_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm539_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm539_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm539_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm539_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm5510_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm5510_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm5510_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm5510_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm5510_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm5510_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm5510_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm5711_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm5711_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm5711_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm5711_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm5711_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm5711_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm5711_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm5912_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm5912_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm5912_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm5912_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm5912_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm5912_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm5912_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm6113_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm6113_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm6113_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm6113_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm6113_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm6113_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm6113_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm6314_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm6314_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm6314_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm6314_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm6314_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm6314_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm6314_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm6515_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm6515_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm6515_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm6515_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm6515_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm6515_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm6515_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_lm6716_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_lm6716_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_lm6716_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_lm6716_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_lm6716_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_lm6716_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_lm6716_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_memdep_104_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_memdep_104_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_memdep_104_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_memdep_104_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_memdep_104_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_memdep_104_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_memdep_104_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_memdep_154_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_memdep_154_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_memdep_154_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_memdep_154_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_memdep_154_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_memdep_154_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_memdep_154_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_memdep_201_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_memdep_201_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_memdep_201_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_memdep_201_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_memdep_201_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_memdep_201_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_memdep_201_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_memdep_39_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_memdep_39_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_memdep_39_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_memdep_39_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_memdep_39_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_memdep_39_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_memdep_39_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_memdep_59_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_memdep_59_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_memdep_59_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_memdep_59_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_memdep_59_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_memdep_59_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_memdep_59_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_memdep_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_memdep_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_memdep_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_memdep_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_memdep_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_memdep_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_memdep_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_writedata,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_address,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_burstcount,
    output wire [7:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_byteenable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_enable,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_read,
    output wire [0:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_write,
    output wire [63:0] avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_writedata,
    output wire [0:0] avst_iord_bl_call_ff_rgb24toyv12_c_ready,
    output wire [0:0] avst_iowr_bl_return_ff_rgb24toyv12_c_data,
    output wire [0:0] avst_iowr_bl_return_ff_rgb24toyv12_c_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] ff_rgb24toyv12_c_function_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready;
    wire [0:0] ff_rgb24toyv12_c_function_out_iowr_bl_return_ff_rgb24toyv12_c_o_fifodata;
    wire [0:0] ff_rgb24toyv12_c_function_out_iowr_bl_return_ff_rgb24toyv12_c_o_fifovalid;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read;
    wire [0:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write;
    wire [63:0] ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata;
    wire [1151:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_9_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,199)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_9(CONSTANT,9)
    assign implicit_input_pad_const_9_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {RY_IDX, RV_IDX, RU_IDX, RGB2YUV_SHIFT, GY_IDX, GV_IDX, GU_IDX, BY_IDX, BV_IDX, BU_IDX, rgb2yuv, implicit_input_pad_const_9_q, srcStride, chromStride, lumStride, height, width, vdst, udst, ydst, src};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // ff_rgb24toyv12_c_function(BLACKBOX,7)
    ff_rgb24toyv12_c_function theff_rgb24toyv12_c_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_rgb2yuv(call_const_q),
        .in_arg_src(call_const_q),
        .in_arg_udst(call_const_q),
        .in_arg_vdst(call_const_q),
        .in_arg_ydst(call_const_q),
        .in_iord_bl_call_ff_rgb24toyv12_c_i_fifodata(implicit_input_q),
        .in_iord_bl_call_ff_rgb24toyv12_c_i_fifovalid(start),
        .in_iowr_bl_return_ff_rgb24toyv12_c_i_fifoready(not_stall_q),
        .in_lm1_ff_rgb24toyv12_c_avm_readdata(avm_lm1_ff_rgb24toyv12_c_readdata),
        .in_lm1_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm1_ff_rgb24toyv12_c_readdatavalid),
        .in_lm1_ff_rgb24toyv12_c_avm_waitrequest(avm_lm1_ff_rgb24toyv12_c_waitrequest),
        .in_lm1_ff_rgb24toyv12_c_avm_writeack(avm_lm1_ff_rgb24toyv12_c_writeack),
        .in_lm302_ff_rgb24toyv12_c_avm_readdata(avm_lm302_ff_rgb24toyv12_c_readdata),
        .in_lm302_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm302_ff_rgb24toyv12_c_readdatavalid),
        .in_lm302_ff_rgb24toyv12_c_avm_waitrequest(avm_lm302_ff_rgb24toyv12_c_waitrequest),
        .in_lm302_ff_rgb24toyv12_c_avm_writeack(avm_lm302_ff_rgb24toyv12_c_writeack),
        .in_lm323_ff_rgb24toyv12_c_avm_readdata(avm_lm323_ff_rgb24toyv12_c_readdata),
        .in_lm323_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm323_ff_rgb24toyv12_c_readdatavalid),
        .in_lm323_ff_rgb24toyv12_c_avm_waitrequest(avm_lm323_ff_rgb24toyv12_c_waitrequest),
        .in_lm323_ff_rgb24toyv12_c_avm_writeack(avm_lm323_ff_rgb24toyv12_c_writeack),
        .in_lm344_ff_rgb24toyv12_c_avm_readdata(avm_lm344_ff_rgb24toyv12_c_readdata),
        .in_lm344_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm344_ff_rgb24toyv12_c_readdatavalid),
        .in_lm344_ff_rgb24toyv12_c_avm_waitrequest(avm_lm344_ff_rgb24toyv12_c_waitrequest),
        .in_lm344_ff_rgb24toyv12_c_avm_writeack(avm_lm344_ff_rgb24toyv12_c_writeack),
        .in_lm365_ff_rgb24toyv12_c_avm_readdata(avm_lm365_ff_rgb24toyv12_c_readdata),
        .in_lm365_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm365_ff_rgb24toyv12_c_readdatavalid),
        .in_lm365_ff_rgb24toyv12_c_avm_waitrequest(avm_lm365_ff_rgb24toyv12_c_waitrequest),
        .in_lm365_ff_rgb24toyv12_c_avm_writeack(avm_lm365_ff_rgb24toyv12_c_writeack),
        .in_lm386_ff_rgb24toyv12_c_avm_readdata(avm_lm386_ff_rgb24toyv12_c_readdata),
        .in_lm386_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm386_ff_rgb24toyv12_c_readdatavalid),
        .in_lm386_ff_rgb24toyv12_c_avm_waitrequest(avm_lm386_ff_rgb24toyv12_c_waitrequest),
        .in_lm386_ff_rgb24toyv12_c_avm_writeack(avm_lm386_ff_rgb24toyv12_c_writeack),
        .in_lm407_ff_rgb24toyv12_c_avm_readdata(avm_lm407_ff_rgb24toyv12_c_readdata),
        .in_lm407_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm407_ff_rgb24toyv12_c_readdatavalid),
        .in_lm407_ff_rgb24toyv12_c_avm_waitrequest(avm_lm407_ff_rgb24toyv12_c_waitrequest),
        .in_lm407_ff_rgb24toyv12_c_avm_writeack(avm_lm407_ff_rgb24toyv12_c_writeack),
        .in_lm428_ff_rgb24toyv12_c_avm_readdata(avm_lm428_ff_rgb24toyv12_c_readdata),
        .in_lm428_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm428_ff_rgb24toyv12_c_readdatavalid),
        .in_lm428_ff_rgb24toyv12_c_avm_waitrequest(avm_lm428_ff_rgb24toyv12_c_waitrequest),
        .in_lm428_ff_rgb24toyv12_c_avm_writeack(avm_lm428_ff_rgb24toyv12_c_writeack),
        .in_lm539_ff_rgb24toyv12_c_avm_readdata(avm_lm539_ff_rgb24toyv12_c_readdata),
        .in_lm539_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm539_ff_rgb24toyv12_c_readdatavalid),
        .in_lm539_ff_rgb24toyv12_c_avm_waitrequest(avm_lm539_ff_rgb24toyv12_c_waitrequest),
        .in_lm539_ff_rgb24toyv12_c_avm_writeack(avm_lm539_ff_rgb24toyv12_c_writeack),
        .in_lm5510_ff_rgb24toyv12_c_avm_readdata(avm_lm5510_ff_rgb24toyv12_c_readdata),
        .in_lm5510_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm5510_ff_rgb24toyv12_c_readdatavalid),
        .in_lm5510_ff_rgb24toyv12_c_avm_waitrequest(avm_lm5510_ff_rgb24toyv12_c_waitrequest),
        .in_lm5510_ff_rgb24toyv12_c_avm_writeack(avm_lm5510_ff_rgb24toyv12_c_writeack),
        .in_lm5711_ff_rgb24toyv12_c_avm_readdata(avm_lm5711_ff_rgb24toyv12_c_readdata),
        .in_lm5711_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm5711_ff_rgb24toyv12_c_readdatavalid),
        .in_lm5711_ff_rgb24toyv12_c_avm_waitrequest(avm_lm5711_ff_rgb24toyv12_c_waitrequest),
        .in_lm5711_ff_rgb24toyv12_c_avm_writeack(avm_lm5711_ff_rgb24toyv12_c_writeack),
        .in_lm5912_ff_rgb24toyv12_c_avm_readdata(avm_lm5912_ff_rgb24toyv12_c_readdata),
        .in_lm5912_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm5912_ff_rgb24toyv12_c_readdatavalid),
        .in_lm5912_ff_rgb24toyv12_c_avm_waitrequest(avm_lm5912_ff_rgb24toyv12_c_waitrequest),
        .in_lm5912_ff_rgb24toyv12_c_avm_writeack(avm_lm5912_ff_rgb24toyv12_c_writeack),
        .in_lm6113_ff_rgb24toyv12_c_avm_readdata(avm_lm6113_ff_rgb24toyv12_c_readdata),
        .in_lm6113_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm6113_ff_rgb24toyv12_c_readdatavalid),
        .in_lm6113_ff_rgb24toyv12_c_avm_waitrequest(avm_lm6113_ff_rgb24toyv12_c_waitrequest),
        .in_lm6113_ff_rgb24toyv12_c_avm_writeack(avm_lm6113_ff_rgb24toyv12_c_writeack),
        .in_lm6314_ff_rgb24toyv12_c_avm_readdata(avm_lm6314_ff_rgb24toyv12_c_readdata),
        .in_lm6314_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm6314_ff_rgb24toyv12_c_readdatavalid),
        .in_lm6314_ff_rgb24toyv12_c_avm_waitrequest(avm_lm6314_ff_rgb24toyv12_c_waitrequest),
        .in_lm6314_ff_rgb24toyv12_c_avm_writeack(avm_lm6314_ff_rgb24toyv12_c_writeack),
        .in_lm6515_ff_rgb24toyv12_c_avm_readdata(avm_lm6515_ff_rgb24toyv12_c_readdata),
        .in_lm6515_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm6515_ff_rgb24toyv12_c_readdatavalid),
        .in_lm6515_ff_rgb24toyv12_c_avm_waitrequest(avm_lm6515_ff_rgb24toyv12_c_waitrequest),
        .in_lm6515_ff_rgb24toyv12_c_avm_writeack(avm_lm6515_ff_rgb24toyv12_c_writeack),
        .in_lm6716_ff_rgb24toyv12_c_avm_readdata(avm_lm6716_ff_rgb24toyv12_c_readdata),
        .in_lm6716_ff_rgb24toyv12_c_avm_readdatavalid(avm_lm6716_ff_rgb24toyv12_c_readdatavalid),
        .in_lm6716_ff_rgb24toyv12_c_avm_waitrequest(avm_lm6716_ff_rgb24toyv12_c_waitrequest),
        .in_lm6716_ff_rgb24toyv12_c_avm_writeack(avm_lm6716_ff_rgb24toyv12_c_writeack),
        .in_memdep_104_ff_rgb24toyv12_c_avm_readdata(avm_memdep_104_ff_rgb24toyv12_c_readdata),
        .in_memdep_104_ff_rgb24toyv12_c_avm_readdatavalid(avm_memdep_104_ff_rgb24toyv12_c_readdatavalid),
        .in_memdep_104_ff_rgb24toyv12_c_avm_waitrequest(avm_memdep_104_ff_rgb24toyv12_c_waitrequest),
        .in_memdep_104_ff_rgb24toyv12_c_avm_writeack(avm_memdep_104_ff_rgb24toyv12_c_writeack),
        .in_memdep_154_ff_rgb24toyv12_c_avm_readdata(avm_memdep_154_ff_rgb24toyv12_c_readdata),
        .in_memdep_154_ff_rgb24toyv12_c_avm_readdatavalid(avm_memdep_154_ff_rgb24toyv12_c_readdatavalid),
        .in_memdep_154_ff_rgb24toyv12_c_avm_waitrequest(avm_memdep_154_ff_rgb24toyv12_c_waitrequest),
        .in_memdep_154_ff_rgb24toyv12_c_avm_writeack(avm_memdep_154_ff_rgb24toyv12_c_writeack),
        .in_memdep_201_ff_rgb24toyv12_c_avm_readdata(avm_memdep_201_ff_rgb24toyv12_c_readdata),
        .in_memdep_201_ff_rgb24toyv12_c_avm_readdatavalid(avm_memdep_201_ff_rgb24toyv12_c_readdatavalid),
        .in_memdep_201_ff_rgb24toyv12_c_avm_waitrequest(avm_memdep_201_ff_rgb24toyv12_c_waitrequest),
        .in_memdep_201_ff_rgb24toyv12_c_avm_writeack(avm_memdep_201_ff_rgb24toyv12_c_writeack),
        .in_memdep_39_ff_rgb24toyv12_c_avm_readdata(avm_memdep_39_ff_rgb24toyv12_c_readdata),
        .in_memdep_39_ff_rgb24toyv12_c_avm_readdatavalid(avm_memdep_39_ff_rgb24toyv12_c_readdatavalid),
        .in_memdep_39_ff_rgb24toyv12_c_avm_waitrequest(avm_memdep_39_ff_rgb24toyv12_c_waitrequest),
        .in_memdep_39_ff_rgb24toyv12_c_avm_writeack(avm_memdep_39_ff_rgb24toyv12_c_writeack),
        .in_memdep_59_ff_rgb24toyv12_c_avm_readdata(avm_memdep_59_ff_rgb24toyv12_c_readdata),
        .in_memdep_59_ff_rgb24toyv12_c_avm_readdatavalid(avm_memdep_59_ff_rgb24toyv12_c_readdatavalid),
        .in_memdep_59_ff_rgb24toyv12_c_avm_waitrequest(avm_memdep_59_ff_rgb24toyv12_c_waitrequest),
        .in_memdep_59_ff_rgb24toyv12_c_avm_writeack(avm_memdep_59_ff_rgb24toyv12_c_writeack),
        .in_memdep_ff_rgb24toyv12_c_avm_readdata(avm_memdep_ff_rgb24toyv12_c_readdata),
        .in_memdep_ff_rgb24toyv12_c_avm_readdatavalid(avm_memdep_ff_rgb24toyv12_c_readdatavalid),
        .in_memdep_ff_rgb24toyv12_c_avm_waitrequest(avm_memdep_ff_rgb24toyv12_c_waitrequest),
        .in_memdep_ff_rgb24toyv12_c_avm_writeack(avm_memdep_ff_rgb24toyv12_c_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_writeack),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdata(avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_readdata),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_readdatavalid(avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_readdatavalid),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_waitrequest(avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_waitrequest),
        .in_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writeack(avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready(ff_rgb24toyv12_c_function_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready),
        .out_iowr_bl_return_ff_rgb24toyv12_c_o_fifodata(ff_rgb24toyv12_c_function_out_iowr_bl_return_ff_rgb24toyv12_c_o_fifodata),
        .out_iowr_bl_return_ff_rgb24toyv12_c_o_fifovalid(ff_rgb24toyv12_c_function_out_iowr_bl_return_ff_rgb24toyv12_c_o_fifovalid),
        .out_lm1_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_address),
        .out_lm1_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm1_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm1_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_enable),
        .out_lm1_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_read),
        .out_lm1_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_write),
        .out_lm1_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_writedata),
        .out_lm302_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_address),
        .out_lm302_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm302_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm302_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_enable),
        .out_lm302_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_read),
        .out_lm302_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_write),
        .out_lm302_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_writedata),
        .out_lm323_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_address),
        .out_lm323_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm323_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm323_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_enable),
        .out_lm323_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_read),
        .out_lm323_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_write),
        .out_lm323_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_writedata),
        .out_lm344_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_address),
        .out_lm344_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm344_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm344_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_enable),
        .out_lm344_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_read),
        .out_lm344_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_write),
        .out_lm344_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_writedata),
        .out_lm365_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_address),
        .out_lm365_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm365_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm365_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_enable),
        .out_lm365_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_read),
        .out_lm365_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_write),
        .out_lm365_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_writedata),
        .out_lm386_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_address),
        .out_lm386_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm386_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm386_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_enable),
        .out_lm386_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_read),
        .out_lm386_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_write),
        .out_lm386_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_writedata),
        .out_lm407_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_address),
        .out_lm407_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm407_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm407_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_enable),
        .out_lm407_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_read),
        .out_lm407_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_write),
        .out_lm407_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_writedata),
        .out_lm428_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_address),
        .out_lm428_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm428_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm428_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_enable),
        .out_lm428_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_read),
        .out_lm428_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_write),
        .out_lm428_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_writedata),
        .out_lm539_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_address),
        .out_lm539_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm539_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm539_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_enable),
        .out_lm539_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_read),
        .out_lm539_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_write),
        .out_lm539_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_writedata),
        .out_lm5510_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_address),
        .out_lm5510_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm5510_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm5510_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_enable),
        .out_lm5510_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_read),
        .out_lm5510_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_write),
        .out_lm5510_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_writedata),
        .out_lm5711_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_address),
        .out_lm5711_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm5711_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm5711_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_enable),
        .out_lm5711_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_read),
        .out_lm5711_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_write),
        .out_lm5711_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_writedata),
        .out_lm5912_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_address),
        .out_lm5912_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm5912_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm5912_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_enable),
        .out_lm5912_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_read),
        .out_lm5912_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_write),
        .out_lm5912_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6113_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_address),
        .out_lm6113_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6113_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6113_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_enable),
        .out_lm6113_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_read),
        .out_lm6113_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_write),
        .out_lm6113_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6314_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_address),
        .out_lm6314_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6314_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6314_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_enable),
        .out_lm6314_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_read),
        .out_lm6314_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_write),
        .out_lm6314_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6515_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_address),
        .out_lm6515_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6515_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6515_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_enable),
        .out_lm6515_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_read),
        .out_lm6515_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_write),
        .out_lm6515_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6716_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_address),
        .out_lm6716_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6716_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6716_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_enable),
        .out_lm6716_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_read),
        .out_lm6716_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_write),
        .out_lm6716_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_104_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_address),
        .out_memdep_104_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_104_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_104_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_104_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_read),
        .out_memdep_104_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_write),
        .out_memdep_104_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_154_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_address),
        .out_memdep_154_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_154_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_154_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_154_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_read),
        .out_memdep_154_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_write),
        .out_memdep_154_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_201_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_address),
        .out_memdep_201_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_201_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_201_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_201_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_read),
        .out_memdep_201_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_write),
        .out_memdep_201_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_39_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_address),
        .out_memdep_39_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_39_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_39_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_39_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_read),
        .out_memdep_39_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_write),
        .out_memdep_39_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_59_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_address),
        .out_memdep_59_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_59_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_59_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_59_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_read),
        .out_memdep_59_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_write),
        .out_memdep_59_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_address),
        .out_memdep_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_read),
        .out_memdep_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_write),
        .out_memdep_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_104(),
        .out_o_active_memdep_154(),
        .out_o_active_memdep_201(),
        .out_o_active_memdep_39(),
        .out_o_active_memdep_59(),
        .out_stall_out(),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write),
        .out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata(ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_ff_rgb24toyv12_c_address(GPOUT,200)
    assign avm_lm1_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_address;

    // avm_lm1_ff_rgb24toyv12_c_burstcount(GPOUT,201)
    assign avm_lm1_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm1_ff_rgb24toyv12_c_byteenable(GPOUT,202)
    assign avm_lm1_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm1_ff_rgb24toyv12_c_enable(GPOUT,203)
    assign avm_lm1_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_enable;

    // avm_lm1_ff_rgb24toyv12_c_read(GPOUT,204)
    assign avm_lm1_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_read;

    // avm_lm1_ff_rgb24toyv12_c_write(GPOUT,205)
    assign avm_lm1_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_write;

    // avm_lm1_ff_rgb24toyv12_c_writedata(GPOUT,206)
    assign avm_lm1_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm1_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm302_ff_rgb24toyv12_c_address(GPOUT,207)
    assign avm_lm302_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_address;

    // avm_lm302_ff_rgb24toyv12_c_burstcount(GPOUT,208)
    assign avm_lm302_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm302_ff_rgb24toyv12_c_byteenable(GPOUT,209)
    assign avm_lm302_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm302_ff_rgb24toyv12_c_enable(GPOUT,210)
    assign avm_lm302_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_enable;

    // avm_lm302_ff_rgb24toyv12_c_read(GPOUT,211)
    assign avm_lm302_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_read;

    // avm_lm302_ff_rgb24toyv12_c_write(GPOUT,212)
    assign avm_lm302_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_write;

    // avm_lm302_ff_rgb24toyv12_c_writedata(GPOUT,213)
    assign avm_lm302_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm302_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm323_ff_rgb24toyv12_c_address(GPOUT,214)
    assign avm_lm323_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_address;

    // avm_lm323_ff_rgb24toyv12_c_burstcount(GPOUT,215)
    assign avm_lm323_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm323_ff_rgb24toyv12_c_byteenable(GPOUT,216)
    assign avm_lm323_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm323_ff_rgb24toyv12_c_enable(GPOUT,217)
    assign avm_lm323_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_enable;

    // avm_lm323_ff_rgb24toyv12_c_read(GPOUT,218)
    assign avm_lm323_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_read;

    // avm_lm323_ff_rgb24toyv12_c_write(GPOUT,219)
    assign avm_lm323_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_write;

    // avm_lm323_ff_rgb24toyv12_c_writedata(GPOUT,220)
    assign avm_lm323_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm323_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm344_ff_rgb24toyv12_c_address(GPOUT,221)
    assign avm_lm344_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_address;

    // avm_lm344_ff_rgb24toyv12_c_burstcount(GPOUT,222)
    assign avm_lm344_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm344_ff_rgb24toyv12_c_byteenable(GPOUT,223)
    assign avm_lm344_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm344_ff_rgb24toyv12_c_enable(GPOUT,224)
    assign avm_lm344_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_enable;

    // avm_lm344_ff_rgb24toyv12_c_read(GPOUT,225)
    assign avm_lm344_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_read;

    // avm_lm344_ff_rgb24toyv12_c_write(GPOUT,226)
    assign avm_lm344_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_write;

    // avm_lm344_ff_rgb24toyv12_c_writedata(GPOUT,227)
    assign avm_lm344_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm344_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm365_ff_rgb24toyv12_c_address(GPOUT,228)
    assign avm_lm365_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_address;

    // avm_lm365_ff_rgb24toyv12_c_burstcount(GPOUT,229)
    assign avm_lm365_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm365_ff_rgb24toyv12_c_byteenable(GPOUT,230)
    assign avm_lm365_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm365_ff_rgb24toyv12_c_enable(GPOUT,231)
    assign avm_lm365_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_enable;

    // avm_lm365_ff_rgb24toyv12_c_read(GPOUT,232)
    assign avm_lm365_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_read;

    // avm_lm365_ff_rgb24toyv12_c_write(GPOUT,233)
    assign avm_lm365_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_write;

    // avm_lm365_ff_rgb24toyv12_c_writedata(GPOUT,234)
    assign avm_lm365_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm365_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm386_ff_rgb24toyv12_c_address(GPOUT,235)
    assign avm_lm386_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_address;

    // avm_lm386_ff_rgb24toyv12_c_burstcount(GPOUT,236)
    assign avm_lm386_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm386_ff_rgb24toyv12_c_byteenable(GPOUT,237)
    assign avm_lm386_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm386_ff_rgb24toyv12_c_enable(GPOUT,238)
    assign avm_lm386_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_enable;

    // avm_lm386_ff_rgb24toyv12_c_read(GPOUT,239)
    assign avm_lm386_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_read;

    // avm_lm386_ff_rgb24toyv12_c_write(GPOUT,240)
    assign avm_lm386_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_write;

    // avm_lm386_ff_rgb24toyv12_c_writedata(GPOUT,241)
    assign avm_lm386_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm386_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm407_ff_rgb24toyv12_c_address(GPOUT,242)
    assign avm_lm407_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_address;

    // avm_lm407_ff_rgb24toyv12_c_burstcount(GPOUT,243)
    assign avm_lm407_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm407_ff_rgb24toyv12_c_byteenable(GPOUT,244)
    assign avm_lm407_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm407_ff_rgb24toyv12_c_enable(GPOUT,245)
    assign avm_lm407_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_enable;

    // avm_lm407_ff_rgb24toyv12_c_read(GPOUT,246)
    assign avm_lm407_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_read;

    // avm_lm407_ff_rgb24toyv12_c_write(GPOUT,247)
    assign avm_lm407_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_write;

    // avm_lm407_ff_rgb24toyv12_c_writedata(GPOUT,248)
    assign avm_lm407_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm407_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm428_ff_rgb24toyv12_c_address(GPOUT,249)
    assign avm_lm428_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_address;

    // avm_lm428_ff_rgb24toyv12_c_burstcount(GPOUT,250)
    assign avm_lm428_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm428_ff_rgb24toyv12_c_byteenable(GPOUT,251)
    assign avm_lm428_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm428_ff_rgb24toyv12_c_enable(GPOUT,252)
    assign avm_lm428_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_enable;

    // avm_lm428_ff_rgb24toyv12_c_read(GPOUT,253)
    assign avm_lm428_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_read;

    // avm_lm428_ff_rgb24toyv12_c_write(GPOUT,254)
    assign avm_lm428_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_write;

    // avm_lm428_ff_rgb24toyv12_c_writedata(GPOUT,255)
    assign avm_lm428_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm428_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm539_ff_rgb24toyv12_c_address(GPOUT,256)
    assign avm_lm539_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_address;

    // avm_lm539_ff_rgb24toyv12_c_burstcount(GPOUT,257)
    assign avm_lm539_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm539_ff_rgb24toyv12_c_byteenable(GPOUT,258)
    assign avm_lm539_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm539_ff_rgb24toyv12_c_enable(GPOUT,259)
    assign avm_lm539_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_enable;

    // avm_lm539_ff_rgb24toyv12_c_read(GPOUT,260)
    assign avm_lm539_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_read;

    // avm_lm539_ff_rgb24toyv12_c_write(GPOUT,261)
    assign avm_lm539_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_write;

    // avm_lm539_ff_rgb24toyv12_c_writedata(GPOUT,262)
    assign avm_lm539_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm539_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm5510_ff_rgb24toyv12_c_address(GPOUT,263)
    assign avm_lm5510_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_address;

    // avm_lm5510_ff_rgb24toyv12_c_burstcount(GPOUT,264)
    assign avm_lm5510_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm5510_ff_rgb24toyv12_c_byteenable(GPOUT,265)
    assign avm_lm5510_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm5510_ff_rgb24toyv12_c_enable(GPOUT,266)
    assign avm_lm5510_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_enable;

    // avm_lm5510_ff_rgb24toyv12_c_read(GPOUT,267)
    assign avm_lm5510_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_read;

    // avm_lm5510_ff_rgb24toyv12_c_write(GPOUT,268)
    assign avm_lm5510_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_write;

    // avm_lm5510_ff_rgb24toyv12_c_writedata(GPOUT,269)
    assign avm_lm5510_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm5510_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm5711_ff_rgb24toyv12_c_address(GPOUT,270)
    assign avm_lm5711_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_address;

    // avm_lm5711_ff_rgb24toyv12_c_burstcount(GPOUT,271)
    assign avm_lm5711_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm5711_ff_rgb24toyv12_c_byteenable(GPOUT,272)
    assign avm_lm5711_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm5711_ff_rgb24toyv12_c_enable(GPOUT,273)
    assign avm_lm5711_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_enable;

    // avm_lm5711_ff_rgb24toyv12_c_read(GPOUT,274)
    assign avm_lm5711_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_read;

    // avm_lm5711_ff_rgb24toyv12_c_write(GPOUT,275)
    assign avm_lm5711_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_write;

    // avm_lm5711_ff_rgb24toyv12_c_writedata(GPOUT,276)
    assign avm_lm5711_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm5711_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm5912_ff_rgb24toyv12_c_address(GPOUT,277)
    assign avm_lm5912_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_address;

    // avm_lm5912_ff_rgb24toyv12_c_burstcount(GPOUT,278)
    assign avm_lm5912_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm5912_ff_rgb24toyv12_c_byteenable(GPOUT,279)
    assign avm_lm5912_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm5912_ff_rgb24toyv12_c_enable(GPOUT,280)
    assign avm_lm5912_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_enable;

    // avm_lm5912_ff_rgb24toyv12_c_read(GPOUT,281)
    assign avm_lm5912_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_read;

    // avm_lm5912_ff_rgb24toyv12_c_write(GPOUT,282)
    assign avm_lm5912_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_write;

    // avm_lm5912_ff_rgb24toyv12_c_writedata(GPOUT,283)
    assign avm_lm5912_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm5912_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm6113_ff_rgb24toyv12_c_address(GPOUT,284)
    assign avm_lm6113_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_address;

    // avm_lm6113_ff_rgb24toyv12_c_burstcount(GPOUT,285)
    assign avm_lm6113_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm6113_ff_rgb24toyv12_c_byteenable(GPOUT,286)
    assign avm_lm6113_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm6113_ff_rgb24toyv12_c_enable(GPOUT,287)
    assign avm_lm6113_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_enable;

    // avm_lm6113_ff_rgb24toyv12_c_read(GPOUT,288)
    assign avm_lm6113_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_read;

    // avm_lm6113_ff_rgb24toyv12_c_write(GPOUT,289)
    assign avm_lm6113_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_write;

    // avm_lm6113_ff_rgb24toyv12_c_writedata(GPOUT,290)
    assign avm_lm6113_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm6113_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm6314_ff_rgb24toyv12_c_address(GPOUT,291)
    assign avm_lm6314_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_address;

    // avm_lm6314_ff_rgb24toyv12_c_burstcount(GPOUT,292)
    assign avm_lm6314_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm6314_ff_rgb24toyv12_c_byteenable(GPOUT,293)
    assign avm_lm6314_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm6314_ff_rgb24toyv12_c_enable(GPOUT,294)
    assign avm_lm6314_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_enable;

    // avm_lm6314_ff_rgb24toyv12_c_read(GPOUT,295)
    assign avm_lm6314_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_read;

    // avm_lm6314_ff_rgb24toyv12_c_write(GPOUT,296)
    assign avm_lm6314_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_write;

    // avm_lm6314_ff_rgb24toyv12_c_writedata(GPOUT,297)
    assign avm_lm6314_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm6314_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm6515_ff_rgb24toyv12_c_address(GPOUT,298)
    assign avm_lm6515_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_address;

    // avm_lm6515_ff_rgb24toyv12_c_burstcount(GPOUT,299)
    assign avm_lm6515_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm6515_ff_rgb24toyv12_c_byteenable(GPOUT,300)
    assign avm_lm6515_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm6515_ff_rgb24toyv12_c_enable(GPOUT,301)
    assign avm_lm6515_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_enable;

    // avm_lm6515_ff_rgb24toyv12_c_read(GPOUT,302)
    assign avm_lm6515_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_read;

    // avm_lm6515_ff_rgb24toyv12_c_write(GPOUT,303)
    assign avm_lm6515_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_write;

    // avm_lm6515_ff_rgb24toyv12_c_writedata(GPOUT,304)
    assign avm_lm6515_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm6515_ff_rgb24toyv12_c_avm_writedata;

    // avm_lm6716_ff_rgb24toyv12_c_address(GPOUT,305)
    assign avm_lm6716_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_address;

    // avm_lm6716_ff_rgb24toyv12_c_burstcount(GPOUT,306)
    assign avm_lm6716_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_burstcount;

    // avm_lm6716_ff_rgb24toyv12_c_byteenable(GPOUT,307)
    assign avm_lm6716_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_byteenable;

    // avm_lm6716_ff_rgb24toyv12_c_enable(GPOUT,308)
    assign avm_lm6716_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_enable;

    // avm_lm6716_ff_rgb24toyv12_c_read(GPOUT,309)
    assign avm_lm6716_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_read;

    // avm_lm6716_ff_rgb24toyv12_c_write(GPOUT,310)
    assign avm_lm6716_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_write;

    // avm_lm6716_ff_rgb24toyv12_c_writedata(GPOUT,311)
    assign avm_lm6716_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_lm6716_ff_rgb24toyv12_c_avm_writedata;

    // avm_memdep_104_ff_rgb24toyv12_c_address(GPOUT,312)
    assign avm_memdep_104_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_address;

    // avm_memdep_104_ff_rgb24toyv12_c_burstcount(GPOUT,313)
    assign avm_memdep_104_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_burstcount;

    // avm_memdep_104_ff_rgb24toyv12_c_byteenable(GPOUT,314)
    assign avm_memdep_104_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_byteenable;

    // avm_memdep_104_ff_rgb24toyv12_c_enable(GPOUT,315)
    assign avm_memdep_104_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_enable;

    // avm_memdep_104_ff_rgb24toyv12_c_read(GPOUT,316)
    assign avm_memdep_104_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_read;

    // avm_memdep_104_ff_rgb24toyv12_c_write(GPOUT,317)
    assign avm_memdep_104_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_write;

    // avm_memdep_104_ff_rgb24toyv12_c_writedata(GPOUT,318)
    assign avm_memdep_104_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_memdep_104_ff_rgb24toyv12_c_avm_writedata;

    // avm_memdep_154_ff_rgb24toyv12_c_address(GPOUT,319)
    assign avm_memdep_154_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_address;

    // avm_memdep_154_ff_rgb24toyv12_c_burstcount(GPOUT,320)
    assign avm_memdep_154_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_burstcount;

    // avm_memdep_154_ff_rgb24toyv12_c_byteenable(GPOUT,321)
    assign avm_memdep_154_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_byteenable;

    // avm_memdep_154_ff_rgb24toyv12_c_enable(GPOUT,322)
    assign avm_memdep_154_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_enable;

    // avm_memdep_154_ff_rgb24toyv12_c_read(GPOUT,323)
    assign avm_memdep_154_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_read;

    // avm_memdep_154_ff_rgb24toyv12_c_write(GPOUT,324)
    assign avm_memdep_154_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_write;

    // avm_memdep_154_ff_rgb24toyv12_c_writedata(GPOUT,325)
    assign avm_memdep_154_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_memdep_154_ff_rgb24toyv12_c_avm_writedata;

    // avm_memdep_201_ff_rgb24toyv12_c_address(GPOUT,326)
    assign avm_memdep_201_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_address;

    // avm_memdep_201_ff_rgb24toyv12_c_burstcount(GPOUT,327)
    assign avm_memdep_201_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_burstcount;

    // avm_memdep_201_ff_rgb24toyv12_c_byteenable(GPOUT,328)
    assign avm_memdep_201_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_byteenable;

    // avm_memdep_201_ff_rgb24toyv12_c_enable(GPOUT,329)
    assign avm_memdep_201_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_enable;

    // avm_memdep_201_ff_rgb24toyv12_c_read(GPOUT,330)
    assign avm_memdep_201_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_read;

    // avm_memdep_201_ff_rgb24toyv12_c_write(GPOUT,331)
    assign avm_memdep_201_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_write;

    // avm_memdep_201_ff_rgb24toyv12_c_writedata(GPOUT,332)
    assign avm_memdep_201_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_memdep_201_ff_rgb24toyv12_c_avm_writedata;

    // avm_memdep_39_ff_rgb24toyv12_c_address(GPOUT,333)
    assign avm_memdep_39_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_address;

    // avm_memdep_39_ff_rgb24toyv12_c_burstcount(GPOUT,334)
    assign avm_memdep_39_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_burstcount;

    // avm_memdep_39_ff_rgb24toyv12_c_byteenable(GPOUT,335)
    assign avm_memdep_39_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_byteenable;

    // avm_memdep_39_ff_rgb24toyv12_c_enable(GPOUT,336)
    assign avm_memdep_39_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_enable;

    // avm_memdep_39_ff_rgb24toyv12_c_read(GPOUT,337)
    assign avm_memdep_39_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_read;

    // avm_memdep_39_ff_rgb24toyv12_c_write(GPOUT,338)
    assign avm_memdep_39_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_write;

    // avm_memdep_39_ff_rgb24toyv12_c_writedata(GPOUT,339)
    assign avm_memdep_39_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_memdep_39_ff_rgb24toyv12_c_avm_writedata;

    // avm_memdep_59_ff_rgb24toyv12_c_address(GPOUT,340)
    assign avm_memdep_59_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_address;

    // avm_memdep_59_ff_rgb24toyv12_c_burstcount(GPOUT,341)
    assign avm_memdep_59_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_burstcount;

    // avm_memdep_59_ff_rgb24toyv12_c_byteenable(GPOUT,342)
    assign avm_memdep_59_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_byteenable;

    // avm_memdep_59_ff_rgb24toyv12_c_enable(GPOUT,343)
    assign avm_memdep_59_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_enable;

    // avm_memdep_59_ff_rgb24toyv12_c_read(GPOUT,344)
    assign avm_memdep_59_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_read;

    // avm_memdep_59_ff_rgb24toyv12_c_write(GPOUT,345)
    assign avm_memdep_59_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_write;

    // avm_memdep_59_ff_rgb24toyv12_c_writedata(GPOUT,346)
    assign avm_memdep_59_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_memdep_59_ff_rgb24toyv12_c_avm_writedata;

    // avm_memdep_ff_rgb24toyv12_c_address(GPOUT,347)
    assign avm_memdep_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_address;

    // avm_memdep_ff_rgb24toyv12_c_burstcount(GPOUT,348)
    assign avm_memdep_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_burstcount;

    // avm_memdep_ff_rgb24toyv12_c_byteenable(GPOUT,349)
    assign avm_memdep_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_byteenable;

    // avm_memdep_ff_rgb24toyv12_c_enable(GPOUT,350)
    assign avm_memdep_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_enable;

    // avm_memdep_ff_rgb24toyv12_c_read(GPOUT,351)
    assign avm_memdep_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_read;

    // avm_memdep_ff_rgb24toyv12_c_write(GPOUT,352)
    assign avm_memdep_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_write;

    // avm_memdep_ff_rgb24toyv12_c_writedata(GPOUT,353)
    assign avm_memdep_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_memdep_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_address(GPOUT,354)
    assign avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_burstcount(GPOUT,355)
    assign avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_byteenable(GPOUT,356)
    assign avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_enable(GPOUT,357)
    assign avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_read(GPOUT,358)
    assign avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_write(GPOUT,359)
    assign avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_writedata(GPOUT,360)
    assign avm_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c11_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_address(GPOUT,361)
    assign avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_burstcount(GPOUT,362)
    assign avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_byteenable(GPOUT,363)
    assign avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_enable(GPOUT,364)
    assign avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_read(GPOUT,365)
    assign avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_write(GPOUT,366)
    assign avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_writedata(GPOUT,367)
    assign avm_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c12_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_address(GPOUT,368)
    assign avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_burstcount(GPOUT,369)
    assign avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_byteenable(GPOUT,370)
    assign avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_enable(GPOUT,371)
    assign avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_read(GPOUT,372)
    assign avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_write(GPOUT,373)
    assign avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_writedata(GPOUT,374)
    assign avm_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c13_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_address(GPOUT,375)
    assign avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_burstcount(GPOUT,376)
    assign avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_byteenable(GPOUT,377)
    assign avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_enable(GPOUT,378)
    assign avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_read(GPOUT,379)
    assign avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_write(GPOUT,380)
    assign avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_writedata(GPOUT,381)
    assign avm_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c25_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_address(GPOUT,382)
    assign avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_burstcount(GPOUT,383)
    assign avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_byteenable(GPOUT,384)
    assign avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_enable(GPOUT,385)
    assign avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_read(GPOUT,386)
    assign avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_write(GPOUT,387)
    assign avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_writedata(GPOUT,388)
    assign avm_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c26_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_address(GPOUT,389)
    assign avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_burstcount(GPOUT,390)
    assign avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_byteenable(GPOUT,391)
    assign avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_enable(GPOUT,392)
    assign avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_read(GPOUT,393)
    assign avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_write(GPOUT,394)
    assign avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_writedata(GPOUT,395)
    assign avm_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c27_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_address(GPOUT,396)
    assign avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_burstcount(GPOUT,397)
    assign avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_byteenable(GPOUT,398)
    assign avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_enable(GPOUT,399)
    assign avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_read(GPOUT,400)
    assign avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_write(GPOUT,401)
    assign avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_writedata(GPOUT,402)
    assign avm_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c28_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_address(GPOUT,403)
    assign avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_burstcount(GPOUT,404)
    assign avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_byteenable(GPOUT,405)
    assign avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_enable(GPOUT,406)
    assign avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_read(GPOUT,407)
    assign avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_write(GPOUT,408)
    assign avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_writedata(GPOUT,409)
    assign avm_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c29_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_address(GPOUT,410)
    assign avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_burstcount(GPOUT,411)
    assign avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_byteenable(GPOUT,412)
    assign avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_enable(GPOUT,413)
    assign avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_read(GPOUT,414)
    assign avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_write(GPOUT,415)
    assign avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_writedata(GPOUT,416)
    assign avm_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c30_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_address(GPOUT,417)
    assign avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_burstcount(GPOUT,418)
    assign avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_byteenable(GPOUT,419)
    assign avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_enable(GPOUT,420)
    assign avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_read(GPOUT,421)
    assign avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_write(GPOUT,422)
    assign avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_writedata(GPOUT,423)
    assign avm_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c31_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_address(GPOUT,424)
    assign avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_burstcount(GPOUT,425)
    assign avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_byteenable(GPOUT,426)
    assign avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_enable(GPOUT,427)
    assign avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_read(GPOUT,428)
    assign avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_write(GPOUT,429)
    assign avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_writedata(GPOUT,430)
    assign avm_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c32_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_address(GPOUT,431)
    assign avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_burstcount(GPOUT,432)
    assign avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_byteenable(GPOUT,433)
    assign avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_enable(GPOUT,434)
    assign avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_read(GPOUT,435)
    assign avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_write(GPOUT,436)
    assign avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_writedata(GPOUT,437)
    assign avm_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c33_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_address(GPOUT,438)
    assign avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_burstcount(GPOUT,439)
    assign avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_byteenable(GPOUT,440)
    assign avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_enable(GPOUT,441)
    assign avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_read(GPOUT,442)
    assign avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_write(GPOUT,443)
    assign avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_writedata(GPOUT,444)
    assign avm_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c4_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_address(GPOUT,445)
    assign avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_burstcount(GPOUT,446)
    assign avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_byteenable(GPOUT,447)
    assign avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_enable(GPOUT,448)
    assign avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_read(GPOUT,449)
    assign avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_write(GPOUT,450)
    assign avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_writedata(GPOUT,451)
    assign avm_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c5_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_address(GPOUT,452)
    assign avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_burstcount(GPOUT,453)
    assign avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_byteenable(GPOUT,454)
    assign avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_enable(GPOUT,455)
    assign avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_read(GPOUT,456)
    assign avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_write(GPOUT,457)
    assign avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_writedata(GPOUT,458)
    assign avm_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c6_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_address(GPOUT,459)
    assign avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_burstcount(GPOUT,460)
    assign avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_byteenable(GPOUT,461)
    assign avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_enable(GPOUT,462)
    assign avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_read(GPOUT,463)
    assign avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_write(GPOUT,464)
    assign avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_writedata(GPOUT,465)
    assign avm_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c7_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_address(GPOUT,466)
    assign avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_burstcount(GPOUT,467)
    assign avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_byteenable(GPOUT,468)
    assign avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_enable(GPOUT,469)
    assign avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_read(GPOUT,470)
    assign avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_write(GPOUT,471)
    assign avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_writedata(GPOUT,472)
    assign avm_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c8_ff_rgb24toyv12_c_avm_writedata;

    // avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_address(GPOUT,473)
    assign avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_address = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_address;

    // avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_burstcount(GPOUT,474)
    assign avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_burstcount = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_burstcount;

    // avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_byteenable(GPOUT,475)
    assign avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_byteenable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_byteenable;

    // avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_enable(GPOUT,476)
    assign avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_enable = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_enable;

    // avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_read(GPOUT,477)
    assign avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_read = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_read;

    // avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_write(GPOUT,478)
    assign avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_write = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_write;

    // avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_writedata(GPOUT,479)
    assign avm_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_writedata = ff_rgb24toyv12_c_function_out_unnamed_ff_rgb24toyv12_c9_ff_rgb24toyv12_c_avm_writedata;

    // avst_iord_bl_call_ff_rgb24toyv12_c_ready(GPOUT,480)
    assign avst_iord_bl_call_ff_rgb24toyv12_c_ready = ff_rgb24toyv12_c_function_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready;

    // avst_iowr_bl_return_ff_rgb24toyv12_c_data(GPOUT,481)
    assign avst_iowr_bl_return_ff_rgb24toyv12_c_data = ff_rgb24toyv12_c_function_out_iowr_bl_return_ff_rgb24toyv12_c_o_fifodata;

    // avst_iowr_bl_return_ff_rgb24toyv12_c_valid(GPOUT,482)
    assign avst_iowr_bl_return_ff_rgb24toyv12_c_valid = ff_rgb24toyv12_c_function_out_iowr_bl_return_ff_rgb24toyv12_c_o_fifovalid;

    // not_ready(LOGICAL,198)
    assign not_ready_q = ~ (ff_rgb24toyv12_c_function_out_iord_bl_call_ff_rgb24toyv12_c_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,486)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,485)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,483)
    assign busy = busy_or_q;

    // done(GPOUT,484)
    assign done = ff_rgb24toyv12_c_function_out_iowr_bl_return_ff_rgb24toyv12_c_o_fifovalid;

endmodule
