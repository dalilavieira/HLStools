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

// SystemVerilog created from claswp_function_wrapper
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_function_wrapper (
    input wire [63:0] a,
    input wire [63:0] avm_lm1021_claswp_readdata,
    input wire [0:0] avm_lm1021_claswp_readdatavalid,
    input wire [0:0] avm_lm1021_claswp_waitrequest,
    input wire [0:0] avm_lm1021_claswp_writeack,
    input wire [63:0] avm_lm1052_claswp_readdata,
    input wire [0:0] avm_lm1052_claswp_readdatavalid,
    input wire [0:0] avm_lm1052_claswp_waitrequest,
    input wire [0:0] avm_lm1052_claswp_writeack,
    input wire [63:0] avm_lm1165_claswp_readdata,
    input wire [0:0] avm_lm1165_claswp_readdatavalid,
    input wire [0:0] avm_lm1165_claswp_waitrequest,
    input wire [0:0] avm_lm1165_claswp_writeack,
    input wire [63:0] avm_lm1476_claswp_readdata,
    input wire [0:0] avm_lm1476_claswp_readdatavalid,
    input wire [0:0] avm_lm1476_claswp_waitrequest,
    input wire [0:0] avm_lm1476_claswp_writeack,
    input wire [63:0] avm_lm18611_claswp_readdata,
    input wire [0:0] avm_lm18611_claswp_readdatavalid,
    input wire [0:0] avm_lm18611_claswp_waitrequest,
    input wire [0:0] avm_lm18611_claswp_writeack,
    input wire [63:0] avm_lm19012_claswp_readdata,
    input wire [0:0] avm_lm19012_claswp_readdatavalid,
    input wire [0:0] avm_lm19012_claswp_waitrequest,
    input wire [0:0] avm_lm19012_claswp_writeack,
    input wire [63:0] avm_lm248_claswp_readdata,
    input wire [0:0] avm_lm248_claswp_readdatavalid,
    input wire [0:0] avm_lm248_claswp_waitrequest,
    input wire [0:0] avm_lm248_claswp_writeack,
    input wire [63:0] avm_lm269_claswp_readdata,
    input wire [0:0] avm_lm269_claswp_readdatavalid,
    input wire [0:0] avm_lm269_claswp_waitrequest,
    input wire [0:0] avm_lm269_claswp_writeack,
    input wire [63:0] avm_lm2810_claswp_readdata,
    input wire [0:0] avm_lm2810_claswp_readdatavalid,
    input wire [0:0] avm_lm2810_claswp_waitrequest,
    input wire [0:0] avm_lm2810_claswp_writeack,
    input wire [63:0] avm_lm3213_claswp_readdata,
    input wire [0:0] avm_lm3213_claswp_readdatavalid,
    input wire [0:0] avm_lm3213_claswp_waitrequest,
    input wire [0:0] avm_lm3213_claswp_writeack,
    input wire [63:0] avm_lm3414_claswp_readdata,
    input wire [0:0] avm_lm3414_claswp_readdatavalid,
    input wire [0:0] avm_lm3414_claswp_waitrequest,
    input wire [0:0] avm_lm3414_claswp_writeack,
    input wire [63:0] avm_lm3615_claswp_readdata,
    input wire [0:0] avm_lm3615_claswp_readdatavalid,
    input wire [0:0] avm_lm3615_claswp_waitrequest,
    input wire [0:0] avm_lm3615_claswp_writeack,
    input wire [63:0] avm_lm3816_claswp_readdata,
    input wire [0:0] avm_lm3816_claswp_readdatavalid,
    input wire [0:0] avm_lm3816_claswp_waitrequest,
    input wire [0:0] avm_lm3816_claswp_writeack,
    input wire [63:0] avm_lm5619_claswp_readdata,
    input wire [0:0] avm_lm5619_claswp_readdatavalid,
    input wire [0:0] avm_lm5619_claswp_waitrequest,
    input wire [0:0] avm_lm5619_claswp_writeack,
    input wire [63:0] avm_lm6118_claswp_readdata,
    input wire [0:0] avm_lm6118_claswp_readdatavalid,
    input wire [0:0] avm_lm6118_claswp_waitrequest,
    input wire [0:0] avm_lm6118_claswp_writeack,
    input wire [63:0] avm_lm7_claswp_readdata,
    input wire [0:0] avm_lm7_claswp_readdatavalid,
    input wire [0:0] avm_lm7_claswp_waitrequest,
    input wire [0:0] avm_lm7_claswp_writeack,
    input wire [63:0] avm_lm8417_claswp_readdata,
    input wire [0:0] avm_lm8417_claswp_readdatavalid,
    input wire [0:0] avm_lm8417_claswp_waitrequest,
    input wire [0:0] avm_lm8417_claswp_writeack,
    input wire [63:0] avm_memdep_102_claswp_readdata,
    input wire [0:0] avm_memdep_102_claswp_readdatavalid,
    input wire [0:0] avm_memdep_102_claswp_waitrequest,
    input wire [0:0] avm_memdep_102_claswp_writeack,
    input wire [63:0] avm_memdep_119_claswp_readdata,
    input wire [0:0] avm_memdep_119_claswp_readdatavalid,
    input wire [0:0] avm_memdep_119_claswp_waitrequest,
    input wire [0:0] avm_memdep_119_claswp_writeack,
    input wire [63:0] avm_memdep_31_claswp_readdata,
    input wire [0:0] avm_memdep_31_claswp_readdatavalid,
    input wire [0:0] avm_memdep_31_claswp_waitrequest,
    input wire [0:0] avm_memdep_31_claswp_writeack,
    input wire [63:0] avm_memdep_38_claswp_readdata,
    input wire [0:0] avm_memdep_38_claswp_readdatavalid,
    input wire [0:0] avm_memdep_38_claswp_waitrequest,
    input wire [0:0] avm_memdep_38_claswp_writeack,
    input wire [63:0] avm_memdep_46_claswp_readdata,
    input wire [0:0] avm_memdep_46_claswp_readdatavalid,
    input wire [0:0] avm_memdep_46_claswp_waitrequest,
    input wire [0:0] avm_memdep_46_claswp_writeack,
    input wire [63:0] avm_memdep_71_claswp_readdata,
    input wire [0:0] avm_memdep_71_claswp_readdatavalid,
    input wire [0:0] avm_memdep_71_claswp_waitrequest,
    input wire [0:0] avm_memdep_71_claswp_writeack,
    input wire [63:0] avm_memdep_87_claswp_readdata,
    input wire [0:0] avm_memdep_87_claswp_readdatavalid,
    input wire [0:0] avm_memdep_87_claswp_waitrequest,
    input wire [0:0] avm_memdep_87_claswp_writeack,
    input wire [63:0] avm_memdep_claswp_readdata,
    input wire [0:0] avm_memdep_claswp_readdatavalid,
    input wire [0:0] avm_memdep_claswp_waitrequest,
    input wire [0:0] avm_memdep_claswp_writeack,
    input wire [63:0] avm_storemerge1_lm3_claswp_readdata,
    input wire [0:0] avm_storemerge1_lm3_claswp_readdatavalid,
    input wire [0:0] avm_storemerge1_lm3_claswp_waitrequest,
    input wire [0:0] avm_storemerge1_lm3_claswp_writeack,
    input wire [63:0] avm_storemerge72_lm4_claswp_readdata,
    input wire [0:0] avm_storemerge72_lm4_claswp_readdatavalid,
    input wire [0:0] avm_storemerge72_lm4_claswp_waitrequest,
    input wire [0:0] avm_storemerge72_lm4_claswp_writeack,
    input wire [63:0] avm_unnamed_claswp3_claswp_readdata,
    input wire [0:0] avm_unnamed_claswp3_claswp_readdatavalid,
    input wire [0:0] avm_unnamed_claswp3_claswp_waitrequest,
    input wire [0:0] avm_unnamed_claswp3_claswp_writeack,
    input wire [63:0] avm_unnamed_claswp4_claswp_readdata,
    input wire [0:0] avm_unnamed_claswp4_claswp_readdatavalid,
    input wire [0:0] avm_unnamed_claswp4_claswp_waitrequest,
    input wire [0:0] avm_unnamed_claswp4_claswp_writeack,
    input wire [447:0] avst_iord_bl_call_claswp_data,
    input wire [0:0] avst_iord_bl_call_claswp_valid,
    input wire [0:0] avst_iowr_bl_return_claswp_almostfull,
    input wire [0:0] avst_iowr_bl_return_claswp_ready,
    input wire [63:0] incx,
    input wire [63:0] ipiv,
    input wire [63:0] k1,
    input wire [63:0] k2,
    input wire [63:0] lda,
    input wire [63:0] n,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1021_claswp_address,
    output wire [0:0] avm_lm1021_claswp_burstcount,
    output wire [7:0] avm_lm1021_claswp_byteenable,
    output wire [0:0] avm_lm1021_claswp_enable,
    output wire [0:0] avm_lm1021_claswp_read,
    output wire [0:0] avm_lm1021_claswp_write,
    output wire [63:0] avm_lm1021_claswp_writedata,
    output wire [63:0] avm_lm1052_claswp_address,
    output wire [0:0] avm_lm1052_claswp_burstcount,
    output wire [7:0] avm_lm1052_claswp_byteenable,
    output wire [0:0] avm_lm1052_claswp_enable,
    output wire [0:0] avm_lm1052_claswp_read,
    output wire [0:0] avm_lm1052_claswp_write,
    output wire [63:0] avm_lm1052_claswp_writedata,
    output wire [63:0] avm_lm1165_claswp_address,
    output wire [0:0] avm_lm1165_claswp_burstcount,
    output wire [7:0] avm_lm1165_claswp_byteenable,
    output wire [0:0] avm_lm1165_claswp_enable,
    output wire [0:0] avm_lm1165_claswp_read,
    output wire [0:0] avm_lm1165_claswp_write,
    output wire [63:0] avm_lm1165_claswp_writedata,
    output wire [63:0] avm_lm1476_claswp_address,
    output wire [0:0] avm_lm1476_claswp_burstcount,
    output wire [7:0] avm_lm1476_claswp_byteenable,
    output wire [0:0] avm_lm1476_claswp_enable,
    output wire [0:0] avm_lm1476_claswp_read,
    output wire [0:0] avm_lm1476_claswp_write,
    output wire [63:0] avm_lm1476_claswp_writedata,
    output wire [63:0] avm_lm18611_claswp_address,
    output wire [0:0] avm_lm18611_claswp_burstcount,
    output wire [7:0] avm_lm18611_claswp_byteenable,
    output wire [0:0] avm_lm18611_claswp_enable,
    output wire [0:0] avm_lm18611_claswp_read,
    output wire [0:0] avm_lm18611_claswp_write,
    output wire [63:0] avm_lm18611_claswp_writedata,
    output wire [63:0] avm_lm19012_claswp_address,
    output wire [0:0] avm_lm19012_claswp_burstcount,
    output wire [7:0] avm_lm19012_claswp_byteenable,
    output wire [0:0] avm_lm19012_claswp_enable,
    output wire [0:0] avm_lm19012_claswp_read,
    output wire [0:0] avm_lm19012_claswp_write,
    output wire [63:0] avm_lm19012_claswp_writedata,
    output wire [63:0] avm_lm248_claswp_address,
    output wire [0:0] avm_lm248_claswp_burstcount,
    output wire [7:0] avm_lm248_claswp_byteenable,
    output wire [0:0] avm_lm248_claswp_enable,
    output wire [0:0] avm_lm248_claswp_read,
    output wire [0:0] avm_lm248_claswp_write,
    output wire [63:0] avm_lm248_claswp_writedata,
    output wire [63:0] avm_lm269_claswp_address,
    output wire [0:0] avm_lm269_claswp_burstcount,
    output wire [7:0] avm_lm269_claswp_byteenable,
    output wire [0:0] avm_lm269_claswp_enable,
    output wire [0:0] avm_lm269_claswp_read,
    output wire [0:0] avm_lm269_claswp_write,
    output wire [63:0] avm_lm269_claswp_writedata,
    output wire [63:0] avm_lm2810_claswp_address,
    output wire [0:0] avm_lm2810_claswp_burstcount,
    output wire [7:0] avm_lm2810_claswp_byteenable,
    output wire [0:0] avm_lm2810_claswp_enable,
    output wire [0:0] avm_lm2810_claswp_read,
    output wire [0:0] avm_lm2810_claswp_write,
    output wire [63:0] avm_lm2810_claswp_writedata,
    output wire [63:0] avm_lm3213_claswp_address,
    output wire [0:0] avm_lm3213_claswp_burstcount,
    output wire [7:0] avm_lm3213_claswp_byteenable,
    output wire [0:0] avm_lm3213_claswp_enable,
    output wire [0:0] avm_lm3213_claswp_read,
    output wire [0:0] avm_lm3213_claswp_write,
    output wire [63:0] avm_lm3213_claswp_writedata,
    output wire [63:0] avm_lm3414_claswp_address,
    output wire [0:0] avm_lm3414_claswp_burstcount,
    output wire [7:0] avm_lm3414_claswp_byteenable,
    output wire [0:0] avm_lm3414_claswp_enable,
    output wire [0:0] avm_lm3414_claswp_read,
    output wire [0:0] avm_lm3414_claswp_write,
    output wire [63:0] avm_lm3414_claswp_writedata,
    output wire [63:0] avm_lm3615_claswp_address,
    output wire [0:0] avm_lm3615_claswp_burstcount,
    output wire [7:0] avm_lm3615_claswp_byteenable,
    output wire [0:0] avm_lm3615_claswp_enable,
    output wire [0:0] avm_lm3615_claswp_read,
    output wire [0:0] avm_lm3615_claswp_write,
    output wire [63:0] avm_lm3615_claswp_writedata,
    output wire [63:0] avm_lm3816_claswp_address,
    output wire [0:0] avm_lm3816_claswp_burstcount,
    output wire [7:0] avm_lm3816_claswp_byteenable,
    output wire [0:0] avm_lm3816_claswp_enable,
    output wire [0:0] avm_lm3816_claswp_read,
    output wire [0:0] avm_lm3816_claswp_write,
    output wire [63:0] avm_lm3816_claswp_writedata,
    output wire [63:0] avm_lm5619_claswp_address,
    output wire [0:0] avm_lm5619_claswp_burstcount,
    output wire [7:0] avm_lm5619_claswp_byteenable,
    output wire [0:0] avm_lm5619_claswp_enable,
    output wire [0:0] avm_lm5619_claswp_read,
    output wire [0:0] avm_lm5619_claswp_write,
    output wire [63:0] avm_lm5619_claswp_writedata,
    output wire [63:0] avm_lm6118_claswp_address,
    output wire [0:0] avm_lm6118_claswp_burstcount,
    output wire [7:0] avm_lm6118_claswp_byteenable,
    output wire [0:0] avm_lm6118_claswp_enable,
    output wire [0:0] avm_lm6118_claswp_read,
    output wire [0:0] avm_lm6118_claswp_write,
    output wire [63:0] avm_lm6118_claswp_writedata,
    output wire [63:0] avm_lm7_claswp_address,
    output wire [0:0] avm_lm7_claswp_burstcount,
    output wire [7:0] avm_lm7_claswp_byteenable,
    output wire [0:0] avm_lm7_claswp_enable,
    output wire [0:0] avm_lm7_claswp_read,
    output wire [0:0] avm_lm7_claswp_write,
    output wire [63:0] avm_lm7_claswp_writedata,
    output wire [63:0] avm_lm8417_claswp_address,
    output wire [0:0] avm_lm8417_claswp_burstcount,
    output wire [7:0] avm_lm8417_claswp_byteenable,
    output wire [0:0] avm_lm8417_claswp_enable,
    output wire [0:0] avm_lm8417_claswp_read,
    output wire [0:0] avm_lm8417_claswp_write,
    output wire [63:0] avm_lm8417_claswp_writedata,
    output wire [63:0] avm_memdep_102_claswp_address,
    output wire [0:0] avm_memdep_102_claswp_burstcount,
    output wire [7:0] avm_memdep_102_claswp_byteenable,
    output wire [0:0] avm_memdep_102_claswp_enable,
    output wire [0:0] avm_memdep_102_claswp_read,
    output wire [0:0] avm_memdep_102_claswp_write,
    output wire [63:0] avm_memdep_102_claswp_writedata,
    output wire [63:0] avm_memdep_119_claswp_address,
    output wire [0:0] avm_memdep_119_claswp_burstcount,
    output wire [7:0] avm_memdep_119_claswp_byteenable,
    output wire [0:0] avm_memdep_119_claswp_enable,
    output wire [0:0] avm_memdep_119_claswp_read,
    output wire [0:0] avm_memdep_119_claswp_write,
    output wire [63:0] avm_memdep_119_claswp_writedata,
    output wire [63:0] avm_memdep_31_claswp_address,
    output wire [0:0] avm_memdep_31_claswp_burstcount,
    output wire [7:0] avm_memdep_31_claswp_byteenable,
    output wire [0:0] avm_memdep_31_claswp_enable,
    output wire [0:0] avm_memdep_31_claswp_read,
    output wire [0:0] avm_memdep_31_claswp_write,
    output wire [63:0] avm_memdep_31_claswp_writedata,
    output wire [63:0] avm_memdep_38_claswp_address,
    output wire [0:0] avm_memdep_38_claswp_burstcount,
    output wire [7:0] avm_memdep_38_claswp_byteenable,
    output wire [0:0] avm_memdep_38_claswp_enable,
    output wire [0:0] avm_memdep_38_claswp_read,
    output wire [0:0] avm_memdep_38_claswp_write,
    output wire [63:0] avm_memdep_38_claswp_writedata,
    output wire [63:0] avm_memdep_46_claswp_address,
    output wire [0:0] avm_memdep_46_claswp_burstcount,
    output wire [7:0] avm_memdep_46_claswp_byteenable,
    output wire [0:0] avm_memdep_46_claswp_enable,
    output wire [0:0] avm_memdep_46_claswp_read,
    output wire [0:0] avm_memdep_46_claswp_write,
    output wire [63:0] avm_memdep_46_claswp_writedata,
    output wire [63:0] avm_memdep_71_claswp_address,
    output wire [0:0] avm_memdep_71_claswp_burstcount,
    output wire [7:0] avm_memdep_71_claswp_byteenable,
    output wire [0:0] avm_memdep_71_claswp_enable,
    output wire [0:0] avm_memdep_71_claswp_read,
    output wire [0:0] avm_memdep_71_claswp_write,
    output wire [63:0] avm_memdep_71_claswp_writedata,
    output wire [63:0] avm_memdep_87_claswp_address,
    output wire [0:0] avm_memdep_87_claswp_burstcount,
    output wire [7:0] avm_memdep_87_claswp_byteenable,
    output wire [0:0] avm_memdep_87_claswp_enable,
    output wire [0:0] avm_memdep_87_claswp_read,
    output wire [0:0] avm_memdep_87_claswp_write,
    output wire [63:0] avm_memdep_87_claswp_writedata,
    output wire [63:0] avm_memdep_claswp_address,
    output wire [0:0] avm_memdep_claswp_burstcount,
    output wire [7:0] avm_memdep_claswp_byteenable,
    output wire [0:0] avm_memdep_claswp_enable,
    output wire [0:0] avm_memdep_claswp_read,
    output wire [0:0] avm_memdep_claswp_write,
    output wire [63:0] avm_memdep_claswp_writedata,
    output wire [63:0] avm_storemerge1_lm3_claswp_address,
    output wire [0:0] avm_storemerge1_lm3_claswp_burstcount,
    output wire [7:0] avm_storemerge1_lm3_claswp_byteenable,
    output wire [0:0] avm_storemerge1_lm3_claswp_enable,
    output wire [0:0] avm_storemerge1_lm3_claswp_read,
    output wire [0:0] avm_storemerge1_lm3_claswp_write,
    output wire [63:0] avm_storemerge1_lm3_claswp_writedata,
    output wire [63:0] avm_storemerge72_lm4_claswp_address,
    output wire [0:0] avm_storemerge72_lm4_claswp_burstcount,
    output wire [7:0] avm_storemerge72_lm4_claswp_byteenable,
    output wire [0:0] avm_storemerge72_lm4_claswp_enable,
    output wire [0:0] avm_storemerge72_lm4_claswp_read,
    output wire [0:0] avm_storemerge72_lm4_claswp_write,
    output wire [63:0] avm_storemerge72_lm4_claswp_writedata,
    output wire [63:0] avm_unnamed_claswp3_claswp_address,
    output wire [0:0] avm_unnamed_claswp3_claswp_burstcount,
    output wire [7:0] avm_unnamed_claswp3_claswp_byteenable,
    output wire [0:0] avm_unnamed_claswp3_claswp_enable,
    output wire [0:0] avm_unnamed_claswp3_claswp_read,
    output wire [0:0] avm_unnamed_claswp3_claswp_write,
    output wire [63:0] avm_unnamed_claswp3_claswp_writedata,
    output wire [63:0] avm_unnamed_claswp4_claswp_address,
    output wire [0:0] avm_unnamed_claswp4_claswp_burstcount,
    output wire [7:0] avm_unnamed_claswp4_claswp_byteenable,
    output wire [0:0] avm_unnamed_claswp4_claswp_enable,
    output wire [0:0] avm_unnamed_claswp4_claswp_read,
    output wire [0:0] avm_unnamed_claswp4_claswp_write,
    output wire [63:0] avm_unnamed_claswp4_claswp_writedata,
    output wire [0:0] avst_iord_bl_call_claswp_ready,
    output wire [31:0] avst_iowr_bl_return_claswp_data,
    output wire [0:0] avst_iowr_bl_return_claswp_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] a_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] claswp_function_out_iord_bl_call_claswp_o_fifoready;
    wire [31:0] claswp_function_out_iowr_bl_return_claswp_o_fifodata;
    wire [0:0] claswp_function_out_iowr_bl_return_claswp_o_fifovalid;
    wire [63:0] claswp_function_out_lm1021_claswp_avm_address;
    wire [0:0] claswp_function_out_lm1021_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm1021_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm1021_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm1021_claswp_avm_read;
    wire [0:0] claswp_function_out_lm1021_claswp_avm_write;
    wire [63:0] claswp_function_out_lm1021_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm1052_claswp_avm_address;
    wire [0:0] claswp_function_out_lm1052_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm1052_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm1052_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm1052_claswp_avm_read;
    wire [0:0] claswp_function_out_lm1052_claswp_avm_write;
    wire [63:0] claswp_function_out_lm1052_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm1165_claswp_avm_address;
    wire [0:0] claswp_function_out_lm1165_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm1165_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm1165_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm1165_claswp_avm_read;
    wire [0:0] claswp_function_out_lm1165_claswp_avm_write;
    wire [63:0] claswp_function_out_lm1165_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm1476_claswp_avm_address;
    wire [0:0] claswp_function_out_lm1476_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm1476_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm1476_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm1476_claswp_avm_read;
    wire [0:0] claswp_function_out_lm1476_claswp_avm_write;
    wire [63:0] claswp_function_out_lm1476_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm18611_claswp_avm_address;
    wire [0:0] claswp_function_out_lm18611_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm18611_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm18611_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm18611_claswp_avm_read;
    wire [0:0] claswp_function_out_lm18611_claswp_avm_write;
    wire [63:0] claswp_function_out_lm18611_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm19012_claswp_avm_address;
    wire [0:0] claswp_function_out_lm19012_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm19012_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm19012_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm19012_claswp_avm_read;
    wire [0:0] claswp_function_out_lm19012_claswp_avm_write;
    wire [63:0] claswp_function_out_lm19012_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm248_claswp_avm_address;
    wire [0:0] claswp_function_out_lm248_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm248_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm248_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm248_claswp_avm_read;
    wire [0:0] claswp_function_out_lm248_claswp_avm_write;
    wire [63:0] claswp_function_out_lm248_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm269_claswp_avm_address;
    wire [0:0] claswp_function_out_lm269_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm269_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm269_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm269_claswp_avm_read;
    wire [0:0] claswp_function_out_lm269_claswp_avm_write;
    wire [63:0] claswp_function_out_lm269_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm2810_claswp_avm_address;
    wire [0:0] claswp_function_out_lm2810_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm2810_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm2810_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm2810_claswp_avm_read;
    wire [0:0] claswp_function_out_lm2810_claswp_avm_write;
    wire [63:0] claswp_function_out_lm2810_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm3213_claswp_avm_address;
    wire [0:0] claswp_function_out_lm3213_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm3213_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm3213_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm3213_claswp_avm_read;
    wire [0:0] claswp_function_out_lm3213_claswp_avm_write;
    wire [63:0] claswp_function_out_lm3213_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm3414_claswp_avm_address;
    wire [0:0] claswp_function_out_lm3414_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm3414_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm3414_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm3414_claswp_avm_read;
    wire [0:0] claswp_function_out_lm3414_claswp_avm_write;
    wire [63:0] claswp_function_out_lm3414_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm3615_claswp_avm_address;
    wire [0:0] claswp_function_out_lm3615_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm3615_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm3615_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm3615_claswp_avm_read;
    wire [0:0] claswp_function_out_lm3615_claswp_avm_write;
    wire [63:0] claswp_function_out_lm3615_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm3816_claswp_avm_address;
    wire [0:0] claswp_function_out_lm3816_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm3816_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm3816_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm3816_claswp_avm_read;
    wire [0:0] claswp_function_out_lm3816_claswp_avm_write;
    wire [63:0] claswp_function_out_lm3816_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm5619_claswp_avm_address;
    wire [0:0] claswp_function_out_lm5619_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm5619_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm5619_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm5619_claswp_avm_read;
    wire [0:0] claswp_function_out_lm5619_claswp_avm_write;
    wire [63:0] claswp_function_out_lm5619_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm6118_claswp_avm_address;
    wire [0:0] claswp_function_out_lm6118_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm6118_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm6118_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm6118_claswp_avm_read;
    wire [0:0] claswp_function_out_lm6118_claswp_avm_write;
    wire [63:0] claswp_function_out_lm6118_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm7_claswp_avm_address;
    wire [0:0] claswp_function_out_lm7_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm7_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm7_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm7_claswp_avm_read;
    wire [0:0] claswp_function_out_lm7_claswp_avm_write;
    wire [63:0] claswp_function_out_lm7_claswp_avm_writedata;
    wire [63:0] claswp_function_out_lm8417_claswp_avm_address;
    wire [0:0] claswp_function_out_lm8417_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_lm8417_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_lm8417_claswp_avm_enable;
    wire [0:0] claswp_function_out_lm8417_claswp_avm_read;
    wire [0:0] claswp_function_out_lm8417_claswp_avm_write;
    wire [63:0] claswp_function_out_lm8417_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_102_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_102_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_102_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_102_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_102_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_102_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_102_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_119_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_119_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_119_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_119_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_119_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_119_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_119_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_31_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_31_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_31_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_31_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_31_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_31_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_31_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_38_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_38_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_38_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_38_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_38_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_38_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_38_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_46_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_46_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_46_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_46_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_46_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_46_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_46_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_71_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_71_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_71_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_71_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_71_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_71_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_71_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_87_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_87_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_87_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_87_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_87_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_87_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_87_claswp_avm_writedata;
    wire [63:0] claswp_function_out_memdep_claswp_avm_address;
    wire [0:0] claswp_function_out_memdep_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_memdep_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_memdep_claswp_avm_enable;
    wire [0:0] claswp_function_out_memdep_claswp_avm_read;
    wire [0:0] claswp_function_out_memdep_claswp_avm_write;
    wire [63:0] claswp_function_out_memdep_claswp_avm_writedata;
    wire [63:0] claswp_function_out_storemerge1_lm3_claswp_avm_address;
    wire [0:0] claswp_function_out_storemerge1_lm3_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_storemerge1_lm3_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_storemerge1_lm3_claswp_avm_enable;
    wire [0:0] claswp_function_out_storemerge1_lm3_claswp_avm_read;
    wire [0:0] claswp_function_out_storemerge1_lm3_claswp_avm_write;
    wire [63:0] claswp_function_out_storemerge1_lm3_claswp_avm_writedata;
    wire [63:0] claswp_function_out_storemerge72_lm4_claswp_avm_address;
    wire [0:0] claswp_function_out_storemerge72_lm4_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_storemerge72_lm4_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_storemerge72_lm4_claswp_avm_enable;
    wire [0:0] claswp_function_out_storemerge72_lm4_claswp_avm_read;
    wire [0:0] claswp_function_out_storemerge72_lm4_claswp_avm_write;
    wire [63:0] claswp_function_out_storemerge72_lm4_claswp_avm_writedata;
    wire [63:0] claswp_function_out_unnamed_claswp3_claswp_avm_address;
    wire [0:0] claswp_function_out_unnamed_claswp3_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_unnamed_claswp3_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_unnamed_claswp3_claswp_avm_enable;
    wire [0:0] claswp_function_out_unnamed_claswp3_claswp_avm_read;
    wire [0:0] claswp_function_out_unnamed_claswp3_claswp_avm_write;
    wire [63:0] claswp_function_out_unnamed_claswp3_claswp_avm_writedata;
    wire [63:0] claswp_function_out_unnamed_claswp4_claswp_avm_address;
    wire [0:0] claswp_function_out_unnamed_claswp4_claswp_avm_burstcount;
    wire [7:0] claswp_function_out_unnamed_claswp4_claswp_avm_byteenable;
    wire [0:0] claswp_function_out_unnamed_claswp4_claswp_avm_enable;
    wire [0:0] claswp_function_out_unnamed_claswp4_claswp_avm_read;
    wire [0:0] claswp_function_out_unnamed_claswp4_claswp_avm_write;
    wire [63:0] claswp_function_out_unnamed_claswp4_claswp_avm_writedata;
    wire [447:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,148)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = {incx, ipiv, k2, k1, lda, a, n};

    // a_const(CONSTANT,2)
    assign a_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // claswp_function(BLACKBOX,6)
    claswp_function theclaswp_function (
        .in_arg_a(a_const_q),
        .in_arg_call(a_const_q),
        .in_arg_incx(a_const_q),
        .in_arg_ipiv(a_const_q),
        .in_arg_k1(a_const_q),
        .in_arg_k2(a_const_q),
        .in_arg_lda(a_const_q),
        .in_arg_n(a_const_q),
        .in_arg_return(a_const_q),
        .in_iord_bl_call_claswp_i_fifodata(implicit_input_q),
        .in_iord_bl_call_claswp_i_fifovalid(start),
        .in_iowr_bl_return_claswp_i_fifoready(not_stall_q),
        .in_lm1021_claswp_avm_readdata(avm_lm1021_claswp_readdata),
        .in_lm1021_claswp_avm_readdatavalid(avm_lm1021_claswp_readdatavalid),
        .in_lm1021_claswp_avm_waitrequest(avm_lm1021_claswp_waitrequest),
        .in_lm1021_claswp_avm_writeack(avm_lm1021_claswp_writeack),
        .in_lm1052_claswp_avm_readdata(avm_lm1052_claswp_readdata),
        .in_lm1052_claswp_avm_readdatavalid(avm_lm1052_claswp_readdatavalid),
        .in_lm1052_claswp_avm_waitrequest(avm_lm1052_claswp_waitrequest),
        .in_lm1052_claswp_avm_writeack(avm_lm1052_claswp_writeack),
        .in_lm1165_claswp_avm_readdata(avm_lm1165_claswp_readdata),
        .in_lm1165_claswp_avm_readdatavalid(avm_lm1165_claswp_readdatavalid),
        .in_lm1165_claswp_avm_waitrequest(avm_lm1165_claswp_waitrequest),
        .in_lm1165_claswp_avm_writeack(avm_lm1165_claswp_writeack),
        .in_lm1476_claswp_avm_readdata(avm_lm1476_claswp_readdata),
        .in_lm1476_claswp_avm_readdatavalid(avm_lm1476_claswp_readdatavalid),
        .in_lm1476_claswp_avm_waitrequest(avm_lm1476_claswp_waitrequest),
        .in_lm1476_claswp_avm_writeack(avm_lm1476_claswp_writeack),
        .in_lm18611_claswp_avm_readdata(avm_lm18611_claswp_readdata),
        .in_lm18611_claswp_avm_readdatavalid(avm_lm18611_claswp_readdatavalid),
        .in_lm18611_claswp_avm_waitrequest(avm_lm18611_claswp_waitrequest),
        .in_lm18611_claswp_avm_writeack(avm_lm18611_claswp_writeack),
        .in_lm19012_claswp_avm_readdata(avm_lm19012_claswp_readdata),
        .in_lm19012_claswp_avm_readdatavalid(avm_lm19012_claswp_readdatavalid),
        .in_lm19012_claswp_avm_waitrequest(avm_lm19012_claswp_waitrequest),
        .in_lm19012_claswp_avm_writeack(avm_lm19012_claswp_writeack),
        .in_lm248_claswp_avm_readdata(avm_lm248_claswp_readdata),
        .in_lm248_claswp_avm_readdatavalid(avm_lm248_claswp_readdatavalid),
        .in_lm248_claswp_avm_waitrequest(avm_lm248_claswp_waitrequest),
        .in_lm248_claswp_avm_writeack(avm_lm248_claswp_writeack),
        .in_lm269_claswp_avm_readdata(avm_lm269_claswp_readdata),
        .in_lm269_claswp_avm_readdatavalid(avm_lm269_claswp_readdatavalid),
        .in_lm269_claswp_avm_waitrequest(avm_lm269_claswp_waitrequest),
        .in_lm269_claswp_avm_writeack(avm_lm269_claswp_writeack),
        .in_lm2810_claswp_avm_readdata(avm_lm2810_claswp_readdata),
        .in_lm2810_claswp_avm_readdatavalid(avm_lm2810_claswp_readdatavalid),
        .in_lm2810_claswp_avm_waitrequest(avm_lm2810_claswp_waitrequest),
        .in_lm2810_claswp_avm_writeack(avm_lm2810_claswp_writeack),
        .in_lm3213_claswp_avm_readdata(avm_lm3213_claswp_readdata),
        .in_lm3213_claswp_avm_readdatavalid(avm_lm3213_claswp_readdatavalid),
        .in_lm3213_claswp_avm_waitrequest(avm_lm3213_claswp_waitrequest),
        .in_lm3213_claswp_avm_writeack(avm_lm3213_claswp_writeack),
        .in_lm3414_claswp_avm_readdata(avm_lm3414_claswp_readdata),
        .in_lm3414_claswp_avm_readdatavalid(avm_lm3414_claswp_readdatavalid),
        .in_lm3414_claswp_avm_waitrequest(avm_lm3414_claswp_waitrequest),
        .in_lm3414_claswp_avm_writeack(avm_lm3414_claswp_writeack),
        .in_lm3615_claswp_avm_readdata(avm_lm3615_claswp_readdata),
        .in_lm3615_claswp_avm_readdatavalid(avm_lm3615_claswp_readdatavalid),
        .in_lm3615_claswp_avm_waitrequest(avm_lm3615_claswp_waitrequest),
        .in_lm3615_claswp_avm_writeack(avm_lm3615_claswp_writeack),
        .in_lm3816_claswp_avm_readdata(avm_lm3816_claswp_readdata),
        .in_lm3816_claswp_avm_readdatavalid(avm_lm3816_claswp_readdatavalid),
        .in_lm3816_claswp_avm_waitrequest(avm_lm3816_claswp_waitrequest),
        .in_lm3816_claswp_avm_writeack(avm_lm3816_claswp_writeack),
        .in_lm5619_claswp_avm_readdata(avm_lm5619_claswp_readdata),
        .in_lm5619_claswp_avm_readdatavalid(avm_lm5619_claswp_readdatavalid),
        .in_lm5619_claswp_avm_waitrequest(avm_lm5619_claswp_waitrequest),
        .in_lm5619_claswp_avm_writeack(avm_lm5619_claswp_writeack),
        .in_lm6118_claswp_avm_readdata(avm_lm6118_claswp_readdata),
        .in_lm6118_claswp_avm_readdatavalid(avm_lm6118_claswp_readdatavalid),
        .in_lm6118_claswp_avm_waitrequest(avm_lm6118_claswp_waitrequest),
        .in_lm6118_claswp_avm_writeack(avm_lm6118_claswp_writeack),
        .in_lm7_claswp_avm_readdata(avm_lm7_claswp_readdata),
        .in_lm7_claswp_avm_readdatavalid(avm_lm7_claswp_readdatavalid),
        .in_lm7_claswp_avm_waitrequest(avm_lm7_claswp_waitrequest),
        .in_lm7_claswp_avm_writeack(avm_lm7_claswp_writeack),
        .in_lm8417_claswp_avm_readdata(avm_lm8417_claswp_readdata),
        .in_lm8417_claswp_avm_readdatavalid(avm_lm8417_claswp_readdatavalid),
        .in_lm8417_claswp_avm_waitrequest(avm_lm8417_claswp_waitrequest),
        .in_lm8417_claswp_avm_writeack(avm_lm8417_claswp_writeack),
        .in_memdep_102_claswp_avm_readdata(avm_memdep_102_claswp_readdata),
        .in_memdep_102_claswp_avm_readdatavalid(avm_memdep_102_claswp_readdatavalid),
        .in_memdep_102_claswp_avm_waitrequest(avm_memdep_102_claswp_waitrequest),
        .in_memdep_102_claswp_avm_writeack(avm_memdep_102_claswp_writeack),
        .in_memdep_119_claswp_avm_readdata(avm_memdep_119_claswp_readdata),
        .in_memdep_119_claswp_avm_readdatavalid(avm_memdep_119_claswp_readdatavalid),
        .in_memdep_119_claswp_avm_waitrequest(avm_memdep_119_claswp_waitrequest),
        .in_memdep_119_claswp_avm_writeack(avm_memdep_119_claswp_writeack),
        .in_memdep_31_claswp_avm_readdata(avm_memdep_31_claswp_readdata),
        .in_memdep_31_claswp_avm_readdatavalid(avm_memdep_31_claswp_readdatavalid),
        .in_memdep_31_claswp_avm_waitrequest(avm_memdep_31_claswp_waitrequest),
        .in_memdep_31_claswp_avm_writeack(avm_memdep_31_claswp_writeack),
        .in_memdep_38_claswp_avm_readdata(avm_memdep_38_claswp_readdata),
        .in_memdep_38_claswp_avm_readdatavalid(avm_memdep_38_claswp_readdatavalid),
        .in_memdep_38_claswp_avm_waitrequest(avm_memdep_38_claswp_waitrequest),
        .in_memdep_38_claswp_avm_writeack(avm_memdep_38_claswp_writeack),
        .in_memdep_46_claswp_avm_readdata(avm_memdep_46_claswp_readdata),
        .in_memdep_46_claswp_avm_readdatavalid(avm_memdep_46_claswp_readdatavalid),
        .in_memdep_46_claswp_avm_waitrequest(avm_memdep_46_claswp_waitrequest),
        .in_memdep_46_claswp_avm_writeack(avm_memdep_46_claswp_writeack),
        .in_memdep_71_claswp_avm_readdata(avm_memdep_71_claswp_readdata),
        .in_memdep_71_claswp_avm_readdatavalid(avm_memdep_71_claswp_readdatavalid),
        .in_memdep_71_claswp_avm_waitrequest(avm_memdep_71_claswp_waitrequest),
        .in_memdep_71_claswp_avm_writeack(avm_memdep_71_claswp_writeack),
        .in_memdep_87_claswp_avm_readdata(avm_memdep_87_claswp_readdata),
        .in_memdep_87_claswp_avm_readdatavalid(avm_memdep_87_claswp_readdatavalid),
        .in_memdep_87_claswp_avm_waitrequest(avm_memdep_87_claswp_waitrequest),
        .in_memdep_87_claswp_avm_writeack(avm_memdep_87_claswp_writeack),
        .in_memdep_claswp_avm_readdata(avm_memdep_claswp_readdata),
        .in_memdep_claswp_avm_readdatavalid(avm_memdep_claswp_readdatavalid),
        .in_memdep_claswp_avm_waitrequest(avm_memdep_claswp_waitrequest),
        .in_memdep_claswp_avm_writeack(avm_memdep_claswp_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_storemerge1_lm3_claswp_avm_readdata(avm_storemerge1_lm3_claswp_readdata),
        .in_storemerge1_lm3_claswp_avm_readdatavalid(avm_storemerge1_lm3_claswp_readdatavalid),
        .in_storemerge1_lm3_claswp_avm_waitrequest(avm_storemerge1_lm3_claswp_waitrequest),
        .in_storemerge1_lm3_claswp_avm_writeack(avm_storemerge1_lm3_claswp_writeack),
        .in_storemerge72_lm4_claswp_avm_readdata(avm_storemerge72_lm4_claswp_readdata),
        .in_storemerge72_lm4_claswp_avm_readdatavalid(avm_storemerge72_lm4_claswp_readdatavalid),
        .in_storemerge72_lm4_claswp_avm_waitrequest(avm_storemerge72_lm4_claswp_waitrequest),
        .in_storemerge72_lm4_claswp_avm_writeack(avm_storemerge72_lm4_claswp_writeack),
        .in_unnamed_claswp3_claswp_avm_readdata(avm_unnamed_claswp3_claswp_readdata),
        .in_unnamed_claswp3_claswp_avm_readdatavalid(avm_unnamed_claswp3_claswp_readdatavalid),
        .in_unnamed_claswp3_claswp_avm_waitrequest(avm_unnamed_claswp3_claswp_waitrequest),
        .in_unnamed_claswp3_claswp_avm_writeack(avm_unnamed_claswp3_claswp_writeack),
        .in_unnamed_claswp4_claswp_avm_readdata(avm_unnamed_claswp4_claswp_readdata),
        .in_unnamed_claswp4_claswp_avm_readdatavalid(avm_unnamed_claswp4_claswp_readdatavalid),
        .in_unnamed_claswp4_claswp_avm_waitrequest(avm_unnamed_claswp4_claswp_waitrequest),
        .in_unnamed_claswp4_claswp_avm_writeack(avm_unnamed_claswp4_claswp_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_claswp_o_fifoready(claswp_function_out_iord_bl_call_claswp_o_fifoready),
        .out_iowr_bl_return_claswp_o_fifodata(claswp_function_out_iowr_bl_return_claswp_o_fifodata),
        .out_iowr_bl_return_claswp_o_fifovalid(claswp_function_out_iowr_bl_return_claswp_o_fifovalid),
        .out_lm1021_claswp_avm_address(claswp_function_out_lm1021_claswp_avm_address),
        .out_lm1021_claswp_avm_burstcount(claswp_function_out_lm1021_claswp_avm_burstcount),
        .out_lm1021_claswp_avm_byteenable(claswp_function_out_lm1021_claswp_avm_byteenable),
        .out_lm1021_claswp_avm_enable(claswp_function_out_lm1021_claswp_avm_enable),
        .out_lm1021_claswp_avm_read(claswp_function_out_lm1021_claswp_avm_read),
        .out_lm1021_claswp_avm_write(claswp_function_out_lm1021_claswp_avm_write),
        .out_lm1021_claswp_avm_writedata(claswp_function_out_lm1021_claswp_avm_writedata),
        .out_lm1052_claswp_avm_address(claswp_function_out_lm1052_claswp_avm_address),
        .out_lm1052_claswp_avm_burstcount(claswp_function_out_lm1052_claswp_avm_burstcount),
        .out_lm1052_claswp_avm_byteenable(claswp_function_out_lm1052_claswp_avm_byteenable),
        .out_lm1052_claswp_avm_enable(claswp_function_out_lm1052_claswp_avm_enable),
        .out_lm1052_claswp_avm_read(claswp_function_out_lm1052_claswp_avm_read),
        .out_lm1052_claswp_avm_write(claswp_function_out_lm1052_claswp_avm_write),
        .out_lm1052_claswp_avm_writedata(claswp_function_out_lm1052_claswp_avm_writedata),
        .out_lm1165_claswp_avm_address(claswp_function_out_lm1165_claswp_avm_address),
        .out_lm1165_claswp_avm_burstcount(claswp_function_out_lm1165_claswp_avm_burstcount),
        .out_lm1165_claswp_avm_byteenable(claswp_function_out_lm1165_claswp_avm_byteenable),
        .out_lm1165_claswp_avm_enable(claswp_function_out_lm1165_claswp_avm_enable),
        .out_lm1165_claswp_avm_read(claswp_function_out_lm1165_claswp_avm_read),
        .out_lm1165_claswp_avm_write(claswp_function_out_lm1165_claswp_avm_write),
        .out_lm1165_claswp_avm_writedata(claswp_function_out_lm1165_claswp_avm_writedata),
        .out_lm1476_claswp_avm_address(claswp_function_out_lm1476_claswp_avm_address),
        .out_lm1476_claswp_avm_burstcount(claswp_function_out_lm1476_claswp_avm_burstcount),
        .out_lm1476_claswp_avm_byteenable(claswp_function_out_lm1476_claswp_avm_byteenable),
        .out_lm1476_claswp_avm_enable(claswp_function_out_lm1476_claswp_avm_enable),
        .out_lm1476_claswp_avm_read(claswp_function_out_lm1476_claswp_avm_read),
        .out_lm1476_claswp_avm_write(claswp_function_out_lm1476_claswp_avm_write),
        .out_lm1476_claswp_avm_writedata(claswp_function_out_lm1476_claswp_avm_writedata),
        .out_lm18611_claswp_avm_address(claswp_function_out_lm18611_claswp_avm_address),
        .out_lm18611_claswp_avm_burstcount(claswp_function_out_lm18611_claswp_avm_burstcount),
        .out_lm18611_claswp_avm_byteenable(claswp_function_out_lm18611_claswp_avm_byteenable),
        .out_lm18611_claswp_avm_enable(claswp_function_out_lm18611_claswp_avm_enable),
        .out_lm18611_claswp_avm_read(claswp_function_out_lm18611_claswp_avm_read),
        .out_lm18611_claswp_avm_write(claswp_function_out_lm18611_claswp_avm_write),
        .out_lm18611_claswp_avm_writedata(claswp_function_out_lm18611_claswp_avm_writedata),
        .out_lm19012_claswp_avm_address(claswp_function_out_lm19012_claswp_avm_address),
        .out_lm19012_claswp_avm_burstcount(claswp_function_out_lm19012_claswp_avm_burstcount),
        .out_lm19012_claswp_avm_byteenable(claswp_function_out_lm19012_claswp_avm_byteenable),
        .out_lm19012_claswp_avm_enable(claswp_function_out_lm19012_claswp_avm_enable),
        .out_lm19012_claswp_avm_read(claswp_function_out_lm19012_claswp_avm_read),
        .out_lm19012_claswp_avm_write(claswp_function_out_lm19012_claswp_avm_write),
        .out_lm19012_claswp_avm_writedata(claswp_function_out_lm19012_claswp_avm_writedata),
        .out_lm248_claswp_avm_address(claswp_function_out_lm248_claswp_avm_address),
        .out_lm248_claswp_avm_burstcount(claswp_function_out_lm248_claswp_avm_burstcount),
        .out_lm248_claswp_avm_byteenable(claswp_function_out_lm248_claswp_avm_byteenable),
        .out_lm248_claswp_avm_enable(claswp_function_out_lm248_claswp_avm_enable),
        .out_lm248_claswp_avm_read(claswp_function_out_lm248_claswp_avm_read),
        .out_lm248_claswp_avm_write(claswp_function_out_lm248_claswp_avm_write),
        .out_lm248_claswp_avm_writedata(claswp_function_out_lm248_claswp_avm_writedata),
        .out_lm269_claswp_avm_address(claswp_function_out_lm269_claswp_avm_address),
        .out_lm269_claswp_avm_burstcount(claswp_function_out_lm269_claswp_avm_burstcount),
        .out_lm269_claswp_avm_byteenable(claswp_function_out_lm269_claswp_avm_byteenable),
        .out_lm269_claswp_avm_enable(claswp_function_out_lm269_claswp_avm_enable),
        .out_lm269_claswp_avm_read(claswp_function_out_lm269_claswp_avm_read),
        .out_lm269_claswp_avm_write(claswp_function_out_lm269_claswp_avm_write),
        .out_lm269_claswp_avm_writedata(claswp_function_out_lm269_claswp_avm_writedata),
        .out_lm2810_claswp_avm_address(claswp_function_out_lm2810_claswp_avm_address),
        .out_lm2810_claswp_avm_burstcount(claswp_function_out_lm2810_claswp_avm_burstcount),
        .out_lm2810_claswp_avm_byteenable(claswp_function_out_lm2810_claswp_avm_byteenable),
        .out_lm2810_claswp_avm_enable(claswp_function_out_lm2810_claswp_avm_enable),
        .out_lm2810_claswp_avm_read(claswp_function_out_lm2810_claswp_avm_read),
        .out_lm2810_claswp_avm_write(claswp_function_out_lm2810_claswp_avm_write),
        .out_lm2810_claswp_avm_writedata(claswp_function_out_lm2810_claswp_avm_writedata),
        .out_lm3213_claswp_avm_address(claswp_function_out_lm3213_claswp_avm_address),
        .out_lm3213_claswp_avm_burstcount(claswp_function_out_lm3213_claswp_avm_burstcount),
        .out_lm3213_claswp_avm_byteenable(claswp_function_out_lm3213_claswp_avm_byteenable),
        .out_lm3213_claswp_avm_enable(claswp_function_out_lm3213_claswp_avm_enable),
        .out_lm3213_claswp_avm_read(claswp_function_out_lm3213_claswp_avm_read),
        .out_lm3213_claswp_avm_write(claswp_function_out_lm3213_claswp_avm_write),
        .out_lm3213_claswp_avm_writedata(claswp_function_out_lm3213_claswp_avm_writedata),
        .out_lm3414_claswp_avm_address(claswp_function_out_lm3414_claswp_avm_address),
        .out_lm3414_claswp_avm_burstcount(claswp_function_out_lm3414_claswp_avm_burstcount),
        .out_lm3414_claswp_avm_byteenable(claswp_function_out_lm3414_claswp_avm_byteenable),
        .out_lm3414_claswp_avm_enable(claswp_function_out_lm3414_claswp_avm_enable),
        .out_lm3414_claswp_avm_read(claswp_function_out_lm3414_claswp_avm_read),
        .out_lm3414_claswp_avm_write(claswp_function_out_lm3414_claswp_avm_write),
        .out_lm3414_claswp_avm_writedata(claswp_function_out_lm3414_claswp_avm_writedata),
        .out_lm3615_claswp_avm_address(claswp_function_out_lm3615_claswp_avm_address),
        .out_lm3615_claswp_avm_burstcount(claswp_function_out_lm3615_claswp_avm_burstcount),
        .out_lm3615_claswp_avm_byteenable(claswp_function_out_lm3615_claswp_avm_byteenable),
        .out_lm3615_claswp_avm_enable(claswp_function_out_lm3615_claswp_avm_enable),
        .out_lm3615_claswp_avm_read(claswp_function_out_lm3615_claswp_avm_read),
        .out_lm3615_claswp_avm_write(claswp_function_out_lm3615_claswp_avm_write),
        .out_lm3615_claswp_avm_writedata(claswp_function_out_lm3615_claswp_avm_writedata),
        .out_lm3816_claswp_avm_address(claswp_function_out_lm3816_claswp_avm_address),
        .out_lm3816_claswp_avm_burstcount(claswp_function_out_lm3816_claswp_avm_burstcount),
        .out_lm3816_claswp_avm_byteenable(claswp_function_out_lm3816_claswp_avm_byteenable),
        .out_lm3816_claswp_avm_enable(claswp_function_out_lm3816_claswp_avm_enable),
        .out_lm3816_claswp_avm_read(claswp_function_out_lm3816_claswp_avm_read),
        .out_lm3816_claswp_avm_write(claswp_function_out_lm3816_claswp_avm_write),
        .out_lm3816_claswp_avm_writedata(claswp_function_out_lm3816_claswp_avm_writedata),
        .out_lm5619_claswp_avm_address(claswp_function_out_lm5619_claswp_avm_address),
        .out_lm5619_claswp_avm_burstcount(claswp_function_out_lm5619_claswp_avm_burstcount),
        .out_lm5619_claswp_avm_byteenable(claswp_function_out_lm5619_claswp_avm_byteenable),
        .out_lm5619_claswp_avm_enable(claswp_function_out_lm5619_claswp_avm_enable),
        .out_lm5619_claswp_avm_read(claswp_function_out_lm5619_claswp_avm_read),
        .out_lm5619_claswp_avm_write(claswp_function_out_lm5619_claswp_avm_write),
        .out_lm5619_claswp_avm_writedata(claswp_function_out_lm5619_claswp_avm_writedata),
        .out_lm6118_claswp_avm_address(claswp_function_out_lm6118_claswp_avm_address),
        .out_lm6118_claswp_avm_burstcount(claswp_function_out_lm6118_claswp_avm_burstcount),
        .out_lm6118_claswp_avm_byteenable(claswp_function_out_lm6118_claswp_avm_byteenable),
        .out_lm6118_claswp_avm_enable(claswp_function_out_lm6118_claswp_avm_enable),
        .out_lm6118_claswp_avm_read(claswp_function_out_lm6118_claswp_avm_read),
        .out_lm6118_claswp_avm_write(claswp_function_out_lm6118_claswp_avm_write),
        .out_lm6118_claswp_avm_writedata(claswp_function_out_lm6118_claswp_avm_writedata),
        .out_lm7_claswp_avm_address(claswp_function_out_lm7_claswp_avm_address),
        .out_lm7_claswp_avm_burstcount(claswp_function_out_lm7_claswp_avm_burstcount),
        .out_lm7_claswp_avm_byteenable(claswp_function_out_lm7_claswp_avm_byteenable),
        .out_lm7_claswp_avm_enable(claswp_function_out_lm7_claswp_avm_enable),
        .out_lm7_claswp_avm_read(claswp_function_out_lm7_claswp_avm_read),
        .out_lm7_claswp_avm_write(claswp_function_out_lm7_claswp_avm_write),
        .out_lm7_claswp_avm_writedata(claswp_function_out_lm7_claswp_avm_writedata),
        .out_lm8417_claswp_avm_address(claswp_function_out_lm8417_claswp_avm_address),
        .out_lm8417_claswp_avm_burstcount(claswp_function_out_lm8417_claswp_avm_burstcount),
        .out_lm8417_claswp_avm_byteenable(claswp_function_out_lm8417_claswp_avm_byteenable),
        .out_lm8417_claswp_avm_enable(claswp_function_out_lm8417_claswp_avm_enable),
        .out_lm8417_claswp_avm_read(claswp_function_out_lm8417_claswp_avm_read),
        .out_lm8417_claswp_avm_write(claswp_function_out_lm8417_claswp_avm_write),
        .out_lm8417_claswp_avm_writedata(claswp_function_out_lm8417_claswp_avm_writedata),
        .out_memdep_102_claswp_avm_address(claswp_function_out_memdep_102_claswp_avm_address),
        .out_memdep_102_claswp_avm_burstcount(claswp_function_out_memdep_102_claswp_avm_burstcount),
        .out_memdep_102_claswp_avm_byteenable(claswp_function_out_memdep_102_claswp_avm_byteenable),
        .out_memdep_102_claswp_avm_enable(claswp_function_out_memdep_102_claswp_avm_enable),
        .out_memdep_102_claswp_avm_read(claswp_function_out_memdep_102_claswp_avm_read),
        .out_memdep_102_claswp_avm_write(claswp_function_out_memdep_102_claswp_avm_write),
        .out_memdep_102_claswp_avm_writedata(claswp_function_out_memdep_102_claswp_avm_writedata),
        .out_memdep_119_claswp_avm_address(claswp_function_out_memdep_119_claswp_avm_address),
        .out_memdep_119_claswp_avm_burstcount(claswp_function_out_memdep_119_claswp_avm_burstcount),
        .out_memdep_119_claswp_avm_byteenable(claswp_function_out_memdep_119_claswp_avm_byteenable),
        .out_memdep_119_claswp_avm_enable(claswp_function_out_memdep_119_claswp_avm_enable),
        .out_memdep_119_claswp_avm_read(claswp_function_out_memdep_119_claswp_avm_read),
        .out_memdep_119_claswp_avm_write(claswp_function_out_memdep_119_claswp_avm_write),
        .out_memdep_119_claswp_avm_writedata(claswp_function_out_memdep_119_claswp_avm_writedata),
        .out_memdep_31_claswp_avm_address(claswp_function_out_memdep_31_claswp_avm_address),
        .out_memdep_31_claswp_avm_burstcount(claswp_function_out_memdep_31_claswp_avm_burstcount),
        .out_memdep_31_claswp_avm_byteenable(claswp_function_out_memdep_31_claswp_avm_byteenable),
        .out_memdep_31_claswp_avm_enable(claswp_function_out_memdep_31_claswp_avm_enable),
        .out_memdep_31_claswp_avm_read(claswp_function_out_memdep_31_claswp_avm_read),
        .out_memdep_31_claswp_avm_write(claswp_function_out_memdep_31_claswp_avm_write),
        .out_memdep_31_claswp_avm_writedata(claswp_function_out_memdep_31_claswp_avm_writedata),
        .out_memdep_38_claswp_avm_address(claswp_function_out_memdep_38_claswp_avm_address),
        .out_memdep_38_claswp_avm_burstcount(claswp_function_out_memdep_38_claswp_avm_burstcount),
        .out_memdep_38_claswp_avm_byteenable(claswp_function_out_memdep_38_claswp_avm_byteenable),
        .out_memdep_38_claswp_avm_enable(claswp_function_out_memdep_38_claswp_avm_enable),
        .out_memdep_38_claswp_avm_read(claswp_function_out_memdep_38_claswp_avm_read),
        .out_memdep_38_claswp_avm_write(claswp_function_out_memdep_38_claswp_avm_write),
        .out_memdep_38_claswp_avm_writedata(claswp_function_out_memdep_38_claswp_avm_writedata),
        .out_memdep_46_claswp_avm_address(claswp_function_out_memdep_46_claswp_avm_address),
        .out_memdep_46_claswp_avm_burstcount(claswp_function_out_memdep_46_claswp_avm_burstcount),
        .out_memdep_46_claswp_avm_byteenable(claswp_function_out_memdep_46_claswp_avm_byteenable),
        .out_memdep_46_claswp_avm_enable(claswp_function_out_memdep_46_claswp_avm_enable),
        .out_memdep_46_claswp_avm_read(claswp_function_out_memdep_46_claswp_avm_read),
        .out_memdep_46_claswp_avm_write(claswp_function_out_memdep_46_claswp_avm_write),
        .out_memdep_46_claswp_avm_writedata(claswp_function_out_memdep_46_claswp_avm_writedata),
        .out_memdep_71_claswp_avm_address(claswp_function_out_memdep_71_claswp_avm_address),
        .out_memdep_71_claswp_avm_burstcount(claswp_function_out_memdep_71_claswp_avm_burstcount),
        .out_memdep_71_claswp_avm_byteenable(claswp_function_out_memdep_71_claswp_avm_byteenable),
        .out_memdep_71_claswp_avm_enable(claswp_function_out_memdep_71_claswp_avm_enable),
        .out_memdep_71_claswp_avm_read(claswp_function_out_memdep_71_claswp_avm_read),
        .out_memdep_71_claswp_avm_write(claswp_function_out_memdep_71_claswp_avm_write),
        .out_memdep_71_claswp_avm_writedata(claswp_function_out_memdep_71_claswp_avm_writedata),
        .out_memdep_87_claswp_avm_address(claswp_function_out_memdep_87_claswp_avm_address),
        .out_memdep_87_claswp_avm_burstcount(claswp_function_out_memdep_87_claswp_avm_burstcount),
        .out_memdep_87_claswp_avm_byteenable(claswp_function_out_memdep_87_claswp_avm_byteenable),
        .out_memdep_87_claswp_avm_enable(claswp_function_out_memdep_87_claswp_avm_enable),
        .out_memdep_87_claswp_avm_read(claswp_function_out_memdep_87_claswp_avm_read),
        .out_memdep_87_claswp_avm_write(claswp_function_out_memdep_87_claswp_avm_write),
        .out_memdep_87_claswp_avm_writedata(claswp_function_out_memdep_87_claswp_avm_writedata),
        .out_memdep_claswp_avm_address(claswp_function_out_memdep_claswp_avm_address),
        .out_memdep_claswp_avm_burstcount(claswp_function_out_memdep_claswp_avm_burstcount),
        .out_memdep_claswp_avm_byteenable(claswp_function_out_memdep_claswp_avm_byteenable),
        .out_memdep_claswp_avm_enable(claswp_function_out_memdep_claswp_avm_enable),
        .out_memdep_claswp_avm_read(claswp_function_out_memdep_claswp_avm_read),
        .out_memdep_claswp_avm_write(claswp_function_out_memdep_claswp_avm_write),
        .out_memdep_claswp_avm_writedata(claswp_function_out_memdep_claswp_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_102(),
        .out_o_active_memdep_119(),
        .out_o_active_memdep_31(),
        .out_o_active_memdep_38(),
        .out_o_active_memdep_46(),
        .out_o_active_memdep_71(),
        .out_o_active_memdep_87(),
        .out_stall_out(),
        .out_storemerge1_lm3_claswp_avm_address(claswp_function_out_storemerge1_lm3_claswp_avm_address),
        .out_storemerge1_lm3_claswp_avm_burstcount(claswp_function_out_storemerge1_lm3_claswp_avm_burstcount),
        .out_storemerge1_lm3_claswp_avm_byteenable(claswp_function_out_storemerge1_lm3_claswp_avm_byteenable),
        .out_storemerge1_lm3_claswp_avm_enable(claswp_function_out_storemerge1_lm3_claswp_avm_enable),
        .out_storemerge1_lm3_claswp_avm_read(claswp_function_out_storemerge1_lm3_claswp_avm_read),
        .out_storemerge1_lm3_claswp_avm_write(claswp_function_out_storemerge1_lm3_claswp_avm_write),
        .out_storemerge1_lm3_claswp_avm_writedata(claswp_function_out_storemerge1_lm3_claswp_avm_writedata),
        .out_storemerge72_lm4_claswp_avm_address(claswp_function_out_storemerge72_lm4_claswp_avm_address),
        .out_storemerge72_lm4_claswp_avm_burstcount(claswp_function_out_storemerge72_lm4_claswp_avm_burstcount),
        .out_storemerge72_lm4_claswp_avm_byteenable(claswp_function_out_storemerge72_lm4_claswp_avm_byteenable),
        .out_storemerge72_lm4_claswp_avm_enable(claswp_function_out_storemerge72_lm4_claswp_avm_enable),
        .out_storemerge72_lm4_claswp_avm_read(claswp_function_out_storemerge72_lm4_claswp_avm_read),
        .out_storemerge72_lm4_claswp_avm_write(claswp_function_out_storemerge72_lm4_claswp_avm_write),
        .out_storemerge72_lm4_claswp_avm_writedata(claswp_function_out_storemerge72_lm4_claswp_avm_writedata),
        .out_unnamed_claswp3_claswp_avm_address(claswp_function_out_unnamed_claswp3_claswp_avm_address),
        .out_unnamed_claswp3_claswp_avm_burstcount(claswp_function_out_unnamed_claswp3_claswp_avm_burstcount),
        .out_unnamed_claswp3_claswp_avm_byteenable(claswp_function_out_unnamed_claswp3_claswp_avm_byteenable),
        .out_unnamed_claswp3_claswp_avm_enable(claswp_function_out_unnamed_claswp3_claswp_avm_enable),
        .out_unnamed_claswp3_claswp_avm_read(claswp_function_out_unnamed_claswp3_claswp_avm_read),
        .out_unnamed_claswp3_claswp_avm_write(claswp_function_out_unnamed_claswp3_claswp_avm_write),
        .out_unnamed_claswp3_claswp_avm_writedata(claswp_function_out_unnamed_claswp3_claswp_avm_writedata),
        .out_unnamed_claswp4_claswp_avm_address(claswp_function_out_unnamed_claswp4_claswp_avm_address),
        .out_unnamed_claswp4_claswp_avm_burstcount(claswp_function_out_unnamed_claswp4_claswp_avm_burstcount),
        .out_unnamed_claswp4_claswp_avm_byteenable(claswp_function_out_unnamed_claswp4_claswp_avm_byteenable),
        .out_unnamed_claswp4_claswp_avm_enable(claswp_function_out_unnamed_claswp4_claswp_avm_enable),
        .out_unnamed_claswp4_claswp_avm_read(claswp_function_out_unnamed_claswp4_claswp_avm_read),
        .out_unnamed_claswp4_claswp_avm_write(claswp_function_out_unnamed_claswp4_claswp_avm_write),
        .out_unnamed_claswp4_claswp_avm_writedata(claswp_function_out_unnamed_claswp4_claswp_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1021_claswp_address(GPOUT,149)
    assign avm_lm1021_claswp_address = claswp_function_out_lm1021_claswp_avm_address;

    // avm_lm1021_claswp_burstcount(GPOUT,150)
    assign avm_lm1021_claswp_burstcount = claswp_function_out_lm1021_claswp_avm_burstcount;

    // avm_lm1021_claswp_byteenable(GPOUT,151)
    assign avm_lm1021_claswp_byteenable = claswp_function_out_lm1021_claswp_avm_byteenable;

    // avm_lm1021_claswp_enable(GPOUT,152)
    assign avm_lm1021_claswp_enable = claswp_function_out_lm1021_claswp_avm_enable;

    // avm_lm1021_claswp_read(GPOUT,153)
    assign avm_lm1021_claswp_read = claswp_function_out_lm1021_claswp_avm_read;

    // avm_lm1021_claswp_write(GPOUT,154)
    assign avm_lm1021_claswp_write = claswp_function_out_lm1021_claswp_avm_write;

    // avm_lm1021_claswp_writedata(GPOUT,155)
    assign avm_lm1021_claswp_writedata = claswp_function_out_lm1021_claswp_avm_writedata;

    // avm_lm1052_claswp_address(GPOUT,156)
    assign avm_lm1052_claswp_address = claswp_function_out_lm1052_claswp_avm_address;

    // avm_lm1052_claswp_burstcount(GPOUT,157)
    assign avm_lm1052_claswp_burstcount = claswp_function_out_lm1052_claswp_avm_burstcount;

    // avm_lm1052_claswp_byteenable(GPOUT,158)
    assign avm_lm1052_claswp_byteenable = claswp_function_out_lm1052_claswp_avm_byteenable;

    // avm_lm1052_claswp_enable(GPOUT,159)
    assign avm_lm1052_claswp_enable = claswp_function_out_lm1052_claswp_avm_enable;

    // avm_lm1052_claswp_read(GPOUT,160)
    assign avm_lm1052_claswp_read = claswp_function_out_lm1052_claswp_avm_read;

    // avm_lm1052_claswp_write(GPOUT,161)
    assign avm_lm1052_claswp_write = claswp_function_out_lm1052_claswp_avm_write;

    // avm_lm1052_claswp_writedata(GPOUT,162)
    assign avm_lm1052_claswp_writedata = claswp_function_out_lm1052_claswp_avm_writedata;

    // avm_lm1165_claswp_address(GPOUT,163)
    assign avm_lm1165_claswp_address = claswp_function_out_lm1165_claswp_avm_address;

    // avm_lm1165_claswp_burstcount(GPOUT,164)
    assign avm_lm1165_claswp_burstcount = claswp_function_out_lm1165_claswp_avm_burstcount;

    // avm_lm1165_claswp_byteenable(GPOUT,165)
    assign avm_lm1165_claswp_byteenable = claswp_function_out_lm1165_claswp_avm_byteenable;

    // avm_lm1165_claswp_enable(GPOUT,166)
    assign avm_lm1165_claswp_enable = claswp_function_out_lm1165_claswp_avm_enable;

    // avm_lm1165_claswp_read(GPOUT,167)
    assign avm_lm1165_claswp_read = claswp_function_out_lm1165_claswp_avm_read;

    // avm_lm1165_claswp_write(GPOUT,168)
    assign avm_lm1165_claswp_write = claswp_function_out_lm1165_claswp_avm_write;

    // avm_lm1165_claswp_writedata(GPOUT,169)
    assign avm_lm1165_claswp_writedata = claswp_function_out_lm1165_claswp_avm_writedata;

    // avm_lm1476_claswp_address(GPOUT,170)
    assign avm_lm1476_claswp_address = claswp_function_out_lm1476_claswp_avm_address;

    // avm_lm1476_claswp_burstcount(GPOUT,171)
    assign avm_lm1476_claswp_burstcount = claswp_function_out_lm1476_claswp_avm_burstcount;

    // avm_lm1476_claswp_byteenable(GPOUT,172)
    assign avm_lm1476_claswp_byteenable = claswp_function_out_lm1476_claswp_avm_byteenable;

    // avm_lm1476_claswp_enable(GPOUT,173)
    assign avm_lm1476_claswp_enable = claswp_function_out_lm1476_claswp_avm_enable;

    // avm_lm1476_claswp_read(GPOUT,174)
    assign avm_lm1476_claswp_read = claswp_function_out_lm1476_claswp_avm_read;

    // avm_lm1476_claswp_write(GPOUT,175)
    assign avm_lm1476_claswp_write = claswp_function_out_lm1476_claswp_avm_write;

    // avm_lm1476_claswp_writedata(GPOUT,176)
    assign avm_lm1476_claswp_writedata = claswp_function_out_lm1476_claswp_avm_writedata;

    // avm_lm18611_claswp_address(GPOUT,177)
    assign avm_lm18611_claswp_address = claswp_function_out_lm18611_claswp_avm_address;

    // avm_lm18611_claswp_burstcount(GPOUT,178)
    assign avm_lm18611_claswp_burstcount = claswp_function_out_lm18611_claswp_avm_burstcount;

    // avm_lm18611_claswp_byteenable(GPOUT,179)
    assign avm_lm18611_claswp_byteenable = claswp_function_out_lm18611_claswp_avm_byteenable;

    // avm_lm18611_claswp_enable(GPOUT,180)
    assign avm_lm18611_claswp_enable = claswp_function_out_lm18611_claswp_avm_enable;

    // avm_lm18611_claswp_read(GPOUT,181)
    assign avm_lm18611_claswp_read = claswp_function_out_lm18611_claswp_avm_read;

    // avm_lm18611_claswp_write(GPOUT,182)
    assign avm_lm18611_claswp_write = claswp_function_out_lm18611_claswp_avm_write;

    // avm_lm18611_claswp_writedata(GPOUT,183)
    assign avm_lm18611_claswp_writedata = claswp_function_out_lm18611_claswp_avm_writedata;

    // avm_lm19012_claswp_address(GPOUT,184)
    assign avm_lm19012_claswp_address = claswp_function_out_lm19012_claswp_avm_address;

    // avm_lm19012_claswp_burstcount(GPOUT,185)
    assign avm_lm19012_claswp_burstcount = claswp_function_out_lm19012_claswp_avm_burstcount;

    // avm_lm19012_claswp_byteenable(GPOUT,186)
    assign avm_lm19012_claswp_byteenable = claswp_function_out_lm19012_claswp_avm_byteenable;

    // avm_lm19012_claswp_enable(GPOUT,187)
    assign avm_lm19012_claswp_enable = claswp_function_out_lm19012_claswp_avm_enable;

    // avm_lm19012_claswp_read(GPOUT,188)
    assign avm_lm19012_claswp_read = claswp_function_out_lm19012_claswp_avm_read;

    // avm_lm19012_claswp_write(GPOUT,189)
    assign avm_lm19012_claswp_write = claswp_function_out_lm19012_claswp_avm_write;

    // avm_lm19012_claswp_writedata(GPOUT,190)
    assign avm_lm19012_claswp_writedata = claswp_function_out_lm19012_claswp_avm_writedata;

    // avm_lm248_claswp_address(GPOUT,191)
    assign avm_lm248_claswp_address = claswp_function_out_lm248_claswp_avm_address;

    // avm_lm248_claswp_burstcount(GPOUT,192)
    assign avm_lm248_claswp_burstcount = claswp_function_out_lm248_claswp_avm_burstcount;

    // avm_lm248_claswp_byteenable(GPOUT,193)
    assign avm_lm248_claswp_byteenable = claswp_function_out_lm248_claswp_avm_byteenable;

    // avm_lm248_claswp_enable(GPOUT,194)
    assign avm_lm248_claswp_enable = claswp_function_out_lm248_claswp_avm_enable;

    // avm_lm248_claswp_read(GPOUT,195)
    assign avm_lm248_claswp_read = claswp_function_out_lm248_claswp_avm_read;

    // avm_lm248_claswp_write(GPOUT,196)
    assign avm_lm248_claswp_write = claswp_function_out_lm248_claswp_avm_write;

    // avm_lm248_claswp_writedata(GPOUT,197)
    assign avm_lm248_claswp_writedata = claswp_function_out_lm248_claswp_avm_writedata;

    // avm_lm269_claswp_address(GPOUT,198)
    assign avm_lm269_claswp_address = claswp_function_out_lm269_claswp_avm_address;

    // avm_lm269_claswp_burstcount(GPOUT,199)
    assign avm_lm269_claswp_burstcount = claswp_function_out_lm269_claswp_avm_burstcount;

    // avm_lm269_claswp_byteenable(GPOUT,200)
    assign avm_lm269_claswp_byteenable = claswp_function_out_lm269_claswp_avm_byteenable;

    // avm_lm269_claswp_enable(GPOUT,201)
    assign avm_lm269_claswp_enable = claswp_function_out_lm269_claswp_avm_enable;

    // avm_lm269_claswp_read(GPOUT,202)
    assign avm_lm269_claswp_read = claswp_function_out_lm269_claswp_avm_read;

    // avm_lm269_claswp_write(GPOUT,203)
    assign avm_lm269_claswp_write = claswp_function_out_lm269_claswp_avm_write;

    // avm_lm269_claswp_writedata(GPOUT,204)
    assign avm_lm269_claswp_writedata = claswp_function_out_lm269_claswp_avm_writedata;

    // avm_lm2810_claswp_address(GPOUT,205)
    assign avm_lm2810_claswp_address = claswp_function_out_lm2810_claswp_avm_address;

    // avm_lm2810_claswp_burstcount(GPOUT,206)
    assign avm_lm2810_claswp_burstcount = claswp_function_out_lm2810_claswp_avm_burstcount;

    // avm_lm2810_claswp_byteenable(GPOUT,207)
    assign avm_lm2810_claswp_byteenable = claswp_function_out_lm2810_claswp_avm_byteenable;

    // avm_lm2810_claswp_enable(GPOUT,208)
    assign avm_lm2810_claswp_enable = claswp_function_out_lm2810_claswp_avm_enable;

    // avm_lm2810_claswp_read(GPOUT,209)
    assign avm_lm2810_claswp_read = claswp_function_out_lm2810_claswp_avm_read;

    // avm_lm2810_claswp_write(GPOUT,210)
    assign avm_lm2810_claswp_write = claswp_function_out_lm2810_claswp_avm_write;

    // avm_lm2810_claswp_writedata(GPOUT,211)
    assign avm_lm2810_claswp_writedata = claswp_function_out_lm2810_claswp_avm_writedata;

    // avm_lm3213_claswp_address(GPOUT,212)
    assign avm_lm3213_claswp_address = claswp_function_out_lm3213_claswp_avm_address;

    // avm_lm3213_claswp_burstcount(GPOUT,213)
    assign avm_lm3213_claswp_burstcount = claswp_function_out_lm3213_claswp_avm_burstcount;

    // avm_lm3213_claswp_byteenable(GPOUT,214)
    assign avm_lm3213_claswp_byteenable = claswp_function_out_lm3213_claswp_avm_byteenable;

    // avm_lm3213_claswp_enable(GPOUT,215)
    assign avm_lm3213_claswp_enable = claswp_function_out_lm3213_claswp_avm_enable;

    // avm_lm3213_claswp_read(GPOUT,216)
    assign avm_lm3213_claswp_read = claswp_function_out_lm3213_claswp_avm_read;

    // avm_lm3213_claswp_write(GPOUT,217)
    assign avm_lm3213_claswp_write = claswp_function_out_lm3213_claswp_avm_write;

    // avm_lm3213_claswp_writedata(GPOUT,218)
    assign avm_lm3213_claswp_writedata = claswp_function_out_lm3213_claswp_avm_writedata;

    // avm_lm3414_claswp_address(GPOUT,219)
    assign avm_lm3414_claswp_address = claswp_function_out_lm3414_claswp_avm_address;

    // avm_lm3414_claswp_burstcount(GPOUT,220)
    assign avm_lm3414_claswp_burstcount = claswp_function_out_lm3414_claswp_avm_burstcount;

    // avm_lm3414_claswp_byteenable(GPOUT,221)
    assign avm_lm3414_claswp_byteenable = claswp_function_out_lm3414_claswp_avm_byteenable;

    // avm_lm3414_claswp_enable(GPOUT,222)
    assign avm_lm3414_claswp_enable = claswp_function_out_lm3414_claswp_avm_enable;

    // avm_lm3414_claswp_read(GPOUT,223)
    assign avm_lm3414_claswp_read = claswp_function_out_lm3414_claswp_avm_read;

    // avm_lm3414_claswp_write(GPOUT,224)
    assign avm_lm3414_claswp_write = claswp_function_out_lm3414_claswp_avm_write;

    // avm_lm3414_claswp_writedata(GPOUT,225)
    assign avm_lm3414_claswp_writedata = claswp_function_out_lm3414_claswp_avm_writedata;

    // avm_lm3615_claswp_address(GPOUT,226)
    assign avm_lm3615_claswp_address = claswp_function_out_lm3615_claswp_avm_address;

    // avm_lm3615_claswp_burstcount(GPOUT,227)
    assign avm_lm3615_claswp_burstcount = claswp_function_out_lm3615_claswp_avm_burstcount;

    // avm_lm3615_claswp_byteenable(GPOUT,228)
    assign avm_lm3615_claswp_byteenable = claswp_function_out_lm3615_claswp_avm_byteenable;

    // avm_lm3615_claswp_enable(GPOUT,229)
    assign avm_lm3615_claswp_enable = claswp_function_out_lm3615_claswp_avm_enable;

    // avm_lm3615_claswp_read(GPOUT,230)
    assign avm_lm3615_claswp_read = claswp_function_out_lm3615_claswp_avm_read;

    // avm_lm3615_claswp_write(GPOUT,231)
    assign avm_lm3615_claswp_write = claswp_function_out_lm3615_claswp_avm_write;

    // avm_lm3615_claswp_writedata(GPOUT,232)
    assign avm_lm3615_claswp_writedata = claswp_function_out_lm3615_claswp_avm_writedata;

    // avm_lm3816_claswp_address(GPOUT,233)
    assign avm_lm3816_claswp_address = claswp_function_out_lm3816_claswp_avm_address;

    // avm_lm3816_claswp_burstcount(GPOUT,234)
    assign avm_lm3816_claswp_burstcount = claswp_function_out_lm3816_claswp_avm_burstcount;

    // avm_lm3816_claswp_byteenable(GPOUT,235)
    assign avm_lm3816_claswp_byteenable = claswp_function_out_lm3816_claswp_avm_byteenable;

    // avm_lm3816_claswp_enable(GPOUT,236)
    assign avm_lm3816_claswp_enable = claswp_function_out_lm3816_claswp_avm_enable;

    // avm_lm3816_claswp_read(GPOUT,237)
    assign avm_lm3816_claswp_read = claswp_function_out_lm3816_claswp_avm_read;

    // avm_lm3816_claswp_write(GPOUT,238)
    assign avm_lm3816_claswp_write = claswp_function_out_lm3816_claswp_avm_write;

    // avm_lm3816_claswp_writedata(GPOUT,239)
    assign avm_lm3816_claswp_writedata = claswp_function_out_lm3816_claswp_avm_writedata;

    // avm_lm5619_claswp_address(GPOUT,240)
    assign avm_lm5619_claswp_address = claswp_function_out_lm5619_claswp_avm_address;

    // avm_lm5619_claswp_burstcount(GPOUT,241)
    assign avm_lm5619_claswp_burstcount = claswp_function_out_lm5619_claswp_avm_burstcount;

    // avm_lm5619_claswp_byteenable(GPOUT,242)
    assign avm_lm5619_claswp_byteenable = claswp_function_out_lm5619_claswp_avm_byteenable;

    // avm_lm5619_claswp_enable(GPOUT,243)
    assign avm_lm5619_claswp_enable = claswp_function_out_lm5619_claswp_avm_enable;

    // avm_lm5619_claswp_read(GPOUT,244)
    assign avm_lm5619_claswp_read = claswp_function_out_lm5619_claswp_avm_read;

    // avm_lm5619_claswp_write(GPOUT,245)
    assign avm_lm5619_claswp_write = claswp_function_out_lm5619_claswp_avm_write;

    // avm_lm5619_claswp_writedata(GPOUT,246)
    assign avm_lm5619_claswp_writedata = claswp_function_out_lm5619_claswp_avm_writedata;

    // avm_lm6118_claswp_address(GPOUT,247)
    assign avm_lm6118_claswp_address = claswp_function_out_lm6118_claswp_avm_address;

    // avm_lm6118_claswp_burstcount(GPOUT,248)
    assign avm_lm6118_claswp_burstcount = claswp_function_out_lm6118_claswp_avm_burstcount;

    // avm_lm6118_claswp_byteenable(GPOUT,249)
    assign avm_lm6118_claswp_byteenable = claswp_function_out_lm6118_claswp_avm_byteenable;

    // avm_lm6118_claswp_enable(GPOUT,250)
    assign avm_lm6118_claswp_enable = claswp_function_out_lm6118_claswp_avm_enable;

    // avm_lm6118_claswp_read(GPOUT,251)
    assign avm_lm6118_claswp_read = claswp_function_out_lm6118_claswp_avm_read;

    // avm_lm6118_claswp_write(GPOUT,252)
    assign avm_lm6118_claswp_write = claswp_function_out_lm6118_claswp_avm_write;

    // avm_lm6118_claswp_writedata(GPOUT,253)
    assign avm_lm6118_claswp_writedata = claswp_function_out_lm6118_claswp_avm_writedata;

    // avm_lm7_claswp_address(GPOUT,254)
    assign avm_lm7_claswp_address = claswp_function_out_lm7_claswp_avm_address;

    // avm_lm7_claswp_burstcount(GPOUT,255)
    assign avm_lm7_claswp_burstcount = claswp_function_out_lm7_claswp_avm_burstcount;

    // avm_lm7_claswp_byteenable(GPOUT,256)
    assign avm_lm7_claswp_byteenable = claswp_function_out_lm7_claswp_avm_byteenable;

    // avm_lm7_claswp_enable(GPOUT,257)
    assign avm_lm7_claswp_enable = claswp_function_out_lm7_claswp_avm_enable;

    // avm_lm7_claswp_read(GPOUT,258)
    assign avm_lm7_claswp_read = claswp_function_out_lm7_claswp_avm_read;

    // avm_lm7_claswp_write(GPOUT,259)
    assign avm_lm7_claswp_write = claswp_function_out_lm7_claswp_avm_write;

    // avm_lm7_claswp_writedata(GPOUT,260)
    assign avm_lm7_claswp_writedata = claswp_function_out_lm7_claswp_avm_writedata;

    // avm_lm8417_claswp_address(GPOUT,261)
    assign avm_lm8417_claswp_address = claswp_function_out_lm8417_claswp_avm_address;

    // avm_lm8417_claswp_burstcount(GPOUT,262)
    assign avm_lm8417_claswp_burstcount = claswp_function_out_lm8417_claswp_avm_burstcount;

    // avm_lm8417_claswp_byteenable(GPOUT,263)
    assign avm_lm8417_claswp_byteenable = claswp_function_out_lm8417_claswp_avm_byteenable;

    // avm_lm8417_claswp_enable(GPOUT,264)
    assign avm_lm8417_claswp_enable = claswp_function_out_lm8417_claswp_avm_enable;

    // avm_lm8417_claswp_read(GPOUT,265)
    assign avm_lm8417_claswp_read = claswp_function_out_lm8417_claswp_avm_read;

    // avm_lm8417_claswp_write(GPOUT,266)
    assign avm_lm8417_claswp_write = claswp_function_out_lm8417_claswp_avm_write;

    // avm_lm8417_claswp_writedata(GPOUT,267)
    assign avm_lm8417_claswp_writedata = claswp_function_out_lm8417_claswp_avm_writedata;

    // avm_memdep_102_claswp_address(GPOUT,268)
    assign avm_memdep_102_claswp_address = claswp_function_out_memdep_102_claswp_avm_address;

    // avm_memdep_102_claswp_burstcount(GPOUT,269)
    assign avm_memdep_102_claswp_burstcount = claswp_function_out_memdep_102_claswp_avm_burstcount;

    // avm_memdep_102_claswp_byteenable(GPOUT,270)
    assign avm_memdep_102_claswp_byteenable = claswp_function_out_memdep_102_claswp_avm_byteenable;

    // avm_memdep_102_claswp_enable(GPOUT,271)
    assign avm_memdep_102_claswp_enable = claswp_function_out_memdep_102_claswp_avm_enable;

    // avm_memdep_102_claswp_read(GPOUT,272)
    assign avm_memdep_102_claswp_read = claswp_function_out_memdep_102_claswp_avm_read;

    // avm_memdep_102_claswp_write(GPOUT,273)
    assign avm_memdep_102_claswp_write = claswp_function_out_memdep_102_claswp_avm_write;

    // avm_memdep_102_claswp_writedata(GPOUT,274)
    assign avm_memdep_102_claswp_writedata = claswp_function_out_memdep_102_claswp_avm_writedata;

    // avm_memdep_119_claswp_address(GPOUT,275)
    assign avm_memdep_119_claswp_address = claswp_function_out_memdep_119_claswp_avm_address;

    // avm_memdep_119_claswp_burstcount(GPOUT,276)
    assign avm_memdep_119_claswp_burstcount = claswp_function_out_memdep_119_claswp_avm_burstcount;

    // avm_memdep_119_claswp_byteenable(GPOUT,277)
    assign avm_memdep_119_claswp_byteenable = claswp_function_out_memdep_119_claswp_avm_byteenable;

    // avm_memdep_119_claswp_enable(GPOUT,278)
    assign avm_memdep_119_claswp_enable = claswp_function_out_memdep_119_claswp_avm_enable;

    // avm_memdep_119_claswp_read(GPOUT,279)
    assign avm_memdep_119_claswp_read = claswp_function_out_memdep_119_claswp_avm_read;

    // avm_memdep_119_claswp_write(GPOUT,280)
    assign avm_memdep_119_claswp_write = claswp_function_out_memdep_119_claswp_avm_write;

    // avm_memdep_119_claswp_writedata(GPOUT,281)
    assign avm_memdep_119_claswp_writedata = claswp_function_out_memdep_119_claswp_avm_writedata;

    // avm_memdep_31_claswp_address(GPOUT,282)
    assign avm_memdep_31_claswp_address = claswp_function_out_memdep_31_claswp_avm_address;

    // avm_memdep_31_claswp_burstcount(GPOUT,283)
    assign avm_memdep_31_claswp_burstcount = claswp_function_out_memdep_31_claswp_avm_burstcount;

    // avm_memdep_31_claswp_byteenable(GPOUT,284)
    assign avm_memdep_31_claswp_byteenable = claswp_function_out_memdep_31_claswp_avm_byteenable;

    // avm_memdep_31_claswp_enable(GPOUT,285)
    assign avm_memdep_31_claswp_enable = claswp_function_out_memdep_31_claswp_avm_enable;

    // avm_memdep_31_claswp_read(GPOUT,286)
    assign avm_memdep_31_claswp_read = claswp_function_out_memdep_31_claswp_avm_read;

    // avm_memdep_31_claswp_write(GPOUT,287)
    assign avm_memdep_31_claswp_write = claswp_function_out_memdep_31_claswp_avm_write;

    // avm_memdep_31_claswp_writedata(GPOUT,288)
    assign avm_memdep_31_claswp_writedata = claswp_function_out_memdep_31_claswp_avm_writedata;

    // avm_memdep_38_claswp_address(GPOUT,289)
    assign avm_memdep_38_claswp_address = claswp_function_out_memdep_38_claswp_avm_address;

    // avm_memdep_38_claswp_burstcount(GPOUT,290)
    assign avm_memdep_38_claswp_burstcount = claswp_function_out_memdep_38_claswp_avm_burstcount;

    // avm_memdep_38_claswp_byteenable(GPOUT,291)
    assign avm_memdep_38_claswp_byteenable = claswp_function_out_memdep_38_claswp_avm_byteenable;

    // avm_memdep_38_claswp_enable(GPOUT,292)
    assign avm_memdep_38_claswp_enable = claswp_function_out_memdep_38_claswp_avm_enable;

    // avm_memdep_38_claswp_read(GPOUT,293)
    assign avm_memdep_38_claswp_read = claswp_function_out_memdep_38_claswp_avm_read;

    // avm_memdep_38_claswp_write(GPOUT,294)
    assign avm_memdep_38_claswp_write = claswp_function_out_memdep_38_claswp_avm_write;

    // avm_memdep_38_claswp_writedata(GPOUT,295)
    assign avm_memdep_38_claswp_writedata = claswp_function_out_memdep_38_claswp_avm_writedata;

    // avm_memdep_46_claswp_address(GPOUT,296)
    assign avm_memdep_46_claswp_address = claswp_function_out_memdep_46_claswp_avm_address;

    // avm_memdep_46_claswp_burstcount(GPOUT,297)
    assign avm_memdep_46_claswp_burstcount = claswp_function_out_memdep_46_claswp_avm_burstcount;

    // avm_memdep_46_claswp_byteenable(GPOUT,298)
    assign avm_memdep_46_claswp_byteenable = claswp_function_out_memdep_46_claswp_avm_byteenable;

    // avm_memdep_46_claswp_enable(GPOUT,299)
    assign avm_memdep_46_claswp_enable = claswp_function_out_memdep_46_claswp_avm_enable;

    // avm_memdep_46_claswp_read(GPOUT,300)
    assign avm_memdep_46_claswp_read = claswp_function_out_memdep_46_claswp_avm_read;

    // avm_memdep_46_claswp_write(GPOUT,301)
    assign avm_memdep_46_claswp_write = claswp_function_out_memdep_46_claswp_avm_write;

    // avm_memdep_46_claswp_writedata(GPOUT,302)
    assign avm_memdep_46_claswp_writedata = claswp_function_out_memdep_46_claswp_avm_writedata;

    // avm_memdep_71_claswp_address(GPOUT,303)
    assign avm_memdep_71_claswp_address = claswp_function_out_memdep_71_claswp_avm_address;

    // avm_memdep_71_claswp_burstcount(GPOUT,304)
    assign avm_memdep_71_claswp_burstcount = claswp_function_out_memdep_71_claswp_avm_burstcount;

    // avm_memdep_71_claswp_byteenable(GPOUT,305)
    assign avm_memdep_71_claswp_byteenable = claswp_function_out_memdep_71_claswp_avm_byteenable;

    // avm_memdep_71_claswp_enable(GPOUT,306)
    assign avm_memdep_71_claswp_enable = claswp_function_out_memdep_71_claswp_avm_enable;

    // avm_memdep_71_claswp_read(GPOUT,307)
    assign avm_memdep_71_claswp_read = claswp_function_out_memdep_71_claswp_avm_read;

    // avm_memdep_71_claswp_write(GPOUT,308)
    assign avm_memdep_71_claswp_write = claswp_function_out_memdep_71_claswp_avm_write;

    // avm_memdep_71_claswp_writedata(GPOUT,309)
    assign avm_memdep_71_claswp_writedata = claswp_function_out_memdep_71_claswp_avm_writedata;

    // avm_memdep_87_claswp_address(GPOUT,310)
    assign avm_memdep_87_claswp_address = claswp_function_out_memdep_87_claswp_avm_address;

    // avm_memdep_87_claswp_burstcount(GPOUT,311)
    assign avm_memdep_87_claswp_burstcount = claswp_function_out_memdep_87_claswp_avm_burstcount;

    // avm_memdep_87_claswp_byteenable(GPOUT,312)
    assign avm_memdep_87_claswp_byteenable = claswp_function_out_memdep_87_claswp_avm_byteenable;

    // avm_memdep_87_claswp_enable(GPOUT,313)
    assign avm_memdep_87_claswp_enable = claswp_function_out_memdep_87_claswp_avm_enable;

    // avm_memdep_87_claswp_read(GPOUT,314)
    assign avm_memdep_87_claswp_read = claswp_function_out_memdep_87_claswp_avm_read;

    // avm_memdep_87_claswp_write(GPOUT,315)
    assign avm_memdep_87_claswp_write = claswp_function_out_memdep_87_claswp_avm_write;

    // avm_memdep_87_claswp_writedata(GPOUT,316)
    assign avm_memdep_87_claswp_writedata = claswp_function_out_memdep_87_claswp_avm_writedata;

    // avm_memdep_claswp_address(GPOUT,317)
    assign avm_memdep_claswp_address = claswp_function_out_memdep_claswp_avm_address;

    // avm_memdep_claswp_burstcount(GPOUT,318)
    assign avm_memdep_claswp_burstcount = claswp_function_out_memdep_claswp_avm_burstcount;

    // avm_memdep_claswp_byteenable(GPOUT,319)
    assign avm_memdep_claswp_byteenable = claswp_function_out_memdep_claswp_avm_byteenable;

    // avm_memdep_claswp_enable(GPOUT,320)
    assign avm_memdep_claswp_enable = claswp_function_out_memdep_claswp_avm_enable;

    // avm_memdep_claswp_read(GPOUT,321)
    assign avm_memdep_claswp_read = claswp_function_out_memdep_claswp_avm_read;

    // avm_memdep_claswp_write(GPOUT,322)
    assign avm_memdep_claswp_write = claswp_function_out_memdep_claswp_avm_write;

    // avm_memdep_claswp_writedata(GPOUT,323)
    assign avm_memdep_claswp_writedata = claswp_function_out_memdep_claswp_avm_writedata;

    // avm_storemerge1_lm3_claswp_address(GPOUT,324)
    assign avm_storemerge1_lm3_claswp_address = claswp_function_out_storemerge1_lm3_claswp_avm_address;

    // avm_storemerge1_lm3_claswp_burstcount(GPOUT,325)
    assign avm_storemerge1_lm3_claswp_burstcount = claswp_function_out_storemerge1_lm3_claswp_avm_burstcount;

    // avm_storemerge1_lm3_claswp_byteenable(GPOUT,326)
    assign avm_storemerge1_lm3_claswp_byteenable = claswp_function_out_storemerge1_lm3_claswp_avm_byteenable;

    // avm_storemerge1_lm3_claswp_enable(GPOUT,327)
    assign avm_storemerge1_lm3_claswp_enable = claswp_function_out_storemerge1_lm3_claswp_avm_enable;

    // avm_storemerge1_lm3_claswp_read(GPOUT,328)
    assign avm_storemerge1_lm3_claswp_read = claswp_function_out_storemerge1_lm3_claswp_avm_read;

    // avm_storemerge1_lm3_claswp_write(GPOUT,329)
    assign avm_storemerge1_lm3_claswp_write = claswp_function_out_storemerge1_lm3_claswp_avm_write;

    // avm_storemerge1_lm3_claswp_writedata(GPOUT,330)
    assign avm_storemerge1_lm3_claswp_writedata = claswp_function_out_storemerge1_lm3_claswp_avm_writedata;

    // avm_storemerge72_lm4_claswp_address(GPOUT,331)
    assign avm_storemerge72_lm4_claswp_address = claswp_function_out_storemerge72_lm4_claswp_avm_address;

    // avm_storemerge72_lm4_claswp_burstcount(GPOUT,332)
    assign avm_storemerge72_lm4_claswp_burstcount = claswp_function_out_storemerge72_lm4_claswp_avm_burstcount;

    // avm_storemerge72_lm4_claswp_byteenable(GPOUT,333)
    assign avm_storemerge72_lm4_claswp_byteenable = claswp_function_out_storemerge72_lm4_claswp_avm_byteenable;

    // avm_storemerge72_lm4_claswp_enable(GPOUT,334)
    assign avm_storemerge72_lm4_claswp_enable = claswp_function_out_storemerge72_lm4_claswp_avm_enable;

    // avm_storemerge72_lm4_claswp_read(GPOUT,335)
    assign avm_storemerge72_lm4_claswp_read = claswp_function_out_storemerge72_lm4_claswp_avm_read;

    // avm_storemerge72_lm4_claswp_write(GPOUT,336)
    assign avm_storemerge72_lm4_claswp_write = claswp_function_out_storemerge72_lm4_claswp_avm_write;

    // avm_storemerge72_lm4_claswp_writedata(GPOUT,337)
    assign avm_storemerge72_lm4_claswp_writedata = claswp_function_out_storemerge72_lm4_claswp_avm_writedata;

    // avm_unnamed_claswp3_claswp_address(GPOUT,338)
    assign avm_unnamed_claswp3_claswp_address = claswp_function_out_unnamed_claswp3_claswp_avm_address;

    // avm_unnamed_claswp3_claswp_burstcount(GPOUT,339)
    assign avm_unnamed_claswp3_claswp_burstcount = claswp_function_out_unnamed_claswp3_claswp_avm_burstcount;

    // avm_unnamed_claswp3_claswp_byteenable(GPOUT,340)
    assign avm_unnamed_claswp3_claswp_byteenable = claswp_function_out_unnamed_claswp3_claswp_avm_byteenable;

    // avm_unnamed_claswp3_claswp_enable(GPOUT,341)
    assign avm_unnamed_claswp3_claswp_enable = claswp_function_out_unnamed_claswp3_claswp_avm_enable;

    // avm_unnamed_claswp3_claswp_read(GPOUT,342)
    assign avm_unnamed_claswp3_claswp_read = claswp_function_out_unnamed_claswp3_claswp_avm_read;

    // avm_unnamed_claswp3_claswp_write(GPOUT,343)
    assign avm_unnamed_claswp3_claswp_write = claswp_function_out_unnamed_claswp3_claswp_avm_write;

    // avm_unnamed_claswp3_claswp_writedata(GPOUT,344)
    assign avm_unnamed_claswp3_claswp_writedata = claswp_function_out_unnamed_claswp3_claswp_avm_writedata;

    // avm_unnamed_claswp4_claswp_address(GPOUT,345)
    assign avm_unnamed_claswp4_claswp_address = claswp_function_out_unnamed_claswp4_claswp_avm_address;

    // avm_unnamed_claswp4_claswp_burstcount(GPOUT,346)
    assign avm_unnamed_claswp4_claswp_burstcount = claswp_function_out_unnamed_claswp4_claswp_avm_burstcount;

    // avm_unnamed_claswp4_claswp_byteenable(GPOUT,347)
    assign avm_unnamed_claswp4_claswp_byteenable = claswp_function_out_unnamed_claswp4_claswp_avm_byteenable;

    // avm_unnamed_claswp4_claswp_enable(GPOUT,348)
    assign avm_unnamed_claswp4_claswp_enable = claswp_function_out_unnamed_claswp4_claswp_avm_enable;

    // avm_unnamed_claswp4_claswp_read(GPOUT,349)
    assign avm_unnamed_claswp4_claswp_read = claswp_function_out_unnamed_claswp4_claswp_avm_read;

    // avm_unnamed_claswp4_claswp_write(GPOUT,350)
    assign avm_unnamed_claswp4_claswp_write = claswp_function_out_unnamed_claswp4_claswp_avm_write;

    // avm_unnamed_claswp4_claswp_writedata(GPOUT,351)
    assign avm_unnamed_claswp4_claswp_writedata = claswp_function_out_unnamed_claswp4_claswp_avm_writedata;

    // avst_iord_bl_call_claswp_ready(GPOUT,352)
    assign avst_iord_bl_call_claswp_ready = claswp_function_out_iord_bl_call_claswp_o_fifoready;

    // avst_iowr_bl_return_claswp_data(GPOUT,353)
    assign avst_iowr_bl_return_claswp_data = claswp_function_out_iowr_bl_return_claswp_o_fifodata;

    // avst_iowr_bl_return_claswp_valid(GPOUT,354)
    assign avst_iowr_bl_return_claswp_valid = claswp_function_out_iowr_bl_return_claswp_o_fifovalid;

    // not_ready(LOGICAL,147)
    assign not_ready_q = ~ (claswp_function_out_iord_bl_call_claswp_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,359)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,358)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,355)
    assign busy = busy_or_q;

    // done(GPOUT,356)
    assign done = claswp_function_out_iowr_bl_return_claswp_o_fifovalid;

    // returndata(GPOUT,357)
    assign returndata = claswp_function_out_iowr_bl_return_claswp_o_fifodata;

endmodule
