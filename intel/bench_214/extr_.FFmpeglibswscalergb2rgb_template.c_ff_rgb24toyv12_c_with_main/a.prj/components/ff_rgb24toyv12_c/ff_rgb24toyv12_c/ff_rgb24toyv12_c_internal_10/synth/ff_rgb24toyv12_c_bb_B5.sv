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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B5
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B5 (
    input wire [63:0] in_add_ptr309_pop60406_0,
    input wire [63:0] in_add_ptr309_pop60406_1,
    input wire [63:0] in_add_ptr73307_pop59404_0,
    input wire [63:0] in_add_ptr73307_pop59404_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked255_0,
    input wire [0:0] in_forked255_1,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_lm539_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm539_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm539_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm539_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm5510_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm5510_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm5510_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm5510_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm5711_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm5711_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm5711_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm5711_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm5912_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm5912_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm5912_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm5912_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm6113_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm6113_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm6113_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm6113_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm6314_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm6314_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm6314_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm6314_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm6515_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm6515_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm6515_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm6515_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_lm6716_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_lm6716_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_lm6716_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_lm6716_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_memdep_154_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_memdep_154_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_memdep_154_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_memdep_154_ff_rgb24toyv12_c_avm_writeack,
    input wire [63:0] in_memdep_201_ff_rgb24toyv12_c_avm_readdata,
    input wire [0:0] in_memdep_201_ff_rgb24toyv12_c_avm_readdatavalid,
    input wire [0:0] in_memdep_201_ff_rgb24toyv12_c_avm_waitrequest,
    input wire [0:0] in_memdep_201_ff_rgb24toyv12_c_avm_writeack,
    input wire [0:0] in_memdep_phi126_pop27323_pop73381_0,
    input wire [0:0] in_memdep_phi126_pop27323_pop73381_1,
    input wire [0:0] in_memdep_phi133_pop28325_pop74383_0,
    input wire [0:0] in_memdep_phi133_pop28325_pop74383_1,
    input wire [0:0] in_memdep_phi140_pop29327_pop75385_0,
    input wire [0:0] in_memdep_phi140_pop29327_pop75385_1,
    input wire [0:0] in_memdep_phi147_pop30329_pop76387_0,
    input wire [0:0] in_memdep_phi147_pop30329_pop76387_1,
    input wire [0:0] in_memdep_phi155_pop31331_pop77371_0,
    input wire [0:0] in_memdep_phi155_pop31331_pop77371_1,
    input wire [0:0] in_memdep_phi202_pop36337_pop82373_0,
    input wire [0:0] in_memdep_phi202_pop36337_pop82373_1,
    input wire [0:0] in_notcmp292305_pop58402_0,
    input wire [0:0] in_notcmp292305_pop58402_1,
    input wire [0:0] in_pop57400_0,
    input wire [0:0] in_pop57400_1,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_2375_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_2375_1,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_53389_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_53389_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c62_0,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c62_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_lm539_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm539_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm539_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm539_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm539_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm539_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm539_ff_rgb24toyv12_c_avm_writedata,
    output wire [0:0] out_lm539_toi1_intcast130,
    output wire [63:0] out_lm5510_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm5510_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm5510_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm5510_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm5510_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm5510_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm5510_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm5711_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm5711_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm5711_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm5711_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm5711_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm5711_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm5711_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm5912_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm5912_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm5912_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm5912_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm5912_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm5912_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm5912_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm6113_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm6113_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm6113_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm6113_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm6113_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm6113_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm6113_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm6314_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm6314_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm6314_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm6314_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm6314_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm6314_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm6314_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm6515_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm6515_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm6515_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm6515_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm6515_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm6515_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm6515_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_lm6716_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_lm6716_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_lm6716_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_lm6716_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_lm6716_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_lm6716_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_lm6716_ff_rgb24toyv12_c_avm_writedata,
    output wire [0:0] out_lsu_memdep_154_o_active,
    output wire [0:0] out_lsu_memdep_201_o_active,
    output wire [63:0] out_memdep_154_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_memdep_154_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_memdep_154_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_memdep_154_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_memdep_154_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_memdep_154_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_memdep_154_ff_rgb24toyv12_c_avm_writedata,
    output wire [63:0] out_memdep_201_ff_rgb24toyv12_c_avm_address,
    output wire [0:0] out_memdep_201_ff_rgb24toyv12_c_avm_burstcount,
    output wire [7:0] out_memdep_201_ff_rgb24toyv12_c_avm_byteenable,
    output wire [0:0] out_memdep_201_ff_rgb24toyv12_c_avm_enable,
    output wire [0:0] out_memdep_201_ff_rgb24toyv12_c_avm_read,
    output wire [0:0] out_memdep_201_ff_rgb24toyv12_c_avm_write,
    output wire [63:0] out_memdep_201_ff_rgb24toyv12_c_avm_writedata,
    output wire [0:0] out_notcmp292306_pop97,
    output wire [0:0] out_pop96,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_valid_out;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_toi1_intcast130;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lsu_memdep_154_o_active;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_lsu_memdep_201_o_active;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_masked;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_writedata;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_address;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_burstcount;
    wire [7:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_byteenable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_enable;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_read;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_write;
    wire [63:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_writedata;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_notcmp292306_pop97;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_pop96;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B5_stall_region_out_valid_out;
    wire [0:0] ff_rgb24toyv12_c_B5_branch_out_lm539_toi1_intcast130;
    wire [0:0] ff_rgb24toyv12_c_B5_branch_out_notcmp292306_pop97;
    wire [0:0] ff_rgb24toyv12_c_B5_branch_out_pop96;
    wire [0:0] ff_rgb24toyv12_c_B5_branch_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B5_branch_out_valid_out_0;
    wire [0:0] ff_rgb24toyv12_c_B5_branch_out_valid_out_1;
    wire [63:0] ff_rgb24toyv12_c_B5_merge_out_add_ptr309_pop60406;
    wire [63:0] ff_rgb24toyv12_c_B5_merge_out_add_ptr73307_pop59404;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_forked255;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_memdep_phi126_pop27323_pop73381;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_memdep_phi133_pop28325_pop74383;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_memdep_phi140_pop29327_pop75385;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_memdep_phi147_pop30329_pop76387;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_memdep_phi155_pop31331_pop77371;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_memdep_phi202_pop36337_pop82373;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_notcmp292305_pop58402;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_pop57400;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_reduction_ff_rgb24toyv12_c_2375;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_reduction_ff_rgb24toyv12_c_53389;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_stall_out_0;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_stall_out_1;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_unnamed_ff_rgb24toyv12_c62;
    wire [0:0] ff_rgb24toyv12_c_B5_merge_out_valid_out;


    // ff_rgb24toyv12_c_B5_branch(BLACKBOX,3)
    ff_rgb24toyv12_c_B5_branch theff_rgb24toyv12_c_B5_branch (
        .in_lm539_toi1_intcast130(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_toi1_intcast130),
        .in_masked(bb_ff_rgb24toyv12_c_B5_stall_region_out_masked),
        .in_notcmp292306_pop97(bb_ff_rgb24toyv12_c_B5_stall_region_out_notcmp292306_pop97),
        .in_pop96(bb_ff_rgb24toyv12_c_B5_stall_region_out_pop96),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_ff_rgb24toyv12_c_B5_stall_region_out_valid_out),
        .out_lm539_toi1_intcast130(ff_rgb24toyv12_c_B5_branch_out_lm539_toi1_intcast130),
        .out_notcmp292306_pop97(ff_rgb24toyv12_c_B5_branch_out_notcmp292306_pop97),
        .out_pop96(ff_rgb24toyv12_c_B5_branch_out_pop96),
        .out_stall_out(ff_rgb24toyv12_c_B5_branch_out_stall_out),
        .out_valid_out_0(ff_rgb24toyv12_c_B5_branch_out_valid_out_0),
        .out_valid_out_1(ff_rgb24toyv12_c_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_rgb24toyv12_c_B5_merge(BLACKBOX,4)
    ff_rgb24toyv12_c_B5_merge theff_rgb24toyv12_c_B5_merge (
        .in_add_ptr309_pop60406_0(in_add_ptr309_pop60406_0),
        .in_add_ptr309_pop60406_1(in_add_ptr309_pop60406_1),
        .in_add_ptr73307_pop59404_0(in_add_ptr73307_pop59404_0),
        .in_add_ptr73307_pop59404_1(in_add_ptr73307_pop59404_1),
        .in_forked255_0(in_forked255_0),
        .in_forked255_1(in_forked255_1),
        .in_memdep_phi126_pop27323_pop73381_0(in_memdep_phi126_pop27323_pop73381_0),
        .in_memdep_phi126_pop27323_pop73381_1(in_memdep_phi126_pop27323_pop73381_1),
        .in_memdep_phi133_pop28325_pop74383_0(in_memdep_phi133_pop28325_pop74383_0),
        .in_memdep_phi133_pop28325_pop74383_1(in_memdep_phi133_pop28325_pop74383_1),
        .in_memdep_phi140_pop29327_pop75385_0(in_memdep_phi140_pop29327_pop75385_0),
        .in_memdep_phi140_pop29327_pop75385_1(in_memdep_phi140_pop29327_pop75385_1),
        .in_memdep_phi147_pop30329_pop76387_0(in_memdep_phi147_pop30329_pop76387_0),
        .in_memdep_phi147_pop30329_pop76387_1(in_memdep_phi147_pop30329_pop76387_1),
        .in_memdep_phi155_pop31331_pop77371_0(in_memdep_phi155_pop31331_pop77371_0),
        .in_memdep_phi155_pop31331_pop77371_1(in_memdep_phi155_pop31331_pop77371_1),
        .in_memdep_phi202_pop36337_pop82373_0(in_memdep_phi202_pop36337_pop82373_0),
        .in_memdep_phi202_pop36337_pop82373_1(in_memdep_phi202_pop36337_pop82373_1),
        .in_notcmp292305_pop58402_0(in_notcmp292305_pop58402_0),
        .in_notcmp292305_pop58402_1(in_notcmp292305_pop58402_1),
        .in_pop57400_0(in_pop57400_0),
        .in_pop57400_1(in_pop57400_1),
        .in_reduction_ff_rgb24toyv12_c_2375_0(in_reduction_ff_rgb24toyv12_c_2375_0),
        .in_reduction_ff_rgb24toyv12_c_2375_1(in_reduction_ff_rgb24toyv12_c_2375_1),
        .in_reduction_ff_rgb24toyv12_c_53389_0(in_reduction_ff_rgb24toyv12_c_53389_0),
        .in_reduction_ff_rgb24toyv12_c_53389_1(in_reduction_ff_rgb24toyv12_c_53389_1),
        .in_stall_in(bb_ff_rgb24toyv12_c_B5_stall_region_out_stall_out),
        .in_unnamed_ff_rgb24toyv12_c62_0(in_unnamed_ff_rgb24toyv12_c62_0),
        .in_unnamed_ff_rgb24toyv12_c62_1(in_unnamed_ff_rgb24toyv12_c62_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add_ptr309_pop60406(ff_rgb24toyv12_c_B5_merge_out_add_ptr309_pop60406),
        .out_add_ptr73307_pop59404(ff_rgb24toyv12_c_B5_merge_out_add_ptr73307_pop59404),
        .out_forked255(ff_rgb24toyv12_c_B5_merge_out_forked255),
        .out_memdep_phi126_pop27323_pop73381(ff_rgb24toyv12_c_B5_merge_out_memdep_phi126_pop27323_pop73381),
        .out_memdep_phi133_pop28325_pop74383(ff_rgb24toyv12_c_B5_merge_out_memdep_phi133_pop28325_pop74383),
        .out_memdep_phi140_pop29327_pop75385(ff_rgb24toyv12_c_B5_merge_out_memdep_phi140_pop29327_pop75385),
        .out_memdep_phi147_pop30329_pop76387(ff_rgb24toyv12_c_B5_merge_out_memdep_phi147_pop30329_pop76387),
        .out_memdep_phi155_pop31331_pop77371(ff_rgb24toyv12_c_B5_merge_out_memdep_phi155_pop31331_pop77371),
        .out_memdep_phi202_pop36337_pop82373(ff_rgb24toyv12_c_B5_merge_out_memdep_phi202_pop36337_pop82373),
        .out_notcmp292305_pop58402(ff_rgb24toyv12_c_B5_merge_out_notcmp292305_pop58402),
        .out_pop57400(ff_rgb24toyv12_c_B5_merge_out_pop57400),
        .out_reduction_ff_rgb24toyv12_c_2375(ff_rgb24toyv12_c_B5_merge_out_reduction_ff_rgb24toyv12_c_2375),
        .out_reduction_ff_rgb24toyv12_c_53389(ff_rgb24toyv12_c_B5_merge_out_reduction_ff_rgb24toyv12_c_53389),
        .out_stall_out_0(ff_rgb24toyv12_c_B5_merge_out_stall_out_0),
        .out_stall_out_1(ff_rgb24toyv12_c_B5_merge_out_stall_out_1),
        .out_unnamed_ff_rgb24toyv12_c62(ff_rgb24toyv12_c_B5_merge_out_unnamed_ff_rgb24toyv12_c62),
        .out_valid_out(ff_rgb24toyv12_c_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_rgb24toyv12_c_B5_stall_region(BLACKBOX,2)
    ff_rgb24toyv12_c_bb_B5_stall_region thebb_ff_rgb24toyv12_c_B5_stall_region (
        .in_add_ptr309_pop60406(ff_rgb24toyv12_c_B5_merge_out_add_ptr309_pop60406),
        .in_add_ptr73307_pop59404(ff_rgb24toyv12_c_B5_merge_out_add_ptr73307_pop59404),
        .in_flush(in_flush),
        .in_forked255(ff_rgb24toyv12_c_B5_merge_out_forked255),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_lm539_ff_rgb24toyv12_c_avm_readdata(in_lm539_ff_rgb24toyv12_c_avm_readdata),
        .in_lm539_ff_rgb24toyv12_c_avm_readdatavalid(in_lm539_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm539_ff_rgb24toyv12_c_avm_waitrequest(in_lm539_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm539_ff_rgb24toyv12_c_avm_writeack(in_lm539_ff_rgb24toyv12_c_avm_writeack),
        .in_lm5510_ff_rgb24toyv12_c_avm_readdata(in_lm5510_ff_rgb24toyv12_c_avm_readdata),
        .in_lm5510_ff_rgb24toyv12_c_avm_readdatavalid(in_lm5510_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm5510_ff_rgb24toyv12_c_avm_waitrequest(in_lm5510_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm5510_ff_rgb24toyv12_c_avm_writeack(in_lm5510_ff_rgb24toyv12_c_avm_writeack),
        .in_lm5711_ff_rgb24toyv12_c_avm_readdata(in_lm5711_ff_rgb24toyv12_c_avm_readdata),
        .in_lm5711_ff_rgb24toyv12_c_avm_readdatavalid(in_lm5711_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm5711_ff_rgb24toyv12_c_avm_waitrequest(in_lm5711_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm5711_ff_rgb24toyv12_c_avm_writeack(in_lm5711_ff_rgb24toyv12_c_avm_writeack),
        .in_lm5912_ff_rgb24toyv12_c_avm_readdata(in_lm5912_ff_rgb24toyv12_c_avm_readdata),
        .in_lm5912_ff_rgb24toyv12_c_avm_readdatavalid(in_lm5912_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm5912_ff_rgb24toyv12_c_avm_waitrequest(in_lm5912_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm5912_ff_rgb24toyv12_c_avm_writeack(in_lm5912_ff_rgb24toyv12_c_avm_writeack),
        .in_lm6113_ff_rgb24toyv12_c_avm_readdata(in_lm6113_ff_rgb24toyv12_c_avm_readdata),
        .in_lm6113_ff_rgb24toyv12_c_avm_readdatavalid(in_lm6113_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm6113_ff_rgb24toyv12_c_avm_waitrequest(in_lm6113_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm6113_ff_rgb24toyv12_c_avm_writeack(in_lm6113_ff_rgb24toyv12_c_avm_writeack),
        .in_lm6314_ff_rgb24toyv12_c_avm_readdata(in_lm6314_ff_rgb24toyv12_c_avm_readdata),
        .in_lm6314_ff_rgb24toyv12_c_avm_readdatavalid(in_lm6314_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm6314_ff_rgb24toyv12_c_avm_waitrequest(in_lm6314_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm6314_ff_rgb24toyv12_c_avm_writeack(in_lm6314_ff_rgb24toyv12_c_avm_writeack),
        .in_lm6515_ff_rgb24toyv12_c_avm_readdata(in_lm6515_ff_rgb24toyv12_c_avm_readdata),
        .in_lm6515_ff_rgb24toyv12_c_avm_readdatavalid(in_lm6515_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm6515_ff_rgb24toyv12_c_avm_waitrequest(in_lm6515_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm6515_ff_rgb24toyv12_c_avm_writeack(in_lm6515_ff_rgb24toyv12_c_avm_writeack),
        .in_lm6716_ff_rgb24toyv12_c_avm_readdata(in_lm6716_ff_rgb24toyv12_c_avm_readdata),
        .in_lm6716_ff_rgb24toyv12_c_avm_readdatavalid(in_lm6716_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_lm6716_ff_rgb24toyv12_c_avm_waitrequest(in_lm6716_ff_rgb24toyv12_c_avm_waitrequest),
        .in_lm6716_ff_rgb24toyv12_c_avm_writeack(in_lm6716_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_154_ff_rgb24toyv12_c_avm_readdata(in_memdep_154_ff_rgb24toyv12_c_avm_readdata),
        .in_memdep_154_ff_rgb24toyv12_c_avm_readdatavalid(in_memdep_154_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_memdep_154_ff_rgb24toyv12_c_avm_waitrequest(in_memdep_154_ff_rgb24toyv12_c_avm_waitrequest),
        .in_memdep_154_ff_rgb24toyv12_c_avm_writeack(in_memdep_154_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_201_ff_rgb24toyv12_c_avm_readdata(in_memdep_201_ff_rgb24toyv12_c_avm_readdata),
        .in_memdep_201_ff_rgb24toyv12_c_avm_readdatavalid(in_memdep_201_ff_rgb24toyv12_c_avm_readdatavalid),
        .in_memdep_201_ff_rgb24toyv12_c_avm_waitrequest(in_memdep_201_ff_rgb24toyv12_c_avm_waitrequest),
        .in_memdep_201_ff_rgb24toyv12_c_avm_writeack(in_memdep_201_ff_rgb24toyv12_c_avm_writeack),
        .in_memdep_phi126_pop27323_pop73381(ff_rgb24toyv12_c_B5_merge_out_memdep_phi126_pop27323_pop73381),
        .in_memdep_phi133_pop28325_pop74383(ff_rgb24toyv12_c_B5_merge_out_memdep_phi133_pop28325_pop74383),
        .in_memdep_phi140_pop29327_pop75385(ff_rgb24toyv12_c_B5_merge_out_memdep_phi140_pop29327_pop75385),
        .in_memdep_phi147_pop30329_pop76387(ff_rgb24toyv12_c_B5_merge_out_memdep_phi147_pop30329_pop76387),
        .in_memdep_phi155_pop31331_pop77371(ff_rgb24toyv12_c_B5_merge_out_memdep_phi155_pop31331_pop77371),
        .in_memdep_phi202_pop36337_pop82373(ff_rgb24toyv12_c_B5_merge_out_memdep_phi202_pop36337_pop82373),
        .in_notcmp292305_pop58402(ff_rgb24toyv12_c_B5_merge_out_notcmp292305_pop58402),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop57400(ff_rgb24toyv12_c_B5_merge_out_pop57400),
        .in_reduction_ff_rgb24toyv12_c_2375(ff_rgb24toyv12_c_B5_merge_out_reduction_ff_rgb24toyv12_c_2375),
        .in_reduction_ff_rgb24toyv12_c_53389(ff_rgb24toyv12_c_B5_merge_out_reduction_ff_rgb24toyv12_c_53389),
        .in_stall_in(ff_rgb24toyv12_c_B5_branch_out_stall_out),
        .in_unnamed_ff_rgb24toyv12_c62(ff_rgb24toyv12_c_B5_merge_out_unnamed_ff_rgb24toyv12_c62),
        .in_valid_in(ff_rgb24toyv12_c_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_stall_out(bb_ff_rgb24toyv12_c_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_valid_out(bb_ff_rgb24toyv12_c_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_valid_out),
        .out_lm539_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_address),
        .out_lm539_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm539_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm539_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_enable),
        .out_lm539_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_read),
        .out_lm539_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_write),
        .out_lm539_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_writedata),
        .out_lm539_toi1_intcast130(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_toi1_intcast130),
        .out_lm5510_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_address),
        .out_lm5510_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm5510_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm5510_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_enable),
        .out_lm5510_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_read),
        .out_lm5510_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_write),
        .out_lm5510_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_writedata),
        .out_lm5711_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_address),
        .out_lm5711_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm5711_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm5711_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_enable),
        .out_lm5711_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_read),
        .out_lm5711_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_write),
        .out_lm5711_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_writedata),
        .out_lm5912_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_address),
        .out_lm5912_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm5912_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm5912_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_enable),
        .out_lm5912_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_read),
        .out_lm5912_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_write),
        .out_lm5912_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6113_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_address),
        .out_lm6113_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6113_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6113_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_enable),
        .out_lm6113_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_read),
        .out_lm6113_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_write),
        .out_lm6113_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6314_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_address),
        .out_lm6314_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6314_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6314_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_enable),
        .out_lm6314_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_read),
        .out_lm6314_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_write),
        .out_lm6314_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6515_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_address),
        .out_lm6515_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6515_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6515_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_enable),
        .out_lm6515_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_read),
        .out_lm6515_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_write),
        .out_lm6515_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_writedata),
        .out_lm6716_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_address),
        .out_lm6716_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_burstcount),
        .out_lm6716_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_byteenable),
        .out_lm6716_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_enable),
        .out_lm6716_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_read),
        .out_lm6716_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_write),
        .out_lm6716_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_writedata),
        .out_lsu_memdep_154_o_active(bb_ff_rgb24toyv12_c_B5_stall_region_out_lsu_memdep_154_o_active),
        .out_lsu_memdep_201_o_active(bb_ff_rgb24toyv12_c_B5_stall_region_out_lsu_memdep_201_o_active),
        .out_masked(bb_ff_rgb24toyv12_c_B5_stall_region_out_masked),
        .out_memdep_154_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_address),
        .out_memdep_154_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_154_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_154_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_154_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_read),
        .out_memdep_154_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_write),
        .out_memdep_154_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_writedata),
        .out_memdep_201_ff_rgb24toyv12_c_avm_address(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_address),
        .out_memdep_201_ff_rgb24toyv12_c_avm_burstcount(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_burstcount),
        .out_memdep_201_ff_rgb24toyv12_c_avm_byteenable(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_byteenable),
        .out_memdep_201_ff_rgb24toyv12_c_avm_enable(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_enable),
        .out_memdep_201_ff_rgb24toyv12_c_avm_read(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_read),
        .out_memdep_201_ff_rgb24toyv12_c_avm_write(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_write),
        .out_memdep_201_ff_rgb24toyv12_c_avm_writedata(bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_writedata),
        .out_notcmp292306_pop97(bb_ff_rgb24toyv12_c_B5_stall_region_out_notcmp292306_pop97),
        .out_pipeline_valid_out(bb_ff_rgb24toyv12_c_B5_stall_region_out_pipeline_valid_out),
        .out_pop96(bb_ff_rgb24toyv12_c_B5_stall_region_out_pop96),
        .out_stall_out(bb_ff_rgb24toyv12_c_B5_stall_region_out_stall_out),
        .out_valid_out(bb_ff_rgb24toyv12_c_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,83)
    assign out_exiting_stall_out = bb_ff_rgb24toyv12_c_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,84)
    assign out_exiting_valid_out = bb_ff_rgb24toyv12_c_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ff_rgb24toyv12_c4_exiting_valid_out;

    // out_lm539_ff_rgb24toyv12_c_avm_address(GPOUT,85)
    assign out_lm539_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_address;

    // out_lm539_ff_rgb24toyv12_c_avm_burstcount(GPOUT,86)
    assign out_lm539_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm539_ff_rgb24toyv12_c_avm_byteenable(GPOUT,87)
    assign out_lm539_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm539_ff_rgb24toyv12_c_avm_enable(GPOUT,88)
    assign out_lm539_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_enable;

    // out_lm539_ff_rgb24toyv12_c_avm_read(GPOUT,89)
    assign out_lm539_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_read;

    // out_lm539_ff_rgb24toyv12_c_avm_write(GPOUT,90)
    assign out_lm539_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_write;

    // out_lm539_ff_rgb24toyv12_c_avm_writedata(GPOUT,91)
    assign out_lm539_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm539_ff_rgb24toyv12_c_avm_writedata;

    // out_lm539_toi1_intcast130(GPOUT,92)
    assign out_lm539_toi1_intcast130 = ff_rgb24toyv12_c_B5_branch_out_lm539_toi1_intcast130;

    // out_lm5510_ff_rgb24toyv12_c_avm_address(GPOUT,93)
    assign out_lm5510_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_address;

    // out_lm5510_ff_rgb24toyv12_c_avm_burstcount(GPOUT,94)
    assign out_lm5510_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm5510_ff_rgb24toyv12_c_avm_byteenable(GPOUT,95)
    assign out_lm5510_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm5510_ff_rgb24toyv12_c_avm_enable(GPOUT,96)
    assign out_lm5510_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_enable;

    // out_lm5510_ff_rgb24toyv12_c_avm_read(GPOUT,97)
    assign out_lm5510_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_read;

    // out_lm5510_ff_rgb24toyv12_c_avm_write(GPOUT,98)
    assign out_lm5510_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_write;

    // out_lm5510_ff_rgb24toyv12_c_avm_writedata(GPOUT,99)
    assign out_lm5510_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5510_ff_rgb24toyv12_c_avm_writedata;

    // out_lm5711_ff_rgb24toyv12_c_avm_address(GPOUT,100)
    assign out_lm5711_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_address;

    // out_lm5711_ff_rgb24toyv12_c_avm_burstcount(GPOUT,101)
    assign out_lm5711_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm5711_ff_rgb24toyv12_c_avm_byteenable(GPOUT,102)
    assign out_lm5711_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm5711_ff_rgb24toyv12_c_avm_enable(GPOUT,103)
    assign out_lm5711_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_enable;

    // out_lm5711_ff_rgb24toyv12_c_avm_read(GPOUT,104)
    assign out_lm5711_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_read;

    // out_lm5711_ff_rgb24toyv12_c_avm_write(GPOUT,105)
    assign out_lm5711_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_write;

    // out_lm5711_ff_rgb24toyv12_c_avm_writedata(GPOUT,106)
    assign out_lm5711_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5711_ff_rgb24toyv12_c_avm_writedata;

    // out_lm5912_ff_rgb24toyv12_c_avm_address(GPOUT,107)
    assign out_lm5912_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_address;

    // out_lm5912_ff_rgb24toyv12_c_avm_burstcount(GPOUT,108)
    assign out_lm5912_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm5912_ff_rgb24toyv12_c_avm_byteenable(GPOUT,109)
    assign out_lm5912_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm5912_ff_rgb24toyv12_c_avm_enable(GPOUT,110)
    assign out_lm5912_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_enable;

    // out_lm5912_ff_rgb24toyv12_c_avm_read(GPOUT,111)
    assign out_lm5912_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_read;

    // out_lm5912_ff_rgb24toyv12_c_avm_write(GPOUT,112)
    assign out_lm5912_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_write;

    // out_lm5912_ff_rgb24toyv12_c_avm_writedata(GPOUT,113)
    assign out_lm5912_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm5912_ff_rgb24toyv12_c_avm_writedata;

    // out_lm6113_ff_rgb24toyv12_c_avm_address(GPOUT,114)
    assign out_lm6113_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_address;

    // out_lm6113_ff_rgb24toyv12_c_avm_burstcount(GPOUT,115)
    assign out_lm6113_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm6113_ff_rgb24toyv12_c_avm_byteenable(GPOUT,116)
    assign out_lm6113_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm6113_ff_rgb24toyv12_c_avm_enable(GPOUT,117)
    assign out_lm6113_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_enable;

    // out_lm6113_ff_rgb24toyv12_c_avm_read(GPOUT,118)
    assign out_lm6113_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_read;

    // out_lm6113_ff_rgb24toyv12_c_avm_write(GPOUT,119)
    assign out_lm6113_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_write;

    // out_lm6113_ff_rgb24toyv12_c_avm_writedata(GPOUT,120)
    assign out_lm6113_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6113_ff_rgb24toyv12_c_avm_writedata;

    // out_lm6314_ff_rgb24toyv12_c_avm_address(GPOUT,121)
    assign out_lm6314_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_address;

    // out_lm6314_ff_rgb24toyv12_c_avm_burstcount(GPOUT,122)
    assign out_lm6314_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm6314_ff_rgb24toyv12_c_avm_byteenable(GPOUT,123)
    assign out_lm6314_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm6314_ff_rgb24toyv12_c_avm_enable(GPOUT,124)
    assign out_lm6314_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_enable;

    // out_lm6314_ff_rgb24toyv12_c_avm_read(GPOUT,125)
    assign out_lm6314_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_read;

    // out_lm6314_ff_rgb24toyv12_c_avm_write(GPOUT,126)
    assign out_lm6314_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_write;

    // out_lm6314_ff_rgb24toyv12_c_avm_writedata(GPOUT,127)
    assign out_lm6314_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6314_ff_rgb24toyv12_c_avm_writedata;

    // out_lm6515_ff_rgb24toyv12_c_avm_address(GPOUT,128)
    assign out_lm6515_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_address;

    // out_lm6515_ff_rgb24toyv12_c_avm_burstcount(GPOUT,129)
    assign out_lm6515_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm6515_ff_rgb24toyv12_c_avm_byteenable(GPOUT,130)
    assign out_lm6515_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm6515_ff_rgb24toyv12_c_avm_enable(GPOUT,131)
    assign out_lm6515_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_enable;

    // out_lm6515_ff_rgb24toyv12_c_avm_read(GPOUT,132)
    assign out_lm6515_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_read;

    // out_lm6515_ff_rgb24toyv12_c_avm_write(GPOUT,133)
    assign out_lm6515_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_write;

    // out_lm6515_ff_rgb24toyv12_c_avm_writedata(GPOUT,134)
    assign out_lm6515_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6515_ff_rgb24toyv12_c_avm_writedata;

    // out_lm6716_ff_rgb24toyv12_c_avm_address(GPOUT,135)
    assign out_lm6716_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_address;

    // out_lm6716_ff_rgb24toyv12_c_avm_burstcount(GPOUT,136)
    assign out_lm6716_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_burstcount;

    // out_lm6716_ff_rgb24toyv12_c_avm_byteenable(GPOUT,137)
    assign out_lm6716_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_byteenable;

    // out_lm6716_ff_rgb24toyv12_c_avm_enable(GPOUT,138)
    assign out_lm6716_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_enable;

    // out_lm6716_ff_rgb24toyv12_c_avm_read(GPOUT,139)
    assign out_lm6716_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_read;

    // out_lm6716_ff_rgb24toyv12_c_avm_write(GPOUT,140)
    assign out_lm6716_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_write;

    // out_lm6716_ff_rgb24toyv12_c_avm_writedata(GPOUT,141)
    assign out_lm6716_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_lm6716_ff_rgb24toyv12_c_avm_writedata;

    // out_lsu_memdep_154_o_active(GPOUT,142)
    assign out_lsu_memdep_154_o_active = bb_ff_rgb24toyv12_c_B5_stall_region_out_lsu_memdep_154_o_active;

    // out_lsu_memdep_201_o_active(GPOUT,143)
    assign out_lsu_memdep_201_o_active = bb_ff_rgb24toyv12_c_B5_stall_region_out_lsu_memdep_201_o_active;

    // out_memdep_154_ff_rgb24toyv12_c_avm_address(GPOUT,144)
    assign out_memdep_154_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_address;

    // out_memdep_154_ff_rgb24toyv12_c_avm_burstcount(GPOUT,145)
    assign out_memdep_154_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_burstcount;

    // out_memdep_154_ff_rgb24toyv12_c_avm_byteenable(GPOUT,146)
    assign out_memdep_154_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_byteenable;

    // out_memdep_154_ff_rgb24toyv12_c_avm_enable(GPOUT,147)
    assign out_memdep_154_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_enable;

    // out_memdep_154_ff_rgb24toyv12_c_avm_read(GPOUT,148)
    assign out_memdep_154_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_read;

    // out_memdep_154_ff_rgb24toyv12_c_avm_write(GPOUT,149)
    assign out_memdep_154_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_write;

    // out_memdep_154_ff_rgb24toyv12_c_avm_writedata(GPOUT,150)
    assign out_memdep_154_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_154_ff_rgb24toyv12_c_avm_writedata;

    // out_memdep_201_ff_rgb24toyv12_c_avm_address(GPOUT,151)
    assign out_memdep_201_ff_rgb24toyv12_c_avm_address = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_address;

    // out_memdep_201_ff_rgb24toyv12_c_avm_burstcount(GPOUT,152)
    assign out_memdep_201_ff_rgb24toyv12_c_avm_burstcount = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_burstcount;

    // out_memdep_201_ff_rgb24toyv12_c_avm_byteenable(GPOUT,153)
    assign out_memdep_201_ff_rgb24toyv12_c_avm_byteenable = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_byteenable;

    // out_memdep_201_ff_rgb24toyv12_c_avm_enable(GPOUT,154)
    assign out_memdep_201_ff_rgb24toyv12_c_avm_enable = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_enable;

    // out_memdep_201_ff_rgb24toyv12_c_avm_read(GPOUT,155)
    assign out_memdep_201_ff_rgb24toyv12_c_avm_read = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_read;

    // out_memdep_201_ff_rgb24toyv12_c_avm_write(GPOUT,156)
    assign out_memdep_201_ff_rgb24toyv12_c_avm_write = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_write;

    // out_memdep_201_ff_rgb24toyv12_c_avm_writedata(GPOUT,157)
    assign out_memdep_201_ff_rgb24toyv12_c_avm_writedata = bb_ff_rgb24toyv12_c_B5_stall_region_out_memdep_201_ff_rgb24toyv12_c_avm_writedata;

    // out_notcmp292306_pop97(GPOUT,158)
    assign out_notcmp292306_pop97 = ff_rgb24toyv12_c_B5_branch_out_notcmp292306_pop97;

    // out_pop96(GPOUT,159)
    assign out_pop96 = ff_rgb24toyv12_c_B5_branch_out_pop96;

    // out_stall_out_0(GPOUT,160)
    assign out_stall_out_0 = ff_rgb24toyv12_c_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,161)
    assign out_stall_out_1 = ff_rgb24toyv12_c_B5_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,162)
    assign out_valid_out_0 = ff_rgb24toyv12_c_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,163)
    assign out_valid_out_1 = ff_rgb24toyv12_c_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,165)
    assign out_pipeline_valid_out = bb_ff_rgb24toyv12_c_B5_stall_region_out_pipeline_valid_out;

endmodule
