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

// SystemVerilog created from ff_snow_horizontal_compose97i_bb_B3
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_bb_B3 (
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_lm19_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm19_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_lm19_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm19_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_lm8_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_lm8_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_lm8_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_lm8_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_32_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_33_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload10_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [63:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdatavalid,
    input wire [0:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    output wire [63:0] out_lm19_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_lm19_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm19_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm19_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [63:0] out_lm8_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_lm8_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_lm8_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_lm8_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [0:0] out_lsu_memdep_32_o_active,
    output wire [0:0] out_lsu_memdep_33_o_active,
    output wire [0:0] out_lsu_memdep_34_o_active,
    output wire [63:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [63:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [63:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [63:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [63:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [63:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [63:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount,
    output wire [7:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_9_0;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_writedata;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_32_o_active;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_33_o_active;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_34_o_active;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_stall_out;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] bb_ff_snow_horizontal_compose97i_B3_stall_region_out_valid_out;
    wire [0:0] ff_snow_horizontal_compose97i_B3_branch_out_stall_out;
    wire [0:0] ff_snow_horizontal_compose97i_B3_branch_out_valid_out_0;
    wire [0:0] ff_snow_horizontal_compose97i_B3_merge_out_stall_out_0;
    wire [0:0] ff_snow_horizontal_compose97i_B3_merge_out_valid_out;


    // ff_snow_horizontal_compose97i_B3_merge(BLACKBOX,4)
    ff_snow_horizontal_compose97i_B3_merge theff_snow_horizontal_compose97i_B3_merge (
        .in_stall_in(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(ff_snow_horizontal_compose97i_B3_merge_out_stall_out_0),
        .out_valid_out(ff_snow_horizontal_compose97i_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_snow_horizontal_compose97i_B3_branch(BLACKBOX,3)
    ff_snow_horizontal_compose97i_B3_branch theff_snow_horizontal_compose97i_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_valid_out),
        .out_stall_out(ff_snow_horizontal_compose97i_B3_branch_out_stall_out),
        .out_valid_out_0(ff_snow_horizontal_compose97i_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_snow_horizontal_compose97i_B3_stall_region(BLACKBOX,2)
    ff_snow_horizontal_compose97i_bb_B3_stall_region thebb_ff_snow_horizontal_compose97i_B3_stall_region (
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_lm19_ff_snow_horizontal_compose97i_avm_readdata(in_lm19_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm19_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm19_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm19_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm19_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm19_ff_snow_horizontal_compose97i_avm_writeack(in_lm19_ff_snow_horizontal_compose97i_avm_writeack),
        .in_lm8_ff_snow_horizontal_compose97i_avm_readdata(in_lm8_ff_snow_horizontal_compose97i_avm_readdata),
        .in_lm8_ff_snow_horizontal_compose97i_avm_readdatavalid(in_lm8_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_lm8_ff_snow_horizontal_compose97i_avm_waitrequest(in_lm8_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_lm8_ff_snow_horizontal_compose97i_avm_writeack(in_lm8_ff_snow_horizontal_compose97i_avm_writeack),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_32_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_32_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_32_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_32_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_32_ff_snow_horizontal_compose97i_avm_writeack),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_33_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_33_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_33_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_33_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_33_ff_snow_horizontal_compose97i_avm_writeack),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack),
        .in_stall_in(ff_snow_horizontal_compose97i_B3_branch_out_stall_out),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload10_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload10_ff_snow_horizontal_compose97i_avm_writeack),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writeack),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writeack),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdata(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdata),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdatavalid(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_waitrequest(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writeack(in_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writeack),
        .in_valid_in(ff_snow_horizontal_compose97i_B3_merge_out_valid_out),
        .out_intel_reserved_ffwd_10_0(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_7_0(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_9_0),
        .out_lm19_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_address),
        .out_lm19_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm19_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm19_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm19_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_read),
        .out_lm19_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_write),
        .out_lm19_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_writedata),
        .out_lm8_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_address),
        .out_lm8_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_lm8_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_lm8_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_enable),
        .out_lm8_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_read),
        .out_lm8_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_write),
        .out_lm8_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_writedata),
        .out_lsu_memdep_32_o_active(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_32_o_active),
        .out_lsu_memdep_33_o_active(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_33_o_active),
        .out_lsu_memdep_34_o_active(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_34_o_active),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata),
        .out_stall_out(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_stall_out),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write),
        .out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata),
        .out_valid_out(bb_ff_snow_horizontal_compose97i_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_10_0(GPOUT,50)
    assign out_intel_reserved_ffwd_10_0 = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,51)
    assign out_intel_reserved_ffwd_7_0 = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,52)
    assign out_intel_reserved_ffwd_8_0 = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,53)
    assign out_intel_reserved_ffwd_9_0 = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_intel_reserved_ffwd_9_0;

    // out_lm19_ff_snow_horizontal_compose97i_avm_address(GPOUT,54)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_address;

    // out_lm19_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,55)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_lm19_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,56)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_lm19_ff_snow_horizontal_compose97i_avm_enable(GPOUT,57)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_enable;

    // out_lm19_ff_snow_horizontal_compose97i_avm_read(GPOUT,58)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_read;

    // out_lm19_ff_snow_horizontal_compose97i_avm_write(GPOUT,59)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_write;

    // out_lm19_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,60)
    assign out_lm19_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm19_ff_snow_horizontal_compose97i_avm_writedata;

    // out_lm8_ff_snow_horizontal_compose97i_avm_address(GPOUT,61)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_address;

    // out_lm8_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,62)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_lm8_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,63)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_lm8_ff_snow_horizontal_compose97i_avm_enable(GPOUT,64)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_enable;

    // out_lm8_ff_snow_horizontal_compose97i_avm_read(GPOUT,65)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_read;

    // out_lm8_ff_snow_horizontal_compose97i_avm_write(GPOUT,66)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_write;

    // out_lm8_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,67)
    assign out_lm8_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lm8_ff_snow_horizontal_compose97i_avm_writedata;

    // out_lsu_memdep_32_o_active(GPOUT,68)
    assign out_lsu_memdep_32_o_active = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_32_o_active;

    // out_lsu_memdep_33_o_active(GPOUT,69)
    assign out_lsu_memdep_33_o_active = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_33_o_active;

    // out_lsu_memdep_34_o_active(GPOUT,70)
    assign out_lsu_memdep_34_o_active = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_lsu_memdep_34_o_active;

    // out_memdep_32_ff_snow_horizontal_compose97i_avm_address(GPOUT,71)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_address;

    // out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,72)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,73)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_memdep_32_ff_snow_horizontal_compose97i_avm_enable(GPOUT,74)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_enable;

    // out_memdep_32_ff_snow_horizontal_compose97i_avm_read(GPOUT,75)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_read;

    // out_memdep_32_ff_snow_horizontal_compose97i_avm_write(GPOUT,76)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_write;

    // out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,77)
    assign out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_32_ff_snow_horizontal_compose97i_avm_writedata;

    // out_memdep_33_ff_snow_horizontal_compose97i_avm_address(GPOUT,78)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_address;

    // out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,79)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,80)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_memdep_33_ff_snow_horizontal_compose97i_avm_enable(GPOUT,81)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_enable;

    // out_memdep_33_ff_snow_horizontal_compose97i_avm_read(GPOUT,82)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_read;

    // out_memdep_33_ff_snow_horizontal_compose97i_avm_write(GPOUT,83)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_write;

    // out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,84)
    assign out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_33_ff_snow_horizontal_compose97i_avm_writedata;

    // out_memdep_34_ff_snow_horizontal_compose97i_avm_address(GPOUT,85)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_address;

    // out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,86)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,87)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_memdep_34_ff_snow_horizontal_compose97i_avm_enable(GPOUT,88)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable;

    // out_memdep_34_ff_snow_horizontal_compose97i_avm_read(GPOUT,89)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_read;

    // out_memdep_34_ff_snow_horizontal_compose97i_avm_write(GPOUT,90)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_write;

    // out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,91)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata;

    // out_stall_out_0(GPOUT,92)
    assign out_stall_out_0 = ff_snow_horizontal_compose97i_B3_merge_out_stall_out_0;

    // out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address(GPOUT,93)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_address;

    // out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,94)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,95)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable(GPOUT,96)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_enable;

    // out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read(GPOUT,97)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_read;

    // out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write(GPOUT,98)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_write;

    // out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,99)
    assign out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload10_ff_snow_horizontal_compose97i_avm_writedata;

    // out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address(GPOUT,100)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_address;

    // out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,101)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,102)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable(GPOUT,103)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_enable;

    // out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read(GPOUT,104)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_read;

    // out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write(GPOUT,105)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_write;

    // out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,106)
    assign out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11811_ff_snow_horizontal_compose97i_avm_writedata;

    // out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address(GPOUT,107)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_address;

    // out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,108)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,109)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable(GPOUT,110)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_enable;

    // out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read(GPOUT,111)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_read;

    // out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write(GPOUT,112)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_write;

    // out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,113)
    assign out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload11912_ff_snow_horizontal_compose97i_avm_writedata;

    // out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address(GPOUT,114)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_address;

    // out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount(GPOUT,115)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_burstcount;

    // out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable(GPOUT,116)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_byteenable;

    // out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable(GPOUT,117)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_enable;

    // out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read(GPOUT,118)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_read;

    // out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write(GPOUT,119)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_write;

    // out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata(GPOUT,120)
    assign out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata = bb_ff_snow_horizontal_compose97i_B3_stall_region_out_unmaskedload12013_ff_snow_horizontal_compose97i_avm_writedata;

    // out_valid_out_0(GPOUT,121)
    assign out_valid_out_0 = ff_snow_horizontal_compose97i_B3_branch_out_valid_out_0;

endmodule
