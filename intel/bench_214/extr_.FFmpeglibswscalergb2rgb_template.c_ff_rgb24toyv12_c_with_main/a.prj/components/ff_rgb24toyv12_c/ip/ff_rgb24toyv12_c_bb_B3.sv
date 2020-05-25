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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B3
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B3 (
    input wire [63:0] in_add_ptr348_0,
    input wire [63:0] in_add_ptr348_1,
    input wire [63:0] in_add_ptr73347_0,
    input wire [63:0] in_add_ptr73347_1,
    input wire [0:0] in_cmp75345_0,
    input wire [0:0] in_cmp75345_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked256_0,
    input wire [0:0] in_forked256_1,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [32:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_lm1_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm1_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm1_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm1_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm302_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm302_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm302_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm302_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm323_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm323_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm323_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm323_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm344_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm344_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm344_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm344_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm365_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm365_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm365_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm365_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm386_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm386_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm386_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm386_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm407_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm407_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm407_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm407_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm428_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm428_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm428_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm428_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_memdep_104_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_memdep_104_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_memdep_104_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_memdep_104_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_memdep_39_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_memdep_39_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_memdep_39_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_memdep_39_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_memdep_59_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_memdep_59_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_memdep_59_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_memdep_59_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_memdep_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_memdep_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_memdep_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_memdep_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_memdep_phi106_pop26360_0,
    input wire [0:0] in_memdep_phi106_pop26360_1,
    input wire [0:0] in_memdep_phi126_pop27361_0,
    input wire [0:0] in_memdep_phi126_pop27361_1,
    input wire [0:0] in_memdep_phi133_pop28362_0,
    input wire [0:0] in_memdep_phi133_pop28362_1,
    input wire [0:0] in_memdep_phi140_pop29363_0,
    input wire [0:0] in_memdep_phi140_pop29363_1,
    input wire [0:0] in_memdep_phi147_pop30364_0,
    input wire [0:0] in_memdep_phi147_pop30364_1,
    input wire [0:0] in_memdep_phi155_pop31365_0,
    input wire [0:0] in_memdep_phi155_pop31365_1,
    input wire [0:0] in_memdep_phi173_pop32366_0,
    input wire [0:0] in_memdep_phi173_pop32366_1,
    input wire [0:0] in_memdep_phi180_pop33367_0,
    input wire [0:0] in_memdep_phi180_pop33367_1,
    input wire [0:0] in_memdep_phi187_pop34368_0,
    input wire [0:0] in_memdep_phi187_pop34368_1,
    input wire [0:0] in_memdep_phi18_pop15349_0,
    input wire [0:0] in_memdep_phi18_pop15349_1,
    input wire [0:0] in_memdep_phi194_pop35369_0,
    input wire [0:0] in_memdep_phi194_pop35369_1,
    input wire [0:0] in_memdep_phi202_pop36370_0,
    input wire [0:0] in_memdep_phi202_pop36370_1,
    input wire [0:0] in_memdep_phi21_pop16350_0,
    input wire [0:0] in_memdep_phi21_pop16350_1,
    input wire [0:0] in_memdep_phi24_pop17351_0,
    input wire [0:0] in_memdep_phi24_pop17351_1,
    input wire [0:0] in_memdep_phi27_pop18352_0,
    input wire [0:0] in_memdep_phi27_pop18352_1,
    input wire [0:0] in_memdep_phi29_pop19353_0,
    input wire [0:0] in_memdep_phi29_pop19353_1,
    input wire [0:0] in_memdep_phi41_pop20354_0,
    input wire [0:0] in_memdep_phi41_pop20354_1,
    input wire [0:0] in_memdep_phi61_pop21355_0,
    input wire [0:0] in_memdep_phi61_pop21355_1,
    input wire [0:0] in_memdep_phi78_pop22356_0,
    input wire [0:0] in_memdep_phi78_pop22356_1,
    input wire [0:0] in_memdep_phi85_pop23357_0,
    input wire [0:0] in_memdep_phi85_pop23357_1,
    input wire [0:0] in_memdep_phi92_pop24358_0,
    input wire [0:0] in_memdep_phi92_pop24358_1,
    input wire [0:0] in_memdep_phi99_pop25359_0,
    input wire [0:0] in_memdep_phi99_pop25359_1,
    input wire [0:0] in_notcmp292346_0,
    input wire [0:0] in_notcmp292346_1,
    input wire [63:0] in_src_addr_0111_replace_phi341_0,
    input wire [63:0] in_src_addr_0111_replace_phi341_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_udst_addr_0109_replace_phi343_0,
    input wire [63:0] in_udst_addr_0109_replace_phi343_1,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c45_0,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c45_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_vdst_addr_0108_replace_phi344_0,
    input wire [63:0] in_vdst_addr_0108_replace_phi344_1,
    input wire [63:0] in_ydst_addr_0110_replace_phi342_0,
    input wire [63:0] in_ydst_addr_0110_replace_phi342_1,
    output wire [63:0] out_add_ptr309_pop60,
    output wire [63:0] out_add_ptr73307_pop59,
    output wire [0:0] out_cmp75304_pop56,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_lm1_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm1_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm1_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm1_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm1_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm1_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm1_ff_rgb24toyv12_c_avm_writedata,
    output wire [0:0] out_lm1_toi1_intcast17,
    output wire [63:0] out_lm302_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm302_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm302_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm302_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm302_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm302_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm302_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm323_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm323_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm323_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm323_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm323_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm323_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm323_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm344_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm344_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm344_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm344_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm344_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm344_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm344_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm365_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm365_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm365_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm365_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm365_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm365_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm365_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm386_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm386_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm386_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm386_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm386_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm386_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm386_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm407_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm407_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm407_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm407_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm407_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm407_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm407_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm428_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm428_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm428_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm428_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm428_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm428_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm428_ff_rgb24toyv12_c_avm_writedata,
    output wire [0:0] out_lsu_memdep_104_o_active,
    output wire [0:0] out_lsu_memdep_39_o_active,
    output wire [0:0] out_lsu_memdep_59_o_active,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_104_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_memdep_104_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_memdep_104_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_memdep_104_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_memdep_104_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_memdep_104_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_memdep_104_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_memdep_39_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_memdep_39_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_memdep_39_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_memdep_39_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_memdep_39_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_memdep_39_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_memdep_39_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_memdep_59_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_memdep_59_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_memdep_59_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_memdep_59_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_memdep_59_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_memdep_59_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_memdep_59_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_memdep_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_memdep_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_memdep_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_memdep_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_memdep_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_memdep_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_memdep_ff_rgb24toyv12_c_avm_writedata,
    output wire [0:0] out_memdep_phi126_pop27323_pop73,
    output wire [0:0] out_memdep_phi133_pop28325_pop74,
    output wire [0:0] out_memdep_phi140_pop29327_pop75,
    output wire [0:0] out_memdep_phi147_pop30329_pop76,
    output wire [0:0] out_memdep_phi155_pop31331_pop77,
    output wire [0:0] out_memdep_phi202_pop36337_pop82,
    output wire [0:0] out_notcmp292305_pop58,
    output wire [0:0] out_pop57,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_2,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_53,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_valid_out;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_add_ptr309_pop60;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_add_ptr73307_pop59;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_cmp75304_pop56;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_toi1_intcast17;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_104_o_active;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_39_o_active;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_59_o_active;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_masked278;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi126_pop27323_pop73;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi133_pop28325_pop74;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi140_pop29327_pop75;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi147_pop30329_pop76;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi155_pop31331_pop77;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi202_pop36337_pop82;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_notcmp292305_pop58;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_pop57;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_reduction_ff_rgb24toyv12_c_2;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_reduction_ff_rgb24toyv12_c_53;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B3_stall_region_out_valid_out;
    wire [63:0] ff_rgb24toyv12_c_B3_branch_out_add_ptr309_pop60;
    wire [63:0] ff_rgb24toyv12_c_B3_branch_out_add_ptr73307_pop59;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_cmp75304_pop56;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_lm1_toi1_intcast17;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_memdep_phi126_pop27323_pop73;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_memdep_phi133_pop28325_pop74;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_memdep_phi140_pop29327_pop75;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_memdep_phi147_pop30329_pop76;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_memdep_phi155_pop31331_pop77;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_memdep_phi202_pop36337_pop82;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_notcmp292305_pop58;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_pop57;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_reduction_ff_rgb24toyv12_c_2;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_reduction_ff_rgb24toyv12_c_53;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_valid_out_0;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_out_valid_out_1;
    wire [63:0] ff_rgb24toyv12_c_B3_merge_out_add_ptr348;
    wire [63:0] ff_rgb24toyv12_c_B3_merge_out_add_ptr73347;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_cmp75345;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_forked256;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi106_pop26360;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi126_pop27361;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi133_pop28362;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi140_pop29363;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi147_pop30364;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi155_pop31365;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi173_pop32366;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi180_pop33367;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi187_pop34368;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi18_pop15349;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi194_pop35369;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi202_pop36370;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi21_pop16350;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi24_pop17351;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi27_pop18352;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi29_pop19353;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi41_pop20354;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi61_pop21355;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi78_pop22356;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi85_pop23357;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi92_pop24358;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_memdep_phi99_pop25359;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_notcmp292346;
    wire [63:0] ff_rgb24toyv12_c_B3_merge_out_src_addr_0111_replace_phi341;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_stall_out_0;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_stall_out_1;
    wire [63:0] ff_rgb24toyv12_c_B3_merge_out_udst_addr_0109_replace_phi343;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_unnamed_ff_rgb24toyv12_c45;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_out_valid_out;
    wire [63:0] ff_rgb24toyv12_c_B3_merge_out_vdst_addr_0108_replace_phi344;
    wire [63:0] ff_rgb24toyv12_c_B3_merge_out_ydst_addr_0110_replace_phi342;


    // ff_rgb24toyv12_c_B3_merge(BLACKBOX,4)
    ff_rgb24toyv12_c_B3_merge theff_rgb24toyv12_c_B3_merge (
        .in_add_ptr348_0(in_add_ptr348_0),
        .in_add_ptr348_1(in_add_ptr348_1),
        .in_add_ptr73347_0(in_add_ptr73347_0),
        .in_add_ptr73347_1(in_add_ptr73347_1),
        .in_cmp75345_0(in_cmp75345_0),
        .in_cmp75345_1(in_cmp75345_1),
        .in_forked256_0(in_forked256_0),
        .in_forked256_1(in_forked256_1),
        .in_memdep_phi106_pop26360_0(in_memdep_phi106_pop26360_0),
        .in_memdep_phi106_pop26360_1(in_memdep_phi106_pop26360_1),
        .in_memdep_phi126_pop27361_0(in_memdep_phi126_pop27361_0),
        .in_memdep_phi126_pop27361_1(in_memdep_phi126_pop27361_1),
        .in_memdep_phi133_pop28362_0(in_memdep_phi133_pop28362_0),
        .in_memdep_phi133_pop28362_1(in_memdep_phi133_pop28362_1),
        .in_memdep_phi140_pop29363_0(in_memdep_phi140_pop29363_0),
        .in_memdep_phi140_pop29363_1(in_memdep_phi140_pop29363_1),
        .in_memdep_phi147_pop30364_0(in_memdep_phi147_pop30364_0),
        .in_memdep_phi147_pop30364_1(in_memdep_phi147_pop30364_1),
        .in_memdep_phi155_pop31365_0(in_memdep_phi155_pop31365_0),
        .in_memdep_phi155_pop31365_1(in_memdep_phi155_pop31365_1),
        .in_memdep_phi173_pop32366_0(in_memdep_phi173_pop32366_0),
        .in_memdep_phi173_pop32366_1(in_memdep_phi173_pop32366_1),
        .in_memdep_phi180_pop33367_0(in_memdep_phi180_pop33367_0),
        .in_memdep_phi180_pop33367_1(in_memdep_phi180_pop33367_1),
        .in_memdep_phi187_pop34368_0(in_memdep_phi187_pop34368_0),
        .in_memdep_phi187_pop34368_1(in_memdep_phi187_pop34368_1),
        .in_memdep_phi18_pop15349_0(in_memdep_phi18_pop15349_0),
        .in_memdep_phi18_pop15349_1(in_memdep_phi18_pop15349_1),
        .in_memdep_phi194_pop35369_0(in_memdep_phi194_pop35369_0),
        .in_memdep_phi194_pop35369_1(in_memdep_phi194_pop35369_1),
        .in_memdep_phi202_pop36370_0(in_memdep_phi202_pop36370_0),
        .in_memdep_phi202_pop36370_1(in_memdep_phi202_pop36370_1),
        .in_memdep_phi21_pop16350_0(in_memdep_phi21_pop16350_0),
        .in_memdep_phi21_pop16350_1(in_memdep_phi21_pop16350_1),
        .in_memdep_phi24_pop17351_0(in_memdep_phi24_pop17351_0),
        .in_memdep_phi24_pop17351_1(in_memdep_phi24_pop17351_1),
        .in_memdep_phi27_pop18352_0(in_memdep_phi27_pop18352_0),
        .in_memdep_phi27_pop18352_1(in_memdep_phi27_pop18352_1),
        .in_memdep_phi29_pop19353_0(in_memdep_phi29_pop19353_0),
        .in_memdep_phi29_pop19353_1(in_memdep_phi29_pop19353_1),
        .in_memdep_phi41_pop20354_0(in_memdep_phi41_pop20354_0),
        .in_memdep_phi41_pop20354_1(in_memdep_phi41_pop20354_1),
        .in_memdep_phi61_pop21355_0(in_memdep_phi61_pop21355_0),
        .in_memdep_phi61_pop21355_1(in_memdep_phi61_pop21355_1),
        .in_memdep_phi78_pop22356_0(in_memdep_phi78_pop22356_0),
        .in_memdep_phi78_pop22356_1(in_memdep_phi78_pop22356_1),
        .in_memdep_phi85_pop23357_0(in_memdep_phi85_pop23357_0),
        .in_memdep_phi85_pop23357_1(in_memdep_phi85_pop23357_1),
        .in_memdep_phi92_pop24358_0(in_memdep_phi92_pop24358_0),
        .in_memdep_phi92_pop24358_1(in_memdep_phi92_pop24358_1),
        .in_memdep_phi99_pop25359_0(in_memdep_phi99_pop25359_0),
        .in_memdep_phi99_pop25359_1(in_memdep_phi99_pop25359_1),
        .in_notcmp292346_0(in_notcmp292346_0),
        .in_notcmp292346_1(in_notcmp292346_1),
        .in_src_addr_0111_replace_phi341_0(in_src_addr_0111_replace_phi341_0),
        .in_src_addr_0111_replace_phi341_1(in_src_addr_0111_replace_phi341_1),
        .in_stall_in(bb_ff_rgb24toyv12_c_B3_stall_region_out_stall_out),
        .in_udst_addr_0109_replace_phi343_0(in_udst_addr_0109_replace_phi343_0),
        .in_udst_addr_0109_replace_phi343_1(in_udst_addr_0109_replace_phi343_1),
        .in_unnamed_ff_rgb24toyv12_c45_0(in_unnamed_ff_rgb24toyv12_c45_0),
        .in_unnamed_ff_rgb24toyv12_c45_1(in_unnamed_ff_rgb24toyv12_c45_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .in_vdst_addr_0108_replace_phi344_0(in_vdst_addr_0108_replace_phi344_0),
        .in_vdst_addr_0108_replace_phi344_1(in_vdst_addr_0108_replace_phi344_1),
        .in_ydst_addr_0110_replace_phi342_0(in_ydst_addr_0110_replace_phi342_0),
        .in_ydst_addr_0110_replace_phi342_1(in_ydst_addr_0110_replace_phi342_1),
        .out_add_ptr348(ff_rgb24toyv12_c_B3_merge_out_add_ptr348),
        .out_add_ptr73347(ff_rgb24toyv12_c_B3_merge_out_add_ptr73347),
        .out_cmp75345(ff_rgb24toyv12_c_B3_merge_out_cmp75345),
        .out_forked256(ff_rgb24toyv12_c_B3_merge_out_forked256),
        .out_memdep_phi106_pop26360(ff_rgb24toyv12_c_B3_merge_out_memdep_phi106_pop26360),
        .out_memdep_phi126_pop27361(ff_rgb24toyv12_c_B3_merge_out_memdep_phi126_pop27361),
        .out_memdep_phi133_pop28362(ff_rgb24toyv12_c_B3_merge_out_memdep_phi133_pop28362),
        .out_memdep_phi140_pop29363(ff_rgb24toyv12_c_B3_merge_out_memdep_phi140_pop29363),
        .out_memdep_phi147_pop30364(ff_rgb24toyv12_c_B3_merge_out_memdep_phi147_pop30364),
        .out_memdep_phi155_pop31365(ff_rgb24toyv12_c_B3_merge_out_memdep_phi155_pop31365),
        .out_memdep_phi173_pop32366(ff_rgb24toyv12_c_B3_merge_out_memdep_phi173_pop32366),
        .out_memdep_phi180_pop33367(ff_rgb24toyv12_c_B3_merge_out_memdep_phi180_pop33367),
        .out_memdep_phi187_pop34368(ff_rgb24toyv12_c_B3_merge_out_memdep_phi187_pop34368),
        .out_memdep_phi18_pop15349(ff_rgb24toyv12_c_B3_merge_out_memdep_phi18_pop15349),
        .out_memdep_phi194_pop35369(ff_rgb24toyv12_c_B3_merge_out_memdep_phi194_pop35369),
        .out_memdep_phi202_pop36370(ff_rgb24toyv12_c_B3_merge_out_memdep_phi202_pop36370),
        .out_memdep_phi21_pop16350(ff_rgb24toyv12_c_B3_merge_out_memdep_phi21_pop16350),
        .out_memdep_phi24_pop17351(ff_rgb24toyv12_c_B3_merge_out_memdep_phi24_pop17351),
        .out_memdep_phi27_pop18352(ff_rgb24toyv12_c_B3_merge_out_memdep_phi27_pop18352),
        .out_memdep_phi29_pop19353(ff_rgb24toyv12_c_B3_merge_out_memdep_phi29_pop19353),
        .out_memdep_phi41_pop20354(ff_rgb24toyv12_c_B3_merge_out_memdep_phi41_pop20354),
        .out_memdep_phi61_pop21355(ff_rgb24toyv12_c_B3_merge_out_memdep_phi61_pop21355),
        .out_memdep_phi78_pop22356(ff_rgb24toyv12_c_B3_merge_out_memdep_phi78_pop22356),
        .out_memdep_phi85_pop23357(ff_rgb24toyv12_c_B3_merge_out_memdep_phi85_pop23357),
        .out_memdep_phi92_pop24358(ff_rgb24toyv12_c_B3_merge_out_memdep_phi92_pop24358),
        .out_memdep_phi99_pop25359(ff_rgb24toyv12_c_B3_merge_out_memdep_phi99_pop25359),
        .out_notcmp292346(ff_rgb24toyv12_c_B3_merge_out_notcmp292346),
        .out_src_addr_0111_replace_phi341(ff_rgb24toyv12_c_B3_merge_out_src_addr_0111_replace_phi341),
        .out_stall_out_0(ff_rgb24toyv12_c_B3_merge_out_stall_out_0),
        .out_stall_out_1(ff_rgb24toyv12_c_B3_merge_out_stall_out_1),
        .out_udst_addr_0109_replace_phi343(ff_rgb24toyv12_c_B3_merge_out_udst_addr_0109_replace_phi343),
        .out_unnamed_ff_rgb24toyv12_c45(ff_rgb24toyv12_c_B3_merge_out_unnamed_ff_rgb24toyv12_c45),
        .out_valid_out(ff_rgb24toyv12_c_B3_merge_out_valid_out),
        .out_vdst_addr_0108_replace_phi344(ff_rgb24toyv12_c_B3_merge_out_vdst_addr_0108_replace_phi344),
        .out_ydst_addr_0110_replace_phi342(ff_rgb24toyv12_c_B3_merge_out_ydst_addr_0110_replace_phi342),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_rgb24toyv12_c_B3_stall_region(BLACKBOX,2)
    ff_rgb24toyv12_c_bb_B3_stall_region thebb_ff_rgb24toyv12_c_B3_stall_region (
        .in_add_ptr348(ff_rgb24toyv12_c_B3_merge_out_add_ptr348),
        .in_add_ptr73347(ff_rgb24toyv12_c_B3_merge_out_add_ptr73347),
        .in_cmp75345(ff_rgb24toyv12_c_B3_merge_out_cmp75345),
        .in_flush(in_flush),
        .in_forked256(ff_rgb24toyv12_c_B3_merge_out_forked256),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm1_ff_rgb24toyv12_c_avm_readdata(in_lm1_ff_rgb24toyv12_c_avm_readdata),
        .in_lm1_ff_rgb24toyv12_c_avm_readdatavalid(in_lm1_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm1_ff_rgb24toyv12_c_avm_waitrequest(in_lm1_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm1_ff_rgb24toyv12_c_avm_writeack(in_lm1_ff_rgb24toyv12_c_avm_writeack),
        .in_lm302_ff_rgb24toyv12_c_avm_readdata(in_lm302_ff_rgb24toyv12_c_avm_readdata),
        .in_lm302_ff_rgb24toyv12_c_avm_readdatavalid(in_lm302_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm302_ff_rgb24toyv12_c_avm_waitrequest(in_lm302_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm302_ff_rgb24toyv12_c_avm_writeack(in_lm302_ff_rgb24toyv12_c_avm_writeack),
        .in_lm323_ff_rgb24toyv12_c_avm_readdata(in_lm323_ff_rgb24toyv12_c_avm_readdata),
        .in_lm323_ff_rgb24toyv12_c_avm_readdatavalid(in_lm323_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm323_ff_rgb24toyv12_c_avm_waitrequest(in_lm323_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm323_ff_rgb24toyv12_c_avm_writeack(in_lm323_ff_rgb24toyv12_c_avm_writeack),
        .in_lm344_ff_rgb24toyv12_c_avm_readdata(in_lm344_ff_rgb24toyv12_c_avm_readdata),
        .in_lm344_ff_rgb24toyv12_c_avm_readdatavalid(in_lm344_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm344_ff_rgb24toyv12_c_avm_waitrequest(in_lm344_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm344_ff_rgb24toyv12_c_avm_writeack(in_lm344_ff_rgb24toyv12_c_avm_writeack),
        .in_lm365_ff_rgb24toyv12_c_avm_readdata(in_lm365_ff_rgb24toyv12_c_avm_readdata),
        .in_lm365_ff_rgb24toyv12_c_avm_readdatavalid(in_lm365_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm365_ff_rgb24toyv12_c_avm_waitrequest(in_lm365_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm365_ff_rgb24toyv12_c_avm_writeack(in_lm365_ff_rgb24toyv12_c_avm_writeack),
        .in_lm386_ff_rgb24toyv12_c_avm_readdata(in_lm386_ff_rgb24toyv12_c_avm_readdata),
        .in_lm386_ff_rgb24toyv12_c_avm_readdatavalid(in_lm386_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm386_ff_rgb24toyv12_c_avm_waitrequest(in_lm386_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm386_ff_rgb24toyv12_c_avm_writeack(in_lm386_ff_rgb24toyv12_c_avm_writeack),
        .in_lm407_ff_rgb24toyv12_c_avm_readdata(in_lm407_ff_rgb24toyv12_c_avm_readdata),
        .in_lm407_ff_rgb24toyv12_c_avm_readdatavalid(in_lm407_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm407_ff_rgb24toyv12_c_avm_waitrequest(in_lm407_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm407_ff_rgb24toyv12_c_avm_writeack(in_lm407_ff_rgb24toyv12_c_avm_writeack),
        .in_lm428_ff_rgb24toyv12_c_avm_readdata(in_lm428_ff_rgb24toyv12_c_avm_readdata),
        .in_lm428_ff_rgb24toyv12_c_avm_readdatavalid(in_lm428_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm428_ff_rgb24toyv12_c_avm_waitrequest(in_lm428_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm428_ff_rgb24toyv12_c_avm_writeack(in_lm428_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_104_ff_rgb24toyv12_c_avm_readdata(in_memdep_104_ff_rgb24toyv12_c_avm_readdata),
        .in_memdep_104_ff_rgb24toyv12_c_avm_readdatavalid(in_memdep_104_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_memdep_104_ff_rgb24toyv12_c_avm_waitrequest(in_memdep_104_ff_rgb24toyv12_c_avm_waitrequest),
        .in_memdep_104_ff_rgb24toyv12_c_avm_writeack(in_memdep_104_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_39_ff_rgb24toyv12_c_avm_readdata(in_memdep_39_ff_rgb24toyv12_c_avm_readdata),
        .in_memdep_39_ff_rgb24toyv12_c_avm_readdatavalid(in_memdep_39_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_memdep_39_ff_rgb24toyv12_c_avm_waitrequest(in_memdep_39_ff_rgb24toyv12_c_avm_waitrequest),
        .in_memdep_39_ff_rgb24toyv12_c_avm_writeack(in_memdep_39_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_59_ff_rgb24toyv12_c_avm_readdata(in_memdep_59_ff_rgb24toyv12_c_avm_readdata),
        .in_memdep_59_ff_rgb24toyv12_c_avm_readdatavalid(in_memdep_59_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_memdep_59_ff_rgb24toyv12_c_avm_waitrequest(in_memdep_59_ff_rgb24toyv12_c_avm_waitrequest),
        .in_memdep_59_ff_rgb24toyv12_c_avm_writeack(in_memdep_59_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_ff_rgb24toyv12_c_avm_readdata(in_memdep_ff_rgb24toyv12_c_avm_readdata),
        .in_memdep_ff_rgb24toyv12_c_avm_readdatavalid(in_memdep_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_memdep_ff_rgb24toyv12_c_avm_waitrequest(in_memdep_ff_rgb24toyv12_c_avm_waitrequest),
        .in_memdep_ff_rgb24toyv12_c_avm_writeack(in_memdep_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_phi106_pop26360(ff_rgb24toyv12_c_B3_merge_out_memdep_phi106_pop26360),
        .in_memdep_phi126_pop27361(ff_rgb24toyv12_c_B3_merge_out_memdep_phi126_pop27361),
        .in_memdep_phi133_pop28362(ff_rgb24toyv12_c_B3_merge_out_memdep_phi133_pop28362),
        .in_memdep_phi140_pop29363(ff_rgb24toyv12_c_B3_merge_out_memdep_phi140_pop29363),
        .in_memdep_phi147_pop30364(ff_rgb24toyv12_c_B3_merge_out_memdep_phi147_pop30364),
        .in_memdep_phi155_pop31365(ff_rgb24toyv12_c_B3_merge_out_memdep_phi155_pop31365),
        .in_memdep_phi173_pop32366(ff_rgb24toyv12_c_B3_merge_out_memdep_phi173_pop32366),
        .in_memdep_phi180_pop33367(ff_rgb24toyv12_c_B3_merge_out_memdep_phi180_pop33367),
        .in_memdep_phi187_pop34368(ff_rgb24toyv12_c_B3_merge_out_memdep_phi187_pop34368),
        .in_memdep_phi18_pop15349(ff_rgb24toyv12_c_B3_merge_out_memdep_phi18_pop15349),
        .in_memdep_phi194_pop35369(ff_rgb24toyv12_c_B3_merge_out_memdep_phi194_pop35369),
        .in_memdep_phi202_pop36370(ff_rgb24toyv12_c_B3_merge_out_memdep_phi202_pop36370),
        .in_memdep_phi21_pop16350(ff_rgb24toyv12_c_B3_merge_out_memdep_phi21_pop16350),
        .in_memdep_phi24_pop17351(ff_rgb24toyv12_c_B3_merge_out_memdep_phi24_pop17351),
        .in_memdep_phi27_pop18352(ff_rgb24toyv12_c_B3_merge_out_memdep_phi27_pop18352),
        .in_memdep_phi29_pop19353(ff_rgb24toyv12_c_B3_merge_out_memdep_phi29_pop19353),
        .in_memdep_phi41_pop20354(ff_rgb24toyv12_c_B3_merge_out_memdep_phi41_pop20354),
        .in_memdep_phi61_pop21355(ff_rgb24toyv12_c_B3_merge_out_memdep_phi61_pop21355),
        .in_memdep_phi78_pop22356(ff_rgb24toyv12_c_B3_merge_out_memdep_phi78_pop22356),
        .in_memdep_phi85_pop23357(ff_rgb24toyv12_c_B3_merge_out_memdep_phi85_pop23357),
        .in_memdep_phi92_pop24358(ff_rgb24toyv12_c_B3_merge_out_memdep_phi92_pop24358),
        .in_memdep_phi99_pop25359(ff_rgb24toyv12_c_B3_merge_out_memdep_phi99_pop25359),
        .in_notcmp292346(ff_rgb24toyv12_c_B3_merge_out_notcmp292346),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_src_addr_0111_replace_phi341(ff_rgb24toyv12_c_B3_merge_out_src_addr_0111_replace_phi341),
        .in_stall_in(ff_rgb24toyv12_c_B3_branch_out_stall_out),
        .in_udst_addr_0109_replace_phi343(ff_rgb24toyv12_c_B3_merge_out_udst_addr_0109_replace_phi343),
        .in_unnamed_ff_rgb24toyv12_c45(ff_rgb24toyv12_c_B3_merge_out_unnamed_ff_rgb24toyv12_c45),
        .in_valid_in(ff_rgb24toyv12_c_B3_merge_out_valid_out),
        .in_vdst_addr_0108_replace_phi344(ff_rgb24toyv12_c_B3_merge_out_vdst_addr_0108_replace_phi344),
        .in_ydst_addr_0110_replace_phi342(ff_rgb24toyv12_c_B3_merge_out_ydst_addr_0110_replace_phi342),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_stall_out(bb_ff_rgb24toyv12_c_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_valid_out(bb_ff_rgb24toyv12_c_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_valid_out),
        .out_add_ptr309_pop60(bb_ff_rgb24toyv12_c_B3_stall_region_out_add_ptr309_pop60),
        .out_add_ptr73307_pop59(bb_ff_rgb24toyv12_c_B3_stall_region_out_add_ptr73307_pop59),
        .out_cmp75304_pop56(bb_ff_rgb24toyv12_c_B3_stall_region_out_cmp75304_pop56),
        .out_lm1_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_address),
        .out_lm1_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm1_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm1_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_enable),
        .out_lm1_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_read),
        .out_lm1_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_write),
        .out_lm1_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_writedata),
        .out_lm1_toi1_intcast17(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_toi1_intcast17),
        .out_lm302_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_address),
        .out_lm302_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm302_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm302_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_enable),
        .out_lm302_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_read),
        .out_lm302_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_write),
        .out_lm302_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_writedata),
        .out_lm323_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_address),
        .out_lm323_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm323_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm323_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_enable),
        .out_lm323_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_read),
        .out_lm323_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_write),
        .out_lm323_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_writedata),
        .out_lm344_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_address),
        .out_lm344_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm344_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm344_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_enable),
        .out_lm344_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_read),
        .out_lm344_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_write),
        .out_lm344_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_writedata),
        .out_lm365_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_address),
        .out_lm365_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm365_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm365_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_enable),
        .out_lm365_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_read),
        .out_lm365_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_write),
        .out_lm365_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_writedata),
        .out_lm386_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_address),
        .out_lm386_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm386_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm386_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_enable),
        .out_lm386_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_read),
        .out_lm386_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_write),
        .out_lm386_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_writedata),
        .out_lm407_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_address),
        .out_lm407_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm407_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm407_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_enable),
        .out_lm407_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_read),
        .out_lm407_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_write),
        .out_lm407_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_writedata),
        .out_lm428_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_address),
        .out_lm428_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm428_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm428_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_enable),
        .out_lm428_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_read),
        .out_lm428_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_write),
        .out_lm428_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_writedata),
        .out_lsu_memdep_104_o_active(bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_104_o_active),
        .out_lsu_memdep_39_o_active(bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_39_o_active),
        .out_lsu_memdep_59_o_active(bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_59_o_active),
        .out_lsu_memdep_o_active(bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_o_active),
        .out_masked278(bb_ff_rgb24toyv12_c_B3_stall_region_out_masked278),
        .out_memdep_104_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_address),
        .out_memdep_104_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_104_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_104_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_104_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_read),
        .out_memdep_104_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_write),
        .out_memdep_104_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_39_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_address),
        .out_memdep_39_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_39_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_39_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_39_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_read),
        .out_memdep_39_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_write),
        .out_memdep_39_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_59_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_address),
        .out_memdep_59_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_59_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_59_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_59_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_read),
        .out_memdep_59_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_write),
        .out_memdep_59_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_address),
        .out_memdep_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_read),
        .out_memdep_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_write),
        .out_memdep_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_phi126_pop27323_pop73(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi126_pop27323_pop73),
        .out_memdep_phi133_pop28325_pop74(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi133_pop28325_pop74),
        .out_memdep_phi140_pop29327_pop75(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi140_pop29327_pop75),
        .out_memdep_phi147_pop30329_pop76(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi147_pop30329_pop76),
        .out_memdep_phi155_pop31331_pop77(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi155_pop31331_pop77),
        .out_memdep_phi202_pop36337_pop82(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi202_pop36337_pop82),
        .out_notcmp292305_pop58(bb_ff_rgb24toyv12_c_B3_stall_region_out_notcmp292305_pop58),
        .out_pipeline_valid_out(bb_ff_rgb24toyv12_c_B3_stall_region_out_pipeline_valid_out),
        .out_pop57(bb_ff_rgb24toyv12_c_B3_stall_region_out_pop57),
        .out_reduction_ff_rgb24toyv12_c_2(bb_ff_rgb24toyv12_c_B3_stall_region_out_reduction_ff_rgb24toyv12_c_2),
        .out_reduction_ff_rgb24toyv12_c_53(bb_ff_rgb24toyv12_c_B3_stall_region_out_reduction_ff_rgb24toyv12_c_53),
        .out_stall_out(bb_ff_rgb24toyv12_c_B3_stall_region_out_stall_out),
        .out_valid_out(bb_ff_rgb24toyv12_c_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_rgb24toyv12_c_B3_branch(BLACKBOX,3)
    ff_rgb24toyv12_c_B3_branch theff_rgb24toyv12_c_B3_branch (
        .in_add_ptr309_pop60(bb_ff_rgb24toyv12_c_B3_stall_region_out_add_ptr309_pop60),
        .in_add_ptr73307_pop59(bb_ff_rgb24toyv12_c_B3_stall_region_out_add_ptr73307_pop59),
        .in_cmp75304_pop56(bb_ff_rgb24toyv12_c_B3_stall_region_out_cmp75304_pop56),
        .in_lm1_toi1_intcast17(bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_toi1_intcast17),
        .in_masked278(bb_ff_rgb24toyv12_c_B3_stall_region_out_masked278),
        .in_memdep_phi126_pop27323_pop73(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi126_pop27323_pop73),
        .in_memdep_phi133_pop28325_pop74(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi133_pop28325_pop74),
        .in_memdep_phi140_pop29327_pop75(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi140_pop29327_pop75),
        .in_memdep_phi147_pop30329_pop76(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi147_pop30329_pop76),
        .in_memdep_phi155_pop31331_pop77(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi155_pop31331_pop77),
        .in_memdep_phi202_pop36337_pop82(bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_phi202_pop36337_pop82),
        .in_notcmp292305_pop58(bb_ff_rgb24toyv12_c_B3_stall_region_out_notcmp292305_pop58),
        .in_pop57(bb_ff_rgb24toyv12_c_B3_stall_region_out_pop57),
        .in_reduction_ff_rgb24toyv12_c_2(bb_ff_rgb24toyv12_c_B3_stall_region_out_reduction_ff_rgb24toyv12_c_2),
        .in_reduction_ff_rgb24toyv12_c_53(bb_ff_rgb24toyv12_c_B3_stall_region_out_reduction_ff_rgb24toyv12_c_53),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_ff_rgb24toyv12_c_B3_stall_region_out_valid_out),
        .out_add_ptr309_pop60(ff_rgb24toyv12_c_B3_branch_out_add_ptr309_pop60),
        .out_add_ptr73307_pop59(ff_rgb24toyv12_c_B3_branch_out_add_ptr73307_pop59),
        .out_cmp75304_pop56(ff_rgb24toyv12_c_B3_branch_out_cmp75304_pop56),
        .out_lm1_toi1_intcast17(ff_rgb24toyv12_c_B3_branch_out_lm1_toi1_intcast17),
        .out_memdep_phi126_pop27323_pop73(ff_rgb24toyv12_c_B3_branch_out_memdep_phi126_pop27323_pop73),
        .out_memdep_phi133_pop28325_pop74(ff_rgb24toyv12_c_B3_branch_out_memdep_phi133_pop28325_pop74),
        .out_memdep_phi140_pop29327_pop75(ff_rgb24toyv12_c_B3_branch_out_memdep_phi140_pop29327_pop75),
        .out_memdep_phi147_pop30329_pop76(ff_rgb24toyv12_c_B3_branch_out_memdep_phi147_pop30329_pop76),
        .out_memdep_phi155_pop31331_pop77(ff_rgb24toyv12_c_B3_branch_out_memdep_phi155_pop31331_pop77),
        .out_memdep_phi202_pop36337_pop82(ff_rgb24toyv12_c_B3_branch_out_memdep_phi202_pop36337_pop82),
        .out_notcmp292305_pop58(ff_rgb24toyv12_c_B3_branch_out_notcmp292305_pop58),
        .out_pop57(ff_rgb24toyv12_c_B3_branch_out_pop57),
        .out_reduction_ff_rgb24toyv12_c_2(ff_rgb24toyv12_c_B3_branch_out_reduction_ff_rgb24toyv12_c_2),
        .out_reduction_ff_rgb24toyv12_c_53(ff_rgb24toyv12_c_B3_branch_out_reduction_ff_rgb24toyv12_c_53),
        .out_stall_out(ff_rgb24toyv12_c_B3_branch_out_stall_out),
        .out_valid_out_0(ff_rgb24toyv12_c_B3_branch_out_valid_out_0),
        .out_valid_out_1(ff_rgb24toyv12_c_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add_ptr309_pop60(GPOUT,134)
    assign out_add_ptr309_pop60 = ff_rgb24toyv12_c_B3_branch_out_add_ptr309_pop60;

    // out_add_ptr73307_pop59(GPOUT,135)
    assign out_add_ptr73307_pop59 = ff_rgb24toyv12_c_B3_branch_out_add_ptr73307_pop59;

    // out_cmp75304_pop56(GPOUT,136)
    assign out_cmp75304_pop56 = ff_rgb24toyv12_c_B3_branch_out_cmp75304_pop56;

    // out_exiting_stall_out(GPOUT,137)
    assign out_exiting_stall_out = bb_ff_rgb24toyv12_c_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,138)
    assign out_exiting_valid_out = bb_ff_rgb24toyv12_c_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going269_ff_rgb24toyv12_c4_exiting_valid_out;

    // out_lm1_ff_rgb24toyv12_c_avm_address(GPOUT,139)
    assign out_lm1_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_address;

    // out_lm1_ff_rgb24toyv12_c_avm_burstcount(GPOUT,140)
    assign out_lm1_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm1_ff_rgb24toyv12_c_avm_byteenable(GPOUT,141)
    assign out_lm1_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm1_ff_rgb24toyv12_c_avm_enable(GPOUT,142)
    assign out_lm1_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_enable;

    // out_lm1_ff_rgb24toyv12_c_avm_read(GPOUT,143)
    assign out_lm1_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_read;

    // out_lm1_ff_rgb24toyv12_c_avm_write(GPOUT,144)
    assign out_lm1_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_write;

    // out_lm1_ff_rgb24toyv12_c_avm_writedata(GPOUT,145)
    assign out_lm1_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm1_ff_rgb24toyv12_c_avm_writedata;

    // out_lm1_toi1_intcast17(GPOUT,146)
    assign out_lm1_toi1_intcast17 = ff_rgb24toyv12_c_B3_branch_out_lm1_toi1_intcast17;

    // out_lm302_ff_rgb24toyv12_c_avm_address(GPOUT,147)
    assign out_lm302_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_address;

    // out_lm302_ff_rgb24toyv12_c_avm_burstcount(GPOUT,148)
    assign out_lm302_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm302_ff_rgb24toyv12_c_avm_byteenable(GPOUT,149)
    assign out_lm302_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm302_ff_rgb24toyv12_c_avm_enable(GPOUT,150)
    assign out_lm302_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_enable;

    // out_lm302_ff_rgb24toyv12_c_avm_read(GPOUT,151)
    assign out_lm302_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_read;

    // out_lm302_ff_rgb24toyv12_c_avm_write(GPOUT,152)
    assign out_lm302_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_write;

    // out_lm302_ff_rgb24toyv12_c_avm_writedata(GPOUT,153)
    assign out_lm302_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm302_ff_rgb24toyv12_c_avm_writedata;

    // out_lm323_ff_rgb24toyv12_c_avm_address(GPOUT,154)
    assign out_lm323_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_address;

    // out_lm323_ff_rgb24toyv12_c_avm_burstcount(GPOUT,155)
    assign out_lm323_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm323_ff_rgb24toyv12_c_avm_byteenable(GPOUT,156)
    assign out_lm323_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm323_ff_rgb24toyv12_c_avm_enable(GPOUT,157)
    assign out_lm323_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_enable;

    // out_lm323_ff_rgb24toyv12_c_avm_read(GPOUT,158)
    assign out_lm323_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_read;

    // out_lm323_ff_rgb24toyv12_c_avm_write(GPOUT,159)
    assign out_lm323_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_write;

    // out_lm323_ff_rgb24toyv12_c_avm_writedata(GPOUT,160)
    assign out_lm323_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm323_ff_rgb24toyv12_c_avm_writedata;

    // out_lm344_ff_rgb24toyv12_c_avm_address(GPOUT,161)
    assign out_lm344_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_address;

    // out_lm344_ff_rgb24toyv12_c_avm_burstcount(GPOUT,162)
    assign out_lm344_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm344_ff_rgb24toyv12_c_avm_byteenable(GPOUT,163)
    assign out_lm344_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm344_ff_rgb24toyv12_c_avm_enable(GPOUT,164)
    assign out_lm344_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_enable;

    // out_lm344_ff_rgb24toyv12_c_avm_read(GPOUT,165)
    assign out_lm344_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_read;

    // out_lm344_ff_rgb24toyv12_c_avm_write(GPOUT,166)
    assign out_lm344_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_write;

    // out_lm344_ff_rgb24toyv12_c_avm_writedata(GPOUT,167)
    assign out_lm344_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm344_ff_rgb24toyv12_c_avm_writedata;

    // out_lm365_ff_rgb24toyv12_c_avm_address(GPOUT,168)
    assign out_lm365_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_address;

    // out_lm365_ff_rgb24toyv12_c_avm_burstcount(GPOUT,169)
    assign out_lm365_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm365_ff_rgb24toyv12_c_avm_byteenable(GPOUT,170)
    assign out_lm365_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm365_ff_rgb24toyv12_c_avm_enable(GPOUT,171)
    assign out_lm365_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_enable;

    // out_lm365_ff_rgb24toyv12_c_avm_read(GPOUT,172)
    assign out_lm365_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_read;

    // out_lm365_ff_rgb24toyv12_c_avm_write(GPOUT,173)
    assign out_lm365_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_write;

    // out_lm365_ff_rgb24toyv12_c_avm_writedata(GPOUT,174)
    assign out_lm365_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm365_ff_rgb24toyv12_c_avm_writedata;

    // out_lm386_ff_rgb24toyv12_c_avm_address(GPOUT,175)
    assign out_lm386_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_address;

    // out_lm386_ff_rgb24toyv12_c_avm_burstcount(GPOUT,176)
    assign out_lm386_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm386_ff_rgb24toyv12_c_avm_byteenable(GPOUT,177)
    assign out_lm386_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm386_ff_rgb24toyv12_c_avm_enable(GPOUT,178)
    assign out_lm386_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_enable;

    // out_lm386_ff_rgb24toyv12_c_avm_read(GPOUT,179)
    assign out_lm386_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_read;

    // out_lm386_ff_rgb24toyv12_c_avm_write(GPOUT,180)
    assign out_lm386_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_write;

    // out_lm386_ff_rgb24toyv12_c_avm_writedata(GPOUT,181)
    assign out_lm386_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm386_ff_rgb24toyv12_c_avm_writedata;

    // out_lm407_ff_rgb24toyv12_c_avm_address(GPOUT,182)
    assign out_lm407_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_address;

    // out_lm407_ff_rgb24toyv12_c_avm_burstcount(GPOUT,183)
    assign out_lm407_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm407_ff_rgb24toyv12_c_avm_byteenable(GPOUT,184)
    assign out_lm407_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm407_ff_rgb24toyv12_c_avm_enable(GPOUT,185)
    assign out_lm407_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_enable;

    // out_lm407_ff_rgb24toyv12_c_avm_read(GPOUT,186)
    assign out_lm407_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_read;

    // out_lm407_ff_rgb24toyv12_c_avm_write(GPOUT,187)
    assign out_lm407_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_write;

    // out_lm407_ff_rgb24toyv12_c_avm_writedata(GPOUT,188)
    assign out_lm407_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm407_ff_rgb24toyv12_c_avm_writedata;

    // out_lm428_ff_rgb24toyv12_c_avm_address(GPOUT,189)
    assign out_lm428_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_address;

    // out_lm428_ff_rgb24toyv12_c_avm_burstcount(GPOUT,190)
    assign out_lm428_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm428_ff_rgb24toyv12_c_avm_byteenable(GPOUT,191)
    assign out_lm428_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm428_ff_rgb24toyv12_c_avm_enable(GPOUT,192)
    assign out_lm428_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_enable;

    // out_lm428_ff_rgb24toyv12_c_avm_read(GPOUT,193)
    assign out_lm428_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_read;

    // out_lm428_ff_rgb24toyv12_c_avm_write(GPOUT,194)
    assign out_lm428_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_write;

    // out_lm428_ff_rgb24toyv12_c_avm_writedata(GPOUT,195)
    assign out_lm428_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_lm428_ff_rgb24toyv12_c_avm_writedata;

    // out_lsu_memdep_104_o_active(GPOUT,196)
    assign out_lsu_memdep_104_o_active = bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_104_o_active;

    // out_lsu_memdep_39_o_active(GPOUT,197)
    assign out_lsu_memdep_39_o_active = bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_39_o_active;

    // out_lsu_memdep_59_o_active(GPOUT,198)
    assign out_lsu_memdep_59_o_active = bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_59_o_active;

    // out_lsu_memdep_o_active(GPOUT,199)
    assign out_lsu_memdep_o_active = bb_ff_rgb24toyv12_c_B3_stall_region_out_lsu_memdep_o_active;

    // out_memdep_104_ff_rgb24toyv12_c_avm_address(GPOUT,200)
    assign out_memdep_104_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_address;

    // out_memdep_104_ff_rgb24toyv12_c_avm_burstcount(GPOUT,201)
    assign out_memdep_104_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_burstcount;

    // out_memdep_104_ff_rgb24toyv12_c_avm_byteenable(GPOUT,202)
    assign out_memdep_104_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_byteenable;

    // out_memdep_104_ff_rgb24toyv12_c_avm_enable(GPOUT,203)
    assign out_memdep_104_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_enable;

    // out_memdep_104_ff_rgb24toyv12_c_avm_read(GPOUT,204)
    assign out_memdep_104_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_read;

    // out_memdep_104_ff_rgb24toyv12_c_avm_write(GPOUT,205)
    assign out_memdep_104_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_write;

    // out_memdep_104_ff_rgb24toyv12_c_avm_writedata(GPOUT,206)
    assign out_memdep_104_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_104_ff_rgb24toyv12_c_avm_writedata;

    // out_memdep_39_ff_rgb24toyv12_c_avm_address(GPOUT,207)
    assign out_memdep_39_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_address;

    // out_memdep_39_ff_rgb24toyv12_c_avm_burstcount(GPOUT,208)
    assign out_memdep_39_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_burstcount;

    // out_memdep_39_ff_rgb24toyv12_c_avm_byteenable(GPOUT,209)
    assign out_memdep_39_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_byteenable;

    // out_memdep_39_ff_rgb24toyv12_c_avm_enable(GPOUT,210)
    assign out_memdep_39_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_enable;

    // out_memdep_39_ff_rgb24toyv12_c_avm_read(GPOUT,211)
    assign out_memdep_39_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_read;

    // out_memdep_39_ff_rgb24toyv12_c_avm_write(GPOUT,212)
    assign out_memdep_39_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_write;

    // out_memdep_39_ff_rgb24toyv12_c_avm_writedata(GPOUT,213)
    assign out_memdep_39_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_39_ff_rgb24toyv12_c_avm_writedata;

    // out_memdep_59_ff_rgb24toyv12_c_avm_address(GPOUT,214)
    assign out_memdep_59_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_address;

    // out_memdep_59_ff_rgb24toyv12_c_avm_burstcount(GPOUT,215)
    assign out_memdep_59_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_burstcount;

    // out_memdep_59_ff_rgb24toyv12_c_avm_byteenable(GPOUT,216)
    assign out_memdep_59_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_byteenable;

    // out_memdep_59_ff_rgb24toyv12_c_avm_enable(GPOUT,217)
    assign out_memdep_59_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_enable;

    // out_memdep_59_ff_rgb24toyv12_c_avm_read(GPOUT,218)
    assign out_memdep_59_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_read;

    // out_memdep_59_ff_rgb24toyv12_c_avm_write(GPOUT,219)
    assign out_memdep_59_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_write;

    // out_memdep_59_ff_rgb24toyv12_c_avm_writedata(GPOUT,220)
    assign out_memdep_59_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_59_ff_rgb24toyv12_c_avm_writedata;

    // out_memdep_ff_rgb24toyv12_c_avm_address(GPOUT,221)
    assign out_memdep_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_address;

    // out_memdep_ff_rgb24toyv12_c_avm_burstcount(GPOUT,222)
    assign out_memdep_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_burstcount;

    // out_memdep_ff_rgb24toyv12_c_avm_byteenable(GPOUT,223)
    assign out_memdep_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_byteenable;

    // out_memdep_ff_rgb24toyv12_c_avm_enable(GPOUT,224)
    assign out_memdep_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_enable;

    // out_memdep_ff_rgb24toyv12_c_avm_read(GPOUT,225)
    assign out_memdep_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_read;

    // out_memdep_ff_rgb24toyv12_c_avm_write(GPOUT,226)
    assign out_memdep_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_write;

    // out_memdep_ff_rgb24toyv12_c_avm_writedata(GPOUT,227)
    assign out_memdep_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B3_stall_region_out_memdep_ff_rgb24toyv12_c_avm_writedata;

    // out_memdep_phi126_pop27323_pop73(GPOUT,228)
    assign out_memdep_phi126_pop27323_pop73 = ff_rgb24toyv12_c_B3_branch_out_memdep_phi126_pop27323_pop73;

    // out_memdep_phi133_pop28325_pop74(GPOUT,229)
    assign out_memdep_phi133_pop28325_pop74 = ff_rgb24toyv12_c_B3_branch_out_memdep_phi133_pop28325_pop74;

    // out_memdep_phi140_pop29327_pop75(GPOUT,230)
    assign out_memdep_phi140_pop29327_pop75 = ff_rgb24toyv12_c_B3_branch_out_memdep_phi140_pop29327_pop75;

    // out_memdep_phi147_pop30329_pop76(GPOUT,231)
    assign out_memdep_phi147_pop30329_pop76 = ff_rgb24toyv12_c_B3_branch_out_memdep_phi147_pop30329_pop76;

    // out_memdep_phi155_pop31331_pop77(GPOUT,232)
    assign out_memdep_phi155_pop31331_pop77 = ff_rgb24toyv12_c_B3_branch_out_memdep_phi155_pop31331_pop77;

    // out_memdep_phi202_pop36337_pop82(GPOUT,233)
    assign out_memdep_phi202_pop36337_pop82 = ff_rgb24toyv12_c_B3_branch_out_memdep_phi202_pop36337_pop82;

    // out_notcmp292305_pop58(GPOUT,234)
    assign out_notcmp292305_pop58 = ff_rgb24toyv12_c_B3_branch_out_notcmp292305_pop58;

    // out_pop57(GPOUT,235)
    assign out_pop57 = ff_rgb24toyv12_c_B3_branch_out_pop57;

    // out_reduction_ff_rgb24toyv12_c_2(GPOUT,236)
    assign out_reduction_ff_rgb24toyv12_c_2 = ff_rgb24toyv12_c_B3_branch_out_reduction_ff_rgb24toyv12_c_2;

    // out_reduction_ff_rgb24toyv12_c_53(GPOUT,237)
    assign out_reduction_ff_rgb24toyv12_c_53 = ff_rgb24toyv12_c_B3_branch_out_reduction_ff_rgb24toyv12_c_53;

    // out_stall_out_0(GPOUT,238)
    assign out_stall_out_0 = ff_rgb24toyv12_c_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,239)
    assign out_stall_out_1 = ff_rgb24toyv12_c_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,240)
    assign out_valid_out_0 = ff_rgb24toyv12_c_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,241)
    assign out_valid_out_1 = ff_rgb24toyv12_c_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,243)
    assign out_pipeline_valid_out = bb_ff_rgb24toyv12_c_B3_stall_region_out_pipeline_valid_out;

endmodule
