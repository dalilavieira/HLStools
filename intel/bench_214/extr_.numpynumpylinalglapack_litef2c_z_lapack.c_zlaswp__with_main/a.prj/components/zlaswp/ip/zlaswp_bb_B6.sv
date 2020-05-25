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

// SystemVerilog created from zlaswp_bb_B6
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B6 (
    input wire [31:0] in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_0,
    input wire [31:0] in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked181_0,
    input wire [0:0] in_forked181_1,
    input wire [63:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [0:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_lm18611245_0,
    input wire [31:0] in_lm18611245_1,
    input wire [31:0] in_lm19012246_0,
    input wire [31:0] in_lm19012246_1,
    input wire [63:0] in_lm3213_zlaswp_avm_readdata,
    input wire [0:0] in_lm3213_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm3213_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm3213_zlaswp_avm_writeack,
    input wire [63:0] in_lm3414_zlaswp_avm_readdata,
    input wire [0:0] in_lm3414_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm3414_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm3414_zlaswp_avm_writeack,
    input wire [63:0] in_lm3615_zlaswp_avm_readdata,
    input wire [0:0] in_lm3615_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm3615_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm3615_zlaswp_avm_writeack,
    input wire [63:0] in_lm3816_zlaswp_avm_readdata,
    input wire [0:0] in_lm3816_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm3816_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm3816_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_102_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_102_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_102_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_102_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_119_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_119_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_119_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_119_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_71_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_71_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_71_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_71_zlaswp_avm_writeack,
    input wire [63:0] in_memdep_87_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_87_zlaswp_avm_readdatavalid,
    input wire [0:0] in_memdep_87_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_87_zlaswp_avm_writeack,
    input wire [0:0] in_memdep_phi103_pop16242_0,
    input wire [0:0] in_memdep_phi103_pop16242_1,
    input wire [0:0] in_memdep_phi120_pop17243_0,
    input wire [0:0] in_memdep_phi120_pop17243_1,
    input wire [0:0] in_memdep_phi136_pop18251_0,
    input wire [0:0] in_memdep_phi136_pop18251_1,
    input wire [0:0] in_memdep_phi57_pop10247_0,
    input wire [0:0] in_memdep_phi57_pop10247_1,
    input wire [0:0] in_memdep_phi61_pop11248_0,
    input wire [0:0] in_memdep_phi61_pop11248_1,
    input wire [0:0] in_memdep_phi66_pop12249_0,
    input wire [0:0] in_memdep_phi66_pop12249_1,
    input wire [0:0] in_memdep_phi72_pop13240_0,
    input wire [0:0] in_memdep_phi72_pop13240_1,
    input wire [0:0] in_memdep_phi82_pop14250_0,
    input wire [0:0] in_memdep_phi82_pop14250_1,
    input wire [0:0] in_memdep_phi88_pop15241_0,
    input wire [0:0] in_memdep_phi88_pop15241_1,
    input wire [0:0] in_notcmp193239_0,
    input wire [0:0] in_notcmp193239_1,
    input wire [0:0] in_phi_decision209_xor_and_i0238_0,
    input wire [0:0] in_phi_decision209_xor_and_i0238_1,
    input wire [0:0] in_reduction_zlaswp_33244_0,
    input wire [0:0] in_reduction_zlaswp_33244_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_storemerge67_replace_phi236_0,
    input wire [31:0] in_storemerge67_replace_phi236_1,
    input wire [0:0] in_unnamed_zlaswp36_0,
    input wire [0:0] in_unnamed_zlaswp36_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lm3213_toi1_intcast56,
    output wire [63:0] out_lm3213_zlaswp_avm_address,
    output wire [0:0] out_lm3213_zlaswp_avm_burstcount,
    output wire [7:0] out_lm3213_zlaswp_avm_byteenable,
    output wire [0:0] out_lm3213_zlaswp_avm_enable,
    output wire [0:0] out_lm3213_zlaswp_avm_read,
    output wire [0:0] out_lm3213_zlaswp_avm_write,
    output wire [63:0] out_lm3213_zlaswp_avm_writedata,
    output wire [63:0] out_lm3414_zlaswp_avm_address,
    output wire [0:0] out_lm3414_zlaswp_avm_burstcount,
    output wire [7:0] out_lm3414_zlaswp_avm_byteenable,
    output wire [0:0] out_lm3414_zlaswp_avm_enable,
    output wire [0:0] out_lm3414_zlaswp_avm_read,
    output wire [0:0] out_lm3414_zlaswp_avm_write,
    output wire [63:0] out_lm3414_zlaswp_avm_writedata,
    output wire [63:0] out_lm3615_zlaswp_avm_address,
    output wire [0:0] out_lm3615_zlaswp_avm_burstcount,
    output wire [7:0] out_lm3615_zlaswp_avm_byteenable,
    output wire [0:0] out_lm3615_zlaswp_avm_enable,
    output wire [0:0] out_lm3615_zlaswp_avm_read,
    output wire [0:0] out_lm3615_zlaswp_avm_write,
    output wire [63:0] out_lm3615_zlaswp_avm_writedata,
    output wire [63:0] out_lm3816_zlaswp_avm_address,
    output wire [0:0] out_lm3816_zlaswp_avm_burstcount,
    output wire [7:0] out_lm3816_zlaswp_avm_byteenable,
    output wire [0:0] out_lm3816_zlaswp_avm_enable,
    output wire [0:0] out_lm3816_zlaswp_avm_read,
    output wire [0:0] out_lm3816_zlaswp_avm_write,
    output wire [63:0] out_lm3816_zlaswp_avm_writedata,
    output wire [0:0] out_lsu_memdep_102_o_active,
    output wire [0:0] out_lsu_memdep_119_o_active,
    output wire [0:0] out_lsu_memdep_71_o_active,
    output wire [0:0] out_lsu_memdep_87_o_active,
    output wire [0:0] out_memdep_102,
    output wire [63:0] out_memdep_102_zlaswp_avm_address,
    output wire [0:0] out_memdep_102_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_102_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_102_zlaswp_avm_enable,
    output wire [0:0] out_memdep_102_zlaswp_avm_read,
    output wire [0:0] out_memdep_102_zlaswp_avm_write,
    output wire [63:0] out_memdep_102_zlaswp_avm_writedata,
    output wire [0:0] out_memdep_119,
    output wire [63:0] out_memdep_119_zlaswp_avm_address,
    output wire [0:0] out_memdep_119_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_119_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_119_zlaswp_avm_enable,
    output wire [0:0] out_memdep_119_zlaswp_avm_read,
    output wire [0:0] out_memdep_119_zlaswp_avm_write,
    output wire [63:0] out_memdep_119_zlaswp_avm_writedata,
    output wire [0:0] out_memdep_71,
    output wire [63:0] out_memdep_71_zlaswp_avm_address,
    output wire [0:0] out_memdep_71_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_71_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_71_zlaswp_avm_enable,
    output wire [0:0] out_memdep_71_zlaswp_avm_read,
    output wire [0:0] out_memdep_71_zlaswp_avm_write,
    output wire [63:0] out_memdep_71_zlaswp_avm_writedata,
    output wire [0:0] out_memdep_87,
    output wire [63:0] out_memdep_87_zlaswp_avm_address,
    output wire [0:0] out_memdep_87_zlaswp_avm_burstcount,
    output wire [7:0] out_memdep_87_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_87_zlaswp_avm_enable,
    output wire [0:0] out_memdep_87_zlaswp_avm_read,
    output wire [0:0] out_memdep_87_zlaswp_avm_write,
    output wire [63:0] out_memdep_87_zlaswp_avm_writedata,
    output wire [0:0] out_notcmp193223_pop33,
    output wire [0:0] out_phi_decision209_xor_and_i0222_pop32,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_zlaswp_B6_stall_region_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31;
    wire [0:0] bb_zlaswp_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_stall_out;
    wire [0:0] bb_zlaswp_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_valid_out;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3213_toi1_intcast56;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_writedata;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lsu_memdep_102_o_active;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lsu_memdep_119_o_active;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lsu_memdep_71_o_active;
    wire [0:0] bb_zlaswp_B6_stall_region_out_lsu_memdep_87_o_active;
    wire [0:0] bb_zlaswp_B6_stall_region_out_masked;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_102;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_119;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_71;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_87;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B6_stall_region_out_notcmp193223_pop33;
    wire [0:0] bb_zlaswp_B6_stall_region_out_phi_decision209_xor_and_i0222_pop32;
    wire [0:0] bb_zlaswp_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_zlaswp_B6_stall_region_out_stall_out;
    wire [0:0] bb_zlaswp_B6_stall_region_out_valid_out;
    wire [31:0] zlaswp_B6_branch_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31;
    wire [0:0] zlaswp_B6_branch_out_lm3213_toi1_intcast56;
    wire [0:0] zlaswp_B6_branch_out_memdep_102;
    wire [0:0] zlaswp_B6_branch_out_memdep_119;
    wire [0:0] zlaswp_B6_branch_out_memdep_71;
    wire [0:0] zlaswp_B6_branch_out_memdep_87;
    wire [0:0] zlaswp_B6_branch_out_notcmp193223_pop33;
    wire [0:0] zlaswp_B6_branch_out_phi_decision209_xor_and_i0222_pop32;
    wire [0:0] zlaswp_B6_branch_out_stall_out;
    wire [0:0] zlaswp_B6_branch_out_valid_out_0;
    wire [0:0] zlaswp_B6_branch_out_valid_out_1;
    wire [31:0] zlaswp_B6_merge_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237;
    wire [0:0] zlaswp_B6_merge_out_forked181;
    wire [31:0] zlaswp_B6_merge_out_lm18611245;
    wire [31:0] zlaswp_B6_merge_out_lm19012246;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi103_pop16242;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi120_pop17243;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi136_pop18251;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi57_pop10247;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi61_pop11248;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi66_pop12249;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi72_pop13240;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi82_pop14250;
    wire [0:0] zlaswp_B6_merge_out_memdep_phi88_pop15241;
    wire [0:0] zlaswp_B6_merge_out_notcmp193239;
    wire [0:0] zlaswp_B6_merge_out_phi_decision209_xor_and_i0238;
    wire [0:0] zlaswp_B6_merge_out_reduction_zlaswp_33244;
    wire [0:0] zlaswp_B6_merge_out_stall_out_0;
    wire [0:0] zlaswp_B6_merge_out_stall_out_1;
    wire [31:0] zlaswp_B6_merge_out_storemerge67_replace_phi236;
    wire [0:0] zlaswp_B6_merge_out_unnamed_zlaswp36;
    wire [0:0] zlaswp_B6_merge_out_valid_out;


    // zlaswp_B6_merge(BLACKBOX,157)
    zlaswp_B6_merge thezlaswp_B6_merge (
        .in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_0(in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_0),
        .in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_1(in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_1),
        .in_forked181_0(in_forked181_0),
        .in_forked181_1(in_forked181_1),
        .in_lm18611245_0(in_lm18611245_0),
        .in_lm18611245_1(in_lm18611245_1),
        .in_lm19012246_0(in_lm19012246_0),
        .in_lm19012246_1(in_lm19012246_1),
        .in_memdep_phi103_pop16242_0(in_memdep_phi103_pop16242_0),
        .in_memdep_phi103_pop16242_1(in_memdep_phi103_pop16242_1),
        .in_memdep_phi120_pop17243_0(in_memdep_phi120_pop17243_0),
        .in_memdep_phi120_pop17243_1(in_memdep_phi120_pop17243_1),
        .in_memdep_phi136_pop18251_0(in_memdep_phi136_pop18251_0),
        .in_memdep_phi136_pop18251_1(in_memdep_phi136_pop18251_1),
        .in_memdep_phi57_pop10247_0(in_memdep_phi57_pop10247_0),
        .in_memdep_phi57_pop10247_1(in_memdep_phi57_pop10247_1),
        .in_memdep_phi61_pop11248_0(in_memdep_phi61_pop11248_0),
        .in_memdep_phi61_pop11248_1(in_memdep_phi61_pop11248_1),
        .in_memdep_phi66_pop12249_0(in_memdep_phi66_pop12249_0),
        .in_memdep_phi66_pop12249_1(in_memdep_phi66_pop12249_1),
        .in_memdep_phi72_pop13240_0(in_memdep_phi72_pop13240_0),
        .in_memdep_phi72_pop13240_1(in_memdep_phi72_pop13240_1),
        .in_memdep_phi82_pop14250_0(in_memdep_phi82_pop14250_0),
        .in_memdep_phi82_pop14250_1(in_memdep_phi82_pop14250_1),
        .in_memdep_phi88_pop15241_0(in_memdep_phi88_pop15241_0),
        .in_memdep_phi88_pop15241_1(in_memdep_phi88_pop15241_1),
        .in_notcmp193239_0(in_notcmp193239_0),
        .in_notcmp193239_1(in_notcmp193239_1),
        .in_phi_decision209_xor_and_i0238_0(in_phi_decision209_xor_and_i0238_0),
        .in_phi_decision209_xor_and_i0238_1(in_phi_decision209_xor_and_i0238_1),
        .in_reduction_zlaswp_33244_0(in_reduction_zlaswp_33244_0),
        .in_reduction_zlaswp_33244_1(in_reduction_zlaswp_33244_1),
        .in_stall_in(bb_zlaswp_B6_stall_region_out_stall_out),
        .in_storemerge67_replace_phi236_0(in_storemerge67_replace_phi236_0),
        .in_storemerge67_replace_phi236_1(in_storemerge67_replace_phi236_1),
        .in_unnamed_zlaswp36_0(in_unnamed_zlaswp36_0),
        .in_unnamed_zlaswp36_1(in_unnamed_zlaswp36_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237(zlaswp_B6_merge_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237),
        .out_forked181(zlaswp_B6_merge_out_forked181),
        .out_lm18611245(zlaswp_B6_merge_out_lm18611245),
        .out_lm19012246(zlaswp_B6_merge_out_lm19012246),
        .out_memdep_phi103_pop16242(zlaswp_B6_merge_out_memdep_phi103_pop16242),
        .out_memdep_phi120_pop17243(zlaswp_B6_merge_out_memdep_phi120_pop17243),
        .out_memdep_phi136_pop18251(zlaswp_B6_merge_out_memdep_phi136_pop18251),
        .out_memdep_phi57_pop10247(zlaswp_B6_merge_out_memdep_phi57_pop10247),
        .out_memdep_phi61_pop11248(zlaswp_B6_merge_out_memdep_phi61_pop11248),
        .out_memdep_phi66_pop12249(zlaswp_B6_merge_out_memdep_phi66_pop12249),
        .out_memdep_phi72_pop13240(zlaswp_B6_merge_out_memdep_phi72_pop13240),
        .out_memdep_phi82_pop14250(zlaswp_B6_merge_out_memdep_phi82_pop14250),
        .out_memdep_phi88_pop15241(zlaswp_B6_merge_out_memdep_phi88_pop15241),
        .out_notcmp193239(zlaswp_B6_merge_out_notcmp193239),
        .out_phi_decision209_xor_and_i0238(zlaswp_B6_merge_out_phi_decision209_xor_and_i0238),
        .out_reduction_zlaswp_33244(zlaswp_B6_merge_out_reduction_zlaswp_33244),
        .out_stall_out_0(zlaswp_B6_merge_out_stall_out_0),
        .out_stall_out_1(zlaswp_B6_merge_out_stall_out_1),
        .out_storemerge67_replace_phi236(zlaswp_B6_merge_out_storemerge67_replace_phi236),
        .out_unnamed_zlaswp36(zlaswp_B6_merge_out_unnamed_zlaswp36),
        .out_valid_out(zlaswp_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zlaswp_B6_stall_region(BLACKBOX,2)
    zlaswp_bb_B6_stall_region thebb_zlaswp_B6_stall_region (
        .in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237(zlaswp_B6_merge_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237),
        .in_flush(in_flush),
        .in_forked181(zlaswp_B6_merge_out_forked181),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm18611245(zlaswp_B6_merge_out_lm18611245),
        .in_lm19012246(zlaswp_B6_merge_out_lm19012246),
        .in_lm3213_zlaswp_avm_readdata(in_lm3213_zlaswp_avm_readdata),
        .in_lm3213_zlaswp_avm_readdatavalid(in_lm3213_zlaswp_avm_readdatavalid),
        .in_lm3213_zlaswp_avm_waitrequest(in_lm3213_zlaswp_avm_waitrequest),
        .in_lm3213_zlaswp_avm_writeack(in_lm3213_zlaswp_avm_writeack),
        .in_lm3414_zlaswp_avm_readdata(in_lm3414_zlaswp_avm_readdata),
        .in_lm3414_zlaswp_avm_readdatavalid(in_lm3414_zlaswp_avm_readdatavalid),
        .in_lm3414_zlaswp_avm_waitrequest(in_lm3414_zlaswp_avm_waitrequest),
        .in_lm3414_zlaswp_avm_writeack(in_lm3414_zlaswp_avm_writeack),
        .in_lm3615_zlaswp_avm_readdata(in_lm3615_zlaswp_avm_readdata),
        .in_lm3615_zlaswp_avm_readdatavalid(in_lm3615_zlaswp_avm_readdatavalid),
        .in_lm3615_zlaswp_avm_waitrequest(in_lm3615_zlaswp_avm_waitrequest),
        .in_lm3615_zlaswp_avm_writeack(in_lm3615_zlaswp_avm_writeack),
        .in_lm3816_zlaswp_avm_readdata(in_lm3816_zlaswp_avm_readdata),
        .in_lm3816_zlaswp_avm_readdatavalid(in_lm3816_zlaswp_avm_readdatavalid),
        .in_lm3816_zlaswp_avm_waitrequest(in_lm3816_zlaswp_avm_waitrequest),
        .in_lm3816_zlaswp_avm_writeack(in_lm3816_zlaswp_avm_writeack),
        .in_memdep_102_zlaswp_avm_readdata(in_memdep_102_zlaswp_avm_readdata),
        .in_memdep_102_zlaswp_avm_readdatavalid(in_memdep_102_zlaswp_avm_readdatavalid),
        .in_memdep_102_zlaswp_avm_waitrequest(in_memdep_102_zlaswp_avm_waitrequest),
        .in_memdep_102_zlaswp_avm_writeack(in_memdep_102_zlaswp_avm_writeack),
        .in_memdep_119_zlaswp_avm_readdata(in_memdep_119_zlaswp_avm_readdata),
        .in_memdep_119_zlaswp_avm_readdatavalid(in_memdep_119_zlaswp_avm_readdatavalid),
        .in_memdep_119_zlaswp_avm_waitrequest(in_memdep_119_zlaswp_avm_waitrequest),
        .in_memdep_119_zlaswp_avm_writeack(in_memdep_119_zlaswp_avm_writeack),
        .in_memdep_71_zlaswp_avm_readdata(in_memdep_71_zlaswp_avm_readdata),
        .in_memdep_71_zlaswp_avm_readdatavalid(in_memdep_71_zlaswp_avm_readdatavalid),
        .in_memdep_71_zlaswp_avm_waitrequest(in_memdep_71_zlaswp_avm_waitrequest),
        .in_memdep_71_zlaswp_avm_writeack(in_memdep_71_zlaswp_avm_writeack),
        .in_memdep_87_zlaswp_avm_readdata(in_memdep_87_zlaswp_avm_readdata),
        .in_memdep_87_zlaswp_avm_readdatavalid(in_memdep_87_zlaswp_avm_readdatavalid),
        .in_memdep_87_zlaswp_avm_waitrequest(in_memdep_87_zlaswp_avm_waitrequest),
        .in_memdep_87_zlaswp_avm_writeack(in_memdep_87_zlaswp_avm_writeack),
        .in_memdep_phi103_pop16242(zlaswp_B6_merge_out_memdep_phi103_pop16242),
        .in_memdep_phi120_pop17243(zlaswp_B6_merge_out_memdep_phi120_pop17243),
        .in_memdep_phi136_pop18251(zlaswp_B6_merge_out_memdep_phi136_pop18251),
        .in_memdep_phi57_pop10247(zlaswp_B6_merge_out_memdep_phi57_pop10247),
        .in_memdep_phi61_pop11248(zlaswp_B6_merge_out_memdep_phi61_pop11248),
        .in_memdep_phi66_pop12249(zlaswp_B6_merge_out_memdep_phi66_pop12249),
        .in_memdep_phi72_pop13240(zlaswp_B6_merge_out_memdep_phi72_pop13240),
        .in_memdep_phi82_pop14250(zlaswp_B6_merge_out_memdep_phi82_pop14250),
        .in_memdep_phi88_pop15241(zlaswp_B6_merge_out_memdep_phi88_pop15241),
        .in_notcmp193239(zlaswp_B6_merge_out_notcmp193239),
        .in_phi_decision209_xor_and_i0238(zlaswp_B6_merge_out_phi_decision209_xor_and_i0238),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reduction_zlaswp_33244(zlaswp_B6_merge_out_reduction_zlaswp_33244),
        .in_stall_in(zlaswp_B6_branch_out_stall_out),
        .in_storemerge67_replace_phi236(zlaswp_B6_merge_out_storemerge67_replace_phi236),
        .in_unnamed_zlaswp36(zlaswp_B6_merge_out_unnamed_zlaswp36),
        .in_valid_in(zlaswp_B6_merge_out_valid_out),
        .out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31(bb_zlaswp_B6_stall_region_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_stall_out(bb_zlaswp_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_valid_out(bb_zlaswp_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_valid_out),
        .out_lm3213_toi1_intcast56(bb_zlaswp_B6_stall_region_out_lm3213_toi1_intcast56),
        .out_lm3213_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_address),
        .out_lm3213_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_burstcount),
        .out_lm3213_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_byteenable),
        .out_lm3213_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_enable),
        .out_lm3213_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_read),
        .out_lm3213_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_write),
        .out_lm3213_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_writedata),
        .out_lm3414_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_address),
        .out_lm3414_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_burstcount),
        .out_lm3414_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_byteenable),
        .out_lm3414_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_enable),
        .out_lm3414_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_read),
        .out_lm3414_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_write),
        .out_lm3414_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_writedata),
        .out_lm3615_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_address),
        .out_lm3615_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_burstcount),
        .out_lm3615_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_byteenable),
        .out_lm3615_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_enable),
        .out_lm3615_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_read),
        .out_lm3615_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_write),
        .out_lm3615_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_writedata),
        .out_lm3816_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_address),
        .out_lm3816_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_burstcount),
        .out_lm3816_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_byteenable),
        .out_lm3816_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_enable),
        .out_lm3816_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_read),
        .out_lm3816_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_write),
        .out_lm3816_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_writedata),
        .out_lsu_memdep_102_o_active(bb_zlaswp_B6_stall_region_out_lsu_memdep_102_o_active),
        .out_lsu_memdep_119_o_active(bb_zlaswp_B6_stall_region_out_lsu_memdep_119_o_active),
        .out_lsu_memdep_71_o_active(bb_zlaswp_B6_stall_region_out_lsu_memdep_71_o_active),
        .out_lsu_memdep_87_o_active(bb_zlaswp_B6_stall_region_out_lsu_memdep_87_o_active),
        .out_masked(bb_zlaswp_B6_stall_region_out_masked),
        .out_memdep_102(bb_zlaswp_B6_stall_region_out_memdep_102),
        .out_memdep_102_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_address),
        .out_memdep_102_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_burstcount),
        .out_memdep_102_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_byteenable),
        .out_memdep_102_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_enable),
        .out_memdep_102_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_read),
        .out_memdep_102_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_write),
        .out_memdep_102_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_writedata),
        .out_memdep_119(bb_zlaswp_B6_stall_region_out_memdep_119),
        .out_memdep_119_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_address),
        .out_memdep_119_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_burstcount),
        .out_memdep_119_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_byteenable),
        .out_memdep_119_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_enable),
        .out_memdep_119_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_read),
        .out_memdep_119_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_write),
        .out_memdep_119_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_writedata),
        .out_memdep_71(bb_zlaswp_B6_stall_region_out_memdep_71),
        .out_memdep_71_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_address),
        .out_memdep_71_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_burstcount),
        .out_memdep_71_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_byteenable),
        .out_memdep_71_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_enable),
        .out_memdep_71_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_read),
        .out_memdep_71_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_write),
        .out_memdep_71_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_writedata),
        .out_memdep_87(bb_zlaswp_B6_stall_region_out_memdep_87),
        .out_memdep_87_zlaswp_avm_address(bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_address),
        .out_memdep_87_zlaswp_avm_burstcount(bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_burstcount),
        .out_memdep_87_zlaswp_avm_byteenable(bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_byteenable),
        .out_memdep_87_zlaswp_avm_enable(bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_enable),
        .out_memdep_87_zlaswp_avm_read(bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_read),
        .out_memdep_87_zlaswp_avm_write(bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_write),
        .out_memdep_87_zlaswp_avm_writedata(bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_writedata),
        .out_notcmp193223_pop33(bb_zlaswp_B6_stall_region_out_notcmp193223_pop33),
        .out_phi_decision209_xor_and_i0222_pop32(bb_zlaswp_B6_stall_region_out_phi_decision209_xor_and_i0222_pop32),
        .out_pipeline_valid_out(bb_zlaswp_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_zlaswp_B6_stall_region_out_stall_out),
        .out_valid_out(bb_zlaswp_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // zlaswp_B6_branch(BLACKBOX,156)
    zlaswp_B6_branch thezlaswp_B6_branch (
        .in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31(bb_zlaswp_B6_stall_region_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31),
        .in_lm3213_toi1_intcast56(bb_zlaswp_B6_stall_region_out_lm3213_toi1_intcast56),
        .in_masked(bb_zlaswp_B6_stall_region_out_masked),
        .in_memdep_102(bb_zlaswp_B6_stall_region_out_memdep_102),
        .in_memdep_119(bb_zlaswp_B6_stall_region_out_memdep_119),
        .in_memdep_71(bb_zlaswp_B6_stall_region_out_memdep_71),
        .in_memdep_87(bb_zlaswp_B6_stall_region_out_memdep_87),
        .in_notcmp193223_pop33(bb_zlaswp_B6_stall_region_out_notcmp193223_pop33),
        .in_phi_decision209_xor_and_i0222_pop32(bb_zlaswp_B6_stall_region_out_phi_decision209_xor_and_i0222_pop32),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zlaswp_B6_stall_region_out_valid_out),
        .out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31(zlaswp_B6_branch_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31),
        .out_lm3213_toi1_intcast56(zlaswp_B6_branch_out_lm3213_toi1_intcast56),
        .out_memdep_102(zlaswp_B6_branch_out_memdep_102),
        .out_memdep_119(zlaswp_B6_branch_out_memdep_119),
        .out_memdep_71(zlaswp_B6_branch_out_memdep_71),
        .out_memdep_87(zlaswp_B6_branch_out_memdep_87),
        .out_notcmp193223_pop33(zlaswp_B6_branch_out_notcmp193223_pop33),
        .out_phi_decision209_xor_and_i0222_pop32(zlaswp_B6_branch_out_phi_decision209_xor_and_i0222_pop32),
        .out_stall_out(zlaswp_B6_branch_out_stall_out),
        .out_valid_out_0(zlaswp_B6_branch_out_valid_out_0),
        .out_valid_out_1(zlaswp_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31(GPOUT,80)
    assign out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31 = zlaswp_B6_branch_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31;

    // out_exiting_stall_out(GPOUT,81)
    assign out_exiting_stall_out = bb_zlaswp_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,82)
    assign out_exiting_valid_out = bb_zlaswp_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_zlaswp4_exiting_valid_out;

    // out_lm3213_toi1_intcast56(GPOUT,83)
    assign out_lm3213_toi1_intcast56 = zlaswp_B6_branch_out_lm3213_toi1_intcast56;

    // out_lm3213_zlaswp_avm_address(GPOUT,84)
    assign out_lm3213_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_address;

    // out_lm3213_zlaswp_avm_burstcount(GPOUT,85)
    assign out_lm3213_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_burstcount;

    // out_lm3213_zlaswp_avm_byteenable(GPOUT,86)
    assign out_lm3213_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_byteenable;

    // out_lm3213_zlaswp_avm_enable(GPOUT,87)
    assign out_lm3213_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_enable;

    // out_lm3213_zlaswp_avm_read(GPOUT,88)
    assign out_lm3213_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_read;

    // out_lm3213_zlaswp_avm_write(GPOUT,89)
    assign out_lm3213_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_write;

    // out_lm3213_zlaswp_avm_writedata(GPOUT,90)
    assign out_lm3213_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_lm3213_zlaswp_avm_writedata;

    // out_lm3414_zlaswp_avm_address(GPOUT,91)
    assign out_lm3414_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_address;

    // out_lm3414_zlaswp_avm_burstcount(GPOUT,92)
    assign out_lm3414_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_burstcount;

    // out_lm3414_zlaswp_avm_byteenable(GPOUT,93)
    assign out_lm3414_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_byteenable;

    // out_lm3414_zlaswp_avm_enable(GPOUT,94)
    assign out_lm3414_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_enable;

    // out_lm3414_zlaswp_avm_read(GPOUT,95)
    assign out_lm3414_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_read;

    // out_lm3414_zlaswp_avm_write(GPOUT,96)
    assign out_lm3414_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_write;

    // out_lm3414_zlaswp_avm_writedata(GPOUT,97)
    assign out_lm3414_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_lm3414_zlaswp_avm_writedata;

    // out_lm3615_zlaswp_avm_address(GPOUT,98)
    assign out_lm3615_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_address;

    // out_lm3615_zlaswp_avm_burstcount(GPOUT,99)
    assign out_lm3615_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_burstcount;

    // out_lm3615_zlaswp_avm_byteenable(GPOUT,100)
    assign out_lm3615_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_byteenable;

    // out_lm3615_zlaswp_avm_enable(GPOUT,101)
    assign out_lm3615_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_enable;

    // out_lm3615_zlaswp_avm_read(GPOUT,102)
    assign out_lm3615_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_read;

    // out_lm3615_zlaswp_avm_write(GPOUT,103)
    assign out_lm3615_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_write;

    // out_lm3615_zlaswp_avm_writedata(GPOUT,104)
    assign out_lm3615_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_lm3615_zlaswp_avm_writedata;

    // out_lm3816_zlaswp_avm_address(GPOUT,105)
    assign out_lm3816_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_address;

    // out_lm3816_zlaswp_avm_burstcount(GPOUT,106)
    assign out_lm3816_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_burstcount;

    // out_lm3816_zlaswp_avm_byteenable(GPOUT,107)
    assign out_lm3816_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_byteenable;

    // out_lm3816_zlaswp_avm_enable(GPOUT,108)
    assign out_lm3816_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_enable;

    // out_lm3816_zlaswp_avm_read(GPOUT,109)
    assign out_lm3816_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_read;

    // out_lm3816_zlaswp_avm_write(GPOUT,110)
    assign out_lm3816_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_write;

    // out_lm3816_zlaswp_avm_writedata(GPOUT,111)
    assign out_lm3816_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_lm3816_zlaswp_avm_writedata;

    // out_lsu_memdep_102_o_active(GPOUT,112)
    assign out_lsu_memdep_102_o_active = bb_zlaswp_B6_stall_region_out_lsu_memdep_102_o_active;

    // out_lsu_memdep_119_o_active(GPOUT,113)
    assign out_lsu_memdep_119_o_active = bb_zlaswp_B6_stall_region_out_lsu_memdep_119_o_active;

    // out_lsu_memdep_71_o_active(GPOUT,114)
    assign out_lsu_memdep_71_o_active = bb_zlaswp_B6_stall_region_out_lsu_memdep_71_o_active;

    // out_lsu_memdep_87_o_active(GPOUT,115)
    assign out_lsu_memdep_87_o_active = bb_zlaswp_B6_stall_region_out_lsu_memdep_87_o_active;

    // out_memdep_102(GPOUT,116)
    assign out_memdep_102 = zlaswp_B6_branch_out_memdep_102;

    // out_memdep_102_zlaswp_avm_address(GPOUT,117)
    assign out_memdep_102_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_address;

    // out_memdep_102_zlaswp_avm_burstcount(GPOUT,118)
    assign out_memdep_102_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_burstcount;

    // out_memdep_102_zlaswp_avm_byteenable(GPOUT,119)
    assign out_memdep_102_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_byteenable;

    // out_memdep_102_zlaswp_avm_enable(GPOUT,120)
    assign out_memdep_102_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_enable;

    // out_memdep_102_zlaswp_avm_read(GPOUT,121)
    assign out_memdep_102_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_read;

    // out_memdep_102_zlaswp_avm_write(GPOUT,122)
    assign out_memdep_102_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_write;

    // out_memdep_102_zlaswp_avm_writedata(GPOUT,123)
    assign out_memdep_102_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_memdep_102_zlaswp_avm_writedata;

    // out_memdep_119(GPOUT,124)
    assign out_memdep_119 = zlaswp_B6_branch_out_memdep_119;

    // out_memdep_119_zlaswp_avm_address(GPOUT,125)
    assign out_memdep_119_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_address;

    // out_memdep_119_zlaswp_avm_burstcount(GPOUT,126)
    assign out_memdep_119_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_burstcount;

    // out_memdep_119_zlaswp_avm_byteenable(GPOUT,127)
    assign out_memdep_119_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_byteenable;

    // out_memdep_119_zlaswp_avm_enable(GPOUT,128)
    assign out_memdep_119_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_enable;

    // out_memdep_119_zlaswp_avm_read(GPOUT,129)
    assign out_memdep_119_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_read;

    // out_memdep_119_zlaswp_avm_write(GPOUT,130)
    assign out_memdep_119_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_write;

    // out_memdep_119_zlaswp_avm_writedata(GPOUT,131)
    assign out_memdep_119_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_memdep_119_zlaswp_avm_writedata;

    // out_memdep_71(GPOUT,132)
    assign out_memdep_71 = zlaswp_B6_branch_out_memdep_71;

    // out_memdep_71_zlaswp_avm_address(GPOUT,133)
    assign out_memdep_71_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_address;

    // out_memdep_71_zlaswp_avm_burstcount(GPOUT,134)
    assign out_memdep_71_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_burstcount;

    // out_memdep_71_zlaswp_avm_byteenable(GPOUT,135)
    assign out_memdep_71_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_byteenable;

    // out_memdep_71_zlaswp_avm_enable(GPOUT,136)
    assign out_memdep_71_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_enable;

    // out_memdep_71_zlaswp_avm_read(GPOUT,137)
    assign out_memdep_71_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_read;

    // out_memdep_71_zlaswp_avm_write(GPOUT,138)
    assign out_memdep_71_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_write;

    // out_memdep_71_zlaswp_avm_writedata(GPOUT,139)
    assign out_memdep_71_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_memdep_71_zlaswp_avm_writedata;

    // out_memdep_87(GPOUT,140)
    assign out_memdep_87 = zlaswp_B6_branch_out_memdep_87;

    // out_memdep_87_zlaswp_avm_address(GPOUT,141)
    assign out_memdep_87_zlaswp_avm_address = bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_address;

    // out_memdep_87_zlaswp_avm_burstcount(GPOUT,142)
    assign out_memdep_87_zlaswp_avm_burstcount = bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_burstcount;

    // out_memdep_87_zlaswp_avm_byteenable(GPOUT,143)
    assign out_memdep_87_zlaswp_avm_byteenable = bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_byteenable;

    // out_memdep_87_zlaswp_avm_enable(GPOUT,144)
    assign out_memdep_87_zlaswp_avm_enable = bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_enable;

    // out_memdep_87_zlaswp_avm_read(GPOUT,145)
    assign out_memdep_87_zlaswp_avm_read = bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_read;

    // out_memdep_87_zlaswp_avm_write(GPOUT,146)
    assign out_memdep_87_zlaswp_avm_write = bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_write;

    // out_memdep_87_zlaswp_avm_writedata(GPOUT,147)
    assign out_memdep_87_zlaswp_avm_writedata = bb_zlaswp_B6_stall_region_out_memdep_87_zlaswp_avm_writedata;

    // out_notcmp193223_pop33(GPOUT,148)
    assign out_notcmp193223_pop33 = zlaswp_B6_branch_out_notcmp193223_pop33;

    // out_phi_decision209_xor_and_i0222_pop32(GPOUT,149)
    assign out_phi_decision209_xor_and_i0222_pop32 = zlaswp_B6_branch_out_phi_decision209_xor_and_i0222_pop32;

    // out_stall_out_0(GPOUT,150)
    assign out_stall_out_0 = zlaswp_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,151)
    assign out_stall_out_1 = zlaswp_B6_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,152)
    assign out_valid_out_0 = zlaswp_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,153)
    assign out_valid_out_1 = zlaswp_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,155)
    assign out_pipeline_valid_out = bb_zlaswp_B6_stall_region_out_pipeline_valid_out;

endmodule
